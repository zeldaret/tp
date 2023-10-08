#ifndef JASTRACK_H
#define JASTRACK_H

#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JAudio2/JASOscillator.h"
#include "JSystem/JAudio2/JASRegisterParam.h"
#include "JSystem/JAudio2/JASSeqCtrl.h"
#include "JSystem/JAudio2/JASTrackPort.h"

struct JASSoundParams;

namespace JASDsp {
    class TChannel;

    extern u32 FILTER_MODE_IIR;
};

struct JASChannel {
    /* 8029AAD0 */ void release(u16);
    /* 8029AB64 */ void setOscInit(u32, JASOscillator::Data const*);
    /* 8029AB98 */ void setMixConfig(u32, u16);
    /* 8029ACD4 */ void setKeySweepTarget(s32, u32);
    /* 8029BBFC */ void free();
};

struct JASTrack {
    enum Status {
        STATUS_FREE,
        STATUS_RUN,
    };

    struct TChannelMgr {
        /* 802930DC */ TChannelMgr(JASTrack*);
        /* 80293148 */ void init();
        /* 802931B0 */ void releaseAll();
        /* 80293220 */ void noteOff(u32, u16);
        /* 802932A0 */ void setPauseFlag(bool);

        /* 0x00 */ JASChannel* field_0x0[8];
        /* 0x20 */ u8 field_0x20[0x18];  // JASChannelParams
        /* 0x38 */ short field_0x38[8];
        /* 0x48 */ JASSoundParams* field_0x48;
        /* 0x4c */ JASTrack* field_0x4c;
    };

    struct TList {
        /* 80292F6C */ void cbSeqMain(void*);
        /* 80292F90 */ void append(JASTrack*);
        /* 8029301C */ void seqMain();
        /* 8029345C */ ~TList();
    };

    struct MoveParam_ {
        /* 802932C8 */ MoveParam_();

        /* 0x00 */ f32 field_0x0;
        /* 0x04 */ f32 field_0x4;
        /* 0x08 */ int field_0x8;
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
    /* 80291C30 */ JASTrack* openChild(u32);
    /* 80291DAC */ void connectBus(int, int);
    /* 80291DBC */ void setLatestKey(u8);
    /* 80291DF8 */ void channelStart(JASTrack::TChannelMgr*, u32, u32, u32);
    /* 80291F38 */ int noteOn(u32, u32, u32);
    /* 80292008 */ int gateOn(u32, u32, f32, u32);
    /* 80292198 */ int noteOff(u32, u16);
    /* 80292220 */ bool checkNoteStop(u32) const;
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
    /* 802928D0 */ u16 readPortSelf(u32);
    /* 802928F4 */ void writePortSelf(u32, u16);
    /* 80292918 */ void writePort(u32, u16);
    /* 8029297C */ u16 readPort(u32);
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

    JASSeqCtrl* getSeqCtrl() { return &mSeqCtrl; }
    u16 getPort(u32 param_0) { return mTrackPort.get(param_0); }
    void setPort(u32 param_0, u16 param_1) { mTrackPort.set(param_0, param_1); }
    u32 checkPortIn(u32 param_0) { return mTrackPort.checkImport(param_0); }
    u32 checkPort(u32 param_0) { return mTrackPort.checkExport(param_0); }
    u32 readReg(JASRegisterParam::RegID param_0) { return mRegisterParam.read(param_0); }
    void writeReg(JASRegisterParam::RegID param_0, u32 param_1) { mRegisterParam.write(param_0, param_1); }
    JASTrack* getParent() { return mParent; }
    JASTrack* getChild(u32 index) { return mChildren[index]; }
    int getChannelMgrCount() { return channelMgrCount; }
    f32 getVibDepth() const { return mVibDepth; }
    void setVibDepth(f32 param_0) { mVibDepth = param_0; }
    f32 getVibPitch() const { return mVibPitch; }
    void setVibPitch(f32 param_0) { mVibPitch = param_0; }
    f32 getTremDepth() const { return mTremDepth; }
    void setTremDepth(f32 param_0) { mTremDepth = param_0; }
    f32 getTremPitch() const { return mTremPitch; }
    void setTremPitch(f32 param_0) { mTremPitch = param_0; }
    u16 getVibDelay() const { return mVibDelay; }
    void setVibDelay(u32 param_0) { mVibDelay = param_0; }
    u16 getTremDelay() const { return mTremDelay; }
    void setTremDelay(u32 param_0) { mTremDelay = param_0; }
    u8 getStatus() const { return mStatus; }
    void setAutoDelete(u8 param_0) { field_0x216.autoDelete = param_0; }
    f32 getPanPower() const { return mPanPower; }
    void setPanPower(f32 param_0) { mPanPower = param_0; }
    u32 getSkipSample() const { return mSkipSample; }
    void setSkipSample(u32 param_0) { mSkipSample = param_0; }
    u16 getDirectRelease() const { return mDirectRelease; }
    void setDirectRelease(u16 param_0) {mDirectRelease = param_0; }
    u16 getTimebase() const { return mTimebase; }
    s8 getTranspose() const { return mTranspose; }
    void setTranspose(u32 param_0) { mTranspose = param_0; }
    u16 getBankNumber() const { return mBankNumber; }
    void setBankNumber(u16 param_0) { mBankNumber = param_0; }
    u16 getProgNumber() const { return mProgNumber; }
    void setProgNumber(u16 param_0) { mProgNumber = param_0; }
    u8 getBendSense() const { return mBendSense; }
    void setBendSense(u8 param_0) { mBendSense = param_0; }
    u8 getNoteOnPrio() const { return mNoteOnPrio; }
    void setNoteOnPrio(u8 param_0) { mNoteOnPrio = param_0; }
    u8 getReleasePrio() const { return mReleasePrio; }
    void setReleasePrio(u8 param_0) { mReleasePrio = param_0; }
    u8 getGateRate() const { return mGateRate; }
    void setGateRate(u8 param_0) { mGateRate = param_0; }

