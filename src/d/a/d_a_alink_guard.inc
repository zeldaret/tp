/**
 * d_a_alink_guard.inc
 * Player Shield action handling
 */

#include "d/a/d_a_alink.h"
#include "d/com/d_com_inf_game.h"

/* 800DC548-800DC5A4 0D6E88 005C+00 13/13 0/0 0/0 .text checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
 */
BOOL daAlink_c::checkEnemyGroup(fopAc_ac_c* i_actor) {
    return i_actor != NULL && (fopAcM_GetGroup(i_actor) == fopAc_ENEMY_e ||
                               fopAcM_GetName(i_actor) == PROC_E_ZH || checkSpecialNpc(i_actor));
}

// properly setup later
class daNpc_Kn_c : public fopAc_ac_c {
public:
    bool checkBattleMode() { return true; }
};

class daObj_GrA_c : public fopAc_ac_c {
public:
    bool checkNpcObjGra() { return field_0xa7e == 1; }

    u8 temp[0xA7E - 0x568];
    u8 field_0xa7e;
};

/* 800DC5A4-800DC5DC 0D6EE4 0038+00 4/4 0/0 0/0 .text checkSpecialNpc__9daAlink_cFP10fopAc_ac_c */
BOOL daAlink_c::checkSpecialNpc(fopAc_ac_c* i_actor) {
    s16 name = fopAcM_GetName(i_actor);

    return ((name == PROC_NPC_KAKASHI || name == PROC_NPC_KN) &&
            static_cast<daNpc_Kn_c*>(i_actor)->checkBattleMode()) ||
           (name == PROC_OBJ_GRA && !static_cast<daObj_GrA_c*>(i_actor)->checkNpcObjGra());
}

/* 800DC5DC-800DC678 0D6F1C 009C+00 1/1 0/0 0/0 .text checkShieldAttackEmphasys__9daAlink_cFv */
BOOL daAlink_c::checkShieldAttackEmphasys() {
    return mTargetedActor != NULL && (mTargetedActor->attention_info.flags & 0x200000) &&
           !checkCutHeadState() &&
           (fopAcM_GetGroup(mTargetedActor) != fopAc_ENEMY_e ||
            !static_cast<fopEn_enemy_c*>(mTargetedActor)->checkDownFlg());
}

/* 800DC678-800DC79C 0D6FB8 0124+00 5/5 0/0 0/0 .text checkGuardActionChange__9daAlink_cFv */
/* BOOL daAlink_c::checkGuardActionChange() {
    return checkAttentionLock() && !checkIronBallWaitAnime() && !checkGrabAnime() &&
!checkCopyRodControllAnime() && mTargetedActor != NULL && !checkSpecialNpc(mTargetedActor) &&
(fopAcM_GetGroup(mTargetedActor) != 3 && fopAcM_GetGroup(mTargetedActor) != fopAc_NPC_e);
} */

#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkGuardActionChange() {
    nofralloc
#include "asm/d/a/d_a_alink/checkGuardActionChange__9daAlink_cFv.s"
}
#pragma pop

