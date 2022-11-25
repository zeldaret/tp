/* 80126740-80126928 121080 01E8+00 2/2 0/0 0/0 .text            changeCommon__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeCommon() {
    nofralloc
#include "asm/d/a/d_a_alink/changeCommon__9daAlink_cFv.s"
}
#pragma pop

/* 80126928-80126F3C 121268 0614+00 2/2 0/0 0/0 .text            changeWolf__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/changeWolf__9daAlink_cFv.s"
}
#pragma pop

/* 80126F3C-80127C54 12187C 0D18+00 2/2 0/0 0/0 .text            changeLink__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeLink(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeLink__9daAlink_cFi.s"
}
#pragma pop

/* 80127C54-80127CAC 122594 0058+00 2/2 0/0 0/0 .text            onWolfEyeUp__9daAlink_cFv */
void daAlink_c::onWolfEyeUp() {
    if (mWolfEyeUp == 0) {
        mZ2Link.setWolfEyeOpen(true);
        mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime;
        field_0x2fd2 = 20;
    }
}

/* 80127CAC-80127CF0 1225EC 0044+00 5/5 0/0 0/0 .text            offWolfEyeUp__9daAlink_cFv */
void daAlink_c::offWolfEyeUp() {
    if (mWolfEyeUp != 0) {
        mWolfEyeUp = 0;
        field_0x2fd2 = 20;
        mZ2Link.setWolfEyeOpen(false);
    }
}

/* 80127CF0-80127D14 122630 0024+00 1/1 0/0 0/0 .text            wolfSenseTrigger__9daAlink_cFv */
BOOL daAlink_c::wolfSenseTrigger() {
    return itemTriggerCheck(BTN_X);
}

/* 80127D14-80127D2C 122654 0018+00 1/1 0/0 0/0 .text            setWolfSenceStatus__9daAlink_cFUc
 */
void daAlink_c::setWolfSenceStatus(u8 status) {
    dComIfGp_setXStatus(status, 0);
}

/* 80127D2C-80127D50 12266C 0024+00 1/1 0/0 0/0 .text            wolfClawTrigger__9daAlink_cFv */
void daAlink_c::wolfClawTrigger() {
    itemTriggerCheck(BTN_Y);
}

/* 80127D50-80127D68 122690 0018+00 2/2 0/0 0/0 .text            setWolfDigStatus__9daAlink_cFUc */
void daAlink_c::setWolfDigStatus(u8 flag) {
    dComIfGp_setYStatus(13, flag);
}

/* 80127D68-80127DC4 1226A8 005C+00 4/4 0/0 0/0 .text checkWolfShapeReverse__9daAlink_cCFv */
BOOL daAlink_c::checkWolfShapeReverse() const {
    return ((mProcID == PROC_WOLF_SLIDE_READY || mProcID == PROC_WOLF_LOCK_ATTACK_TURN ||
             mProcID == PROC_WOLF_JUMP_AT_SLIDE_LAND) &&
            mCommonCounter != 0) ||
           mProcID == PROC_WOLF_SLIP_TURN_LAND ||
           (mProcID == PROC_WOLF_LARGE_DAMAGE_UP && field_0x3198 != 0) ||
           mProcID == PROC_WOLF_ROPE_TURN;
}

/* 80127DC4-80127E08 122704 0044+00 1/1 0/0 0/0 .text            checkWolfSideStep__9daAlink_cCFv */
BOOL daAlink_c::checkWolfSideStep() const {
    return field_0x2f98 != 0 &&
           ((mProcID == PROC_WOLF_ATN_AC_MOVE && !i_checkModeFlg(1)) ||
            mProcID == PROC_WOLF_SIDESTEP_LAND || mProcID == PROC_WOLF_BACKJUMP_LAND);
}

/* 80127E08-80127F20 122748 0118+00 1/1 0/0 0/0 .text            setWolfTailAngle__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfTailAngle() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfTailAngle__9daAlink_cFv.s"
}
#pragma pop

/* 80127F20-80127F50 122860 0030+00 5/5 0/0 0/0 .text            checkWolfSlowDash__9daAlink_cFv */
BOOL daAlink_c::checkWolfSlowDash() {
    return field_0x2fc7 == 1 || field_0x2fc7 == 3 || field_0x3174 == 11;
}

/* 80127F50-80128478 122890 0528+00 1/1 0/0 0/0 .text            setSpeedAndAngleWolf__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleWolf__9daAlink_cFv.s"
}
#pragma pop

/* 80128478-80128798 122DB8 0320+00 2/2 0/0 0/0 .text setSpeedAndAngleWolfAtn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleWolfAtn() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleWolfAtn__9daAlink_cFv.s"
}
#pragma pop

/* 80128798-8012880C 1230D8 0074+00 4/4 0/0 0/0 .text            checkWolfAtnWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkWolfAtnWait() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfAtnWait__9daAlink_cFv.s"
}
#pragma pop

/* void daAlink_c::checkWolfAtnWait() {
    return checkEnemyGroup(mTargetedActor) && mDemo.getDemoMode() == 0x17 || mTargetedActor != NULL
|| fopAcM_GetName(mTargetedActor) == 0x262 ||
} */

/* 8012880C-80128844 12314C 0038+00 27/27 0/0 0/0 .text
 * checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM */
BOOL daAlink_c::checkUnderMove0BckNoArcWolf(daAlink_c::daAlink_WANM anm_id) const {
    return mUnderAnmHeap[0].checkNoSetArcNo() &&
           m_wlAnmDataTable[anm_id].field_0x0 == mUnderAnmHeap[0].getIdx();
}

/* 80128844-80128F0C 123184 06C8+00 11/11 0/0 0/0 .text setBlendWolfMoveAnime__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendWolfMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendWolfMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 80128F0C-80128F5C 12384C 0050+00 2/2 0/0 0/0 .text            checkWolfAtnMoveBack__9daAlink_cFs
 */
BOOL daAlink_c::checkWolfAtnMoveBack(s16 param_0) {
    f32 cos = cM_scos(param_0);
    return (field_0x2f98 != 1 && cos < lit_44003) || (field_0x2f98 == 1 && cos < lit_44004);
}

/* 80128F5C-80129114 12389C 01B8+00 5/5 0/0 0/0 .text setWolfAtnMoveDirection__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfAtnMoveDirection() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfAtnMoveDirection__9daAlink_cFv.s"
}
#pragma pop

/* 80129114-8012933C 123A54 0228+00 2/2 0/0 0/0 .text setBlendWolfAtnMoveAnime__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendWolfAtnMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendWolfAtnMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 8012933C-8012948C 123C7C 0150+00 1/1 0/0 0/0 .text setBlendWolfAtnBackMoveAnime__9daAlink_cFf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendWolfAtnBackMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendWolfAtnBackMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 8012948C-80129678 123DCC 01EC+00 3/3 0/0 0/0 .text
 * setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDoubleAnimeWolf(f32 param_0, f32 param_1, f32 param_2,
                                       daAlink_c::daAlink_WANM param_3,
                                       daAlink_c::daAlink_WANM param_4, int param_5, f32 param_6) {
    nofralloc
#include "asm/d/a/d_a_alink/setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif.s"
}
#pragma pop

/* 80129678-801296A8 123FB8 0030+00 35/35 0/0 0/0 .text
 * setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM */
void daAlink_c::setSingleAnimeWolfBase(daAlink_c::daAlink_WANM i_anmID) {
    setSingleAnimeWolf(i_anmID, lit_6040, FLOAT_LABEL(lit_6108), -1, lit_6109);
}

/* 801296A8-801296D8 123FE8 0030+00 3/3 0/0 0/0 .text
 * setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf */
void daAlink_c::setSingleAnimeWolfBaseMorf(daAlink_c::daAlink_WANM i_anmID, f32 i_morf) {
    setSingleAnimeWolf(i_anmID, lit_6040, FLOAT_LABEL(lit_6108), -1, i_morf);
}

/* 801296D8-80129704 124018 002C+00 44/44 0/0 0/0 .text
 * setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff */
void daAlink_c::setSingleAnimeWolfBaseSpeed(daAlink_c::daAlink_WANM i_anmID, f32 i_speed, f32 i_morf) {
    setSingleAnimeWolf(i_anmID, i_speed, FLOAT_LABEL(lit_6108), -1, i_morf);
}

/* 80129704-80129848 124044 0144+00 29/29 0/0 0/0 .text
 * setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSingleAnimeWolf(daAlink_c::daAlink_WANM i_anmID, f32 i_speed, f32 i_start,
                                       s16 i_endFrame, f32 i_morf) {
    nofralloc
#include "asm/d/a/d_a_alink/setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf.s"
}
#pragma pop

/* 80129848-8012987C 124188 0034+00 53/53 0/0 0/0 .text
 * setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c */
void daAlink_c::setSingleAnimeWolfParam(daAlink_c::daAlink_WANM i_anmID,
                                        daAlinkHIO_anm_c const* i_anmData) {
    setSingleAnimeWolf(i_anmID, i_anmData->mRate, i_anmData->mStart, i_anmData->mEndF, i_anmData->mInterpolation);
}

/* 8012987C-80129958 1241BC 00DC+00 5/5 0/0 0/0 .text            checkWolfLandAction__9daAlink_cFi
 */
