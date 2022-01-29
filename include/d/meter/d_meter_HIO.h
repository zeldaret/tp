#ifndef D_METER_D_METER_HIO_H
#define D_METER_D_METER_HIO_H

#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JUtility/TColor.h"
#include "SSystem/SComponent/c_Xyz.h"
#include "SSystem/SComponent/c_sXyz.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"

class dMeter_menuHIO_c {
public:
    /* 801FE330 */ dMeter_menuHIO_c();
    /* 8020123C */ virtual ~dMeter_menuHIO_c();

    /* 0x0 */  // vtable
    /* 0x4 */ u8 field_0x4[2];
    /* 0x6 */ s16 mGameover;
};  // Size: 0x8

STATIC_ASSERT(sizeof(dMeter_menuHIO_c) == 8);

class dMeter_drawCollectHIO_c {
public:
    dMeter_drawCollectHIO_c();
    virtual ~dMeter_drawCollectHIO_c();

    enum {
        /* 0x0 */ VESSEL_HEART,
        /* 0x1 */ VESSEL_DECOR
    };

    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x04[4];
    /* 0x08 */ f32 mUnselectItemScale;
    /* 0x0C */ f32 mSelectItemScale;
    /* 0x10 */ f32 mUnselectSaveOptionScale;
    /* 0x14 */ f32 mSelectSaveOptionScale;
    /* 0x18 */ f32 mBlueSmokePosX;
    /* 0x1C */ f32 mBlueSmokePosY;
    /* 0x20 */ f32 mBlueSmokeScale;
    /* 0x24 */ f32 mBlueSmokeAlpha;
    /* 0x28 */ cXyz mMaskMirrorPos;
    /* 0x34 */ f32 mMaskMirrorScale;
    /* 0x38 */ f32 mMaskMirrorAnimSpeed;
    /* 0x3C */ f32 mHeartVesselPosX;
    /* 0x40 */ f32 mHeartVesselPosY;
    /* 0x44 */ f32 mHeartVesselScale;
    /* 0x48 */ f32 mAButtonPosX;
    /* 0x4C */ f32 mAButtonPosY;
    /* 0x50 */ f32 mAButtonScale;
    /* 0x54 */ f32 mBButtonPosX;
    /* 0x58 */ f32 mBButtonPosY;
    /* 0x5C */ f32 mBButtonScale;
    /* 0x60 */ f32 mAButtonTextPosX;
    /* 0x64 */ f32 mAButtonTextPosY;
    /* 0x68 */ f32 mAButtonTextScale;
    /* 0x6C */ f32 mBButtonTextPosX;
    /* 0x70 */ f32 mBButtonTextPosY;
    /* 0x74 */ f32 mBButtonTextScale;
    /* 0x78 */ JUtility::TColor mVesselBack[2];
    /* 0x80 */ JUtility::TColor mVesselFront[2];
    /* 0x88 */ f32 mHeartPiecePosX;
    /* 0x8C */ f32 mHeartPiecePosY;
    /* 0x90 */ f32 mHeartPieceScale;
    /* 0x94 */ csXyz mMaskMirrorAngle;
    /* 0x9A */ bool field_0x9a;
    /* 0x9B */ bool mColorDebugON;
    /* 0x9C */ bool mButtonDebugON;
};  // Size = 0xA0

class dMeter_drawOptionHIO_c {
public:
    /* 801FE4EC */ dMeter_drawOptionHIO_c();
    /* 80200F98 */ virtual ~dMeter_drawOptionHIO_c();

    enum OptionType {
        /* 0x0 */ ATTENTION,
        /* 0x1 */ RUMBLE,
        /* 0x2 */ SOUND
    };

    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x4[4];
    /* 0x08 */ f32 mArrowSize;
    /* 0x0C */ JUtility::TColor mSelectNameColor;
    /* 0x10 */ JUtility::TColor mSelectColor;
    /* 0x14 */ JUtility::TColor mUnselectColor;
    /* 0x18 */ f32 mWindowPosX;
    /* 0x1C */ f32 mWindowPosY;
    /* 0x20 */ f32 mWindowScale;
    /* 0x24 */ f32 mOptionTypeBGPosX[4];
    /* 0x34 */ f32 mTVsettingPosX;
    /* 0x38 */ f32 mPointerCalibrationPosX;
    /* 0x3C */ f32 mOptionTypeBGPosY[4];
    /* 0x4C */ f32 mTVsettingPosY;
    /* 0x50 */ f32 mPointerCalibrationPosY;
    /* 0x54 */ f32 mSelectBarScale;
    /* 0x58 */ f32 mUnselectBarScale;
    /* 0x5C */ f32 mBackgroundPosY;
    /* 0x60 */ f32 mArrowOffsetX;
    /* 0x64 */ f32 mArrowOffsetX_4x3;
    /* 0x68 */ s16 mOpenFrames;
    /* 0x6A */ s16 mCloseFrames;
    /* 0x6C */ bool mDebug;
    /* 0x6D */ u8 mBackgroundAlpha;
};  // Size: 0x70

class dMeter_drawLetterHIO_c {
public:
    /* 801FE5CC */ dMeter_drawLetterHIO_c();
    /* 80200F50 */ virtual ~dMeter_drawLetterHIO_c();

    enum {
        /* 0x0 */ WINDOW_FRAME,
        /* 0x1 */ LETTER_FRAME
    };

    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x4[4];
    /* 0x08 */ f32 mSelectBarScale;
    /* 0x0C */ f32 mUnselectBarScale;
    /* 0x10 */ f32 mWindowPosX;
    /* 0x14 */ f32 mWindowPosY;
    /* 0x18 */ f32 mWindowScale;
    /* 0x1C */ f32 mLetterWindowPosX;
    /* 0x20 */ f32 mLetterWindowPosY;
    /* 0x24 */ f32 mLetterWindowScale;
    /* 0x28 */ f32 mLetterLinePosX;
    /* 0x2C */ f32 mLetterLinePosY;
    /* 0x30 */ s16 mOpenFrame[2];
    /* 0x34 */ s16 mCloseFrame[2];
    /* 0x38 */ s16 mLetterNum;
    /* 0x3A */ u8 field_0x3a[2];
    /* 0x3C */ JUtility::TColor mSelectPageIconBack;
    /* 0x40 */ JUtility::TColor mSelectPageIconFront;
    /* 0x44 */ JUtility::TColor mSelectBarBack;
    /* 0x48 */ JUtility::TColor mSelectBarFront;
    /* 0x4C */ JUtility::TColor mSelectTextBack;
    /* 0x50 */ JUtility::TColor mSelectTextFront;
    /* 0x54 */ JUtility::TColor mLetterTextBack;
    /* 0x58 */ JUtility::TColor mLetterTextFront;
    /* 0x5C */ u8 mUnselectPageIconAlpha;
    /* 0x5D */ u8 mWindowBGAlpha;
    /* 0x5E */ u8 mLetterLineAlpha;
    /* 0x5F */ bool mDebugON;
};  // Size: 0x60

class dMeter_drawFishingHIO_c {
public:
    /* 801FE730 */ dMeter_drawFishingHIO_c();
    /* 80200F08 */ virtual ~dMeter_drawFishingHIO_c();

    enum {
        /* 0x0 */ HYLIAN_BASS,
        /* 0x1 */ HYLIAN_LOACH,
        /* 0x2 */ HYLIAN_PIKE,
        /* 0x3 */ ORDON_CATFISH,
        /* 0x4 */ REEKFISH,
        /* 0x5 */ GREENGILL
    };

    /* 0x000 */  // vtable
    /* 0x004 */ u8 field_0x4[4];
    /* 0x008 */ f32 mFishIconScale[6];
    /* 0x020 */ f32 mFishIconPosX[6];
    /* 0x038 */ f32 mFishIconPosY[6];
    /* 0x050 */ f32 mFishNameScale[6];
    /* 0x068 */ f32 mFishNamePosX[6];
    /* 0x080 */ f32 mFishNamePosY[6];
    /* 0x098 */ f32 mFishLineScale[6];
    /* 0x0B0 */ f32 mFishLinePosX[6];
    /* 0x0C8 */ f32 mFishLinePosY[6];
    /* 0x0E0 */ f32 mFishSizeScale[6];
    /* 0x0F8 */ f32 mFishSizePosX[6];
    /* 0x110 */ f32 mFishSizePosY[6];
    /* 0x128 */ f32 mFishCountScale[6];
    /* 0x140 */ f32 mFishCountPosX[6];
    /* 0x158 */ f32 mFishCountPosY[6];
    /* 0x170 */ f32 mFishCountSizeScale[6];
    /* 0x188 */ f32 mFishCountSizePosX[6];
    /* 0x1A0 */ f32 mFishCountSizePosY[6];
    /* 0x1B8 */ f32 mFishInfoScale[6];
    /* 0x1D0 */ f32 mFishInfoPosX[6];
    /* 0x1E8 */ f32 mFishInfoPosY[6];
    /* 0x200 */ f32 mMaxSizeScale;
    /* 0x204 */ f32 mCaughtNumScale;
    /* 0x208 */ f32 mMaxSizePosX;
    /* 0x20C */ f32 mCaughtNumPosX;
    /* 0x210 */ f32 mCaughtNumPosX_4x3;
    /* 0x214 */ f32 mMaxSizePosY;
    /* 0x218 */ f32 mCaughtNumPosY;
    /* 0x21C */ s16 mOpenFrames;
    /* 0x21E */ s16 mCloseFrames;
    /* 0x220 */ s16 mFishNum[6];
    /* 0x22C */ u8 field_0x22c[0x14];
    /* 0x240 */ u8 mFishSize[6];
    /* 0x246 */ u8 field_0x246[0xA];
    /* 0x250 */ bool mDebug;
};  // Size: 0x254

class dMeter_drawInsectHIO_c {
public:
    /* 801FE8DC */ dMeter_drawInsectHIO_c();
    /* 80200EC0 */ virtual ~dMeter_drawInsectHIO_c();

