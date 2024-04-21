#ifndef Z2AUDIENCE_H
#define Z2AUDIENCE_H

#include "JSystem/JAudio2/JAIAudience.h"
#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JAudio2/JAIAudible.h"
#include "JSystem/JAudio2/JASSoundParams.h"
#include "JSystem/JAudio2/JASHeapCtrl.h"
#include "JSystem/JAudio2/JAUAudibleParam.h"
#include "JSystem/TPosition3.hh"

struct Z2Audible;

struct Z2AudibleAbsPos {
    /* 802BBCDC */ void calc(JGeometry::TVec3<f32> const&);
    /* 802BBD18 */ void init(JGeometry::TVec3<f32>*, JGeometry::TVec3<f32> const&,
                             JGeometry::TVec3<f32> const*);

    /* 0x00 */ JGeometry::TVec3<f32> field_0x0;
    /* 0x0C */ JGeometry::TVec3<f32> field_0xc;
};

struct Z2AudioCamera {
    /* 802BC758 */ Z2AudioCamera();
    /* 802BC788 */ void init();
    /* 802BC8AC */ void setCameraState(f32 (*)[4], Vec&, Vec&, f32, f32, bool, bool);
    /* 802BC7DC */ void setCameraState(f32 const (*)[4], Vec&, bool);
    /* 802BCBEC */ void convertAbsToRel(Z2Audible*, int);
    /* 802BCC7C */ bool convertAbsToRel(Vec&, Vec*) const;
    /* 802BCCC0 */ bool isInSight(Vec&) const;
    JGeometry::TVec3<f32>* getPos() { return &mPos; }
    f32 getVolCenterZ() const { return mVolCenterZ; }
    void setMainCamera() { mSetMainCamera = true; }
    void setTargetVolume(f32 volume) { 
        if (volume < 0.0f) {
            volume = 0.0f;
        }
        mTargetVolume = volume;
    }
    f32 getDolbyCenterZ() const { return mDolbyCenterZ; }
    f32 getFovySin() const { return mFovySin; }
    const JGeometry::TVec3<f32>* getVel() const { return &mVel; }


    /* 0x00 */ JGeometry::TPosition3f32 field_0x0;
    /* 0x30 */ JGeometry::TVec3<f32> mVel;
    /* 0x3C */ JGeometry::TVec3<f32> mPos;
    /* 0x48 */ JGeometry::TVec3<f32> field_0x48;
    /* 0x54 */ f32 mFovySin;
    /* 0x58 */ f32 mVolCenterZ;
    /* 0x5C */ f32 mTargetVolume;
    /* 0x60 */ f32 mDolbyCenterZ;
    /* 0x64 */ f32 mCamDist;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ bool mSetMainCamera;
};  // Size: 0x74

struct Z2SpotMic {
    /* 802BCD28 */ Z2SpotMic();
    /* 802BCDA8 */ void clearMicState(int);
    /* 802BCDE8 */ void calcVolumeFactor(int);
    /* 802BCE14 */ void setMicState(Z2AudioCamera*, int);
    /* 802BCF5C */ f32 calcMicDist(Z2Audible*);
    /* 802BCFE4 */ u32 calcMicPriority(f32);
    /* 802BD03C */ f32 calcMicVolume(f32, int, f32);

    void setPosPtr(Vec* i_posPtr) { mPosPtr = i_posPtr; }
    bool isOn() const { return mMicOn; }

    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ Z2AudioCamera* field_0x10[1];
    /* 0x14 */ Vec* mPosPtr;
    /* 0x18 */ f32 field_0x18[1];
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20[1];
    /* 0x24 */ bool mIgnoreIfOut;
    /* 0x25 */ bool mMicOn;
    /* 0x26 */ u8 field_0x26[1];
};  // Size: 0x28

struct Z2Audience3DSetting {
    /* 802BC248 */ Z2Audience3DSetting();
    /* 802BC284 */ void init();
    /* 802BC308 */ void initVolumeDist();
    /* 802BC4D0 */ void updateVolumeDist(f32);
    /* 802BC6A4 */ void initDolbyDist();
    /* 802BC6F8 */ void updateDolbyDist(f32, f32);

