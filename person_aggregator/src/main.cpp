#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <unistd.h>
#include <ros/ros.h>
#include <ros/spinner.h>

#include <stdexcept>
#include <image_transport/image_transport.h>

#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/time_synchronizer.h>

#include <cv_bridge/cv_bridge.h>
 #include <opencv2/imgproc/imgproc_c.h>
 #include <opencv2/legacy/legacy.hpp>
 #include "opencv2/highgui/highgui.hpp"

#include <std_srvs/Empty.h>


#include "person_aggregator/Person.h"

#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/CameraInfo.h>
#include <image_transport/image_transport.h>

#include "timer.h"

#define NODE_NAME "person_aggregator"
#define MAX_CMD_STR 1024
#define MAX_NUM_STR 128

#define divisor 1000
#define MAX_CMD 2048

#define DEFAULT_FRAME_RATE 15

float maximumDistanceForIntegration = 220;
unsigned int integrationTime = 100000;
#define maxSource 5

int rate=DEFAULT_FRAME_RATE;

int key = 0;
unsigned int frameTimestamp=0;
ros::NodeHandle * nhPtr=0;
unsigned int paused=0;
unsigned int raw=0;
unsigned int localityUsed=1;

ros::Publisher personBroadcaster;

struct position3D
{
  float x,y,z;
};

struct personMessageSt
{
    float actualX , actualY , actualZ , actualTheta , actualConfidence;
    unsigned int actualTimestamp , actualInFieldOfView;
    unsigned int source;
};

struct position3D lastKnownPosition[maxSource]={0};




void broadcastNewPerson( struct personMessageSt * p)
{
  person_aggregator::Person msg;
  msg.x = p->actualX;
  msg.y = p->actualY;
  msg.z = p->actualZ;
  msg.source = p->source;
  msg.theta = p->actualTheta;

  msg.inFieldOfView = p->actualInFieldOfView;
  msg.confidence = p->actualConfidence;
  msg.timestamp=p->actualTimestamp;

  fprintf(stderr,"Publishing a new Person\n");
  personBroadcaster.publish(msg);
}


void aggregatePersonMessage(struct personMessageSt * p )
{
  unsigned int i=0;
  unsigned int currentTime = EndTimer(p->source);

  unsigned int clues = 0;
  for (i=0; i<maxSource; i++)
  {
    if (i!=p->source)
      {
       fprintf(stderr,"Temporal Diff %u with %u is %u \n",p->source,i,EndTimer(i)-currentTime);
       if (EndTimer(i)-currentTime < integrationTime)
        {
          if (localityUsed)
          {
            double distance = sqrt( ((p->actualX-lastKnownPosition[i].x)*(p->actualX-lastKnownPosition[i].x)) +
                                     ((p->actualY-lastKnownPosition[i].y)*(p->actualY-lastKnownPosition[i].y)) +
                                     ((p->actualZ-lastKnownPosition[i].z)*(p->actualZ-lastKnownPosition[i].z))   );

            fprintf(stderr,"Spatial Diff %u with %u is %0.2f \n",p->source,i,distance);
            if (distance<maximumDistanceForIntegration)
            {
              ++clues;
            }
          } else
          {
            //If we don't use locality having two messages at the same period is good enough
            ++clues;
          }
        }
      }
  }

   fprintf(stderr,"Gathered %u clues for a person \n",clues);
   if (clues>=1)
   {
     broadcastNewPerson(p);
   }
}


void personMessageAggregator(const person_aggregator::Person & msg , unsigned int source)
{
    fprintf(stderr,"personMessageAggregator triggered %u , after %u time \n",source , EndTimer(0));

    struct personMessageSt prsn;

    prsn.actualX = msg.x;
    prsn.actualY = msg.y;
    prsn.actualZ = msg.z;

    prsn.source = msg.source;
    prsn.actualTheta = msg.theta;

    prsn.actualInFieldOfView = msg.inFieldOfView;
    prsn.actualInFieldOfView = msg.confidence;
    prsn.actualInFieldOfView = msg.timestamp;

    if (prsn.source<TOTAL_TIMERS)
    {
        StartTimer(prsn.source);
    }

    if (prsn.source<maxSource)
    {
      lastKnownPosition[prsn.source].x = msg.x;
      lastKnownPosition[prsn.source].y = msg.y;
      lastKnownPosition[prsn.source].z = msg.z;
    }

    if (raw) {
               fprintf(stderr,"Raw Mode : Blindly passing around received Person Message\n");
               broadcastNewPerson(&prsn);
              } else
             {
               fprintf(stderr,"Precise Mode : Collecting Person Message \n");
               aggregatePersonMessage(&prsn);
             }
}