int daAlink_c::checkWolfLandAction(int param_0) {
    f32 temp_f31 = lit_8782 * (mFallHeight - current.pos.y);

    if (checkNoLandDamageSlidePolygon() || temp_f31 < daAlinkHIO_wlDamFall_c0::m.field_0x2C) {
        if (param_0 != 0) {
            procWolfLandDamageInit(0);
        } else if (mProcID == PROC_WOLF_JUMP_ATTACK || mProcID == PROC_WOLF_DASH_REVERSE) {
            return 0;
        } else {
            procWolfLandInit();
        }
    } else {
        int var_r4;
        if (temp_f31 < daAlinkHIO_wlDamFall_c0::m.field_0x30) {
            var_r4 = 1;
        } else {
            var_r4 = 2;
        }

        procWolfLandDamageInit(var_r4);
    }

    return 1;
}

/* 80129958-801299A8 124298 0050+00 1/1 0/0 1/1 .text            checkMidnaUseAbility__9daAlink_cCFv
 */
BOOL daAlink_c::checkMidnaUseAbility() const {
    return i_dComIfGp_checkPlayerStatus1(0, 0x800000) || dKy_withwarp_capture_check();
}

/* 801299A8-80129A80 1242E8 00D8+00 1/1 0/0 0/0 .text            checkWolfUseAbility__9daAlink_cFv
 */
void daAlink_c::checkWolfUseAbility() {
    if (mProcID == PROC_WOLF_GIANT_PUZZLE) {
        return;
    }

    if (checkMidnaLockJumpPoint() != NULL && !i_checkMidnaRide()) {
        offWolfEyeUp();
    } else {
        // event flag 0x4308: senses ability unlocked
        if (i_dComIfGs_isEventBit(0x4308) && field_0x2fd2 == 0 && !checkEventRun() &&
            mWolfEyeUp < daAlinkHIO_wolf_c0::m.mSensesLingerTime && wolfSenseTrigger()) {
            if (mWolfEyeUp == 0) {
                onWolfEyeUp();
            } else {
                offWolfEyeUp();
            }
        }
    }
}

/* 80129A80-80129B44 1243C0 00C4+00 13/13 0/0 0/0 .text checkWolfGroundSpecialMode__9daAlink_cFv
 */
int daAlink_c::checkWolfGroundSpecialMode() {
    if (mLinkAcch.ChkGroundHit() && !i_checkModeFlg(MODE_PLAYER_FLY) &&
        i_checkEndResetFlg0(ERFLG0_UNK_1)) {
        return procCoMetamorphoseInit();
    } else if (mSpecialMode == SMODE_WOLF_PUZZLE || mSpecialMode == 0x28) {
        return procWolfGiantPuzzleInit();
    } else if (checkCargoCarry()) {
        return procWolfCargoCarryInit();
    } else if (checkSlideAction()) {
        return 1;
    } else if (i_checkEndResetFlg1(ERFLG1_UNK_1)) {
        return procWolfScreamWaitInit();
    }
    return 0;
}

/* 80129B44-8012A02C 124484 04E8+00 46/46 0/0 0/0 .text            checkNextActionWolf__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextActionWolf(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionWolf__9daAlink_cFi.s"
}
#pragma pop

/* 8012A02C-8012A228 12496C 01FC+00 3/3 0/0 0/0 .text            wolfSideBgCheck__9daAlink_cFs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::wolfSideBgCheck(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/wolfSideBgCheck__9daAlink_cFs.s"
}
#pragma pop

/* 8012A228-8012A330 124B68 0108+00 4/4 0/0 0/0 .text checkWolfAttackReverse__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfAttackReverse(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfAttackReverse__9daAlink_cFi.s"
}
#pragma pop

/* 8012A330-8012A41C 124C70 00EC+00 1/1 0/0 0/0 .text checkWolfBarrierHitReverse__9daAlink_cFv */
int daAlink_c::checkWolfBarrierHitReverse() {
    if (field_0x3100 != 0 && mProcID != PROC_FRONT_ROLL_SUCCESS && mProcID != PROC_DAMAGE &&
        mProcID != PROC_WOLF_ATTACK_REVERSE && mProcID != PROC_WOLF_DASH_REVERSE) {
        if (i_checkWolf()) {
            return procWolfDashReverseInit(1);
        } else if (mLinkAcch.ChkGroundHit()) {
            if (cLib_distanceAngleS(mCollisionRot.y, field_0x3102) >= 0x4000) {
                setFrontRollCrashShock(0);
                return procDamageInit(NULL, 1);
            } else {
                return procFrontRollSuccessInit();
            }
        } else {
            setFrontRollCrashShock(0);
            return procCoLargeDamageInit(-6, 1, 0, 0, NULL, 0);
        }
    }

    return 0;
}

/* 8012A41C-8012A498 124D5C 007C+00 2/2 0/0 0/0 .text
 * checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo         */
bool daAlink_c::checkWolfBarrierWallHit(cBgS_PolyInfo& i_poly) {
    if (field_0x3100 != 0 || checkZeroSpeedF()) {
        return false;
    }

    s16 bg_name = getMoveBGActorName(i_poly, 1);
    if (bg_name == PROC_OBJ_TP || bg_name == PROC_OBJ_GB || bg_name == PROC_Obj_GanonWall2) {
        return true;
    }

    return false;
}

/* 8012A498-8012ACCC 124DD8 0834+00 1/1 0/0 0/0 .text            wolfBgCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::wolfBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/wolfBgCheck__9daAlink_cFv.s"
}
#pragma pop

/* 8012ACCC-8012AD1C 12560C 0050+00 1/1 0/0 0/0 .text            changeWolfBlendRate__9daAlink_cFi
 */
void daAlink_c::changeWolfBlendRate(int param_0) {
    if (checkWolfGrabAnime()) {
        if (param_0 == 7) {
            mNowAnmPackUpper[2].setRatio(FLOAT_LABEL(lit_6108));
        } else if (param_0 == 3) {
            mNowAnmPackUpper[2].setRatio(lit_6040);
        }
    } else if (checkBarkAnime()) {
        if (param_0 == 2) {
            mNowAnmPackUpper[2].setRatio(FLOAT_LABEL(lit_6108));
        } else if (param_0 == 3) {
            mNowAnmPackUpper[2].setRatio(lit_6040);
        }
    }
}

/* 8012AD1C-8012B724 12565C 0A08+00 1/1 0/0 0/0 .text            setWolfFootMatrix__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfFootMatrix() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfFootMatrix__9daAlink_cFv.s"
}
#pragma pop

/* 8012B724-8012BFA8 126064 0884+00 1/1 0/0 0/0 .text            wolfFootBgCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::wolfFootBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/wolfFootBgCheck__9daAlink_cFv.s"
}
#pragma pop

/* 8012BFA8-8012C1F4 1268E8 024C+00 6/6 0/0 0/0 .text checkWolfWaitSlipPolygon__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkWolfWaitSlipPolygon() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfWaitSlipPolygon__9daAlink_cFv.s"
}
#pragma pop

/* 8012C1F4-8012C308 126B34 0114+00 2/2 0/0 0/0 .text            setWolfWaitSlip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfWaitSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfWaitSlip__9daAlink_cFv.s"
}
#pragma pop

/* 8012C308-8012C30C 126C48 0004+00 4/4 0/0 0/0 .text            checkWolfAtnDoCharge__9daAlink_cFv
 */
void daAlink_c::checkWolfAtnDoCharge() {}

/* 8012C30C-8012CB0C 126C4C 0800+00 1/1 0/0 0/0 .text            setWolfChainPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfChainPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfChainPos__9daAlink_cFv.s"
}
#pragma pop

/* 8012CB0C-8012CBE4 12744C 00D8+00 1/1 0/0 0/0 .text            setWolfAnmVoice__9daAlink_cFv */
#ifdef NONMATCHING
void daAlink_c::setWolfAnmVoice() {
    s8* var_r30 = field_0x2160;

    if (field_0x2fd8 >= 12 || field_0x215c == NULL) {
        return;
    }

    for (int i = 0; i < 4; i++) {
        f32 temp_f31 = *var_r30;
        if (*var_r30 != -1 && field_0x215c->checkPass(temp_f31)) {
            voiceStart(label[field_0x2fd8]);
        }
        var_r30++;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfAnmVoice() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfAnmVoice__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012CBE4-8012CD28 127524 0144+00 4/4 0/0 0/0 .text procWolfServiceWaitInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfServiceWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfServiceWaitInit__9daAlink_cFi.s"
}
#pragma pop

/* 8012CD28-8012CF68 127668 0240+00 1/0 0/0 0/0 .text            procWolfServiceWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfServiceWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfServiceWait__9daAlink_cFv.s"
}
#pragma pop

/* 8012CF68-8012CFEC 1278A8 0084+00 1/1 0/0 0/0 .text            procWolfTiredWaitInit__9daAlink_cFv
 */
int daAlink_c::procWolfTiredWaitInit() {
    if (checkWolfWaitSlipPolygon() && !checkInputOnR()) {
        return procWolfWaitSlipInit();
    }

    if (!commonProcInitNotSameProc(PROC_WOLF_TIRED_WAIT)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setSingleAnimeWolfBase(WANM_WAIT_TO_TIRED);
    return 1;
}

/* 8012CFEC-8012D050 12792C 0064+00 1/0 0/0 0/0 .text            procWolfTiredWait__9daAlink_cFv */
int daAlink_c::procWolfTiredWait() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (!checkNextActionWolf(0) && frameCtrl->checkAnmEnd()) {
        setSingleAnimeWolfBase(WANM_WAIT_TIRED);
    }

    return 1;
}

/* 8012D050-8012D104 127990 00B4+00 3/2 0/0 0/0 .text procWolfMidnaRideShockInit__9daAlink_cFv */
int daAlink_c::procWolfMidnaRideShockInit() {
    if (!i_checkWolf()) {
        dComIfGp_evmng_cutEnd(field_0x3184);
        return procWaitInit();
    }

    if (!commonProcInitNotSameProc(PROC_WOLF_MIDNA_RIDE_SHOCK)) {
        return 0;
    }

    setSingleAnimeWolfBase(WANM_MIDNA_SHOCK);
    setFaceBasicTexture(FTANM_UNK_9F);

    voiceStart(Z2SE_WL_V_MD_SHOCK);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = mCollisionRot.y;

    return 1;
}

/* 8012D104-8012D1A8 127A44 00A4+00 1/0 0/0 0/0 .text procWolfMidnaRideShock__9daAlink_cFv */
int daAlink_c::procWolfMidnaRideShock() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x32) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextActionWolf(0);
        }
    } else if (frameCtrl->getFrame() > lit_17382 && mDemo.getDemoMode() != 0x32) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012D1A8-8012D2A8 127AE8 0100+00 13/13 0/0 0/0 .text            procWolfWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8012D2A8-8012D380 127BE8 00D8+00 1/0 0/0 0/0 .text            procWolfWait__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfWait() {
    s16 old_shapeangle = mCollisionRot.y;

    if (!checkNextActionWolf(0) && !checkFrontWallTypeAction()) {
        field_0x33f0 = (s16)(mCollisionRot.y - old_shapeangle) * lit_15460;
        setBlendWolfMoveAnime(lit_6041);

        if (checkServiceWaitMode()) {
            field_0x30ca--;
            
            if (field_0x30ca == 0) {
                procWolfServiceWaitInit(0);
            }
        } else {
            initServiceWaitTime();
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWait__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012D380-8012D3E4 127CC0 0064+00 2/2 0/0 0/0 .text            procWolfMoveInit__9daAlink_cFv */
int daAlink_c::procWolfMoveInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_MOVE)) {
        return 0;
    }

    setBlendWolfMoveAnime(daAlinkHIO_wlMove_c0::m.field_0x94);
    setFootEffectProcType(3);

    return 1;
}

