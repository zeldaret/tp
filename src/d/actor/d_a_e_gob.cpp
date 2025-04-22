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
#include "m_Do/m_Do_graphic.h"
#include "c/c_damagereaction.h"
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
static u8 attack(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    s8 var_r26 = 0;
    s8 var_r28 = 0;
    int temp_r27 = i_this->mpModelMorf->getFrame();
    u8 var_r25 = 1;

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
static u8 ball(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    int sp28 = i_this->mpModelMorf->getFrame();
    f32 var_f30 = 0.0f;
    f32 var_f31 = 1.0f;

    i_this->field_0x6b4 = 0;
    i_this->field_0xd20 = 1;
    u8 sp8 = 0;

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

/* 806DAB6C-806DB038 002BCC 04CC+00 1/1 0/0 0/0 .text            jump__FP11e_gob_class */
static void jump(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    cXyz sp58;
    cXyz sp4C;
    s8 sp8 = 0;

    switch (i_this->mMode) {
    case 0:
        actor->current.angle.z = 0;
        actor->speedF = 0.0f;
        sp8 = 1;

        i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_MAGMA, -1);
        anm_init(i_this, 0x1B, 3.0f, 2, 1.0f);
        i_this->mMode = 1;
        actor->speed.y = 110.0f + KREG_F(2);
        i_this->field_0x6b6 = cM_rndFX(2000.0f);

        if (i_this->field_0xd38 != 0) {
            i_this->field_0x6b8.set(0.0f, 0.0f, 0.0f);
            Z2GetAudioMgr()->subBgmStop();
            Z2GetAudioMgr()->muteSceneBgm(0, 0.0f);
        } else {
            sp4C = actor->current.pos - actor->home.pos;
            s16 spA = cM_atan2s(sp4C.x, sp4C.z);
            if (cM_rndF(1.0f) < 0.5f) {
                cMtx_YrotS(*calc_mtx, (spA + 0x4000));
            } else {
                cMtx_YrotS(*calc_mtx, (spA - 0x4000));
            }

            sp4C.x = 0.0f;
            sp4C.y = 0.0f;
            sp4C.z = 10.0f + cM_rndF(10.0f);
            MtxPosition(&sp4C, &i_this->field_0x6b8);

            if (i_this->field_0x6d8 == 1) {
                Z2GetAudioMgr()->changeSubBgmStatus(1);
            } else {
                Z2GetAudioMgr()->changeSubBgmStatus(4);
            }
        }
        break;
    case 1:
        actor->current.pos.x += i_this->field_0x6b8.x;
        actor->current.pos.z += i_this->field_0x6b8.z;
        actor->current.pos.y += actor->speed.y;

        actor->speed.y += actor->gravity;
        actor->current.angle.y += i_this->field_0x6b6;

        if (actor->current.pos.y < KREG_F(3)) {
            actor->current.pos.y = KREG_F(3);
            i_this->field_0x6d6++;

            if (i_this->field_0x6d6 >= 2) {
                i_this->mAction = 8;
                i_this->mMode = 5;

                if (i_this->field_0xd38 == 0) {
                    i_this->field_0x65c = actor->home.pos + ((actor->current.pos - actor->home.pos) * 0.5f);

                    i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_MAGMA, -1);
                } else {
                    i_this->field_0x65c.set(0.0f, actor->home.pos.y, 500.0f + VREG_F(11));
                    i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_MAGMA_LAST, -1);
                }

                i_this->field_0x690 = actor->current.pos;
                i_this->field_0x6d9 = 10;
                sp8 = 1;
            } else {
                i_this->mMode = 0;
            }
        }
    }

    if (sp8 != 0) {
        i_this->mSound.startCreatureSound(Z2SE_EN_GOB_MAGMA_JUMP, 0, -1);

        sp58 = actor->current.pos;
        sp58.y = 0.0f;

        dComIfGp_particle_set(0x845B, &sp58, &actor->shape_angle, &base_sc);
        dComIfGp_particle_set(0x845C, &sp58, &actor->shape_angle, &base_sc);
        dComIfGp_particle_set(0x845D, &sp58, &actor->shape_angle, &base_sc);
    }
}

/* 806DB038-806DB304 003098 02CC+00 2/1 0/0 0/0 .text            start__FP11e_gob_class */
static void start(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    dComIfGp_getPlayer(0);
    i_this->field_0x67e = 5;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 0x16, 0.0f, 2, 1.0f);
        i_this->mMode = 1;
        break;
    case 1:
        if (!dComIfGp_checkPlayerStatus0(0, 0x100) && ms != NULL && ms->field_0x5c4[0] != 0) {
            i_this->field_0xd38 = 1;
            i_this->mMode = 2;
            i_this->mTimers[0] = 120;
        }
        break;
    case 2:
        if (i_this->mTimers[0] == 1) {
            anm_init(i_this, 0x18, 10.0f, 0, 1.0f);
        }

        if (i_this->mAnm == 0x18 && i_this->mpModelMorf->isStop()) {
            anm_init(i_this, 0x19, 10.0f, 2, 1.0f);
        }
        break;
    case 3:
        if (i_this->mAnm == 0x13 && i_this->mpModelMorf->isStop()) {
            actor->speed.y = 150.0f;
            i_this->mMode = 4;
            anm_init(i_this, 0x14, 1.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_JUMP, -1);
        }
        break;
    case 4:
        if (actor->speed.y <= 0.0f) {
            actor->current.pos.z = 0.0f;

            if (i_this->mAcch.ChkGroundHit()) {
                i_this->mMode = 5;

                dComIfGp_getVibration().StartShock(VIBMODE_S_POWER8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
                anm_init(i_this, 0x1D, 0.0f, 0, 1.0f);

                i_this->field_0xd8c = 15.0f + BREG_F(7);
                i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_RECOVER, -1);
            }
        }
        break;
    case 5:
        if (i_this->mpModelMorf->isStop()) {
            anm_init(i_this, 0x23, 5.0f, 2, 1.0f);
            i_this->mMode = 6;
        }
        break;
    case 6:
        break;
    }
}