    enum Type {
        /* 0x0 */ DEFAULT,
        /* 0x1 */ COLLECT,
        /* 0x2 */ AGITHA
    };

    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x4[4];
    /* 0x08 */ f32 mUnselectInsectScale;
    /* 0x0C */ f32 mSelectInsectScale;
    /* 0x10 */ f32 mDescWindowPosX;
    /* 0x14 */ f32 mDescWindowPosY;
    /* 0x18 */ f32 mGiveOptionPosX_4x3;
    /* 0x1C */ f32 mGiveOptionPosX;
    /* 0x20 */ f32 mGiveOptionPosY_4x3;
    /* 0x24 */ f32 mGiveOptionPosY;
    /* 0x28 */ f32 mConfirmOptionPosX_4x3;
    /* 0x2C */ f32 mConfirmOptionPosX;
    /* 0x30 */ f32 mConfirmOptionPosY_4x3;
    /* 0x34 */ f32 mConfirmOptionPosY;
    /* 0x38 */ s16 mOpenFrame;
    /* 0x3A */ s16 mCloseFrame;
    /* 0x3C */ u8 mType;
    /* 0x3D */ bool mDebugON;
};  // Size: 0x40

class dMeter_drawCalibrationHIO_c {
public:
    /* 801FE954 */ dMeter_drawCalibrationHIO_c();
    /* 80200E78 */ virtual ~dMeter_drawCalibrationHIO_c();

    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x4[4];
    /* 0x08 */ f32 mCircleScale;
    /* 0x0C */ f32 mCircleScale2;
    /* 0x10 */ s16 mOpenFrames;
    /* 0x12 */ s16 mCloseFrames;
    /* 0x14 */ s16 mFlashFrameNum;
    /* 0x16 */ bool mDebug;
};  // Size: 0x18

class dMeter_drawSkillHIO_c {
public:
    /* 801FE990 */ dMeter_drawSkillHIO_c();
    /* 80200E30 */ virtual ~dMeter_drawSkillHIO_c();

    enum {
        /* 0x0 */ WINDOW,
        /* 0x1 */ SKILL_DESC,
    };

    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x4[4];
    /* 0x08 */ f32 mSelectBarScale;
    /* 0x0C */ f32 mUnselectBarScale;
    /* 0x10 */ f32 mSkillDescPosX;
    /* 0x14 */ f32 mSkillDescPosY;
    /* 0x18 */ f32 mSkillDescScale;
    /* 0x1C */ f32 mSkillTitlePosX;
    /* 0x20 */ f32 mSkillTitlePosY;
    /* 0x24 */ f32 mSkillTitleScale;
    /* 0x28 */ f32 mWindowLinePosX;
    /* 0x2C */ f32 mWindowLinePosY;
    /* 0x30 */ s16 mOpenFrame[2];
    /* 0x34 */ s16 mCloseFrame[2];
    /* 0x38 */ JUtility::TColor mSelectScrollIconBlack;
    /* 0x3C */ JUtility::TColor mSelectScrollIconWhite;
    /* 0x40 */ JUtility::TColor mUnselectScrollIconBlack;
    /* 0x44 */ JUtility::TColor mUnselectScrollIconWhite;
    /* 0x48 */ JUtility::TColor mSelectBarBlack;
    /* 0x4C */ JUtility::TColor mSelectBarWhite;
    /* 0x50 */ JUtility::TColor mSelectTextBlack;
    /* 0x54 */ JUtility::TColor mSelectTextWhite;
    /* 0x58 */ u8 field_0x58;
    /* 0x59 */ u8 mWindowBGalpha;
    /* 0x5A */ u8 mWindowLineAlpha;
    /* 0x5B */ bool mDebug;
};  // Size: 0x5C

class dMeter_drawEmpButtonHIO_c {
public:
    /* 801FEAF0 */ dMeter_drawEmpButtonHIO_c();
    /* 80200DA0 */ virtual ~dMeter_drawEmpButtonHIO_c();

    /* 0x000 */  // vtable
    /* 0x004 */ u8 field_0x4[4];
    /* 0x008 */ f32 mEmpButtonPosX;
    /* 0x00C */ f32 mEmpButtonPosY;
    /* 0x010 */ f32 mEmpButtonScale;
    /* 0x014 */ f32 mAButtonPosX;
    /* 0x018 */ f32 mAButtonPosY;
    /* 0x01C */ f32 mAButtonScale;
    /* 0x020 */ f32 mBButtonPosX;
    /* 0x024 */ f32 mBButtonPosY;
    /* 0x028 */ f32 mBButtonScale;
    /* 0x02C */ f32 mRButtonPosX;
    /* 0x030 */ f32 mRButtonPosY;
    /* 0x034 */ f32 mRButtonScale;
    /* 0x038 */ f32 mZButtonPosX;
    /* 0x03C */ f32 mZButtonPosY;
    /* 0x040 */ f32 mZButtonScale;
    /* 0x044 */ f32 m3DButtonPosX;
    /* 0x048 */ f32 m3DButtonPosY;
    /* 0x04C */ f32 m3DButtonScale;
    /* 0x050 */ f32 mCButtonPosX;
    /* 0x054 */ f32 mCButtonPosY;
    /* 0x058 */ f32 mCButtonScale;
    /* 0x05C */ f32 mSButtonPosX;
    /* 0x060 */ f32 mSButtonPosY;
    /* 0x064 */ f32 mSButtonScale;
    /* 0x068 */ f32 mXButtonPosX;
    /* 0x06C */ f32 mXButtonPosY;
    /* 0x070 */ f32 mXButtonScale;
    /* 0x074 */ f32 mYButtonPosX;
    /* 0x078 */ f32 mYButtonPosY;
    /* 0x07C */ f32 mYButtonScale;
    /* 0x080 */ f32 mNunchukPosX;
    /* 0x084 */ f32 mNunchukPosY;
    /* 0x088 */ f32 mNunchukScale;
    /* 0x08C */ f32 mWiimotePosX;
    /* 0x090 */ f32 mWiimotePosY;
    /* 0x094 */ f32 mWiimoteScale;
    /* 0x098 */ f32 mWiimoteLRPosX;
    /* 0x09C */ f32 mWiimoteLRPosY;
    /* 0x0A0 */ f32 mWiimoteLRScale;
    /* 0x0A4 */ f32 mNunchukZButtonPosX;
    /* 0x0A8 */ f32 mNunchukZButtonPosY;
    /* 0x0AC */ f32 mNunchukZButtonScale;
    /* 0x0B0 */ f32 mNunchukCButtonPosX;
    /* 0x0B4 */ f32 mNunchukCButtonPosY;
    /* 0x0B8 */ f32 mNunchukCButtonScale;
    /* 0x0BC */ f32 mWiimoteAPosX;
    /* 0x0C0 */ f32 mWiimoteAPosY;
    /* 0x0C4 */ f32 mWiimoteAScale;
    /* 0x0C8 */ f32 m3DBButtonPosX;
    /* 0x0CC */ f32 m3DBButtonPosY;
    /* 0x0D0 */ f32 m3DBButtonScale;
    /* 0x0D4 */ f32 mNunchukWiimotePosX;
    /* 0x0D8 */ f32 mNunchukWiimotePosY;
    /* 0x0DC */ f32 mNunchukWiimoteScale;
    /* 0x0E0 */ f32 mNunchukWiimoteRealPosX;
    /* 0x0E4 */ f32 mNunchukWiimoteRealPosY;
    /* 0x0E8 */ f32 mNunchukWiimoteRealScale;
    /* 0x0EC */ f32 mNunchukRealPosX;
    /* 0x0F0 */ f32 mNunchukRealPosY;
    /* 0x0F4 */ f32 mNunchukRealScale;
    /* 0x0F8 */ f32 mNunchukAttackPosX;
    /* 0x0FC */ f32 mNunchukAttackPosY;
    /* 0x100 */ f32 mNunchukAttackScale;
    /* 0x104 */ f32 mABButtonPosX;
    /* 0x108 */ f32 mABButtonPosY;
    /* 0x10C */ f32 mABButtonScale;
    /* 0x110 */ f32 mBottleIconPosX;
    /* 0x114 */ f32 mBottleIconPosY;
    /* 0x118 */ f32 mBottleIconScale;
    /* 0x11C */ f32 mViewChangePosX;
    /* 0x120 */ f32 mViewChangePosY;
    /* 0x124 */ f32 mViewChangeScale;
    /* 0x128 */ f32 mText1PosX;
    /* 0x12C */ f32 mText2PosX;
    /* 0x130 */ f32 mText1PosY;
    /* 0x134 */ f32 mText2PosY;
    /* 0x138 */ f32 mText1Scale;
    /* 0x13C */ f32 mText2Scale;
    /* 0x140 */ f32 mItemPosX;
    /* 0x144 */ f32 mItemPosY;
    /* 0x148 */ f32 mItemScale;
    /* 0x14C */ f32 mMidnaIconPosX;
    /* 0x150 */ f32 mMidnaIconPosY;
    /* 0x154 */ f32 mMidnaIconScale;
    /* 0x158 */ f32 mHawkeyePosX;
    /* 0x15C */ f32 mHawkeyePosY;
    /* 0x160 */ f32 mHawkeyeTextPosX;
    /* 0x164 */ f32 mHawkeyePlusPosX;
    /* 0x168 */ f32 mHawkeyeMinusPosX;
    /* 0x16C */ f32 mHawkeyeTextPosY[3];
    /* 0x178 */ f32 mHawkeyeZoomPosX;
    /* 0x17C */ f32 mHawkeyeZoomPosY;
    /* 0x180 */ f32 mHawkeyeZoomScale;
    /* 0x184 */ f32 mHawkeyeZoomScale_4x3;
    /* 0x188 */ f32 mHawkeyeTextIconPosX;
    /* 0x18C */ f32 mHawkeyeZoomTextPosX;
    /* 0x190 */ f32 mHawkeyeIconPosX;
    /* 0x194 */ f32 mHawkeyeTextIconPosY_4x3;
    /* 0x198 */ f32 mHawkeyeTextPosY_4x3;
    /* 0x19C */ f32 mHawkeyeIconPosY_4x3;
    /* 0x1A0 */ f32 mHawkeyeTextIconPosY;
    /* 0x1A4 */ f32 mHawkeyeZoomTextPosY;
    /* 0x1A8 */ f32 mHawkeyeIconPosY;
    /* 0x1AC */ f32 mHawkeyeTextIconScale;
    /* 0x1B0 */ f32 mHawkeyeTextScale;
    /* 0x1B4 */ f32 mHawkeyeIconScale;
    /* 0x1B8 */ JUtility::TColor mPointerONBlack[2];
    /* 0x1C0 */ JUtility::TColor mPointerONWhite[2];
    /* 0x1C8 */ JUtility::TColor mPointerOFFBlack;
    /* 0x1CC */ JUtility::TColor mPointerOFFWhite;
    /* 0x1D0 */ f32 mPointerONScale;
    /* 0x1D4 */ f32 mPointerOFFScale;
    /* 0x1D8 */ s16 mPointerONAnimFrame;
    /* 0x1DC */ f32 mHighlightScale;
    /* 0x1E0 */ JUtility::TColor mHighlightFrontInner;
    /* 0x1E4 */ JUtility::TColor mHighlightFrontOuter;
    /* 0x1E8 */ JUtility::TColor mHighlightBackInner;
    /* 0x1EC */ JUtility::TColor mHighlightBackOuter;
    /* 0x1F0 */ f32 mHighlightAnimSpeed;
    /* 0x1F4 */ f32 mHighlightFastScale;
    /* 0x1F8 */ JUtility::TColor mHighlightFastFrontInner;
    /* 0x1FC */ JUtility::TColor mHighlightFastFrontOuter;
    /* 0x200 */ JUtility::TColor mHighlightFastBackInner;
    /* 0x204 */ JUtility::TColor mHighlightFastBackOuter;
    /* 0x208 */ f32 mHighlightFastAnimSpeed;
    /* 0x20C */ f32 mHighlightListenScale;
    /* 0x210 */ JUtility::TColor mHighlightListenFrontInner;
    /* 0x214 */ JUtility::TColor mHighlightListenFrontOuter;
    /* 0x218 */ JUtility::TColor mHighlightListenBackInner;
    /* 0x21C */ JUtility::TColor mHighlightListenBackOuter;
    /* 0x220 */ f32 mHighlightListenAnimSpeed;
    /* 0x224 */ f32 mHighlightRepeatHitScale;
    /* 0x228 */ JUtility::TColor mHighlightRepeatHitFrontInner;
    /* 0x22C */ JUtility::TColor mHighlightRepeatHitFrontOuter;
    /* 0x230 */ JUtility::TColor mHighlightRepeatHitBackInner;
    /* 0x234 */ JUtility::TColor mHighlightRepeatHitBackOuter;
    /* 0x238 */ f32 mHighlightRepeatHitAnimSpeed;
    /* 0x23C */ f32 mRepeatHitScale;
    /* 0x240 */ s16 mRepeatHitFrameNum;
    /* 0x244 */ f32 mDisplaySpace;
    /* 0x248 */ u8 mDebugDisplayButton[17];
    /* 0x259 */ bool mHawkeyeDebugON;
    /* 0x25A */ bool mHawkeyeZoomDebugON;
};  // Size: 0x25C

