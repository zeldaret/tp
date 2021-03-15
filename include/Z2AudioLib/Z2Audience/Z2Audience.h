#ifndef Z2AUDIENCE_H_
#define Z2AUDIENCE_H_

extern "C" {
void __ct__10Z2AudienceFv(void);
void __dt__10Z2AudienceFv(void);
void calcDeltaPriority___10Z2AudienceCFfib(void);
void calcFxMix___10Z2AudienceCFfi(void);
void calcOffMicSound__10Z2AudienceFf(void);
void calcPitch___10Z2AudienceCFP16Z2AudibleChannelPC9Z2AudiblePC13Z2AudioCamera(void);
void Z2Audience_NS_calcPitchDoppler_(void);
void calcRelPosDolby__10Z2AudienceFRC3Veci(void);
void calcRelPosPan__10Z2AudienceFRC3Veci(void);
void calcRelPosVolume__10Z2AudienceFRC3Vecfi(void);
void calcVolume___10Z2AudienceCFfi(void);
void convertAbsToRel__10Z2AudienceFR3VecP3Veci(void);
void setTargetVolume__10Z2AudienceFfi(void);

void __ct__19Z2Audience3DSettingFv(void);
void init__19Z2Audience3DSettingFv(void);
void initDolbyDist__19Z2Audience3DSettingFv(void);
void initVolumeDist__19Z2Audience3DSettingFv(void);
void updateDolbyDist__19Z2Audience3DSettingFff(void);
void updateVolumeDist__19Z2Audience3DSettingFf(void);

void calc__9Z2AudibleFv(void);
void __sinit_Z2Audience_cpp(void);
void deleteAudible__10Z2AudienceFP10JAIAudible(void);
void mixChannelOut__10Z2AudienceFRC14JASSoundParamsP10JAIAudiblei(void);
void getOuterParams__9Z2AudibleFi(void);
void func_802BD338(void);
void getMaxChannels__10Z2AudienceFv(void);
void calcPriority__10Z2AudienceFP10JAIAudible(void);
void __dt__9Z2AudibleFv(void);
}

#endif  // Z2AUDIENCE_H_
