#ifndef Z2AUDIENCE_H
#define Z2AUDIENCE_H

#include "JSystem/JAudio2/JAIAudience.h"
#include "JSystem/JGeometry.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

struct Z2Audible;

struct Z2AudioCamera {
    /* 802BC758 */ Z2AudioCamera();
    /* 802BC788 */ void init();
    /* 802BC8AC */ void setCameraState(f32 (*)[4], Vec&, Vec&, f32, f32, bool, bool);
    /* 802BC7DC */ void setCameraState(f32 const (*)[4], Vec&, bool);
    /* 802BCBEC */ void convertAbsToRel(Z2Audible*, int);
    /* 802BCC7C */ void convertAbsToRel(Vec&, Vec*) const;
    /* 802BCCC0 */ void isInSight(Vec&) const;

    /* 0x00 */ u8 field_0x0[0x30];  // set up JGeometry::TPosition3
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
    /* 802BCF5C */ void calcMicDist(Z2Audible*);
    /* 802BCFE4 */ void calcMicPriority(f32);
    /* 802BD03C */ void calcMicVolume(f32, int, f32);

    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ int field_0x10[1];
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

    /* 0x000 */ f32 field_0x0;
    /* 0x004 */ f32 field_0x4;
    /* 0x008 */ f32 field_0x8;
    /* 0x00C */ f32 field_0xc;
    /* 0x010 */ f32 field_0x10;
    /* 0x014 */ f32 field_0x14;
    /* 0x018 */ f32 field_0x18;
    /* 0x01C */ f32 field_0x1c;
    /* 0x020 */ f32 field_0x20;
    /* 0x024 */ f32 field_0x24;
    /* 0x028 */ f32 field_0x28;
    /* 0x02C */ f32 field_0x2c;
    /* 0x030 */ f32 field_0x30;
    /* 0x034 */ f32 field_0x34;
    /* 0x038 */ f32 field_0x38;
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
    /* 0x064 */ int field_0x64;
    /* 0x068 */ f32 field_0x68;
    /* 0x06C */ f32 field_0x6c;
    /* 0x070 */ f32 field_0x70[15];
    /* 0x0AC */ f32 field_0xac[15];
    /* 0x0E8 */ f32 field_0xe8[15];
    /* 0x124 */ bool mVolumeDistInit;
    /* 0x125 */ bool mDolbyDistInit;
};  // Size: 0x128

struct Z2AudibleChannel {
    /* 802BBE74 */ Z2AudibleChannel();
};

struct Z2Audience : public JAIAudience {
    /* 802BD130 */ Z2Audience();
    /* 802BD2DC */ void setAudioCamera(f32 (*)[4], Vec&, Vec&, f32, f32, bool, int, bool);
    /* 802BD704 */ void calcOffMicSound(f32);
    /* 802BD90C */ void setTargetVolume(f32, int);
    /* 802BD92C */ void convertAbsToRel(Vec&, Vec*, int);
    /* 802BD95C */ void calcRelPosVolume(Vec const&, f32, int);
    /* 802BDA44 */ void calcRelPosPan(Vec const&, int);
    /* 802BDB44 */ void calcRelPosDolby(Vec const&, int);
    /* 802BDBDC */ void calcVolume_(f32, int) const;
    /* 802BDC44 */ void calcDeltaPriority_(f32, int, bool) const;
    /* 802BDCB0 */ void calcPitchDoppler_(JGeometry::TVec3<f32> const&,
                                          JGeometry::TVec3<f32> const&,
                                          JGeometry::TVec3<f32> const&, f32) const;
    /* 802BDD00 */ void calcFxMix_(f32, int) const;
    /* 802BDD48 */ void calcPitch_(Z2AudibleChannel*, Z2Audible const*, Z2AudioCamera const*) const;

    /* 802BD1FC */ virtual ~Z2Audience();
    /* 802BD338 */ virtual void newAudible(JGeometry::TVec3<f32> const&, JAISoundID,
                                   JGeometry::TVec3<f32> const*, u32);
    /* 802BDED4 */ virtual void getMaxChannels();
    /* 802BD4D4 */ virtual void deleteAudible(JAIAudible*);
    /* 802BD5B8 */ virtual void calcPriority(JAIAudible*);
    /* 802BD71C */ virtual void mixChannelOut(JASSoundParams const&, JAIAudible*, int);

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

#endif /* Z2AUDIENCE_H */
