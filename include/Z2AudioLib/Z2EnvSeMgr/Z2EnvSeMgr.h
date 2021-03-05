#ifndef Z2ENVSEMGR_H_
#define Z2ENVSEMGR_H_
#include "global.h"

struct Z2EnvSeMgr {
    Z2EnvSeMgr();
    void framework();
    u8 unk_1[0x30C];
};

extern void* lbl_80450B3C;  // Z2EnvSeMgr sInstance

extern "C" {
void __ct__10Z2EnvSeMgrFv(void);
void framework__10Z2EnvSeMgrFv(void);
void __ct__14Z2EnvSeAutoPanFv(void);
void calcPan__14Z2EnvSeAutoPanFv(void);
void __dt__14Z2EnvSeAutoPanFv(void);
void setPanParam__14Z2EnvSeAutoPanFffbbff(void);
void startEnvSeAutoPanLevel__14Z2EnvSeAutoPanF10JAISoundIDfff(void);

void __ct__11Z2EnvSeBaseFP3Vec(void);
void __dt__11Z2EnvSeBaseFv(void);
void startEnvSe__11Z2EnvSeBaseF10JAISoundIDfffffUl(void);
void startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl(void);

void __ct__10Z2EnvSeDirFP3Vec(void);
void calcPan__10Z2EnvSeDirFf(void);
void __dt__10Z2EnvSeDirFv(void);
void setPanDir__10Z2EnvSeDirFP3Vec(void);
void startEnvSeDirLevel__10Z2EnvSeDirF10JAISoundIDff(void);

void getFogDensity__10Z2EnvSeMgrFv(void);
void Z2EnvSeMgr_NS_framework(void);
void initEtcSe__10Z2EnvSeMgrFUcUcUcUc(void);
void initFallSe__10Z2EnvSeMgrFUcUcUcUc(void);
void initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc(void);
void initRiverSe__10Z2EnvSeMgrFUcUcUcUc(void);
void initSceneEnvSe__10Z2EnvSeMgrFlScf(void);
void initStaticEnvSe__10Z2EnvSeMgrFUcUcUcUcP3Vec(void);
void playSceneEnvSe__10Z2EnvSeMgrFv(void);
void registEtcSePos__10Z2EnvSeMgrFP3Vec(void);
void registFallSePos__10Z2EnvSeMgrFP3Vec(void);
void registLv3WaterSePos__10Z2EnvSeMgrFUcP3Vec(void);
void registRiverSePos__10Z2EnvSeMgrFP3Vec(void);
void registWindowPos__10Z2EnvSeMgrFP3Vec(void);
void resetSceneInner__10Z2EnvSeMgrFv(void);
void startEtcSe__10Z2EnvSeMgrFSc(void);
void startFallSe__10Z2EnvSeMgrFSc(void);
void startFarThunderSe__10Z2EnvSeMgrFP3VecSc(void);
void startLv3WaterSe__10Z2EnvSeMgrFSc(void);
void startRiverSe__10Z2EnvSeMgrFSc(void);
void startStaticEnvSe__10Z2EnvSeMgrFSc(void);

void setFogWipeWidth__10Z2EnvSeMgrFf(void);
void setHyrulSewerOpen__10Z2EnvSeMgrFb(void);
void setSnowPower__10Z2EnvSeMgrFSc(void);
void registWolfSmellSePos__10Z2EnvSeMgrFP3Vec(void);
void startFogSe__10Z2EnvSeMgrFv(void);
void startFogWipeTrigger__10Z2EnvSeMgrFP3Vec(void);
}

#endif