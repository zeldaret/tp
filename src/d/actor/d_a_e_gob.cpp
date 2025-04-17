/**
 * @file d_a_e_gob.cpp
 * 
*/

#include "d/actor/d_a_e_gob.h"
#include "d/d_com_inf_game.h"
#include "d/d_com_inf_actor.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_obj_msima.h"
#include "d/actor/d_a_obj_myogan.h"
#include "dol2asm.h"
#include "d/d_s_play.h"
#include "Z2AudioLib/Z2Instances.h"

/* 806D808C-806D80E0 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__13daE_GOB_HIO_cFv */
daE_GOB_HIO_c::daE_GOB_HIO_c() {
    id = -1;
    size = 1.1f;
    normal_walk_speed = 8.0f;
    battle_walk_speed = 4.0f;
    roll_speed = 30.0f;
    rotation_speed = 7000;
    swing_time_a = 70;
    swing_time_b = 70;
}

/* 806D80E0-806D842C 000140 034C+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        int temp_r30 = param_0->getJntNo();
        J3DModel* temp_r3 = j3dSys.getModel();
        e_gob_class* sp14 = (e_gob_class*)temp_r3->getUserArea();

        if (sp14 != NULL) {
            if (temp_r30 == 22 || temp_r30 == 23) {
                MTXCopy(temp_r3->getAnmMtx(temp_r30), *calc_mtx);
                cMtx_YrotM(*calc_mtx, sp14->field_0x6ae);
                cMtx_ZrotM(*calc_mtx, sp14->field_0x6b0);
                temp_r3->setAnmMtx(temp_r30, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            } else if (temp_r30 == 1 || temp_r30 == 2) {
                MTXCopy(temp_r3->getAnmMtx(temp_r30), *calc_mtx);
                cMtx_YrotM(*calc_mtx, sp14->field_0x6a6);
                cMtx_ZrotM(*calc_mtx, sp14->field_0x6a4);
                temp_r3->setAnmMtx(temp_r30, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }

            if (temp_r30 == 1 || temp_r30 == 2 || temp_r30 == 3 || temp_r30 == 4 || temp_r30 == 5 || temp_r30 == 6 || temp_r30 == 13 || temp_r30 == 14 || temp_r30 == 15) {
                int sp10 = temp_r30 & 3;
                MTXCopy(temp_r3->getAnmMtx(temp_r30), *calc_mtx);
                cMtx_YrotM(*calc_mtx, sp14->field_0x6c6[sp10]);
                cMtx_ZrotM(*calc_mtx, sp14->field_0x6ce[sp10]);
                temp_r3->setAnmMtx(temp_r30, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }

            if (temp_r30 == TREG_S(0)) {
                MTXCopy(temp_r3->getAnmMtx(temp_r30), *calc_mtx);
                cMtx_YrotM(*calc_mtx, TREG_S(1));
                cMtx_XrotM(*calc_mtx, TREG_S(2));
                cMtx_ZrotM(*calc_mtx, TREG_S(3));
                temp_r3->setAnmMtx(temp_r30, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }

            if (temp_r30 == TREG_S(4)) {
                MTXCopy(temp_r3->getAnmMtx(temp_r30), *calc_mtx);
                cMtx_YrotM(*calc_mtx, TREG_S(5));
                cMtx_XrotM(*calc_mtx, TREG_S(6));
                cMtx_ZrotM(*calc_mtx, TREG_S(7));
                temp_r3->setAnmMtx(temp_r30, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }
        }
    }

    return 1;
}

/* 806D842C-806D853C 00048C 0110+00 1/0 0/0 0/0 .text            daE_GOB_Draw__FP11e_gob_class */
static int daE_GOB_Draw(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    J3DModel* temp_r28 = i_this->mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &actor->current.pos, &actor->tevStr);
    g_env_light.setLightTevColorType_MAJI(temp_r28, &actor->tevStr);

    i_this->mpModelMorf->entryDL();

    if (!dComIfGs_isStageMiddleBoss()) {
        g_env_light.setLightTevColorType_MAJI(i_this->mpArmorModel, &actor->tevStr);
        mDoExt_modelUpdateDL(i_this->mpArmorModel);
    }

    cXyz sp8;
    sp8.set(actor->current.pos.x, 50.0f + actor->current.pos.y + BREG_F(18), actor->current.pos.z);
    i_this->field_0x650 = dComIfGd_setShadow(i_this->field_0x650, 1, temp_r28, &sp8, 1400.0f + BREG_F(19), 0.0f, actor->current.pos.y, i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd, &actor->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 806D8578-806D8624 0005D8 00AC+00 11/11 0/0 0/0 .text            anm_init__FP11e_gob_classifUcf */
static void anm_init(e_gob_class* i_this, int i_anm, f32 i_morf, u8 i_mode, f32 i_speed) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_gob", i_anm), i_mode, i_morf, i_speed, 0.0f, -1.0f);
    i_this->mAnm = i_anm;
}

/* 806D8624-806D886C 000684 0248+00 1/1 0/0 0/0 .text            damage_check__FP11e_gob_class */
static void damage_check(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    dComIfGp_getPlayer(0);

    i_this->mCcStts.Move();

    if ((i_this->field_0x67e == 0) && i_this->mCcSph.ChkTgHit()) {
        i_this->field_0x67e = 6;
        i_this->mAtInfo.mpCollider = i_this->mCcSph.GetTgHitObj();

        if (i_this->field_0xd20 != 0) {
            def_se_set(&i_this->mSound, i_this->mCcSph.GetTgHitObj(), 0x2A, NULL);
            return;
        }

        cc_at_check(actor, &i_this->mAtInfo);
        OS_REPORT("//////////////E_GOB AP %d\n", i_this->mAtInfo.mAttackPower);

        if (i_this->mAtInfo.mHitType == 0x10) {
            i_this->mAction = 6;
            i_this->mMode = 0;

            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_STOMACH, -1);
            i_this->mSound.startCreatureSound(Z2SE_EN_GOB_STOMACH_BOUND, 0, -1);
            return;
        }

        i_this->field_0x6c4 = JREG_S(2) + 10;

        if (i_this->mAtInfo.mAttackPower >= 30 || daPy_getPlayerActorClass()->getCutCount() >= 4) {
            i_this->mAction = 7;
            i_this->mMode = 0;
            i_this->field_0xd21 = pl_cut_LRC(daPy_getPlayerActorClass()->getCutType());
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_HIP_DOWN, -1);
        } else {
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_DAMAGE, -1);
        }

        u16 var_r28;
        if (i_this->mAtInfo.mHitStatus != 0) {
            var_r28 = 3;
        } else {
            var_r28 = 1;
        }

        cXyz sp24;
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(0x1C), mDoMtx_stack_c::get());
        cXyz sp18(50.0f + VREG_F(17), VREG_F(18), VREG_F(19));
        mDoMtx_stack_c::multVec(&sp18, &sp24);
        dComIfGp_setHitMark(var_r28, actor, &sp24, &actor->shape_angle, NULL, 0);
    }
}

