#ifndef JASDRIVERIF_H
#define JASDRIVERIF_H

#include "dolphin/types.h"

typedef s32 (*DriverCallback)(void*);

struct JASDriver {
    /* 8029E130 */ static void setDSPLevel(f32);
    /* 8029E150 */ u16 getChannelLevel_dsp();
    /* 8029E158 */ static f32 getDSPLevel();
    /* 8029E178 */ static void setOutputMode(u32);
    /* 8029E180 */ u32 getOutputMode();
    /* 8029E188 */ void waitSubFrame();
    /* 8029E1C4 */ void rejectCallback(DriverCallback, void*);
    /* 8029E240 */ static bool registerDspSyncCallback(DriverCallback, void*);
    /* 8029E274 */ static bool registerSubFrameCallback(DriverCallback, void*);
    /* 8029E2A8 */ void subframeCallback();
    /* 8029E2D0 */ void DSPSyncCallback();
    /* 8029E2F8 */ void updateDacCallback();
    /* 8029C9F0 */ static u32 getSubFrames();
    static void initAI(void (*)());
    static void startDMA();
    static void stopDMA();
    static void updateDac();
    static void updateDacCallback();
    static void finishDSPFrame();
    static void updateDSP();

    static u8 sDspSyncCallback[256];
    static u8 sSubFrameCallback[256];
    static u8 sUpdateDacCallback[256 + 8 /* padding */];
    static u16 MAX_MIXERLEVEL[1 + 1 /* padding */];
    static u32 JAS_SYSTEM_OUTPUT_MODE;
};

#endif /* JASDRIVERIF_H */