/* 806DB304-806DB50C 003364 0208+00 1/1 0/0 0/0 .text            end__FP11e_gob_class */
static void end(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    dComIfGp_getPlayer(0);

    i_this->field_0x67e = 5;
    cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x66a, 1, 0x1000);

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 0x15, 0.0f, 0, 1.0f);
        i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_FALL_LAST, -1);
        i_this->mSound.startCreatureSound(Z2SE_EN_GOB_HIP_DOWN, 0, -1);
        i_this->mMode = 1;
        break;
    case 1:
        break;
    case 2:
        anm_init(i_this, 0x11, 5.0f, 0, 1.0f);
        i_this->mSound.startCreatureVoice(Z2SE_EN_GOB_V_GETUP_LAST, -1);
        i_this->mMode = 3;
        break;
    case 3:
        if (i_this->mpModelMorf->isStop()) {
            anm_init(i_this, 0x12, 5.0f, 2, 1.0f);
        }
        break;
    case 4:
        anm_init(i_this, 0x17, 5.0f, 0, 1.0f);
        i_this->mMode = 5;
        break;
    case 5:
        if (i_this->mpModelMorf->isStop()) {
            anm_init(i_this, 0x25, 5.0f, 2, 1.0f);
        }
    }
}

/* 806DB50C-806DB548 00356C 003C+00 1/1 0/0 0/0 .text            s_set__FP11e_gob_class */
static void s_set(e_gob_class* i_this) {
    if ((dComIfGp_getPlayer(0)->current.pos.y - i_this->current.pos.y) < 300.0f) {
        i_this->mAction = 2;
        i_this->mMode = -1;
    }
}

/* 806DB548-806DB768 0035A8 0220+00 1/1 0/0 0/0 .text            message__FP11e_gob_class */
static void message(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;

    if (i_this->field_0xd90 != 0) {
        if (i_this->mMsgFlow.doFlow(i_this, NULL, 0)) {
            dComIfGp_event_reset();
            i_this->field_0xd90 = 0;
        }

        if (i_this->mAnm != 0x1F) {
            anm_init(i_this, 0x1F, 5.0f, 2, 1.0f);
        }
        return;
    }

    if (i_this->field_0x66c < 600.0f) {
        cLib_onBit<u32>(actor->attention_info.flags, 0xA);
        i_this->eventInfo.onCondition(1);

        if (dComIfGp_event_runCheck()) {
            if (actor->eventInfo.checkCommandTalk() && i_this->field_0xd90 == 0) {
                i_this->mMsgFlow.init(i_this, 203, 0, NULL);
                i_this->field_0xd90 = 1;
            }
        } else {
            i_this->field_0xd90 = 0;
        }

        s16 temp_r0 = i_this->current.angle.y - i_this->field_0x66a;
        if (temp_r0 > 0x800 || temp_r0 < -0x800) {
            if (i_this->mAnm != 0x1E) {
                anm_init(i_this, 0x1E, 5.0f, 2, 1.0f);
                i_this->mTimers[1] = 15;
            }
            cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x66a, 2, 0x200);
        } else if (i_this->mTimers[1] == 0 && i_this->mAnm != 0x20) {
            anm_init(i_this, 0x20, 10.0f, 2, 1.0f);
        }
    } else if (i_this->mAnm != 0x20) {
        anm_init(i_this, 0x20, 10.0f, 2, 1.0f);
    }

    if (i_this->mTimers[3] != 0 && dComIfGp_event_runCheck()) {
        i_this->current.pos.y = 2120.0f;
        i_this->speed.y = 0.0f;
        i_this->old.pos = i_this->current.pos;
    }
}

