#ifndef JASAICTRL_H
#define JASAICTRL_H

#include "dolphin/types.h"

enum JASOutputRate {};
enum JASMixMode {};

namespace JASDriver {
    /* 8029C388 */ void initAI(void (*)(void));
    /* 8029C4E4 */ void startDMA();
    /* 8029C504 */ void stopDMA();
    /* 8029C524 */ void setOutputRate(JASOutputRate);
    /* 8029C568 */ void updateDac();
    /* 8029C6C4 */ void updateDSP();
    /* 8029C7E0 */ void readDspBuffer(s16*, u32);
    /* 8029C900 */ void finishDSPFrame();
    /* 8029C9DC */ void registerMixCallback(s16* (*)(s32), JASMixMode);
    /* 8029C9E8 */ void getDacRate();
    /* 8029C9F0 */ u32 getSubFrames();
    /* 8029C9F8 */ void getDacSize();
    /* 8029CA04 */ void getFrameSamples();
    /* 8029CA10 */ void mixMonoTrack(s16*, u32, s16* (*)(s32));
    /* 8029CAC0 */ void mixMonoTrackWide(s16*, u32, s16* (*)(s32));
    /* 8029CB70 */ void mixExtraTrack(s16*, u32, s16* (*)(s32));
    /* 8029CC50 */ void mixInterleaveTrack(s16*, u32, s16* (*)(s32));
    /* 8029CCD4 */ u32 getSubFrameCounter();
    /* 8029E2A8 */ void subframeCallback();
    /* 8029E2D0 */ void DSPSyncCallback();

    extern void* const sMixFuncs[4];
    extern u8 sDmaDacBuffer[12 + 4 /* padding */];
    extern u32 sMixMode;
    extern f32 sDacRate;
    extern u32 sSubFrames;
    extern u8 sDspDacBuffer[4];
    extern u8 sDspDacWriteBuffer[4];
    extern u8 sDspDacReadBuffer[4];
    extern u8 sDspStatus[4];
    extern u8 sDspDacCallback[4];
    extern u8 lastRspMadep[4];
    extern u8 dacCallbackFunc[4];
    extern u8 extMixCallback[4];
    extern u8 sOutputRate[4];
    extern u8 sSubFrameCounter[4];
};

#endif /* JASAICTRL_H */
