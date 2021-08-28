#ifndef Z2ENVSEMGR_H
#define Z2ENVSEMGR_H

#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

struct Z2EnvSeMgr {
    /* 802C611C */ Z2EnvSeMgr();
    /* 802C6540 */ ~Z2EnvSeMgr();
    /* 802C66B0 */ void framework();
    /* 802C6998 */ void resetScene();
    /* 802C699C */ void resetSceneInner();
    /* 802C6AC0 */ void initSceneEnvSe(s32, s8, f32);
    /* 802C6C1C */ void playSceneEnvSe();
    /* 802C6C84 */ void initStaticEnvSe(u8, u8, u8, u8, Vec*);
    /* 802C70C8 */ void startStaticEnvSe(s8);
    /* 802C780C */ void registWindowPos(Vec*);
    /* 802C7830 */ void startRainSe(s32, s8);
    /* 802C7CF4 */ void startNearThunderSe(s8);
    /* 802C7E68 */ void startFarThunderSe(Vec*, s8);
    /* 802C7FB4 */ void setSnowPower(s8);
    /* 802C7FBC */ void initStrongWindSe();
    /* 802C7FC8 */ void setWindDirection(Vec*);
    /* 802C800C */ void startStrongWindSe(s8);
    /* 802C80F8 */ void initRiverSe(u8, u8, u8, u8);
    /* 802C8234 */ void registRiverSePos(Vec*);
    /* 802C8258 */ void setHyrulSewerOpen(bool);
    /* 802C8300 */ void startRiverSe(s8);
    /* 802C8730 */ void initFallSe(u8, u8, u8, u8);
    /* 802C886C */ void registFallSePos(Vec*);
    /* 802C8890 */ void startFallSe(s8);
    /* 802C8A90 */ void initEtcSe(u8, u8, u8, u8);
    /* 802C8C24 */ void registEtcSePos(Vec*);
    /* 802C8C48 */ void startEtcSe(s8);
    /* 802C92C8 */ void registWolfSmellSePos(Vec*);
    /* 802C92EC */ void startFogWipeTrigger(Vec*);
    /* 802C93A0 */ void setFogWipeWidth(f32);
    /* 802C93E4 */ void getFogDensity();
    /* 802C9400 */ void startFogSe();
    /* 802C950C */ void initLv3WaterSe(u8, u8, u8, u8);
    /* 802C9F58 */ void registLv3WaterSePos(u8, Vec*);
    /* 802CA794 */ void startLv3WaterSe(s8);

    u8 field_0x0[780];
};

#endif /* Z2ENVSEMGR_H */
