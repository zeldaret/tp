/**
 * d_a_alink_hang.inc
 * Player hang / climb action handling
 */

#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_alink.h"
#include "d/com/d_com_inf_game.h"
#include "rel/d/a/b/d_a_b_dr/d_a_b_dr.h"
#include "rel/d/a/b/d_a_b_dre/d_a_b_dre.h"
#include "rel/d/a/b/d_a_b_ob/d_a_b_ob.h"
#include "rel/d/a/obj/d_a_obj_lv5yiblltray/d_a_obj_lv5yiblltray.h"
#include "rel/d/a/obj/d_a_obj_swhang/d_a_obj_swhang.h"

/* 800F9FDC-800F9FFC 0F491C 0020+00 2/2 0/0 0/0 .text            getHangMoveAnmSpeed__9daAlink_cFv
 */
f32 daAlink_c::getHangMoveAnmSpeed() {
    return getAnmSpeedStickRate(daAlinkHIO_wallMove_c0::m.mMinAnmSpeed,
                                daAlinkHIO_wallMove_c0::m.mMaxAnmSpeed);
}

/* 800F9FFC-800FA070 0F493C 0074+00 3/3 0/0 0/0 .text getHangDirectionFromAngle__9daAlink_cFv */
int daAlink_c::getHangDirectionFromAngle() {
    s16 angle = field_0x2fe2 - shape_angle.y;
    if (abs(angle) > 0x78E4) {
        return DIR_BACKWARD;
    }

    if (angle >= 0x071C) {
        return DIR_LEFT;
    }

    if (angle <= -0x071C) {
        return DIR_RIGHT;
    }

    return DIR_FORWARD;
}

/* 800FA070-800FA338 0F49B0 02C8+00 2/2 0/0 0/0 .text            hangMoveBgCheck__9daAlink_cFsP4cXyz
 */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::hangMoveBgCheck(s16 param_0, cXyz* param_1) {
    BOOL rt = false;
    cM3dGPla sp78;

    f32 var_f31;
    if (checkModeFlg(0x10000)) {
        var_f31 = current.pos.y + field_0x598;
    } else {
        var_f31 = current.pos.y;
    }

    cXyz sp84;
    cXyz sp90;
    f32 var_f30 = cM_ssin(shape_angle.y) * 4.5f;
    f32 var_f29 = cM_scos(shape_angle.y) * 4.5f;

    if (param_1 != NULL) {
        sp84 = field_0x3798;
        sp90 = current.pos;
        sp90.x += cM_ssin(param_0) * 30.0f;
        sp90.z += cM_scos(param_0) * 30.0f;
    } else {
        sp84.set(current.pos.x, var_f31, current.pos.z);
        sp90.set(sp84.x + cM_ssin(param_0) * 40.0f, sp84.y, sp84.z + cM_scos(param_0) * 40.0f);
    }

    sp84.x -= var_f30;
    sp84.z -= var_f29;
    sp90.x -= var_f30;
    sp90.z -= var_f29;

    cXyz sp9C;
    for (int i = 0; i < 3; i++) {
        sp90.y = sp84.y = var_f31 - underOffsetY[i];

        if (commonLineCheck(&sp84, &sp90)) {
            dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp78);

            if (cBgW_CheckBWall(sp78.mNormal.y)) {
                if (cLib_distanceAngleS(sp78.mNormal.atan2sX_Z(), shape_angle.y) < 0x549F) {
                    if (param_1 == NULL) {
                        return true;
                    }

                    sp9C = mLinkLinChk.i_GetCross() - sp90;
                    if (sp9C.abs2XZ() > param_1->abs2XZ()) {
                        *param_1 = sp9C;
                        rt = true;
                    }
                }
            }
        }
    }

    return rt;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::hangMoveBgCheck(s16 param_0, cXyz* param_1){nofralloc
#include "asm/d/a/d_a_alink/hangMoveBgCheck__9daAlink_cFsP4cXyz.s"
}
#pragma pop
#endif

/* 800FA338-800FA5C8 0F4C78 0290+00 3/3 0/0 0/0 .text            changeHangMoveProc__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::changeHangMoveProc(int i_direction) {
    if (!mLinkAcch.i_ChkGroundHit() || !dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd)) {
        return false;
    }

    cM3dGPla sp58;
    dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &sp58);
    if (sp58.mNormal.y < 0.9986f) {
        return false;
    }

    cXyz sp64;
    cXyz sp70;

    s16 var_r29;
    if (i_direction == DIR_LEFT) {
        var_r29 = shape_angle.y + 0x4000;
    } else if (i_direction == DIR_RIGHT) {
        var_r29 = shape_angle.y - 0x4000;
    } else {
        var_r29 = current.angle.y;
    }

    sp64.set(current.pos.x, current.pos.y + 5.0f, current.pos.z);

    f32 var_f31;
    if (checkNoResetFlg2(FLG2_UNK_2000)) {
        var_f31 = 40.0f;
    } else {
        var_f31 = 25.0f;
    }

    sp70.set(sp64.x + var_f31 * cM_ssin(var_r29), sp64.y, sp64.z + var_f31 * cM_scos(var_r29));

    if (commonLineCheck(&sp64, &sp70)) {
        return false;
    }

    mLinkGndChk.SetPos(&sp70);
    if (fabsf(dComIfG_Bgsp().GroundCross(&mLinkGndChk) - current.pos.y) > 5.0f) {
        cXyz sp7C;
        cXyz sp88;
        sp7C.set(sp70.x, current.pos.y - 5.0f, sp70.z);
        sp88.set(sp70.x + cM_ssin(shape_angle.y) * 75.0f, sp7C.y,
                 sp70.z + cM_scos(shape_angle.y) * 75.0f);
        if (!commonLineCheck(&sp7C, &sp88)) {
            return false;
        }

        dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp58);
        if (cLib_distanceAngleS(sp58.mNormal.atan2sX_Z(), shape_angle.y) < 0x549F) {
            return false;
        }
    }

    return hangMoveBgCheck(var_r29, NULL) == false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::changeHangMoveProc(int i_direction) {
    nofralloc
#include "asm/d/a/d_a_alink/changeHangMoveProc__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FA5C8-800FA6E4 0F4F08 011C+00 5/5 0/0 0/0 .text            checkHangFootWall__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
bool daAlink_c::checkHangFootWall() {
    f32 var_f31 = cM_ssin(shape_angle.y);
    f32 var_f30 = cM_scos(shape_angle.y);
    cXyz sp4C(current.pos.x - var_f31 * 30.0f, current.pos.y - 120.0f,
              current.pos.z - var_f30 * 30.0f);
    cXyz sp58(current.pos.x + var_f31, sp4C.y, current.pos.z + var_f30);

    if (commonLineCheck(&sp4C, &sp58)) {
        cM3dGPla sp40;
        dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp40);

        if (fabsf(sp40.mNormal.y) <= 0.005f) {
            onNoResetFlg2(FLG2_UNK_2000);
            return true;
        }
    }

    offNoResetFlg2(FLG2_UNK_2000);
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkHangFootWall() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHangFootWall__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FA6E4-800FA78C 0F5024 00A8+00 10/10 0/0 0/0 .text            setHangGroundY__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setHangGroundY() {
    cXyz pos;
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(0), &pos);

    pos.x -= cM_ssin(shape_angle.y) * 15.0f;
    pos.z -= cM_scos(shape_angle.y) * 15.0f;

    mLinkGndChk.SetPos(&pos);
    field_0x33d8 = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHangGroundY() {
    nofralloc
#include "asm/d/a/d_a_alink/setHangGroundY__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FA78C-800FA85C 0F50CC 00D0+00 5/5 0/0 0/0 .text            changeHangEndProc__9daAlink_cFv */
int daAlink_c::changeHangEndProc() {
    setHangGroundY();

    if (current.pos.y < field_0x33d8 + daAlinkHIO_wallHang_c0::m.field_0x18 - lit_6040 &&
        (mProcID != PROC_HANG_FALL_START || !(mUnderFrameCtrl->getFrame() < lit_6109)) &&
        field_0x33d8 < current.pos.y - lit_7808)
    {
        return procLandInit(FLOAT_LABEL(lit_6108));
    }

    setDoStatus(0x33);

    if (doTrigger()) {
        speed.y = FLOAT_LABEL(lit_6108);
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    return 0;
}

/* 800FA85C-800FAA7C 0F519C 0220+00 3/3 0/0 0/0 .text checkHangStartSideWall__9daAlink_cFs */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::checkHangStartSideWall(s16 param_0) {
    s16 var_r28 = param_0 - 0x4000;
    s16 var_r27 = param_0 + 0x8000;
    f32 var_f31;
    f32 var_f30;

    f32 var_f29;
    if (checkWolf()) {
        var_f29 = 35.0f;
    } else {
        var_f29 = 25.0f;
    }

    var_f31 = var_f29 * cM_ssin(var_r28);
    var_f30 = var_f29 * cM_scos(var_r28);

    cXyz sp7C;
    cXyz sp88;
    cM3dGPla sp70;

    sp7C.set(var_f31 + (current.pos.x + (cM_ssin(param_0) * 4.5f)),
             current.pos.y - field_0x598 * 0.5f,
             var_f30 + (current.pos.z + (cM_scos(param_0) * 4.5f)));
    sp88.set(sp7C.x - var_f31 * 2.0f, sp7C.y, sp7C.z - var_f30 * 2.0f);

    for (int i = 0; i < 2; i++) {
        if (commonLineCheck(&sp7C, &sp88)) {
            dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp70);
            if (cLib_distanceAngleS(sp70.mNormal.atan2sX_Z(), var_r27) < 0x549F) {
                current.pos.x += var_f31;
                current.pos.z += var_f30;
                break;
            }
        }

        if (commonLineCheck(&sp88, &sp7C)) {
            dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp70);
            if (cLib_distanceAngleS(sp70.mNormal.atan2sX_Z(), var_r27) < 0x549F) {
                current.pos.x -= var_f31;
                current.pos.z -= var_f30;
                break;
            }
        }

        sp88.y = sp7C.y = current.pos.y - 5.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHangStartSideWall(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkHangStartSideWall__9daAlink_cFs.s"
}
#pragma pop
#endif

/* 800FAA7C-800FAE14 0F53BC 0398+00 3/3 0/0 0/0 .text            procHangStartInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangStartInit() {
    cXyz sp2C = field_0x34ec - current.pos;

    if (sp2C.absXZ() > field_0x18B0[0].GetWallR() + 20.0f) {
        return 0;
    }

    cXyz sp38;
    sp38.set(field_0x34ec.x - cM_ssin(field_0x306e) * 1.5f, field_0x34ec.y + 10.0f,
             field_0x34ec.z - cM_scos(field_0x306e) * 1.5f);
    mLinkGndChk.SetPos(&sp38);

    sp38.y = dComIfG_Bgsp().GroundCross(&mLinkGndChk);

    if (fabsf(sp38.y - field_0x34ec.y) > l_autoUpHeight) {
        return 0;
    }

    BOOL hang_ready = mProcID == PROC_HANG_READY;
    commonProcInit(PROC_HANG_START);
    current.pos = sp38;
    offNoResetFlg2(FLG2_UNK_2000);

    if (checkHangFootWall()) {
        if (!hang_ready && cM_rnd() < 0.7f) {
            setSingleAnimeParam(ANM_CLIMB_HANG_MISS, &daAlinkHIO_ladder_c0::m.field_0x14);
            field_0x3478 = daAlinkHIO_ladder_c0::m.field_0x14.mCheckFrame;
            voiceStart(Z2SE_AL_V_FOOT_MISS);
        } else {
            setSingleAnimeParam(ANM_CLIMB_HANG, &daAlinkHIO_ladder_c0::m.field_0x0);
            field_0x3478 = daAlinkHIO_ladder_c0::m.field_0x0.mCheckFrame;
            voiceStart(Z2SE_AL_V_JUMP_HANG);
        }

        field_0x2f92 = 0xFE;
        field_0x2f93 = 0xFE;
    } else {
        setSingleAnimeParam(ANM_HANG_READY, &daAlinkHIO_wallCatch_c0::m.mGrabAAnm);
        field_0x3478 = daAlinkHIO_wallCatch_c0::m.mGrabAAnm.mCheckFrame;
        voiceStart(Z2SE_AL_V_JUMP_HANG);
    }

    setBowHangAnime();
    shape_angle.y = field_0x306e - 0x8000;
    current.angle.y = shape_angle.y;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    dComIfGp_setPlayerStatus0(0, 0x100);
    setHangGroundY();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangStartInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FAE14-800FAECC 0F5754 00B8+00 1/0 0/0 0/0 .text            procHangStart__9daAlink_cFv */
int daAlink_c::procHangStart() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (changeHangEndProc()) {
        return 1;
    }

    if (checkAnmEnd(frame_ctrl)) {
        procHangWaitInit();
    } else if (frame_ctrl->getFrame() > field_0x3478 && checkInputOnR() &&
               getDirectionFromShapeAngle() == DIR_FORWARD)
    {
        procHangClimbInit(daAlinkHIO_wallCatch_c0::m.mClimbAnm.mStartFrame);
    }

    return 1;
}

