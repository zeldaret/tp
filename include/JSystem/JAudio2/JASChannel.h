#ifndef JASCHANNEL_H
#define JASCHANNEL_H

#include "JSystem/JAudio2/JASHeapCtrl.h"
#include "JSystem/JAudio2/JASLfo.h"
#include "JSystem/JAudio2/JASOscillator.h"
#include "JSystem/JAudio2/JASSoundParams.h"
#include "JSystem/JAudio2/JASWaveInfo.h"
#include "dolphin/os/OSMessage.h"

class JASDSPChannel;

namespace JASDsp {
    struct TChannel;
}

class JASChannelParams {
public:
    JASChannelParams() {
        mVolume = 1.0f;
        mPitch = 1.0f;
        field_0x8 = 0.0f;
        mPan = 0.5f;
        mFxMix = 0.0f;
        mDolby = 0.0f;
    }
    void init() {
        mVolume = 1.0f;
        mPitch = 1.0f;
        field_0x8 = 0.0f;
        mPan = 0.5f;
        mFxMix = 0.0f;
        mDolby = 0.0f;
    }

    f32 mVolume;
    f32 mPitch;
    f32 field_0x8;
    f32 mPan;
    f32 mFxMix;
    f32 mDolby;
};

class JASChannel : public JASPoolAllocObject_MultiThreaded<JASChannel> {
public:
    struct PanVector {};

    /* 8029A800 */ JASChannel(void (*)(u32, JASChannel*, JASDsp::TChannel*, void*), void*);
    /* 8029A918 */ ~JASChannel();
    /* 8029A9F0 */ int play();
    /* 8029AA60 */ void playForce();
    /* 8029AAD0 */ void release(u16);
    /* 8029AB64 */ void setOscInit(u32, JASOscillator::Data const*);
    /* 8029AB98 */ void setMixConfig(u32, u16);
    /* 8029ABA8 */ void calcEffect(JASChannel::PanVector const*);
    /* 8029ABC0 */ void calcPan(JASChannel::PanVector const*);
    /* 8029ABEC */ void effectOsc(u32, JASOscillator::EffectParams*);
    /* 8029ACD4 */ void setKeySweepTarget(s32, u32);
    /* 8029AD38 */ void updateEffectorParam(JASDsp::TChannel*, u16*,
                                            JASOscillator::EffectParams const&);
    /* 8029AF78 */ static void dspUpdateCallback(u32, JASDsp::TChannel*, void*);
    /* 8029B004 */ void initialUpdateDSPChannel(JASDsp::TChannel*);
    /* 8029B324 */ void updateDSPChannel(JASDsp::TChannel*);
    /* 8029B6A0 */ void updateAutoMixer(JASDsp::TChannel*, f32, f32, f32, f32);
    /* 8029B7D8 */ void updateMixer(f32, f32, f32, f32, u16*);
    /* 8029BBFC */ void free();
    /* 8029BC0C */ static void initBankDisposeMsgQueue();
    /* 8029BC48 */ static void receiveBankDisposeMsg();
    /* 8029BCC0 */ void checkBankDispose() const;

    void setPauseFlag(bool param_0) { mPauseFlag = param_0; }
    void setUpdateTimer(u32 param_0) { mUpdateTimer = param_0; }
    void setBankDisposeID(const void* param_0) { mBankDisposeID = param_0; }
    void setDirectRelease(u16 param_0) { field_0x1c[0].setDirectRelease(param_0); }
    void setVibrate(f32 param_0, f32 param_1) {
        mVibrate.setDepth(param_0);
        mVibrate.setPitch(param_1);
    }
    void setVibrateDelay(u16 param_0) { mVibrate.setDelay(param_0); }
    void setTremolo(f32 param_0, f32 param_1) {
        mTremolo.setDepth(param_0);
        mTremolo.setPitch(param_1);
    }
    void setTremoloDelay(u16 param_0) { mTremolo.setDelay(param_0); }
    void setPriority(u16 param_0) { mPriority = param_0; }
    void setParams(const JASChannelParams& param_0) { mParams = param_0; }
    void setInitVolume(f32 param_0) { field_0xb4.mVolume = param_0; }
    void setInitFxmix(f32 param_0) { field_0xb4.mFxMix = param_0; }
    void setInitPitch(f32 param_0) { field_0xb4.mPitch = param_0; }
    void setInitPan(f32 param_0) { field_0xb4.mPan = param_0; }
    void setInitDolby(f32 param_0) { field_0xb4.mDolby = param_0; }
    void setKey(s32 param_0) { mKey = param_0; }
    void setVelocity(u32 param_0) { mVelocity = param_0; }
    void setSkipSamples(u32 param_0) { mSkipSamples = param_0; }

    /* 0x00 */ int mStatus;
    /* 0x04 */ bool mPauseFlag;
    /* 0x08 */ JASDSPChannel* mDspCh;
    /* 0x0C */ void* field_0xc;
    /* 0x10 */ void* field_0x10;
    /* 0x14 */ u32 mUpdateTimer;
    /* 0x18 */ const void* mBankDisposeID;
    /* 0x1C */ JASOscillator field_0x1c[2];
    /* 0x5C */ JASLfo mVibrate;
    /* 0x74 */ JASLfo mTremolo;
    /* 0x8C */ u16 field_0x8c[6];
    /* 0x98 */ short mPriority;
    /* 0x9C */ JASChannelParams mParams;
    /* 0xB4 */ JASSoundParams field_0xb4;
    /* 0xC8 */ s16 mKey;
    /* 0xCA */ u16 mVelocity;
    /* 0xCC */ f32 field_0xcc;
    /* 0xD0 */ f32 field_0xd0;
    /* 0xD4 */ u32 field_0xd4;
    /* 0xD8 */ u32 mSkipSamples;
    struct {
        u32 field_0x0;
        JASWaveInfo field_0x4;
    } field_0xdc;
    int field_0x104;

    static OSMessageQueue sBankDisposeMsgQ;
    static OSMessage sBankDisposeMsg[16];
    static u32 sBankDisposeList[16];
    static u32 sBankDisposeListSize;
};

#endif /* JASCHANNEL_H */
