/**
 * d_a_alink_hang.inc
 * Player hang / climb action handling
 */

#include "rel/d/a/b/d_a_b_ob/d_a_b_ob.h"
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::hangMoveBgCheck(s16 param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/hangMoveBgCheck__9daAlink_cFsP4cXyz.s"
}
#pragma pop

/* 800FA338-800FA5C8 0F4C78 0290+00 3/3 0/0 0/0 .text            changeHangMoveProc__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::changeHangMoveProc(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeHangMoveProc__9daAlink_cFi.s"
}
#pragma pop

/* 800FA5C8-800FA6E4 0F4F08 011C+00 5/5 0/0 0/0 .text            checkHangFootWall__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkHangFootWall() {
    nofralloc
#include "asm/d/a/d_a_alink/checkHangFootWall__9daAlink_cFv.s"
}
#pragma pop

/* 800FA6E4-800FA78C 0F5024 00A8+00 10/10 0/0 0/0 .text            setHangGroundY__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setHangGroundY() {
    cXyz pos;
    mDoMtx_multVecZero(mpLinkModel->i_getAnmMtx(0), &pos);

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkHangStartSideWall(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkHangStartSideWall__9daAlink_cFs.s"
}
#pragma pop

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
    i_offNoResetFlg2(FLG2_UNK_2000);

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangFallStartInit(cM3dGPla* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHangFallStartInit__9daAlink_cFP8cM3dGPla.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 800FB544-800FB650 0F5E84 010C+00 1/0 0/0 0/0 .text            procHangWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangWait__9daAlink_cFv.s"
}
#pragma pop

/* 800FB650-800FB790 0F5F90 0140+00 3/3 0/0 0/0 .text            procHangMoveInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangMoveInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHangMoveInit__9daAlink_cFi.s"
}
#pragma pop

/* 800FB790-800FBBC8 0F60D0 0438+00 1/0 0/0 0/0 .text            procHangMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangMove__9daAlink_cFv.s"
}
#pragma pop

/* 800FBBC8-800FBCD4 0F6508 010C+00 6/6 0/0 0/0 .text            procHangClimbInit__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangClimbInit(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHangClimbInit__9daAlink_cFf.s"
}
#pragma pop

/* 800FBCD4-800FBE04 0F6614 0130+00 1/0 0/0 0/0 .text            procHangClimb__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangClimb() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangClimb__9daAlink_cFv.s"
}
#pragma pop

/* 800FBE04-800FC0D8 0F6744 02D4+00 3/3 0/0 0/0 .text            procHangWallCatchInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangWallCatchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangWallCatchInit__9daAlink_cFv.s"
}
#pragma pop

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
        return procPreActionUnequipInit(0x5D, field_0x27f4);
    }

    commonProcInit(PROC_HANG_LEVER_DOWN);
    field_0x280c.setData(field_0x27f4);
    setSingleAnimeParam(ANM_CLIMB_JUMP, &daAlinkHIO_wallCatch_c0::m.mJumpAnm);
    mProcVar2.field_0x300c = field_0x27f4->shape_angle.y + 0x8000;
    field_0x3198 = 145;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    return 1;
}

/* 800FC390-800FC568 0F6CD0 01D8+00 1/0 0/0 0/0 .text            procHangLeverDown__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHangLeverDown() {
    nofralloc
#include "asm/d/a/d_a_alink/procHangLeverDown__9daAlink_cFv.s"
}
#pragma pop

/* 800FC568-800FC5A4 0F6EA8 003C+00 1/0 0/0 0/0 .text changeDragonActor__9daAlink_cFP10fopAc_ac_c
 */
void daAlink_c::changeDragonActor(fopAc_ac_c* param_0) {
    if (field_0x280c.getActor() != NULL && fopAcM_GetName(field_0x280c.getActor()) == PROC_B_DR) {
        field_0x280c.setData(param_0);
    }
}