/* 800FAECC-800FB1A4 0F580C 02D8+00 1/1 0/0 0/0 .text procHangFallStartInit__9daAlink_cFP8cM3dGPla
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangFallStartInit(cM3dGPla* param_0) {
    s16 var_r30 = param_0->mNormal.atan2sX_Z();
    current.pos.x -= param_0->mNormal.x * 1.5f;
    current.pos.z -= param_0->mNormal.z * 1.5f;

    checkHangStartSideWall(var_r30);

    cXyz sp58(current.pos.x, current.pos.y + 50.0f, current.pos.z);
    mLinkGndChk.SetPos(&sp58);

    f32 cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
    sp58.y = cross;
    if (sp58.y != -1000000000.0f) {
        if (sp58.y < current.pos.y + l_autoDownHeight) {
            return 0;
        }

        current.pos.y = sp58.y;
    }

    s16 var_r28 = var_r30 - 0x4000;
    f32 var_f31 = cM_ssin(var_r28) * 25.0f;
    f32 var_f30 = cM_scos(var_r28) * 25.0f;
    sp58.x += var_f31;
    sp58.y = current.pos.y + 50.0f;
    sp58.z += var_f30;

    mLinkGndChk.SetPos(&sp58);
    cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
    if (cross < current.pos.y - 50.0f) {
        sp58.x = current.pos.x - var_f31;
        sp58.z = current.pos.z - var_f30;
        mLinkGndChk.SetPos(&sp58);

        cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        sp58.y = cross;
        if (sp58.y < current.pos.y - 50.0f) {
            return 0;
        }

        current.pos = sp58;
    }

    setOldRootQuaternion(0, shape_angle.y - (var_r30 + 0x8000), 0);
    shape_angle.y = var_r30 + 0x8000;
    current.angle.y = shape_angle.y;

    f32 morf;
    if (mProcID == PROC_FRONT_ROLL) {
        morf = 0.0f;
    } else {
        morf = daAlinkHIO_wallFall_c0::m.mOneHandGrabAnm.mInterpolation;
    }

    commonProcInit(PROC_HANG_FALL_START);
    offNoResetFlg2(FLG2_UNK_2000);
    setSingleAnime(ANM_HANG_ONE_HAND, daAlinkHIO_wallFall_c0::m.mOneHandGrabAnm.mSpeed,
                   daAlinkHIO_wallFall_c0::m.mOneHandGrabAnm.mStartFrame,
                   daAlinkHIO_wallFall_c0::m.mOneHandGrabAnm.mEndFrame, morf);

    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    dComIfGp_setPlayerStatus0(0, 0x100);
    voiceStart(Z2SE_AL_V_FOOT_MISS);
    setBowHangAnime();
    setHangGroundY();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangFallStartInit(cM3dGPla* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHangFallStartInit__9daAlink_cFP8cM3dGPla.s"
}
#pragma pop
#endif

/* 800FB1A4-800FB2A0 0F5AE4 00FC+00 1/0 0/0 0/0 .text            procHangFallStart__9daAlink_cFv */
int daAlink_c::procHangFallStart() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    BOOL bvar;
    if (checkAnmEnd(frame_ctrl) ||
        frame_ctrl->getFrame() > daAlinkHIO_wallFall_c0::m.mOneHandGrabAnm.mCheckFrame)
    {
        bvar = true;
    } else {
        bvar = false;
    }

    if (changeHangEndProc()) {
        return 1;
    }

    if (frame_ctrl->checkPass(lit_7808)) {
        f32 tmp_0 = FLOAT_LABEL(lit_6108);
        dComIfGp_getVibration().StartShock(1, 1, cXyz(tmp_0, lit_6040, tmp_0));
    }

    if (bvar) {
        int hang_dir = getHangDirectionFromAngle();
        if (checkInputOnR() && hang_dir != DIR_BACKWARD) {
            procHangUpInit(hang_dir);
        }
    }

    return 1;
}

/* 800FB2A0-800FB328 0F5BE0 0088+00 1/1 0/0 0/0 .text            procHangUpInit__9daAlink_cFi */
int daAlink_c::procHangUpInit(int param_0) {
    commonProcInit(PROC_HANG_UP);
    setSingleAnimeParam(ANM_HANG_ONE_HAND_MOVE, &daAlinkHIO_wallFall_c0::m.mTwoHandGrabAnm);
    dComIfGp_setPlayerStatus0(0, 0x100);
    setBowHangAnime();
    field_0x3198 = param_0;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setHangGroundY();

    return 1;
}

/* 800FB328-800FB43C 0F5C68 0114+00 1/0 0/0 0/0 .text            procHangUp__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangUp() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (changeHangEndProc()) {
        if (mProcID == PROC_FALL) {
            current.pos.x -= cM_ssin(shape_angle.y) * 8.0f;
            current.pos.z -= cM_scos(shape_angle.y) * 8.0f;
        }
        return 1;
    } else if (checkAnmEnd(frame_ctrl) ||
               frame_ctrl->getFrame() > daAlinkHIO_wallFall_c0::m.mTwoHandGrabAnm.mCheckFrame)
    {
        if (field_0x3198 == 0) {
            procHangClimbInit(daAlinkHIO_wallCatch_c0::m.mClimbAnm.mStartFrame);
        } else if (changeHangMoveProc(field_0x3198)) {
            procHangMoveInit(field_0x3198);
        } else {
            procHangWaitInit();
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangUp__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FB43C-800FB544 0F5D7C 0108+00 3/3 0/0 0/0 .text            procHangWaitInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangWaitInit() {
    commonProcInit(PROC_HANG_WAIT);

    if (checkNoResetFlg2(FLG2_UNK_2000) && checkHangFootWall()) {
        setSingleAnime(ANM_CLIMB_HANG, 0.0f, daAlinkHIO_ladder_c0::m.field_0x0.mEndFrame,
                       daAlinkHIO_ladder_c0::m.field_0x0.mEndFrame, 5.0f);
        field_0x2f92 = 0xFE;
        field_0x2f93 = 0xFE;
    } else {
        setSingleAnime(ANM_HANG_READY, 0.0f, daAlinkHIO_wallCatch_c0::m.mGrabAAnm.mEndFrame,
                       daAlinkHIO_wallCatch_c0::m.mGrabAAnm.mEndFrame, 5.0f);
    }

    setBowHangAnime();
    field_0x2d7c = NULL;
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    dComIfGp_setPlayerStatus0(0, 0x100);
    setHangGroundY();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangWaitInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FB544-800FB650 0F5E84 010C+00 1/0 0/0 0/0 .text            procHangWait__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangWait() {
    if (changeHangEndProc()) {
        return 1;
    }

    setClimbShapeOffset();

    if (checkNoResetFlg2(FLG2_UNK_2000) && !checkHangFootWall()) {
        setSingleAnime(ANM_HANG_READY, 0.0f, daAlinkHIO_wallCatch_c0::m.mGrabAAnm.mEndFrame,
                       daAlinkHIO_wallCatch_c0::m.mGrabAAnm.mEndFrame, 10.0f);
    }

    if (checkInputOnR()) {
        int direction = getHangDirectionFromAngle();
        if (direction == DIR_FORWARD) {
            return procHangClimbInit(daAlinkHIO_wallCatch_c0::m.mClimbAnm.mStartFrame);
        }

        if (direction != DIR_BACKWARD && changeHangMoveProc(direction)) {
            s16 temp = field_0x308c;
            procHangMoveInit(direction);
            field_0x308c = temp;
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangWait__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FB650-800FB790 0F5F90 0140+00 3/3 0/0 0/0 .text            procHangMoveInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangMoveInit(int param_0) {
    commonProcInit(PROC_HANG_MOVE);

    if (checkNoResetFlg2(FLG2_UNK_2000) && checkHangFootWall()) {
        daAlink_ANM anm;

        if (param_0 == 2) {
            anm = ANM_CLIMB_SLIDE_LEFT;
            field_0x33f0 = 1.0f;
            field_0x30a2 = 0x1800;
        } else {
            anm = ANM_CLIMB_SLIDE_RIGHT;
            field_0x33f0 = -1.0f;
            field_0x30a2 = -0x1800;
        }

        setSingleAnimeBaseSpeed(anm, getClimbMoveSideAnmSpeed(), 3.0f);
        field_0x2f92 = 0xFE;
        field_0x2f93 = 0xFE;
    } else {
        daAlink_ANM anm;

        if (param_0 == 2) {
            anm = ANM_HANG_MOVE_LEFT;
        } else {
            anm = ANM_HANG_MOVE_RIGHT;
        }

        setSingleAnimeBaseSpeed(anm, getHangMoveAnmSpeed(),
                                daAlinkHIO_wallMove_c0::m.mInterpolation);
    }

    if (param_0 == 2) {
        current.angle.y = shape_angle.y + 0x4000;
    } else {
        current.angle.y = shape_angle.y - 0x4000;
    }

    dComIfGp_setPlayerStatus0(0, 0x100);
    mNormalSpeed = 0.0f;
    field_0x2f99 = 9;
    setBowHangAnime();
    setHangGroundY();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangMoveInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHangMoveInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FB790-800FBBC8 0F60D0 0438+00 1/0 0/0 0/0 .text            procHangMove__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangMove() {
    int direction = getHangDirectionFromAngle();
    field_0x2f99 = 1;

    if (!changeHangEndProc()) {
        if (direction == DIR_FORWARD && checkInputOnR()) {
            procHangClimbInit(daAlinkHIO_wallCatch_c0::m.mClimbAnm.mStartFrame);
        } else {
            daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

            if (checkAnmEnd(frameCtrl)) {
                s16 temp = field_0x308c;
                if (checkInputOnR() && direction != DIR_BACKWARD && changeHangMoveProc(direction)) {
                    procHangMoveInit(direction);
                } else {
                    procHangWaitInit();
                }

                field_0x308c = temp;
            } else {
                if (fabsf(frameCtrl->getRate()) > 0.01f) {
                    if (checkNoResetFlg2(FLG2_UNK_2000)) {
                        setWaterInAnmRate(frameCtrl, getClimbMoveSideAnmSpeed());
                    } else {
                        setWaterInAnmRate(frameCtrl, getHangMoveAnmSpeed());
                    }
                }

                if (changeHangMoveProc(4)) {
                    if (checkNoResetFlg2(FLG2_UNK_2000) && !checkHangFootWall()) {
                        daAlink_ANM anm;
                        f32 temp_f29 = frameCtrl->getFrame() / frameCtrl->getEnd();

                        if ((s16)(current.angle.y - shape_angle.y) > 0) {
                            anm = ANM_HANG_MOVE_LEFT;
                        } else {
                            anm = ANM_HANG_MOVE_RIGHT;
                        }

                        setSingleAnimeBaseSpeed(anm, getHangMoveAnmSpeed(), 10.0f);
                        field_0x2f99 = 13;

                        frameCtrl->setFrame(temp_f29 * (f32)frameCtrl->getEnd());
                        getNowAnmPackUnder(UNDER_0)->setFrame(frameCtrl->getFrame());
                        field_0x33f0 = 0.0f;
                        field_0x30a2 = 0;
                    }

                    f32 temp_f31 = cM_ssin(shape_angle.y);
                    f32 temp_f30 = cM_scos(shape_angle.y);
                    f32 temp_f28 = cM_ssin(current.angle.y);
                    f32 temp_f27 = cM_scos(current.angle.y);

                    cXyz spB0((current.pos.x + cM_ssin(current.angle.y) * 25.0f) - temp_f31 * 30.0f,
                              current.pos.y - 5.0f,
                              (current.pos.z + cM_scos(current.angle.y) * 25.0f) -
                                  temp_f30 * 30.0f);

                    cXyz spBC(spB0.x + temp_f31 * 60.0f, spB0.y, spB0.z + temp_f30 * 60.0f);

                    if (commonLineCheck(&spB0, &spBC)) {
                        cM3dGPla spA4;
                        dComIfG_Bgsp().GetTriPla(mLinkLinChk, &spA4);

                        s16 temp_r28 = spA4.mNormal.atan2sX_Z() + 0x8000;
                        if (temp_r28 != shape_angle.y) {
                            if ((s16)(current.angle.y - shape_angle.y) > 0) {
                                current.angle.y = temp_r28 + 0x4000;
                            } else {
                                current.angle.y = temp_r28 - 0x4000;
                            }

                            s16 temp_r25 = shape_angle.y - temp_r28;
                            field_0x308c += temp_r25;
                            shape_angle.y = temp_r28;

                            if (abs(temp_r25) < 100) {
                                field_0x308c = 0;
                            } else {
                                cXyz spC8(mLinkLinChk.i_GetCross());
                                spC8.x -= spA4.mNormal.x * 1.5f;
                                spC8.y += 25.0f;
                                spC8.z -= spA4.mNormal.z * 1.5f;

                                mLinkGndChk.SetPos(&spC8);
                                spC8.y = dComIfG_Bgsp().GroundCross(&mLinkGndChk);

                                if (fabsf(spC8.y - current.pos.y) <= 5.0f) {
                                    current.pos = spC8;
                                }
                            }
                        }
                    }
                } else {
                    procHangWaitInit();
                }
            }

            if (checkModeFlg(0x40)) {
                setClimbShapeOffset();
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FBBC8-800FBCD4 0F6508 010C+00 6/6 0/0 0/0 .text            procHangClimbInit__9daAlink_cFf */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangClimbInit(f32 param_0) {
    if (mLinkAcch.ChkRoofHit() || field_0x3174 == 6) {
        return 0;
    }

    BOOL wall_catch = mProcID == PROC_HANG_WALL_CATCH;
    commonProcInit(PROC_HANG_CLIMB);
    setSingleAnime(ANM_HANG_CLIMB_TOP, daAlinkHIO_wallCatch_c0::m.mClimbAnm.mSpeed, param_0,
                   daAlinkHIO_wallCatch_c0::m.mClimbAnm.mEndFrame,
                   daAlinkHIO_wallCatch_c0::m.mClimbAnm.mInterpolation);

    if (checkBowItem(mEquipItem)) {
        field_0x33dc = mUnderFrameCtrl[0].getFrame();
    }

    dComIfGp_setPlayerStatus0(0, 0x200);
    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;

    if (!wall_catch) {
        voiceStart(Z2SE_AL_V_CLIMB);
    }

    setHangGroundY();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangClimbInit(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHangClimbInit__9daAlink_cFf.s"
}
#pragma pop
#endif

/* 800FBCD4-800FBE04 0F6614 0130+00 1/0 0/0 0/0 .text            procHangClimb__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangClimb() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    setHangGroundY();

    if (checkModeFlg(0x4000) && field_0x33d8 > field_0x3834.y - 50.0f) {
        return procLandInit(0.0f);
    }

    if (checkBowItem(mEquipItem)) {
        field_0x33dc = mUnderFrameCtrl[0].getFrame();
    }

    if (frameCtrl->checkPass(9.0f)) {
        daAlink_footData_c* footdata = mFootData2;

        for (int i = 0; i < 2; i++) {
            footdata->field_0x6 = 0;
            footdata->field_0x4 = 0;
            footdata->field_0x2 = 0;
            footdata++;
        }
    }

    if (frameCtrl->getFrame() >= 9.0f) {
        offModeFlg(0x4000);
    }

    if (checkAnmEnd(frameCtrl)) {
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wallCatch_c0::m.mClimbAnm.mCheckFrame) {
        onModeFlg(4);
        checkNextAction(1);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangClimb() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangClimb__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FBE04-800FC0D8 0F6744 02D4+00 3/3 0/0 0/0 .text            procHangWallCatchInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangWallCatchInit() {
    cXyz sp2C = field_0x34ec - current.pos;
    if (sp2C.absXZ() > field_0x18B0[0].GetWallR() + 20.0f) {
        return 0;
    }

    cXyz sp38;
    sp38.set(field_0x34ec.x - cM_ssin(field_0x306e) * 1.5f, field_0x34ec.y + 10.0f,
             field_0x34ec.z - cM_scos(field_0x306e) * 1.5f);
    mLinkGndChk.SetPos(&sp38);
    sp38.y = dComIfG_Bgsp().GroundCross(&mLinkGndChk);

    if (fabsf(sp38.y - field_0x34ec.y) > l_autoUpHeight) {
        return 0;
    }

    if (dComIfG_Bgsp().GetGroundCode(mLinkGndChk) == 6) {
        return procHangStartInit();
    }

    commonProcInit(PROC_HANG_WALL_CATCH);
    setSingleAnimeParam(ANM_CLIMB_TOP_SMALL, &daAlinkHIO_wallCatch_c0::m.mGrabBAnm);
    setBowHangAnime();
    current.pos.x = sp38.x;
    current.pos.y = sp38.y;
    current.pos.z = sp38.z;
    shape_angle.y = field_0x306e + 0x8000;
    current.angle.y = shape_angle.y;
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;

    dComIfGp_setPlayerStatus0(0, 0x100);
    voiceStart(Z2SE_AL_V_GRAB);
    setHangGroundY();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangWallCatchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangWallCatchInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FC0D8-800FC178 0F6A18 00A0+00 1/0 0/0 0/0 .text            procHangWallCatch__9daAlink_cFv */
int daAlink_c::procHangWallCatch() {
    setHangGroundY();

    if (field_0x33d8 > field_0x3834.y - lit_6895) {
        return procLandInit(FLOAT_LABEL(lit_6108));
    }

    if (checkAnmEnd(mUnderFrameCtrl) &&
        !procHangClimbInit(daAlinkHIO_wallCatch_c0::m.mClimbStartFrame))
    {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    return 1;
}

/* 800FC178-800FC240 0F6AB8 00C8+00 4/4 0/0 0/0 .text            procHangReadyInit__9daAlink_cFv */
int daAlink_c::procHangReadyInit() {
    if (field_0x2f91 == 3 && mEquipItem != NO_ITEM) {
        return procPreActionUnequipInit(0x5C, NULL);
    } else if (mProcID == PROC_PREACTION_UNEQUIP) {
        setFrontWallType();

        if (field_0x2f91 != 3) {
            return checkWaitAction();
        }
    }

    commonProcInit(PROC_HANG_READY);
    setSingleAnimeParam(ANM_CLIMB_JUMP, &daAlinkHIO_wallCatch_c0::m.mJumpAnm);
    mProcVar2.field_0x300c = field_0x306e + 0x8000;
    field_0x3198 = field_0x2f91;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    return 1;
}

/* 800FC240-800FC2F4 0F6B80 00B4+00 1/0 0/0 0/0 .text            procHangReady__9daAlink_cFv */
int daAlink_c::procHangReady() {
    cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, 2, 0x1000, 0x400);
    current.angle.y = shape_angle.y;

    if (checkAnmEnd(mUnderFrameCtrl)) {
        shape_angle.y = mProcVar2.field_0x300c;
        current.angle.y = shape_angle.y;

        int hang_init;
        if (field_0x3198 == 3) {
            hang_init = procClimbUpStartInit(1);
        } else if (field_0x3198 == 9) {
            hang_init = procHangStartInit();
        } else {
            hang_init = procHangWallCatchInit();
        }

        if (!hang_init) {
            procWaitInit();
        }
    }

    return 1;
}

/* 800FC2F4-800FC390 0F6C34 009C+00 2/2 0/0 0/0 .text            procHangLeverDownInit__9daAlink_cFv
 */
int daAlink_c::procHangLeverDownInit() {
    if (mEquipItem != NO_ITEM) {
        return procPreActionUnequipInit(PROC_HANG_LEVER_DOWN, field_0x27f4);
    }

    commonProcInit(PROC_HANG_LEVER_DOWN);
    field_0x280c.setData(field_0x27f4);
    setSingleAnimeParam(ANM_CLIMB_JUMP, &daAlinkHIO_wallCatch_c0::m.mJumpAnm);
    mProcVar2.field_0x300c = field_0x27f4->shape_angle.y + 0x8000;
    field_0x3198 = ANM_CLIMB_JUMP;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    return 1;
}

/* 800FC390-800FC568 0F6CD0 01D8+00 1/0 0/0 0/0 .text            procHangLeverDown__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHangLeverDown() {
    daObjYIblltray_c* lever = (daObjYIblltray_c*)field_0x280c.getActor();
    if (lever == NULL) {
        return checkNextAction(0);
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    if (field_0x3198 == ANM_CLIMB_JUMP) {
        if (checkAnmEnd(frameCtrl)) {
            shape_angle.y = mProcVar2.field_0x300c;
            current.angle.y = shape_angle.y;

            current.pos.set(lever->getHandlePos().x - cM_ssin(shape_angle.y) * 8.0f,
                            lever->getHandlePos().y + 8.0f,
                            lever->getHandlePos().z - cM_scos(shape_angle.y) * 8.0f);
            offModeFlg(1);
            onModeFlg(0x6042);

            setSingleAnimeParam(ANM_HANG_READY, &daAlinkHIO_wallCatch_c0::m.mGrabAAnm);
            voiceStart(Z2SE_AL_V_JUMP_HANG);
            field_0x2f99 = 0x50;
            field_0x3198 = ANM_HANG_READY;
        } else {
            cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, 2, 0x1000, 0x400);
            current.angle.y = shape_angle.y;
        }
    } else if (field_0x3198 == ANM_HANG_READY) {
        if (checkAnmEnd(frameCtrl)) {
            setSingleAnimeBase(ANM_PULL_IRONBALL_SWITCH);
            field_0x3198 = ANM_PULL_IRONBALL_SWITCH;
            lever->onHang();
        }
    } else if (checkAnmEnd(frameCtrl)) {
        checkNextAction(0);
    } else if (frameCtrl->getFrame() >= 33.0f) {
        field_0x2f92 = 4;
    } else if (frameCtrl->getFrame() >= 31.0f) {
        field_0x2f93 = 10;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangLeverDown() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangLeverDown__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FC568-800FC5A4 0F6EA8 003C+00 1/0 0/0 0/0 .text changeDragonActor__9daAlink_cFP10fopAc_ac_c
 */
void daAlink_c::changeDragonActor(fopAc_ac_c* param_0) {
    if (field_0x280c.getActor() != NULL && fopAcM_GetName(field_0x280c.getActor()) == PROC_B_DR) {
        field_0x280c.setData(param_0);
    }
}

/* 800FC5A4-800FC6B4 0F6EE4 0110+00 1/1 0/0 0/0 .text            setDragonHangPos__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::setDragonHangPos() {
    fopAc_ac_c* dragon = field_0x280c.getActor();
    if (dragon == NULL) {
        return 0;
    }

    if (fopAcM_GetName(dragon) == PROC_B_DR) {
        mDoMtx_stack_c::copy(((daB_DR_c*)dragon)->getMtx());
    } else {
        mDoMtx_stack_c::copy(((daB_DRE_c*)dragon)->getMtx());
    }

    mDoMtx_stack_c::multVecZero(&current.pos);
    mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &shape_angle);

    cXyz sp18;
    mDoMtx_stack_c::multVecSR(&cXyz::BaseY, &sp18);
    if (sp18.y < 0.0f) {
        shape_angle.y += 0x8000;
        shape_angle.x = 0x8000 - shape_angle.x;
        shape_angle.z *= -1;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setDragonHangPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setDragonHangPos__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FC6B4-800FC748 0F6FF4 0094+00 1/1 0/0 0/0 .text            setOctaIealHangPos__9daAlink_cFv */
int daAlink_c::setOctaIealHangPos() {
    b_ob_class* boss = (b_ob_class*)field_0x280c.getActor();
    if (boss == NULL) {
        return 0;
    }

    mDoMtx_stack_c::copy(boss->mBodyParts[0].mpMorf->getModel()->getAnmMtx(0));
    mDoMtx_stack_c::transM(FLOAT_LABEL(lit_6108), lit_24400, lit_24401);
    mDoMtx_stack_c::multVecZero(&current.pos);
    mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &shape_angle);
    return 1;
}