UNK_REL_BSS

/* 806DF2C4-806DF2C8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 806DF2C5 0003+00 data_806DF2C5 None */
static u8 struct_806DF2C4;

/* 806DF2D4-806DF2F4 000054 0020+00 4/6 0/0 0/0 .bss             l_HIO */
static daE_GOB_HIO_c l_HIO;

/* 806DF2F4-806DF2F8 000074 0004+00 3/4 0/0 0/0 .bss             ms */
static obj_msima_class* ms;

/* 806DF2F8-806DF2FC 000078 0004+00 1/2 0/0 0/0 .bss             my */
static obj_myogan_class* my;

/* 806DF308-806DF314 000088 000C+00 3/5 0/0 0/0 .bss             base_sc */
static cXyz base_sc(1.1f, 1.1f, 1.1f);

/* 806D886C-806D8DAC 0008CC 0540+00 2/1 0/0 0/0 .text            fight__FP11e_gob_class */
static void fight(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    int sp18 = i_this->mpModelMorf->getFrame();
    f32 var_f31 = 0.0f;
    s16 spA = 0x200;
    cXyz sp28;
    cXyz sp1C;

    s16 sp8 = i_this->field_0x66a;

    switch (i_this->mMode) {
    case -1:
        actor->home.pos.y = actor->current.pos.y;
        /* fallthrough */
    case 0:
        anm_init(i_this, 0x26, 10.0f, 2, 1.0f);
        i_this->mMode = 1;
        i_this->mTimers[0] = 20.0f + cM_rndF(20.0f);
        actor->home.pos.y = actor->current.pos.y;
        break;
    case 1:
        var_f31 = l_HIO.normal_walk_speed;

        if (i_this->field_0x66c > 600.0f) {
            if (i_this->mTimers[2] == 0) {
                anm_init(i_this, 0x1A, 10.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_PROVOKE_A, -1);
                i_this->mMode = 5;
            }
        } else {
            i_this->mMode = 2;
        }
        break;
    case 2:
        i_this->mTimers[2] = 200.0f + cM_rndF(70.0f);

        if (i_this->field_0x66c > 650.0f) {
            i_this->mMode = 0;
        } else if (i_this->field_0x66c < 350.0f) {
            var_f31 = -l_HIO.battle_walk_speed;
        } else if (i_this->field_0x66c > 450.0f) {
            var_f31 = l_HIO.battle_walk_speed;
        }

        if (0.0f != var_f31) {
            if (i_this->mAnm != 0x24) {
                anm_init(i_this, 0x24, 10.0f, 2, 1.0f);
            }
        } else if (i_this->mAnm != 0x23 && sp18 == 0) {
            anm_init(i_this, 0x23, 10.0f, 2, 1.0f);
        }

        if (var_f31 <= 0.0f) {
            if (i_this->mTimers[0] == 0) {
                i_this->mAction = 3;
                i_this->mMode = 0;

                if (cM_rndF(1.0f) < 0.7f) {
                    i_this->field_0xd1f = 0;
                } else {
                    i_this->field_0xd1f = 1;
                }
                return;
            }
            break;
        }

        i_this->mTimers[0] = 20.0f + cM_rndF(20.0f);
        break;
    case 5:
        if (sp18 == 102) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_PROVOKE_B, -1);
        }

        if (sp18 == 32 || sp18 == 49) {
            dComIfGp_particle_set(0x8428, &actor->current.pos, &actor->shape_angle, &base_sc);
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_GOB_PROVOKE_KNUCKLES, 0, -1);
        }

        if (i_this->mpModelMorf->isStop()) {
            i_this->mMode = 0;
            i_this->mTimers[2] = 200.0f + cM_rndF(70.0f);
        }
        break;
    case 10:
        var_f31 = l_HIO.normal_walk_speed;
        sp8 = i_this->field_0x668;

        if (i_this->mTimers[0] == 0) {
            anm_init(i_this, 0x25, 5.0f, 2, 1.0f);
            i_this->mMode = 11;
            i_this->mTimers[0] = 60.0f + cM_rndF(30.0f);
        }
        break;
    case 11:
        sp8 = i_this->field_0x668;
        spA = 0;

        if (i_this->mTimers[0] == 0) {
            anm_init(i_this, 0x26, 5.0f, 2, 1.0f);
            i_this->mMode = 10;
            i_this->mTimers[0] = 90.0f + cM_rndF(30.0f);

            sp28.x = (actor->home.pos.x + cM_rndFX(400.0f)) - actor->current.pos.x;
            sp28.z = (actor->home.pos.z + cM_rndFX(400.0f)) - actor->current.pos.z;
            i_this->field_0x668 = cM_atan2s(sp28.x, sp28.z);
        }
        break;
    }

    cLib_addCalc2(&actor->speedF, var_f31, 1.0f, 2.0f);
    cLib_addCalcAngleS2(&actor->current.angle.y, sp8, 1, spA);
    cLib_addCalcAngleS2(&i_this->field_0x6b2, 0, 1, 0x800);

    if (dComIfGp_checkPlayerStatus0(0, 0x100)) {
        if (i_this->mMode < 10) {
            i_this->mMode = 11;
            i_this->mTimers[0] = 0;
        }
    } else if (i_this->mMode >= 10) {
        i_this->mMode = 0;
    }
}