    void calcVolumeFactorAll() {
        field_0x0[1] = 1.25f * field_0x0[0];
        field_0x0[2] = 1.5f * field_0x0[0];
        field_0x0[3] = 2.0f * field_0x0[0];
        field_0x0[4] = 3.0f * field_0x0[0];
        field_0x0[5] = 4.0f * field_0x0[0];
        field_0x0[6] = 6.0f * field_0x0[0];
        field_0x0[7] = 8.0f * field_0x0[0];
        field_0x0[8] = 0.9f * field_0x0[0];
        field_0x0[9] = 0.8f * field_0x0[0];
        field_0x0[10] = 0.7f * field_0x0[0];
        field_0x0[11] = 0.6f * field_0x0[0];
        field_0x0[12] = 0.5f * field_0x0[0];
        field_0x0[13] = 0.4f * field_0x0[0];
        field_0x0[14] = 0.3f * field_0x0[0];
        for (int i = 0; i < 15; i++) {
            field_0x70[i] = (field_0x40 - 1.0f) / (field_0x0[i] - field_0x3c);
        }
    }

    void calcPriorityFactorAll() {
        for (int i = 0; i < 15; i++) {
            field_0xac[i] = field_0x64 / (field_0x0[i] - field_0x3c);
        }
    }

    void calcFxMixFactorAll() {
        for (int i = 0; i < 15; i++) {
            field_0xe8[i] = (field_0x54 - field_0x50) / (field_0x0[i] - field_0x3c);
        }
    }

    /* 0x000 */ f32 field_0x0[15];
    /* 0x03C */ f32 field_0x3c;
    /* 0x040 */ f32 field_0x40;
    /* 0x044 */ f32 field_0x44;
    /* 0x048 */ f32 field_0x48;
    /* 0x04C */ f32 field_0x4c;
    /* 0x050 */ f32 field_0x50;
    /* 0x054 */ f32 field_0x54;
    /* 0x058 */ f32 field_0x58;
    /* 0x05C */ f32 field_0x5c;
    /* 0x060 */ f32 field_0x60;
    /* 0x064 */ u32 field_0x64;
    /* 0x068 */ f32 field_0x68;
    /* 0x06C */ f32 field_0x6c;
    /* 0x070 */ f32 field_0x70[15];
    /* 0x0AC */ f32 field_0xac[15];
    /* 0x0E8 */ f32 field_0xe8[15];
    /* 0x124 */ bool mVolumeDistInit;
    /* 0x125 */ bool mDolbyDistInit;
};  // Size: 0x128

struct Z2AudibleRelPos {
    /* 0x00 */ JGeometry::TVec3<f32> field_0x00;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
};

struct Z2AudibleChannel {
    /* 802BBE74 */ Z2AudibleChannel();
    void init() {
        field_0x0.init();
        field_0x28 = -1.0f;
        mPan = 0.5f;
        mDolby = 0.0f;
        field_0x34 = 1.0f;
    }

    /* 0x00 */ JASSoundParams field_0x0;
    /* 0x14 */ Z2AudibleRelPos field_0x14;
    /* 0x28 */ f32 field_0x28;
    /* 0x2c */ f32 mPan;
    /* 0x30 */ f32 mDolby;
    /* 0x34 */ f32 field_0x34;
};