/* 806DB768-806DC4F0 0037C8 0D88+00 2/1 0/0 0/0 .text            action__FP11e_gob_class */
static void action(e_gob_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* sp30 = dComIfGp_getPlayer(0);
    cXyz sp70;
    cXyz sp64;

    if (dComIfGp_checkPlayerStatus0(0, 0x100)) {
        sp70.x = actor->home.pos.x - actor->current.pos.x;
        sp70.z = actor->home.pos.z - actor->current.pos.z;
        i_this->field_0x668 = cM_atan2s(sp70.x, sp70.z);
    } else {
        i_this->field_0x66a = fopAcM_searchPlayerAngleY(actor);
    }

    i_this->field_0x66c = fopAcM_searchPlayerDistance(actor);

    u8 sp11 = 1;
    u8 sp10 = 1;
    u8 spF = 0;
    u8 spE = 1;
    u8 spD = 0;
    u8 spC = 1;
    u8 spB = 1;
    u8 spA = 1;
    u8 sp9 = 1;
    u8 sp8 = 1;
    int sp2C = 4;

    cLib_offBit<u32>(actor->attention_info.flags, 0x1A);
    int sp28 = 1;

    switch (i_this->mAction) {
    case 0:
        s_set(i_this);
        spE = 0;
        sp10 = 0;
        sp8 = 0;
        sp28 = 0;
        break;
    case 1:
        start(i_this);
        spE = 0;
        sp9 = 0;
        sp8 = 0;
        sp28 = 0;
        break;
    case 2:
        fight(i_this);
        i_this->field_0x6ac = 1;
        spD = 1;
        break;
    case 3:
        spB = attack(i_this);
        i_this->field_0x6ac = 1;
        break;
    case 4:
        defence(i_this);
        i_this->field_0x6ac = 1;
        spD = 1;
        break;
    case 5:
        spC = ball(i_this);
        spF = 1;
        sp2C = 1;
        break;
    case 6:
        s_damage(i_this);
        break;
    case 7:
        damage(i_this);
        break;
    case 8:
        sp10 = glab(i_this);
        sp11 = 0;
        spC = (sp10 & 1);
        sp10 &= 2;
        spF = 1;
        sp9 = 0;
        if (i_this->mMode >= 5) {
            spA = 0;
        }
        break;
    case 9:
        jump(i_this);
        spE = 0;
        sp11 = 0;
        spD = 0;
        spC = 0;
        sp10 = 0;
        spA = 0;
        sp9 = 0;
        break;
    case 10:
        end(i_this);
        spE = 0;
        spA = 0;
        sp9 = 0;
        break;
    case 11:
        spA = 0;
        sp9 = 0;
        i_this->mCcSph.OffTgSetBit();
        i_this->field_0x6ac = 1;
        message(i_this);
        break;
    }

    if (sp8 && sp30->current.pos.y < 100.0f) {
        Z2GetAudioMgr()->subBgmStop();
    }

    if (sp11 != 0) {
        i_this->mCcSph.OnCoSetBit();
    } else {
        i_this->mCcSph.OffCoSetBit();
    }

    if (spE != 0) {
        fopAcM_OnStatus(i_this, 0);
        actor->attention_info.flags |= 4;
    } else {
        fopAcM_OffStatus(i_this, 0);
        actor->attention_info.flags &= ~4;
    }

    if (spD && i_this->field_0x66c < 400.0f && daPy_getPlayerActorClass()->getCutType() != 0x29 && daPy_getPlayerActorClass()->getCutAtFlg() != 0 && i_this->field_0x6aa == 0) {
        i_this->mAction = 4;
        i_this->mMode = 0;
        i_this->field_0xd21 = pl_cut_LRC(daPy_getPlayerActorClass()->getCutType());
        i_this->field_0xd20 = 1;
        i_this->field_0x6aa = 20;
    }

    if (sp11 != 0) {
        i_this->mCcSph.OnCoSetBit();
    } else {
        i_this->mCcSph.OffCoSetBit();
    }

    cLib_addCalcAngleS2(&actor->shape_angle.y, actor->current.angle.y, 2, 0x1000);
    cLib_addCalcAngleS2(&actor->shape_angle.z, actor->current.angle.z, 2, 0x100);

    if (sp10 != 0) {
        if (i_this->mTimers[4] != 0) {
            actor->speed.y = 0.0f;
            actor->current.pos.y += 2.0f;
            actor->old.pos.y += 2.0f;
        }

        cMtx_YrotS(*calc_mtx, actor->current.angle.y);
        sp70.x = 0.0f;
        sp70.y = 0.0f;
        sp70.z = actor->speedF * l_HIO.size;
        MtxPosition(&sp70, &sp64);
        actor->speed.x = sp64.x;
        actor->speed.z = sp64.z;

        actor->current.pos += actor->speed;
        actor->speed.y += actor->gravity;
        actor->current.pos.y -= i_this->field_0x688;
        actor->old.pos.y -= i_this->field_0x688;
        i_this->mAcch.CrrPos(dComIfG_Bgsp());
        actor->current.pos.y += i_this->field_0x688;
        actor->old.pos.y += i_this->field_0x688;

        if (i_this->mTimers[4] == 0 && i_this->mAcch.ChkGroundHit()) {
            actor->speed.y = -30.0f;
        }
    }

    if (sp9 != 0) {
        sp70 = actor->current.pos - actor->home.pos;
        sp70.y = 0.0f;
        if (sp70.abs() > 1350.0f + KREG_F(11)) {
            cMtx_YrotS(*calc_mtx, cM_atan2s(sp70.x, sp70.z));
            sp70.x = 0.0f;
            sp70.y = 0.0f;
            sp70.z = 1350.0f + KREG_F(11);
            MtxPosition(&sp70, &sp64);
            actor->current.pos.x = actor->home.pos.x + sp64.x;
            actor->current.pos.z = actor->home.pos.z + sp64.z;
        }
    }

    if (spF != 0) {
        cLib_addCalc2(&i_this->field_0x680, 120.0f + AREG_F(0), 1.0f, 12.0f);
        cLib_addCalc2(&i_this->field_0x684, 50.0f + AREG_F(1), 1.0f, 5.0f);
        cLib_addCalc2(&i_this->field_0x688, 25.0f + AREG_F(2), 1.0f, 1.0f);
    } else {
        cLib_addCalc0(&i_this->field_0x680, 1.0f, 12.0f);
        cLib_addCalc0(&i_this->field_0x684, 1.0f, 5.0f);
        cLib_addCalc0(&i_this->field_0x688, 1.0f, 1.0f);
    }

    if (i_this->field_0x6d9 != 0) {
        i_this->field_0x6d9--;
    }

    if (spA && i_this->field_0x6d9 == 0 && actor->current.pos.y + i_this->field_0x69c < KREG_F(3)) {
        actor->current.pos.y = KREG_F(3) - i_this->field_0x69c;
        i_this->field_0x6d9 = 10;
        i_this->mAction = 9;
        i_this->mMode = 0;
        i_this->field_0x6d6 = 0;
        dComIfGs_onEventBit((u16)dSv_event_flag_c::saveBitLabels[671]);

        i_this->field_0x6d8++;
        OS_REPORT("//////////////E_GOB DOWN CT %d\n", i_this->field_0x6d8);
    }

    dBgS_ObjGndChk sp124;
    dBgS_ObjGndChk_Spl spD0;
    i_this->field_0x6ab = 0;

    f32 var_f31 = 1.0f;
    if (actor->speedF >= 10.0f) {
        var_f31 = 2.0f + TREG_F(7);
    }

    for (int i = 0; i < sp2C; i++) {
        static f32 bg_x[] = {0.0f, 300.0f, -300.0f, 0.0f};
        static f32 bg_z[] = {300.0f, 0.0f, 0.0f, -300.0f};

        cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
        sp70.x = var_f31 * bg_x[i];
        sp70.y = 300.0f * var_f31;
        sp70.z = var_f31 * bg_z[i];
        MtxScale(l_HIO.size, l_HIO.size, l_HIO.size, 1);
        MtxPosition(&sp70, &sp64);
        sp64 += actor->current.pos;

        sp124.SetPos(&sp64);
        spD0.SetPos(&sp64);

        f32 temp_f27 = dComIfG_Bgsp().GroundCross(&spD0);
        f32 temp_f26 = dComIfG_Bgsp().GroundCross(&sp124);
        if (temp_f27 >= temp_f26) {
            i_this->field_0x6ab = 1;
            break;
        }
    }

    s16 sp1E = 0;
    s16 sp1C = 0;
    if (i_this->field_0x6ac != 0) {
        sp70 = sp30->eyePos - actor->current.pos;
        sp70.y += -170.0f + TREG_F(2);

        sp1E = -(cM_atan2s(sp70.x, sp70.z) - actor->shape_angle.y);
        sp1C = -(i_this->shape_angle.x + cM_atan2s(sp70.y, JMAFastSqrt((sp70.x * sp70.x) + (sp70.z * sp70.z))));
        if (sp1E > 6000) {
            sp1E = 6000;
        } else if (sp1E < -6000) {
            sp1E = -6000;
        }
        if (sp1C > 6000) {
            sp1C = 6000;
        } else if (sp1C < -6000) {
            sp1C = -6000;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x6ae, sp1E / 2, 2, 0x800);
    cLib_addCalcAngleS2(&i_this->field_0x6b0, sp1C / 2, 2, 0x800);

    s16 sp1A = 0;
    s16 sp18 = 0;
    s16 sp16 = 0;
    s16 sp14 = 0;

    if (spC != 0 && i_this->mAcch.ChkGroundHit()) {
        Vec sp58;
        cXyz sp4C;
        dBgS_GndChk sp7C;
        
        f32 temp_f28 = 50.0f;
        sp4C = actor->current.pos;
        sp4C.y += 50.0f;
        sp7C.SetPos(&sp4C);
        
        sp4C.y = dComIfG_Bgsp().GroundCross(&sp7C);
        if (-1000000000.0f != sp4C.y) {
            sp58.x = sp4C.x;
            sp58.y = 50.0f + sp4C.y;
            sp58.z = sp4C.z + temp_f28;
            sp7C.SetPos(&sp58);

            sp58.y = dComIfG_Bgsp().GroundCross(&sp7C);
            if (-1000000000.0f != sp58.y) {
                f32 var_f30 = sp58.y - sp4C.y;
                f32 var_f24 = sp58.z - sp4C.z;
                sp1A = -cM_atan2s(var_f30, var_f24);
                if (sp1A > 0x2000 || sp1A < -0x2000) {
                    sp1A = 0;
                }
            }

            sp58.x = sp4C.x + temp_f28;
            sp58.y = 50.0f + sp4C.y;
            sp58.z = sp4C.z;
            sp7C.SetPos(&sp58);

            sp58.y = dComIfG_Bgsp().GroundCross(&sp7C);
            if (-1000000000.0f != sp58.y) {
                f32 var_f30 = sp58.y - sp4C.y;
                f32 var_f25 = sp58.x - sp4C.x;
                sp18 = (s16)cM_atan2s(var_f30, var_f25);
                if (sp18 > 0x2000 || sp18 < -0x2000) {
                    sp18 = 0;
                }
            }
        }

        if (spB != 0) {
            cMtx_XrotS(*calc_mtx, i_this->field_0x6a0);
            cMtx_ZrotM(*calc_mtx, i_this->field_0x6a2);
            sp70.set(0.0f, 16384.0f, 0.0f);
            MtxPosition(&sp70, &sp64);
            cMtx_YrotS(*calc_mtx, -actor->shape_angle.y);
            MtxPosition(&sp64, &sp70);

            sp14 = sp70.x * (0.3f+ KREG_F(7));
            sp16 = -sp70.z * (0.3f+ KREG_F(8));
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x6a0, sp1A, 2, 0x100);
    cLib_addCalcAngleS2(&i_this->field_0x6a2, sp18, 2, 0x100);
    cLib_addCalcAngleS2(&i_this->field_0x6a4, sp16, 4, i_this->field_0x6a8);
    cLib_addCalcAngleS2(&i_this->field_0x6a6, sp14, 4, i_this->field_0x6a8);
    i_this->field_0x6a8 = 20;

    if (i_this->field_0x6c4 != 0) {
        i_this->field_0x6c4--;
        f32 var_f29 = (f32)i_this->field_0x6c4 * (0.01f + JREG_F(7));
        if (var_f29 > 0.2f + JREG_F(8)) {
            var_f29 = 0.2f + JREG_F(8);
        }
 
        s16 sp12 = var_f29 * (4000.0f + JREG_F(9));

        for (int i = 0; i < 4; i++) {
            i_this->field_0x6ce[i] = (f32)sp12 *  cM_ssin((i_this->field_0x6c4 * (JREG_S(4) + 0x3A00)) + (i * (JREG_S(5) - 10000)));
            i_this->field_0x6c6[i] = (f32)sp12 *  cM_ssin((i_this->field_0x6c4 * (JREG_S(6) + 0x3200)) + (i * (JREG_S(7) - 10000)));
        }
    }
}

/* 806DC4F0-806DC5D4 004550 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP11e_gob_classf */
static void cam_3d_morf(e_gob_class* i_this, f32 param_1) {
    cLib_addCalc2(&i_this->mDemoCamCenter.x, i_this->mDemoCamCenterTarget.x, param_1, i_this->mDemoCamCenterSpd.x * i_this->field_0xd88);
    cLib_addCalc2(&i_this->mDemoCamCenter.y, i_this->mDemoCamCenterTarget.y, param_1, i_this->mDemoCamCenterSpd.y * i_this->field_0xd88);
    cLib_addCalc2(&i_this->mDemoCamCenter.z, i_this->mDemoCamCenterTarget.z, param_1, i_this->mDemoCamCenterSpd.z * i_this->field_0xd88);
    cLib_addCalc2(&i_this->mDemoCamEye.x, i_this->mDemoCamEyeTarget.x, param_1, i_this->mDemoCamEyeSpd.x * i_this->field_0xd88);
    cLib_addCalc2(&i_this->mDemoCamEye.y, i_this->mDemoCamEyeTarget.y, param_1, i_this->mDemoCamEyeSpd.y * i_this->field_0xd88);
    cLib_addCalc2(&i_this->mDemoCamEye.z, i_this->mDemoCamEyeTarget.z, param_1, i_this->mDemoCamEyeSpd.z * i_this->field_0xd88);
}

/* 806DC5D4-806DD800 004634 122C+00 1/1 0/0 0/0 .text            demo_camera__FP11e_gob_class */
static void demo_camera(e_gob_class* i_this) {
    daPy_py_c* sp18 = (daPy_py_c*)dComIfGp_getPlayer(0);
    camera_class* sp14 = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* sp10 = dComIfGp_getCamera(0);
    cXyz sp94;
    cXyz sp88;
    cXyz sp7C;
    cXyz sp70;
    int spC = -1;

    switch (i_this->field_0xd38) {
    case 0:
        break;
    case 1:
        if (!i_this->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(i_this, 2, 0xFFFF, 0);
            i_this->eventInfo.onCondition(2);
            return;
        }

        sp14->mCamera.Stop();
        i_this->field_0xd38 = 2;
        i_this->field_0xd3a = 0;

        i_this->mDemoCamFovy = 55.0f;
        sp14->mCamera.SetTrimSize(3);
        i_this->mDemoCamCenter.set(-104.0f, 2205.0f, 1078.0f);
        i_this->mDemoCamEye.set(-175.0f, 2246.0f, 1418.0f);
        sp14->mCamera.SetTrimSize(3);

        sp18->changeOriginalDemo();
        Z2GetAudioMgr()->subBgmStart(0x1000021);
        dComIfGp_getEvent().startCheckSkipEdge(i_this);
    case 2:
        if (i_this->field_0xd3a < 20) {
            sp88.set(0.0f, sp18->current.pos.y, 1100.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp88, -0x8000, 0);
        }

        if (i_this->field_0xd3a == 50) {
            i_this->field_0xd38 = 3;
            i_this->field_0xd3a = 0;
            i_this->mDemoCamCenterTarget.set(0.0f, 2289.0f, -1694.0f);
            i_this->mDemoCamEyeTarget.set(0.0f, 2293.0f, -1349.0f);
            i_this->mDemoCamEyeSpd.x = fabsf(i_this->mDemoCamEyeTarget.x - i_this->mDemoCamEye.x);
            i_this->mDemoCamEyeSpd.y = fabsf(i_this->mDemoCamEyeTarget.y - i_this->mDemoCamEye.y);
            i_this->mDemoCamEyeSpd.z = fabsf(i_this->mDemoCamEyeTarget.z - i_this->mDemoCamEye.z);
            i_this->mDemoCamCenterSpd.x = fabsf(i_this->mDemoCamCenterTarget.x - i_this->mDemoCamCenter.x);
            i_this->mDemoCamCenterSpd.y = fabsf(i_this->mDemoCamCenterTarget.y - i_this->mDemoCamCenter.y);
            i_this->mDemoCamCenterSpd.z = fabsf(i_this->mDemoCamCenterTarget.z - i_this->mDemoCamCenter.z);
        }
        break;
    case 3:
        cam_3d_morf(i_this, 0.2f);
        cLib_addCalc2(&i_this->field_0xd88, 0.1f + VREG_F(1), 1.0f, 0.002f + VREG_F(2));

        if (i_this->field_0xd3a >= 150) {
            i_this->field_0xd3a = 150;
        }

        if (i_this->field_0xd3a >= 60) {
            if (i_this->field_0xd3a == 60) {
                i_this->mMsgFlow.init(i_this, 201, 0, NULL);
            }

            if (i_this->mMsgFlow.doFlow(i_this, NULL, 0)) {
                anm_init(i_this, 0x13, 5.0f, 0, 1.0f);
                i_this->field_0xd38 = 4;
                i_this->field_0xd3a = 0;
                i_this->mMode = 3;
            }
        }
        break;
    case 4:
        if (i_this->field_0xd3a > 36) {
            i_this->field_0xd38 = 5;
            i_this->field_0xd3a = 0;
            i_this->mDemoCamCenter.set(-104.0f, 2205.0f, 1078.0f);
            i_this->mDemoCamEye.set(-175.0f, 2246.0f, 1418.0f);
            Z2GetAudioMgr()->subBgmStart(0x01000022);
        }
        break;
    case 5:
        if (i_this->field_0xd3a == 10) {
            sp18->changeDemoMode(1, 1, 2, 0);
        }

        if (i_this->field_0xd3a == 52) {
            sp18->changeDemoMode(0x22, 0, 0, 0);
        }
    
        if (i_this->field_0xd3a < 30) {
            i_this->current.pos.y = 3000.0f;
            i_this->speed.y = 0.0f;
        }
    
        if (i_this->field_0xd3a == 47) {
            ms->field_0x582 = 1;
            ms->field_0x596 = 0;
            ms->field_0x594 = 0;
            ms->field_0x59c = 700.0f;
            ms->field_0x586[0] = 40;
        }
    
        if (i_this->field_0xd3a == 54) {
            spC = 2;
        } else if (i_this->field_0xd3a == 57) {
            spC = 3;
        } else if (i_this->field_0xd3a == 59) {
            spC = 1;
        } else if (i_this->field_0xd3a == 62) {
            spC = 0;
        }
    
        if (spC >= 0) {
            ms->mChains[spC].field_0x92 = 1;
            ms->mChains[spC].field_0x8c = 200.0f + TREG_F(12);
            dComIfGp_particle_set(0x8455, &ms->mChains[spC].field_0x94, NULL, NULL);
            mDoAud_seStart(Z2SE_OBJ_GOBFLOOR_CHAIN_BREAK, &ms->mChains[spC].field_0x94, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
        }
    
        if (i_this->field_0xd3a == 82) {
            i_this->field_0xd38 = 6;
            i_this->field_0xd3a = 0;
            i_this->mDemoCamCenter.set(-293.0f, -279.0f, 1988.0f);
            i_this->mDemoCamEye.set(-341.0f, 24.0f, 2223.0f);
        }
        break;
    case 6:
        if (i_this->field_0xd3a == 30) {
            dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            i_this->field_0xd8c = 15.0f + BREG_F(8);
        }

        if (i_this->field_0xd3a > 90) {
            i_this->field_0xd38 = 7;
            i_this->field_0xd3a = 0;

            i_this->mDemoCamCenterTarget.set(7.4f, 945.0f, 806.0f);
            i_this->mDemoCamEyeTarget.set(-168.0f, 921.0f, 1450.0f);
            i_this->mDemoCamEyeSpd.x = fabsf(i_this->mDemoCamEyeTarget.x - i_this->mDemoCamEye.x);
            i_this->mDemoCamEyeSpd.y = 2.0f * fabsf(i_this->mDemoCamEyeTarget.y - i_this->mDemoCamEye.y);
            i_this->mDemoCamEyeSpd.z = fabsf(i_this->mDemoCamEyeTarget.z - i_this->mDemoCamEye.z);
            i_this->mDemoCamCenterSpd.x = fabsf(i_this->mDemoCamCenterTarget.x - i_this->mDemoCamCenter.x);
            i_this->mDemoCamCenterSpd.y = 2.0f * fabsf(i_this->mDemoCamCenterTarget.y - i_this->mDemoCamCenter.y);
            i_this->mDemoCamCenterSpd.z = fabsf(i_this->mDemoCamCenterTarget.z - i_this->mDemoCamCenter.z);
            i_this->field_0xd88 = 0.0f;

            ms->field_0x582 = 2;
            ms->field_0x584 = 0;
        }
        break;
    case 7:
        cam_3d_morf(i_this, 0.2f);
        cLib_addCalc2(&i_this->field_0xd88, 0.05f + VREG_F(1), 1.0f, 0.001f + VREG_F(2));

        if (i_this->field_0xd3a > 110) {
            i_this->field_0xd38 = 100;
            i_this->mAction = 2;
            i_this->mMode = -1;
            Z2GetAudioMgr()->subBgmStart(0x0100001D);
        }
        break;
    case 10:
        sp18->cancelGoronThrowEvent();
        i_this->field_0xd38 = 11;
    case 11:
        if (!i_this->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(i_this, 2, 0xFFFF, 0);
            i_this->eventInfo.onCondition(2);
            return;
        }

        sp14->mCamera.Stop();
        i_this->field_0xd38 = 0xC;
        i_this->field_0xd3a = 0;
        i_this->mDemoCamFovy = 60.0f;
        sp14->mCamera.SetTrimSize(3);
        i_this->speed.y = 0.0f;
        i_this->current.pos.x = 0.0f;
        i_this->current.pos.y = 700.0f;
        i_this->current.pos.z = 2000.0f;
        i_this->field_0x6b8.x = 0.0f;
        i_this->field_0x6b8.z = 30.0f;
        i_this->mDemoCamEye.set(-500.0f, 100.0f, 1800.0f);
        i_this->mDemoCamCenter = i_this->current.pos;
        sp14->mCamera.SetTrimSize(3);
        sp88.set(0.0f, 500.0f + sp18->current.pos.y, -400.0f);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp88, 0, 0);
    case 12:
        if (i_this->field_0xd3a == 2) {
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
        }

        sp88.set(0.0f, sp18->current.pos.y, -200.0f);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp88, 0, 0);

        if (i_this->field_0x6d6 >= 2) {
            cLib_addCalc2(&i_this->mDemoCamEye.x, -500.0f + VREG_F(3), 0.1f, 20.0f);
            cLib_addCalc2(&i_this->mDemoCamEye.z, 700.0f + VREG_F(4), 0.1f, 20.0f);
            cLib_addCalc2(&i_this->mDemoCamEye.y, 1400.0f + VREG_F(8), 0.1f, 35.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.x, (i_this->current.pos.x + VREG_F(5)) - 200.0f, 0.2f, 100.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.y, 250.0f + (VREG_F(6) + (i_this->current.pos.y + i_this->field_0x69c)), 0.2f, 200.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.z, (i_this->current.pos.z + VREG_F(7)) - 100.0f, 0.2f, 100.0f);

            if (i_this->field_0xd3a == 128) {
                i_this->field_0x6da = 1;
                i_this->field_0x6e8.x = -5.0f;
                i_this->field_0x6e8.y = 50.0f;
                i_this->field_0x6e8.z = -50.0f + KREG_F(7);
                mDoAud_seStart(Z2SE_EN_GOB_HELMET_OFF, &i_this->field_0x6dc, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
            }
        } else {
            cLib_addCalc2(&i_this->mDemoCamCenter.x, i_this->current.pos.x + VREG_F(5), 0.2f, 100.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.y, VREG_F(6) + (i_this->current.pos.y + i_this->field_0x69c), 0.2f, 200.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.z, i_this->current.pos.z + VREG_F(7), 0.2f, 100.0f);
        }

        if (i_this->field_0xd3a == 190) {
            i_this->field_0x6dc.y = 0.0f;
            mDoAud_seStart(Z2SE_EN_GOB_HELMET_MELT, &i_this->field_0x6dc, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
            OS_REPORT("/////GOB MET MELT %d\n");
        }

        if (i_this->field_0xd3a != 200) {
            break;
        }

        i_this->field_0xd38 = 13;
        i_this->field_0xd3a = 0;
        i_this->mDemoCamEye.set(306.0f, 1187.0f, -372.0f);
        i_this->mDemoCamCenter = i_this->eyePos;
    case 13:
        sp88.set(0.0f, sp18->current.pos.y, -200.0f);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp88, 0, 0);

        if (i_this->field_0xd3a == 20) {
            i_this->mMode = 2;
        }

        if (i_this->field_0xd3a >= 150) {
            i_this->field_0xd3a = 150;
        }

        if (i_this->field_0xd3a >= 60) {
            if (i_this->field_0xd3a == 60) {
                i_this->mMsgFlow.init(i_this, 202, 0, NULL);
                Z2GetAudioMgr()->unMuteSceneBgm(0x2D);
            }

            if ((i_this->mMsgFlow.getMsgNo() == 0x1777 || mDoCPd_c::getTrigA(PAD_1)) && i_this->mMode < 4) {
                i_this->mMode = 4;
            }

            if (i_this->mMsgFlow.doFlow(i_this, NULL, 0)) {
                i_this->field_0xd38 = 14;
                i_this->field_0xd3a = 0;
            }
        }
    case 14:
        cLib_addCalc2(&i_this->mDemoCamCenter.x, i_this->eyePos.x + NREG_F(7), 0.1f, 50.0f);
        cLib_addCalc2(&i_this->mDemoCamCenter.y, i_this->eyePos.y + NREG_F(8), 0.1f, 50.0f);
        cLib_addCalc2(&i_this->mDemoCamCenter.z, i_this->eyePos.z + NREG_F(9), 0.1f, 50.0f);

        if (i_this->field_0xd38 == 14 && i_this->field_0xd3a == 20) {
            mDoGph_gInf_c::fadeOut(0.1f, g_blackColor);
        }

        if (i_this->field_0xd38 != 14 || i_this->field_0xd3a != 30) {
            break;
        }

        i_this->field_0xd38 = 15;
        i_this->field_0xd3a = 0;
        ms->field_0x582 = 3;
        my->mAction = 1;
        i_this->current = sp18->current;
        i_this->shape_angle = sp18->shape_angle;
        my->current.pos.y = 1000.0f + (ms->field_0x58c - 700.0f) + YREG_F(1);
        dComIfGp_getVibration().StartQuake(VIBMODE_Q_POWER2, 1, cXyz(0.0f, 1.0f, 0.0f));
    case 15:
        if (i_this->field_0xd3a == 2) {
            i_this->mDemoCamFovy = 60.0f;
            i_this->mDemoCamCenter.set(-2218.0f, 3100.0f, 1256.0f);
            i_this->mDemoCamEye.set(-2486.0f, 3256.0f, 1418.0f);
            mDoGph_gInf_c::fadeIn(0.1f, g_blackColor);
        }

        cLib_addCalc2(&ms->field_0x58c, 1150.0f + YREG_F(0), 0.03f, 5.0f);

        if (ms->field_0x58c < (1150.0f + YREG_F(0)) - 50.0f) {
            i_this->field_0xd8c = 0.75f + YREG_F(2);
            i_this->field_0xd3a++;

            cXyz sp64(0.0f, 0.0f, 0.0f);
            i_this->field_0xd30 = dComIfGp_particle_set(i_this->field_0xd30, 0x844D, &sp64, NULL, NULL);
            dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0xd30);

            sp88.set(0.0f, sp18->current.pos.y, 400.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp88, -0x8000, 0);
        } else if (i_this->field_0xd3a == 480) {
            dComIfGp_getVibration().StopQuake(0x1F);
        }

        my->current.pos.y = 1000.0f + (ms->field_0x58c - 700.0f) + YREG_F(1);

        if (i_this->field_0xd3a == 550) {
            i_this->field_0xd38 = 100;
            i_this->mAction = 11;
            i_this->mMode = 0;
            dComIfGs_onStageMiddleBoss();
            fopAcM_onSwitch(i_this, 14);
        }
        break;
    case 100:
        sp14->mCamera.Reset(i_this->mDemoCamCenter, i_this->mDemoCamEye, i_this->mDemoCamFovy, 0);
        sp14->mCamera.Start();
        sp14->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        daPy_getPlayerActorClass()->cancelOriginalDemo();
        i_this->field_0xd38 = 0;
    }

    if (i_this->field_0xd38 != 0) {
        cXyz sp70 = i_this->mDemoCamCenter;
        cXyz sp7C = i_this->mDemoCamEye;
        s16 sp8 = 0;

        if (i_this->field_0xd8c > 0.0f) {
            i_this->mDemoCamCenter.y += i_this->field_0xd8c * cM_ssin((i_this->field_0xd3a * 0x1200));
            i_this->mDemoCamEye.y -= i_this->field_0xd8c * cM_ssin((i_this->field_0xd3a * 0x1200));
            sp8 = (20.0f + BREG_F(4)) * (i_this->field_0xd8c * cM_scos((i_this->field_0xd3a * 0x1300)));
            cLib_addCalc0(&i_this->field_0xd8c, 1.0f, 0.5f + BREG_F(5));
        }

        sp14->mCamera.Set(sp70, sp7C, sp8, i_this->mDemoCamFovy);

        i_this->field_0xd3a++;
        if (i_this->field_0xd3a > 10000) {
            i_this->field_0xd3a = 10000;
        }

        if (i_this->field_0xd38 >= 2 && i_this->field_0xd38 < 10 && dComIfGp_getEvent().checkSkipEdge()) {
            cDmr_SkipInfo = 20;
            i_this->field_0xd38 = 1000;
            dStage_changeScene(2, 0.0f, 0, fopAcM_GetRoomNo(i_this), 0, -1);
        }
    }
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