class dMeter_drawMiniGameHIO_c {
public:
    /* 801FEFF0 */ dMeter_drawMiniGameHIO_c();
    /* 80200DE8 */ virtual ~dMeter_drawMiniGameHIO_c();

    /* 0x000 */  // vtable
    /* 0x004 */ u8 field_0x4[4];
    /* 0x008 */ f32 field_0x8;
    /* 0x00C */ f32 mRiverRideTargetCounterSizeY;
    /* 0x010 */ f32 field_0x10;
    /* 0x014 */ f32 field_0x14;
    /* 0x018 */ f32 mRiverRideTargetCounterPosX;
    /* 0x01C */ f32 field_0x1c;
    /* 0x020 */ f32 field_0x20;
    /* 0x024 */ f32 mRiverRideTargetCounterPosY;
    /* 0x028 */ f32 field_0x28;
    /* 0x02C */ f32 field_0x2c;
    /* 0x030 */ f32 mRiverRideTargetCounterAlpha;
    /* 0x034 */ f32 field_0x34;
    /* 0x038 */ f32 mGoatTimerSizeX;
    /* 0x03C */ f32 field_0x3c;
    /* 0x040 */ f32 field_0x40;
    /* 0x044 */ f32 mGoatTimerSizeY;
    /* 0x048 */ f32 field_0x48;
    /* 0x04C */ f32 field_0x4c;
    /* 0x050 */ f32 mGoatTimerPosX;
    /* 0x054 */ f32 field_0x54;
    /* 0x058 */ f32 field_0x58;
    /* 0x05C */ f32 mGoatTimerPosY;
    /* 0x060 */ f32 field_0x60;
    /* 0x064 */ f32 field_0x64;
    /* 0x068 */ f32 mGoatTimerAlpha;
    /* 0x06C */ f32 field_0x6c;
    /* 0x070 */ f32 field_0x70;
    /* 0x074 */ f32 mGoatCounterSizeX;
    /* 0x078 */ f32 mRiverRideCounterSizeX;
    /* 0x07C */ f32 mRiderGameCounterSizeX;
    /* 0x080 */ f32 mGoatCounterSizeY;
    /* 0x084 */ f32 mRiverRideCounterSizeY;
    /* 0x088 */ f32 mRiderGameCounterSizeY;
    /* 0x08C */ f32 mGoatCounterPosX;
    /* 0x090 */ f32 mRiverRideCounterPosX;
    /* 0x094 */ f32 mRiderGameCounterPosX;
    /* 0x098 */ f32 mGoatCounterPosY;
    /* 0x09C */ f32 mRiverRideCounterPosY;
    /* 0x0A0 */ f32 mRiderGameCounterPosY;
    /* 0x0A4 */ f32 mGoatCounterAlpha;
    /* 0x0A8 */ f32 mRiverRideCounterAlpha;
    /* 0x0AC */ f32 mRiderGameCounterAlpha;
    /* 0x0B0 */ f32 mGoatIconSizeX;
    /* 0x0B4 */ f32 mRiverRideTargetIconSizeX;
    /* 0x0B8 */ f32 mRiderGameIconSizeX;
    /* 0x0BC */ f32 mGoatIconSizeY;
    /* 0x0C0 */ f32 mRiverRideTargetIconSizeY;
    /* 0x0C4 */ f32 mRiderGameIconSizeY;
    /* 0x0C8 */ f32 mGoatIconPosX;
    /* 0x0CC */ f32 mRiverRideTargetIconPosX;
    /* 0x0D0 */ f32 mRiderGameIconPosX;
    /* 0x0D4 */ f32 mGoatIconPosY;
    /* 0x0D8 */ f32 mRiverRideTargetIconPosY;
    /* 0x0DC */ f32 mRiderGameIconPosY;
    /* 0x0E0 */ f32 mGoatIconAlpha;
    /* 0x0E4 */ f32 mRiverRideTargetIconAlpha;
    /* 0x0E8 */ f32 mRiderGameIconAlpha;
    /* 0x0EC */ f32 mGoatTimerSizeX_4x3;
    /* 0x0F0 */ f32 mGoatTimerSizeY_4x3;
    /* 0x0F4 */ f32 mGoatTimerPosX_4x3;
    /* 0x0F8 */ f32 mGoatTimerPosY_4x3;
    /* 0x0FC */ f32 mGoatIconPosX_4x3;
    /* 0x100 */ f32 mRiverRideIconPosX_4x3;
    /* 0x104 */ f32 mRiderGameIconPosX_4x3;
    /* 0x108 */ f32 mGetInTextSizeX;
    /* 0x10C */ f32 mGetInTextSizeY;
    /* 0x110 */ f32 mGetInTextPosX;
    /* 0x114 */ f32 mGetInTextPosY;
    /* 0x118 */ f32 mGetInTextAnimSpeed;
    /* 0x11C */ s16 mGetInTextWaitFrames;
    /* 0x11E */ s16 mGetInTextAlphaFrames;
    /* 0x120 */ f32 mGetInHighlightScale;
    /* 0x124 */ JUtility::TColor mGetInHighlightFrontInner;
    /* 0x128 */ JUtility::TColor mGetInHighlightFrontOuter;
    /* 0x12C */ JUtility::TColor mGetInHighlightBackInner;
    /* 0x130 */ JUtility::TColor mGetInHighlightBackOuter;
    /* 0x134 */ f32 mGetInHighlightAnimSpeed;
    /* 0x138 */ s16 mGetInHighlightAppearFrames;
    /* 0x13A */ u8 mGetInTextLocation;
    /* 0x13C */ f32 mStartHighlightScale;
    /* 0x140 */ JUtility::TColor mStartHighlightFrontInner;
    /* 0x144 */ JUtility::TColor mStartHighlightFrontOuter;
    /* 0x148 */ JUtility::TColor mStartHighlightBackInner;
    /* 0x14C */ JUtility::TColor mStartHighlightBackOuter;
    /* 0x150 */ f32 mStartHighlightAnimSpeed;
    /* 0x154 */ s16 mStartHighlightAppearFrames;
    /* 0x156 */ s16 mStartHighlightDisplayFrames;
    /* 0x158 */ s16 mReadyGo;
    /* 0x15A */ s16 field_0x15a;
    /* 0x15C */ f32 mReadyFightTextSizeX;
    /* 0x160 */ f32 mReadyFightTextSizeY;
    /* 0x164 */ f32 mReadyFightTextPosX;
    /* 0x168 */ f32 mReadyFightTextPosY;
    /* 0x16C */ f32 mReadyFightTextAnimSpeed;
    /* 0x170 */ s16 mReadyFightTextWaitFrames;
    /* 0x172 */ s16 field_0x172;
    /* 0x174 */ f32 mReadyFightHighlightScale;
    /* 0x178 */ JUtility::TColor mReadyFightHighlightFrontInner;
    /* 0x17C */ JUtility::TColor mReadyFightHighlightFrontOuter;
    /* 0x180 */ JUtility::TColor mReadyFightHighlightBackInner;
    /* 0x184 */ JUtility::TColor mReadyFightHighlightBackOuter;
    /* 0x188 */ f32 mReadyFightHighlightAnimSpeed;
    /* 0x18C */ s16 mReadyFightHighlightAppearFrames;
};  // Size: 0x190

