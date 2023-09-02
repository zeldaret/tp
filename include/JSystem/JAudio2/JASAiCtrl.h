#ifndef JASAICTRL_H
#define JASAICTRL_H

#include "dolphin/types.h"

enum JASOutputRate {
    OUTPUT_RATE_0,
};

enum JASMixMode {
    MIX_MODE_MONO,
    MIX_MODE_MONO_WIDE,
    MIX_MODE_EXTRA,
    MIX_MODE_INTERLEAVE,
};

namespace JASDriver {
    typedef s16* (*MixCallback)(s32);
    typedef void (*MixFunc)(s16*, u32, MixCallback);

    /* 8029C388 */ void initAI(void (*)(void));
    /* 8029C4E4 */ void startDMA();
    /* 8029C504 */ void stopDMA();
    /* 8029C524 */ void setOutputRate(JASOutputRate);
    /* 8029C568 */ void updateDac();
    /* 8029C6C4 */ void updateDSP();
    /* 8029C7E0 */ void readDspBuffer(s16*, u32);
    /* 8029C900 */ void finishDSPFrame();
    /* 8029C9DC */ void registerMixCallback(MixCallback, JASMixMode);
    /* 8029C9E8 */ f32 getDacRate();
    /* 8029C9F0 */ u32 getSubFrames();
    /* 8029C9F8 */ u32 getDacSize();
    /* 8029CA04 */ u32 getFrameSamples();
    /* 8029CA10 */ void mixMonoTrack(s16*, u32, MixCallback);
    /* 8029CAC0 */ void mixMonoTrackWide(s16*, u32, MixCallback);
    /* 8029CB70 */ void mixExtraTrack(s16*, u32, MixCallback);
    /* 8029CC50 */ void mixInterleaveTrack(s16*, u32, MixCallback);
    /* 8029CCD4 */ u32 getSubFrameCounter();
    /* 8029E2A8 */ void subframeCallback();
    /* 8029E2D0 */ void DSPSyncCallback();

    extern const MixFunc sMixFuncs[4];
    extern s16* sDmaDacBuffer[3];
    extern JASMixMode sMixMode;
    extern f32 sDacRate;
    extern u32 sSubFrames;
    extern s16** sDspDacBuffer;
    extern s32 sDspDacWriteBuffer;
    extern s32 sDspDacReadBuffer;
    extern s32 sDspStatus;
    extern void (*sDspDacCallback)(s16*, u32);
    extern s16* lastRspMadep;
    extern void (*dacCallbackFunc)(s16*, u32);
    extern MixCallback extMixCallback;
    extern u32 sOutputRate;
    extern u32 sSubFrameCounter;
};

#endif /* JASAICTRL_H */
