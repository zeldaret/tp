#ifndef JASTRACK_H
#define JASTRACK_H

#include "JSystem/JAudio2/JASSoundParams.h"
#include "dolphin/types.h"

struct JASDsp {
    struct TChannel {
        /* 8029E00C */ void setFilterMode(u16);
        /* 8029E044 */ void setIIRFilterParam(s16*);
        /* 8029E06C */ void setFIR8FilterParam(s16*);
    };

    static u32 FILTER_MODE_IIR;
};

struct JASOscillator {
    struct Point {};

    struct Data {};
};

struct JASChannel {
    /* 8029AAD0 */ void release(u16);
    /* 8029AB64 */ void setOscInit(u32, JASOscillator::Data const*);
    /* 8029AB98 */ void setMixConfig(u32, u16);
    /* 8029ACD4 */ void setKeySweepTarget(s32, u32);
    /* 8029BBFC */ void free();
};

struct JASTrack {
    struct TChannelMgr {
        /* 802930DC */ TChannelMgr(JASTrack*);
        /* 80293148 */ void init();
        /* 802931B0 */ void releaseAll();
        /* 80293220 */ void noteOff(u32, u16);
        /* 802932A0 */ void setPauseFlag(bool);
    };

    struct TList {
        /* 80292F6C */ void cbSeqMain(void*);
        /* 80292F90 */ void append(JASTrack*);
        /* 8029301C */ void seqMain();
        /* 8029345C */ ~TList();
    };

    struct MoveParam_ {
        /* 802932C8 */ MoveParam_();
    };

    /* 80291228 */ JASTrack();
    /* 8029131C */ ~JASTrack();
    /* 80291444 */ void setChannelMgrCount(u32);
    /* 802915D4 */ void init();
    /* 802918FC */ void initTimed();
    /* 8029194C */ void inherit(JASTrack const&);
    /* 802919F4 */ void assignExtBuffer(u32, JASSoundParams*);
    /* 80291A08 */ void setSeqData(void*, u32);
    /* 80291A28 */ void startSeq();
    /* 80291A78 */ void stopSeq();
    /* 80291ABC */ void start();
    /* 80291AC8 */ void close();
    /* 80291B8C */ void connectChild(u32, JASTrack*);
    /* 80291BB8 */ void closeChild(u32);
    /* 80291C30 */ void openChild(u32);
    /* 80291DAC */ void connectBus(int, int);
    /* 80291DBC */ void setLatestKey(u8);
    /* 80291DF8 */ void channelStart(JASTrack::TChannelMgr*, u32, u32, u32);
    /* 80291F38 */ void noteOn(u32, u32, u32);
    /* 80292008 */ void gateOn(u32, u32, f32, u32);
    /* 80292198 */ void noteOff(u32, u16);
    /* 80292220 */ void checkNoteStop(u32) const;
    /* 8029226C */ void overwriteOsc(JASChannel*);
    /* 802922D8 */ void updateTimedParam();
    /* 80292348 */ void updateTrack(f32);
    /* 802924E4 */ void updateTempo();
    /* 80292580 */ void updateSeq(bool, f32);
    /* 80292644 */ void seqTimeToDspTime(f32);
    /* 802926E0 */ void setParam(u32, f32, u32);
    /* 80292708 */ void noteOffAll(u16);
    /* 802927A0 */ void mute(bool);
    /* 802927D8 */ void setOscScale(u32, f32);
    /* 802927E8 */ void setOscTable(u32, JASOscillator::Point const*);
    /* 80292808 */ void setOscAdsr(s16, s16, s16, s16, u16);
    /* 8029285C */ void setFIR(s16 const*);
    /* 8029289C */ void setIIR(s16 const*);
    /* 802928D0 */ void readPortSelf(u32);
    /* 802928F4 */ void writePortSelf(u32, u16);
    /* 80292918 */ void writePort(u32, u16);
    /* 8029297C */ void readPort(u32);
    /* 802929A0 */ void setChannelPauseFlag(bool);
    /* 80292A3C */ void pause(bool);
    /* 80292AA4 */ void getTransposeTotal() const;
    /* 80292AF4 */ void isMute() const;
    /* 80292B58 */ void setTempo(u16);
    /* 80292B8C */ void setTempoRate(f32);
    /* 80292BC0 */ void setTimebase(u16);
    /* 80292BF4 */ void updateChannel(JASChannel*, JASDsp::TChannel*);
    /* 80292CA4 */ void channelUpdateCallback(u32, JASChannel*, JASDsp::TChannel*, void*);
    /* 80292D88 */ void getRootTrack();
    /* 80292DA0 */ void tickProc();
    /* 80292E9C */ void seqMain();

    static u8 const sAdsTable[24];
    static u8 const sEnvOsc[24];
    static u8 const sPitchEnvOsc[24];
    static u8 sDefaultBankTable[1036];
    static u8 sTrackList[16];
};

#endif /* JASTRACK_H */