class dMeter_drawLightDropHIO_c {
public:
    /* 801FF31C */ dMeter_drawLightDropHIO_c();
    /* 80200D58 */ virtual ~dMeter_drawLightDropHIO_c();

    /* 0x00 */  // vtable
    /* 0x04 */ u8 field_0x4[4];
    /* 0x08 */ f32 mVesselScale;
    /* 0x0C */ f32 mVesselTalkScale;
    /* 0x10 */ f32 mVesselPosX;
    /* 0x14 */ f32 mVesselTalkPosX;
    /* 0x18 */ f32 mVesselPosY;
    /* 0x1C */ f32 mVesselTalkPosY;
    /* 0x20 */ f32 mVesselPosX_4x3;
    /* 0x24 */ f32 mVesselPosY_4x3;
    /* 0x28 */ f32 mVesselAlpha;
    /* 0x2C */ f32 mVesselTalkAlpha;
    /* 0x30 */ f32 mVesselDecorAlpha;
    /* 0x34 */ f32 mDropAlpha;
    /* 0x38 */ JUtility::TColor mDropOnColorWhite;
    /* 0x3C */ JUtility::TColor mDropOnColorBlack;
    /* 0x40 */ JUtility::TColor mDropOffColorWhite;
    /* 0x44 */ JUtility::TColor mDropOffColorBlack;
    /* 0x48 */ f32 mDropScale;
    /* 0x4C */ f32 mDropGetScale;
    /* 0x50 */ s16 mDropGetScaleAnimFrameNum;
    /* 0x52 */ s16 mHighlightInterval;
    /* 0x54 */ s16 field_0x54;
    /* 0x56 */ s16 field_0x56;
    /* 0x58 */ JUtility::TColor mDropHighlightFrontInner;
    /* 0x5C */ JUtility::TColor mDropHighlightFrontOuter;
    /* 0x60 */ JUtility::TColor mDropHighlightBackInner;
    /* 0x64 */ JUtility::TColor mDropHighlightBackOuter;
    /* 0x68 */ f32 mDropHighlightAnimSpeed;
    /* 0x6C */ f32 mDropHighlightAnimSpeed_Completed;
    /* 0x70 */ JUtility::TColor mHighlightLoopFrontInner[2];
    /* 0x78 */ JUtility::TColor mHighlightLoopFrontOuter[2];
    /* 0x80 */ JUtility::TColor mHighlightLoopBackInner[2];
    /* 0x88 */ JUtility::TColor mHighlightLoopBackOuter[2];
    /* 0x90 */ f32 mHighlightLoopAnimSpeed;
    /* 0x94 */ f32 mHighlightLoopBackStopFrame;
    /* 0x98 */ f32 mHighlightScaleNormal;
    /* 0x9C */ f32 mHighlightScaleComplete;
    /* 0xA0 */ f32 mHighlightLoopScale;
    /* 0xA4 */ f32 mHighlightLoopBackScale;
    /* 0xA8 */ u8 mAnimDebug;
};  // Size: 0xAC

class dMeter_drawHIO_c {
public:
    /* 801FF5B8 */ dMeter_drawHIO_c();
    /* 80201128 */ virtual ~dMeter_drawHIO_c();

