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

#include <tf/transform_listener.h>

#include <cv_bridge/cv_bridge.h>
 #include <opencv2/imgproc/imgproc_c.h>
 #include <opencv2/legacy/legacy.hpp>
 #include "opencv2/highgui/highgui.hpp"

#include <std_srvs/Empty.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/CameraInfo.h>
#include <image_transport/image_transport.h>

#include "hobbit_msgs/Fitness.h"

#if BROADCAST_HOBBIT
#include "hobbit_msgs/Event.h"
#include <std_msgs/String.h>
ros::Publisher gestureEventBroadcaster;
#endif

#define NODE_NAME "fitness_coordinator"
#define SKELETON_PREFIX "SK_"
#define MAX_CMD_STR 1024
#define MAX_NUM_STR 128

#define DEFAULT_FRAME_RATE 1

int rate=DEFAULT_FRAME_RATE;


message_filters::Subscriber<sensor_msgs::Image> *rgb_img_sub;
message_filters::Subscriber<sensor_msgs::CameraInfo> *rgb_cam_info_sub;
message_filters::Subscriber<sensor_msgs::Image> *depth_img_sub;
message_filters::Subscriber<sensor_msgs::CameraInfo> *depth_cam_info_sub;
//OpenCV
 cv::Mat rgb,depth;

typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, sensor_msgs::Image> RgbdSyncPolicy;



bool first=false;
int key = 0;
unsigned int frameTimestamp=0;
ros::NodeHandle * nhPtr=0;
unsigned int paused=0;
unsigned int doCVOutput=0;


#define HUMAN_SKELETON_PARTS 15
static const char * jointNames[] =
{"head",
 "neck",
 "torso",
 "left_shoulder",
 "right_shoulder",
 "left_elbow",
 "right_elbow",
 "left_hand",
 "right_hand",
 "left_hip",
 "right_hip",
 "left_knee",
 "right_knee",
 "left_foot",
 "right_foot"
};

struct point3D
{
    float x,y,z;
};

struct point2D
{
    float x,y;
};



struct skeletonHuman
{
  unsigned int observationNumber , observationTotal;
  unsigned int userID;
  struct point3D joint[HUMAN_SKELETON_PARTS];
};

struct skeletonHuman sk;


int collectSkeletonFromTF(struct skeletonHuman * sk)
{
  tf::TransformListener listener;
  tf::StampedTransform transform;

  for (unsigned int i=0; i<HUMAN_SKELETON_PARTS; i++)
                  {
                    try
                    {
                     listener.waitForTransform(jointNames[i],"frame",ros::Time(0),ros::Duration(10.0));
                     listener.lookupTransform(jointNames[i],"frame",ros::Time(0),transform);
                     sk->joint[i].x = transform.getOrigin().x();
                     sk->joint[i].y = transform.getOrigin().y();
                     sk->joint[i].z = transform.getOrigin().z();

                     fprintf(stderr,"%s is %f %f %f \n",jointNames[i],sk->joint[i].x,sk->joint[i].y,sk->joint[i].z);
                    }
                    catch (...)
                    {
                       //fprintf(stderr,"... no tf ... \n");
                       return 0;
                    }
                  }
   return 1;
}


int broadcastExcerciseGeneric(char * tag , char * name , char * value)
{
  char what2execute[MAX_CMD_STR]={0};
  snprintf(what2execute,MAX_CMD_STR,"rostopic pub /fitness hobbit_msgs/Fitness \"{command: '%s' , params: [ {name: '%s' , value: '%s'} ] }\" -1",tag,name,value);
}



int broadcastExcerciseRepetition(unsigned int exerciseNumber,unsigned int repetitionNumber)
{
  char exerciseStr[MAX_NUM_STR]={0};
  snprintf(exerciseStr,MAX_NUM_STR,"%u",exerciseNumber);

  char repetitionStr[MAX_NUM_STR]={0};
  snprintf(repetitionStr,MAX_NUM_STR,"%u",repetitionNumber);

  return broadcastExcerciseGeneric("C_EXERCISE_REP",exerciseStr,repetitionStr);
}


