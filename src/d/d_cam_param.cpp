/**
 * d_cam_param.cpp
 *
 */

#include "d/d_cam_param.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_player.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11dCamParam_cFv();
extern "C" void __dt__11dCamSetup_cFv();
extern "C" void __dt__9dCstick_cFv();

//
// External References:
//

extern "C" void __dl__FPv();

//
// Declarations:
//

/* 8008813C-80088284 082A7C 0148+00 0/0 12/12 0/0 .text            rationalBezierRatio__8dCamMathFff
 */
f32 dCamMath::rationalBezierRatio(f32 param_0, f32 param_1) {
    f64 var_f31;
    f32 var_f1 = param_0;

    if (var_f1 >= 0.0f) {
        var_f31 = 1.0;
    } else {
        var_f31 = -1.0;
        var_f1 = -var_f1;
    }

    f64 temp_f2 = 2.0 * var_f1;
    f64 temp_f2_2 = ((temp_f2 * param_1) - temp_f2) - (2.0 * param_1);
    f64 temp_f29 = -temp_f2_2;
    f64 temp_f28 = temp_f29 - 1.0;
    f64 var_f1_2 = (temp_f2_2 * temp_f2_2) - (4.0 * temp_f28 * var_f1);

    if (var_f1_2 > 0.0) {
        var_f1_2 = sqrt(var_f1_2);
    } else {
        var_f1_2 = 0.0;
    }

    f64 temp = temp_f29 - var_f1_2;
    f64 temp_f2_3 = temp_f28 * 2.0;
    if (temp_f2_3 > 1e-07 || temp_f2_3 < -1e-07) {
        f64 temp_f2_4 = temp / temp_f2_3;
        f64 temp_f3 = temp_f2_4 * temp_f2_4;
        f64 temp_f4 = 1.0 - temp_f2_4;
        f64 temp_f1 = temp_f3 + ((temp_f4 * temp_f4) + (param_1 * (2.0 * temp_f4 * temp_f2_4)));

        if (temp_f1 > 1.0000000116860974e-07) {
            return var_f31 * (temp_f3 / temp_f1);
        }
        return 0.0f;
    }

    return 0.0f;
}

/* ############################################################################################## */
/* 80452810-80452814 000E10 0004+00 2/2 0/0 0/0 .sdata2          @3791 */
SECTION_SDATA2 static f32 lit_3791 = 1.0f;  // placed in a weird order, so can't remove until fixed

/* 80088284-800882E0 082BC4 005C+00 0/0 1/1 0/0 .text            zoomFovy__8dCamMathFff */
f32 dCamMath::zoomFovy(f32 param_0, f32 param_1) {
    cDegree deg(param_0);

    f32 radian = cM_atan2f(deg.Sin(), param_1 * deg.Cos());
    return cAngle::r2d(radian);
}

/* 8008831C-80088384 082C5C 0068+00 0/0 1/1 0/0 .text xyzRotateX__8dCamMathFR4cXyz7cSAngle */
cXyz dCamMath::xyzRotateX(cXyz& i_xyz, cSAngle i_angle) {
    Mtx m;
    cXyz rot_xyz;

    s16 angle = i_angle.Val();
    mDoMtx_XrotS(m, angle);
    MTXMultVec(m, &i_xyz, &rot_xyz);
    return rot_xyz;
}

/* 80088384-800883EC 082CC4 0068+00 0/0 13/13 0/0 .text xyzRotateY__8dCamMathFR4cXyz7cSAngle */
cXyz dCamMath::xyzRotateY(cXyz& i_xyz, cSAngle i_angle) {
    Mtx m;
    cXyz rot_xyz;

    s16 angle = i_angle.Val();
    mDoMtx_YrotS(m, angle);
    MTXMultVec(m, &i_xyz, &rot_xyz);
    return rot_xyz;
}

/* 800883EC-80088434 082D2C 0048+00 0/0 9/9 0/0 .text
 * xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz                */
f32 dCamMath::xyzHorizontalDistance(cXyz& i_posA, cXyz& i_posB) {
    f64 x = i_posA.x - i_posB.x;
    f64 z = i_posA.z - i_posB.z;

    return sqrt((x * x) + (z * z));
}

/* ############################################################################################## */
/* 803AC500-803AC50C 009620 000C+00 2/2 0/0 0/0 .data            __vt__11dCamSetup_c */
SECTION_DATA extern void* __vt__11dCamSetup_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11dCamSetup_cFv,
};