    /* 0x000 */  // vtable
    /* 0x004 */ s8 field_0x4;
    /* 0x008 */ f32 mLifeTopPosX;
    /* 0x00C */ f32 mLifeTopPosY;
    /* 0x010 */ f32 mNoMagicPosY;
    /* 0x014 */ f32 mHUDScale;
    /* 0x018 */ f32 mHUDAlpha;
    /* 0x01C */ f32 mLifeGaugeScale;
    /* 0x020 */ f32 mLifeGaugeHeartAlpha;
    /* 0x024 */ f32 mLifeGaugeBaseAlpha;
    /* 0x028 */ f32 mLifeGaugePosX;
    /* 0x02C */ f32 mLifeGaugePosY;
    /* 0x030 */ f32 mHeartScale;
    /* 0x034 */ f32 mHeartAlpha;
    /* 0x038 */ f32 mLargeHeartScale;
    /* 0x03C */ f32 mLargeHeartAlpha;
    /* 0x040 */ f32 mMagicMeterScale;
    /* 0x044 */ f32 mMagicMeterAlpha;
    /* 0x048 */ f32 mMagicMeterFrameAlpha;
    /* 0x04C */ f32 mMagicMeterPosX;
    /* 0x050 */ f32 mMagicMeterPosY;
    /* 0x054 */ f32 mLanternMeterScale;
    /* 0x058 */ f32 mLanternMeterAlpha;
    /* 0x05C */ f32 mLanternMeterFrameAlpha;
    /* 0x060 */ f32 mLanternMeterPosX;
    /* 0x064 */ f32 mLanternMeterPosY;
    /* 0x068 */ f32 mOxygenMeterScale;
    /* 0x06C */ f32 mOxygenMeterAlpha;
    /* 0x070 */ f32 mOxygenMeterFrameAlpha;
    /* 0x074 */ f32 mOxygenMeterPosX;
    /* 0x078 */ f32 mOxygenMeterPosY;
    /* 0x07C */ f32 mMainHUDButtonsScale;
    /* 0x080 */ f32 mRingHUDButtonsScale;
    /* 0x084 */ f32 mMainHUDButtonsAlpha;
    /* 0x088 */ f32 mRingHUDButtonsAlpha;
    /* 0x08C */ f32 mMainHUDButtonsPosX;
    /* 0x090 */ f32 mRingHUDButtonsPosX;
    /* 0x094 */ f32 mMainHUDButtonsPosY;
    /* 0x098 */ f32 mRingHUDButtonsPosY;
    /* 0x09C */ f32 mButtonDisplayBackScale;
    /* 0x0A0 */ f32 mButtonDisplayBackAlpha;
    /* 0x0A4 */ f32 mAButtonScale;
    /* 0x0A8 */ f32 mAButtonAlpha;
    /* 0x0AC */ f32 mAButtonPosX;
    /* 0x0B0 */ f32 mAButtonPosY;
    /* 0x0B4 */ f32 mAButtonTalkScale;
    /* 0x0B8 */ f32 mAButtonFontTalkScale;
    /* 0x0BC */ f32 mAButtonTalkPosX;
    /* 0x0C0 */ f32 mAButtonFontTalkPosX;
    /* 0x0C4 */ f32 mAButtonTalkPosY;
    /* 0x0C8 */ f32 mAButtonFontTalkPosY;
    /* 0x0CC */ f32 mAButtonTalkAScale;
    /* 0x0D0 */ f32 mAButtonFontTalkAScale;
    /* 0x0D4 */ f32 mAButtonTalkAPosX;
    /* 0x0D8 */ f32 mAButtonFontTalkAPosX;
    /* 0x0DC */ f32 mAButtonTalkAPosY;
    /* 0x0E0 */ f32 mAButtonFontTalkAPosY;
    /* 0x0E4 */ f32 mAButtonVesselPosX;
    /* 0x0E8 */ f32 mAButtonVesselPosY;
    /* 0x0EC */ f32 mBButtonScale;
    /* 0x0F0 */ f32 mBButtonAlpha;
    /* 0x0F4 */ f32 mBButtonPosX;
    /* 0x0F8 */ f32 mBButtonPosY;
    /* 0x0FC */ f32 mBButtonTalkScale;
    /* 0x100 */ f32 mBButtonFontTalkScale;
    /* 0x104 */ f32 mBButtonTalkPosX;
    /* 0x108 */ f32 mBButtonFontTalkPosX;
    /* 0x10C */ f32 mBButtonTalkPosY;
    /* 0x110 */ f32 mBButtonFontTalkPosY;
    /* 0x114 */ f32 mBButtonWolfPosX;
    /* 0x118 */ f32 mBButtonWolfPosY;
    /* 0x11C */ f32 mBButtonVesselPosX;
    /* 0x120 */ f32 mBButtonVesselPosY;
    /* 0x124 */ f32 mMidnaIconScale;
    /* 0x128 */ f32 mMidnaIconAlpha;
    /* 0x12C */ f32 mMidnaIconPosX;
    /* 0x130 */ f32 mMidnaIconPosY;
    /* 0x134 */ f32 field_0x134;
    /* 0x138 */ f32 field_0x138;
    /* 0x13C */ f32 field_0x13c;
    /* 0x140 */ f32 field_0x140;
    /* 0x144 */ f32 mXButtonScale;
    /* 0x148 */ f32 mXButtonAlpha;
    /* 0x14C */ f32 mXButtonPosX;
    /* 0x150 */ f32 mXButtonPosY;
    /* 0x154 */ f32 mYButtonScale;
    /* 0x158 */ f32 mYButtonAlpha;
    /* 0x15C */ f32 mYButtonPosX;
    /* 0x160 */ f32 mYButtonPosY;
    /* 0x164 */ f32 field_0x164;
    /* 0x168 */ f32 field_0x168;
    /* 0x16C */ f32 field_0x16c;
    /* 0x170 */ f32 field_0x170;
    /* 0x174 */ f32 mZButtonScale;
    /* 0x178 */ f32 mZButtonAlpha;
    /* 0x17C */ f32 mZButtonPosX;
    /* 0x180 */ f32 mZButtonPosY;
    /* 0x184 */ f32 mBButtonItemPosX;
    /* 0x188 */ f32 mBButtonSwordPosX;
    /* 0x18C */ f32 mBButtonFishingPosX;
    /* 0x190 */ f32 mBButtonItemPosY;
    /* 0x194 */ f32 mBButtonSwordPosY;
    /* 0x198 */ f32 mBButtonFishingPosY;
    /* 0x19C */ f32 mBButtonItemRotation;
    /* 0x1A0 */ f32 mBButtonSwordRotation;
    /* 0x1A4 */ f32 mBButtonFishingRotation;
    /* 0x1A8 */ f32 mBButtonItemScale;
    /* 0x1AC */ f32 mBButtonSwordScale;
    /* 0x1B0 */ f32 mBButtonFishingScale;
    /* 0x1B4 */ f32 mXButtonItemPosX;
    /* 0x1B8 */ f32 mXButtonItemPosY;
    /* 0x1BC */ f32 mXButtonItemScale;
    /* 0x1C0 */ f32 mYButtonItemPosX;
    /* 0x1C4 */ f32 mYButtonItemPosY;
    /* 0x1C8 */ f32 mYButtonItemScale;
    /* 0x1CC */ f32 field_0x1cc;
    /* 0x1D0 */ f32 field_0x1d0;
    /* 0x1D4 */ f32 field_0x1d4;
    /* 0x1D8 */ f32 mZButtonItemPosX;
    /* 0x1DC */ f32 mZButtonItemPosY;
    /* 0x1E0 */ f32 mZButtonItemScale;
    /* 0x1E4 */ f32 mButtonItemRotation[3];
    /* 0x1F0 */ f32 mXItemNumPosX;
    /* 0x1F4 */ f32 mYItemNumPosX;
    /* 0x1F8 */ f32 field_0x1f8;
    /* 0x1FC */ f32 mBItemNumPosX;
    /* 0x200 */ f32 mXItemNumPosY;
    /* 0x204 */ f32 mYItemNumPosY;
    /* 0x208 */ f32 field_0x208;
    /* 0x20C */ f32 mBItemNumPosY;
    /* 0x210 */ f32 mXItemNumScale;
    /* 0x214 */ f32 mYItemNumScale;
    /* 0x218 */ f32 field_0x218;
    /* 0x21C */ f32 mBItemNumScale;
    /* 0x220 */ f32 mBItemBaseScale[2];
    /* 0x228 */ f32 mBItemBasePosX[2];
    /* 0x230 */ f32 mBItemBasePosY[2];
    /* 0x238 */ f32 mBItemBaseAlpha[2];
    /* 0x240 */ f32 mXButtonItemBaseScale;
    /* 0x244 */ f32 mXButtonItemBaseNoItemScale;
    /* 0x248 */ f32 mXButtonItemBasePosX;
    /* 0x24C */ f32 mXButtonItemBaseNoItemPosX;
    /* 0x250 */ f32 mXButtonItemBasePosY;
    /* 0x254 */ f32 mXButtonItemBaseNoItemPosY;
    /* 0x258 */ f32 mXButtonItemBaseAlpha[2];
    /* 0x260 */ f32 mYButtonItemBaseScale;
    /* 0x264 */ f32 mYButtonItemBaseNoItemScale;
    /* 0x268 */ f32 mYButtonItemBasePosX;
    /* 0x26C */ f32 mYButtonItemBaseNoItemPosX;
    /* 0x270 */ f32 mYButtonItemBasePosY;
    /* 0x274 */ f32 mYButtonItemBaseNoItemPosY;
    /* 0x278 */ f32 mYButtonItemBaseAlpha[2];
    /* 0x280 */ f32 field_0x280;
    /* 0x284 */ f32 field_0x284;
    /* 0x288 */ f32 field_0x288;
    /* 0x28C */ f32 field_0x28c;
    /* 0x290 */ f32 field_0x290;
    /* 0x294 */ f32 field_0x294;
    /* 0x298 */ f32 field_0x298[2];
    /* 0x2A0 */ f32 mZButtonItemBaseScale;
    /* 0x2A4 */ f32 mZButtonItemBasePosX;
    /* 0x2A8 */ f32 mZButtonItemBasePosY;
    /* 0x2AC */ f32 mZButtonItemBaseAlpha;
    /* 0x2B0 */ f32 mButtonBaseAlpha;
    /* 0x2B4 */ f32 mAButtonFontScale;
    /* 0x2B8 */ f32 mAButtonFontPosX;
    /* 0x2BC */ f32 mAButtonFontPosY;
    /* 0x2C0 */ JUtility::TColor mAButtonFontColor;
    /* 0x2C4 */ f32 mAButtonFontSpacing;
    /* 0x2C8 */ s32 mAButtonFontActionID;
    /* 0x2CC */ u32 field_0x2cc;
    /* 0x2D0 */ bool mAButtonTextDebug;
    /* 0x2D4 */ f32 mBButtonFontScale;
    /* 0x2D8 */ f32 mBButtonFontPosX;
    /* 0x2DC */ f32 mBButtonFontPosY;
    /* 0x2E0 */ JUtility::TColor mBButtonFontColor;
    /* 0x2E4 */ f32 field_0x2e4;
    /* 0x2E8 */ f32 field_0x2e8;
    /* 0x2EC */ f32 field_0x2ec;
    /* 0x2F0 */ JUtility::TColor field_0x2f0;
    /* 0x2F4 */ f32 mXYButtonFontScale;
    /* 0x2F8 */ f32 mXYButtonFontPosX;
    /* 0x2FC */ f32 mXYButtonFontPosY;
    /* 0x300 */ JUtility::TColor mXYButtonFontColor;
    /* 0x304 */ f32 field_0x304;
    /* 0x308 */ f32 field_0x308;
    /* 0x30C */ f32 field_0x30c;
    /* 0x310 */ JUtility::TColor field_0x310;
    /* 0x314 */ f32 field_0x314;
    /* 0x318 */ f32 field_0x318;
    /* 0x31C */ f32 field_0x31c;
    /* 0x320 */ f32 field_0x320;
    /* 0x324 */ f32 field_0x324;
    /* 0x328 */ f32 field_0x328;
    /* 0x32C */ f32 mZButtonFontScale;
    /* 0x330 */ f32 mZButtonFontPosX;
    /* 0x334 */ f32 mZButtonFontPosY;
    /* 0x338 */ JUtility::TColor mZButtonFontColor;
    /* 0x33C */ f32 mRupeeKeyScale;
    /* 0x340 */ f32 mRupeeKeyPosX;
    /* 0x344 */ f32 mRupeeKeyPosY;
    /* 0x348 */ f32 mRupeeKeyAlpha;
    /* 0x34C */ f32 mRupeeScale;
    /* 0x350 */ f32 mRupeePosX;
    /* 0x354 */ f32 mRupeePosY;
    /* 0x358 */ f32 mRupeeAlpha;
    /* 0x35C */ f32 mKeyScale;
    /* 0x360 */ f32 mKeyPosX;
    /* 0x364 */ f32 mKeyPosY;
    /* 0x368 */ f32 mKeyAlpha;
    /* 0x36C */ f32 mRupeeFrameScale;
    /* 0x370 */ f32 mRupeeFramePosX;
    /* 0x374 */ f32 mRupeeFramePosY;
    /* 0x378 */ f32 mRupeeFrameAlpha;
    /* 0x37C */ f32 mRupeeCountScale;
    /* 0x380 */ f32 mRupeeCountPosX;
    /* 0x384 */ f32 mRupeeCountPosY;
    /* 0x388 */ f32 mRupeeCountAlpha;
    /* 0x38C */ f32 mKeyNumScale;
    /* 0x390 */ f32 mKeyNumPosX;
    /* 0x394 */ f32 mKeyNumPosY;
    /* 0x398 */ f32 mKeyNumAlpha;
    /* 0x39C */ f32 mSpurIconScale;
    /* 0x3A0 */ f32 mSpurIconAlpha;
    /* 0x3A4 */ f32 mUsedSpurIconScale;
    /* 0x3A8 */ f32 mUsedSpurIconAlpha;
    /* 0x3AC */ f32 mSpurBarScale;
    /* 0x3B0 */ f32 mSpurBarPosX;
    /* 0x3B4 */ f32 mSpurBarPosY;
    /* 0x3B8 */ f32 mAButtonHorsePosX;
    /* 0x3BC */ f32 mAButtonHorsePosY;
    /* 0x3C0 */ f32 mAButtonHorseScale;
    /* 0x3C4 */ f32 mAButtonHighlightScale;
    /* 0x3C8 */ f32 mBButtonHighlightScale;
    /* 0x3CC */ f32 field_0x3cc;
    /* 0x3D0 */ f32 field_0x3d0;
    /* 0x3D4 */ f32 field_0x3d4;
    /* 0x3D8 */ f32 mZButtonHighlightScale;
    /* 0x3DC */ f32 mXYButtonHighlightScale;
    /* 0x3E0 */ f32 mSpurIconHighlightScale;
    /* 0x3E4 */ f32 mSpurIconReviveHighlightScale;
    /* 0x3E8 */ f32 mMidnaIconHighlightScale;
    /* 0x3EC */ s16 mMidnaIconFlashRate;
    /* 0x3F0 */ f32 field_0x3f0;
    /* 0x3F4 */ f32 field_0x3f4;
    /* 0x3F8 */ f32 field_0x3f8;
    /* 0x3FC */ f32 mDPadButtonScale;
    /* 0x400 */ f32 mDPadButtonOFFPosX;
    /* 0x404 */ f32 mDPadButtonOFFPosY;
    /* 0x408 */ f32 mDPadButtonONPosX;
    /* 0x40C */ f32 mDPadButtonONPosY;
    /* 0x410 */ f32 mDPadButtonLetterSpacing;
    /* 0x414 */ f32 mDPadButtonAlpha;
    /* 0x418 */ f32 mDPadButtonITEMAlpha;
    /* 0x41C */ f32 mDPadButtonMAPAlpha;
    /* 0x420 */ s16 mDPadButtonMoveFrame;
    /* 0x422 */ s16 field_0x422;
    /* 0x424 */ s16 field_0x424;
    /* 0x426 */ bool mButtonDebug[4];
    /* 0x42A */ u8 mXYButtonsItemDimAlpha;
    /* 0x42B */ u8 mXYButtonsBaseDimAlpha;
    /* 0x42C */ u8 field_0x42c;
    /* 0x42D */ u8 mMaxSpurAmount;
    /* 0x42E */ bool mSpurDebug;
    /* 0x42F */ bool field_0x42f;
    /* 0x430 */ JUtility::TColor mSpurIconHighlightFrontInner;
    /* 0x434 */ JUtility::TColor mSpurIconHighlightFrontOuter;
    /* 0x438 */ JUtility::TColor mSpurIconHighlightBackInner;
    /* 0x43C */ JUtility::TColor mSpurIconHighlightBackOuter;
    /* 0x440 */ f32 mSpurIconHighlightAnimSpeed;
    /* 0x444 */ JUtility::TColor mSpurIconReviveHighlightFrontInner;
    /* 0x448 */ JUtility::TColor mSpurIconReviveHighlightFrontOuter;
    /* 0x44C */ JUtility::TColor mSpurIconReviveHighlightBackInner;
    /* 0x450 */ JUtility::TColor mSpurIconReviveHighlightBackOuter;
    /* 0x454 */ f32 mSpurIconReviveHighlightAnimSpeed;
    /* 0x458 */ JUtility::TColor mZButtonHighlightFrontInner;
    /* 0x45C */ JUtility::TColor mZButtonHighlightFrontOuter;
    /* 0x460 */ JUtility::TColor mZButtonHighlightBackInner;
    /* 0x464 */ JUtility::TColor mZButtonHighlightBackOuter;
    /* 0x468 */ f32 mZButtonHighlightAnimSpeed;
    /* 0x46C */ JUtility::TColor mXYButtonHighlightFrontInner;
    /* 0x470 */ JUtility::TColor mXYButtonHighlightFrontOuter;
    /* 0x474 */ JUtility::TColor mXYButtonHighlightBackInner;
    /* 0x478 */ JUtility::TColor mXYButtonHighlightBackOuter;
    /* 0x47C */ f32 mXYButtonHighlightAnimSpeed;
    /* 0x480 */ JUtility::TColor mAButtonHighlightFrontInner;
    /* 0x484 */ JUtility::TColor mAButtonHighlightFrontOuter;
    /* 0x488 */ JUtility::TColor mAButtonHighlightBackInner;
    /* 0x48C */ JUtility::TColor mAButtonHighlightBackOuter;
    /* 0x490 */ f32 mAButtonHighlightAnimSpeed;
    /* 0x494 */ JUtility::TColor mBButtonHighlightFrontInner;
    /* 0x498 */ JUtility::TColor mBButtonHighlightFrontOuter;
    /* 0x49C */ JUtility::TColor mBButtonHighlightBackInner;
    /* 0x4A0 */ JUtility::TColor mBButtonHighlightBackOuter;
    /* 0x4A4 */ f32 mBButtonHighlightAnimSpeed;
    /* 0x4A8 */ JUtility::TColor field_0x4a8;
    /* 0x4AC */ JUtility::TColor field_0x4ac;
    /* 0x4B0 */ JUtility::TColor field_0x4b0;
    /* 0x4B4 */ JUtility::TColor field_0x4b4;
    /* 0x4B8 */ f32 field_0x4b8;
    /* 0x4BC */ JUtility::TColor field_0x4bc;
    /* 0x4C0 */ JUtility::TColor field_0x4c0;
    /* 0x4C4 */ JUtility::TColor field_0x4c4;
    /* 0x4C8 */ JUtility::TColor field_0x4c8;
    /* 0x4CC */ f32 field_0x4cc;
    /* 0x4D0 */ JUtility::TColor field_0x4d0;
    /* 0x4D4 */ JUtility::TColor field_0x4d4;
    /* 0x4D8 */ JUtility::TColor field_0x4d8;
    /* 0x4DC */ JUtility::TColor field_0x4dc;
    /* 0x4E0 */ f32 field_0x4e0;
    /* 0x4E4 */ JUtility::TColor mMidnaIconHighlightFrontInner;
    /* 0x4E8 */ JUtility::TColor mMidnaIconHighlightFrontOuter;
    /* 0x4EC */ JUtility::TColor mMidnaIconHighlightBackInner;
    /* 0x4F0 */ JUtility::TColor mMidnaIconHighlightBackOuter;
    /* 0x4F4 */ f32 mMidnaIconHighlightAnimSpeed;
    /* 0x4F8 */ f32 mScrollArrowScaleX;
    /* 0x4FC */ f32 mScrollArrowScaleY;
    /* 0x500 */ f32 mScrollArrowBPKAnimSpeed;
    /* 0x504 */ f32 mScrollArrowBCKAnimSpeed;
    /* 0x508 */ f32 mScrollArrowBTKAnimSpeed;
    /* 0x50C */ f32 mScrollArrowTopBottomPosX;
    /* 0x510 */ f32 mScrollArrowLeftRightPosX;
    /* 0x514 */ f32 mScrollArrowTopBottomPosY;
    /* 0x518 */ f32 mScrollArrowLeftRightPosY;
    /* 0x51C */ f32 mScrollArrowCenterPosX;
    /* 0x520 */ f32 mScrollArrowCenterPosY;
    /* 0x524 */ bool mScrollArrowDisplayAll;
    /* 0x528 */ f32 mWiiLockArrowScaleX;
    /* 0x52C */ f32 mWiiLockArrowScaleY;
    /* 0x530 */ f32 mWiiLockArrowBPKAnimSpeed;
    /* 0x534 */ f32 mWiiLockArrowBCKAnimSpeed;
    /* 0x538 */ f32 mWiiLockArrowBTKAnimSpeed;
    /* 0x53C */ f32 mWiiLockArrowTopBottomPosX;
    /* 0x540 */ f32 mWiiLockArrowLeftRightPosX;
    /* 0x544 */ f32 mWiiLockArrowTopBottomPosY;
    /* 0x548 */ f32 mWiiLockArrowLeftRightPosY;
    /* 0x54C */ f32 field_0x54c;
    /* 0x550 */ bool mWiiLockArrowDisplayAll;
    /* 0x554 */ f32 mFloatingMessagePosX;
    /* 0x558 */ f32 mFloatingMessagePosY;
    /* 0x55C */ u32 mMessageID;
    /* 0x560 */ u32 mFlowID;
    /* 0x564 */ s16 mMessageDuration;
    /* 0x566 */ bool mMessageDebug;
    /* 0x567 */ bool mFlowDebug;
    /* 0x568 */ bool mItemScaleAdjustON;
    /* 0x569 */ u8 mItemScalePercent;
    /* 0x56C */ f32 mTouchAreaUnselectScale[5];
    /* 0x580 */ f32 mTouchAreaSelectScale[5];
    /* 0x594 */ f32 mTouchAreaScale[5];
    /* 0x5A8 */ f32 mTouchAreaAlpha[5];
    /* 0x5BC */ f32 mTouchAreaPosX[5];
    /* 0x5D0 */ f32 mTouchAreaPosY[5];
    /* 0x5E4 */ f32 mDpadMAPScale;
    /* 0x5E8 */ f32 mDpadMAPPosX;
    /* 0x5EC */ f32 mDpadMAPPosY;
    /* 0x5F0 */ JUtility::TColor mTouchAreaSelectWhite[3];
    /* 0x5FC */ JUtility::TColor mTouchAreaSelectBlack[3];
    /* 0x608 */ s16 mTouchAreaSelectFrameNum;
    /* 0x60A */ bool field_0x60a;
    /* 0x60C */ f32 mLanternIconMeterPosX;
    /* 0x610 */ f32 mLanternIconMeterPosY;
    /* 0x614 */ f32 mLanternIconMeterSize;
    /* 0x618 */ dMeter_drawCollectHIO_c mCollectScreen;
    /* 0x6B8 */ dMeter_drawOptionHIO_c mOptionScreen;
    /* 0x728 */ dMeter_drawLetterHIO_c mLetterSelectScreen;
    /* 0x788 */ dMeter_drawFishingHIO_c mFishListScreen;
    /* 0x9DC */ dMeter_drawInsectHIO_c mInsectListScreen;
    /* 0xA1C */ dMeter_drawCalibrationHIO_c mCalibration;
    /* 0xA34 */ dMeter_drawSkillHIO_c mSkillListScreen;
    /* 0xA90 */ dMeter_drawMiniGameHIO_c mMiniGame;
    /* 0xC20 */ dMeter_drawEmpButtonHIO_c mEmpButton;
    /* 0xE7C */ dMeter_drawLightDropHIO_c mLightDrop;
};  // Size = 0xF28