struct Z2Audible : public JAIAudible, public JASPoolAllocObject<Z2Audible> {
    /* 802BBD94 */ Z2Audible(JGeometry::TVec3<f32> const&, JGeometry::TVec3<f32> const*, u32, bool);
    /* 802BBE98 */ void calc();
    /* 802BBED0 */ JASSoundParams* getOuterParams(int);
    /* 802BBEE4 */ void setOuterParams(JASSoundParams const&, JASSoundParams const&, int);
    /* 802BC204 */ Z2AudibleChannel* getChannel(int);
    /* 802BC218 */ u32 getDistVolBit();
    /* 802BD510 */ ~Z2Audible();
    bool isDoppler() {
        return ((*(u8*)&field_0x10.field_0x0) >> 4) & 0xf;
    }
    JAUAudibleParam* getAudibleParam() { return &field_0x10; }
    const JAUAudibleParam* getAudibleParam() const { return &field_0x10; }
    void setAudibleParam(JAUAudibleParam param) { field_0x10 = param; }
    const JGeometry::TVec3<f32>* getVel() const { return &field_0x14.field_0xc; }

    /* 0x10 */ JAUAudibleParam field_0x10;
    /* 0x14 */ Z2AudibleAbsPos field_0x14;
    /* 0x2C */ Z2AudibleChannel field_0x2c[1];
    /* 0x64 */ f32 field_0x64[1];
};

struct Z2Audience : public JAIAudience, public JASGlobalInstance<Z2Audience> {
    /* 802BD130 */ Z2Audience();
    /* 802BD2DC */ void setAudioCamera(f32 (*)[4], Vec&, Vec&, f32, f32, bool, int, bool);
    /* 802BD704 */ f32 calcOffMicSound(f32);
    /* 802BD90C */ void setTargetVolume(f32, int);
    /* 802BD92C */ bool convertAbsToRel(Vec&, Vec*, int);
    /* 802BD95C */ f32 calcRelPosVolume(Vec const&, f32, int);
    /* 802BDA44 */ f32 calcRelPosPan(Vec const&, int);
    /* 802BDB44 */ f32 calcRelPosDolby(Vec const&, int);
    /* 802BDBDC */ f32 calcVolume_(f32, int) const;
    /* 802BDC44 */ u32 calcDeltaPriority_(f32, int, bool) const;
    /* 802BDCB0 */ f32 calcPitchDoppler_(JGeometry::TVec3<f32> const&,
                                          JGeometry::TVec3<f32> const&,
                                          JGeometry::TVec3<f32> const&, f32) const;
    /* 802BDD00 */ f32 calcFxMix_(f32, int) const;
    /* 802BDD48 */ f32 calcPitch_(Z2AudibleChannel*, Z2Audible const*, Z2AudioCamera const*) const;

    /* 802BD1FC */ virtual ~Z2Audience();
    /* 802BD338 */ virtual JAIAudible* newAudible(JGeometry::TVec3<f32> const&, JAISoundID,
                                                  JGeometry::TVec3<f32> const*, u32);
    /* 802BDED4 */ virtual int getMaxChannels();
    /* 802BD4D4 */ virtual void deleteAudible(JAIAudible*);
    /* 802BD5B8 */ virtual u32 calcPriority(JAIAudible*);
    /* 802BD71C */ virtual void mixChannelOut(JASSoundParams const&, JAIAudible*, int);

    Z2SpotMic* getLinkMic() { return mLinkMic; }
    JGeometry::TVec3<f32> getAudioCamPos() {
        return *mAudioCamera[0].getPos();
    }
    Z2Audience3DSetting* getSetting() { return &mSetting; }

    /* 0x004 */ f32 field_0x4;
    /* 0x008 */ u8 field_0x8;
    /* 0x00C */ Z2Audience3DSetting mSetting;
    /* 0x134 */ Z2AudioCamera mAudioCamera[1];
    /* 0x1A8 */ Z2SpotMic mSpotMic[1];
    /* 0x1D0 */ Z2SpotMic* mLinkMic;
    /* 0x1D4 */ s32 mNumPlayers;
    /* 0x1D8 */ u8 field_0x1d8[4];
    /* 0x1DC */ bool mUsingOffMicVol;
};  // Size: 0x1E0

inline Z2Audience* Z2GetAudience() {
    return JASGlobalInstance<Z2Audience>::getInstance();
}

extern s8 data_80451358;
extern s8 data_80451359;

#endif /* Z2AUDIENCE_H */