/* 800DC79C-800DC8C4 0D70DC 0128+00 3/3 0/0 0/0 .text            stickArrowIncrement__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::stickArrowIncrement(int param_0) {
    if (!checkNoResetFlg2(FLG2_STATUS_WINDOW_DRAW)) {
        s16 arrow_num = 0;

        for (int i = 0; i < 16; i++) {
            if (mShieldArrowIDs[i] != -1) {
                if (field_0x2f7c[i] == 0 || param_0) {
                    arrow_num++;
                    mShieldArrowIDs[i] = -1;
                    field_0x2f7c[i] = 0;
                } else {
                    field_0x2f7c[i]--;
                }
            }
        }

        if (arrow_num != 0) {
            if (i_checkShieldGet() && checkItemGet(BOW, true)) {
                int arrow_type = arrow_num == 1 ? ARROW_1 : ARROW_10;

                dComIfGp_setItemArrowNumCount(arrow_num);
                fopAcM_createItemForSimpleDemo(&current.pos, arrow_type, -1, NULL, NULL, 0.0f,
                                               0.0f);
            }

            onResetFlg0(RFLG0_UNK_1);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::stickArrowIncrement(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/stickArrowIncrement__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800DC8C4-800DCA2C 0D7204 0168+00 0/0 0/0 1/1 .text
 * setArrowShieldActor__9daAlink_cFP10fopAc_ac_ci               */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setArrowShieldActor(fopAc_ac_c* i_actor, int param_1) {
    unsigned int new_arrow_id = fopAcM_GetID(i_actor);

    int arrow_num = 0;
    for (; arrow_num < 16; arrow_num++) {
        if (mShieldArrowIDs[arrow_num] == -1) {
            mShieldArrowIDs[arrow_num] = new_arrow_id;
            field_0x2f7c[arrow_num] = 10;
            break;
        }
    }

    if (arrow_num == 16) {
        fopAc_ac_c* first_arrow = fopAcM_SearchByID(mShieldArrowIDs[0]);
        if (first_arrow != NULL) {
            fopAcM_delete(first_arrow);
        }

        int i = 0;
        for (; i < 15; i++) {
            mShieldArrowIDs[i] = mShieldArrowIDs[i + 1];
            field_0x2f7c[i] = field_0x2f7c[i + 1];
        }

        mShieldArrowIDs[i] = new_arrow_id;
        field_0x2f7c[i] = 10;

        dComIfGp_setItemArrowNumCount(1);
        fopAcM_createItemForSimpleDemo(&current.pos, ARROW_10, -1, NULL, NULL, 0.0f, 0.0f);
    }

    if (param_1 && field_0x2fcb == 0 && !checkMagicArmorNoDamage()) {
        field_0x2fcb = 120;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setArrowShieldActor(fopAc_ac_c* param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setArrowShieldActor__9daAlink_cFP10fopAc_ac_ci.s"
}
#pragma pop
#endif

/* 800DCA2C-800DCA80 0D736C 0054+00 1/1 0/0 2/2 .text
 * checkWoodShieldEquipNotIronBall__9daAlink_cCFv               */
BOOL daAlink_c::checkWoodShieldEquipNotIronBall() const {
    return checkWoodShieldEquip() && !checkIronBallEquip();
}

/* 800DCA80-800DCD74 0D73C0 02F4+00 0/0 0/0 1/1 .text
 * getArrowShieldOffset__9daAlink_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::getArrowShieldOffset(cXyz const* param_0, csXyz const* param_1, cXyz* param_2,
                                     cXyz* param_3) const {
    cXyz sp54;
    mDoMtx_stack_c::ZXYrotS(param_1->x + cM_rndFX(0x1000), param_1->y + cM_rndFX(0x1000), 0);
    mDoMtx_stack_c::multVec(&cXyz::BaseZ, &sp54);
    mDoMtx_stack_c::copy(getShieldMtx());
    mDoMtx_stack_c::inverse();
    mDoMtx_stack_c::multVecSR(&sp54, param_3);

    cXyz sp60;
    mDoMtx_multVec(getShieldMtx(), &localCenter, &sp60);

    cM3dGPla plane(&field_0x351c, -field_0x351c.inprod(sp60));

    cXyz sp6C;
    cXyz sp78 = *param_0 + sp54;
    plane.crossInfLin(*param_0, sp78, sp6C);

    if (sp6C.abs(sp60) > 20.0f) {
        sp6C = sp6C - sp60;
        sp6C.normalize();
        sp6C *= 20.0f;
        sp6C += sp60;
    }

    mDoMtx_stack_c::multVec(&sp6C, param_2);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getArrowShieldOffset(cXyz const* param_0, csXyz const* param_1, cXyz* param_2,
                                         cXyz* param_3) const {
    nofralloc
#include "asm/d/a/d_a_alink/getArrowShieldOffset__9daAlink_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz.s"
}
#pragma pop
#endif

/* 800DCD74-800DCDF0 0D76B4 007C+00 0/0 0/0 2/2 .text
 * setArrowShieldPos__9daAlink_cCFP4cXyzP5csXyzPC4cXyzPC4cXyz   */
void daAlink_c::setArrowShieldPos(cXyz* param_0, csXyz* param_1, cXyz const* param_2,
                                  cXyz const* param_3) const {
    cXyz sp1C;

    mDoMtx_multVecSR(getShieldMtx(), param_3, &sp1C);
    param_1->x = sp1C.atan2sY_XZ();
    param_1->y = sp1C.atan2sX_Z();

    mDoMtx_multVec(getShieldMtx(), param_2, param_0);
}

/* 800DCDF0-800DCE6C 0D7730 007C+00 17/17 0/0 0/0 .text checkUpperGuardAnime__9daAlink_cCFv */
BOOL daAlink_c::checkUpperGuardAnime() const {
    return checkNoResetFlg2(FLG2_UNK_8000000) && !checkEventRun() &&
           !checkNoResetFlg0(FLG0_UNK_2) && mProcID != PROC_GUARD_BREAK &&
           mProcID != PROC_CUT_REVERSE && mProcID != PROC_GUARD_ATTACK;
}

/* 800DCE6C-800DCF04 0D77AC 0098+00 1/0 0/0 0/0 .text            checkPlayerGuard__9daAlink_cCFv */
BOOL daAlink_c::checkPlayerGuard() const {
    return (checkSmallUpperGuardAnime() || (i_checkShieldGet() && checkHorseLieAnime())) ||
           checkUpperGuardAnime();
}

/* 800DCF04-800DCF64 0D7844 0060+00 5/5 0/0 0/0 .text checkPlayerGuardAndAttack__9daAlink_cCFv */
BOOL daAlink_c::checkPlayerGuardAndAttack() const {
    return checkPlayerGuard() || mProcID == PROC_GUARD_ATTACK;
}

/* 800DCF64-800DD008 0D78A4 00A4+00 2/2 0/0 0/0 .text            checkGuardAccept__9daAlink_cFv */
BOOL daAlink_c::checkGuardAccept() {
    return checkModeFlg(0x80) && i_checkShieldGet() && !checkFmChainGrabAnime() &&
           !checkNotBattleStage();
}

/* 800DD008-800DD018 0D7948 0010+00 11/11 0/0 0/0 .text            setUpperGuardAnime__9daAlink_cFf
 */
void daAlink_c::setUpperGuardAnime(f32) {
    onNoResetFlg2(FLG2_UNK_8000000);
}

/* 800DD018-800DD114 0D7958 00FC+00 1/1 0/0 0/0 .text            setShieldGuard__9daAlink_cFv */
void daAlink_c::setShieldGuard() {
    if ((mProcID == PROC_GUARD_SLIP && mEquipItem != IRONBALL) || checkSmallUpperGuardAnime() ||
        (checkGuardAccept() && !checkGrabAnime() && !checkUpperReadyThrowAnime() &&
         !checkDkCaught2Anime() && !checkKandelaarSwingAnime() && !checkCutDashAnime() &&
         !checkCutDashChargeAnime() && (!checkEquipAnime() || checkUpperGuardAnime()) &&
         !checkRideOn() && checkGuardActionChange()))
    {
        onNoResetFlg2(FLG2_UNK_8000000);
    } else {
        offNoResetFlg2(FLG2_UNK_8000000);
    }
}

/* 800DD114-800DD1D4 0D7A54 00C0+00 1/1 0/0 0/0 .text setGuardSe__9daAlink_cFP12dCcD_GObjInf */
void daAlink_c::setGuardSe(dCcD_GObjInf* i_objinf) {
    int var_r31;
    int var_r30;

    if (checkWoodShieldEquipNotIronBall() && !checkMagicArmorNoDamage()) {
        var_r31 = 0x29;
        var_r30 = 0;
    } else {
        var_r31 = 0x28;
        var_r30 = 1;
    }

    u32 hit_se;
    if (i_objinf->GetTgHitGObj() != NULL && i_objinf->GetTgHitGObj()->GetAtType() == AT_TYPE_BOMB) {
        hit_se = Z2SE_HIT_METAL_WEAPON;
    } else {
        hit_se = i_objinf->GetTgHitObjHitSeID(var_r30);
    }

    mZ2Link.startCollisionSE(hit_se, var_r31);
}

/* 800DD1D4-800DD3E4 0D7B14 0210+00 1/1 0/0 0/0 .text setSmallGuard__9daAlink_cFP12dCcD_GObjInf */
#ifdef NONMATCHING
void daAlink_c::setSmallGuard(dCcD_GObjInf* i_objinf) {
    setUpperAnimeBase(0x16);
    cXyz* dmg_vec = (cXyz*)getDamageVec(i_objinf);

    mBodyAngle.y = (dmg_vec->atan2sX_Z() + 0x8000) - shape_angle.y;
    if (abs(mBodyAngle.y) > 0x7000) {
        mBodyAngle.y = 0;
    } else {
        mBodyAngle.y =
            cLib_minMaxLimit<s16>((s16)mBodyAngle.y, -daAlinkHIO_guard_c0::m.mSmallGuardLRAngleMax,
                                  daAlinkHIO_guard_c0::m.mSmallGuardLRAngleMax);
    }

    s16 max = daAlinkHIO_guard_c0::m.mSmallGuardFBAngleMax;
    s16 min = -max;
    mBodyAngle.x = cLib_minMaxLimit<s16>(cM_atan2s(dmg_vec->y, dmg_vec->absXZ()), min, max);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSmallGuard(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setSmallGuard__9daAlink_cFP12dCcD_GObjInf.s"
}
#pragma pop
#endif

/* 800DD3E4-800DD894 0D7D24 04B0+00 1/1 0/0 0/0 .text
 * procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGuardSlipInit(int param_0, dCcD_GObjInf* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf.s"
}
#pragma pop

/* 800DD894-800DDA10 0D81D4 017C+00 1/0 0/0 0/0 .text            procGuardSlip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGuardSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/procGuardSlip__9daAlink_cFv.s"
}
#pragma pop

/* 800DDA10-800DDBA8 0D8350 0198+00 2/1 0/0 0/0 .text            procGuardAttackInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGuardAttackInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGuardAttackInit__9daAlink_cFv.s"
}
#pragma pop

/* 800DDBA8-800DDE58 0D84E8 02B0+00 1/0 0/0 0/0 .text            procGuardAttack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGuardAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procGuardAttack__9daAlink_cFv.s"
}
#pragma pop

/* 800DDE58-800DDF2C 0D8798 00D4+00 2/2 0/0 0/0 .text            procGuardBreakInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGuardBreakInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGuardBreakInit__9daAlink_cFv.s"
}
#pragma pop

/* 800DDF2C-800DE008 0D886C 00DC+00 1/0 0/0 0/0 .text            procGuardBreak__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGuardBreak() {
    nofralloc
#include "asm/d/a/d_a_alink/procGuardBreak__9daAlink_cFv.s"
}
#pragma pop

/* 800DE008-800DE380 0D8948 0378+00 2/2 0/0 0/0 .text            procTurnMoveInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procTurnMoveInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procTurnMoveInit__9daAlink_cFi.s"
}
#pragma pop

/* 800DE380-800DE64C 0D8CC0 02CC+00 1/0 0/0 0/0 .text            procTurnMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procTurnMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procTurnMove__9daAlink_cFv.s"
}
#pragma pop