STATIC_ASSERT(sizeof(dMeter_drawHIO_c) == 3880);

class dMeter_ringHIO_c {
public:
    /* 802001AC */ dMeter_ringHIO_c();
    /* 802010E0 */ virtual ~dMeter_ringHIO_c();

    enum {
        /* 0x0 */ SET_ITEM,
        /* 0x1 */ DIRECT_SELECT,
        /* 0x3 */ ROTATE = 3,
        /* 0x4 */ COMBO_ITEM
    };

    enum {
        /* 0x0 */ SELECT_FRAME,
        /* 0x1 */ UNSELECT_FRAME
    };

    /* 0x000 */  // vtable
    /* 0x004 */ s8 field_0x4;
    /* 0x008 */ f32 mRingRadiusH;
    /* 0x00C */ f32 mRingRadiusV;
    /* 0x010 */ f32 field_0x10;
    /* 0x014 */ f32 mSelectItemScale;
    /* 0x018 */ f32 mSelectButtonScale;
    /* 0x01C */ f32 mUnselectItemScale;
    /* 0x020 */ f32 mUnselectButtonScale;
    /* 0x024 */ f32 mInactiveItemScale;
    /* 0x028 */ f32 mCursorScale;
    /* 0x02C */ f32 mItemNamePosX;
    /* 0x030 */ f32 mItemNamePosY;
    /* 0x034 */ f32 mItemNameScale;
    /* 0x038 */ f32 mCenterPosX;
    /* 0x03C */ f32 mCenterPosY;
    /* 0x040 */ f32 mCenterScale;
    /* 0x044 */ f32 field_0x44;
    /* 0x048 */ f32 field_0x48;
    /* 0x04C */ f32 field_0x4c;
    /* 0x050 */ f32 mOverlayAlpha;
    /* 0x054 */ f32 mGuidePosX[10];
    /* 0x07C */ f32 mGuidePosY[10];
    /* 0x0A4 */ f32 mGuideScale[10];
    /* 0x0CC */ f32 mHighlightScale;
    /* 0x0D0 */ JUtility::TColor mHighlightFrontInner;
    /* 0x0D4 */ JUtility::TColor mHighlightFrontOuter;
    /* 0x0D8 */ JUtility::TColor mHighlightBackInner;
    /* 0x0DC */ JUtility::TColor mHighlightBackOuter;
    /* 0x0E0 */ f32 mHighlightAnimSpeed;
    /* 0x0E4 */ f32 mSelectPosX;
    /* 0x0E8 */ f32 mSelectPosY;
    /* 0x0EC */ f32 mSelectScaleX;
    /* 0x0F0 */ f32 mSelectScaleY;
    /* 0x0F4 */ f32 mItemDescPosX;
    /* 0x0F8 */ f32 mItemDescPosY;
    /* 0x0FC */ f32 mItemDescScale;
    /* 0x100 */ f32 mItemDescAlpha;
    /* 0x104 */ f32 mItemDescTitlePosX;
    /* 0x108 */ f32 mItemDescTitlePosY;
    /* 0x10C */ f32 mItemDescTitleScale;
    /* 0x110 */ f32 mItemRingPosX;
    /* 0x114 */ f32 mItemRingPosY;
    /* 0x118 */ f32 mRingPosX;
    /* 0x11C */ f32 mRingPosY;
    /* 0x120 */ f32 mRingAlpha;
    /* 0x124 */ f32 mRingAlpha_Wolf;
    /* 0x128 */ f32 mRingScaleH;
    /* 0x12C */ f32 mRingScaleV;
    /* 0x130 */ JUtility::TColor mItemFrame[2];
    /* 0x138 */ s16 mItemAlphaFlashDuration;
    /* 0x13A */ s16 mOpenFrames;
    /* 0x13C */ s16 mCloseFrames;
    /* 0x13E */ s16 field_0x13e;
    /* 0x140 */ s16 field_0x140;
    /* 0x142 */ s16 field_0x142;
    /* 0x144 */ s16 mCursorMax;
    /* 0x146 */ s16 mCursorInitSpeed;
    /* 0x148 */ s16 mCursorAccel;
    /* 0x14A */ s16 mCursorChangeWaitFrames;
    /* 0x14C */ s16 mDirectSelectWaitFrames;
    /* 0x14E */ u8 mOffsetLineDisplay;
    /* 0x14F */ u8 mItemNum;
    /* 0x150 */ u8 field_0x150;
    /* 0x151 */ u8 mItemIconAlpha;
    /* 0x152 */ u8 mItemIconAlpha_Wolf;
    /* 0x153 */ u8 field_0x153;
    /* 0x154 */ u8 field_0x154;
    /* 0x155 */ u8 mItemAlphaMin;
    /* 0x156 */ u8 mItemAlphaMax;
};  // Size: 0x158