/* 800FC748-800FC77C 0F7088 0034+00 2/2 0/0 0/0 .text            setBossBodyHangPos__9daAlink_cFv */
int daAlink_c::setBossBodyHangPos() {
    if (field_0x32cc != 0) {
        return setDragonHangPos();
    } else {
        return setOctaIealHangPos();
    }
}

/* 800FC77C-800FC870 0F70BC 00F4+00 1/1 0/0 0/0 .text
 * procBossBodyHangInit__9daAlink_cFP10fopAc_ac_c               */
int daAlink_c::procBossBodyHangInit(fopAc_ac_c* param_0) {
    commonProcInit(PROC_BOSS_BODY_HANG);

    if (fopAcM_GetName(param_0) == PROC_B_DR) {
        field_0x32cc = 1;
        setSingleAnimeBase(ANM_DRAGON_HANG);
        setJumpMode();
    } else {
        field_0x32cc = 0;
        setSingleAnimeBase(ANM_MORPHEEL_HANG_MISS);
    }

    field_0x3198 = 0x169;
    deleteEquipItem(TRUE, FALSE);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    setSpecialGravity(tmp_0, maxFallSpeed, 0);
    speed.y = FLOAT_LABEL(lit_6108);

    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = 0;
    mProcVar3.field_0x300e.y = 0;
    mProcVar0.field_0x3008 = 0;
    mProcVar3.field_0x300e.z = 0;
    field_0x3080 = 0;

    field_0x280c.setData(param_0);
    setBossBodyHangPos();

    onEndResetFlg1(ERFLG1_GANON_FINISH);
    return 1;
}

/* 800FC870-800FCF58 0F71B0 06E8+00 1/0 0/0 0/0 .text            procBossBodyHang__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procBossBodyHang() {
    fopEn_enemy_c* boss = (fopEn_enemy_c*)field_0x280c.getActor();

    if (field_0x32cc != 0) {
        setJumpMode();
    }

    if (mProcVar3.field_0x300e.x != 0 || !setBossBodyHangPos()) {
        if (field_0x32cc != 0) {
            if (mProcVar3.field_0x300e.x < 0) {
                return procBackJumpInit(0);
            } else {
                field_0x3102 = shape_angle.y;
                return procCoLargeDamageInit(-6, 1, 0, 0, NULL, 0);
            }
        } else {
            field_0x3408 = 0.0f;
            field_0x340c = 0.0f;
            field_0x2ffe = shape_angle.y;
            field_0x318c = 0;
            return procOctaIealSpitInit();
        }
    } else {
        if (boss->checkDownFlg() && mProcVar2.field_0x300c != 0) {
            setDoStatusEmphasys(0x30);
        }

        daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

        if (checkAnmEnd(frameCtrl)) {
            if (field_0x3198 != 0x16D && field_0x3198 != 0x16E) {
                mProcVar2.field_0x300c = 1;
            }

            if (field_0x3198 == 0x169) {
                if (field_0x32cc != 0) {
                    setSingleAnimeBase(ANM_DRAGON_HANG_WAIT);
                } else {
                    setSingleAnimeBase(ANM_MORPHEEL_HANG_WAIT);
                }

                field_0x3198 = 0x16A;
            }
        }

        if (mProcVar0.field_0x3008 != 0 && field_0x3198 != 0x16B) {
            if (field_0x32cc != 0) {
                setSingleAnimeBase(ANM_DRAGON_HANG_WAIT_B);
            } else {
                setSingleAnimeBase(ANM_MORPHEEL_HANG_WAIT_B);
            }

            field_0x3198 = 0x16B;
            mProcVar0.field_0x3008 = 1;
            mProcVar2.field_0x300c = 0;

            if (mEquipItem == 0x103) {
                mProcVar3.field_0x300e.y = 2;
            } else {
                mProcVar3.field_0x300e.y = 0xFE;
            }
        }

        if (mProcVar2.field_0x300c != 0 &&
            ((dComIfGp_getDoStatus() == 0x30 && doTrigger()) || swordSwingTrigger()))
        {
            if (mEquipItem != 0x103) {
                setSwordModel();
            }

            if (dComIfGp_getDoStatus() == 0x30 && doTrigger()) {
                if (field_0x32cc != 0) {
                    setSingleAnimeBaseMorf(ANM_DRAGON_CUT_FINAL, 3.0f);
                } else {
                    setSingleAnimeBaseMorf(ANM_MORPHEEL_CUT_FINAL, 3.0f);
                }

                field_0x3198 = 0x16E;
                mProcVar3.field_0x300e.y = 0;
                field_0x3478 = 10000.0f;
                field_0x347c = 61.0f;
                setCutType(CUT_TYPE_FINISH_STAB);
                mProcVar1.field_0x300a = 3;
            } else {
                setCutType(CUT_TYPE_NM_STAB);
                mProcVar3.field_0x300e.z++;

                if (mProcVar3.field_0x300e.z == 4) {
                    if (field_0x32cc != 0) {
                        setSingleAnimeBase(ANM_DRAGON_CUT_B);
                    } else {
                        setSingleAnimeBase(ANM_MORPHEEL_CUT_B);
                    }

                    field_0x3198 = 0x16D;
                    field_0x3478 = 10000.0f;
                    field_0x347c = 12.0f;
                    mProcVar3.field_0x300e.y = 2;
                    mProcVar1.field_0x300a = 3;
                } else {
                    if (field_0x32cc != 0) {
                        setSingleAnimeParam(ANM_DRAGON_CUT, &daAlinkHIO_cut_c0::m.mStabAnm);
                    } else {
                        setSingleAnimeParam(ANM_MORPHEEL_CUT, &daAlinkHIO_cut_c0::m.mStabAnm);
                    }

                    field_0x3198 = 0x16C;
                    field_0x3478 = daAlinkHIO_cut_c0::m.mStabAnm.mCheckFrame;
                    field_0x347c = 10.0f;
                    mProcVar3.field_0x300e.y = 0;
                    mProcVar1.field_0x300a = 1;
                }
            }

            frameCtrl->setRate(1.0f);
            mProcVar2.field_0x300c = 0;
        } else if (field_0x3198 == 0x16C || field_0x3198 == 0x16D || field_0x3198 == 0x16E) {
            if (checkAnmEnd(frameCtrl)) {
                if (field_0x3198 != 0x16C) {
                    mProcVar0.field_0x3008 = 1;
                }
            } else if (frameCtrl->getFrame() > field_0x3478) {
                mProcVar2.field_0x300c = 1;
            } else if (frameCtrl->checkPass(field_0x347c)) {
                cXyz sp30 = mSwordTopPos - field_0x3498;
                csXyz sp38(cM_atan2s(sp30.y, sp30.absXZ()), cM_atan2s(-sp30.x, -sp30.z), 0);

                boss->onCutDownHitFlg();
                dComIfGp_setHitMark(mProcVar1.field_0x300a, NULL, &mLeftHandPos, &sp38, NULL, 0);
            } else if (field_0x3198 == 0x16D) {
                if (frameCtrl->getFrame() >= 59.0f) {
                    field_0x2f93 = 9;
                } else if (frameCtrl->getFrame() >= 51.0f) {
                    field_0x2f93 = 10;
                } else if (frameCtrl->getFrame() >= 3.0f) {
                    field_0x2f93 = 5;
                }
            } else if (field_0x3198 == 0x16E) {
                if (frameCtrl->getFrame() >= 148.0f) {
                    field_0x2f93 = 9;
                } else if (frameCtrl->getFrame() >= 136.0f) {
                    field_0x2f93 = 10;
                } else if (frameCtrl->getFrame() >= 32.0f) {
                    field_0x2f93 = 5;
                }

                if (frameCtrl->getFrame() >= 117.0f) {
                    mProcVar3.field_0x300e.y = 0;
                } else if (frameCtrl->getFrame() >= 105.0f) {
                    mProcVar3.field_0x300e.y = 0xFE;
                } else {
                    mProcVar3.field_0x300e.y = 0;
                }
            }
        }
    }

    onEndResetFlg1(ERFLG1_GANON_FINISH);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBossBodyHang() {
    nofralloc
#include "asm/d/a/d_a_alink/procBossBodyHang__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FCF58-800FCF84 0F7898 002C+00 2/2 0/0 0/0 .text            getLadderUnitCount__9daAlink_cCFv
 */