/* 803AC50C-803AC518 00962C 000C+00 2/2 0/0 0/0 .data            __vt__11dCamParam_c */
SECTION_DATA extern void* __vt__11dCamParam_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11dCamParam_cFv,
};

/* 803AC518-803AC528 009638 000C+04 3/3 0/0 0/0 .data            __vt__9dCstick_c */
SECTION_DATA extern void* __vt__9dCstick_c[3 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__9dCstick_cFv,
    /* padding */
    NULL,
};

/* 80088434-8008845C 082D74 0028+00 1/1 0/0 0/0 .text            __ct__9dCstick_cFv */
dCstick_c::dCstick_c() {
    mThresholdLow = 0.2f;
    mThresholdHigh = 0.95f;
    mInputSpeed = 6;
}

/* 8008845C-80088464 082D9C 0008+00 0/0 1/1 0/0 .text            Shift__9dCstick_cFUl */
bool dCstick_c::Shift(u32 param_0) {
    return false;
}

/* 80088464-800884F0 082DA4 008C+00 1/1 0/0 0/0 .text            __ct__11dCamBGChk_cFv */
dCamBGChk_c::dCamBGChk_c() {
    mFloorMargin = 32.0f;

    mChkInfo[0].mDistance = lit_3791;
    mChkInfo[0].mChkAngle = 25.0f;
    mChkInfo[0].mWeightH = 0.4f;
    mChkInfo[0].mWeightL = 0.6f;

    mChkInfo[1].mDistance = 3.0f;
    mChkInfo[1].mChkAngle = 15.0f;
    mChkInfo[1].mWeightH = 0.5f;
    mChkInfo[1].mWeightL = 0.3f;

    mFwdBackMargin = 10.0f;
    mFwdCushion = 0.1f;
    field_0x2c = 0.2f;
    mGazeBackMargin = 10.0f;
    mCornerCushion = 0.75f;
    mWallCushion = 0.5f;
    mWallUpDistance = 80.0f;
    mWallBackCushion = 0.08f;
    mCornerAngleMax = 120.0f;
}

/* 800884F0-8008858C 082E30 009C+00 0/0 1/1 0/0 .text            __ct__11dCamParam_cFl */
dCamParam_c::dCamParam_c(s32 i_styleID) {
    u8* cam_data = (u8*)dComIfG_getObjectRes(dComIfGp_getCameraParamFileName(0), "camstyle.dat");

    mCamStyleData = (dCamStyleData::StyleData*)(cam_data + 8);
    mStyleNum = ((dCamStyleData*)cam_data)->mStyleNum;
    Change(i_styleID);

    mMapToolFovy = 0xFF;
    mMapToolArg0 = 0xFF;
    mMapToolArg1 = 0xFF;
    mMapToolArg2 = -1;
}

/* 8008858C-800885D4 082ECC 0048+00 1/0 1/1 0/0 .text            __dt__11dCamParam_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCamParam_c::~dCamParam_c() {
extern "C" asm void __dt__11dCamParam_cFv() {
    nofralloc
#include "asm/d/d_cam_param/__dt__11dCamParam_cFv.s"
}
#pragma pop

/* 800885D4-80088620 082F14 004C+00 1/1 7/7 0/0 .text            Change__11dCamParam_cFl */
int dCamParam_c::Change(s32 i_styleID) {
    if (i_styleID >= 0 && i_styleID < mStyleNum) {
        mStyleID = i_styleID;
        mCurrentStyle = &mCamStyleData[mStyleID];
        return 1;
    }

    mStyleID = 0;
    mCurrentStyle = mCamStyleData;
    return 0;
}

/* 80088620-80088668 082F60 0048+00 0/0 4/4 0/0 .text            SearchStyle__11dCamParam_cFUl */
int dCamParam_c::SearchStyle(u32 param_0) {
    int styleID = -1;

    for (int i = 0; i < mStyleNum; i++) {
        if (param_0 == mCamStyleData[i].field_0x0) {
            styleID = i;
            break;
        }
    }

    return styleID;
}

/* ############################################################################################## */
/* 80452858-8045285C 000E58 0004+00 1/1 0/0 0/0 .sdata2          @4058 */
SECTION_SDATA2 static f32 lit_4058 = 0.25f;  // placed in a weird order, so can't remove until fixed