/* 8012D3E4-8012D474 127D24 0090+00 1/0 0/0 0/0 .text            procWolfMove__9daAlink_cFv */
int daAlink_c::procWolfMove() {
    if (!checkNextActionWolf(0) && !checkFrontWallTypeAction()) {
        if (mDemo.getDemoMode() == 2) {            
            if (mNormalSpeed > field_0x594 * daAlinkHIO_wlMoveNoP_c0::m.field_0x28) {
                mNormalSpeed = field_0x594 * daAlinkHIO_wlMoveNoP_c0::m.field_0x28;
            }
        }

        setBlendWolfMoveAnime(lit_6041);
        field_0x30a2 = field_0x2fec;
    }

    return 1;
}

/* 8012D474-8012D590 127DB4 011C+00 1/1 0/0 0/0 .text            procWolfDashInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDashInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDashInit__9daAlink_cFv.s"
}
#pragma pop

/* 8012D590-8012D8C0 127ED0 0330+00 1/0 0/0 0/0 .text            procWolfDash__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDash() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDash__9daAlink_cFv.s"
}
#pragma pop

/* 8012D8C0-8012DA5C 128200 019C+00 2/2 0/0 0/0 .text procWolfDashReverseInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDashReverseInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDashReverseInit__9daAlink_cFi.s"
}
#pragma pop

/* 8012DA5C-8012DBA8 12839C 014C+00 1/0 0/0 0/0 .text            procWolfDashReverse__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDashReverse() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDashReverse__9daAlink_cFv.s"
}
#pragma pop

/* 8012DBA8-8012DC44 1284E8 009C+00 1/1 0/0 0/0 .text procWolfAtnActorMoveInit__9daAlink_cFv */
int daAlink_c::procWolfAtnActorMoveInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_ATN_AC_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    setWolfAtnMoveDirection();
    setBlendWolfAtnMoveAnime(daAlinkHIO_wlMove_c0::m.field_0x94);
    
    if (checkWolfAtnWait()) {
        voiceStartLevel(Z2SE_WL_V_ROAR);
    }

    return 1;
}

/* 8012DC44-8012DD08 128584 00C4+00 1/0 0/0 0/0 .text            procWolfAtnActorMove__9daAlink_cFv
 */
int daAlink_c::procWolfAtnActorMove() {
    setWolfAtnMoveDirection();

    if (!checkNextActionWolf(0)) {
        if (checkZeroSpeedF()) {
            onModeFlg(1);

            if (checkWolfWaitSlipPolygon() && !checkInputOnR()) {
                return procWolfWaitSlipInit();
            }
        } else {
            offModeFlg(1);
        }

        setBlendWolfAtnMoveAnime(lit_6041);
    
        if (checkWolfAtnWait()) {
            voiceStartLevel(Z2SE_WL_V_ROAR);
        }
    }

    return 1;
}

/* 8012DD08-8012DDB4 128648 00AC+00 1/1 0/0 0/0 .text            procWolfWaitTurnInit__9daAlink_cFv
 */
int daAlink_c::procWolfWaitTurnInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_WAIT_TURN)) {
        return 0;
    }

    f32 var_f1;
    if (checkWolfDashMode()) {
        var_f1 = daAlinkHIO_wlMove_c0::m.field_0x74;
    } else {
        var_f1 = daAlinkHIO_wlMoveNoP_c0::m.field_0x18;
    }

    setSingleAnimeWolfBaseSpeed(WANM_WALK_A, var_f1, daAlinkHIO_wlMove_c0::m.field_0x94);

    if (checkEventRun()) {
        mNormalSpeed = FLOAT_LABEL(lit_6108);
    }

    field_0x300e = field_0x2fe2;
    current.angle.y = mCollisionRot.y;

    return 1;
}

/* 8012DDB4-8012DEC8 1286F4 0114+00 1/0 0/0 0/0 .text            procWolfWaitTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfWaitTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitTurn__9daAlink_cFv.s"
}
#pragma pop

/* 8012DEC8-8012E0AC 128808 01E4+00 2/2 0/0 0/0 .text            procWolfSideStepInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSideStepInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSideStepInit__9daAlink_cFi.s"
}
#pragma pop

/* 8012E0AC-8012E1E8 1289EC 013C+00 1/0 0/0 0/0 .text            procWolfSideStep__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSideStep() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSideStep__9daAlink_cFv.s"
}
#pragma pop

/* 8012E1E8-8012E2DC 128B28 00F4+00 1/1 0/0 0/0 .text procWolfSideStepLandInit__9daAlink_cFs */
int daAlink_c::procWolfSideStepLandInit(s16 param_0) {
    commonProcInit(PROC_WOLF_SIDESTEP_LAND);

    if (field_0x2f98 == 1) {
        setSingleAnimeWolfParam(WANM_BACK_JUMP_END, &daAlinkHIO_wlSideStep_c0::m.field_0x3C);
        field_0x3478 = daAlinkHIO_wlSideStep_c0::m.field_0x3C.field_0x10;
        field_0x2fcc = 10;
    } else {
        field_0x2fcc = 0;
        setSingleAnimeWolfParam(field_0x2f98 == 2 ? WANM_SIDE_JUMP_LEFT_END : WANM_SIDE_JUMP_RIGHT_END, &daAlinkHIO_wlSideStep_c0::m.field_0x14);
        field_0x3478 = daAlinkHIO_wlSideStep_c0::m.field_0x14.field_0x10;
    }

    field_0x3012 = param_0;
    field_0x2f9d = 4;
    setFootEffectProcType(2);
    i_onResetFlg1(0xC);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setStepLandVibration();

    return 1;
}

/* 8012E2DC-8012E398 128C1C 00BC+00 1/0 0/0 0/0 .text            procWolfSideStepLand__9daAlink_cFv
 */
int daAlink_c::procWolfSideStepLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (field_0x2fcc != 0) {
        field_0x2fcc = 10;
    }

    setWolfAtnMoveDirection();
    checkWolfAtnDoCharge();

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x10) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextActionWolf(0);
        }
    } else if (frameCtrl->getFrame() > field_0x3478) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012E398-8012E508 128CD8 0170+00 3/3 0/0 0/0 .text            procWolfBackJumpInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfBackJumpInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfBackJumpInit__9daAlink_cFi.s"
}
#pragma pop

/* 8012E508-8012E5F4 128E48 00EC+00 1/0 0/0 0/0 .text            procWolfBackJump__9daAlink_cFv */
int daAlink_c::procWolfBackJump() {
    cLib_addCalcAngleS(&mCollisionRot.y, mCommonCounter,
                       daAlinkHIO_wlAtnMove_c0::m.field_0x4,
                       daAlinkHIO_wlAtnMove_c0::m.field_0x0,
                       daAlinkHIO_wlAtnMove_c0::m.field_0x2);
    current.angle.y = mCollisionRot.y - -0x8000;

    if (field_0x3010 != 0) {
        checkWolfAtnDoCharge();
    }

    backJumpSpeedDec();

    if (mUnderFrameCtrl[0].checkAnmEnd() && mLinkAcch.ChkGroundHit()) {
        procWolfBackJumpLandInit(field_0x3012, field_0x3010);
    } else if (mDemo.getDemoMode() != 0x10 && current.pos.y < mLastJumpPos.y - daAlinkHIO_wlBackJump_c0::m.field_0x30) {
        field_0x2f98 = 0;
        procWolfFallInit(2, daAlinkHIO_wlBackJump_c0::m.field_0x34);
    }

    return 1;
}