int broadcastExcerciseStarted(char * name , char * value)
{
  return broadcastExcerciseGeneric("C_EXERCISE_STARTED",name,value);
}

int broadcastExcerciseFinished(char * name , char * value)
{
  return broadcastExcerciseGeneric("C_EXERCISE_FINISHED",name,value);
}

//----------------------------------------------------------
//Advertised Service switches
bool terminate(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    ROS_INFO("Stopping Node " NODE_NAME);
    exit(0);
    return true;
}


bool trigger(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
   // emergencyDetected=1;
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

bool visualizeOn(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    doCVOutput=1;
    return true;
}

bool visualizeOff(std_srvs::Empty::Request& request, std_srvs::Empty::Response& response)
{
    doCVOutput=0;
    cv::destroyAllWindows();
    cv::destroyWindow("emergency_detector rgb");
    cv::destroyWindow("emergency_detector depth");
    cv::destroyWindow("emergency_detector segmented depth");

    cv::waitKey(1);
    return true;
}

void fitnessMessage(const hobbit_msgs::Fitness & msg)
{
 //Test Trigger with rostopic pub /fitness hobbit_msgs/Fitness " { command: C_USER_SEATED , params: [  { name: 'testName' , value: 'testValue' } ] } " -1


 // processBoundingBox(msg.width , msg.height ,msg.depth );
  fprintf(stderr,"\n\n\n\n\n\n\n\n\n\nGOT A %s MESSAGE\n\n\n\n\n\n\n\n",msg.command.c_str());
}



int doDrawOut()
{
     if (!doCVOutput) { return 0; }
     /*Don't add this on output ( reduce cluttering )*/
     cv::Mat rgbTmp = rgb.clone();
     //Take care of drawing stuff as visual output

     cv::Size s = rgb.size();
	 cv::Mat bgrMat,rgbMat(s.height,s.width,CV_8UC3,rgbTmp.data,3*s.width);
	 cv::cvtColor(rgbMat,bgrMat, CV_RGB2BGR);// opencv expects the image in BGR format
     cv::Mat depthNorm;
	 cv::normalize(depth,depthNorm,0,255,CV_MINMAX,CV_8UC1);

     //After we have our bgr Frame ready and we added the FPS text , lets show it!
	 cv::imshow("fitness_coordinator rgb",depthNorm);
	 cv::imshow("fitness_coordinator depth",bgrMat);

	 cv::waitKey(1);

 return 1;
}


//RGBd Callback is called every time we get a new pair of frames , it is synchronized to the main thread
void rgbdCallbackNoCalibration(const sensor_msgs::Image::ConstPtr rgb_img_msg,
                                 const sensor_msgs::Image::ConstPtr depth_img_msg  )
{
 if (paused) { return; } //If we are paused spend no time with new input
  //A new pair of frames has arrived , copy and convert them so that they are ready
  unsigned int colorWidth = rgb_img_msg->width;   unsigned int colorHeight = rgb_img_msg->height;
  unsigned int depthWidth = depth_img_msg->width; unsigned int depthHeight = depth_img_msg->height;

  cv_bridge::CvImageConstPtr orig_rgb_img;
  cv_bridge::CvImageConstPtr orig_depth_img;
  orig_rgb_img = cv_bridge::toCvCopy(rgb_img_msg, "rgb8");
  orig_rgb_img->image.copyTo(rgb);
  orig_depth_img = cv_bridge::toCvCopy(depth_img_msg, sensor_msgs::image_encodings::TYPE_16UC1);
  orig_depth_img->image.copyTo(depth);

  doDrawOut();

  if (frameTimestamp%3==0)
  { //Preserve resources
      /*
   runServicesThatNeedColorAndDepth((unsigned char*) rgb.data, colorWidth , colorHeight ,
                                   (unsigned short*) depth.data ,  depthWidth , depthHeight ,
                                     0 , frameTimestamp );*/
  }
 //After running (at least) once it is not a first run any more!
 first = false;
 ++frameTimestamp;
return;
}

int main(int argc, char **argv)
{
   ROS_INFO("Starting Up!!");

   try
	{
	 ROS_INFO("Initializing ROS");

	 char regName[128]={0};
	 sprintf(regName,"%s_%u",NODE_NAME,getpid());
	 fprintf(stderr,"Node named %s \n",regName);
  	 ros::init(argc, argv, regName);
     ros::start();

     ros::NodeHandle nh;
     nhPtr = &nh;

     ros::NodeHandle private_node_handle_("~");

     std::string name;
     std::string fromDepthTopic;
     std::string fromDepthTopicInfo;
     std::string fromRGBTopic;
     std::string fromRGBTopicInfo;


     private_node_handle_.param("fromDepthTopic", fromDepthTopic, std::string("/headcam/depth_registered/image_rect"));
     private_node_handle_.param("fromDepthTopicInfo", fromDepthTopicInfo, std::string("/headcam/depth_registered/camera_info"));
     private_node_handle_.param("fromRGBTopic", fromRGBTopic, std::string("headcam/rgb/image_rect_color"));
     private_node_handle_.param("fromRGBTopicInfo", fromRGBTopicInfo, std::string("/headcam/rgb/camera_info"));
     private_node_handle_.param("name", name, std::string(NODE_NAME));
     private_node_handle_.param("rate", rate , int(DEFAULT_FRAME_RATE)); //11 should me optimal  less for a little less CPU Usage
     ros::Rate loop_rate(rate); //  hz should be our target performance


     //We advertise the services we want accessible using "rosservice call *w/e*"
     ros::ServiceServer visualizeOnService      = nh.advertiseService(name+"/visualize_on" , visualizeOn);
     ros::ServiceServer visualizeOffService     = nh.advertiseService(name+"/visualize_off", visualizeOff);
     ros::ServiceServer pauseService    = nh.advertiseService(name+"/pause", pause);
     ros::ServiceServer resumeService   = nh.advertiseService(name+"/resume", resume);
     ros::ServiceServer stopService     = nh.advertiseService(name+"/terminate", terminate);
     ros::ServiceServer triggerService     = nh.advertiseService(name+"/trigger", trigger);



     //Make our rostopic cmaera grabber
     message_filters::Synchronizer<RgbdSyncPolicy> *sync;

	 depth_img_sub = new message_filters::Subscriber<sensor_msgs::Image>(nh,fromDepthTopic,1);
	 depth_cam_info_sub = new message_filters::Subscriber<sensor_msgs::CameraInfo>(nh,fromDepthTopicInfo,1);

	 rgb_img_sub = new  message_filters::Subscriber<sensor_msgs::Image>(nh,fromRGBTopic, 1);
	 rgb_cam_info_sub = new message_filters::Subscriber<sensor_msgs::CameraInfo>(nh,fromRGBTopicInfo,1);

     sync = new message_filters::Synchronizer<RgbdSyncPolicy>(RgbdSyncPolicy(rate), *rgb_img_sub, *depth_img_sub); //*rgb_cam_info_sub,
	 sync->registerCallback(rgbdCallbackNoCalibration);

     ros::Subscriber sub = nh.subscribe("fitness",1000,fitnessMessage);
     #if BROADCAST_HOBBIT
      gestureEventBroadcaster = nh->advertise <hobbit_msgs::Event> ("Event", 1000);
     #endif

     //initializeProcess();

      //Create our context
      //---------------------------------------------------------------------------------------------------
	  //////////////////////////////////////////////////////////////////////////
	  while ( ( key!='q' ) && (ros::ok()) )
		{
                  ros::spinOnce();//<- this keeps our ros node messages handled up until synergies take control of the main thread
                  usleep(1000);


                  collectSkeletonFromTF(&sk);

	    }



	   delete depth_img_sub;
	   delete depth_cam_info_sub;
	   delete rgb_img_sub;
	   delete rgb_cam_info_sub;
	   delete sync;
	}
	catch(std::exception &e) { ROS_ERROR("Exception: %s", e.what()); return 1; }
	catch(...)               { ROS_ERROR("Unknown Error"); return 1; }
	ROS_ERROR("Shutdown complete");
	return 0;
}
