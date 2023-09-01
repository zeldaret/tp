#ifndef JASDRIVERIF_H
#define JASDRIVERIF_H

#include "dolphin/types.h"

typedef s32 (*DriverCallback)(void*);

namespace JASDriver {
    /* 8029E130 */ void setDSPLevel(f32);
    /* 8029E150 */ u16 getChannelLevel_dsp();
    /* 8029E158 */ f32 getDSPLevel();
    /* 8029E178 */ void setOutputMode(u32);
    /* 8029E180 */ u32 getOutputMode();
    /* 8029E188 */ void waitSubFrame();
    /* 8029E1C4 */ int rejectCallback(DriverCallback, void*);
    /* 8029E240 */ bool registerDspSyncCallback(DriverCallback, void*);
    /* 8029E274 */ bool registerSubFrameCallback(DriverCallback, void*);
    /* 8029E2A8 */ void subframeCallback();
    /* 8029E2D0 */ void DSPSyncCallback();
    /* 8029E2F8 */ void updateDacCallback();

    extern u8 sDspSyncCallback[256];
    extern u8 sSubFrameCallback[256];
    extern u8 sUpdateDacCallback[256 + 8 /* padding */];
    extern u16 MAX_MIXERLEVEL;
    extern u32 JAS_SYSTEM_OUTPUT_MODE;
};

#endif /* JASDRIVERIF_H */