STATIC_ASSERT(sizeof(dMeter_ringHIO_c) == 344);

class dMeter_mapIconHIO_c {
public:
    /* 802004B4 */ dMeter_mapIconHIO_c();
    /* 80201028 */ virtual ~dMeter_mapIconHIO_c();

    enum {
        /* 0x00 */ ICON_PORTAL,
        /* 0x01 */ ICON_LINK,
        /* 0x02 */ ICON_DUNGEON_WARP,
        /* 0x03 */ ICON_DESTINATION,
        /* 0x04 */ ICON_BOSS,
        /* 0x05 */ ICON_GANON,
        /* 0x06 */ ICON_LIGHT_DROP,
        /* 0x07 */ ICON_SOL,
        /* 0x08 */ ICON_CANNON_BALL,
        /* 0x09 */ ICON_YETO,
        /* 0x0A */ ICON_YETA,
        /* 0x0B */ ICON_GOLD_WOLF,
        /* 0x0C */ ICON_MONKEY,
        /* 0x0D */ ICON_OOCCOO_SR,
        /* 0x0E */ ICON_OOCCOO_JR,
        /* 0x0F */ ICON_COPY_STATUE,
        /* 0x10 */ ICON_WAGON,
        /* 0x11 */ ICON_SMALL_KEY,
        /* 0x12 */ ICON_CHEST,
        /* 0x13 */ ICON_STAGE_ENTRANCE,
        /* 0x14 */ ICON_ROOM_ENTRANCE,
        /* 0x15 */ ICON_LV8_ENTRANCE,
    };

    /* 0x000 */  // vtable
    /* 0x004 */ u8 field_0x4[4];
    /* 0x008 */ f32 mPortalCursorScale;
    /* 0x00C */ f32 mPortalIconScale;
    /* 0x010 */ f32 mDestinationScale;
    /* 0x014 */ f32 mDungeonDestScale;
    /* 0x018 */ f32 mDestinationZoomScale;
    /* 0x01C */ f32 mDungeonDestZoomScale;
    /* 0x020 */ f32 field_0x20;
    /* 0x024 */ f32 mBossScale;
    /* 0x028 */ f32 field_0x28;
    /* 0x02C */ f32 mBossZoomScale;
    /* 0x030 */ f32 field_0x30;
    /* 0x034 */ f32 mGanonScale;
    /* 0x038 */ f32 field_0x38;
    /* 0x03C */ f32 mGanonZoomScale;
    /* 0x040 */ f32 mDungeonEntranceScale;
    /* 0x044 */ f32 mDungeonExitScale;
    /* 0x048 */ f32 mDungeonEntranceZoomScale;
    /* 0x04C */ f32 mDungeonExitZoomScale;
    /* 0x050 */ f32 field_0x50;
    /* 0x054 */ f32 mSmallKeyScale;
    /* 0x058 */ f32 field_0x58;
    /* 0x05C */ f32 mSmallKeyZoomScale;
    /* 0x060 */ f32 field_0x60;
    /* 0x064 */ f32 mChestScale;
    /* 0x068 */ f32 field_0x68;
    /* 0x06C */ f32 mChestZoomScale;
    /* 0x070 */ f32 mYetoScale;
    /* 0x074 */ f32 field_0x74;
    /* 0x078 */ f32 mYetoZoomScale;
    /* 0x07C */ f32 field_0x7c;
    /* 0x080 */ f32 mYetaScale;
    /* 0x084 */ f32 field_0x84;
    /* 0x088 */ f32 mYetaZoomScale;
    /* 0x08C */ f32 field_0x8c;
    /* 0x090 */ f32 mGoldWolfScale;
    /* 0x094 */ f32 field_0x94;
    /* 0x098 */ f32 mGoldWolfZoomScale;
    /* 0x09C */ f32 field_0x9c;
    /* 0x0A0 */ f32 field_0xa0;
    /* 0x0A4 */ f32 mMonkeyScale;
    /* 0x0A8 */ f32 field_0xa8;
    /* 0x0AC */ f32 mMonkeyZoomScale;
    /* 0x0B0 */ f32 field_0xb0;
    /* 0x0B4 */ f32 mOoccooScale;
    /* 0x0B8 */ f32 field_0xb8;
    /* 0x0BC */ f32 mOoccooZoomScale;
    /* 0x0C0 */ f32 field_0xc0;
    /* 0x0C4 */ f32 mOoccooPotScale;
    /* 0x0C8 */ f32 field_0xc8;
    /* 0x0CC */ f32 mOoccooPotZoomScale;
    /* 0x0D0 */ f32 field_0xd0;
    /* 0x0D4 */ f32 mCopyRodStatueScale;
    /* 0x0D8 */ f32 field_0xd8;
    /* 0x0DC */ f32 mCopyRodStatueZoomScale;
    /* 0x0E0 */ f32 mWagonScale;
    /* 0x0E4 */ f32 field_0xe4;
    /* 0x0E8 */ f32 mWagonZoomScale;
    /* 0x0EC */ f32 field_0xec;
    /* 0x0F0 */ f32 mLinkScale;
    /* 0x0F4 */ f32 mDungeonLinkScale;
    /* 0x0F8 */ f32 mLinkZoomScale;
    /* 0x0FC */ f32 mDungeonLinkZoomScale;
    /* 0x100 */ f32 mRoomEntranceScale;
    /* 0x104 */ f32 mDungeonSpawnScale;
    /* 0x108 */ f32 mRoomEntranceZoomScale;
    /* 0x10C */ f32 mDungeonSpawnZoomScale;
    /* 0x110 */ f32 mLV8EntranceScale;
    /* 0x114 */ f32 field_0x114;
    /* 0x118 */ f32 mLV8EntranceZoomScale;
    /* 0x11C */ f32 field_0x11c;
    /* 0x120 */ f32 field_0x120;
    /* 0x124 */ f32 mDungeonWarpScale;
    /* 0x128 */ f32 field_0x128;
    /* 0x12C */ f32 mDungeonWarpZoomScale;
    /* 0x130 */ f32 mLightDropScale;
    /* 0x134 */ f32 field_0x134;
    /* 0x138 */ f32 mLightDropZoomScale;
    /* 0x13C */ f32 field_0x13c;
    /* 0x140 */ f32 field_0x140;
    /* 0x144 */ f32 mLightOrbScale;
    /* 0x148 */ f32 field_0x148;
    /* 0x14C */ f32 mLightOrbZoomScale;
    /* 0x150 */ f32 field_0x150;
    /* 0x154 */ f32 mCannonBallScale;
    /* 0x158 */ f32 field_0x158;
    /* 0x15C */ f32 mCannonBallZoomScale;
    /* 0x160 */ f32 mLightDropFlashStartScaleOut;
    /* 0x164 */ f32 mLightDropFlashStartScaleIn;
    /* 0x168 */ f32 mLightDropFlashEndScaleOut;
    /* 0x16C */ f32 mLightDropFlashEndScaleIn;
    /* 0x170 */ s16 mLightDropFlashFrameNum;
    /* 0x172 */ u8 mLightDropFlashStartAlphaOut;
    /* 0x173 */ u8 mLightDropFlashStartAlphaIn;
    /* 0x174 */ u8 mLightDropFlashEndAlphaOut;
    /* 0x175 */ u8 mLightDropFlashEndAlphaIn;
    /* 0x176 */ bool mLV5DungeonItemDebug;
    /* 0x177 */ u8 mLV5DungeonItem;
    /* 0x178 */ bool mIconDebug;
    /* 0x179 */ bool mIconDisplay[22];
};  // Size: 0x190