int daAlink_c::getLadderUnitCount() const {
    return (current.pos.y - field_0x34ec.y) * lit_24600;
}

/* 800FCF84-800FD048 0F78C4 00C4+00 1/1 0/0 0/0 .text            setLadderInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::setLadderInit() {
    onNoResetFlg3(FLG3_UNK_400000);

    if (checkModeFlg(0x40000)) {
        setLadderPos(getLadderUnitCount() - 2);

        while (mWaterY - current.pos.y > daAlinkHIO_swim_c0::m.mInitHeight) {
            current.pos.y += 37.5f;
        }

        procLadderMoveInit(1, 0, &current.pos);
        field_0x33b0 = l_ladderAnmBaseTransY;
        field_0x2060->initOldFrameMorf(5.0f, 0, 35);
        return 1;
    }

    return procLadderUpStartInit();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setLadderInit() {
    nofralloc
#include "asm/d/a/d_a_alink/setLadderInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FD048-800FD1F0 0F7988 01A8+00 1/1 0/0 0/0 .text            setLadderPosInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setLadderPosInit() {
    cXyz sp20;
    cXyz sp2C;
    cXyz sp38;
    dComIfG_Bgsp().GetTriPnt(mLinkLinChk, &sp20, &sp2C, &sp38);
    mPolyInfo1.SetPolyInfo(mLinkLinChk);

    if (fabsf(sp20.y - sp2C.y) < 1.0f) {
        field_0x34ec.x = (sp20.x + sp2C.x) * 0.5f;

        if (sp38.y > sp20.y) {
            field_0x34ec.y = sp20.y;
            field_0x33c0 = sp38.y;
        } else {
            field_0x34ec.y = sp38.y;
            field_0x33c0 = sp20.y;
        }

        field_0x34ec.z = (sp20.z + sp2C.z) * 0.5f;
    } else if (fabsf(sp20.y - sp38.y) < 1.0f) {
        field_0x34ec.x = (sp20.x + sp38.x) * 0.5f;

        if (sp2C.y > sp20.y) {
            field_0x34ec.y = sp20.y;
            field_0x33c0 = sp2C.y;
        } else {
            field_0x34ec.y = sp2C.y;
            field_0x33c0 = sp20.y;
        }

        field_0x34ec.z = (sp20.z + sp38.z) * 0.5f;
    } else {
        field_0x34ec.x = (sp2C.x + sp38.x) * 0.5f;

        if (sp20.y > sp2C.y) {
            field_0x34ec.y = sp2C.y;
            field_0x33c0 = sp20.y;
        } else {
            field_0x34ec.y = sp20.y;
            field_0x33c0 = sp2C.y;
        }

        field_0x34ec.z = (sp2C.z + sp38.z) * 0.5f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setLadderPosInit() {
    nofralloc
#include "asm/d/a/d_a_alink/setLadderPosInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FD1F0-800FD288 0F7B30 0098+00 2/2 0/0 0/0 .text            setLadderPos__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setLadderPos(int param_0) {
    f32 var_f31 = cM_ssin(field_0x306e);
    f32 var_f30 = cM_scos(field_0x306e);

    shape_angle.y = field_0x306e + 0x8000;
    current.angle.y = shape_angle.y;
    current.pos.set(field_0x34ec.x + var_f31 * 38.0f,
                    (field_0x34ec.y + (f32)param_0 * 37.5f) - 5.5f,
                    field_0x34ec.z + var_f30 * 38.0f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setLadderPos(int param_0){nofralloc
#include "asm/d/a/d_a_alink/setLadderPos__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FD288-800FD2AC 0F7BC8 0024+00 2/2 0/0 0/0 .text            getLadderMoveAnmSpeed__9daAlink_cFv
 */
f32 daAlink_c::getLadderMoveAnmSpeed() {
    return getAnmSpeedStickRate(daAlinkHIO_ladder_c0::m.field_0x48,
                                daAlinkHIO_ladder_c0::m.field_0x4C);
}

/* 800FD2AC-800FD4A8 0F7BEC 01FC+00 3/3 0/0 0/0 .text            changeLadderMoveProc__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::changeLadderMoveProc(int param_0) {
    cLib_addCalc(&current.pos.x, field_0x37c8.x, 0.5f, 0.5f, 0.05f);
    cLib_addCalc(&current.pos.y, field_0x37c8.y, 0.5f, 0.5f, 0.05f);
    cLib_addCalc(&current.pos.z, field_0x37c8.z, 0.5f, 0.5f, 0.05f);

    if (checkEquipAnime()) {
        return 0;
    }

    if (checkInputOnR()) {
        int temp_r3 = abs((s16)(field_0x2fe2 - shape_angle.y));
        if (temp_r3 > 0x3000 && temp_r3 < 0x5000) {
            return 0;
        }

        cXyz sp2C;
        cXyz sp38;
        sp2C.x = current.pos.x;
        sp2C.z = current.pos.z;

        BOOL var_r30;
        if (temp_r3 < 0x4000) {
            sp2C.y = current.pos.y + field_0x598 + 37.5f;
            var_r30 = false;
        } else {
            sp2C.y = (current.pos.y - 37.5f) - 15.0f;
            var_r30 = true;
        }

        sp38.x = sp2C.x + cM_ssin(shape_angle.y) * 50.0f;
        sp38.z = sp2C.z + cM_scos(shape_angle.y) * 50.0f;
        sp38.y = sp2C.y;

        if (!commonLineCheck(&sp2C, &sp38)) {
            if (temp_r3 < 0x4000) {
                procLadderUpEndInit(param_0);
            } else {
                procLadderDownEndInit(param_0);
            }
        } else if (dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 4) {
            if (temp_r3 >= 0x4000) {
                procLadderDownEndInit(param_0);
            }
        } else {
            procLadderMoveInit(param_0, var_r30, &field_0x37c8);
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::changeLadderMoveProc(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeLadderMoveProc__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FD4A8-800FD5E4 0F7DE8 013C+00 5/5 0/0 0/0 .text setMoveBGLadderCorrect__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::setMoveBGLadderCorrect() {
    if (dComIfG_Bgsp().ChkPolySafe(mPolyInfo1) && dComIfG_Bgsp().ChkMoveBG(mPolyInfo1)) {
        dComIfG_Bgsp().MoveBgTransPos(mPolyInfo1, true, &current.pos, &current.angle, &shape_angle);
        dComIfG_Bgsp().MoveBgTransPos(mPolyInfo1, true, &field_0x37c8, NULL, NULL);
    }

    cXyz sp28;
    sp28.set(field_0x37c8.x + cM_ssin(current.angle.y) * 50.0f, field_0x37c8.y,
             field_0x37c8.z + cM_scos(current.angle.y) * 50.0f);

    if (!commonLineCheck(&field_0x37c8, &sp28) || dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 4) {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    mPolyInfo1.SetPolyInfo(mLinkLinChk);
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setMoveBGLadderCorrect() {
    nofralloc
#include "asm/d/a/d_a_alink/setMoveBGLadderCorrect__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FD5E4-800FD648 0F7F24 0064+00 8/8 0/0 0/0 .text            checkLadderFall__9daAlink_cFv */
int daAlink_c::checkLadderFall() {
    setDoStatus(0x33);

    if (doTrigger()) {
        field_0x2f99 = 0;
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    return 0;
}

/* 800FD648-800FD7B0 0F7F88 0168+00 2/2 0/0 0/0 .text            procLadderUpStartInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procLadderUpStartInit() {
    if (mEquipItem != NO_ITEM) {
        return procPreActionUnequipInit(PROC_LADDER_UP_START, NULL);
    }

    commonProcInit(PROC_LADDER_UP_START);
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    speedF = 0.0f;

    setSingleAnimeBaseSpeed(ANM_LADDER_UP_START, daAlinkHIO_ladder_c0::m.field_0x28,
                            daAlinkHIO_ladder_c0::m.field_0x2C);
    field_0x2f99 = 0x10;
    field_0x3588 = l_waitBaseAnime;
    dComIfGp_setPlayerStatus0(0, 0x2000000);

    f32 var_f31 = cM_ssin(field_0x306e);
    f32 var_f30 = cM_scos(field_0x306e);

    current.pos.x = field_0x34ec.x + var_f31 * 40.0f;
    current.pos.y = field_0x34ec.y;
    current.pos.z = field_0x34ec.z + var_f30 * 40.0f;

    shape_angle.y = field_0x306e + 0x8000;
    current.angle.y = shape_angle.y;

    field_0x37c8.x = field_0x34ec.x + var_f31 * 38.0f;
    field_0x37c8.y = field_0x34ec.y + 32.0f;
    field_0x37c8.z = field_0x34ec.z + var_f30 * 38.0f;

    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 1;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLadderUpStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLadderUpStartInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FD7B0-800FD824 0F80F0 0074+00 1/0 0/0 0/0 .text            procLadderUpStart__9daAlink_cFv */
int daAlink_c::procLadderUpStart() {
    if (setMoveBGLadderCorrect()) {
        return 1;
    }

    field_0x2f99 = 6;

    if (checkAnmEnd(mUnderFrameCtrl) && !checkLadderFall()) {
        changeLadderMoveProc(1);
    }

    return 1;
}

/* 800FD824-800FD8E8 0F8164 00C4+00 2/2 0/0 0/0 .text            procLadderUpEndInit__9daAlink_cFi
 */
int daAlink_c::procLadderUpEndInit(int param_0) {
    commonProcInit(PROC_LADDER_UP_END);

    daAlink_ANM anm_id = param_0 != 0 ? ANM_LADDER_UP_END_LEFT : ANM_LADDER_UP_END_RIGHT;
    setSingleAnimeBaseSpeed(anm_id, daAlinkHIO_ladder_c0::m.field_0x30,
                            daAlinkHIO_ladder_c0::m.field_0x34);
    field_0x2f99 = 14;
    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    speedF = tmp_0;

    field_0x30a0 = -0x0800;
    field_0x33f4 = lit_6041;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 1;
    dComIfGp_setPlayerStatus0(0, 0x2000000);
    return 1;
}

/* 800FD8E8-800FD9CC 0F8228 00E4+00 1/0 0/0 0/0 .text            procLadderUpEnd__9daAlink_cFv */
int daAlink_c::procLadderUpEnd() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (setMoveBGLadderCorrect()) {
        return 1;
    }

    if (checkAnmEnd(frame_ctrl)) {
        checkNextAction(0);
    } else if (!(frame_ctrl->getFrame() > daAlinkHIO_ladder_c0::m.field_0x58) ||
               !checkNextAction(1))
    {
        if (frame_ctrl->getFrame() >= lit_15341) {
            mProcVar2.field_0x300c = 0;
            mProcVar3.field_0x300e.y = 0;
        } else if (frame_ctrl->getFrame() >= lit_17382) {
            field_0x30a0 = 0;
            field_0x33f4 = FLOAT_LABEL(lit_6108);
        }

        field_0x2f99 = 6;
    }

    return 1;
}

/* 800FD9CC-800FDB74 0F830C 01A8+00 2/2 0/0 0/0 .text procLadderDownStartInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procLadderDownStartInit() {
    onNoResetFlg3(FLG3_UNK_400000);

    if (mEquipItem != NO_ITEM) {
        return procPreActionUnequipInit(PROC_LADDER_DOWN_START, NULL);
    }

    commonProcInit(PROC_LADDER_DOWN_START);
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    speedF = 0.0f;

    shape_angle.y = field_0x306e + 0x8000;
    current.angle.y = field_0x306e;

    setSingleAnimeBaseSpeed(ANM_LADDER_DOWN_START, daAlinkHIO_ladder_c0::m.field_0x38,
                            daAlinkHIO_ladder_c0::m.field_0x3C);
    field_0x2f99 = 0x10;
    field_0x3588 = l_waitBaseAnime;
    dComIfGp_setPlayerStatus0(0, 0x2000000);
    setOldRootQuaternion(0, 0x8000, 0);

    shape_angle.y += 0x8000;
    current.angle.y = shape_angle.y;

    f32 var_f31 = cM_ssin(field_0x306e);
    f32 var_f30 = cM_scos(field_0x306e);

    current.pos.x = field_0x34ec.x + var_f31 * 40.0f;
    current.pos.y = field_0x34ec.y;
    current.pos.z = field_0x34ec.z + var_f30 * 40.0f;

    field_0x37c8.x = field_0x34ec.x - var_f31 * 48.0f;
    field_0x37c8.y = (field_0x34ec.y - 187.5f) + 32.0f;
    field_0x37c8.z = field_0x34ec.z - var_f30 * 48.0f;

    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.y = 0;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLadderDownStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLadderDownStartInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FDB74-800FDC18 0F84B4 00A4+00 1/0 0/0 0/0 .text            procLadderDownStart__9daAlink_cFv
 */
