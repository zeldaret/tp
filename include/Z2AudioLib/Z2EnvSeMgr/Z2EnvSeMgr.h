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
void Z2EnvSeAutoPan(void);
void Z2EnvSeAutoPan_NS_calcPan(void);
void Z2EnvSeAutoPan_NS_dtor(void);
void Z2EnvSeAutoPan_NS_setPanParam(void);
void Z2EnvSeAutoPan_NS_startEnvSeAutoPanLevel(void);

void Z2EnvSeBase(void);
void Z2EnvSeBase_NS_dtor(void);
void Z2EnvSeBase_NS_startEnvSe(void);
void Z2EnvSeBase_NS_startEnvSeLevel(void);

void Z2EnvSeDir(void);
void Z2EnvSeDir_NS_calcPan(void);
void Z2EnvSeDir_NS_dtor(void);
void Z2EnvSeDir_NS_setPanDir(void);
void Z2EnvSeDir_NS_startEnvSeDirLevel(void);

void Z2EnvSeMgr_NS_getFogDensity(void);
void Z2EnvSeMgr_NS_framework(void);
void Z2EnvSeMgr_NS_initEtcSe(void);
void Z2EnvSeMgr_NS_initFallSe(void);
void Z2EnvSeMgr_NS_initLv3WaterSe(void);
void Z2EnvSeMgr_NS_initRiverSe(void);
void Z2EnvSeMgr_NS_initSceneEnvSe(void);
void Z2EnvSeMgr_NS_initStaticEnvSe(void);
void Z2EnvSeMgr_NS_playSceneEnvSe(void);
void Z2EnvSeMgr_NS_registEtcSePos(void);
void Z2EnvSeMgr_NS_registFallSePos(void);
void Z2EnvSeMgr_NS_registLv3WaterSePos(void);
void Z2EnvSeMgr_NS_registRiverSePos(void);
void Z2EnvSeMgr_NS_registWindowPos(void);
void Z2EnvSeMgr_NS_resetSceneInner(void);
void Z2EnvSeMgr_NS_startEtcSe(void);
void Z2EnvSeMgr_NS_startFallSe(void);
void Z2EnvSeMgr_NS_startFarThunderSe(void);
void Z2EnvSeMgr_NS_startLv3WaterSe(void);
void Z2EnvSeMgr_NS_startRiverSe(void);
void Z2EnvSeMgr_NS_startStaticEnvSe(void);

void func_802C93A0(void);
void func_802C8258(void);
void func_802C7FB4(void);
void func_802C92C8(void);
void func_802C9400(void);
void func_802C92EC(void);
}

#endif