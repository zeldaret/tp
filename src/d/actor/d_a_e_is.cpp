/**
 * @file d_a_e_is.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_is.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"

enum daE_IS_ACTION {
    ACTION_WAIT = 0,
    ACTION_MOVE = 1,

    ACTION_ATTACK = 3,
    ACTION_TRAP = 4,
    ACTION_POWEROFF = 5,

    ACTION_DAMAGE = 10,
    ACTION_BREAK = 11,

    ACTION_SEKIZOU = 100,
};

/* 806F5A4C-806F5A94 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_IS_HIO_cFv */
daE_IS_HIO_c::daE_IS_HIO_c() {
    id = -1;
    base_size = 1.0f;
    normal_speed = 7.0f;
    attack_init_range = 300.0f;
    search_dist = 200.0f;
    hit_width = 120.0f;
}

/* 806F5A94-806F5B40 000134 00AC+00 7/7 0/0 0/0 .text            anm_init__FP10e_is_classifUcf */
static void anm_init(e_is_class* a_this, int i_anm, f32 i_morf, u8 i_mode, f32 i_speed) {
    a_this->model_morf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_IS", i_anm), i_mode, i_morf, i_speed, 0.0f, -1.0f);
    a_this->anm = i_anm;
}

/* 806F5B40-806F5E38 0001E0 02F8+00 1/0 0/0 0/0 .text            daE_IS_Draw__FP10e_is_class */
static int daE_IS_Draw(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    J3DModel* model = a_this->model_morf->getModel();
    g_env_light.settingTevStruct(0, &actor->current.pos, &actor->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &actor->tevStr);

    J3DModelData* modelData = model->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterial* material = modelData->getMaterialNodePointer(i);

        if (i == 0) {
            material->getTevColor(2)->r = 0;
            material->getTevColor(2)->g = 242.0f * a_this->poweron_color_strength;
            material->getTevColor(2)->b = 117.0f * a_this->poweron_color_strength;
        } else if (i == 1) {
            material->getTevColor(1)->r = 255.0f - (80.0f * a_this->core_color_strength);
            material->getTevColor(1)->g = 255.0f - (10.0f * a_this->core_color_strength);
            material->getTevColor(1)->b = 255.0f - (55.0f * a_this->core_color_strength);

            material->getTevColor(2)->r = 60.0f * a_this->core_color_strength;
            material->getTevColor(2)->g = 225.0f * a_this->core_color_strength;
            material->getTevColor(2)->b = 150.0f * a_this->core_color_strength;
        }
    }

    fopAcM_setEffectMtx(actor, modelData);
    a_this->model_morf->entryDL();

    cXyz sp14;
    sp14.set(actor->current.pos.x, 50.0f + actor->current.pos.y + BREG_F(18), actor->current.pos.z);
    a_this->shadowId = dComIfGd_setShadow(a_this->shadowId, 1, model, &sp14, 600.0f + BREG_F(19), 0.0f, actor->current.pos.y, a_this->acch.GetGroundH(), a_this->acch.m_gnd, &actor->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 806F5E38-806F5EB4 0004D8 007C+00 2/2 0/0 0/0 .text            pl_check__FP10e_is_classfs */
static BOOL pl_check(e_is_class* a_this, f32 i_srchRange, s16 i_srchAngle) {
    fopAc_ac_c* actor = &a_this->enemy;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (a_this->player_distance < i_srchRange) {
        s16 temp_r0 = actor->shape_angle.y - a_this->angle_to_player;
        if (temp_r0 < i_srchAngle && temp_r0 > (s16)-i_srchAngle && !fopAcM_otherBgCheck(actor, player)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 806F5EB4-806F5F3C 000554 0088+00 1/1 0/0 0/0 .text            s_stop_sub__FPvPv */
static void* s_stop_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_IS && i_data != i_actor &&
        ((e_is_class*)i_actor)->action == ACTION_POWEROFF && ((e_is_class*)i_actor)->mode == 10)
    {
        ((e_is_class*)i_actor)->action = ACTION_BREAK;
        ((e_is_class*)i_actor)->mode = 0;
        return i_actor;
    }

    return NULL;
}

/* 806F5F3C-806F6134 0005DC 01F8+00 1/1 0/0 0/0 .text            damage_check__FP10e_is_class */
static void damage_check(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;
    dComIfGp_getPlayer(0);
    a_this->ccStts.Move();

    if (a_this->core_hit_invulnerability_timer == 0 && a_this->core_sph.ChkTgHit()) {
        a_this->core_hit_invulnerability_timer = 6;
        a_this->atInfo.mpCollider = a_this->core_sph.GetTgHitObj();

        cc_at_check(actor, &a_this->atInfo);

        if (a_this->atInfo.mpCollider->ChkAtType(AT_TYPE_40)) {
            a_this->field_0xce8++;
            if (a_this->field_0xce8 >= 3) {
                a_this->action = ACTION_POWEROFF;
            } else {
                a_this->sound.startCreatureVoice(Z2SE_EN_KR_V_DAMAGE, -1);
                a_this->action = ACTION_DAMAGE;
            }

            a_this->mode = 0;
            return;
        }

        if (actor->health <= 0) {
            a_this->action = ACTION_POWEROFF;
        } else {
            a_this->sound.startCreatureVoice(Z2SE_EN_KR_V_DAMAGE, -1);
            a_this->action = ACTION_DAMAGE;
        }

        a_this->mode = 0;

        cXyz eff_pos(a_this->core_sph.GetC());
        csXyz eff_rot(actor->shape_angle);
        eff_rot.y -= 0x8000;
        dComIfGp_particle_set(0x81D7, &eff_pos, &eff_rot, NULL);
        return;
    }

    if (a_this->body_hit_invulnerability_timer == 0 && a_this->cc_cyl.ChkTgHit()) {
        def_se_set(&a_this->sound, a_this->cc_cyl.GetTgHitObj(), 0x2A, NULL);
        a_this->body_hit_invulnerability_timer = 6;
    }
}

/* 806F6134-806F6320 0007D4 01EC+00 1/1 0/0 0/0 .text            e_is_wait__FP10e_is_class */
static void e_is_wait(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;
    actor->speedF = 0.0f;
    s8 var_r29 = FALSE;
    a_this->core_hit_invulnerability_timer = 5;

    switch (a_this->mode) {
    case 0:
        fopAcM_OffStatus(actor, 0);
        actor->attention_info.flags = 0;

        if (a_this->field_0x5b4 == 1) {
            anm_init(a_this, 0xB, 1.0f, 0, 0.0f);
        } else {
            anm_init(a_this, 0xA, 1.0f, 0, 0.0f);
        }
    
        a_this->mode = 1;
        a_this->poweron_color_strength_target = 0.0f;
        a_this->core_color_strength_target = 0.0f;
        break;
    case 1:
        if (a_this->field_0x5b4 == 0) {
            if (dComIfGs_isSwitch(a_this->swbit2, fopAcM_GetRoomNo(actor))) {
                var_r29 = TRUE;
            }
        } else if (!dComIfGs_isSwitch(a_this->swbit2, fopAcM_GetRoomNo(actor))) {
            var_r29 = TRUE;
        }

        if (a_this->field_0x6bd != 0 || (var_r29 && pl_check(a_this, a_this->field_0x6ac, 0x1000))) {
            a_this->core_color_strength_target = 1.0f;
            a_this->poweron_color_strength_target = 1.0f;
            a_this->mode = 2;
        }
        break;
    case 2:
        if (a_this->core_color_strength >= 1.0f) {
            a_this->mode = 3;
            a_this->model_morf->setPlaySpeed(1.0f);
            fopAcM_OnStatus(actor, 0);
            actor->attention_info.flags = 4;
        }
        break;
    case 3:
        if (a_this->model_morf->isStop()) {
            a_this->action = ACTION_MOVE;
            a_this->mode = 0;
        }
        break;
    }
}

/* 806F7DD0-806F7DD4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_HIOInit;

/* 806F7DE0-806F7DFC 000018 001C+00 4/4 0/0 0/0 .bss             l_HIO */
static daE_IS_HIO_c l_HIO;

/* 806F6320-806F63FC 0009C0 00DC+00 1/1 0/0 0/0 .text            e_is_move__FP10e_is_class */
static void e_is_move(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;
    f32 speed_target = 0.0f;

    switch (a_this->mode) {
    case 0:
        anm_init(a_this, 0x10, 10.0f, 2, 1.0f);
        a_this->mode = 1;
        break;
    case 1:
        speed_target = l_HIO.normal_speed;
        if (a_this->player_distance < l_HIO.attack_init_range) {
            a_this->action = ACTION_ATTACK;
            a_this->mode = 0;
        }
        break;
    }

    cLib_addCalc2(&actor->speedF, speed_target, 1.0f, 1.0f);
    cLib_addCalcAngleS2(&actor->current.angle.y, a_this->angle_to_player, 1, 0x200);
}

/* 806F63FC-806F65BC 000A9C 01C0+00 1/1 0/0 0/0 .text            e_is_attack__FP10e_is_class */
static void e_is_attack(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    cXyz spC;
    int anm_frame = a_this->model_morf->getFrame();
    cLib_addCalc0(&actor->speedF, 1.0f, 1.0f);

    switch (a_this->mode) {
    case 0:
        anm_init(a_this, 4, 10.0f, 0, 1.0f);
        a_this->mode = 1;
        break;
    case 1:
        if (anm_frame >= 25 && anm_frame <= 33) {
            if (anm_frame == 25) {
                a_this->sound.startCreatureSound(Z2SE_CM_KAZAKIRI_S, 0, -1);
                a_this->field_0x688 = 1;
            } else {
                a_this->field_0x688 = 2;
            }
        }

        if (a_this->model_morf->isStop()) {
            if (pl_check(a_this, 100000.0f, 0x1000)) {
                a_this->action = ACTION_MOVE;
                a_this->mode = 0;
                break;
            }

            anm_init(a_this, 0xC, 10.0f, 2, 1.0f);
            a_this->mode = 2;
        }
        break;
    case 2:
        if (pl_check(a_this, 100000.0f, 0x1000)) {
            a_this->action = ACTION_MOVE;
            a_this->mode = 0;
            break;
        }

        cLib_addCalcAngleS2(&actor->current.angle.y, a_this->angle_to_player, 1, 0x200);
        break;
    }
}

/* 806F65BC-806F67B0 000C5C 01F4+00 1/1 0/0 0/0 .text            e_is_trap__FP10e_is_class */
static void e_is_trap(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    cXyz sp18;
    a_this->model_morf->getFrame();
    cLib_addCalc0(&actor->speedF, 1.0f, 1.0f);

    switch (a_this->mode) {
    case 0:
        a_this->core_hit_invulnerability_timer = 10;

        if (actor->current.pos.y - a_this->acch.GetGroundH() > 50.0f) {
            a_this->mode = 1;
            a_this->field_0x6bc = 1;
            actor->speed.y = 20.0f + TREG_F(11);
            a_this->core_sph.SetTgType(0xD8FBFDFF);
            anm_init(a_this, 9, 2.0f, 0, 1.0f);
            a_this->mode = 2;
        }
        break;
    case 2:
        if (a_this->model_morf->isStop()) {
            anm_init(a_this, 0xD, 10.0f, 2, 1.0f);
            a_this->mode = 2;
        }
        break;
    case 1:
    case 3:
        break;
    }

    if (a_this->field_0x6bc == 1 && a_this->acch.ChkGroundHit()) {
        dComIfGp_getVibration().StartShock(YREG_S(2) + 5, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        a_this->sound.startCreatureSound(Z2SE_EN_MK_FALL_GROUND, 0, -1);
        a_this->field_0x6bc++;
    }

    if (a_this->anm == 0xD && a_this->model_morf->checkFrame(29.0f + YREG_F(7))) {
        a_this->model_morf->setFrame(0.0f);
    }

    cLib_addCalc2(&actor->current.pos.x, 0.0f, 0.5f, 3.0f);
    cLib_addCalc2(&actor->current.pos.z, -1040.0f, 0.5f, 3.0f);
}

/* 806F67B0-806F691C 000E50 016C+00 1/1 0/0 0/0 .text            e_is_poweroff__FP10e_is_class */
static void e_is_poweroff(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    a_this->core_hit_invulnerability_timer = 5;
    fopAcM_OffStatus(actor, 0);
    actor->attention_info.flags = 0;

    switch (a_this->mode) {
    case 10:
        break;
    case 0:
        a_this->field_0x674 = 1.0f;
        a_this->poweron_color_strength_target = 0.0f;
        a_this->core_color_strength_target = 0.0f;
        a_this->timers[0] = 65;
        a_this->mode = 1;
        break;
    case 1:
        if (a_this->timers[0] == 0) {
            a_this->mode = 10;
            if (a_this->field_0x5b4 == 0) {
                if (fpcM_Search(s_stop_sub, a_this)) {
                    a_this->action = ACTION_BREAK;
                    a_this->mode = 0;
                }
            } else {
                dComIfGs_onSwitch(a_this->swbit, fopAcM_GetRoomNo(actor));
                dComIfGs_onSwitch(a_this->swbit3, fopAcM_GetRoomNo(actor));
                if (a_this->swbit4 != 0xFF) {
                    dComIfGs_onSwitch(a_this->swbit4, fopAcM_GetRoomNo(actor));
                }
            }
        }
        break;
    }

    cLib_addCalc0(&a_this->field_0x674, 1.0f, 0.01f);
    a_this->model_morf->setPlaySpeed(a_this->field_0x674);

    cLib_addCalc0(&actor->speedF, 1.0f, 1.0f);
}

/* 806F691C-806F6A38 000FBC 011C+00 1/1 0/0 0/0 .text            e_is_damage__FP10e_is_class */
static void e_is_damage(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    switch (a_this->mode) {
    case 0:
        if (a_this->field_0x6bc != 0) {
            anm_init(a_this, 6, 5.0f, 0, 1.0f);
        } else {
            anm_init(a_this, 5, 5.0f, 0, 1.0f);
        }

        a_this->mode = 1;
        /* fallthrough */
    case 1:
        if (a_this->model_morf->isStop()) {
            if (a_this->field_0x6bc != 0) {
                a_this->action = ACTION_TRAP;
                anm_init(a_this, 0xD, 10.0f, 2, 1.0f);
                a_this->mode = 2;
            } else {
                a_this->action = ACTION_MOVE;
                a_this->mode = 0;
            }
        }
        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 2.0f);
}

/* 806F6A38-806F6B68 0010D8 0130+00 1/1 0/0 0/0 .text            e_is_break__FP10e_is_class */
static void e_is_break(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    a_this->body_hit_invulnerability_timer = 5;
    a_this->core_hit_invulnerability_timer = 5;

    switch (a_this->mode) {
    case 0:
        if (a_this->field_0x6bc != 0) {
            anm_init(a_this, 8, 20.0f, 0, 1.0f);
        } else {
            anm_init(a_this, 7, 20.0f, 0, 1.0f);
        }

        a_this->mode = 1;
        a_this->core_color_strength_target = 0.0f;
        a_this->core_color_strength = 0.0f;
        /* fallthrough */
    case 1:
        if (a_this->model_morf->isStop()) {
            cXyz disappear_pos(actor->current.pos);
            disappear_pos.y += 200.0f;
            fopAcM_createDisappear(actor, &disappear_pos, 20, 0, actor->field_0x564);
            fopAcM_delete(actor);
        }
        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 2.0f);
}

/* 806F6B68-806F6B7C 001208 0014+00 1/1 0/0 0/0 .text            e_is_sekizou__FP10e_is_class */
static void e_is_sekizou(e_is_class* a_this) {
    a_this->model_morf->setPlaySpeed(0.0f);
}

/* 806F6B7C-806F6D90 00121C 0214+00 1/1 0/0 0/0 .text            action__FP10e_is_class */
static void action(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    cXyz mae;
    cXyz ato;
    a_this->angle_to_player = fopAcM_searchPlayerAngleY(actor);
    a_this->player_distance = fopAcM_searchPlayerDistance(actor);
    a_this->field_0x6ac = 1000.0f + TREG_F(0);

    s8 var_r29 = 1;
    switch (a_this->action) {
    case ACTION_WAIT:
        e_is_wait(a_this);
        break;
    case ACTION_MOVE:
        e_is_move(a_this);
        break;
    case ACTION_ATTACK:
        e_is_attack(a_this);
        break;
    case ACTION_TRAP:
        e_is_trap(a_this);
        var_r29 = 0;
        break;
    case ACTION_POWEROFF:
        e_is_poweroff(a_this);
        var_r29 = 0;
        break;
    case ACTION_DAMAGE:
        e_is_damage(a_this);
        var_r29 = 0;
        break;
    case ACTION_BREAK:
        e_is_break(a_this);
        var_r29 = 0;
        break;
    case ACTION_SEKIZOU:
        e_is_sekizou(a_this);
        var_r29 = 0;
        break;
    }

    cXyz* cc_move_p = a_this->ccStts.GetCCMoveP();
    if (cc_move_p != NULL) {
        actor->current.pos += *cc_move_p * 0.5f;
    }

    cLib_addCalcAngleS2(&actor->shape_angle.y, actor->current.angle.y, 4, 0x2000);
    cMtx_YrotS(*calc_mtx, actor->current.angle.y);
    mae.x = 0.0f;
    mae.y = 0.0f;
    mae.z = actor->speedF;
    MtxPosition(&mae, &ato);
    actor->speed.x = ato.x;
    actor->speed.z = ato.z;
    actor->current.pos += actor->speed;
    actor->speed.y += actor->gravity;

    a_this->acch.CrrPos(dComIfG_Bgsp());

    if (var_r29 && actor->current.pos.y < actor->home.pos.y - 5.0f) {
        a_this->action = ACTION_TRAP;
        a_this->mode = 0;
    }
}

/* 806F6D90-806F6E58 001430 00C8+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_is_class */
static void anm_se_set(e_is_class* a_this) {
    if (a_this->anm == 0x10) {
        if (a_this->model_morf->checkFrame(39.0f)) {
            a_this->sound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
        } else if (a_this->model_morf->checkFrame(19.0f)) {
            a_this->sound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
        }
    }
}

/* 806F6E58-806F7204 0014F8 03AC+00 2/1 0/0 0/0 .text            daE_IS_Execute__FP10e_is_class */
static int daE_IS_Execute(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    cXyz sp2C;
    cXyz sp20;
    a_this->lifetime++;

    for (int i = 0; i < 4; i++) {
        if (a_this->timers[i] != 0) {
            a_this->timers[i]--;
        }
    }

    if (a_this->body_hit_invulnerability_timer != 0) {
        a_this->body_hit_invulnerability_timer--;
    }

    if (a_this->core_hit_invulnerability_timer != 0) {
        a_this->core_hit_invulnerability_timer--;
    }

    cLib_addCalc2(&a_this->poweron_color_strength, a_this->poweron_color_strength_target, 1.0f, 0.02f);
    cLib_addCalc2(&a_this->core_color_strength, a_this->core_color_strength_target, 1.0f, 0.02f);

    action(a_this);
    damage_check(a_this);

    mDoMtx_stack_c::transS(actor->current.pos.x, actor->current.pos.y, actor->current.pos.z);
    mDoMtx_stack_c::YrotM(actor->shape_angle.y);
    mDoMtx_stack_c::scaleM(l_HIO.base_size, l_HIO.base_size, l_HIO.base_size);

    J3DModel* model = a_this->model_morf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());

    a_this->model_morf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
    anm_se_set(a_this);
    a_this->model_morf->modelCalc();

    sp20 = actor->current.pos;

    if (a_this->field_0x6bc != 0) {
        sp20.y += 100.0f + YREG_F(14);
        a_this->cc_cyl.SetR(150.0f + YREG_F(15));

        if (fopAcM_plAngleCheck(actor, 0x4000) && a_this->core_hit_invulnerability_timer == 0) {
            a_this->cc_cyl.OffTgSetBit();
        } else {
            a_this->cc_cyl.OnTgSetBit();
            a_this->core_hit_invulnerability_timer = 1;
        }
    } else {
        a_this->cc_cyl.SetR(80.0f);
    }

    if (a_this->body_hit_invulnerability_timer != 0) {
        sp20.y += 20000.0f;
    }

    a_this->cc_cyl.SetC(sp20);
    dComIfG_Ccsp()->Set(&a_this->cc_cyl);

    if (a_this->field_0x688 != 0) {
        MTXCopy(model->getAnmMtx(0xA), *calc_mtx);
        sp2C.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&sp2C, &sp20);

        if (a_this->field_0x688 == 1) {
            a_this->at_sph.StartCAt(sp20);
        } else {
            a_this->at_sph.MoveCAt(sp20);
        }

        a_this->at_sph.SetR(80.0f + TREG_F(8));
        a_this->field_0x688 = 0;
    } else {
        cXyz sp14(-30000.0f, 20000.0f, 15000.0f);
        a_this->at_sph.SetC(actor->current.pos + sp14);
    }

    dComIfG_Ccsp()->Set(&a_this->at_sph);

    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    sp2C.set(50.0f + YREG_F(0), 30.0f + YREG_F(1), YREG_F(2));
    MtxPosition(&sp2C, &sp20);
    actor->eyePos = sp20;
    actor->attention_info.position = actor->eyePos;
    actor->attention_info.position.y += 150.0f + TREG_F(3);

    if (a_this->core_hit_invulnerability_timer != 0) {
        sp20.x += 15350.0f;
    }

    a_this->core_sph.SetC(sp20);
    a_this->core_sph.SetR(50.0f);
    dComIfG_Ccsp()->Set(&a_this->core_sph);
    return 1;
}

/* 806F7204-806F720C 0018A4 0008+00 1/0 0/0 0/0 .text            daE_IS_IsDelete__FP10e_is_class */
static int daE_IS_IsDelete(e_is_class* a_this) {
    return 1;
}

/* 806F720C-806F7274 0018AC 0068+00 1/0 0/0 0/0 .text            daE_IS_Delete__FP10e_is_class */
static int daE_IS_Delete(e_is_class* a_this) {
    fopAc_ac_c* actor = &a_this->enemy;

    fopAcM_GetID(actor);
    dComIfG_resDelete(&a_this->phase, "E_IS");

    if (a_this->hioInit) {
        l_HIOInit = 0;
        mDoHIO_DELETE_CHILD(l_HIO.id);
    }

    if (actor->heap != NULL) {
        a_this->model_morf->stopZelAnime();
    }

    return 1;
}

/* 806F7274-806F736C 001914 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_is_class* a_this = (e_is_class*)i_this;

    a_this->model_morf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_IS", 0x13), NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_IS", 0xE), 2, 1.0f, 0, -1, &a_this->sound, 0, 0x11020203);
    if (a_this->model_morf == NULL || a_this->model_morf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 806F736C-806F76B4 001A0C 0348+00 1/0 0/0 0/0 .text            daE_IS_Create__FP10fopAc_ac_c */
static int daE_IS_Create(fopAc_ac_c* i_this) {
    e_is_class* a_this = (e_is_class*)i_this;
    fopAcM_SetupActor(i_this, e_is_class);

    int phase_state = dComIfG_resLoad(&a_this->phase, "E_IS");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_IS PARAM %x\n", fopAcM_GetParam(i_this));
        a_this->field_0x5b4 = fopAcM_GetParam(i_this);
        if (a_this->field_0x5b4 == 0xFF) {
            a_this->field_0x5b4 = 0;
        }

        a_this->swbit = (fopAcM_GetParam(i_this) & 0xFF00) >> 8;
        a_this->swbit2 = (fopAcM_GetParam(i_this) & 0xFF0000) >> 0x10;
        a_this->swbit3 = (fopAcM_GetParam(i_this) & 0xFF000000) >> 0x18;

        a_this->field_0x5c4 = i_this->current.angle.z & 0xFF;
        i_this->current.angle.z = 0;
        i_this->shape_angle.z = 0;

        OS_REPORT("E_IS//////////////E_IS SET 1 !!\n");
        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, 0x4B000)) {
            OS_REPORT("//////////////E_IS SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////E_IS SET 2 !!\n");
        if (l_HIOInit == 0) {
            a_this->hioInit = 1;
            l_HIOInit = 1;
            l_HIO.id = mDoHIO_CREATE_CHILD("動くイデリア石像", &l_HIO);
        }

        i_this->attention_info.flags = 4;

        fopAcM_SetMtx(i_this, a_this->model_morf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(i_this, -500.0f, -200.0f, -500.0f);
        fopAcM_SetMax(i_this, 500.0f, 500.0f, 500.0f);

        i_this->health = 30;
        i_this->field_0x560 = 30;

        a_this->ccStts.Init(250, 0, i_this);

        static dCcD_SrcSph at_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x4, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x2, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
            } // mSphAttr
        };

        static dCcD_SrcCyl cc_cyl_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {0.0f, 0.0f, 0.0f}, // mCenter
                200.0f, // mRadius
                250.0f // mHeight
            } // mCyl
        };

        static dCcD_SrcSph core_sph_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdfd, 0x3}, 0x0}}, // mObj
                {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
            } // mSphAttr
        };

        a_this->at_sph.Set(at_sph_src);
        a_this->at_sph.SetStts(&a_this->ccStts);

        a_this->cc_cyl.Set(cc_cyl_src);
        a_this->cc_cyl.SetStts(&a_this->ccStts);
        a_this->cc_cyl.OnTgShield();
        a_this->cc_cyl.SetTgHitMark((CcG_Tg_HitMark)2);

        a_this->core_sph.Set(core_sph_src);
        a_this->core_sph.SetStts(&a_this->ccStts);

        a_this->acch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this, 1, &a_this->acchcir, fopAcM_GetSpeed_p(i_this), NULL, NULL);
        a_this->acchcir.SetWall(50.0f, 50.0f);

        a_this->sound.init(&i_this->current.pos, &i_this->eyePos, 3, 1);
        a_this->atInfo.mpSound = &a_this->sound;
        i_this->gravity = -7.0f;
        a_this->action = ACTION_WAIT;

        if (a_this->field_0x5b4 == 1 && dComIfGs_isSwitch(a_this->swbit, fopAcM_GetRoomNo(i_this))) {
            a_this->action = ACTION_POWEROFF;
            anm_init(a_this, 0xD, 10.0f, 2, 0.0f);
            a_this->mode = 10;
            a_this->field_0x6bc = 1;
            i_this->current.pos.set(0.0f, 3650.0f, -1040.0f);
            i_this->old = i_this->current;
            i_this->home = i_this->current;
        }

        daE_IS_Execute(a_this);
    }

    return phase_state;
}

/* 806F7D00-806F7D20 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_IS_Method */
static actor_method_class l_daE_IS_Method = {
    (process_method_func)daE_IS_Create,
    (process_method_func)daE_IS_Delete,
    (process_method_func)daE_IS_Execute,
    (process_method_func)daE_IS_IsDelete,
    (process_method_func)daE_IS_Draw,
};

/* 806F7D20-806F7D50 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_IS */
extern actor_process_profile_definition g_profile_E_IS = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_E_IS,              // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(e_is_class),     // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    184,                    // mPriority
    &l_daE_IS_Method,       // sub_method
    0x00040100,             // mStatus
    fopAc_ENEMY_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