int daAlink_c::procLadderDownStart() {
    if (setMoveBGLadderCorrect()) {
        return 1;
    }

    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;
    field_0x2f99 = 6;

    if (checkAnmEnd(frame_ctrl)) {
        if (!checkLadderFall()) {
            changeLadderMoveProc(0);
        }
    } else if (frame_ctrl->getFrame() >= lit_10286) {
        mProcVar2.field_0x300c = 1;
        mProcVar3.field_0x300e.y = 1;
    }

    return 1;
}

/* 800FDC18-800FDCCC 0F8558 00B4+00 1/1 0/0 0/0 .text            procLadderDownEndInit__9daAlink_cFi
 */
int daAlink_c::procLadderDownEndInit(int param_0) {
    commonProcInit(PROC_LADDER_DOWN_END);

    daAlink_ANM anm_id = param_0 != 0 ? ANM_LADDER_DOWN_END_LEFT : ANM_LADDER_DOWN_END_RIGHT;
    setSingleAnimeBaseSpeed(anm_id, daAlinkHIO_ladder_c0::m.field_0x40,
                            daAlinkHIO_ladder_c0::m.field_0x44);
    field_0x2f99 = 14;
    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);

    field_0x30a0 = 0x2800;
    field_0x33f4 = lit_6040;
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.y = 0;
    dComIfGp_setPlayerStatus0(0, 0x2000000);
    return 1;
}

/* 800FDCCC-800FDD90 0F860C 00C4+00 1/0 0/0 0/0 .text            procLadderDownEnd__9daAlink_cFv */
int daAlink_c::procLadderDownEnd() {
    if (setMoveBGLadderCorrect()) {
        return 1;
    }

    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (checkAnmEnd(frame_ctrl)) {
        checkNextAction(0);
    } else if (!(frame_ctrl->getFrame() > daAlinkHIO_ladder_c0::m.field_0x54) ||
               !checkNextAction(1))
    {
        if (frame_ctrl->getFrame() >= lit_17382) {
            field_0x30a0 = 0;
            field_0x33f4 = FLOAT_LABEL(lit_6108);
        }

        field_0x2f99 = 6;
    }

    return 1;
}