/* 80088668-800888B8 082FA8 0250+00 0/0 1/1 0/0 .text            __ct__11dCamSetup_cFv */
dCamSetup_c::dCamSetup_c() {
    f32 temp_1 = lit_3791;

    mDrawNear = temp_1;
    mDrawFar = 100000.0f;
    field_0xc = 1;
    mModeSwitchType = -1;
    mForceType = -1;
    mCusCus = 0.2f;
    field_0x24 = 0.05f;
    field_0x60 = 80.0f;
    field_0x5c = -60.0f;
    field_0x28 = 0.33f;
    field_0x2c = 0.02f;
    field_0x50 = 100.0f;
    field_0x30 = 0.75f;
    mBaseCushion = 0.28f;
    mJumpCushion = temp_1;
    field_0x58 = 0.15f;
    field_0x44 = 0.005f;
    field_0x54 = 0.06f;
    mCurveWeight = temp_1;
    field_0x34 = 25.0f;
    mSubjLinkCullDist = 70.0f;
    mParallelDist = 60.0f;
    mTrimVistaHeight = 35.0f;
    mTrimCineScopeHeight = 65.0f;
    field_0xb0 = 150;
    field_0xb4 = 60.0f;
    mManualStartCThreshold = 0.3f;
    mManualEndVal = 0.2f;
    mFalseValue = 0.1f;
    mFalseAngle = 30.0f;
    mDebugFlags = 1;

    field_0xa = 0x118;
    field_0xa |= 0x200;
    field_0xa |= 0x400;

    mChargeLatitude = 27.0f;
    mChargeTimer = 90;
    mChargeBRatio = 0.5f;
    mLockonChangeTimer = 40;
    mLockonChangeCushion = lit_4058;
    field_0x6c = 45.0f;
    mForceLockOffDist = 3500.0f;
    mForceLockOffTimer = 90;
    mThrowTimer = 30;
    mThrowVAngle = 25.0f;
    mThrowCushion = 0.05f;
    mThrowCtrOffset = 10.0f;
    field_0x78 = 0.5f;
    field_0x7c = 0.4f;
    field_0x80 = 10.0f;
    field_0x84 = 4.0f;
    field_0xd4 = 60.0f;
    field_0xd8 = 100.0f;
    mWindShakeCtr = 15.0f;
    mWindShakeFvy = 0.3f;
    mMapToolCamShortTimer = 60;
    mMapToolCamLongTimer = 120;
    mDebugFlags |= 0x4800;
    field_0x15c = 0.0f;
    field_0x160 = 0.0f;
    mDebugFlags |= 0x800;
    mWaitRollTimer = 120;
    mWaitRollSpeed = 0.02f;
    field_0x16c = 1200.0f;
    field_0xe0 = 0.06f;
    field_0xec = 25;
    field_0xf4 = 0.85f;
    field_0xf8 = temp_1;
    field_0xf0 = 12;
    field_0xe4 = 50.0f;
    field_0xe8 = 0.0f;
    mScreensaverFirstWaitTimer = 30;
    mScreensaverWaitTimer = 600;
    mScreensaverExecTimer = 120;

    dCam_getBody()->EventRecoverNotime();
}

/* 800888B8-80088918 0831F8 0060+00 1/0 1/1 0/0 .text            __dt__11dCamSetup_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCamSetup_c::~dCamSetup_c() {
extern "C" asm void __dt__11dCamSetup_cFv() {
    nofralloc
#include "asm/d/d_cam_param/__dt__11dCamSetup_cFv.s"
}
#pragma pop

/* 80088918-80088988 083258 0070+00 0/0 1/1 0/0 .text CheckLatitudeRange__11dCamSetup_cFPs */
bool dCamSetup_c::CheckLatitudeRange(s16* param_0) {
    s16 temp0 = cAngle::d2s(field_0x60);
    s16 temp1 = cAngle::d2s(field_0x5c);

    if (*param_0 > temp0) {
        *param_0 = temp0;
        return false;
    }

    if (*param_0 < temp1) {
        *param_0 = temp1;
        return false;
    }

    return true;
}

/* 80088988-800889B0 0832C8 0028+00 0/0 1/1 0/0 .text            PlayerHideDist__11dCamSetup_cFv */
f32 dCamSetup_c::PlayerHideDist() {
    if (daPy_py_c::i_checkNowWolf()) {
        return 120.0f;
    }

    return mSubjLinkCullDist;
}

/* 800889B0-800889F8 0832F0 0048+00 1/0 0/0 0/0 .text            __dt__9dCstick_cFv */
dCstick_c::~dCstick_c() {}