/* 806D8DAC-806D93CC 000E0C 0620+00 2/1 0/0 0/0 .text            attack__FP11e_gob_class */
static s8 attack(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    s8 var_r26 = 0;
    s8 var_r28 = 0;
    int temp_r27 = i_this->mpModelMorf->getFrame();
    s8 var_r25 = 1;

    switch (i_this->mMode) {
    case 0:
        if (i_this->field_0xd1f == 0) {
            anm_init(i_this, 4, 5.0f, 0, 1.0f);
            i_this->mMode = 1;
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_ATK_A_READY, -1);
        } else {
            anm_init(i_this, 7, 5.0f, 0, 1.0f);
            i_this->mMode = 11;
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_ATK_B_READY, -1);
        }
        break;
    case 1:
        var_r28 = 1;

        if (i_this->mpModelMorf->isStop()) {
            i_this->mMode = 2;
            anm_init(i_this, 5, 1.0f, 2, 1.0f);
            i_this->mTimers[0] = l_HIO.swing_time_a;
        }
        break;
    case 2:
        var_r28 = 1;
        if (temp_r27 == 1) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_GOB_ARM_SWING_WAIT, 0, -1);
        }

        i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_GOB_V_ATK_A_WAIT, -1);

        if (i_this->mTimers[0] == 0) {
            anm_init(i_this, 6, 3.0f, 0, 1.0f);
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_GOB_ARM_SWING_ATTACK, 0, -1);
            dComIfGp_particle_set(0x8422, &actor->current.pos, &actor->shape_angle, &base_sc);
            dComIfGp_particle_set(0x8423, &actor->current.pos, &actor->shape_angle, &base_sc);
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_ATK_A, -1);
            i_this->mMode = 3;
        }
        break;
    case 3:
        var_r25 = 0;
        i_this->field_0x6a8 = 0x400;

        if (temp_r27 < 10) {
            i_this->field_0xd1d = 1;
        }

        if (i_this->mpModelMorf->isStop() ) {
            var_r26 = 1;
        }
        break;
    case 11:
        var_r28 = 1;

        if (i_this->mpModelMorf->isStop()) {
            i_this->mMode = 12;
            anm_init(i_this, 8, 1.0f, 2, 1.0f);
            i_this->mTimers[0] = l_HIO.swing_time_b;
        }
        break;
    case 12:
        var_r28 = 1;
        i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_GOB_V_ATK_B_WAIT, -1);

        if (i_this->mTimers[0] == 0) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_GOB_ARM_DOWN_WIND, 0, -1);
            anm_init(i_this, 9, 3.0f, 0, 1.0f);
            dComIfGp_particle_set(0x8424, &actor->current.pos, &actor->shape_angle, &base_sc);
            dComIfGp_particle_set(0x8425, &actor->current.pos, &actor->shape_angle, &base_sc);
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_ATK_B, -1);
            i_this->mMode = 13;
        }
        break;
    case 13:
        var_r25 = 0;
        i_this->field_0x6a8 = 0x400;

        if (temp_r27 == 4) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_GOB_ARM_DOWN_FLOOR, 0, -1);
        }

        if (temp_r27 < 10) {
            i_this->field_0xd1d = 1;
        }

        if (temp_r27 == 5) {
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            ms->field_0x59c = 700.0f;
            ms->field_0x598 = 2050;
            ms->field_0x59a = 1800;
        }

        if (i_this->mpModelMorf->isStop()) {
            var_r26 = 1;
        }
        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 2.0f);

    if (var_r26 != 0) {
        i_this->mAction = 2;
        i_this->mMode = 0;
    }

    if (var_r28 != 0) {
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x66a, 2, 0x800);
    }

    return var_r25;
}

/* 806D93CC-806D9514 00142C 0148+00 1/1 0/0 0/0 .text            defence__FP11e_gob_class */
static void defence(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    s8 var_r29 = 0;
    s8 var_r27 = 0;
    int var_r26 = i_this->mpModelMorf->getFrame();
    i_this->field_0xd20 = 1;

    switch (i_this->mMode) {
    case 0:
        if (i_this->field_0xd21 == 0) {
            anm_init(i_this, 0xE, 3.0f, 0, 1.0f);
        } else if (i_this->field_0xd21 == 1) {
            anm_init(i_this, 0xF, 3.0f, 0, 1.0f);
        } else {
            anm_init(i_this, 0x10, 3.0f, 0, 1.0f);
        }

        i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_GUARD, -1);
        i_this->mMode = 1;
        break;
    case 1:
        if (i_this->mpModelMorf->isStop()) {
            var_r29 = 1;
        }
        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 2.0f);

    if (var_r29) {
        i_this->mAction = 2;
        i_this->mMode = 0;
    }

    if (var_r27) {
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x66a, 2, 0x800);
    }
}

/* 806D9514-806D9C80 001574 076C+00 1/1 0/0 0/0 .text            ball__FP11e_gob_class */
static s8 ball(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    int sp28 = i_this->mpModelMorf->getFrame();
    f32 var_f30 = 0.0f;
    f32 var_f31 = 1.0f;

    i_this->field_0x6b4 = 0;
    i_this->field_0xd20 = 1;
    s8 sp8 = 0;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 0xB, 5.0f, 0, 1.0f);
        i_this->mMode = 1;
        i_this->field_0xd1c = 0;
        /* fallthrough */
    case 1:
        if (i_this->mpModelMorf->checkFrame(5.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_GOB_HIP_DOWN, 0, -1);
        }

        if (i_this->mpModelMorf->checkFrame(21.5f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_GOB_ROLLING, 0, -1);
        }

        i_this->field_0x668 = i_this->field_0x66a;

        var_f30 = -(2.0f + TREG_F(11));
        var_f31 = 2.0f + TREG_F(11);

        if (i_this->mpModelMorf->isStop()) {
            anm_init(i_this, 0xA, 5.0f, 0, 1.0f);
            i_this->mMode = 2;
            i_this->mTimers[0] = 60;
            i_this->mTimers[2] = 300.0f + cM_rndF(100.0f);
        case 2:
            i_this->field_0x6b4 = l_HIO.rotation_speed;
            i_this->field_0x668 = i_this->field_0x66a;
            var_f31 = 2.0f + TREG_F(4);

            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 3;
                i_this->mTimers[1] = 30;
            }
        }
        break;
    case 3:
        i_this->field_0x6b4 = l_HIO.rotation_speed;
        var_f30 = l_HIO.roll_speed;
        var_f31 = 1.0f + TREG_F(5);

        if (i_this->mTimers[1] == 0 && i_this->field_0x6ab != 0) {
            i_this->mTimers[0] = 35.0f + cM_rndF(10.0f);
            i_this->mMode = 2;
        }

        if (i_this->mTimers[2] == 0 || dComIfGp_checkPlayerStatus0(0, 0x100)) {
            i_this->mMode = 4;
        }
        break;
    case 4:
        var_f31 = 2.0f;
        cLib_addCalcAngleS2(&i_this->field_0x6b2, 0, 1, 0x800);
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x66a, 2, 0x700);

        if (i_this->field_0x6b2 == 0) {
            anm_init(i_this, 0x22, 2.0f, 0, 1.0f);
            i_this->mMode = 5;
            dComIfGp_particle_set(0x8429, &actor->current.pos, &actor->shape_angle, &base_sc);
            dComIfGp_particle_set(0x842A, &actor->current.pos, &actor->shape_angle, &base_sc);
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_RECOVER, -1);
        }
        break;
    case 5:
        if (sp28 == 16) {
            i_this->mSound.startCreatureSound(Z2SE_EN_GOB_KNUCKLE_GROUND, 0, -1);
        }

        sp8 = 1;
        var_f31 = 5.0f;
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x66a, 2, 0x800);

        if (i_this->mpModelMorf->isStop()) {
            i_this->mAction = 2;
            i_this->mMode = 0;
        }
        break;
    }

    if (i_this->field_0x6b2 != 0 || i_this->field_0x6b4 > 100) {
        i_this->field_0xd30 = dComIfGp_particle_set(i_this->field_0xd30, 0x8426, &actor->current.pos, &actor->shape_angle, &base_sc);
        i_this->field_0xd34 = dComIfGp_particle_set(i_this->field_0xd34, 0x8427, &actor->current.pos, &actor->shape_angle, &base_sc);
        dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0xd30);
        dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0xd34);
    }

    s16 spA = i_this->field_0x6b2;
    i_this->field_0x6b2 += i_this->field_0x6b4;

    if (spA < 0 && i_this->field_0x6b2 >= 0) {
        i_this->mSound.startCreatureSound(Z2SE_EN_GOB_ROLLING, 0, -1);
    }

    cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x668, 1, 0x300);
    cLib_addCalc2(&actor->speedF, var_f30, 1.0f, var_f31);

    if ((actor->speedF > 10.0f) && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
        i_this->field_0xd1d = 2;
    } else if (i_this->field_0x6b4 > 100) {
        fopEn_enemy_c* sp24 = (fopEn_enemy_c*)i_this;
        cXyz sp2C;
        f32 temp_f27 = 100.0f + NREG_F(6);
        f32 var_f29 = (150.0f + (350.0f + NREG_F(7))) - 180.0f;
        f32 var_f28 = 70.0f + NREG_F(8);

        if (actor->speedF >= 10.0f) {
            var_f29 = 800.0f;
            var_f28 = 100.0f;
        }
    
        mDoMtx_stack_c::YrotS(-actor->shape_angle.y);
        mDoMtx_stack_c::transM(-actor->current.pos.x, -actor->current.pos.y, -actor->current.pos.z);
        mDoMtx_stack_c::multVec(&daPy_getPlayerActorClass()->current.pos, &sp2C);
    
        if (fabsf(sp2C.x) < var_f28 && sp2C.z > temp_f27 && sp2C.z < var_f29) {
            actor->attention_info.flags |= 0x10;
        }

        if (sp24->checkThrowMode(2)) {
            OS_REPORT("   GOB SET_MODE_CATCH \n");
            sp24->offThrowMode(2);
            i_this->mAction = 8;
            i_this->mMode = 0;
            dComIfGoat_SetThrow(i_this);
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_CATCHED, -1);
        } else if (!mDoCPd_c::getHoldA(PAD_1) && (i_this->field_0xd1c != 0 || actor->speedF >= l_HIO.roll_speed - 10.0f)) {
            i_this->field_0xd1d = 2;
            i_this->field_0xd1c = 1;
        }
    }

    return sp8;
}