/* 8012E5F4-8012E684 128F34 0090+00 1/1 0/0 0/0 .text procWolfBackJumpLandInit__9daAlink_cFss */
int daAlink_c::procWolfBackJumpLandInit(s16 param_0, s16 param_1) {
    commonProcInit(PROC_WOLF_BACKJUMP_LAND);
    setSingleAnimeWolfParam(WANM_BACKFLIP_END, &daAlinkHIO_wlBackJump_c0::m.field_0x14);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f9d = 4;
    setFootEffectProcType(2);
    field_0x2fcc = 10;
    field_0x3012 = param_0;
    field_0x3010 = param_1;
    setStepLandVibration();

    return 1;
}

/* 8012E684-8012E754 128FC4 00D0+00 1/0 0/0 0/0 .text            procWolfBackJumpLand__9daAlink_cFv
 */
int daAlink_c::procWolfBackJumpLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (field_0x2fcc != 0) {
        field_0x2fcc = 10;
    }

    setWolfAtnMoveDirection();

    if (field_0x3010 != 0) {
        checkWolfAtnDoCharge();
    }

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x10) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextActionWolf(0);
        }
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlBackJump_c0::m.field_0x14.field_0x10) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012E754-8012E83C 129094 00E8+00 2/2 0/0 0/0 .text            procWolfHowlInit__9daAlink_cFi */
int daAlink_c::procWolfHowlInit(int param_0) {
    if (checkEventRun() && mProcID == PROC_WOLF_HOWL) {
        return 0;
    }

    commonProcInit(PROC_WOLF_HOWL);

    if (param_0 != 0) {
        setSingleAnimeWolfParam(WANM_HOWL_SIT, &daAlinkHIO_wlHowl_c0::m.field_0x14);
        onModeFlg(0x800000);
        field_0x3478 = daAlinkHIO_wlHowl_c0::m.field_0x14.field_0x10;
        field_0x300e = 1;
    } else {
        setSingleAnimeWolfParam(WANM_HOWL, &daAlinkHIO_wlHowl_c0::m.field_0x0);
        field_0x3478 = daAlinkHIO_wlHowl_c0::m.field_0x0.field_0x10;
        field_0x300e = 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mCommonCounter = 0;

    return 1;
}

/* 8012E83C-8012E9C8 12917C 018C+00 1/0 0/0 0/0 .text            procWolfHowl__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHowl() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHowl__9daAlink_cFv.s"
}
#pragma pop

/* 8012E9C8-8012EB94 129308 01CC+00 2/2 0/0 0/0 .text            procWolfAutoJumpInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfAutoJumpInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfAutoJumpInit__9daAlink_cFi.s"
}
#pragma pop

/* 8012EB94-8012EDD0 1294D4 023C+00 1/0 0/0 0/0 .text            procWolfAutoJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfAutoJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfAutoJump__9daAlink_cFv.s"
}
#pragma pop

/* 8012EDD0-8012EFB8 129710 01E8+00 12/12 0/0 0/0 .text            procWolfFallInit__9daAlink_cFif
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfFallInit(int param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfFallInit__9daAlink_cFif.s"
}
#pragma pop

/* 8012EFB8-8012F138 1298F8 0180+00 1/0 0/0 0/0 .text            procWolfFall__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfFall() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfFall__9daAlink_cFv.s"
}
#pragma pop

/* 8012F138-8012F1F0 129A78 00B8+00 2/2 0/0 0/0 .text            procWolfLandInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfLandInit() {
    commonProcInit(PROC_WOLF_LAND);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_02f99 = 12;

    setSingleWolfAnimeParam(WANM_JUMP_ATTACK_END, &daAlinkHIO_wlAutoJump_c0::m.field_0x14);
    field_0x3478 = daAlinkHIO_wlAutoJump_c0::m.field_0x14.field_0x10;
    mCommonCounter = 1;

    field_0x2f9d = 4;
    setFootEffectProcType(4);

    dComIfGp_getVibration().StartShock(cXyz(0.0f, 1.0f, 0.0f));
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLandInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012F1F0-8012F278 129B30 0088+00 1/0 0/0 0/0 .text            procWolfLand__9daAlink_cFv */
int daAlink_c::procWolfLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (mCommonCounter != 0) {
        field_0x2f99 = 4;
    }

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > field_0x3478) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012F278-8012F358 129BB8 00E0+00 1/1 0/0 0/0 .text            procWolfSitInit__9daAlink_cFi */
int daAlink_c::procWolfSitInit(int param_0) {
    if (!commonProcInitNotSameProc(PROC_WOLF_SIT)) {
        return 0;
    }

    if (param_0 != 0 && !checkUnderMove0BckNoArcWolf(WANM_WAIT_SIT) && !checkUnderMove0BckNoArcWolf(WANM_HOWL_SIT)) {
        setSingleAnimeWolfParam(WANM_SIT, &daAlinkHIO_wlLie_c0::m.field_0x0);
        field_0x3198 = 0;
    } else {
        field_0x3198 = 1;
        
        if (!checkUnderMove0BckNoArcWolf(WANM_WAIT_SIT)) {
            setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44, daAlinkHIO_wlLie_c0::m.field_0x48);
        }
    }

    current.angle.y = mCollisionRot.y;

    return 1;
}

/* 8012F358-8012F41C 129C98 00C4+00 1/0 0/0 0/0 .text            procWolfSit__9daAlink_cFv */
int daAlink_c::procWolfSit() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), checkWolfDashMode() ?
                                                      daAlinkHIO_wlMove_c0::m.field_0x6C :
                                                      daAlinkHIO_wlMoveNoP_c0::m.field_0x10);

    if (!spActionButton() && mDemo.getDemoMode() != 0xF) {
        checkNextActionWolfFromLie();
    } else if (frameCtrl->checkAnmEnd()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44, daAlinkHIO_wlLie_c0::m.field_0x48);
        field_0x3198 = 1;
    }

    return 1;
}

/* 8012F41C-8012F500 129D5C 00E4+00 1/1 0/0 0/0 .text            procWolfStepMoveInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfStepMoveInit() {
    commonProcInit(PROC_WOLF_STEP_MOVE);
    setSingleAnimeWolfParam(WANM_BUMP_START, &daAlinkHIO_wlWallHang_c0::m.field_0x50);
    field_0x3478 = 0.5f * mNormalSpeed;
    mNormalSpeed = 0.0f;
    mCommonCounter = 0;

    field_0x3588 = l_wolfBaseAnime;
    current.pos.x -= cM_ssin(mCollisionRot.y) * 10.0f;
    current.pos.z -= cM_scos(mCollisionRot.y) * 10.0f;

    field_0x2060->getOldFrameTransInfo(0)->mTranslate.z += 10.0f;

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfStepMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfStepMoveInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012F500-8012F634 129E40 0134+00 1/0 0/0 0/0 .text            procWolfStepMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfStepMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfStepMove__9daAlink_cFv.s"
}
#pragma pop

/* 8012F634-8012F6EC 129F74 00B8+00 1/1 0/0 0/0 .text            procWolfSlipInit__9daAlink_cFv */
int daAlink_c::procWolfSlipInit() {
    commonProcInit(PROC_WOLF_SLIP);
    setSingleAnimeWolfParam(WANM_SLIP, &daAlinkHIO_wlMove_c0::m.field_0x0);

    if (checkWolfDashMode()) {
        mNormalSpeed = mSpeedF * daAlinkHIO_wlMove_c0::m.field_0xA4;
    } else {
        mNormalSpeed = mSpeedF * daAlinkHIO_wlMoveNoP_c0::m.field_0x3C;
    }

    current.angle.y = mCollisionRot.y;
    field_0x3588 = l_wolfBaseAnime;
    setFootEffectProcType(1);

    return 1;
}

