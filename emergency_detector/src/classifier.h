#ifndef CLASSIFIER_H_INCLUDED
#define CLASSIFIER_H_INCLUDED


#ifdef __cplusplus
extern "C"
{
#endif

enum MAP_CHECK_ENUM
{
  FRONT_0_9M=0,
  FRONT_1_0M,
  FRONT_1_1M,
  //=============
  NUMBER_OF_MAP_CHECKS
};


struct classifierData
{
  unsigned int headLookingDirection;

  //---------------------------------------
  float temperatureX,temperatureY,temperatureZ;
  float ambientTemperature;
  float objectTemperature;
  unsigned int timestampTemperature;
  unsigned int useObjectTemperature;
  //----------------------------------------
  float holesPercentTop;
  unsigned int useHolesTop;
  float holesPercentBase;
  unsigned int useHolesBase;
  //----------------------------------------
  unsigned int scoreTop;
  unsigned int scoreBase;
  unsigned int useScoreBase;
  //----------------------------------------
  unsigned int mapShouldBeClear[NUMBER_OF_MAP_CHECKS];
  unsigned int useMapInfo;

  //----------------------------------------
  //----------------------------------------
  //----------------------------------------

  unsigned int topX1,topY1,topWidth,topHeight;
  //-------
  unsigned int baseX1,baseY1,baseWidth,baseHeight;
  //-------

};

extern struct classifierData minimums;
extern struct classifierData lastState;
extern struct classifierData maximums;


int initializeClassifier();


#ifdef __cplusplus
}
#endif


#endif