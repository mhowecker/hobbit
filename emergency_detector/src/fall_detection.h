
#ifndef FALL_DETECTION_H_INCLUDED
#define FALL_DETECTION_H_INCLUDED

#ifdef __cplusplus
extern "C"
{
#endif

#define MAX_NUMBER_OF_2D_JOINTS 30

enum FALL_DETECTION_STATE_ENUM
{
    FALL_DETECTION_LOST_SKELETON = 0 ,
    FALL_DETECTION_SKELETON_STANDING ,
    FALL_DETECTION_SKELETON_FALLING ,
    FALL_DETECTION_SKELETON_DOWN ,
    //------------------------------------
    FALL_DETECTION_NUMBER_OF_STATES
};

struct floatTriplet
{
  float x,y,z;
};


struct fallState
{
   unsigned int state;
   struct floatTriplet bboxLast,bboxDelta,bboxCurrent,bboxAverage;
   struct floatTriplet posLast,posDelta,posCurrent,posAverage;


   unsigned int numberOfJoints;
   struct floatTriplet lastJoint2D[MAX_NUMBER_OF_2D_JOINTS];

};


extern struct fallState fallDetectionContext;


int userHasFallen(struct fallState * fs);

#ifdef __cplusplus
}
#endif


#endif