/* 8012F6EC-8012F840 12A02C 0154+00 1/0 0/0 0/0 .text            procWolfSlip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlip__9daAlink_cFv.s"
}
#pragma pop

/* 8012F840-8012F9C0 12A180 0180+00 2/2 0/0 0/0 .text            procWolfSlipTurnInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlipTurnInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlipTurnInit__9daAlink_cFi.s"
}
#pragma pop

/* 8012F9C0-8012FB18 12A300 0158+00 1/0 0/0 0/0 .text            procWolfSlipTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlipTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlipTurn__9daAlink_cFv.s"
}
#pragma pop

/* 8012FB18-8012FBB4 12A458 009C+00 1/1 0/0 0/0 .text procWolfSlipTurnLandInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlipTurnLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlipTurnLandInit__9daAlink_cFv.s"
}
#pragma pop

/* 8012FBB4-8012FC38 12A4F4 0084+00 1/0 0/0 0/0 .text            procWolfSlipTurnLand__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlipTurnLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlipTurnLand__9daAlink_cFv.s"
}
#pragma pop

/* 8012FC38-8012FD2C 12A578 00F4+00 2/2 0/0 0/0 .text procWolfSlideReadyInit__9daAlink_cFsi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlideReadyInit(s16 param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideReadyInit__9daAlink_cFsi.s"
}
#pragma pop

/* 8012FD2C-8012FE80 12A66C 0154+00 1/0 0/0 0/0 .text            procWolfSlideReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlideReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideReady__9daAlink_cFv.s"
}
#pragma pop

/* 8012FE80-8012FFA4 12A7C0 0124+00 2/2 0/0 0/0 .text            procWolfSlideInit__9daAlink_cFsi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlideInit(s16 param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideInit__9daAlink_cFsi.s"
}
#pragma pop

/* 8012FFA4-801300D4 12A8E4 0130+00 1/0 0/0 0/0 .text            procWolfSlide__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlide() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlide__9daAlink_cFv.s"
}
#pragma pop

/* 801300D4-80130138 12AA14 0064+00 1/1 0/0 0/0 .text            procWolfSlideLandInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlideLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideLandInit__9daAlink_cFv.s"
}
#pragma pop

/* 80130138-801301E4 12AA78 00AC+00 1/0 0/0 0/0 .text            procWolfSlideLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlideLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideLand__9daAlink_cFv.s"
}
#pragma pop

/* 801301E4-80130268 12AB24 0084+00 3/3 0/0 0/0 .text            procWolfWaitSlipInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfWaitSlipInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitSlipInit__9daAlink_cFv.s"
}
#pragma pop

/* 80130268-80130440 12ABA8 01D8+00 1/0 0/0 0/0 .text            procWolfWaitSlip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfWaitSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitSlip__9daAlink_cFv.s"
}
#pragma pop

/* 80130440-801304D4 12AD80 0094+00 2/2 0/0 0/0 .text procWolfSlopeStartInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlopeStartInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlopeStartInit__9daAlink_cFi.s"
}
#pragma pop

/* 801304D4-8013056C 12AE14 0098+00 1/0 0/0 0/0 .text            procWolfSlopeStart__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSlopeStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlopeStart__9daAlink_cFv.s"
}
#pragma pop

/* 8013056C-80130580 12AEAC 0014+00 1/1 0/0 0/0 .text daAlink_searchGoldWolf__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchGoldWolf(fopAc_ac_c* i_actor, void*) {
    if (fopAcM_GetName(i_actor) == PROC_NPC_GWOLF) {
        return i_actor;
    }

    return NULL;
}

/* 80130580-80130654 12AEC0 00D4+00 1/1 0/0 0/0 .text daAlink_searchWolfHowl__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchWolfHowl(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchWolfHowl__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 80130654-80130700 12AF94 00AC+00 1/1 0/0 0/0 .text            setWolfHowlNotHappen__9daAlink_cFi
 */
void daAlink_c::setWolfHowlNotHappen(int param_0) {
    field_0x28f0 = -1;

    if (field_0x3198 == 0xEE) {
        field_0x32cc = 0x532;
    } else {
        field_0x32cc = 0x535;
    }

    mCommonCounter = 0;

    if (!checkUnderMove0BckNoArcWolf(WANM_HOWL_END)) {
        if (param_0 != 0) {
            setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44, daAlinkHIO_wlLie_c0::m.field_0x48);
        } else {
            setSingleAnimeWolfBase(WANM_SERVICE_WAIT_D);
        }
    }
}

/* 80130700-80130BC4 12B040 04C4+00 1/1 0/0 0/0 .text            procWolfHowlDemoInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHowlDemoInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHowlDemoInit__9daAlink_cFv.s"
}
#pragma pop

/* 80130BC4-801312C8 12B504 0704+00 1/0 0/0 0/0 .text            procWolfHowlDemo__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHowlDemo() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHowlDemo__9daAlink_cFv.s"
}
#pragma pop

/* 801312C8-80131408 12BC08 0140+00 1/1 0/0 0/0 .text            setWolfHowling__15daObj_Sekizoa_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_Sekizoa_c::setWolfHowling() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfHowling__15daObj_Sekizoa_cFv.s"
}
#pragma pop

/* 80131408-80131450 12BD48 0048+00 1/0 0/0 0/0 .text            checkWolfRope__9daAlink_cFv */
BOOL daAlink_c::checkWolfRope() {
    return i_checkModeFlg(0x20000) && field_0x280c.getActor() != NULL && fopAcM_GetName(field_0x280c.getActor()) == PROC_Obj_Crope;
}

/* 80131450-80131628 12BD90 01D8+00 2/2 0/0 0/0 .text
 * checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi        */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm fopAc_ac_c* daAlink_c::checkWolfRopeHit(dCcD_GObjInf* param_0, cXyz const* param_1,
                                     int param_2) const {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi.s"
}
#pragma pop

/* 80131628-801316A4 12BF68 007C+00 2/2 0/0 0/0 .text            checkWolfRopeJumpHang__9daAlink_cFv
 */
int daAlink_c::checkWolfRopeJumpHang() {
    fopAc_ac_c* hit_actor = checkWolfRopeHit(&field_0x850[0], &current.pos, 1);
    if (hit_actor == NULL) {
        hit_actor = checkWolfRopeHit(&field_0xFB8, &current.pos, 1);
    }

    if (hit_actor != NULL) {
        field_0x280c.setData(hit_actor);
        return procWolfRopeHangInit(4);
    }

    return 0;
}

