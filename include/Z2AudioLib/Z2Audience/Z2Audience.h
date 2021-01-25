#ifndef Z2AUDIENCE_H_
#define Z2AUDIENCE_H_

extern "C" {
void Z2Audience(void);
void Z2Audience_NS_dtor(void);
void Z2Audience_NS_calcDeltaPriority_(void);
void Z2Audience_NS_calcFxMix_(void);
void Z2Audience_NS_calcOffMicSound(void);
void Z2Audience_NS_calcPitch_(void);
void Z2Audience_NS_calcPitchDoppler_(void);
void Z2Audience_NS_calcRelPosDolby(void);
void Z2Audience_NS_calcRelPosPan(void);
void Z2Audience_NS_calcRelPosVolume(void);
void Z2Audience_NS_calcVolume_(void);
void Z2Audience_NS_convertAbsToRel(void);
void Z2Audience_NS_setTargetVolume(void);

void Z2Audience3DSetting(void);
void Z2Audience3DSetting_NS_init(void);
void Z2Audience3DSetting_NS_initDolbyDist(void);
void Z2Audience3DSetting_NS_initVolumeDist(void);
void Z2Audience3DSetting_NS_updateDolbyDist(void);
void Z2Audience3DSetting_NS_updateVolumeDist(void);

void func_802BBE98(void);
void func_802BDEDC(void);
void func_802BD4D4(void);
void func_802BD71C(void);
void func_802BBED0(void);
void func_802BD338(void);
void func_802BDED4(void);
void func_802BD5B8(void);
void func_802BD510(void);
}

#endif  // Z2AUDIENCE_H_
