#include "services.h"

//#include "HobbitTrackerLib.h"

#include <ros/ros.h>
#include <ros/spinner.h>
#include "pose.h"

//#define SKPREFIX "SK_"
#define SKPREFIX ""


#define NORMAL "\033[0m"
#define BLACK "\033[30m" /* Black */
#define RED "\033[31m" /* Red */
#define GREEN "\033[32m" /* Green */
#define YELLOW "\033[33m" /* Yellow */


#define BROADCAST_HOBBIT 1
#define MAXIMUM_DISTANCE_FOR_POINTING 400

#include <follow_user/SkeletonBBox.h>


#define USE_PERSON_AGGREGATOR 1

#if USE_PERSON_AGGREGATOR
 #define PERSON_TOPIC "/follow_user/persons"
#else
 #define PERSON_TOPIC "persons"
#endif // USE_PERSON_AGGREGATOR



#include "hobbit_msgs/Event.h"
#include <std_msgs/String.h>

ros::Publisher joint2DBroadcaster;
ros::Publisher joint3DBroadcaster;
ros::Publisher jointBBoxBroadcaster;
ros::Publisher personBroadcaster;
ros::Publisher pointEventsBroadcaster;

#define divisor 1000
//ros::Publisher gestureBroadcaster;


unsigned int actualTimestamp=0;
unsigned int actualInFieldOfView=0;
float actualX=0.0,actualY=0.0,actualZ=0.0,actualTheta=0.0,actualConfidence=0.51;

unsigned char * colorFrameCopy=0;   unsigned int colorCopyWidth = 0; unsigned int colorCopyHeight = 0;
unsigned short * depthFrameCopy =0; unsigned int depthCopyWidth = 0; unsigned int depthCopyHeight = 0;


int reallocateCopySpaceIfNeccessary(
                                     unsigned int newColorWidth , unsigned int newColorHeight ,
                                     unsigned int newDepthWidth , unsigned int newDepthHeight
                                  )
{
  if  ( (newColorWidth * newColorHeight * 3 > colorCopyWidth * colorCopyHeight * 3 ) )
  {
    if (colorFrameCopy!=0) { free(colorFrameCopy); colorFrameCopy=0; }
    colorFrameCopy = (unsigned char * ) malloc(newColorWidth*newColorHeight*3*sizeof(unsigned char));
    if (colorFrameCopy==0) { fprintf(stderr,"Cannot make an intermediate copy of color frame \n");  }
    colorCopyWidth=newColorWidth;
    colorCopyHeight=newColorHeight;
  }


  if  ( (newDepthWidth * newDepthHeight  > depthCopyWidth * depthCopyHeight ) )
  {
    if (depthFrameCopy!=0) { free(depthFrameCopy); depthFrameCopy=0; }
    depthFrameCopy = (unsigned short * ) malloc(newDepthWidth*newDepthHeight*1*sizeof(unsigned short));
    if (depthFrameCopy==0) { fprintf(stderr,"Cannot make an intermediate copy of depth frame \n"); }
    depthCopyWidth=newDepthWidth;
    depthCopyHeight=newDepthHeight;
  }




  return 1;
}


float simpPow(float base,unsigned int exp)
{
    if (exp==0) return 1;
    float retres=base;
    unsigned int i=0;
    for (i=0; i<exp-1; i++)
    {
        retres*=base;
    }
    return retres;
}



void broadcast2DBBox(struct skeletonHuman * skeletonFound)
{

  follow_user::SkeletonBBox msg;
/*
  msg.width3D=skeletonFound->bboxDimensions.x;
  msg.height3D=skeletonFound->bboxDimensions.y;
  msg.depth3D=skeletonFound->bboxDimensions.z;

  msg.centerX3D = skeletonFound->centerOfMass.x;
  msg.centerY3D = skeletonFound->centerOfMass.y;
  msg.centerZ3D = skeletonFound->centerOfMass.z;

  msg.width2D=skeletonFound->bboxDimensions.x;
  msg.height2D=skeletonFound->bboxDimensions.y;

  msg.centerX2D = skeletonFound->centerOfMass.x;
  msg.centerY2D = skeletonFound->centerOfMass.y;

  msg.timestamp=actualTimestamp; */

  jointBBoxBroadcaster.publish(msg);
}








int runServicesThatNeedColorAndDepth(unsigned char * colorFrame , unsigned int colorWidth , unsigned int colorHeight ,
                                       unsigned short * depthFrame  , unsigned int depthWidth , unsigned int depthHeight ,
                                        struct calibrationHobbit * calib ,
                                         unsigned int frameTimestamp )
{
  if ( (colorFrameCopy==0) ||  (depthFrameCopy==0) ) { fprintf(stderr,"Cannot run handtracker due to not allocated intermediate buffer\n"); return 0; }

  //Make sure we have enough space on our buffers..!
  reallocateCopySpaceIfNeccessary(colorWidth , colorHeight , depthWidth ,depthHeight );

  //Unfortunately gestures need its dedicated frame buffer read/write so we copy frames here before passing them
  memcpy(colorFrameCopy,colorFrame,colorWidth*colorHeight*3*sizeof(unsigned char));
  memcpy(depthFrameCopy,depthFrame,depthWidth*depthHeight*1*sizeof(unsigned short));

  int retres=0;
 // fprintf(stderr,"Passing new frame .. ");
 /*
   retres = hobbitUpperBodyTracker_NewFrame(colorFrameCopy , colorWidth , colorHeight ,
                                               depthFrameCopy  , depthWidth , depthHeight ,
                                               calib ,
                                               processingMode ,
                                               frameTimestamp );
*/
 // fprintf(stderr," survived \n");


  return retres;
}




int registerServices(ros::NodeHandle * nh,unsigned int width,unsigned int height)
{
  colorFrameCopy = (unsigned char * ) malloc(width*height*3*sizeof(unsigned char));
  if (colorFrameCopy==0) { fprintf(stderr,"Cannot make an intermidiate copy of color frame \n");  }
  depthFrameCopy = (unsigned short * ) malloc(width*height*1*sizeof(unsigned short));
  if (depthFrameCopy==0) { fprintf(stderr,"Cannot make an intermidiate copy of depth frame \n"); }

  jointBBoxBroadcaster = nh->advertise <follow_user::SkeletonBBox> ("jointsBBox", 1000);

}

int stopServices()
{
  if (colorFrameCopy!=0) { free(colorFrameCopy); colorFrameCopy=0; }
  if (depthFrameCopy!=0) { free(depthFrameCopy); depthFrameCopy=0; }
}