/* 801316A4-80131718 12BFE4 0074+00 1/1 0/0 0/0 .text            getWolfRopeMoveSpeed__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
f32 daAlink_c::getWolfRopeMoveSpeed() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    f32 frame = frameCtrl->getFrame();

    if (frame >= 13.5f) {
        frame -= 13.5f;
    }

    return daAlinkHIO_wlRope_c0::m.field_0x24 * frameCtrl->getRate() * cM_fsin(0.2327106f * frame);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daAlink_c::getWolfRopeMoveSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfRopeMoveSpeed__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80131718-801319F0 12C058 02D8+00 6/6 0/0 0/0 .text            setWolfRopePosY__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfRopePosY() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfRopePosY__9daAlink_cFv.s"
}
#pragma pop

/* 801319F0-80131A6C 12C330 007C+00 5/5 0/0 0/0 .text initWolfRopeShapeAngle__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initWolfRopeShapeAngle() {
    nofralloc
#include "asm/d/a/d_a_alink/initWolfRopeShapeAngle__9daAlink_cFv.s"
}
#pragma pop

/* 80131A6C-80131AFC 12C3AC 0090+00 5/5 0/0 0/0 .text            wolfRopeSwingInc__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::wolfRopeSwingInc(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/wolfRopeSwingInc__9daAlink_cFf.s"
}
#pragma pop

/* 80131AFC-80131C00 12C43C 0104+00 8/8 0/0 0/0 .text            setWolfRopeOffsetY__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfRopeOffsetY(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfRopeOffsetY__9daAlink_cFi.s"
}
#pragma pop

/* 80131C00-80131C74 12C540 0074+00 2/2 0/0 0/0 .text            getDirectionRopeMove__9daAlink_cCFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getDirectionRopeMove() const {
    nofralloc
#include "asm/d/a/d_a_alink/getDirectionRopeMove__9daAlink_cCFv.s"
}
#pragma pop

/* 80131C74-80131DA0 12C5B4 012C+00 5/5 0/0 0/0 .text            procWolfRopeMoveInit__9daAlink_cFii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeMoveInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeMoveInit__9daAlink_cFii.s"
}
#pragma pop

/* 80131DA0-80132738 12C6E0 0998+00 1/0 0/0 0/0 .text            procWolfRopeMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeMove__9daAlink_cFv.s"
}
#pragma pop

/* 80132738-80132914 12D078 01DC+00 5/5 0/0 0/0 .text            procWolfRopeHangInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeHangInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeHangInit__9daAlink_cFi.s"
}
#pragma pop

/* 80132914-80132D68 12D254 0454+00 1/0 0/0 0/0 .text            procWolfRopeHang__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeHang() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeHang__9daAlink_cFv.s"
}
#pragma pop

/* 80132D68-80132E88 12D6A8 0120+00 1/1 0/0 0/0 .text            procWolfRopeTurnInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeTurnInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeTurnInit__9daAlink_cFv.s"
}
#pragma pop

/* 80132E88-80133054 12D7C8 01CC+00 1/0 0/0 0/0 .text            procWolfRopeTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeTurn__9daAlink_cFv.s"
}
#pragma pop

/* 80133054-80133164 12D994 0110+00 1/1 0/0 0/0 .text procWolfRopeStaggerInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeStaggerInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeStaggerInit__9daAlink_cFi.s"
}
#pragma pop

/* 80133164-8013384C 12DAA4 06E8+00 1/0 0/0 0/0 .text            procWolfRopeStagger__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeStagger() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeStagger__9daAlink_cFv.s"
}
#pragma pop

/* 8013384C-80133930 12E18C 00E4+00 1/1 0/0 0/0 .text procWolfRopeSubjectivityInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeSubjectivityInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeSubjectivityInit__9daAlink_cFv.s"
}
#pragma pop

/* 80133930-80133D6C 12E270 043C+00 1/0 0/0 0/0 .text procWolfRopeSubjectivity__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRopeSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeSubjectivity__9daAlink_cFv.s"
}
#pragma pop

/* 80133D6C-80133EF0 12E6AC 0184+00 0/0 0/0 1/1 .text            getWolfTagJumpTime__9daAlink_cCFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getWolfTagJumpTime() const {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfTagJumpTime__9daAlink_cCFv.s"
}
#pragma pop

/* 80133EF0-80134000 12E830 0110+00 3/3 1/1 1/1 .text checkMidnaLockJumpPoint__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cXyz* daAlink_c::checkMidnaLockJumpPoint() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkMidnaLockJumpPoint__9daAlink_cCFv.s"
}
#pragma pop

/* 80134000-80134838 12E940 0838+00 4/4 0/0 0/0 .text
 * procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfTagJumpInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80134838-80134DB8 12F178 0580+00 1/0 0/0 0/0 .text            procWolfTagJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfTagJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJump__9daAlink_cFv.s"
}
#pragma pop

/* 80134DB8-80134EBC 12F6F8 0104+00 1/1 0/0 0/0 .text
 * procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfTagJumpLandInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80134EBC-80135050 12F7FC 0194+00 1/0 0/0 0/0 .text            procWolfTagJumpLand__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfTagJumpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJumpLand__9daAlink_cFv.s"
}
#pragma pop

/* 80135050-801350A4 12F990 0054+00 1/1 0/0 0/0 .text daAlink_searchGiant__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchGiant(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchGiant__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 801350A4-80135160 12F9E4 00BC+00 1/1 0/0 0/0 .text daAlink_searchGiantTalk__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchGiantTalk(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchGiantTalk__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 80135160-801351F8 12FAA0 0098+00 1/1 0/0 0/0 .text procWolfGiantPuzzleInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGiantPuzzleInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGiantPuzzleInit__9daAlink_cFv.s"
}
#pragma pop

/* 801351F8-80135458 12FB38 0260+00 1/0 0/0 0/0 .text            procWolfGiantPuzzle__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGiantPuzzle() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGiantPuzzle__9daAlink_cFv.s"
}
#pragma pop

/* 80135458-801354C8 12FD98 0070+00 2/2 0/0 0/0 .text            setWolfHangGroundY__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfHangGroundY() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfHangGroundY__9daAlink_cFv.s"
}
#pragma pop

/* 801354C8-801355EC 12FE08 0124+00 2/2 0/0 0/0 .text            changeWolfHangEndProc__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeWolfHangEndProc() {
    nofralloc
#include "asm/d/a/d_a_alink/changeWolfHangEndProc__9daAlink_cFv.s"
}
#pragma pop

/* 801355EC-80135668 12FF2C 007C+00 2/2 0/0 0/0 .text            procWolfHangReadyInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHangReadyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangReadyInit__9daAlink_cFv.s"
}
#pragma pop

/* 80135668-801356F0 12FFA8 0088+00 1/0 0/0 0/0 .text            procWolfHangReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHangReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangReady__9daAlink_cFv.s"
}
#pragma pop

/* 801356F0-80135AF4 130030 0404+00 3/3 0/0 0/0 .text procWolfHangWallCatchInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHangWallCatchInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangWallCatchInit__9daAlink_cFi.s"
}
#pragma pop

/* 80135AF4-80135CD8 130434 01E4+00 1/0 0/0 0/0 .text            procWolfHangWallCatch__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHangWallCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangWallCatch__9daAlink_cFv.s"
}
#pragma pop

/* 80135CD8-80135F00 130618 0228+00 1/1 0/0 0/0 .text
 * procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHangFallStartInit(cM3dGPla* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla.s"
}
#pragma pop

/* 80135F00-80136064 130840 0164+00 1/0 0/0 0/0 .text            procWolfHangFallStart__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfHangFallStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangFallStart__9daAlink_cFv.s"
}
#pragma pop

/* 80136064-801360EC 1309A4 0088+00 1/1 0/0 0/0 .text            setWolfHeadDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfHeadDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfHeadDamage__9daAlink_cFv.s"
}
#pragma pop

/* 801360EC-80136508 130A2C 041C+00 1/1 0/0 0/0 .text
 * procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDamageInit(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf.s"
}
#pragma pop

/* 80136508-80136624 130E48 011C+00 1/0 0/0 0/0 .text            procWolfDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDamage__9daAlink_cFv.s"
}
#pragma pop

/* 80136624-801369E4 130F64 03C0+00 2/2 0/0 0/0 .text procWolfLargeDamageUpInit__9daAlink_cFiiss
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLargeDamageUpInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLargeDamageUpInit__9daAlink_cFiiss.s"
}
#pragma pop

/* 801369E4-80136C18 131324 0234+00 1/0 0/0 0/0 .text            procWolfLargeDamageUp__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLargeDamageUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLargeDamageUp__9daAlink_cFv.s"
}
#pragma pop

/* 80136C18-80136DE4 131558 01CC+00 1/1 0/0 0/0 .text procWolfLandDamageInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLandDamageInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLandDamageInit__9daAlink_cFi.s"
}
#pragma pop

/* 80136DE4-80136EC4 131724 00E0+00 1/0 0/0 0/0 .text            procWolfLandDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLandDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLandDamage__9daAlink_cFv.s"
}
#pragma pop

/* 80136EC4-80136F54 131804 0090+00 2/2 0/0 0/0 .text setWolfScreamWaitAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfScreamWaitAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfScreamWaitAnime__9daAlink_cFv.s"
}
#pragma pop

/* 80136F54-80136FF8 131894 00A4+00 1/1 0/0 0/0 .text procWolfScreamWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfScreamWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfScreamWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 80136FF8-801370E4 131938 00EC+00 1/0 0/0 0/0 .text            procWolfScreamWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfScreamWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfScreamWait__9daAlink_cFv.s"
}
#pragma pop

/* 801370E4-8013712C 131A24 0048+00 3/3 0/0 0/0 .text getWolfLieMoveAnmSpeed__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getWolfLieMoveAnmSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfLieMoveAnmSpeed__9daAlink_cFv.s"
}
#pragma pop

/* 8013712C-801371A0 131A6C 0074+00 3/3 0/0 0/0 .text            getWolfLieMoveSpeed__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getWolfLieMoveSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfLieMoveSpeed__9daAlink_cFv.s"
}
#pragma pop

/* 801371A0-801371FC 131AE0 005C+00 0/0 0/0 2/2 .text checkMidnaDisappearMode__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkMidnaDisappearMode() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkMidnaDisappearMode__9daAlink_cCFv.s"
}
#pragma pop

/* 801371FC-801372B4 131B3C 00B8+00 3/3 0/0 0/0 .text            checkWolfLieContinue__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfLieContinue(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfLieContinue__9daAlink_cFi.s"
}
#pragma pop

/* 801372B4-80137330 131BF4 007C+00 3/3 0/0 0/0 .text checkNextActionWolfFromLie__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkNextActionWolfFromLie() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionWolfFromLie__9daAlink_cFv.s"
}
#pragma pop

/* 80137330-801373F8 131C70 00C8+00 3/3 0/0 0/0 .text            setWolfLieMoveVoice__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfLieMoveVoice(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfLieMoveVoice__9daAlink_cFi.s"
}
#pragma pop

/* 801373F8-80137420 131D38 0028+00 2/2 0/0 0/0 .text            checkWolfLieCode__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfLieCode() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfLieCode__9daAlink_cFv.s"
}
#pragma pop

/* 80137420-8013753C 131D60 011C+00 2/2 0/0 0/0 .text            procWolfLieStartInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLieStartInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieStartInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013753C-80137634 131E7C 00F8+00 1/0 0/0 0/0 .text            procWolfLieStart__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLieStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieStart__9daAlink_cFv.s"
}
#pragma pop

/* 80137634-801377F0 131F74 01BC+00 5/5 0/0 0/0 .text            procWolfLieMoveInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLieMoveInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieMoveInit__9daAlink_cFi.s"
}
#pragma pop

/* 801377F0-80137C90 132130 04A0+00 1/0 0/0 0/0 .text            procWolfLieMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLieMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieMove__9daAlink_cFv.s"
}
#pragma pop

/* 80137C90-80137D4C 1325D0 00BC+00 1/1 0/0 0/0 .text procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLieAutoMoveInit(int param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz.s"
}
#pragma pop

/* 80137D4C-80138000 13268C 02B4+00 1/0 0/0 0/0 .text            procWolfLieAutoMove__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLieAutoMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieAutoMove__9daAlink_cFv.s"
}
#pragma pop

/* 80138000-80138188 132940 0188+00 2/2 0/0 0/0 .text setSpeedAndAngleSwimWolf__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleSwimWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleSwimWolf__9daAlink_cFv.s"
}
#pragma pop

/* 80138188-801381F8 132AC8 0070+00 2/2 0/0 0/0 .text getWolfSwimMoveAnmSpeed__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getWolfSwimMoveAnmSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfSwimMoveAnmSpeed__9daAlink_cFv.s"
}
#pragma pop

/* 801381F8-801383D8 132B38 01E0+00 2/2 0/0 0/0 .text decideDoStatusSwimWolf__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::decideDoStatusSwimWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/decideDoStatusSwimWolf__9daAlink_cFv.s"
}
#pragma pop

/* 801383D8-80138484 132D18 00AC+00 2/2 0/0 0/0 .text            procWolfSwimUpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimUpInit__9daAlink_cFv.s"
}
#pragma pop

/* 80138484-8013852C 132DC4 00A8+00 1/0 0/0 0/0 .text            procWolfSwimUp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimUp__9daAlink_cFv.s"
}
#pragma pop

/* 8013852C-80138644 132E6C 0118+00 7/7 0/0 0/0 .text            procWolfSwimWaitInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimWaitInit__9daAlink_cFi.s"
}
#pragma pop

/* 80138644-8013871C 132F84 00D8+00 1/0 0/0 0/0 .text            procWolfSwimWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimWait__9daAlink_cFv.s"
}
#pragma pop

/* 8013871C-801387A0 13305C 0084+00 4/4 0/0 0/0 .text            procWolfSwimMoveInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 801387A0-8013890C 1330E0 016C+00 1/0 0/0 0/0 .text            procWolfSwimMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimMove__9daAlink_cFv.s"
}
#pragma pop

/* 8013890C-80138A18 13324C 010C+00 2/2 0/0 0/0 .text procWolfSwimEndWaitInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimEndWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimEndWaitInit__9daAlink_cFi.s"
}
#pragma pop

/* 80138A18-80138B6C 133358 0154+00 1/0 0/0 0/0 .text            procWolfSwimEndWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSwimEndWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimEndWait__9daAlink_cFv.s"
}
#pragma pop

/* 80138B6C-80138C04 1334AC 0098+00 1/0 0/0 0/0 .text
 * onWolfEnemyBiteAll__9daAlink_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::onWolfEnemyBiteAll(fopAc_ac_c* param_0, daPy_py_c::daPy_FLG2 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/onWolfEnemyBiteAll__9daAlink_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2.s"
}
#pragma pop

/* 80138C04-80138C44 133544 0040+00 4/4 0/0 0/0 .text            resetWolfEnemyBiteAll__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::resetWolfEnemyBiteAll() {
    nofralloc
#include "asm/d/a/d_a_alink/resetWolfEnemyBiteAll__9daAlink_cFv.s"
}
#pragma pop

/* 80138C44-80138CB8 133584 0074+00 1/1 0/0 0/0 .text checkWolfEnemyThrowAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfEnemyThrowAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfEnemyThrowAction__9daAlink_cFv.s"
}
#pragma pop

/* 80138CB8-80138DC0 1335F8 0108+00 1/1 0/0 0/0 .text            setWolfLockDomeModel__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfLockDomeModel() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfLockDomeModel__9daAlink_cFv.s"
}
#pragma pop

/* 80138DC0-80138F18 133700 0158+00 1/1 0/0 0/0 .text            setWolfBallModel__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfBallModel() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfBallModel__9daAlink_cFv.s"
}
#pragma pop

/* 80138F18-80139048 133858 0130+00 2/2 0/0 0/0 .text            resetWolfBallGrab__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::resetWolfBallGrab() {
    nofralloc
#include "asm/d/a/d_a_alink/resetWolfBallGrab__9daAlink_cFv.s"
}
#pragma pop

/* 80139048-8013911C 133988 00D4+00 1/1 0/0 0/0 .text            checkWolfLockData__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfLockData() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfLockData__9daAlink_cFv.s"
}
#pragma pop

/* 8013911C-8013916C 133A5C 0050+00 1/0 0/0 0/0 .text checkWolfLock__9daAlink_cCFP10fopAc_ac_c */
bool daAlink_c::checkWolfLock(fopAc_ac_c* p_actor) const {
    u32 id = fopAcM_GetID(p_actor);

    for (int i = 0; i < mWolfLockNum; i++) {
        if (id == mWolfLockAcKeep[i].getID()) {
            return true;
        }
    }
    return false;
}