void personMessageRGBDAcquisition(const person_aggregator::Person & msg)
{
  personMessageAggregator(msg,1);
}

void personMessageSkeletonDetector(const person_aggregator::Person & msg)
{
  personMessageAggregator(msg,2);
}

void personMessageFaceDetector(const person_aggregator::Person & msg)
{
  personMessageAggregator(msg,3);
}

void personMessageGestures(const person_aggregator::Person & msg)
{
  personMessageAggregator(msg,4);
}

void personMessageEmergency(const person_aggregator::Person & msg)
{
  personMessageAggregator(msg,5);
}


//----------------------------------------------------------
//Advertised Service switches
bool terminate(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    ROS_INFO("Stopping Node " NODE_NAME);
    exit(0);
    return true;
}


bool switchToPrecise(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    raw=0;
    return true;
}

bool switchToRaw(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    raw=1;
    return true;
}


bool pause(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    paused=1;
    return true;
}

bool resume(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    paused=0;
    return true;
}



int rosservice_call(const char * serviceName)
{
  char commandToRun[MAX_CMD]={0};
  unsigned int maxCommandSize=MAX_CMD;
  snprintf(commandToRun,maxCommandSize,"/bin/bash -c \"rosservice call %s\"",serviceName);
  int i=system(commandToRun);
  return (i==0);
}


int rosparam_set(const char * paramName,const char * paramValue)
{
  char commandToRun[MAX_CMD]={0};
  unsigned int maxCommandSize=MAX_CMD;
  snprintf(commandToRun,maxCommandSize,"/bin/bash -c \"rosparam set %s \"%s\" \"",paramName,paramValue);
  int i=system(commandToRun);
  return (i==0);
}


int rostopic_pub(const char * topicName,const char * topicType,const char * topicValue)
{
  char commandToRun[MAX_CMD]={0};
  unsigned int maxCommandSize=MAX_CMD;
  snprintf(commandToRun,maxCommandSize,"/bin/bash -c \"rostopic pub %s %s %s -1\"",topicName,topicType,topicValue);
  int i=system(commandToRun);
  return (i==0);
}

bool pauseEverything(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/rgbd_acquisition/pause_peopletracker");
    rosservice_call("/emergency_detector/pause");
    rosservice_call("/face_detection/pause");
    rosservice_call("/hand_gestures/pause");
    rosservice_call("/skeleton_detector/pause");
    rosservice_call("/fitness_coordinator/pause");
    return true;
}

bool resumeEverything(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/rgbd_acquisition/resume_peopletracker");
    rosservice_call("/emergency_detector/resume");
    rosservice_call("/face_detection/resume");
    rosservice_call("/hand_gestures/resume");
    rosservice_call("/skeleton_detector/resume");
    rosservice_call("/fitness_coordinator/resume");
    raw=0;
    return true;
}

bool followUser(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/rgbd_acquisition/resume_peopletracker"); //Nite tracker might be useful
    rosservice_call("/emergency_detector/resume");
    rosservice_call("/skeleton_detector/resume");
    rosservice_call("/skeleton_detector/simple"); //We want the simple skeleton detector , no hands but fast and more robust ( even without a face )
    return true;
}

bool locateUser(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/rgbd_acquisition/resume_peopletracker"); //Nite tracker might be useful
    rosservice_call("/emergency_detector/resume"); // So that we get
    rosservice_call("/face_detection/resume");
    rosservice_call("/hand_gestures/resume");
    rosservice_call("/skeleton_detector/resume");
    raw=0; //We want to be precise..
    return true;
}

bool fitnessFunction(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/rgbd_acquisition/pause_peopletracker"); //Nite tracker is no longer used
    rosservice_call("/skeleton_detector/resume");
    rosservice_call("/skeleton_detector/advanced"); //We want the advanced skeleton detector
    rosservice_call("/fitness_coordinator/resume");
    return true;
}