/* 800FC5A4-800FC6B4 0F6EE4 0110+00 1/1 0/0 0/0 .text            setDragonHangPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDragonHangPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setDragonHangPos__9daAlink_cFv.s"
}
#pragma pop

/* 800FC6B4-800FC748 0F6FF4 0094+00 1/1 0/0 0/0 .text            setOctaIealHangPos__9daAlink_cFv */
int daAlink_c::setOctaIealHangPos() {
    b_ob_class* ob_p = (b_ob_class*)field_0x280c.getActor();
    if (ob_p == NULL) {
        return 0;
    }

    mDoMtx_stack_c::copy(ob_p->mParts[0].field_0x0->getModel()->i_getAnmMtx(0));
    mDoMtx_stack_c::transM(FLOAT_LABEL(lit_6108), lit_24400, lit_24401);
    mDoMtx_stack_c::multVecZero(&current.pos);
    mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &shape_angle);
    return 1;
}

/* 800FC748-800FC77C 0F7088 0034+00 2/2 0/0 0/0 .text            setBossBodyHangPos__9daAlink_cFv */
void daAlink_c::setBossBodyHangPos() {
    if (field_0x32cc != 0) {
        setDragonHangPos();
    } else {
        setOctaIealHangPos();
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
    setSpecialGravity(tmp_0, mMaxFallSpeed, 0);
    speed.y = FLOAT_LABEL(lit_6108);

    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = 0;
    mProcVar3.field_0x300e.y = 0;
    mProcVar0.field_0x3008 = 0;
    mProcVar3.field_0x300e.z = 0;
    field_0x3080 = 0;

    field_0x280c.setData(param_0);
    setBossBodyHangPos();

    i_onEndResetFlg1(ERFLG1_GANON_FINISH);
    return 1;
}

/* 800FC870-800FCF58 0F71B0 06E8+00 1/0 0/0 0/0 .text            procBossBodyHang__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBossBodyHang() {
    nofralloc
#include "asm/d/a/d_a_alink/procBossBodyHang__9daAlink_cFv.s"
}
#pragma pop

/* 800FCF58-800FCF84 0F7898 002C+00 2/2 0/0 0/0 .text            getLadderUnitCount__9daAlink_cCFv
 */
int daAlink_c::getLadderUnitCount() const {
    return (current.pos.y - field_0x34ec.y) * lit_24600;
}

/* 800FCF84-800FD048 0F78C4 00C4+00 1/1 0/0 0/0 .text            setLadderInit__9daAlink_cFv */
// loop issue
#ifdef NONMATCHING
int daAlink_c::setLadderInit() {
    i_onNoResetFlg3(FLG3_UNK_400000);

    if (i_checkModeFlg(0x40000)) {
        setLadderPos(getLadderUnitCount() - 2);

        while (mWaterY - current.pos.y > daAlinkHIO_swim_c0::m.mInitHeight) {
            current.pos.y += lit_24618;
        }

        procLadderMoveInit(1, 0, &current.pos);
        field_0x33b0 = l_ladderAnmBaseTransY;
        field_0x2060->initOldFrameMorf(lit_7808, 0, 35);
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setLadderPosInit() {
    nofralloc
#include "asm/d/a/d_a_alink/setLadderPosInit__9daAlink_cFv.s"
}
#pragma pop

/* 800FD1F0-800FD288 0F7B30 0098+00 2/2 0/0 0/0 .text            setLadderPos__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setLadderPos(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setLadderPos__9daAlink_cFi.s"
}
#pragma pop

/* 800FD288-800FD2AC 0F7BC8 0024+00 2/2 0/0 0/0 .text            getLadderMoveAnmSpeed__9daAlink_cFv
 */
f32 daAlink_c::getLadderMoveAnmSpeed() {
    return getAnmSpeedStickRate(daAlinkHIO_ladder_c0::m.field_0x48,
                                daAlinkHIO_ladder_c0::m.field_0x4C);
}

/* 800FD2AC-800FD4A8 0F7BEC 01FC+00 3/3 0/0 0/0 .text            changeLadderMoveProc__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeLadderMoveProc(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeLadderMoveProc__9daAlink_cFi.s"
}
#pragma pop

/* 800FD4A8-800FD5E4 0F7DE8 013C+00 5/5 0/0 0/0 .text setMoveBGLadderCorrect__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setMoveBGLadderCorrect() {
    nofralloc
#include "asm/d/a/d_a_alink/setMoveBGLadderCorrect__9daAlink_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLadderUpStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLadderUpStartInit__9daAlink_cFv.s"
}
#pragma pop

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
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLadderDownStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLadderDownStartInit__9daAlink_cFv.s"
}
#pragma pop

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
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLadderMoveInit(int param_0, int param_1, cXyz* param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procLadderMoveInit__9daAlink_cFiiP4cXyz.s"
}
#pragma pop

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
    i_onNoResetFlg3(FLG3_UNK_400000);

    if (i_checkModeFlg(0x40000)) {
        shape_angle.y = field_0x306e + 0x8000;
        current.pos.y -= lit_23595;
        setClimbStartNotGround();
    } else {
        procHangReadyInit();
    }
}

/* 800FE174-800FE3C4 0F8AB4 0250+00 8/8 0/0 0/0 .text            setClimbShapeOffset__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setClimbShapeOffset() {
    nofralloc
#include "asm/d/a/d_a_alink/setClimbShapeOffset__9daAlink_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeClimbMoveProc(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeClimbMoveProc__9daAlink_cFi.s"
}
#pragma pop

/* 800FE5A0-800FE6E8 0F8EE0 0148+00 2/2 0/0 0/0 .text checkClimbMoveUpDownProc__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkClimbMoveUpDownProc(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkClimbMoveUpDownProc__9daAlink_cFi.s"
}
#pragma pop

/* 800FE6E8-800FE868 0F9028 0180+00 2/2 0/0 0/0 .text checkClimbMoveSideProc__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkClimbMoveSideProc(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkClimbMoveSideProc__9daAlink_cFi.s"
}
#pragma pop

/* 800FE868-800FEB90 0F91A8 0328+00 6/6 0/0 0/0 .text            setMoveBGClimbCorrect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setMoveBGClimbCorrect() {
    nofralloc
#include "asm/d/a/d_a_alink/setMoveBGClimbCorrect__9daAlink_cFv.s"
}
#pragma pop

/* 800FEB90-800FEC70 0F94D0 00E0+00 1/1 0/0 0/0 .text
 * checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz             */
// matches with cM3dGPla vtable in the correct spot
#ifdef NONMATCHING
int daAlink_c::checkBgCorrectClimbMove(cXyz* i_startPos, cXyz* i_endPos) {
    if (commonLineCheck(i_startPos, i_endPos)) {
        cM3dGPla tri_plane;
        dComIfG_Bgsp().GetTriPla(mLinkLinChk, &tri_plane);

        if (cLib_distanceAngleS(tri_plane.mNormal.atan2sX_Z(), shape_angle.y) < 0x549F ||
            (i_checkModeFlg(0x10000) && !checkClimbCode(mLinkLinChk)))
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
asm int daAlink_c::checkBgCorrectClimbMove(cXyz* param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz.s"
}
#pragma pop
#endif

/* 800FEC70-800FED50 0F95B0 00E0+00 2/2 0/0 0/0 .text            checkClimbRoof__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkClimbRoof(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkClimbRoof__9daAlink_cFf.s"
}
#pragma pop

/* 800FED50-800FEEC0 0F9690 0170+00 2/2 0/0 0/0 .text checkClimbGround__9daAlink_cFP4cXyzf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkClimbGround(cXyz* param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/checkClimbGround__9daAlink_cFP4cXyzf.s"
}
#pragma pop

/* 800FEEC0-800FF28C 0F9800 03CC+00 5/5 0/0 0/0 .text            checkBgClimbMove__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkBgClimbMove(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkBgClimbMove__9daAlink_cFi.s"
}
#pragma pop

/* 800FF28C-800FF450 0F9BCC 01C4+00 2/2 0/0 0/0 .text setClimbStartNotGround__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setClimbStartNotGround() {
    nofralloc
#include "asm/d/a/d_a_alink/setClimbStartNotGround__9daAlink_cFv.s"
}
#pragma pop

/* 800FF450-800FF704 0F9D90 02B4+00 2/2 0/0 0/0 .text            procClimbUpStartInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbUpStartInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbUpStartInit__9daAlink_cFi.s"
}
#pragma pop

/* 800FF704-800FF818 0FA044 0114+00 1/0 0/0 0/0 .text            procClimbUpStart__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbUpStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbUpStart__9daAlink_cFv.s"
}
#pragma pop

/* 800FF818-800FF9A8 0FA158 0190+00 1/1 0/0 0/0 .text procClimbDownStartInit__9daAlink_cFs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbDownStartInit(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbDownStartInit__9daAlink_cFs.s"
}
#pragma pop

/* 800FF9A8-800FFAB0 0FA2E8 0108+00 1/0 0/0 0/0 .text            procClimbDownStart__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbDownStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbDownStart__9daAlink_cFv.s"
}
#pragma pop

/* 800FFAB0-800FFC58 0FA3F0 01A8+00 1/1 0/0 0/0 .text procClimbMoveUpDownInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveUpDownInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveUpDownInit__9daAlink_cFi.s"
}
#pragma pop

/* 800FFC58-800FFDB0 0FA598 0158+00 1/0 0/0 0/0 .text            procClimbMoveUpDown__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveUpDown() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveUpDown__9daAlink_cFv.s"
}
#pragma pop

/* 800FFDB0-800FFF4C 0FA6F0 019C+00 1/1 0/0 0/0 .text            procClimbMoveSideInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveSideInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveSideInit__9daAlink_cFv.s"
}
#pragma pop

/* 800FFF4C-801000F8 0FA88C 01AC+00 1/0 0/0 0/0 .text            procClimbMoveSide__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbMoveSide() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbMoveSide__9daAlink_cFv.s"
}
#pragma pop

/* 801000F8-80100258 0FAA38 0160+00 7/7 0/0 0/0 .text            procClimbWaitInit__9daAlink_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbWaitInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbWaitInit__9daAlink_cFii.s"
}
#pragma pop

/* 80100258-801003E4 0FAB98 018C+00 1/0 0/0 0/0 .text            procClimbWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbWait__9daAlink_cFv.s"
}
#pragma pop

/* 801003E4-80100464 0FAD24 0080+00 2/2 0/0 0/0 .text            procClimbToRoofInit__9daAlink_cFv
 */
int daAlink_c::procClimbToRoofInit() {
    commonProcInit(PROC_CLIMB_TO_ROOF);
    setSingleAnimeBase(ANM_ROOF_UP);
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    speedF = tmp_0;
    field_0x2f99 = 10;
    dComIfGp_setPlayerStatus0(0, 8);
    return 1;
}

/* 80100464-801005CC 0FADA4 0168+00 1/0 0/0 0/0 .text            procClimbToRoof__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procClimbToRoof() {
    nofralloc
#include "asm/d/a/d_a_alink/procClimbToRoof__9daAlink_cFv.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkRoofHangMovePos() {
    nofralloc
#include "asm/d/a/d_a_alink/checkRoofHangMovePos__9daAlink_cFv.s"
}
#pragma pop

/* 80100770-801008EC 0FB0B0 017C+00 5/5 0/0 0/0 .text            commonRoofHangProc__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::commonRoofHangProc() {
    nofralloc
#include "asm/d/a/d_a_alink/commonRoofHangProc__9daAlink_cFv.s"
}
#pragma pop

/* 801008EC-80100A10 0FB22C 0124+00 5/5 0/0 0/0 .text checkNextActionRoofHang__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkNextActionRoofHang() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionRoofHang__9daAlink_cFv.s"
}
#pragma pop

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
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procRoofHangFrontMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procRoofHangFrontMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 80100EEC-8010121C 0FB82C 0330+00 1/0 0/0 0/0 .text            procRoofHangFrontMove__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procRoofHangFrontMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procRoofHangFrontMove__9daAlink_cFv.s"
}
#pragma pop

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
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);

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
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);
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

    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);
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

/* 80101874-80101890 0FC1B4 001C+00 2/2 0/0 0/0 .text            getHangPos__13daObjSwHang_cFv */
cXyz daObjSwHang_c::getHangPos() {
    return mHangPos;
}