/* 8013916C-801391DC 133AAC 0070+00 1/0 0/0 0/0 .text cancelWolfLock__9daAlink_cFP10fopAc_ac_c */
bool daAlink_c::cancelWolfLock(fopAc_ac_c* p_actor) {
    u32 id = fopAcM_GetID(p_actor);

    for (int i = 0; i < mWolfLockNum; i++) {
        if (id == mWolfLockAcKeep[i].getID()) {
            mWolfLockAcKeep[i].clearData();
            return true;
        }
    }
    return false;
}

/* 801391DC-801391E4 133B1C 0008+00 0/0 0/0 1/1 .text            getWolfLockActorEnd__9daAlink_cFv
 */
fopAc_ac_c* daAlink_c::getWolfLockActorEnd() {
    return mWolfLockAcKeep[0].getActor();
}

/* 801391E4-801392A8 133B24 00C4+00 1/1 0/0 0/0 .text
 * searchWolfLockEnemy__9daAlink_cFP10fopAc_ac_cPv              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::searchWolfLockEnemy(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/searchWolfLockEnemy__9daAlink_cFP10fopAc_ac_cPv.s"
}
#pragma pop

/* 801392A8-801392E4 133BE8 003C+00 1/1 0/0 0/0 .text
 * daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchWolfLockEnemy(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 801392E4-801393A4 133C24 00C0+00 1/1 0/0 0/0 .text            checkWolfComboCnt__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfComboCnt() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfComboCnt__9daAlink_cFv.s"
}
#pragma pop

/* 801393A4-801395B4 133CE4 0210+00 4/4 0/0 0/0 .text            checkWolfAttackAction__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfAttackAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfAttackAction__9daAlink_cFv.s"
}
#pragma pop

/* 801395B4-80139600 133EF4 004C+00 2/2 0/0 0/0 .text
 * setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfEnemyThrowUpperAnime(daAlink_c::daAlink_WANM param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf.s"
}
#pragma pop

/* 80139600-801396F8 133F40 00F8+00 2/2 0/0 0/0 .text
 * setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c         */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfEnemyHangBitePos(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 804256EC-804256F8 05240C 000C+00 0/1 0/0 0/0 .bss             @50952 */
#pragma push
#pragma force_active on
static u8 lit_50952[12];
#pragma pop

/* 804256F8-80425708 052418 000C+04 1/2 0/0 0/0 .bss             l_wolfBiteHitMarkScale */
static u8 l_wolfBiteHitMarkScale[12 + 4 /* padding */];

/* 801396F8-801397A4 134038 00AC+00 1/1 0/0 0/0 .text
 * setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfBiteDamage(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop

/* 801397A4-801398A8 1340E4 0104+00 1/1 0/0 0/0 .text checkWolfLockAttackChargeState__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfLockAttackChargeState() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfLockAttackChargeState__9daAlink_cFv.s"
}
#pragma pop

/* 801398A8-80139908 1341E8 0060+00 1/1 0/0 0/0 .text procWolfRollAttackChargeInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRollAttackChargeInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttackChargeInit__9daAlink_cFv.s"
}
#pragma pop

/* 80139908-801399C4 134248 00BC+00 1/0 0/0 0/0 .text procWolfRollAttackCharge__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRollAttackCharge() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttackCharge__9daAlink_cFv.s"
}
#pragma pop

/* 801399C4-80139A70 134304 00AC+00 1/1 0/0 0/0 .text procWolfRollAttackMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRollAttackMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttackMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 80139A70-80139DE0 1343B0 0370+00 1/0 0/0 0/0 .text procWolfRollAttackMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRollAttackMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttackMove__9daAlink_cFv.s"
}
#pragma pop

/* 80139DE0-8013A4F8 134720 0718+00 5/5 0/0 0/0 .text procWolfJumpAttackInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttackInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013A4F8-8013A7EC 134E38 02F4+00 1/0 0/0 0/0 .text            procWolfJumpAttack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttack__9daAlink_cFv.s"
}
#pragma pop

/* 8013A7EC-8013A8A0 13512C 00B4+00 2/2 0/0 0/0 .text procWolfJumpAttackKickInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttackKickInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackKickInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013A8A0-8013A8FC 1351E0 005C+00 1/0 0/0 0/0 .text procWolfJumpAttackKick__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttackKick() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackKick__9daAlink_cFv.s"
}
#pragma pop

/* 8013A8FC-8013AAC4 13523C 01C8+00 2/2 0/0 0/0 .text
 * procWolfJumpAttackSlideLandInit__9daAlink_cFiii              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttackSlideLandInit(int param_0, int param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackSlideLandInit__9daAlink_cFiii.s"
}
#pragma pop

/* 8013AAC4-8013AC44 135404 0180+00 1/0 0/0 0/0 .text procWolfJumpAttackSlideLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttackSlideLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackSlideLand__9daAlink_cFv.s"
}
#pragma pop

/* 8013AC44-8013ACF4 135584 00B0+00 1/1 0/0 0/0 .text
 * procWolfJumpAttackNormalLandInit__9daAlink_cFi               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttackNormalLandInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackNormalLandInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013ACF4-8013ADF0 135634 00FC+00 1/0 0/0 0/0 .text procWolfJumpAttackNormalLand__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfJumpAttackNormalLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackNormalLand__9daAlink_cFv.s"
}
#pragma pop

/* 8013ADF0-8013AFC0 135730 01D0+00 2/2 0/0 0/0 .text procWolfWaitAttackInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfWaitAttackInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitAttackInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013AFC0-8013B2A0 135900 02E0+00 1/0 0/0 0/0 .text            procWolfWaitAttack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfWaitAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitAttack__9daAlink_cFv.s"
}
#pragma pop

/* 8013B2A0-8013B424 135BE0 0184+00 5/5 0/0 0/0 .text procWolfRollAttackInit__9daAlink_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRollAttackInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttackInit__9daAlink_cFii.s"
}
#pragma pop

/* 8013B424-8013B528 135D64 0104+00 1/0 0/0 0/0 .text            procWolfRollAttack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfRollAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttack__9daAlink_cFv.s"
}
#pragma pop

/* 8013B528-8013B808 135E68 02E0+00 1/1 0/0 0/0 .text procWolfDownAttackInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDownAttackInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAttackInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013B808-8013B964 136148 015C+00 1/0 0/0 0/0 .text            procWolfDownAttack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDownAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAttack__9daAlink_cFv.s"
}
#pragma pop

/* 8013B964-8013BA44 1362A4 00E0+00 1/1 0/0 0/0 .text
 * procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDownAtLandInit(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop

/* 8013BA44-8013BC94 136384 0250+00 1/0 0/0 0/0 .text            procWolfDownAtLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDownAtLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAtLand__9daAlink_cFv.s"
}
#pragma pop

/* 8013BC94-8013BD54 1365D4 00C0+00 1/1 0/0 0/0 .text procWolfDownAtMissLandInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDownAtMissLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAtMissLandInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013BD54-8013BE24 136694 00D0+00 1/0 0/0 0/0 .text procWolfDownAtMissLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDownAtMissLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAtMissLand__9daAlink_cFv.s"
}
#pragma pop

/* 8013BE24-8013C3E4 136764 05C0+00 2/2 0/0 0/0 .text procWolfLockAttackInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLockAttackInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttackInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013C3E4-8013C630 136D24 024C+00 1/0 0/0 0/0 .text            procWolfLockAttack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLockAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttack__9daAlink_cFv.s"
}
#pragma pop

/* 8013C630-8013C7A4 136F70 0174+00 1/1 0/0 0/0 .text procWolfLockAttackTurnInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLockAttackTurnInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttackTurnInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013C7A4-8013C8C8 1370E4 0124+00 1/0 0/0 0/0 .text procWolfLockAttackTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfLockAttackTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttackTurn__9daAlink_cFv.s"
}
#pragma pop

/* 8013C8C8-8013C9EC 137208 0124+00 1/1 0/0 0/0 .text procWolfAttackReverseInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfAttackReverseInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfAttackReverseInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013C9EC-8013CB48 13732C 015C+00 1/0 0/0 0/0 .text            procWolfAttackReverse__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfAttackReverse() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfAttackReverse__9daAlink_cFv.s"
}
#pragma pop

/* 8013CB48-8013CC5C 137488 0114+00 2/2 0/0 0/0 .text procWolfEnemyThrowInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfEnemyThrowInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfEnemyThrowInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013CC5C-8013CCF4 13759C 0098+00 1/0 0/0 0/0 .text            procWolfEnemyThrow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfEnemyThrow() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfEnemyThrow__9daAlink_cFv.s"
}
#pragma pop

/* 8013CCF4-8013CDEC 137634 00F8+00 1/1 0/0 0/0 .text procWolfEnemyHangBiteInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfEnemyHangBiteInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfEnemyHangBiteInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013CDEC-8013D0D4 13772C 02E8+00 1/0 0/0 0/0 .text            procWolfEnemyHangBite__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfEnemyHangBite() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfEnemyHangBite__9daAlink_cFv.s"
}
#pragma pop

/* 8013D0D4-8013D3FC 137A14 0328+00 1/1 0/0 0/0 .text            procWolfGrabUpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGrabUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabUpInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013D3FC-8013D588 137D3C 018C+00 1/0 0/0 0/0 .text            procWolfGrabUp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGrabUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabUp__9daAlink_cFv.s"
}
#pragma pop

/* 8013D588-8013D65C 137EC8 00D4+00 2/2 0/0 0/0 .text            procWolfGrabPutInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGrabPutInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabPutInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013D65C-8013D818 137F9C 01BC+00 1/0 0/0 0/0 .text            procWolfGrabPut__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGrabPut() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabPut__9daAlink_cFv.s"
}
#pragma pop

/* 8013D818-8013D86C 138158 0054+00 1/1 0/0 0/0 .text            procWolfGrabThrowInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGrabThrowInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabThrowInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013D86C-8013D930 1381AC 00C4+00 1/0 0/0 0/0 .text            procWolfGrabThrow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGrabThrow() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabThrow__9daAlink_cFv.s"
}
#pragma pop

/* 8013D930-8013DA8C 138270 015C+00 1/1 0/0 0/0 .text            procWolfPushInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfPushInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfPushInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013DA8C-8013DB58 1383CC 00CC+00 1/0 0/0 0/0 .text            procWolfPush__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfPush() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfPush__9daAlink_cFv.s"
}
#pragma pop

/* 8013DB58-8013DB6C 138498 0014+00 1/1 0/0 0/0 .text daAlink_searchEnemyCargo__FP10fopAc_ac_cPv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchEnemyCargo(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchEnemyCargo__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 8013DB6C-8013DC5C 1384AC 00F0+00 3/2 0/0 0/0 .text procWolfCargoCarryInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfCargoCarryInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfCargoCarryInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013DC5C-8013DDF8 13859C 019C+00 1/0 0/0 0/0 .text            procWolfCargoCarry__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfCargoCarry() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfCargoCarry__9daAlink_cFv.s"
}
#pragma pop

/* 8013DDF8-8013DE70 138738 0078+00 1/1 0/0 0/0 .text            procWolfChainUpInit__9daAlink_cFv
 */
int daAlink_c::procWolfChainUpInit() {
    field_0x2fa3 = searchFmChainPos();

    if (field_0x2fa3 == 0) {
        return procWolfWaitInit();
    }

    commonProcInit(PROC_WOLF_CHAIN_UP);
    setSingleAnimeWolfParam(WANM_PICKUP_B, &daAlinkHIO_wlGrab_c0::m.field_0x28);
    mNormalSpeed = FLOAT_LABEL(lit_6108);

    return 1;
}

/* 8013DE70-8013DF30 1387B0 00C0+00 1/0 0/0 0/0 .text            procWolfChainUp__9daAlink_cFv */
int daAlink_c::procWolfChainUp() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    setWallGrabStatus(0x96, 2);
    
    if (frameCtrl->checkAnmEnd() || (checkInputOnR() && frameCtrl->getFrame() > daAlinkHIO_wlGrab_c0::m.field_0x28.field_0x10)) {
        u8 old_2fa3 = field_0x2fa3;
        fopAc_ac_c* old_actor = field_0x2844.getActor();

        procWolfWaitInit();
        setUpperAnimeBaseSpeed(m_wlAnmDataTable[WANM_CHAIN_PULL].field_0x0, FLOAT_LABEL(lit_6108), lit_6109);

        if (old_actor != NULL) {
            field_0x2fa3 = old_2fa3;
            field_0x2844.setData(old_actor);
        }
    }

    return 1;
}

