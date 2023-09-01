#ifndef JASDSPINTERFACE_H
#define JASDSPINTERFACE_H

#include "dolphin/types.h"

struct JASWaveInfo;

namespace JASDsp {
    struct FxlineConfig_ {};

    struct TChannel {
        /* 8029DCA4 */ void init();
        /* 8029DCE0 */ void playStart();
        /* 8029DD44 */ void playStop();
        /* 8029DD50 */ void replyFinishRequest();
        /* 8029DD60 */ void forceStop();
        /* 8029DD6C */ void isActive() const;
        /* 8029DD7C */ void isFinish() const;
        /* 8029DD8C */ void setWaveInfo(JASWaveInfo const&, u32, u32);
        /* 8029DEAC */ void setOscInfo(u32);
        /* 8029DEC4 */ void initAutoMixer();
        /* 8029DEF0 */ void setAutoMixer(u16, u8, u8, u8, u8);
        /* 8029DF1C */ void setPitch(u16);
        /* 8029DF34 */ void setMixerInitVolume(u8, s16);
        /* 8029DF54 */ void setMixerVolume(u8, s16);
        /* 8029DF80 */ void setPauseFlag(u8);
        /* 8029DF8C */ void flush();
        /* 8029DFB0 */ void initFilter();
        /* 8029E00C */ void setFilterMode(u16);
        /* 8029E044 */ void setIIRFilterParam(s16*);
        /* 8029E06C */ void setFIR8FilterParam(s16*);
        /* 8029E094 */ void setDistFilter(s16);
        /* 8029E09C */ void setBusConnect(u8, u8);
    };

    /* 8029D958 */ void boot(void (*)(void*));
    /* 8029D9A4 */ void releaseHalt(u32);
    /* 8029D9C4 */ void finishWork(u16);
    /* 8029D9E4 */ void syncFrame(u32, u32, u32);
    /* 8029DA04 */ void setDSPMixerLevel(f32);
    /* 8029DA30 */ f32 getDSPMixerLevel();
    /* 8029DA38 */ void getDSPHandle(int);
    /* 8029DA48 */ void setFilterTable(s16*, s16*, u32);
    /* 8029DA6C */ void flushBuffer();
    /* 8029DAA0 */ void invalChannelAll();
    /* 8029DAC8 */ void initBuffer();
    /* 8029DB78 */ void setFXLine(u8, s16*, JASDsp::FxlineConfig_*);

    extern u8 const DSPADPCM_FILTER[64];
    extern void* const DSPRES_FILTER[320];
    extern u8 SEND_TABLE[24 + 24 /* padding */];
    extern u8 CH_BUF[4];
    extern u8 FX_BUF[4];
    extern f32 sDSPVolume;
};

#endif /* JASDSPINTERFACE_H */