/* 800FDD90-800FDF50 0F86D0 01C0+00 3/3 0/0 0/0 .text procLadderMoveInit__9daAlink_cFiiP4cXyz */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procLadderMoveInit(int param_0, int param_1, cXyz* param_2) {
    BOOL var_r28 = checkModeFlg(2) ? true : false;
    f32 anm_speed = getLadderMoveAnmSpeed();

    commonProcInit(PROC_LADDER_MOVE);

    if (!var_r28) {
        if (!param_1) {
            field_0x37c8.y = param_2->y + 37.5f;
        } else {
            anm_speed *= -1.0f;
            field_0x37c8.y = param_2->y - 37.5f;
        }
    } else {
        field_0x37c8.y = param_2->y;
    }

    field_0x37c8.x = param_2->x;
    field_0x37c8.z = param_2->z;

    daAlink_ANM anm;
    if (param_0) {
        if (var_r28) {
            field_0x3198 = 1;
        } else {
            field_0x3198 = 0;
        }

        if (anm_speed >= 0.0f) {
            anm = ANM_LADDER_LEFT_TO_RIGHT;
        } else {
            anm = ANM_LADDER_RIGHT_TO_LEFT;
        }
    } else {
        field_0x3198 = 1;

        if (anm_speed >= 0.0f) {
            anm = ANM_LADDER_RIGHT_TO_LEFT;
        } else {
            anm = ANM_LADDER_LEFT_TO_RIGHT;
        }
    }

    setSingleAnimeBaseSpeed(anm, anm_speed, daAlinkHIO_ladder_c0::m.field_0x50);
    field_0x2f98 = param_1;

    if (!param_1) {
        field_0x30a0 = -0x800;
        field_0x33f4 = -1.0f;
    } else {
        field_0x30a0 = 0x2800;
        field_0x33f4 = 1.0f;
    }

    field_0x2f99 = 14;
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    speedF = 0.0f;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 1;
    dComIfGp_setPlayerStatus0(0, 0x2000000);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLadderMoveInit(int param_0, int param_1, cXyz* param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procLadderMoveInit__9daAlink_cFiiP4cXyz.s"
}
#pragma pop
#endif

/* 800FDF50-800FE010 0F8890 00C0+00 1/0 0/0 0/0 .text            procLadderMove__9daAlink_cFv */
int daAlink_c::procLadderMove() {
    if (setMoveBGLadderCorrect()) {
        return 1;
    }

    field_0x2f99 = 6;
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (!checkLadderFall()) {
        if (checkAnmEnd(frame_ctrl)) {
            changeLadderMoveProc(field_0x3198);
        } else if (frame_ctrl->getRate() != FLOAT_LABEL(lit_6108)) {
            f32 anm_speed = getLadderMoveAnmSpeed();
            if (frame_ctrl->getRate() < FLOAT_LABEL(lit_6108)) {
                anm_speed *= lit_6041;
            }

            setWaterInAnmRate(frame_ctrl, anm_speed);
        }
    }

    return 1;
}

/* 800FE010-800FE034 0F8950 0024+00 3/3 0/0 0/0 .text getClimbMoveUpDownAnmSpeed__9daAlink_cFv */
f32 daAlink_c::getClimbMoveUpDownAnmSpeed() {
    return getAnmSpeedStickRate(daAlinkHIO_ladder_c0::m.field_0x64,
                                daAlinkHIO_ladder_c0::m.field_0x68);
}

/* 800FE034-800FE058 0F8974 0024+00 4/4 0/0 0/0 .text getClimbMoveSideAnmSpeed__9daAlink_cFv */
f32 daAlink_c::getClimbMoveSideAnmSpeed() {
    return getAnmSpeedStickRate(daAlinkHIO_ladder_c0::m.field_0x5C,
                                daAlinkHIO_ladder_c0::m.field_0x60);
}

/* 800FE058-800FE114 0F8998 00BC+00 9/9 0/0 0/0 .text checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
 */
BOOL daAlink_c::checkClimbCode(cBgS_PolyInfo& i_poly) {
    dBgW_Base* bgw_p = dComIfG_Bgsp().GetBgWBasePointer(i_poly);

    return ((dComIfG_Bgsp().GetWallCode(i_poly) == 1 && fabsf(dBgS_GetNY(i_poly)) <= lit_6021) &&
            bgw_p != NULL) &&
           bgw_p->ChkPushPullOk();
}

/* 800FE114-800FE174 0F8A54 0060+00 1/1 0/0 0/0 .text            setClimbInit__9daAlink_cFv */
void daAlink_c::setClimbInit() {
    onNoResetFlg3(FLG3_UNK_400000);

    if (checkModeFlg(0x40000)) {
        shape_angle.y = field_0x306e + 0x8000;
        current.pos.y -= lit_23595;
        setClimbStartNotGround();
    } else {
        procHangReadyInit();
    }
}

/* 800FE174-800FE3C4 0F8AB4 0250+00 8/8 0/0 0/0 .text            setClimbShapeOffset__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setClimbShapeOffset() {
    cXyz sp54;
    cXyz sp60;
    cXyz sp6C;
    cXyz sp78;

    s16 temp_r30 = shape_angle.y;
    f32 var_f29 = cM_ssin(temp_r30);
    f32 var_f28 = cM_scos(temp_r30);

    sp6C.x = current.pos.x;
    sp6C.z = current.pos.z;

    if (checkModeFlg(0x10000)) {
        sp6C.y = current.pos.y + field_0x598 * 0.5f;
    } else {
        sp6C.y = current.pos.y - 10.0f;
    }

    sp54.set(sp6C.x - var_f29 * 30.0f, sp6C.y, sp6C.z - var_f28 * 30.0f);
    sp60.set(sp6C.x + var_f29 * 55.0f, sp6C.y, sp6C.z + var_f28 * 55.0f);

    f32 var_f31 = var_f28 * 20.0f;
    f32 var_f30 = var_f29 * -20.0f;
    sp54.x += var_f31;
    sp54.z += var_f30;
    sp60.x += var_f31;
    sp60.z += var_f30;

    if (commonLineCheck(&sp54, &sp60) && (!checkModeFlg(0x10000) || checkClimbCode(mLinkLinChk))) {
        sp78 = mLinkLinChk.i_GetCross();
    } else {
        field_0x308c = 0;
        return;
    }

    sp54.x -= var_f31 * 2.0f;
    sp54.z -= var_f30 * 2.0f;
    sp60.x -= var_f31 * 2.0f;
    sp60.z -= var_f30 * 2.0f;

    if (!commonLineCheck(&sp54, &sp60) || (checkModeFlg(0x10000) && !checkClimbCode(mLinkLinChk))) {
        field_0x308c = 0;
    } else {
        sp78 -= mLinkLinChk.i_GetCross();
        cLib_addCalcAngleS(&field_0x308c, (s16)((sp78.atan2sX_Z() - 0x4000) - shape_angle.y), 5,
                           2000, 400);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setClimbShapeOffset() {
    nofralloc
#include "asm/d/a/d_a_alink/setClimbShapeOffset__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FE3C4-800FE438 0F8D04 0074+00 1/1 0/0 0/0 .text getClimbDirectionFromAngle__9daAlink_cFv */
int daAlink_c::getClimbDirectionFromAngle() {
    s16 angle = field_0x2fe2 - shape_angle.y;
    if (abs(angle) > 0x7000) {
        return DIR_BACKWARD;
    }

    if (angle >= 0x1000) {
        return DIR_LEFT;
    }

    if (angle <= -0x1000) {
        return DIR_RIGHT;
    }

    return DIR_FORWARD;
}

/* 800FE438-800FE5A0 0F8D78 0168+00 3/3 0/0 0/0 .text            changeClimbMoveProc__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::changeClimbMoveProc(int param_0) {
    s16 temp_r29 = field_0x308c;

    if (checkInputOnR()) {
        field_0x2f98 = getClimbDirectionFromAngle();
        if (field_0x2f98 == DIR_FORWARD || field_0x2f98 == DIR_BACKWARD) {
            cXyz sp44(current.pos.x - cM_ssin(shape_angle.y) * 15.0f, current.pos.y + field_0x598,
                      current.pos.z - cM_scos(shape_angle.y) * 15.0f);
            mLinkRoofChk.i_SetPos(sp44);

            f32 roof_y = dComIfG_Bgsp().RoofChk(&mLinkRoofChk);
            if (field_0x2f98 == DIR_FORWARD && roof_y < sp44.y + 110.0f &&
                dComIfG_Bgsp().GetMonkeyBarsCode(mLinkRoofChk))
            {
                procClimbToRoofInit();
            } else if (checkClimbMoveUpDownProc(field_0x2f98)) {
                procClimbMoveUpDownInit(param_0);
            }
        } else if (checkClimbMoveSideProc(field_0x2f98)) {
            procClimbMoveSideInit();
        }
    } else {
        procClimbWaitInit(1, 0);
    }

    field_0x308c = temp_r29;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeClimbMoveProc(int param_0){nofralloc
#include "asm/d/a/d_a_alink/changeClimbMoveProc__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FE5A0-800FE6E8 0F8EE0 0148+00 2/2 0/0 0/0 .text checkClimbMoveUpDownProc__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::checkClimbMoveUpDownProc(int i_direction) {
    f32 var_f31 = cM_ssin(shape_angle.y);
    f32 var_f30 = cM_scos(shape_angle.y);

    if (i_direction == DIR_BACKWARD) {
        return true;
    }

    cXyz sp38(current.pos.x - var_f31 * 30.0f, current.pos.y + field_0x598 + 30.0f + 5.0f,
              current.pos.z - var_f30 * 30.0f);
    cXyz sp44(sp38.x + var_f31 * 80.0f, sp38.y, sp38.z + var_f30 * 80.0f);

    BOOL var_r30 = commonLineCheck(&sp38, &sp44);
    if (var_r30 && !dBgS_CheckBWallPoly(mLinkLinChk)) {
        var_r30 = false;
    }

    if (!var_r30 || !checkClimbCode(mLinkLinChk)) {
        if (checkClimbRoof(sp38.y) || (!var_r30 && checkClimbGround(&sp44, sp38.y))) {
            return true;
        }

        return false;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkClimbMoveUpDownProc(int param_0){nofralloc
#include "asm/d/a/d_a_alink/checkClimbMoveUpDownProc__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FE6E8-800FE868 0F9028 0180+00 2/2 0/0 0/0 .text checkClimbMoveSideProc__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::checkClimbMoveSideProc(int i_direction) {
    f32 var_f31 = cM_ssin(shape_angle.y);
    f32 var_f30 = cM_scos(shape_angle.y);

    cXyz sp40(current.pos.x - var_f31 * 30.0f, current.pos.y + field_0x598 * 0.5f,
              current.pos.z - var_f30 * 30.0f);

    if (i_direction == DIR_LEFT) {
        sp40.x += var_f30 * 40.0f;
        sp40.z -= var_f31 * 40.0f;
    } else {
        sp40.x -= var_f30 * 40.0f;
        sp40.z += var_f31 * 40.0f;
    }

    cXyz sp4C(sp40.x + var_f31 * 230.0f, sp40.y, sp40.z + var_f30 * 230.0f);

    if (!commonLineCheck(&sp40, &sp4C) || !checkClimbCode(mLinkLinChk)) {
        return false;
    }

    cXyz sp58(current.pos);
    if (checkBgClimbMove(i_direction)) {
        current.pos = sp58;
        return false;
    }

    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkClimbMoveSideProc(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkClimbMoveSideProc__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FE868-800FEB90 0F91A8 0328+00 6/6 0/0 0/0 .text            setMoveBGClimbCorrect__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::setMoveBGClimbCorrect() {
    if (dComIfG_Bgsp().ChkPolySafe(mPolyInfo1) && dComIfG_Bgsp().ChkMoveBG(mPolyInfo1)) {
        dComIfG_Bgsp().MoveBgTransPos(mPolyInfo1, true, &current.pos, &current.angle, &shape_angle);
    }

    if (mProcID == PROC_CLIMB_DOWN_START && !checkAnmEnd(mUnderFrameCtrl)) {
        return 0;
    }

    if (mLinkAcch.i_ChkGroundHit()) {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    f32 var_f31 = cM_ssin(shape_angle.y);
    f32 var_f30 = cM_scos(shape_angle.y);

    cXyz sp50(current.pos.x - var_f31 * 30.0f, current.pos.y + field_0x598 * 0.5f,
              current.pos.z - var_f30 * 30.0f);
    cXyz sp5C(current.pos.x + var_f31 * 200.0f, sp50.y, current.pos.z + var_f30 * 200.0f);
    cXyz sp68(current.pos.x - var_f31 * 30.0f, current.pos.y, current.pos.z - var_f30 * 30.0f);

    mLinkGndChk.SetPos(&sp68);

    if (mProcID == PROC_CLIMB_MOVE_UPDOWN) {
        sp5C.y = sp50.y = current.pos.y + field_0x598 * 0.9f;

        if (!commonLineCheck(&sp50, &sp5C) || !checkClimbCode(mLinkLinChk)) {
            return procClimbWaitInit(1, 0);
        }

        sp5C.y = sp50.y = current.pos.y + field_0x598 * 0.5f;
    }

    if (!commonLineCheck(&sp50, &sp5C) || !checkClimbCode(mLinkLinChk) ||
        ((mProcID == PROC_CLIMB_MOVE_UPDOWN || mProcID == PROC_CLIMB_MOVE_SIDE) &&
         current.pos.y - 15.0f < dComIfG_Bgsp().GroundCross(&mLinkGndChk)))
    {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    cM3dGPla sp44;
    dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp44);

    s16 temp_r29 = sp44.mNormal.atan2sX_Z();
    if (cLib_distanceAngleS(temp_r29, shape_angle.y) <= 0x549F) {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    s16 temp_r28 = shape_angle.y;
    shape_angle.y = temp_r29 + 0x8000;

    current.pos.x = mLinkLinChk.i_GetCross().x;
    current.pos.z = mLinkLinChk.i_GetCross().z;
    current.angle.y += (s16)(shape_angle.y - temp_r28);
    field_0x308c += (s16)(temp_r28 - shape_angle.y);

    mPolyInfo1.SetPolyInfo(mLinkLinChk);
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setMoveBGClimbCorrect() {
    nofralloc
#include "asm/d/a/d_a_alink/setMoveBGClimbCorrect__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FEB90-800FEC70 0F94D0 00E0+00 1/1 0/0 0/0 .text
 * checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz             */
// matches with cM3dGPla vtable in the correct spot
#ifdef NONMATCHING
int daAlink_c::checkBgCorrectClimbMove(cXyz* i_startPos, cXyz* i_endPos) {
    if (commonLineCheck(i_startPos, i_endPos)) {
        cM3dGPla tri_plane;
        dComIfG_Bgsp().GetTriPla(mLinkLinChk, &tri_plane);

        if (cLib_distanceAngleS(tri_plane.mNormal.atan2sX_Z(), shape_angle.y) < 0x549F ||
            (checkModeFlg(0x10000) && !checkClimbCode(mLinkLinChk)))
        {
            current.pos += mLinkLinChk.i_GetCross() - *i_endPos;
            return 1;
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkBgCorrectClimbMove(cXyz* param_0, cXyz* param_1){nofralloc
#include "asm/d/a/d_a_alink/checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz.s"
}
#pragma pop
#endif

/* 800FEC70-800FED50 0F95B0 00E0+00 2/2 0/0 0/0 .text            checkClimbRoof__9daAlink_cFf */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::checkClimbRoof(f32 param_0) {
    cXyz sp44(current.pos.x - cM_ssin(shape_angle.y) * 30.0f, param_0 - 30.0f,
              current.pos.z - cM_scos(shape_angle.y) * 30.0f);
    mLinkRoofChk.i_SetPos(sp44);

    if (dComIfG_Bgsp().RoofChk(&mLinkRoofChk) < param_0 + 30.0f &&
        dComIfG_Bgsp().GetMonkeyBarsCode(mLinkRoofChk))
    {
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkClimbRoof(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkClimbRoof__9daAlink_cFf.s"
}
#pragma pop
#endif

/* 800FED50-800FEEC0 0F9690 0170+00 2/2 0/0 0/0 .text checkClimbGround__9daAlink_cFP4cXyzf */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::checkClimbGround(cXyz* param_0, f32 param_1) {
    f32 var_f30 = cM_ssin(shape_angle.y);
    f32 var_f29 = cM_scos(shape_angle.y);

    param_0->set(current.pos.x + (var_f30 * 4.5f), param_1 + 50.0f,
                 current.pos.z + (var_f29 * 4.5f));

    for (int i = 0; i < 3; i++) {
        mLinkGndChk.SetPos(param_0);

        f32 cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        if (cross != -1000000000.0f && dBgS_CheckBGroundPoly(mLinkGndChk) &&
            cross >= param_1 - 50.0f)
        {
            param_0->y = cross;
            return 1;
        }

        param_0->x += var_f30 * 1.5f;
        param_0->z += var_f29 * 1.5f;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkClimbGround(cXyz* param_0, f32 param_1){nofralloc
#include "asm/d/a/d_a_alink/checkClimbGround__9daAlink_cFP4cXyzf.s"
}
#pragma pop
#endif

/* 800FEEC0-800FF28C 0F9800 03CC+00 5/5 0/0 0/0 .text            checkBgClimbMove__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::checkBgClimbMove(int i_direction) {
    f32 var_r28 = cM_ssin(shape_angle.y);
    f32 var_r27 = cM_scos(shape_angle.y);
    f32 var_f31 = var_r27 * 30.0f;
    f32 var_f30 = var_r28 * -30.0f;
    f32 var_f26 = var_r28 * -30.0f;
    f32 var_f25 = var_r27 * -30.0f;

    cXyz sp8C;
    cXyz sp98;
    sp98.set(current.pos.x + var_f30, current.pos.y, current.pos.z - var_f31);

    if (i_direction != DIR_RIGHT) {
        sp8C.set(sp98.x + var_f31, sp98.y, sp98.z + var_f30);
        if (checkBgCorrectClimbMove(&sp98, &sp8C) && i_direction == DIR_LEFT) {
            return true;
        }
    }

    if (i_direction != DIR_LEFT) {
        sp8C.set(sp98.x - var_f31, sp98.y, sp98.z - var_f30);
        if (checkBgCorrectClimbMove(&sp98, &sp8C) && i_direction == DIR_RIGHT) {
            return true;
        }
    }

    sp98.y += field_0x598;

    if (i_direction != DIR_RIGHT) {
        sp8C.set(sp98.x + var_f31, sp98.y, sp98.z + var_f30);
        if (checkBgCorrectClimbMove(&sp98, &sp8C) && i_direction == DIR_LEFT) {
            return true;
        }
    }

    if (i_direction != DIR_LEFT) {
        sp8C.set(sp98.x - var_f31, sp98.y, sp98.z - var_f30);
        if (checkBgCorrectClimbMove(&sp98, &sp8C) && i_direction == DIR_RIGHT) {
            return true;
        }
    }

    if (i_direction != DIR_NONE) {
        return false;
    }

    sp8C.set(var_f26 + (current.pos.x + var_f31), current.pos.y,
             var_f25 + (current.pos.z + var_f30));
    mLinkRoofChk.i_SetPos(sp8C);

    f32 var_f29 = dComIfG_Bgsp().RoofChk(&mLinkRoofChk) - field_0x598;
    if (var_f29 < current.pos.y) {
        current.pos.y = var_f29;
    }

    sp8C.set(var_f26 + (current.pos.x - var_f31), current.pos.y,
             var_f25 + (current.pos.z - var_f30));
    mLinkRoofChk.i_SetPos(sp8C);

    var_f29 = dComIfG_Bgsp().RoofChk(&mLinkRoofChk) - field_0x598;
    if (var_f29 < current.pos.y) {
        current.pos.y = var_f29;
    }

    sp8C.set(sp98.x + var_r28 * 100.0f, sp98.y, sp98.z + var_r27 * 100.0f);

    if (!commonLineCheck(&sp98, &sp8C)) {
        if (checkClimbRoof(sp98.y)) {
            return procClimbToRoofInit();
        }

        if (checkClimbGround(&sp8C, sp98.y)) {
            current.pos = sp8C;
            onResetFlg0(RFLG0_UNK_40000);
            return procHangClimbInit(daAlinkHIO_wallCatch_c0::m.mClimbAnm.mStartFrame);
        } else {
            current.pos.y -= 30.0f;
            return procClimbWaitInit(1, 1);
        }
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkBgClimbMove(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkBgClimbMove__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FF28C-800FF450 0F9BCC 01C4+00 2/2 0/0 0/0 .text setClimbStartNotGround__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::setClimbStartNotGround() {
    if (mProcID == PROC_HOOKSHOT_FLY) {
        current.pos.y = mHookshotTopPos.y;
        mLinkGndChk.SetPos(&current.pos);

        f32 gnd_y = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        if (gnd_y < current.pos.y - field_0x598) {
            current.pos.y -= field_0x598;
        } else {
            current.pos.y = gnd_y + 5.0f;
            return 0;
        }

        f32 var_f29 = cM_ssin(field_0x306e);
        f32 var_f28 = cM_scos(field_0x306e);
        f32 temp_f1 = (field_0x598 + 5.0f) - 60.0f;
        cXyz sp6C(mHookshotTopPos.x + var_f29 * 30.0f, current.pos.y + 60.0f,
                  mHookshotTopPos.z + var_f28 * 30.0f);
        cXyz sp78(mHookshotTopPos.x - var_f29 * 200.0f, sp6C.y,
                  mHookshotTopPos.z - var_f28 * 200.0f);

        f32 var_f31 = 0.0f;
        while (var_f31 < temp_f1) {
            if (commonLineCheck(&sp6C, &sp78) && checkClimbCode(mLinkLinChk)) {
                break;
            }

            var_f31 += 15.0f;
            sp78.y = sp6C.y += 15.0f;
        }

        current.pos.y += var_f31;
    }

    deleteEquipItem(TRUE, FALSE);
    field_0x2f98 = 0;
    procClimbUpStartInit(0);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setClimbStartNotGround() {
    nofralloc
#include "asm/d/a/d_a_alink/setClimbStartNotGround__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FF450-800FF704 0F9D90 02B4+00 2/2 0/0 0/0 .text            procClimbUpStartInit__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbUpStartInit(int param_0) {
    setFrontWallType();
    if (field_0x2f91 != 3) {
        return 0;
    }

    u32 var_r29 = checkModeFlg(0x40000);

    commonProcInit(PROC_CLIMB_UP_START);
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;

    if (param_0 || var_r29 || cM_rnd() < 0.3f) {
        setSingleAnimeParam(ANM_CLIMB_HANG, &daAlinkHIO_ladder_c0::m.field_0x0);
        field_0x3478 = daAlinkHIO_ladder_c0::m.field_0x0.mCheckFrame;
        voiceStart(Z2SE_AL_V_JUMP_HANG);
    } else {
        setSingleAnimeParam(ANM_CLIMB_HANG_MISS, &daAlinkHIO_ladder_c0::m.field_0x14);
        field_0x3478 = daAlinkHIO_ladder_c0::m.field_0x14.mCheckFrame;
        voiceStart(Z2SE_AL_V_FOOT_MISS);
    }

    field_0x3198 = 1;
    dComIfGp_setPlayerStatus0(0, 8);

    if (param_0) {
        current.pos.y = field_0x34ec.y + daAlinkHIO_ladder_c0::m.field_0x6C;
    }

    field_0x2f99 = 2;
    mProcVar3.field_0x300e.z = 1;

    field_0x37c8.set(l_waitBaseAnime.x, l_ladderAnmBaseTransY, l_waitBaseAnime.z);
    J3DTransformInfo* trans_info = field_0x2060->getOldFrameTransInfo(0);
    trans_info->mTranslate.z -= ((field_0x34ec.z - field_0x3798.z) * cM_scos(shape_angle.y)) +
                                ((field_0x34ec.x - field_0x3798.x) * cM_ssin(shape_angle.y));

    field_0x3588.set(trans_info->mTranslate.x,
                     trans_info->mTranslate.y - (current.pos.y - field_0x3798.y),
                     l_waitBaseAnime.z);
    field_0x3588 = (field_0x3588 * field_0x2060->getOldFrameRate()) +
                   (field_0x37c8 * (1.0f - field_0x2060->getOldFrameRate()));
    field_0x33b0 = field_0x3588.y;

    current.pos.x = field_0x34ec.x;
    current.pos.z = field_0x34ec.z;

    shape_angle.y = field_0x306e + 0x8000;
    current.angle.y = shape_angle.y;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 0;
    setClimbShapeOffset();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbUpStartInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbUpStartInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FF704-800FF818 0FA044 0114+00 1/0 0/0 0/0 .text            procClimbUpStart__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbUpStart() {
    if (setMoveBGClimbCorrect()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    field_0x2f99 = 2;
    mProcVar3.field_0x300e.z = 0;

    field_0x3588 = (field_0x3588 * field_0x2060->getOldFrameRate()) +
                   (field_0x37c8 * (1.0f - field_0x2060->getOldFrameRate()));
    field_0x33b0 = field_0x3588.y;

    setClimbShapeOffset();
    if (!checkLadderFall() &&
        (checkAnmEnd(frameCtrl) || (checkInputOnR() && frameCtrl->getFrame() > field_0x3478)))
    {
        procClimbWaitInit(0, 0);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbUpStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbUpStart__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FF818-800FF9A8 0FA158 0190+00 1/1 0/0 0/0 .text procClimbDownStartInit__9daAlink_cFs */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbDownStartInit(s16 param_0) {
    onNoResetFlg3(FLG3_UNK_400000);
    commonProcInit(PROC_CLIMB_DOWN_START);
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    speedF = 0.0f;

    deleteEquipItem(TRUE, FALSE);

    if (cM_rnd() < 0.7f) {
        setSingleAnimeParam(ANM_CLIMB_HANG, &daAlinkHIO_ladder_c0::m.field_0x0);
        field_0x3478 = daAlinkHIO_ladder_c0::m.field_0x0.mCheckFrame;
        mProcVar0.field_0x3008 = 0;
    } else {
        setSingleAnimeParam(ANM_CLIMB_HANG_MISS, &daAlinkHIO_ladder_c0::m.field_0x14);
        field_0x3478 = daAlinkHIO_ladder_c0::m.field_0x14.mCheckFrame;
        mProcVar0.field_0x3008 = 1;
        voiceStart(Z2SE_AL_V_FOOT_MISS);
    }

    dComIfGp_setPlayerStatus0(0, 8);
    setOldRootQuaternion(0, 0x8000, 0);
    shape_angle.y = param_0 + 0x8000;
    current.angle.y = shape_angle.y;
    current.pos.y -= 190.0f;

    field_0x3588 = l_waitBaseAnime;
    field_0x33b0 = l_ladderAnmBaseTransY;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 0;
    mProcVar3.field_0x300e.x = 0;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbDownStartInit(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbDownStartInit__9daAlink_cFs.s"
}
#pragma pop
#endif

/* 800FF9A8-800FFAB0 0FA2E8 0108+00 1/0 0/0 0/0 .text            procClimbDownStart__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbDownStart() {
    if (setMoveBGClimbCorrect()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (mProcVar3.field_0x300e.x != 0) {
        field_0x2f99 = 2;
    } else {
        field_0x2f99 = 0x50;
        mProcVar3.field_0x300e.x = 1;
    }

    if (field_0x33a8 < 0.2f) {
        mProcVar0.field_0x3008 = 0;
    }

    if (!checkClimbFall()) {
        if (mProcVar0.field_0x3008 == 0 &&
            (checkAnmEnd(frameCtrl) || (checkInputOnR() && frameCtrl->getFrame() > field_0x3478)))
        {
            procClimbWaitInit(0, 0);
        } else if (!checkBgClimbMove(4)) {
            setClimbShapeOffset();
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbDownStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbDownStart__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FFAB0-800FFC58 0FA3F0 01A8+00 1/1 0/0 0/0 .text procClimbMoveUpDownInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbMoveUpDownInit(int param_0) {
    commonProcInit(PROC_CLIMB_MOVE_UPDOWN);
    current.angle.y = shape_angle.y;

    daAlink_ANM anm;
    if (param_0) {
        field_0x3198 = 0;

        if (field_0x2f98 == 0) {
            anm = ANM_CLIMB_LEFT;
        } else {
            anm = ANM_CLIMB_RIGHT;
        }
    } else {
        field_0x3198 = 1;

        if (field_0x2f98 == 0) {
            anm = ANM_CLIMB_RIGHT;
        } else {
            anm = ANM_CLIMB_LEFT;
        }
    }

    if (!checkUnderMove0BckNoArc(ANM_CLIMB_LEFT) && !checkUnderMove0BckNoArc(ANM_CLIMB_RIGHT)) {
        setSingleAnimeBaseSpeed(ANM_CLIMB_START, getClimbMoveUpDownAnmSpeed(), -1.0f);
        field_0x32cc = anm;
    } else {
        f32 anm_speed = getClimbMoveUpDownAnmSpeed();
        if (field_0x2f98 == 1) {
            anm_speed *= -1.0f;
        }

        setSingleAnimeBaseSpeed(anm, anm_speed, 3.0f);
        field_0x32cc = 0;
    }

    if (field_0x2f98 == 0) {
        field_0x30a0 = -0x1800;
        field_0x33f4 = -1.0f;
    } else {
        field_0x30a0 = 0x2800;
        field_0x33f4 = 1.0f;
    }

    field_0x2f99 = 10;
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    speedF = 0.0f;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 1;

    voiceStart(Z2SE_AL_V_CLIMB_WALL);
    dComIfGp_setPlayerStatus0(0, 8);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveUpDownInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveUpDownInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800FFC58-800FFDB0 0FA598 0158+00 1/0 0/0 0/0 .text            procClimbMoveUpDown__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbMoveUpDown() {
    if (setMoveBGClimbCorrect()) {
        return 1;
    }

    field_0x2f99 = 2;

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (!checkClimbFall()) {
        if (checkAnmEnd(frameCtrl)) {
            if (field_0x32cc != 0) {
                f32 anm_speed = getClimbMoveUpDownAnmSpeed();
                if (field_0x2f98 == 1) {
                    anm_speed *= -1.0f;
                }

                setSingleAnimeBaseSpeed((daAlink_ANM)field_0x32cc, anm_speed, -1.0f);
                field_0x2f99 = 10;
                field_0x32cc = 0;
            } else {
                changeClimbMoveProc(field_0x3198);
            }
        } else if (!checkClimbMoveUpDownProc(field_0x2f98)) {
            procClimbWaitInit(1, 1);
        } else if (fabsf(frameCtrl->getRate()) > 0.1f) {
            f32 anm_speed = getClimbMoveUpDownAnmSpeed();
            if (frameCtrl->getRate() < 0.0f) {
                anm_speed *= -1.0f;
            }

            setWaterInAnmRate(frameCtrl, anm_speed);
            if (!checkBgClimbMove(4)) {
                setClimbShapeOffset();
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveUpDown() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveUpDown__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FFDB0-800FFF4C 0FA6F0 019C+00 1/1 0/0 0/0 .text            procClimbMoveSideInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbMoveSideInit() {
    f32 anm_speed = getClimbMoveSideAnmSpeed();
    commonProcInit(PROC_CLIMB_MOVE_SIDE);

    if (field_0x2f98 == 3) {
        field_0x33f0 = -1.0f;
        field_0x30a2 = -0x1800;
    } else {
        field_0x33f0 = 1.0f;
        field_0x30a2 = 0x1800;
    }

    field_0x2f99 = 11;

    daAlink_ANM anm;
    if (field_0x2f98 == 2) {
        anm = ANM_CLIMB_SLIDE_LEFT;
    } else {
        anm = ANM_CLIMB_SLIDE_RIGHT;
    }

    if (!checkUnderMove0BckNoArc(ANM_CLIMB_RIGHT) && !checkUnderMove0BckNoArc(ANM_CLIMB_LEFT)) {
        setSingleAnimeBaseSpeed(anm, anm_speed, 3.0f);
        field_0x3198 = 0;
    } else {
        field_0x3198 = anm;
        setSingleAnimeBaseSpeed(ANM_CLIMB_START, -anm_speed, 3.0f);
    }

    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 1;
    field_0x3478 = M_PI / (f32)mUnderFrameCtrl[0].getEnd();
    field_0x347c = current.pos.y + 150.0f;

    dComIfGp_setPlayerStatus0(0, 8);
    voiceStart(Z2SE_AL_V_CLIMB_WALL);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveSideInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveSideInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800FFF4C-801000F8 0FA88C 01AC+00 1/0 0/0 0/0 .text            procClimbMoveSide__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbMoveSide() {
    f32 var_f30 = current.pos.y;

    if (setMoveBGClimbCorrect()) {
        return 1;
    }

    if (field_0x3198 == 0) {
        field_0x347c += var_f30 - current.pos.y;
    } else {
        field_0x347c = current.pos.y + 150.0f;
    }

    field_0x2f99 = 3;

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (!checkClimbFall()) {
        if (checkAnmEnd(frameCtrl)) {
            if (field_0x3198 == 0) {
                changeClimbMoveProc(field_0x3198);
            } else {
                setSingleAnimeBaseSpeed((daAlink_ANM)field_0x3198, getClimbMoveSideAnmSpeed(),
                                        3.0f);
                field_0x3198 = 0;
            }
        } else if (!checkClimbMoveSideProc(field_0x2f98)) {
            current.pos.y = field_0x347c - 150.0f;
            procClimbWaitInit(1, 0);
        } else if (fabsf(frameCtrl->getFrame()) > 0.1f) {
            f32 anm_speed = getClimbMoveSideAnmSpeed();
            if (frameCtrl->getRate() < 0.0f) {
                anm_speed *= -1.0f;
            }

            setWaterInAnmRate(frameCtrl, anm_speed);
            if (!checkBgClimbMove(4) && (field_0x3198 == 0 || frameCtrl->getFrame() < 12.0f)) {
                setClimbShapeOffset();
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveSide() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveSide__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801000F8-80100258 0FAA38 0160+00 7/7 0/0 0/0 .text            procClimbWaitInit__9daAlink_cFii */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbWaitInit(int param_0, int param_1) {
    if (!commonProcInitNotSameProc(PROC_CLIMB_WAIT)) {
        return 0;
    }

    if (param_1 || checkUnderMove0BckNoArc(ANM_CLIMB_SLIDE_LEFT) ||
        checkUnderMove0BckNoArc(ANM_CLIMB_SLIDE_RIGHT))
    {
        setSingleAnimeBaseSpeed(ANM_CLIMB_SLIDE_LEFT, 0.0f, 3.0f);
    }

    mProcVar0.field_0x3008 = 0x33;
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    speedF = 0.0f;

    field_0x2f99 = 10;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.y = 0;

    if (param_0) {
        if (field_0x2f98 == 0) {
            field_0x30a0 = -0x1800;
            field_0x33f4 = -1.0f;
        } else if (field_0x2f98 == 1) {
            field_0x30a0 = 0x2800;
            field_0x33f4 = 1.0f;
        } else if (field_0x2f98 == 3) {
            field_0x30a2 = -0x1800;
            field_0x33f0 = -1.0f;
        } else {
            field_0x30a2 = 0x1800;
            field_0x33f0 = 1.0f;
        }
    }

    dComIfGp_setPlayerStatus0(0, 8);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbWaitInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbWaitInit__9daAlink_cFii.s"
}
#pragma pop
#endif

/* 80100258-801003E4 0FAB98 018C+00 1/0 0/0 0/0 .text            procClimbWait__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbWait() {
    if (setMoveBGClimbCorrect()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    field_0x2f99 = 2;

    if (!checkClimbFall()) {
        if (checkAnmEnd(frameCtrl)) {
            changeClimbMoveProc(1);

            if (mProcID == PROC_CLIMB_WAIT) {
                if (mProcVar0.field_0x3008 != 0) {
                    mProcVar0.field_0x3008--;
                } else {
                    daPy_addCalcShort(&field_0x30a0, 0, 3, 0x800, 0x100);
                    daPy_addCalcShort(&field_0x30a2, 0, 3, 0x800, 0x100);
                    field_0x33f0 = field_0x30a2 * 0.0001627604f;
                    field_0x33f4 = -field_0x30a0 * -0.0001627604f;
                }
            }
        } else if (fabsf(frameCtrl->getRate()) > 0.01f) {
            f32 anm_speed = getClimbMoveUpDownAnmSpeed();
            if (frameCtrl->getRate() < 0.0f) {
                anm_speed *= -1.0f;
            }

            setWaterInAnmRate(frameCtrl, anm_speed);
            if (!checkBgClimbMove(4)) {
                setClimbShapeOffset();
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbWait__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801003E4-80100464 0FAD24 0080+00 2/2 0/0 0/0 .text            procClimbToRoofInit__9daAlink_cFv
 */
int daAlink_c::procClimbToRoofInit() {
    commonProcInit(PROC_CLIMB_TO_ROOF);
    setSingleAnimeBase(ANM_ROOF_UP);
    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    speedF = tmp_0;
    field_0x2f99 = 10;
    dComIfGp_setPlayerStatus0(0, 8);
    return 1;
}

/* 80100464-801005CC 0FADA4 0168+00 1/0 0/0 0/0 .text            procClimbToRoof__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procClimbToRoof() {
    if (setMoveBGClimbCorrect()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    field_0x2f99 = 2;

    if (checkAnmEnd(frameCtrl)) {
        shape_angle.y += 0x8000;
        current.angle.y = shape_angle.y;
        field_0x2fe6 = shape_angle.y;
        setOldRootQuaternion(0, 0x8000, 0);
        field_0x2060->getOldFrameTransInfo(0)->mTranslate.z *= -1.0f;

        cXyz sp38(current.pos.x + cM_ssin(shape_angle.y) * 95.0f, current.pos.y,
                  current.pos.z + cM_scos(shape_angle.y) * 95.0f);
        mLinkRoofChk.i_SetPos(sp38);

        sp38.y = dComIfG_Bgsp().RoofChk(&mLinkRoofChk);
        if (sp38.y < current.pos.y + 214.0f + 110.0f) {
            procRoofHangStartInit(mLinkRoofChk, sp38, 1);
        } else {
            procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbToRoof(){nofralloc
#include "asm/d/a/d_a_alink/procClimbToRoof__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801005CC-801005F0 0FAF0C 0024+00 2/2 0/0 0/0 .text getRoofHangFMoveAnmSpeed__9daAlink_cCFv */
f32 daAlink_c::getRoofHangFMoveAnmSpeed() const {
    return getAnmSpeedStickRate(daAlinkHIO_roofHang_c0::m.field_0x24,
                                daAlinkHIO_roofHang_c0::m.field_0x28);
}

/* 801005F0-80100614 0FAF30 0024+00 2/2 0/0 0/0 .text getRoofHangSMoveAnmSpeed__9daAlink_cCFv */
f32 daAlink_c::getRoofHangSMoveAnmSpeed() const {
    return getAnmSpeedStickRate(daAlinkHIO_roofHang_c0::m.field_0x38,
                                daAlinkHIO_roofHang_c0::m.field_0x3C);
}

/* 80100614-80100668 0FAF54 0054+00 3/3 0/0 0/0 .text
 * setRoofHangHandOnSE__9daAlink_cFP13cBgS_PolyInfo             */
void daAlink_c::setRoofHangHandOnSE(cBgS_PolyInfo* unused) {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (!frame_ctrl->checkPass(field_0x3478)) {
        frame_ctrl->checkPass(field_0x347c);
    }
}

/* 80100668-80100770 0FAFA8 0108+00 3/3 0/0 0/0 .text            checkRoofHangMovePos__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::checkRoofHangMovePos() {
    if (field_0x2f98 >= 4) {
        field_0x2f98 = 0;
    }

    s16 angle = shape_angle.y + offsetAngle[field_0x2f98];

    cXyz sp38(current.pos.x + cM_ssin(angle) * 60.0f, (current.pos.y + 214.0f) - 10.0f,
              current.pos.z + cM_scos(angle) * 60.0f);
    mLinkRoofChk.i_SetPos(sp38);

    if (dComIfG_Bgsp().RoofChk(&mLinkRoofChk) < sp38.y + 50.0f) {
        if (dComIfG_Bgsp().GetMonkeyBarsCode(mLinkRoofChk)) {
            return true;
        }
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkRoofHangMovePos() {
    nofralloc
#include "asm/d/a/d_a_alink/checkRoofHangMovePos__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80100770-801008EC 0FB0B0 017C+00 5/5 0/0 0/0 .text            commonRoofHangProc__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::commonRoofHangProc() {
    if (dComIfG_Bgsp().ChkPolySafe(mPolyInfo2) && dComIfG_Bgsp().ChkMoveBG(mPolyInfo2)) {
        dComIfG_Bgsp().MoveBgTransPos(mPolyInfo2, true, &current.pos, &current.angle, &shape_angle);
    }

    setDoStatus(0x33);

    if (doTrigger()) {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    cXyz sp28(current.pos.x, (current.pos.y + 214.0f) - 10.0f, current.pos.z);
    mLinkRoofChk.i_SetPos(sp28);

    f32 roof_y = dComIfG_Bgsp().RoofChk(&mLinkRoofChk);
    if (roof_y < sp28.y + 50.0f && dComIfG_Bgsp().GetMonkeyBarsCode(mLinkRoofChk) &&
        current.pos.y > mLinkAcch.GetGroundH())
    {
        current.pos.y = roof_y - 214.0f;
        mPolyInfo2.SetPolyInfo(mLinkRoofChk);
    } else {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::commonRoofHangProc() {
    nofralloc
#include "asm/d/a/d_a_alink/commonRoofHangProc__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801008EC-80100A10 0FB22C 0124+00 5/5 0/0 0/0 .text checkNextActionRoofHang__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::checkNextActionRoofHang() {
    if (checkInputOnR()) {
        field_0x2f98 = getDirectionFromShapeAngle();

        if (checkAttentionLock()) {
            if (field_0x2f98 == 2 || field_0x2f98 == 3) {
                if (checkRoofHangMovePos()) {
                    procRoofHangSideMoveInit();
                } else {
                    procRoofHangWaitInit(0);
                }

                return 1;
            }
        } else {
            if (field_0x2f98 == 1) {
                return procRoofHangTurnInit();
            }

            field_0x2f98 = 0;
        }

        if (checkRoofHangMovePos()) {
            procRoofHangFrontMoveInit();
        } else {
            procRoofHangWaitInit(0);
        }
    } else {
        procRoofHangWaitInit(0);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextActionRoofHang() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionRoofHang__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80100A10-80100AE4 0FB350 00D4+00 2/2 0/0 0/0 .text
 * procRoofHangStartInit__9daAlink_cFRC13cBgS_PolyInfoRC4cXyzi  */
int daAlink_c::procRoofHangStartInit(cBgS_PolyInfo const& param_0, cXyz const& param_1,
                                     int param_2) {
    commonProcInit(PROC_ROOF_HANG_START);
    setSingleAnimeParam(ANM_ROOF_HANG, &daAlinkHIO_roofHang_c0::m.field_0x0);
    mPolyInfo2.SetPolyInfo(param_0);

    current.pos = param_1;
    current.pos.y -= lit_25916;
    field_0x2f98 = 4;

    deleteEquipItem(TRUE, FALSE);
    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    field_0x2f99 = 0x50;
    mProcVar0.field_0x3008 = param_2;
    return 1;
}

/* 80100AE4-80100BB4 0FB424 00D0+00 1/0 0/0 0/0 .text            procRoofHangStart__9daAlink_cFv */
int daAlink_c::procRoofHangStart() {
    if (commonRoofHangProc()) {
        return 1;
    }

    if (field_0x33a8 < lit_13700) {
        mProcVar0.field_0x3008 = 0;
    }

    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;
    if (mProcVar0.field_0x3008 == 0 &&
        (checkAnmEnd(frame_ctrl) ||
         (checkInputOnR() &&
          frame_ctrl->getFrame() > daAlinkHIO_roofHang_c0::m.field_0x0.mCheckFrame)))
    {
        checkNextActionRoofHang();
    } else if (checkAnmEnd(frame_ctrl)) {
        procRoofHangWaitInit(1);
    }

    return 1;
}

/* 80100BB4-80100D38 0FB4F4 0184+00 4/4 0/0 0/0 .text            procRoofHangWaitInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procRoofHangWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procRoofHangWaitInit__9daAlink_cFi.s"
}
#pragma pop

/* 80100D38-80100DA4 0FB678 006C+00 1/0 0/0 0/0 .text            procRoofHangWait__9daAlink_cFv */
int daAlink_c::procRoofHangWait() {
    if (commonRoofHangProc()) {
        return 1;
    }

    if (field_0x33a8 < lit_13700) {
        mProcVar0.field_0x3008 = 0;
    }

    if (mProcVar0.field_0x3008 == 0) {
        checkNextActionRoofHang();
    }

    return 1;
}

/* 80100DA4-80100EEC 0FB6E4 0148+00 1/1 0/0 0/0 .text procRoofHangFrontMoveInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procRoofHangFrontMoveInit() {
    commonProcInit(PROC_ROOF_HANG_FRONT_MOVE);

    f32 anm_speed = getRoofHangFMoveAnmSpeed();
    if (field_0x2f98 == 1) {
        anm_speed *= -1.0f;
        current.angle.y = shape_angle.y + 0x8000;
        field_0x3478 = 0.0f;
        field_0x347c = 18.0f;
    } else {
        current.angle.y = shape_angle.y;
        field_0x3478 = 13.0f;
        field_0x347c = 32.0f;
    }

    f32 frame = -1;
    if (checkUnderMove0BckNoArc(ANM_ROOF_HANG_MOVE)) {
        frame = mUnderFrameCtrl[0].getFrame();
    }

    setSingleAnimeBaseSpeed(ANM_ROOF_HANG_MOVE, anm_speed, daAlinkHIO_roofHang_c0::m.field_0x2C);

    if (frame >= 0) {
        mUnderFrameCtrl[0].setFrame(frame);
        getNowAnmPackUnder(UNDER_0)->setFrame(frame);
        field_0x2060->initOldFrameMorf(0.0f, 0, 0x23);
    }

    setSpecialGravity(0.0f, maxFallSpeed, 0);
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    dComIfGp_setPlayerStatus1(0, 0x100000);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procRoofHangFrontMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procRoofHangFrontMoveInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80100EEC-8010121C 0FB82C 0330+00 1/0 0/0 0/0 .text            procRoofHangFrontMove__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procRoofHangFrontMove() {
    if (commonRoofHangProc()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkPass(17) || frameCtrl->checkPass(0)) {
        checkNextActionRoofHang();
    } else {
        if (!checkAttentionLock()) {
            cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_roofHang_c0::m.field_0x14,
                               daAlinkHIO_roofHang_c0::m.field_0x16,
                               daAlinkHIO_roofHang_c0::m.field_0x18);

            if (field_0x2f98 == 0) {
                shape_angle.y = current.angle.y;
            } else {
                shape_angle.y = current.angle.y + 0x8000;
            }
        }

        f32 frame;
        if (frameCtrl->getFrame() >= 17.0f) {
            frame = frameCtrl->getFrame() - 17.0f;
        } else {
            frame = frameCtrl->getFrame();
        }

        mNormalSpeed = getAnmSpeedStickRate(daAlinkHIO_roofHang_c0::m.field_0x30,
                                            daAlinkHIO_roofHang_c0::m.field_0x34) *
                       cM_fsin((frame * M_PI) * 0.08333334f);
        if (mNormalSpeed < 0.0f) {
            mNormalSpeed = 0.0f;
        }

        f32 anm_speed = getRoofHangFMoveAnmSpeed();
        if (frameCtrl->getRate() < 0.0f) {
            anm_speed *= -1.0f;
        }

        setWaterInAnmRate(frameCtrl, anm_speed);

        if (anm_speed > 0.0f && mLinkAcch.ChkWallHit()) {
            cXyz sp7C(current.pos.x, (current.pos.y - 3.0f) + 214.0f, current.pos.z);

            f32 temp_f29 = field_0x18B0[0].GetWallR() + 25.0f;
            cXyz sp88(sp7C.x + temp_f29 * cM_ssin(shape_angle.y), sp7C.y,
                      sp7C.z + temp_f29 * cM_scos(shape_angle.y));

            if (commonLineCheck(&sp7C, &sp88) && checkClimbCode(mLinkLinChk)) {
                cM3dGPla sp70;
                dComIfG_Bgsp().GetTriPla(mLinkLinChk, &sp70);

                if (cLib_distanceAngleS(sp70.mNormal.atan2sX_Z(), shape_angle.y) > 0x6000) {
                    current.pos.x = sp70.mNormal.x * 15.0f + mLinkLinChk.i_GetCross().x;
                    current.pos.z = sp70.mNormal.z * 15.0f + mLinkLinChk.i_GetCross().z;
                    return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
                }
            }
        }

        setRoofHangHandOnSE(&mPolyInfo2);

        if (!checkRoofHangMovePos()) {
            procRoofHangWaitInit(0);
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procRoofHangFrontMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procRoofHangFrontMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010121C-80101308 0FBB5C 00EC+00 1/1 0/0 0/0 .text procRoofHangSideMoveInit__9daAlink_cFv */
int daAlink_c::procRoofHangSideMoveInit() {
    commonProcInit(PROC_ROOF_HANG_SIDE_MOVE);

    daAlink_ANM anm_id;
    if (field_0x2f98 == 2) {
        anm_id = ANM_ROOF_HANG_LEFT;
        current.angle.y = shape_angle.y + 0x4000;
    } else {
        anm_id = ANM_ROOF_HANG_RIGHT;
        current.angle.y = shape_angle.y + -0x4000;
    }

    setSingleAnimeBaseSpeed(anm_id, getRoofHangSMoveAnmSpeed(),
                            daAlinkHIO_roofHang_c0::m.field_0x40);
    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    field_0x3478 = lit_14954;
    field_0x347c = lit_8784;

    field_0x3588 = l_waitBaseAnime;
    dComIfGp_setPlayerStatus1(0, 0x100000);
    return 1;
}

/* 80101308-801013B8 0FBC48 00B0+00 1/0 0/0 0/0 .text            procRoofHangSideMove__9daAlink_cFv
 */
int daAlink_c::procRoofHangSideMove() {
    if (commonRoofHangProc()) {
        return 1;
    }

    field_0x2f99 = 5;
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (checkAnmEnd(frame_ctrl)) {
        checkNextActionRoofHang();
    } else {
        setWaterInAnmRate(frame_ctrl, getRoofHangSMoveAnmSpeed());
        setRoofHangHandOnSE(&mPolyInfo2);

        if (!checkRoofHangMovePos()) {
            return procRoofHangWaitInit(0);
        }
    }

    return 1;
}

/* 801013B8-80101534 0FBCF8 017C+00 1/1 0/0 0/0 .text            procRoofHangTurnInit__9daAlink_cFv
 */
int daAlink_c::procRoofHangTurnInit() {
    commonProcInit(PROC_ROOF_HANG_TURN);

    f32 anm_speed;
    if ((s16)(field_0x2fe2 - shape_angle.y) < 0) {
        anm_speed = -daAlinkHIO_roofHang_c0::m.field_0x44;
        mProcVar0.field_0x3008 = 1;
        shape_angle.y += 0x8000;
        setOldRootQuaternion(0, -0x8000, 0);
        field_0x2060->getOldFrameTransInfo(0)->mTranslate.z = lit_26275;
        mProcVar2.field_0x300c = field_0x2fe2;
        field_0x3478 = FLOAT_LABEL(lit_6108);
        field_0x347c = lit_7625;
    } else {
        anm_speed = daAlinkHIO_roofHang_c0::m.field_0x44;
        mProcVar0.field_0x3008 = 0;
        mProcVar2.field_0x300c = field_0x2fe2 + 0x8000;
        field_0x3478 = lit_7625;
        field_0x347c = lit_26276;
    }

    current.angle.y = shape_angle.y;
    setSingleAnimeBaseSpeed(ANM_ROOF_HANG_TURN, anm_speed, daAlinkHIO_roofHang_c0::m.field_0x48);

    if (mProcVar0.field_0x3008 != 0) {
        setFaceBasicTexture(FTANM_UNK_4);
    } else {
        setFaceBasicTexture(FTANM_UNK_3);
    }

    field_0x2f98 = 4;
    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);
    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    dComIfGp_setPlayerStatus1(0, 0x100000);
    return 1;
}

/* 80101534-8010163C 0FBE74 0108+00 1/0 0/0 0/0 .text            procRoofHangTurn__9daAlink_cFv */
int daAlink_c::procRoofHangTurn() {
    if (commonRoofHangProc()) {
        return 1;
    }

    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;
    if (checkAnmEnd(frame_ctrl)) {
        if (mProcVar0.field_0x3008 == 0) {
            shape_angle.y += 0x8000;
            current.angle.y = shape_angle.y;
            setOldRootQuaternion(0, -0x8000, 0);
            field_0x2060->getOldFrameTransInfo(0)->mTranslate.z += lit_26297;
        }

        checkNextActionRoofHang();
    } else {
        if (frame_ctrl->getFrame() >= field_0x3478 && frame_ctrl->getFrame() <= field_0x347c) {
            cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, 3, 0x200, 0x100);
            current.angle.y = shape_angle.y;
        }

        setRoofHangHandOnSE(&mPolyInfo2);
    }

    return 1;
}

/* 8010163C-801016AC 0FBF7C 0070+00 2/2 0/0 0/0 .text            setRoofHangSwitch__9daAlink_cFv */
void daAlink_c::setRoofHangSwitch() {
    daObjSwHang_c* swhang_p = (daObjSwHang_c*)field_0x280c.getActor();
    current.pos = swhang_p->getHangPos();
    current.pos.y -= lit_25916;
    swhang_p->setHangPlayer();
}

/* 801016AC-801017AC 0FBFEC 0100+00 1/1 0/0 0/0 .text
 * procRoofSwitchHangInit__9daAlink_cFP10fopAc_ac_c             */
int daAlink_c::procRoofSwitchHangInit(fopAc_ac_c* param_0) {
    commonProcInit(PROC_ROOF_SWITCH_HANG);
    deleteEquipItem(TRUE, FALSE);
    setSingleAnimeParam(ANM_ROOF_HANG, &daAlinkHIO_roofHang_c0::m.field_0x0);

    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);
    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;

    field_0x280c.setData(param_0);
    setRoofHangSwitch();

    if (cLib_distanceAngleS(param_0->shape_angle.y, shape_angle.y) > 0x4000) {
        current.angle.y = param_0->shape_angle.y + 0x8000;
    } else {
        current.angle.y = param_0->shape_angle.y;
    }

    setOldRootQuaternion(0, current.angle.y - shape_angle.y, 0);
    shape_angle.y = current.angle.y;
    field_0x2f99 = 0x50;
    mProcVar2.field_0x300c = 0;
    return 1;
}

/* 801017AC-80101874 0FC0EC 00C8+00 1/0 0/0 0/0 .text            procRoofSwitchHang__9daAlink_cFv */
int daAlink_c::procRoofSwitchHang() {
    if (field_0x280c.getActor() == NULL) {
        return procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }

    setRoofHangSwitch();

    if (checkAnmEnd(mUnderFrameCtrl)) {
        setSingleAnimeBaseSpeed(ANM_ROOF_HANG_WAIT, daAlinkHIO_roofHang_c0::m.field_0x1C,
                                daAlinkHIO_roofHang_c0::m.field_0x20);
        mProcVar2.field_0x300c = 1;
    } else if (mProcVar2.field_0x300c != 0) {
        setDoStatus(0x33);

        if (doTrigger()) {
            procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
        }
    }

    return 1;
}