/* 8013DF30-8013E034 138870 0104+00 1/1 0/0 0/0 .text procWolfGanonCatchInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGanonCatchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGanonCatchInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013E034-8013E240 138974 020C+00 1/0 0/0 0/0 .text            procWolfGanonCatch__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGanonCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGanonCatch__9daAlink_cFv.s"
}
#pragma pop

/* 8013E240-8013E2A8 138B80 0068+00 1/1 0/0 0/0 .text procWolfChainReadyInit__9daAlink_cFv */
int daAlink_c::procWolfChainReadyInit() {
    commonProcInit(PROC_WOLF_CHAIN_READY);
    field_0x280c.setData(field_0x27f4);
    setSingleAnimeWolfParam(WANM_ATTACK_A_START, &daAlinkHIO_wlAtNjump_c0::m.field_0x0);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mCommonCounter = 0;
    field_0x300e = 0;

    return 1;
}

/* 8013E2A8-8013E6C0 138BE8 0418+00 1/0 0/0 0/0 .text            procWolfChainReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfChainReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfChainReady__9daAlink_cFv.s"
}
#pragma pop

/* 8013E6C0-8013E80C 139000 014C+00 1/1 0/0 0/0 .text            procWolfChainWaitInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfChainWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfChainWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013E80C-8013ED44 13914C 0538+00 1/0 0/0 0/0 .text            procWolfChainWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfChainWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfChainWait__9daAlink_cFv.s"
}
#pragma pop

/* 8013ED44-8013F1F0 139684 04AC+00 1/1 0/0 0/0 .text            procWolfDigInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDigInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDigInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013F1F0-8013F4A8 139B30 02B8+00 1/0 0/0 0/0 .text            procWolfDig__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDig() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDig__9daAlink_cFv.s"
}
#pragma pop

/* 8013F4A8-8013F7C4 139DE8 031C+00 2/2 0/0 0/0 .text procWolfDigThroughInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDigThroughInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDigThroughInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013F7C4-8013F90C 13A104 0148+00 1/0 0/0 0/0 .text            procWolfDigThrough__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfDigThrough() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDigThrough__9daAlink_cFv.s"
}
#pragma pop

/* 8013F90C-8013FA14 13A24C 0108+00 1/1 0/0 0/0 .text            setSmellSave__9daAlink_cFv */
void daAlink_c::setSmellSave() {
    if (dComIfGs_getCollectSmell() == SMELL_MEDICINE) {
        dComIfGs_offEventBit(0x2F04);  // OFF: Got Medicine Scent
    }

    dMsgObject_setSmellType(field_0x3012);

    if (field_0x3012 == SMELL_MEDICINE) {
        dComIfGs_onEventBit(0x2F04);  // ON: Got Medicine Scent
    } else if (field_0x3012 == SMELL_CHILDREN) {
        i_fopAcM_onSwitch(this, 102);
    } else if (field_0x3012 == SMELL_YELIA_POUCH) {
        i_fopAcM_onSwitch(this, 103);
    } else if (field_0x3012 == SMELL_FISH) {
        dComIfGs_onEventBit(0x6120);  // ON: Got Reekfish scent
    } else if (field_0x3012 == SMELL_POH) {
        dComIfGs_onEventBit(0x6210);  // ON: Got Poe scent
    }

    setGetSubBgm(field_0x3012);
}

/* 8013FA14-8013FC24 13A354 0210+00 1/1 0/0 0/0 .text            procWolfGetSmellInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGetSmellInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGetSmellInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013FC24-8013FF28 13A564 0304+00 1/0 0/0 0/0 .text            procWolfGetSmell__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfGetSmell() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGetSmell__9daAlink_cFv.s"
}
#pragma pop