class dMeter_fmapHIO_c {
public:
    enum {
        /* 0x0 */ REGION_ORDONA,
        /* 0x1 */ REGION_FARON,
        /* 0x2 */ REGION_ELDIN,
        /* 0x3 */ REGION_LANAYRU,
        /* 0x4 */ REGION_GERUDO,
        /* 0x5 */ REGION_SNOWPEAK,
        /* 0x6 */ REGION_CASTLE,
    };

    enum {
        /* 0x0 */ WORLD_VIEW,
        /* 0x1 */ REGION_VIEW,
        /* 0x2 */ ZOOM_VIEW
    };

    enum {
        /* 0x0 */ TYPE_DEFAULT,
        /* 0x1 */ TYPE_OVERWORLD,
        /* 0x3 */ TYPE_DUNGEON,
        /* 0x2 */ TYPE_HYRULE_CASTLE,
    };

    struct BlinkAnime {
        /* 0x0 */ JUtility::TColor mBlack;
        /* 0x4 */ JUtility::TColor mWhite;
        /* 0x8 */ s16 mBlinkSpeed;
        /* 0xA */ u8 mMax;
        /* 0xB */ u8 mMin;
    };  // Size: 0xC

    struct MapBlinkAnime {
        MapBlinkAnime();

        /* 0x00 */ BlinkAnime mSelectedRegion;
        /* 0x0C */ BlinkAnime mUnselectedRegion;
        /* 0x18 */ JUtility::TColor mUnreachedRegionBlack;
        /* 0x1C */ JUtility::TColor mUnreachedRegionWhite;
        /* 0x20 */ JUtility::TColor field_0x20;
        /* 0x24 */ JUtility::TColor field_0x24;
    };  // Size: 0x28

    /* 802006C8 */ dMeter_fmapHIO_c();
    /* 80200BCC */ virtual ~dMeter_fmapHIO_c();

    /* 0x004 */ s8 field_0x4;
    /* 0x008 */ JKRArchive* field_0x8;
    /* 0x00C */ void* field_0xc;
    /* 0x010 */ void* field_0x10;
    /* 0x014 */ void* field_0x14;
    /* 0x018 */ void* field_0x18;
    /* 0x01C */ MapBlinkAnime mMapBlink[3];
    /* 0x094 */ s16 mDisplayFrameNum;
    /* 0x096 */ s16 mUndisplayFrameNum;
    /* 0x098 */ u8 field_0x98[4];
    /* 0x09C */ f32 mRegionZoomRange;
    /* 0x0A0 */ f32 mStageZoomScale;
    /* 0x0A4 */ f32 mWorldGridWidth;
    /* 0x0A8 */ f32 mRegionGridWidth;
    /* 0x0AC */ f32 mMapTopLeftPosX;
    /* 0x0B0 */ f32 mMapTopLeftPosY;
    /* 0x0B4 */ f32 mMapScale;
    /* 0x0B8 */ f32 mBackgroundAlpha;
    /* 0x0BC */ f32 mBackgroundFrontAlpha;
    /* 0x0C0 */ f32 mScrollSpeedRegionFast;
    /* 0x0C4 */ f32 mScrollSpeedRegionZoomFast;
    /* 0x0C8 */ f32 mScrollSpeedWorldFast;
    /* 0x0CC */ f32 mScrollSpeedDungeonMapFast;
    /* 0x0D0 */ f32 mScrollSpeedRegionSlow;
    /* 0x0D4 */ f32 mScrollSpeedRegionZoomSlow;
    /* 0x0D8 */ f32 mScrollSpeedWorldSlow;
    /* 0x0DC */ f32 mScrollSpeedDungeonMapSlow;
    /* 0x0E0 */ f32 mScrollSpeedSlowBound;
    /* 0x0E4 */ f32 mScrollSpeedFastBound;
    /* 0x0E8 */ f32 mTitlePosX;
    /* 0x0EC */ f32 mTitlePosY;
    /* 0x0F0 */ f32 mTitleScale;
    /* 0x0F4 */ f32 mSubTitlePosX;
    /* 0x0F8 */ f32 mSubTitlePosY;
    /* 0x0FC */ f32 mSubTitleScale;
    /* 0x100 */ f32 mAreaMovementPosX;
    /* 0x104 */ f32 mAreaMovementPosY;
    /* 0x108 */ f32 mAreaMovementScale;
    /* 0x10C */ f32 mClosingPosX;
    /* 0x110 */ f32 mClosingPosY;
    /* 0x114 */ f32 mClosingScale;
    /* 0x118 */ f32 mDoIconPosX;
    /* 0x11C */ f32 mDoIconPosY;
    /* 0x120 */ f32 mDoIconScale;
    /* 0x124 */ f32 mZButtonPosX;
    /* 0x128 */ f32 mZButtonPosY;
    /* 0x12C */ f32 mZButtonScale;
    /* 0x130 */ f32 mAButtonPosX;
    /* 0x134 */ f32 mAButtonPosY;
    /* 0x138 */ f32 mAButtonScale;
    /* 0x13C */ f32 mBButtonPosX;
    /* 0x140 */ f32 mBButtonPosY;
    /* 0x144 */ f32 mBButtonScale;
    /* 0x148 */ f32 mZButtonTextPosX;
    /* 0x14C */ f32 mZButtonTextPosY;
    /* 0x150 */ f32 mZButtonTextScale;
    /* 0x154 */ f32 mAButtonTextPosX;
    /* 0x158 */ f32 mAButtonTextPosY;
    /* 0x15C */ f32 mAButtonTextScale;
    /* 0x160 */ f32 mBButtonTextPosX;
    /* 0x164 */ f32 mBButtonTextPosY;
    /* 0x168 */ f32 mBButtonTextScale;
    /* 0x16C */ f32 mRegionImagePosX[8];
    /* 0x18C */ f32 mRegionImagePosZ[8];
    /* 0x1AC */ f32 mRegionImageScale[8];
    /* 0x1CC */ f32 mRegionScrollRangeMinX[8];
    /* 0x1EC */ f32 mRegionScrollRangeMinZ[8];
    /* 0x20C */ f32 mRegionScrollRangeMaxX[8];
    /* 0x22C */ f32 mRegionScrollRangeMaxZ[8];
    /* 0x24C */ f32 mCursorScale;
    /* 0x250 */ f32 mCursorSpeed;
    /* 0x254 */ JUtility::TColor mCursorBlack;
    /* 0x258 */ JUtility::TColor mCursorWhite;
    /* 0x25C */ cXyz field_0x25c[12];
    /* 0x2EC */ bool mCursorDebugON;
    /* 0x2ED */ bool mButtonDebugON;
    /* 0x2EE */ u8 field_0x2ee[4];
    /* 0x2F2 */ u8 mMapType;
    /* 0x2F3 */ bool mDisplayWorldOrigin;
    /* 0x2F4 */ bool mDisplayRegionOrigin;
    /* 0x2F5 */ bool mDisplayStageOrigin;
    /* 0x2F6 */ bool mDisplayWorldGrid;
    /* 0x2F7 */ bool mDisplayRegionGrid;
    /* 0x2F8 */ bool mDisplayReferenceArea;
    /* 0x2F9 */ u8 field_0x2f9;
    /* 0x2FA */ bool mTerminalOutput;
    /* 0x2FB */ bool mPortalDataTerminalOutput;
    /* 0x2FC */ bool mAllRegionsUnlocked;
    /* 0x2FD */ bool mDisplayAllPaths;
    /* 0x2FE */ bool mRegionPrintGlobalScroll;
    /* 0x2FF */ bool mRangeCheck;
    /* 0x300 */ bool mRangeCheckDrawPriority;
    /* 0x301 */ bool mPortalWarpON;
    /* 0x302 */ bool mDrawBackground;
    /* 0x303 */ u8 field_0x303;
    /* 0x304 */ u8 mRangeCheckInterval;
    /* 0x305 */ u8 field_0x305;
    /* 0x306 */ bool mScrollRangeDebugON;
    /* 0x307 */ bool mScrollRangeDisplay;
    /* 0x308 */ bool field_0x308;  // related to scroll range display
    /* 0x309 */ bool mRegionImageDebug;
    /* 0x30A */ bool mRegionBitTerminalOutput;
    /* 0x30B */ bool mDebugRegionBits[8];
    /* 0x314 */ dMeter_mapIconHIO_c mMapIconHIO;
};  // Size: 0x4A4

STATIC_ASSERT(sizeof(dMeter_fmapHIO_c) == 1188);

class dMeter_cursorHIO_c {
public:
    /* 80200CD4 */ dMeter_cursorHIO_c();
    /* 80201098 */ virtual ~dMeter_cursorHIO_c();

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ cXyz mSeraShopObjZoom;
    /* 0x14 */ cXyz mObjZoom;
    /* 0x20 */ cXyz mMagicArmorObjZoom;
    /* 0x2C */ f32 mShopCursorScale;
    /* 0x30 */ f32 mShopCursorOffsetY;
    /* 0x34 */ f32 mMagicArmorCursorOffsetX;
    /* 0x38 */ f32 mMagicArmorCursorOffsetY;
    /* 0x3C */ s16 mSeraShopObjZoomAngleX;
    /* 0x3E */ s16 mShopObjZoomAngleX;
    /* 0x40 */ s16 mMagicArmorObjZoomAngleX;
};

STATIC_ASSERT(sizeof(dMeter_cursorHIO_c) == 68);

extern dMeter_menuHIO_c g_menuHIO;
extern dMeter_drawHIO_c g_drawHIO;
extern dMeter_ringHIO_c g_ringHIO;
extern dMeter_fmapHIO_c g_fmapHIO;
extern dMeter_cursorHIO_c g_cursorHIO;

#endif /* D_METER_D_METER_HIO_H */