/* 806D9C80-806D9D44 001CE0 00C4+00 1/1 0/0 0/0 .text            s_damage__FP11e_gob_class */
static void s_damage(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    f32 var_f31 = 0.0f;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 0x21, 5.0f, 0, 1.0f);
        i_this->mMode = 1;
        /* fallthrough */
    case 1:
        var_f31 = 0.0f;
        if (i_this->mpModelMorf->isStop()) {
            i_this->mAction = 2;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc2(&actor->speedF, var_f31, 1.0f, 2.0f);
}

/* 806D9D44-806D9DE0 001DA4 009C+00 1/1 0/0 0/0 .text            damage__FP11e_gob_class */
static void damage(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    f32 temp_f31 = 0.0f;

    i_this->field_0x67e = 5;

    switch (i_this->mMode) {
    case 0:
    case 1:
        i_this->mAction = 5;
        i_this->mMode = 0;
        i_this->field_0x67e = 30;
        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[672]);
    }

    cLib_addCalc2(&actor->speedF, temp_f31, 1.0f, 2.0f);
}

/* 806D9DE0-806DAB6C 001E40 0D8C+00 1/1 0/0 0/0 .text            glab__FP11e_gob_class */
static u8 glab(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    daPy_py_c* sp30 = (daPy_py_c*)dComIfGp_getPlayer(0);
    fopEn_enemy_c* sp2C = (fopEn_enemy_c*)i_this;
    dBgS_ObjGndChk sp178;

    int sp28 = i_this->mpModelMorf->getFrame();
    s8 spC = 2;
    s8 spB = 0;

    cXyz spC4;
    cXyz spB8;
    cXyz spAC;
    spC4.set(0.0f, 0.0f, 0.0f);

    MTXCopy(daPy_getPlayerActorClass()->getLeftItemMatrix(), *calc_mtx);
    MtxPosition(&spC4, &spB8);

    MTXCopy(daPy_getPlayerActorClass()->getRightItemMatrix(), *calc_mtx);
    MtxPosition(&spC4, &spAC);

    cXyz spA0 = spB8 + ((spAC - spB8) * 0.5f);

    spC4 = spB8 - spAC;
    s16 sp10 = (cM_atan2s(spC4.x, spC4.z) - 0x4000);
    s16 spE = -cM_atan2s(spC4.y, JMAFastSqrt((spC4.x * spC4.x) + (spC4.z * spC4.z)));

    i_this->field_0x67e = 10;
    i_this->field_0xd20 = 1;
    i_this->field_0x6b2 += i_this->field_0x6b4;
    cLib_addCalcAngleS2(&i_this->field_0x6b4, 0, 1, 0x200);

    s8 spA = 0;
    s8 sp9 = 0;

    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        spA = 1;
        actor->speedF = 0.0f;
        anm_init(i_this, 0x1C, 5.0f, 2, 1.0f);
        break;
    case 1:
        if (sp2C->checkThrowMode(8)) {
            sp2C->offThrowMode(8);
            i_this->mMode = 2;
            i_this->field_0x654 = 0;
            i_this->field_0x6b6 = 0x800;
        }

        if (sp2C->checkThrowMode(0x10)) {
            sp2C->offThrowMode(0x10);
            i_this->mMode = 2;
            i_this->field_0x654 = 0;
            i_this->field_0x6b6 = -0x800;
        }

        spA = 1;
        actor->speed.y = 0.0f;
        break;
    case 2:
        if (sp28 == 1) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_CATCHED_ANNOY, -1);
        }

        if (sp28 == 8) {
            i_this->mSound.startCreatureSound(Z2SE_EN_GOB_CATCHED_FRICTION, 0, -1);
        }

        if (i_this->field_0x654 == KREG_S(7) + 32) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_THROWN, -1);
            i_this->mMode = 3;
            actor->speed.y = 50.0f;

            if (i_this->field_0x6b6 > 0) {
                cMtx_YrotS(*calc_mtx, (sp30->shape_angle.y + (KREG_S(5) + 32000)));
            } else {
                cMtx_YrotS(*calc_mtx, (sp30->shape_angle.y - (KREG_S(5) + 32000)));
            }

            spC4.x = 0.0f;
            spC4.y = 0.0f;
            spC4.z = 40.0f;
            MtxPosition(&spC4, &i_this->field_0x6b8);
        } else {
            spA = 1;
            i_this->speed.y = 0.0f;
        }
        break;
    case 3:
    case 4:
        if (i_this->field_0x6d8 >= 2) {
            dBgS_ObjGndChk_Spl sp124;
            sp124.SetPos(&actor->current.pos);
            
            dBgS_ObjGndChk spD0;
            spD0.SetPos(&actor->current.pos);
            
            f32 temp_f27 = dComIfG_Bgsp().GroundCross(&sp124);
            if (dComIfG_Bgsp().GroundCross(&spD0) < temp_f27 && i_this->field_0xd38 == 0) {
                i_this->field_0xd38 = 10;
            }
        }

        actor->current.pos.x += i_this->field_0x6b8.x;
        actor->current.pos.z += i_this->field_0x6b8.z;
        actor->current.angle.y += i_this->field_0x6b6;

        if (i_this->mAcch.ChkGroundHit()) {
            i_this->field_0x6b8.x *= 0.8f;
            i_this->field_0x6b8.z *= 0.8f;
            cLib_addCalcAngleS2(&i_this->field_0x6b6, 0, 1, 50);

            if (i_this->mMode == 3) {
                i_this->mMode = 4;
                actor->speed.y = 25.0f;

                dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
                i_this->mSound.startCreatureSound(Z2SE_EN_GOB_ROLLING_BOUND, 0, -1);
            }

            if (i_this->field_0x6b6 == 0) {
                sp9 = 1;
            }
        }
        break;
    case 5: {
        actor->speed.y = 0.0f;
        cLib_addCalcAngleS2(&i_this->field_0x6b2, 0, 1, 0x800);

        spC4 = i_this->field_0x65c;
        spC4.y += 1000.0f;
        sp178.SetPos(&spC4);

        f32 temp_f1 = dComIfG_Bgsp().GroundCross(&sp178);
        if (temp_f1 > 0.0f) {
            i_this->field_0x65c.y = temp_f1;
        }

        spC4 = i_this->field_0x65c - actor->current.pos;
        cMtx_YrotS(*calc_mtx, cM_atan2s(spC4.x, spC4.z));
        cMtx_XrotM(*calc_mtx, -cM_atan2s(spC4.y, JMAFastSqrt((spC4.x * spC4.x) + (spC4.z * spC4.z))));

        spC4.x = 0.0f;
        spC4.y = 0.0f;
        spC4.z = 30.0f + NREG_F(0);
        MtxPosition(&spC4, &spB8);
        actor->current.pos += spB8;

        spC4 = i_this->field_0x65c - actor->current.pos;
        if (spC4.abs() < 50.0f) {
            actor->current.pos = i_this->field_0x65c;
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER8, 0x4F, cXyz(0.0f, 1.0f, 0.0f));

            ms->field_0x59c = 1000.0f;
            ms->field_0x598 = 2050;
            ms->field_0x59a = 1800;

            if (i_this->field_0xd38 != 0) {
                i_this->mAction = 10;
                i_this->mMode = 0;
            } else {
                anm_init(i_this, 0x1D, 2.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_RECOVER, -1);
                i_this->mMode = 6;

                if (i_this->field_0x6d8 == 1) {
                    Z2GetAudioMgr()->changeSubBgmStatus(2);
                } else {
                    Z2GetAudioMgr()->changeSubBgmStatus(3);
                }
            }
        } else {
            spC = 0;
        }

        spC4 = i_this->field_0x65c - i_this->field_0x690;
        spC4.y = 0.0f;
        f32 temp_f29 = spC4.abs();

        spC4 = i_this->field_0x65c - actor->current.pos;
        spC4.y = 0.0f;
        f32 temp_f28 = spC4.abs();

        f32 var_f31 = temp_f29 * (1.0f + BREG_F(19));
        if (var_f31 > 1000.0f + BREG_F(18)) {
            var_f31 = 1000.0f + BREG_F(18);
        }

        i_this->field_0x69c = var_f31 * cM_ssin(32768.0f * (temp_f28 / temp_f29));
        actor->current.angle.z = 0;
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x66a, 1, 0x200);
        break;
    }
    case 6:
        spB = 1;
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x66a, 1, 0x200);

        if (i_this->mpModelMorf->isStop()) {
            i_this->mAction = 2;
            i_this->mMode = 0;
        }
        break;
    }

    if (spA != 0) {
        cMtx_YrotS(*calc_mtx, sp10);
        spC4.x = BREG_F(6);
        spC4.y = -50.0f + BREG_F(7);
        spC4.z = 170.0f + BREG_F(8);
        MtxPosition(&spC4, &spB8);
        spB8 += spA0;

        cLib_addCalc2(&actor->current.pos.x, spB8.x, 1.0f, 30.0f);
        cLib_addCalc2(&actor->current.pos.y, spB8.y, 1.0f, 30.0f);
        cLib_addCalc2(&actor->current.pos.z, spB8.z, 1.0f, 30.0f);

        cLib_addCalcAngleS2(&actor->current.angle.y, (sp10 + 0x8000), 1, 0x800);
        cLib_addCalcAngleS2(&actor->current.angle.z, spE / 2, 4, 0x1000);
        cLib_addCalcAngleS2(&i_this->field_0x6b2, (AREG_S(2) - 5000), 1, 0x800);
        spC = 0;
    }

    if (sp2C->checkThrowMode(4)) {
        sp2C->offThrowMode(4);
        sp9 = 1;
    }

    if (sp9 != 0) {
        i_this->mAction = 5;
        i_this->mMode = 4;
        actor->current.angle.z = 0;
        spC = 2;
        actor->speed.y = 0.0f;
        i_this->mTimers[4] = 20;
    }

    u8 sp8 = spC | spB;
    return sp8;
}