    /* 0x000 */ JASSeqCtrl mSeqCtrl;
    /* 0x05C */ JASTrackPort mTrackPort;
    /* 0x080 */ JASRegisterParam mRegisterParam;
    /* 0x09C */ MoveParam_ field_0x9c[6];
    /* 0x0e4 */ u8 mOscParam[0x30]; // JASOscillator::Data[2]
    /* 0x114 */ u8 field_0x114[0x18]; // JASOscillator::Point[4]
    /* 0x12C */ JASTrack* mParent;
    /* 0x130 */ JASTrack* mChildren[16];
    /* 0x170 */ TChannelMgr* field_0x170[4];
    /* 0x180 */ TChannelMgr field_0x180;
    /* 0x1D0 */ int channelMgrCount;
    /* 0x1D4 */ void* field_0x1d4;
    /* 0x1D8 */ f32 field_0x1d8;
    /* 0x1DC */ f32 field_0x1dc;
    /* 0x1E0 */ f32 mVibDepth;
    /* 0x1E4 */ f32 mVibPitch;
    /* 0x1E8 */ f32 mTremDepth;
    /* 0x1EC */ f32 mTremPitch;
    /* 0x1F0 */ u16 mVibDelay;
    /* 0x1F2 */ u16 mTremDelay;
    /* 0x1F4 */ short field_0x1f4[8];
    /* 0x204 */ short field_0x204[8];
    /* 0x214 */ char field_0x214;
    /* 0x215 */ volatile u8 mStatus;
    /* 0x216 */ struct {
        u8 flag0 : 1;
        u8 flag1 : 1;
        u8 flag2 : 1;
        u8 autoDelete : 1;
        u8 flag4 : 1;
        u8 flag5 : 1;
        u8 flag6 : 1;
        u8 flag7 : 1;
    } field_0x216;
    /* 0x218 */ f32 mPanPower;
    /* 0x21C */ f32 field_0x21c;
    /* 0x220 */ u32 mSkipSample;
    /* 0x224 */ u16 mDirectRelease;
    /* 0x226 */ u16 field_0x226;
    /* 0x228 */ u16 mTimebase;
    /* 0x22A */ s8 mTranspose;
    /* 0x22B */ char field_0x22b;
    /* 0x22C */ u16 mBankNumber;
    /* 0x22E */ u16 mProgNumber;
    /* 0x230 */ u8 mBendSense;
    /* 0x231 */ u8 mNoteOnPrio;
    /* 0x232 */ u8 mReleasePrio;
    /* 0x233 */ u8 mGateRate;
    /* 0x234 */ u16 field_0x234[6];
    /* 0x240 */ u8 field_0x240[0x08]; // TLinkListNode
};

struct JASDefaultBankTable : public JASGlobalInstance<JASDefaultBankTable> {
    /* 802934B4 */ ~JASDefaultBankTable();
};

#endif /* JASTRACK_H */