bool whereIsUserPointing(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/rgbd_acquisition/pause_peopletracker"); //Nite tracker might be useful
    rosservice_call("/skeleton_detector/resume");
    rosservice_call("/skeleton_detector/advanced"); //We want the advanced skeleton detector
    return true;
}


bool navigating(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/emergency_detector/resume"); // So that we get
    return true;
}


bool idle(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    rosservice_call("/hand_gestures/resume");
    return true;
}

bool startScanning3DObject(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    return pauseEverything(request,response);
}

bool stopScanning3DObject(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    return resumeEverything(request,response);
}


int main(int argc, char **argv)
{
   ROS_INFO("Starting Up!!");

   try
	{
	 ROS_INFO("Initializing ROS");

  	 ros::init(argc, argv, NODE_NAME);
     ros::start();

     ros::NodeHandle nh;
     nhPtr = &nh;

     ros::NodeHandle private_node_handle_("~");

     std::string name;

     private_node_handle_.param("name", name, std::string(NODE_NAME));
     private_node_handle_.param("rate", rate , int(DEFAULT_FRAME_RATE));
     ros::Rate loop_rate(rate); //  hz should be our target performance


     //We advertise the services we want accessible using "rosservice call *w/e*"
     ros::ServiceServer pauseService    = nh.advertiseService(name+"/pause", pause);
     ros::ServiceServer resumeService   = nh.advertiseService(name+"/resume", resume);
     ros::ServiceServer stopService     = nh.advertiseService(name+"/terminate", terminate);
     ros::ServiceServer preciseService  = nh.advertiseService(name+"/precise", switchToPrecise);
     ros::ServiceServer rawService      = nh.advertiseService(name+"/raw", switchToRaw);


     ros::ServiceServer VSPauseService           = nh.advertiseService("/vision_system/pauseEverything", pauseEverything);
     ros::ServiceServer VSResumeService          = nh.advertiseService("/vision_system/resumeEverything", resumeEverything);
     ros::ServiceServer VSFollowUserService      = nh.advertiseService("/vision_system/followUser", followUser);
     ros::ServiceServer VSLocateUserService      = nh.advertiseService("/vision_system/locateUser", locateUser);
     ros::ServiceServer VSfitnessFunctionService = nh.advertiseService("/vision_system/fitnessFunction", fitnessFunction);
     ros::ServiceServer VSSeePointingService     = nh.advertiseService("/vision_system/seeWhereUserIsPointing", whereIsUserPointing);
     ros::ServiceServer VSNavigatingService      = nh.advertiseService("/vision_system/navigating", navigating);
     ros::ServiceServer VSIdleService            = nh.advertiseService("/vision_system/idle", idle);
     ros::ServiceServer VSStartScan3Service      = nh.advertiseService("/vision_system/startScanning3DObject", startScanning3DObject);
     ros::ServiceServer VSStopScan3Service       = nh.advertiseService("/vision_system/stopScanning3DObject", stopScanning3DObject);



     personBroadcaster = nh.advertise <person_aggregator::Person> ("persons", divisor);

     ros::Subscriber sub1 = nh.subscribe("/rgbd_acquisition/persons",divisor,personMessageRGBDAcquisition);
     ros::Subscriber sub2 = nh.subscribe("/skeleton_detector/persons",divisor,personMessageSkeletonDetector);
     ros::Subscriber sub3 = nh.subscribe("/face_detection/persons",divisor,personMessageFaceDetector);
     ros::Subscriber sub4 = nh.subscribe("/hand_gestures/persons",divisor,personMessageGestures);
     ros::Subscriber sub5 = nh.subscribe("/emergency_detector/persons",divisor,personMessageEmergency);

     //Create our context
     //---------------------------------------------------------------------------------------------------
	 //////////////////////////////////////////////////////////////////////////
	 unsigned int i=0;
     for (i=0; i<maxSource; i++) { StartTimer(i); }



	  while ( ( key!='q' ) && (ros::ok()) )
		{

                  ros::spinOnce();//<- this keeps our ros node messages handled up until synergies take control of the main thread
                  loop_rate.sleep();
	    }

	}
	catch(std::exception &e) { ROS_ERROR("Exception: %s", e.what()); return 1; }
	catch(...)               { ROS_ERROR("Unknown Error"); return 1; }
	ROS_ERROR("Shutdown complete");
	return 0;
}