/* ############################################################################################## */
/* 806DEEF4-806DEEF8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4870 = 110.0f;
COMPILER_STRIP_GATE(0x806DEEF4, &lit_4870);
#pragma pop

/* 806DEEF8-806DEEFC 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4871 = 2000.0f;
COMPILER_STRIP_GATE(0x806DEEF8, &lit_4871);
#pragma pop

/* 806DEEFC-806DEF00 0000C4 0004+00 0/4 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4872 = 500.0f;
COMPILER_STRIP_GATE(0x806DEEFC, &lit_4872);
#pragma pop

/* 806DAB6C-806DB038 002BCC 04CC+00 1/1 0/0 0/0 .text            jump__FP11e_gob_class */
static void jump(e_gob_class* i_this) {
    // NONMATCHING
}

/* 806DB038-806DB304 003098 02CC+00 2/1 0/0 0/0 .text            start__FP11e_gob_class */
static void start(e_gob_class* i_this) {
    // NONMATCHING
}

/* 806DB304-806DB50C 003364 0208+00 1/1 0/0 0/0 .text            end__FP11e_gob_class */
static void end(e_gob_class* i_this) {
    // NONMATCHING
}

/* 806DB50C-806DB548 00356C 003C+00 1/1 0/0 0/0 .text            s_set__FP11e_gob_class */
static void s_set(e_gob_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEF00-806DEF04 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4940 = 150.0f;
COMPILER_STRIP_GATE(0x806DEF00, &lit_4940);
#pragma pop

/* 806DEF04-806DEF08 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4941 = 15.0f;
COMPILER_STRIP_GATE(0x806DEF04, &lit_4941);
#pragma pop

/* 806DEF08-806DEF0C 0000D0 0004+00 0/2 0/0 0/0 .rodata          @5062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5062 = 2120.0f;
COMPILER_STRIP_GATE(0x806DEF08, &lit_5062);
#pragma pop

/* 806DB548-806DB768 0035A8 0220+00 1/1 0/0 0/0 .text            message__FP11e_gob_class */
static void message(e_gob_class* i_this) {
    // NONMATCHING
}

/* 806DB768-806DC4F0 0037C8 0D88+00 2/1 0/0 0/0 .text            action__FP11e_gob_class */
static void action(e_gob_class* i_this) {
    // NONMATCHING
}

/* 806DC4F0-806DC5D4 004550 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP11e_gob_classf */
static void cam_3d_morf(e_gob_class* i_this, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEF0C-806DEF10 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5435 = -30.0f;
COMPILER_STRIP_GATE(0x806DEF0C, &lit_5435);
#pragma pop

/* 806DEF10-806DEF14 0000D8 0004+00 0/0 0/0 0/0 .rodata          @5436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5436 = 1350.0f;
COMPILER_STRIP_GATE(0x806DEF10, &lit_5436);
#pragma pop

/* 806DEF14-806DEF18 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5437 = 120.0f;
COMPILER_STRIP_GATE(0x806DEF14, &lit_5437);
#pragma pop

/* 806DEF18-806DEF1C 0000E0 0004+00 0/0 0/0 0/0 .rodata          @5438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5438 = 12.0f;
COMPILER_STRIP_GATE(0x806DEF18, &lit_5438);
#pragma pop

/* 806DEF1C-806DEF20 0000E4 0004+00 0/0 0/0 0/0 .rodata          @5439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5439 = -170.0f;
COMPILER_STRIP_GATE(0x806DEF1C, &lit_5439);
#pragma pop

/* 806DEF20-806DEF24 0000E8 0004+00 0/0 0/0 0/0 .rodata          @5440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5440 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806DEF20, &lit_5440);
#pragma pop

/* 806DEF24-806DEF28 0000EC 0004+00 0/0 0/0 0/0 .rodata          @5441 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5441 = 16384.0f;
COMPILER_STRIP_GATE(0x806DEF24, &lit_5441);
#pragma pop

/* 806DEF28-806DEF2C 0000F0 0004+00 0/0 0/0 0/0 .rodata          @5442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5442 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEF28, &lit_5442);
#pragma pop

/* 806DEF2C-806DEF30 0000F4 0004+00 0/0 0/0 0/0 .rodata          @5443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5443 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806DEF2C, &lit_5443);
#pragma pop

/* 806DEF30-806DEF34 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5444 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806DEF30, &lit_5444);
#pragma pop

/* 806DEF34-806DEF38 0000FC 0004+00 0/0 0/0 0/0 .rodata          @5445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5445 = 4000.0f;
COMPILER_STRIP_GATE(0x806DEF34, &lit_5445);
#pragma pop

/* 806DEF38-806DEF40 000100 0008+00 0/0 0/0 0/0 .rodata          @5449 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5449[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806DEF38, &lit_5449);
#pragma pop

/* 806DEF40-806DEF44 000108 0004+00 0/1 0/0 0/0 .rodata          @5983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5983 = 55.0f;
COMPILER_STRIP_GATE(0x806DEF40, &lit_5983);
#pragma pop

/* 806DEF44-806DEF48 00010C 0004+00 0/1 0/0 0/0 .rodata          @5984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5984 = -104.0f;
COMPILER_STRIP_GATE(0x806DEF44, &lit_5984);
#pragma pop

/* 806DEF48-806DEF4C 000110 0004+00 0/1 0/0 0/0 .rodata          @5985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5985 = 2205.0f;
COMPILER_STRIP_GATE(0x806DEF48, &lit_5985);
#pragma pop

/* 806DEF4C-806DEF50 000114 0004+00 0/1 0/0 0/0 .rodata          @5986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5986 = 1078.0f;
COMPILER_STRIP_GATE(0x806DEF4C, &lit_5986);
#pragma pop

/* 806DEF50-806DEF54 000118 0004+00 0/1 0/0 0/0 .rodata          @5987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5987 = -175.0f;
COMPILER_STRIP_GATE(0x806DEF50, &lit_5987);
#pragma pop

/* 806DEF54-806DEF58 00011C 0004+00 0/1 0/0 0/0 .rodata          @5988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5988 = 2246.0f;
COMPILER_STRIP_GATE(0x806DEF54, &lit_5988);
#pragma pop

/* 806DEF58-806DEF5C 000120 0004+00 0/1 0/0 0/0 .rodata          @5989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5989 = 1418.0f;
COMPILER_STRIP_GATE(0x806DEF58, &lit_5989);
#pragma pop

/* 806DEF5C-806DEF60 000124 0004+00 0/1 0/0 0/0 .rodata          @5990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5990 = 1100.0f;
COMPILER_STRIP_GATE(0x806DEF5C, &lit_5990);
#pragma pop

/* 806DEF60-806DEF64 000128 0004+00 0/1 0/0 0/0 .rodata          @5991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5991 = 2289.0f;
COMPILER_STRIP_GATE(0x806DEF60, &lit_5991);
#pragma pop

/* 806DEF64-806DEF68 00012C 0004+00 0/1 0/0 0/0 .rodata          @5992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5992 = -1694.0f;
COMPILER_STRIP_GATE(0x806DEF64, &lit_5992);
#pragma pop

/* 806DEF68-806DEF6C 000130 0004+00 0/1 0/0 0/0 .rodata          @5993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5993 = 2293.0f;
COMPILER_STRIP_GATE(0x806DEF68, &lit_5993);
#pragma pop

/* 806DEF6C-806DEF70 000134 0004+00 0/1 0/0 0/0 .rodata          @5994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5994 = -1349.0f;
COMPILER_STRIP_GATE(0x806DEF6C, &lit_5994);
#pragma pop

/* 806DEF70-806DEF74 000138 0004+00 0/1 0/0 0/0 .rodata          @5995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5995 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEF70, &lit_5995);
#pragma pop

/* 806DEF74-806DEF78 00013C 0004+00 0/1 0/0 0/0 .rodata          @5996 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5996 = 0x3B03126F;
COMPILER_STRIP_GATE(0x806DEF74, &lit_5996);
#pragma pop

/* 806DEF78-806DEF7C 000140 0004+00 0/1 0/0 0/0 .rodata          @5997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5997 = 3000.0f;
COMPILER_STRIP_GATE(0x806DEF78, &lit_5997);
#pragma pop

/* 806DEF7C-806DEF80 000144 0004+00 0/1 0/0 0/0 .rodata          @5998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5998 = -293.0f;
COMPILER_STRIP_GATE(0x806DEF7C, &lit_5998);
#pragma pop

/* 806DEF80-806DEF84 000148 0004+00 0/1 0/0 0/0 .rodata          @5999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5999 = 279.0f;
COMPILER_STRIP_GATE(0x806DEF80, &lit_5999);
#pragma pop

/* 806DEF84-806DEF88 00014C 0004+00 0/1 0/0 0/0 .rodata          @6000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6000 = 1988.0f;
COMPILER_STRIP_GATE(0x806DEF84, &lit_6000);
#pragma pop

/* 806DEF88-806DEF8C 000150 0004+00 0/1 0/0 0/0 .rodata          @6001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6001 = -341.0f;
COMPILER_STRIP_GATE(0x806DEF88, &lit_6001);
#pragma pop

/* 806DEF8C-806DEF90 000154 0004+00 0/2 0/0 0/0 .rodata          @6002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6002 = 24.0f;
COMPILER_STRIP_GATE(0x806DEF8C, &lit_6002);
#pragma pop

/* 806DEF90-806DEF94 000158 0004+00 0/1 0/0 0/0 .rodata          @6003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6003 = 2223.0f;
COMPILER_STRIP_GATE(0x806DEF90, &lit_6003);
#pragma pop

/* 806DEF94-806DEF98 00015C 0004+00 0/1 0/0 0/0 .rodata          @6004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6004 = 37.0f / 5.0f;
COMPILER_STRIP_GATE(0x806DEF94, &lit_6004);
#pragma pop

/* 806DEF98-806DEF9C 000160 0004+00 0/1 0/0 0/0 .rodata          @6005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6005 = 945.0f;
COMPILER_STRIP_GATE(0x806DEF98, &lit_6005);
#pragma pop

/* 806DEF9C-806DEFA0 000164 0004+00 0/1 0/0 0/0 .rodata          @6006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6006 = 806.0f;
COMPILER_STRIP_GATE(0x806DEF9C, &lit_6006);
#pragma pop

/* 806DEFA0-806DEFA4 000168 0004+00 0/1 0/0 0/0 .rodata          @6007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6007 = -168.0f;
COMPILER_STRIP_GATE(0x806DEFA0, &lit_6007);
#pragma pop

/* 806DEFA4-806DEFA8 00016C 0004+00 0/1 0/0 0/0 .rodata          @6008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6008 = 921.0f;
COMPILER_STRIP_GATE(0x806DEFA4, &lit_6008);
#pragma pop

/* 806DEFA8-806DEFAC 000170 0004+00 0/1 0/0 0/0 .rodata          @6009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6009 = 1450.0f;
COMPILER_STRIP_GATE(0x806DEFA8, &lit_6009);
#pragma pop

/* 806DEFAC-806DEFB0 000174 0004+00 0/1 0/0 0/0 .rodata          @6010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6010 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806DEFAC, &lit_6010);
#pragma pop

/* 806DEFB0-806DEFB4 000178 0004+00 0/1 0/0 0/0 .rodata          @6011 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6011 = 0x3A83126F;
COMPILER_STRIP_GATE(0x806DEFB0, &lit_6011);
#pragma pop

/* 806DEFB4-806DEFB8 00017C 0004+00 0/2 0/0 0/0 .rodata          @6012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6012 = -500.0f;
COMPILER_STRIP_GATE(0x806DEFB4, &lit_6012);
#pragma pop

/* 806DEFB8-806DEFBC 000180 0004+00 0/1 0/0 0/0 .rodata          @6013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6013 = 1800.0f;
COMPILER_STRIP_GATE(0x806DEFB8, &lit_6013);
#pragma pop

/* 806DEFBC-806DEFC0 000184 0004+00 0/2 0/0 0/0 .rodata          @6014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6014 = -400.0f;
COMPILER_STRIP_GATE(0x806DEFBC, &lit_6014);
#pragma pop

/* 806DEFC0-806DEFC4 000188 0004+00 0/1 0/0 0/0 .rodata          @6015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6015 = -200.0f;
COMPILER_STRIP_GATE(0x806DEFC0, &lit_6015);
#pragma pop

/* 806DEFC4-806DEFC8 00018C 0004+00 0/1 0/0 0/0 .rodata          @6016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6016 = 250.0f;
COMPILER_STRIP_GATE(0x806DEFC4, &lit_6016);
#pragma pop

/* 806DEFC8-806DEFCC 000190 0004+00 0/2 0/0 0/0 .rodata          @6017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6017 = -5.0f;
COMPILER_STRIP_GATE(0x806DEFC8, &lit_6017);
#pragma pop

/* 806DEFCC-806DEFD0 000194 0004+00 0/1 0/0 0/0 .rodata          @6018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6018 = 306.0f;
COMPILER_STRIP_GATE(0x806DEFCC, &lit_6018);
#pragma pop

/* 806DEFD0-806DEFD4 000198 0004+00 0/1 0/0 0/0 .rodata          @6019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6019 = 1187.0f;
COMPILER_STRIP_GATE(0x806DEFD0, &lit_6019);
#pragma pop

/* 806DEFD4-806DEFD8 00019C 0004+00 0/1 0/0 0/0 .rodata          @6020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6020 = -372.0f;
COMPILER_STRIP_GATE(0x806DEFD4, &lit_6020);
#pragma pop

/* 806DEFD8-806DEFDC 0001A0 0004+00 0/1 0/0 0/0 .rodata          @6021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6021 = -2218.0f;
COMPILER_STRIP_GATE(0x806DEFD8, &lit_6021);
#pragma pop

/* 806DEFDC-806DEFE0 0001A4 0004+00 0/1 0/0 0/0 .rodata          @6022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6022 = 3100.0f;
COMPILER_STRIP_GATE(0x806DEFDC, &lit_6022);
#pragma pop

/* 806DEFE0-806DEFE4 0001A8 0004+00 0/1 0/0 0/0 .rodata          @6023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6023 = 1256.0f;
COMPILER_STRIP_GATE(0x806DEFE0, &lit_6023);
#pragma pop

/* 806DEFE4-806DEFE8 0001AC 0004+00 0/1 0/0 0/0 .rodata          @6024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6024 = -2486.0f;
COMPILER_STRIP_GATE(0x806DEFE4, &lit_6024);
#pragma pop

/* 806DEFE8-806DEFEC 0001B0 0004+00 0/1 0/0 0/0 .rodata          @6025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6025 = 3256.0f;
COMPILER_STRIP_GATE(0x806DEFE8, &lit_6025);
#pragma pop

/* 806DEFEC-806DEFF0 0001B4 0004+00 0/1 0/0 0/0 .rodata          @6026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6026 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEFEC, &lit_6026);
#pragma pop

/* 806DEFF0-806DEFF4 0001B8 0004+00 0/1 0/0 0/0 .rodata          @6027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6027 = 1150.0f;
COMPILER_STRIP_GATE(0x806DEFF0, &lit_6027);
#pragma pop

/* 806DEFF4-806DEFF8 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6028 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x806DEFF4, &lit_6028);
#pragma pop

/* 806DEFF8-806DF000 0001C0 0004+04 0/1 0/0 0/0 .rodata          @6029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6029[1 + 1 /* padding */] = {
    0.75f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806DEFF8, &lit_6029);
#pragma pop

/* 806DF000-806DF008 0001C8 0008+00 0/1 0/0 0/0 .rodata          @6031 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6031[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806DF000, &lit_6031);
#pragma pop

/* 806DC5D4-806DD800 004634 122C+00 1/1 0/0 0/0 .text            demo_camera__FP11e_gob_class */
static void demo_camera(e_gob_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DF008-806DF00C 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6340 = 21.0f;
COMPILER_STRIP_GATE(0x806DF008, &lit_6340);
#pragma pop

/* 806DF00C-806DF010 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6341 = 44.0f;
COMPILER_STRIP_GATE(0x806DF00C, &lit_6341);
#pragma pop

/* 806DF010-806DF014 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6342 = 27.0f;
COMPILER_STRIP_GATE(0x806DF010, &lit_6342);
#pragma pop

/* 806DF014-806DF018 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6343 = 9.0f;
COMPILER_STRIP_GATE(0x806DF014, &lit_6343);
#pragma pop

/* 806DF018-806DF01C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6344 = 18.0f;
COMPILER_STRIP_GATE(0x806DF018, &lit_6344);
#pragma pop

/* 806DF01C-806DF020 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6345 = 32.5f;
COMPILER_STRIP_GATE(0x806DF01C, &lit_6345);
#pragma pop

/* 806DF020-806DF024 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6346 = 7.5f;
COMPILER_STRIP_GATE(0x806DF020, &lit_6346);
#pragma pop

/* 806DF024-806DF028 0001EC 0004+00 0/1 0/0 0/0 .rodata          @6347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6347 = 22.5f;
COMPILER_STRIP_GATE(0x806DF024, &lit_6347);
#pragma pop

/* 806DF028-806DF02C 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6348 = 29.5f;
COMPILER_STRIP_GATE(0x806DF028, &lit_6348);
#pragma pop

/* 806DF02C-806DF030 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6349 = 24.5f;
COMPILER_STRIP_GATE(0x806DF02C, &lit_6349);
#pragma pop

/* 806DF030-806DF034 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6350 = 41.0f;
COMPILER_STRIP_GATE(0x806DF030, &lit_6350);
#pragma pop

/* 806DF034-806DF038 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6351 = 2.5f;
COMPILER_STRIP_GATE(0x806DF034, &lit_6351);
#pragma pop

/* 806DF038-806DF03C 000200 0004+00 0/1 0/0 0/0 .rodata          @6352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6352 = 16.0f;
COMPILER_STRIP_GATE(0x806DF038, &lit_6352);
#pragma pop

/* 806DF03C-806DF040 000204 0004+00 0/1 0/0 0/0 .rodata          @6353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6353 = 12000.0f;
COMPILER_STRIP_GATE(0x806DF03C, &lit_6353);
#pragma pop

/* 806DF040-806DF044 000208 0004+00 0/1 0/0 0/0 .rodata          @6354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6354 = 13000.0f;
COMPILER_STRIP_GATE(0x806DF040, &lit_6354);
#pragma pop

/* 806DD800-806DE4B8 005860 0CB8+00 2/1 0/0 0/0 .text            daE_GOB_Execute__FP11e_gob_class */
static void daE_GOB_Execute(e_gob_class* i_this) {
    // NONMATCHING
}

/* 806DE4B8-806DE4C0 006518 0008+00 1/0 0/0 0/0 .text            daE_GOB_IsDelete__FP11e_gob_class
 */
static bool daE_GOB_IsDelete(e_gob_class* i_this) {
    return true;
}

/* 806DE4C0-806DE528 006520 0068+00 1/0 0/0 0/0 .text            daE_GOB_Delete__FP11e_gob_class */
static void daE_GOB_Delete(e_gob_class* i_this) {
    // NONMATCHING
}

/* 806DE528-806DE69C 006588 0174+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DF044-806DF048 00020C 0004+00 0/1 0/0 0/0 .rodata          @6497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6497 = -7.0f;
COMPILER_STRIP_GATE(0x806DF044, &lit_6497);
#pragma pop

/* 806DF048-806DF04C 000210 0004+00 0/1 0/0 0/0 .rodata          @6498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6498 = -300.0f;
COMPILER_STRIP_GATE(0x806DF048, &lit_6498);
#pragma pop

/* 806DF04C-806DF050 000214 0004+00 0/1 0/0 0/0 .rodata          @6499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6499 = 2100.0f;
COMPILER_STRIP_GATE(0x806DF04C, &lit_6499);
#pragma pop

/* 806DF050-806DF054 000218 0004+00 0/1 0/0 0/0 .rodata          @6500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6500 = -2180.0f;
COMPILER_STRIP_GATE(0x806DF050, &lit_6500);
#pragma pop

/* 806DF0E4-806DF0F4 000088 0010+00 1/1 0/0 0/0 .data            bg_x$5126 */
SECTION_DATA static u8 bg_x[16] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806DF0F4-806DF104 000098 0010+00 1/1 0/0 0/0 .data            bg_z$5127 */
SECTION_DATA static u8 bg_z[16] = {
    0x43, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
};

/* 806DF134-806DF174 0000D8 0040+00 1/1 0/0 0/0 .data            cc_sph_src$6427 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806DF174-806DF1B4 000118 0040+00 1/1 0/0 0/0 .data            at_sph_src$6428 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x2, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 806DE69C-806DEA10 0066FC 0374+00 1/0 0/0 0/0 .text            daE_GOB_Create__FP10fopAc_ac_c */
static void daE_GOB_Create(fopAc_ac_c* i_this) {
    // NONMATCHING
}

/* 806DEA10-806DEBD0 006A70 01C0+00 1/1 0/0 0/0 .text            __ct__11e_gob_classFv */
e_gob_class::e_gob_class() {
    // NONMATCHING
}

/* 806DF1B4-806DF1D4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GOB_Method */
static actor_method_class l_daE_GOB_Method = {
    (process_method_func)daE_GOB_Create,
    (process_method_func)daE_GOB_Delete,
    (process_method_func)daE_GOB_Execute,
    (process_method_func)daE_GOB_IsDelete,
    (process_method_func)daE_GOB_Draw,
};

/* 806DF1D4-806DF204 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GOB */
extern actor_process_profile_definition g_profile_E_GOB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_GOB,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_gob_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  116,                    // mPriority
  &l_daE_GOB_Method,      // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES
