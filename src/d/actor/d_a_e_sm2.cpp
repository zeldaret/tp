/**
 * @file d_a_e_sm2.cpp
 * 
*/

#include "d/actor/d_a_e_sm2.h"
#include "d/d_item.h"
#include "Z2AudioLib/Z2Instances.h"
#include "f_op/f_op_kankyo_mng.h"
#include "SSystem/SComponent/c_counter.h"
#include "dol2asm.h"

UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"

/* 80798B4C-80798BA4 0000EC 0058+00 1/1 0/0 0/0 .text            __ct__13daE_SM2_HIO_cFv */
daE_SM2_HIO_c::daE_SM2_HIO_c() {
    unk_0x4 = 4;
    unk_0x7 = 0;
    merge_OFF = FALSE;

    color_debug_ON = FALSE;
    color_debug_R = 117;
    color_debug_G = 150;
    color_debug_B = 91;
}

/* 80798C48-80798D90 0001E8 0148+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_sm2_class* a_this = (e_sm2_class*)model->getUserArea();
    
        if (a_this != NULL && jnt_no >= 1) {
            MtxTrans(a_this->jnt_pos[jnt_no].x, a_this->jnt_pos[jnt_no].y, a_this->jnt_pos[jnt_no].z, 0);
            cMtx_YrotM(*calc_mtx, a_this->field_0x7f8[jnt_no].y);
            cMtx_XrotM(*calc_mtx, a_this->field_0x7f8[jnt_no].x);
            cMtx_ZrotM(*calc_mtx, a_this->field_0x768[jnt_no].z);
            MtxScale(a_this->size * (a_this->field_0x6c8[jnt_no] + a_this->field_0x6e8[jnt_no]),
                     a_this->size * (a_this->field_0x6c8[jnt_no] - a_this->field_0x6e8[jnt_no]),
                     a_this->size * a_this->field_0x830,
                     1);
            cMtx_ZrotM(*calc_mtx, -a_this->field_0x768[jnt_no].z);
            cMtx_YrotM(*calc_mtx, -0x4000);
            model->setAnmMtx(jnt_no, *calc_mtx);
        }
    }

    return 1;
}

/* 80798D90-80799070 000330 02E0+00 1/0 0/0 0/0 .text            daE_SM2_Draw__FP11e_sm2_class */
static int daE_SM2_Draw(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    g_env_light.settingTevStruct(0, &actor->current.pos, &actor->tevStr);

    if (!i_this->isPiece) {
        J3DModel* model = i_this->modelMorf->getModel();
        g_env_light.setLightTevColorType_MAJI(model, &actor->tevStr);

        J3DMaterial* material = model->getModelData()->getMaterialNodePointer(0);
        material->getTevKColor(1)->r = i_this->color_R;
        material->getTevKColor(1)->g = i_this->color_G;
        material->getTevKColor(1)->b = i_this->color_B;
        material->getTevKColor(1)->a = 217.0f * i_this->color_alpha;

        i_this->pbtk->entry(model->getModelData());
        i_this->invisModel.entryDL(NULL);

        if (i_this->shadowId != 353535) {
            cXyz sp8;
            sp8.set(actor->current.pos.x, 50.0f + actor->current.pos.y + BREG_F(18), actor->current.pos.z);
            
            f32 var_f31 = i_this->size * (2500.0f + BREG_F(19)) * i_this->field_0x830;
            if (var_f31 < 700.0f) {
                var_f31 = 700.0f;
            }

            i_this->shadowId = dComIfGd_setShadow(i_this->shadowId, 1, model, &sp8, var_f31, 0.0f, actor->current.pos.y, i_this->acch.GetGroundH(), i_this->acch.m_gnd, &actor->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        }
    } else {
        J3DModel* model = i_this->pieceModelMorf->getModel();

        J3DMaterial* material = model->getModelData()->getMaterialNodePointer(0);
        material->getTevKColor(1)->r = i_this->color_R;
        material->getTevKColor(1)->g = i_this->color_G;
        material->getTevKColor(1)->b = i_this->color_B;
        material->getTevKColor(1)->a = 217.0f * i_this->color_alpha;

        g_env_light.setLightTevColorType_MAJI(model, &actor->tevStr);
        i_this->pieceInvisModel.entryDL(NULL);
    }

    return 1;
}

/* 80799070-80799084 000610 0014+00 4/4 0/0 0/0 .text            size_get__FUc */
static f32 size_get(u8 i_sizetype) {
    static f32 sc_d[] = {
        0.25f,
        0.375f,
        0.5f,
        0.75f,
        1.0f,
    };

    return sc_d[i_sizetype];
}

/* 80799084-80799160 000624 00DC+00 5/5 0/0 0/0 .text            sm2_delete__FP11e_sm2_class */
static void sm2_delete(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;

    if (!i_this->is_roof) {
        fopAcM_delete(actor);
        
        int swbit = (fopAcM_GetParam(actor) & 0xFF000000) >> 0x18;
        if (swbit != 0xFF) {
            dComIfGs_onSwitch(swbit, fopAcM_GetRoomNo(actor));
        }
    } else {
        i_this->action = ACTION_ROOF;
        i_this->mode = 0;
        i_this->timers[0] = 30.0f + cM_rndF(60.0f);
        actor->current.pos = actor->home.pos;
        i_this->color_alpha = 1.0f;
        i_this->field_0x6b0 = 1.0f;
        i_this->isPiece = FALSE;
        i_this->sizetype = 0;
        i_this->size = size_get(i_this->sizetype);
    }
}

/* 80799160-807991D4 000700 0074+00 2/2 0/0 0/0 .text            cc_stts_init__FP11e_sm2_class */
static void cc_stts_init(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;

    static u8 w_d[] = {
        200,
        210,
        225,
        240,
        250,
    };

    i_this->ccStts.Init(w_d[i_this->sizetype], 0, actor);

    static f32 bg_h[] = {
        50.0f,
        60.0f,
        70.0f,
        70.0f,
        70.0f,
    };

    static f32 bg_r[] = {
        20.0f,
        30.0f,
        40.0f,
        40.0f,
        40.0f,
    };

    i_this->acchcir.SetWall(bg_h[i_this->sizetype], bg_r[i_this->sizetype]);
}

/* 807991D4-80799394 000774 01C0+00 1/1 0/0 0/0 .text            s_s_sub__FPvPv */
static void* s_s_sub(void* i_actor, void* i_data) {
    cXyz sp18;
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_SM2) {
        e_sm2_class* pother = (e_sm2_class*)i_data;
        e_sm2_class* pactor = (e_sm2_class*)i_actor;

        if (pother != pactor && pactor->action == ACTION_NORMAL_MOVE && pactor->combine_off_timer == 0) {
            sp18 = pactor->enemy.current.pos - pother->enemy.current.pos;
            f32 other_dist = sp18.abs();
            if (other_dist < 600.0f && other_dist < pother->dist_to_pl && !fopAcM_otherBgCheck(&pother->enemy, &pactor->enemy)) {
                return pactor;
            }
        }
    }

    return NULL;
}

/* 80799394-807993F4 000934 0060+00 1/1 0/0 0/0 .text            pl_check__FP11e_sm2_classf */
static BOOL pl_check(e_sm2_class* i_this, f32 i_range) {
    fopAc_ac_c* actor = &i_this->enemy;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (i_this->dist_to_pl < i_range + (100.0f * i_this->size) && !fopAcM_otherBgCheck(actor, player)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

UNK_REL_BSS

/* 8079DBD4-8079DBE4 000054 0010+00 3/4 0/0 0/0 .bss             l_HIO */
static daE_SM2_HIO_c l_HIO;

/* 807993F4-80799784 000994 0390+00 1/1 0/0 0/0 .text            normal_move__FP11e_sm2_class */
static void normal_move(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp24;
    cXyz sp18;
    f32 move_speed = 0.0f;
    f32 speed_step = 1.0f;
    s16 spA = 1000;

    if (pl_check(i_this, 700.0f)) {
        i_this->field_0x6a8 = 1;
        speed_step = 6.0f + TREG_F(10);
        spA = TREG_S(3) + 2000;
    } else {
        i_this->field_0x6a8 = 0;
    }

    switch (i_this->mode) {
    case 0:
        if (i_this->timers[0] == 0) {
            if (i_this->field_0x6a8 == 0) {
                i_this->field_0x6a4 = cM_rndF(65536.0f);
                i_this->timers[0] = 23.0f + cM_rndF(3.0f);
            } else {
                i_this->timers[0] = 8.0f + cM_rndF(3.0f);
            }

            i_this->field_0x6a6 = 0;
            i_this->mode = 1;
        }
        break;
    case 1:
        if (i_this->field_0x6a8 == 0) {
            move_speed = 15.0f + TREG_F(2);
        } else {
            move_speed = 25.0f + TREG_F(11);
            i_this->field_0x6a4 = i_this->angle_to_pl;
        }

        if (i_this->timers[0] == 0) {
            i_this->mode = 0;
            if (i_this->sizetype <= 2) {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_MOVE, 0, -1);
            } else {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_MOVE2, 0, -1);
            }

            if (i_this->field_0x6a8 == 0) {
                i_this->timers[0] = 23.0f + cM_rndF(3.0f);
            } else {
                s16 sp8 = actor->current.angle.y - i_this->field_0x6a4;
                if (sp8 < 0x1000 && sp8 > -0x1000 && i_this->dist_to_pl < (400.0f + (100.0f * i_this->size))) {
                    i_this->action = ACTION_ATTACK;
                    i_this->mode = 0;
                } else {
                    i_this->timers[0] = 8.0f + cM_rndF(3.0f);
                }
            }
        }
        break;
    }

    cLib_addCalc2(&actor->speedF, move_speed, 0.2f, 0.5f * speed_step);
    if (move_speed > 0.0f) {
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x6a4, 4, i_this->field_0x6a6);
        cLib_addCalcAngleS2(&i_this->field_0x6a6, spA, 1, 400);
    }

    cLib_addCalc2(&i_this->field_0x830, 0.65f + TREG_F(7) + (actor->speedF * (0.03f + TREG_F(9))), 0.1f, (0.02f * speed_step) + TREG_F(8));

    if (!l_HIO.merge_OFF && (i_this->counter & 7) == 0 && i_this->sizetype < 4 && i_this->combine_off_timer == 0 && !fopAcM_CheckCondition(actor, 4)) {
        e_sm2_class* pother = (e_sm2_class*)fpcM_Search(s_s_sub, i_this);
        if (pother != NULL) {
            i_this->action = ACTION_COMBINE;
            i_this->mode = 0;
            i_this->combine_actor_pid = fopAcM_GetID(pother);

            pother->action = ACTION_COMBINE;
            pother->mode = 0;
            pother->combine_actor_pid = fopAcM_GetID(actor);
        }
    }
}

/* 80799784-80799A50 000D24 02CC+00 2/2 0/0 0/0 .text            attack__FP11e_sm2_class */
static void attack(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp28;
    cXyz sp1C;
    f32 move_speed = 0.0f;

    switch (i_this->mode) {
    case 0:
        actor->speed.y = 50.0f + TREG_F(15);
        actor->speedF = (20.0f + TREG_F(16)) / i_this->size;
        move_speed = actor->speedF;

        i_this->mode = 1;
        i_this->field_0x6a9 = BREG_S(2) + 25;
        i_this->field_0x6ac = 0.0f;
        i_this->field_0x82c = 5.0f;

        if (i_this->sizetype <= 2) {
            i_this->sound.startCreatureSound(Z2SE_EN_SM_JUMP, 0, -1);
        } else {
            i_this->sound.startCreatureSound(Z2SE_EN_SM_JUMP2, 0, -1);
        }
        break;
    case 1:
        move_speed = 20.0f + TREG_F(16);
        i_this->field_0xf88 = 1;

        if (i_this->acch.ChkGroundHit()) {
            i_this->mode = 2;
            i_this->timers[0] = BREG_S(3) + 10;
            i_this->field_0x82c = 5.0f;
            i_this->field_0x6aa = 23;

            if (i_this->sizetype <= 2) {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_LAND, 0, -1);
            } else {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_LAND2, 0, -1);
            }
        }
        break;
    case 2:
        if (i_this->timers[0] == 1) {
            i_this->field_0x82c = 8.0f + BREG_F(11);
        }

        if (actor->speedF < 1.0f) {
            i_this->action = ACTION_NORMAL_MOVE;
            i_this->mode = 0;
            i_this->timers[0] = cM_rndF(20.0f);
        }
        break;
    case 10:
        actor->speed.y = 20.0f + XREG_F(15) + cM_rndF(5.0f);
        actor->speedF = 40.0f + XREG_F(16) + cM_rndF(5.0f);
        move_speed = actor->speedF;

        i_this->mode = 2;
        i_this->field_0x82c = 8.0f;
        i_this->field_0x6aa = 30;
        i_this->combine_off_timer = 200;
        break;
    case 20:
        actor->speed.y = 50.0f + XREG_F(15) + cM_rndF(30.0f);
        actor->speedF = 35.0f + XREG_F(16) + cM_rndF(10.0f);
        move_speed = actor->speedF;

        i_this->mode = 2;
        i_this->field_0x82c = 10.0f;
        i_this->field_0x6aa = 30;
        i_this->combine_off_timer = 200;
        break;
    }

    cLib_addCalc2(&actor->speedF, move_speed, 1.0f, 2.0f);
    cLib_addCalc2(&i_this->field_0x830, 1.0f + TREG_F(17), 0.5f, 0.1f + TREG_F(18));
}

/* 80799A50-80799DAC 000FF0 035C+00 1/1 0/0 0/0 .text            combine__FP11e_sm2_class */
static s8 combine(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp28;
    cXyz sp1C;

    e_sm2_class* combine_actor = (e_sm2_class*)fopAcM_SearchByID(i_this->combine_actor_pid);
    s8 cc_co_ON = TRUE;

    if (combine_actor == NULL || combine_actor->action != ACTION_COMBINE) {
        i_this->action = ACTION_NORMAL_MOVE;
        i_this->mode = 0;
        i_this->timers[0] = 20.0f + cM_rndF(20.0f);
        return cc_co_ON;
    }

    sp28 = combine_actor->enemy.current.pos - actor->current.pos;

    f32 var_f28 = sp28.abs();
    f32 move_speed = 0.0f;
    s8 sp8 = 0;
    f32 speed_step = 6.0f + TREG_F(10);
    s16 spA = TREG_S(3) + 2000;

    i_this->field_0x6a8 = 1;

    f32 var_f29 = 0.65f + TREG_F(7) + (actor->speedF * (0.03f + TREG_F(9)));

    switch (i_this->mode) {
    case 0:
        if (i_this->timers[0] == 0) {
            i_this->timers[0] = 8.0f + cM_rndF(3.0f);
            i_this->mode = 1;
        }
        break;
    case 1:
        move_speed = 25.0f + TREG_F(11);
        i_this->field_0x6a4 = cM_atan2s(sp28.x, sp28.z);

        if (i_this->timers[0] == 0) {
            i_this->mode = 0;
            i_this->timers[0] = 8.0f + cM_rndF(3.0f);
        }
        break;
    case 5:
        cc_co_ON = FALSE;
        i_this->invulernabilityTimer = 10;
        i_this->combine_off_timer = 10;
        i_this->field_0x82c = 3.5f;

        sp8 = 1;
        i_this->field_0x6a8 = 2;
        i_this->field_0x6a4 = combine_actor->enemy.current.angle.y + 0x8000;
        break;
    case 10:
        cc_co_ON = FALSE;
        var_f29 = 0.8f * combine_actor->field_0x830;

        i_this->invulernabilityTimer = 10;
        i_this->combine_off_timer = 10;
        i_this->field_0x82c = 3.5f;

        cLib_addCalc2(&actor->current.pos.x, combine_actor->field_0x708[6].x, 1.0f, 10.0f * i_this->size);
        cLib_addCalc2(&actor->current.pos.z, combine_actor->field_0x708[6].z, 1.0f, 10.0f * i_this->size);

        i_this->field_0x6a4 = combine_actor->enemy.current.angle.y + 0x8000;
        sp8 = 1;
        i_this->field_0x6a8 = 2;

        sp28.x = actor->current.pos.x - combine_actor->field_0x708[6].x;
        sp28.z = actor->current.pos.z - combine_actor->field_0x708[6].z;
        if (i_this->timers[0] == 0 || JMAFastSqrt((sp28.x * sp28.x) + (sp28.z * sp28.z)) <= i_this->size) {
            sm2_delete(i_this);
        }
        break;
    }

    cLib_addCalc2(&actor->speedF, move_speed, 0.2f, 0.5f * speed_step);
    if (move_speed > 0.0f || sp8 != 0) {
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->field_0x6a4, 4, i_this->field_0x6a6);
        cLib_addCalcAngleS2(&i_this->field_0x6a6, spA, 1, 400);
    }

    cLib_addCalc2(&i_this->field_0x830, var_f29, 0.1f, (0.02f * speed_step) + TREG_F(8));
    return cc_co_ON;
}

/* 80799DAC-8079A1CC 00134C 0420+00 1/2 0/0 0/0 .text            roof__FP11e_sm2_class */
static s8 roof(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp34;
    cXyz sp28;
    s8 do_pos_crr = FALSE;

    actor->current.angle.x = actor->shape_angle.x = KREG_S(0) + 0x3F00;
    i_this->field_0x6a9 = 2;
    i_this->field_0x6a8 = 3;
    i_this->field_0x82c = 2.0f;

    switch (i_this->mode) {
    case 0:
        i_this->mode = 1;

        for (int i = 0; i < 8; i++) {
            i_this->field_0x708[i] = actor->current.pos;
            i_this->field_0x6c8[i] = 0.5f + KREG_F(2);
        }

        i_this->field_0x830 = 0.0f;
        i_this->field_0x838 = 0.01f + KREG_F(4);
        /* fallthrough */
    case 1:
        actor->speedF = 0.0f;
        actor->speed.y = 0.0f;
        actor->current.pos.y = 10.0f + actor->home.pos.y + KREG_F(1) + ((-150.0f + KREG_F(0)) * i_this->field_0x830);

        if (i_this->field_0x5b8 != 0) {
            if (dComIfGs_isSwitch(i_this->field_0x5b8, fopAcM_GetRoomNo(actor))) {
                i_this->mode = 2;
                i_this->timers[0] = 2.0f + cM_rndF(50.0f);
                i_this->timers[1] = i_this->timers[0] + 50;
            }
        } else {
            if (fopAcM_searchPlayerDistanceXZ(actor) < (100.0f * i_this->field_0x5b6)) {
                i_this->mode = 2;
                if (strcmp(dComIfGp_getStartStageName(), "D_SB07") == 0) {
                    i_this->timers[0] = 2.0f + cM_rndF(50.0f);
                } else {
                    i_this->timers[0] = 2;
                }
                i_this->timers[1] = i_this->timers[0] + 50;
            }
        }
        break;
    case 2:
        actor->speed.y = 0.0f;
        actor->current.pos.y = 10.0f + actor->home.pos.y + KREG_F(1) + ((-150.0f + KREG_F(0)) * i_this->field_0x830);

        if (i_this->timers[0] == 1) {
            if (i_this->sizetype <= 2) {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_MOVE, 0, -1);
            } else {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_MOVE2, 0, -1);
            }
        }

        if (i_this->timers[0] == 0) {
            cLib_addCalc2(&i_this->field_0x830, 1.3f + KREG_F(17), 1.0f, i_this->field_0x838);
            if (i_this->timers[1] == 0) {
                cLib_addCalc2(&i_this->field_0x838, 0.13f + KREG_F(5), 1.0f, 0.004f + KREG_F(6));
            }

            if (i_this->field_0x830 > 0.9f * (1.3f + KREG_F(17))) {
                i_this->mode = 3;
                i_this->timers[0] = 5;
            }
        }
        break;
    case 3:
        if (i_this->timers[0] == 0) {
            do_pos_crr = TRUE;
        }

        if (i_this->acch.ChkGroundHit()) {
            i_this->action = ACTION_NORMAL_MOVE;
            i_this->mode = 0;
            i_this->timers[0] = 40.0f + cM_rndF(30.0f);
            i_this->field_0x6a8 = 0;
            i_this->field_0x830 = 1.0f;
            i_this->field_0x6aa = 20;
            i_this->field_0x82c = 10.0f;

            for (int i = 0; i < 8; i++) {
                i_this->field_0x6c8[i] = 1.0f;
            }

            actor->current.angle.y = cM_rndF(65536.0f);

            if (i_this->sizetype <= 2) {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_LAND, 0, -1);
            } else {
                i_this->sound.startCreatureSound(Z2SE_EN_SM_LAND2, 0, -1);
            }
        }
        break;
    }

    return do_pos_crr;
}

/* 8079A1CC-8079A28C 00176C 00C0+00 1/1 0/0 0/0 .text            water__FP11e_sm2_class */
static void water(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;

    cLib_addCalc2(&actor->speedF, 1.0f, 0.1f, 3.0f);
    actor->speed.y = -1.0f;

    for (int i = 0; i < 8; i++) {
        cLib_addCalc2(&i_this->field_0x6c8[i], 1.5f, 0.1f, 0.01f);
    }

    cLib_addCalc2(&i_this->field_0x830, 0.2f, 0.1f, 0.01f);
    cLib_addCalc0(&i_this->color_alpha, 1.0f, 0.0075f);

    if (i_this->color_alpha < 0.01f) {
        sm2_delete(i_this);
    }
}

/* 8079A28C-8079A3AC 00182C 0120+00 2/2 0/0 0/0 .text            eff_set__FP11e_sm2_classP4cXyzf */
static void eff_set(e_sm2_class* i_this, cXyz* i_pos, f32 i_size) {
    fopAc_ac_c* actor = &i_this->enemy;

    static GXColor e_prim_A[] = {
        {0xCF, 0xE6, 0xC8, 0x00},
        {0xFF, 0xA5, 0xA5, 0x00},
        {0x78, 0x96, 0xFF, 0x00},
        {0xFF, 0xDC, 0x96, 0x00},
        {0xB4, 0x82, 0xD2, 0x00},
        {0xFF, 0xFF, 0xB4, 0x00},
        {0x14, 0x14, 0x14, 0x00},
    };

    static GXColor e_env_A[] = {
        {0x28, 0x32, 0x0F, 0x00},
        {0x50, 0x1E, 0x28, 0x00},
        {0x00, 0x23, 0x3C, 0x00},
        {0x50, 0x46, 0x0F, 0x00},
        {0x0A, 0x00, 0x19, 0x00},
        {0x64, 0x64, 0x3C, 0x00},
        {0x14, 0x14, 0x14, 0x00},
    };

    cXyz effsize(i_size, i_size, i_size);

    dComIfGp_particle_set(0x85BE, i_pos, &actor->tevStr, &actor->shape_angle, &effsize, 0xFF, NULL, fopAcM_GetRoomNo(actor), &e_prim_A[i_this->type], &e_env_A[i_this->type], NULL);

    static GXColor e_prim_B[] = {
        {0x8C, 0xB4, 0x78, 0x00},
        {0xCD, 0x78, 0x87, 0x00},
        {0x5A, 0x82, 0xDC, 0x00},
        {0xFA, 0xE6, 0x87, 0x00},
        {0x7D, 0x5A, 0xA0, 0x00},
        {0xFF, 0xFF, 0x96, 0x00},
        {0x14, 0x14, 0x14, 0x00},
    };

    static GXColor e_env_B[] = {
        {0x14, 0x0F, 0x00, 0x00},
        {0x46, 0x14, 0x1E, 0x00},
        {0x00, 0x14, 0x32, 0x00},
        {0x46, 0x37, 0x19, 0x00},
        {0x00, 0x00, 0x0A, 0x00},
        {0x5A, 0x5A, 0x28, 0x00},
        {0x14, 0x14, 0x14, 0x00},
    };

    dComIfGp_particle_set(0x85BF, i_pos, &actor->tevStr, &actor->shape_angle, &effsize, 0xFF, NULL, fopAcM_GetRoomNo(actor), &e_prim_B[i_this->type], &e_env_B[i_this->type], NULL);
}

/* 8079A3AC-8079A560 00194C 01B4+00 1/1 0/0 0/0 .text            fail__FP11e_sm2_class */
static void fail(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    cXyz sp14;
    cXyz sp8;

    i_this->invulernabilityTimer = 10;
    actor->speedF = 0.0f;

    if (i_this->acch.ChkGroundHit()) {
        if (i_this->mode == 0) {
            i_this->mode = 1;
            i_this->timers[1] = 25;
        }

        cLib_addCalc2(&i_this->field_0x6b0, 0.5f + BREG_F(9), 0.05f, 0.05f + VREG_F(7));
        if (i_this->field_0x6b0 < 0.55f + BREG_F(10)) {
            cLib_addCalc0(&i_this->color_alpha, 1.0f, 0.025f);
            if (i_this->color_alpha < 0.05f) {
                i_this->mode = 2;
            }

            if (i_this->color_alpha < 0.01f) {
                sm2_delete(i_this);
            }
        }
    }

    if (i_this->mode == 1) {
        if (actor->eventInfo.checkCommandCatch()) {
            i_this->mode = 2;
            i_this->timers[0] = KREG_S(7) + 9;
        } else {
            static u8 item_no[] = {
                fpcNm_ITEM_CHUCHU_GREEN,
                fpcNm_ITEM_CHUCHU_RED,
                fpcNm_ITEM_CHUCHU_BLUE,
                fpcNm_ITEM_CHUCHU_YELLOW,
                fpcNm_ITEM_CHUCHU_PURPLE,
                fpcNm_ITEM_CHUCHU_RARE,
                fpcNm_ITEM_CHUCHU_BLACK,
            };

            dComIfGp_att_CatchRequest(actor, item_no[i_this->type], 100.0f, 50.0f, -150.0f, 0x5000, 1);
            actor->eventInfo.onCondition(0x40);
        }
    } else if (i_this->mode == 2 && i_this->timers[0] == 1) {
        MTXCopy(daPy_getPlayerActorClass()->getLeftItemMatrix(), *calc_mtx);
        sp14.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&sp14, &sp8);
        eff_set(i_this, &sp8, 0.1f + TREG_F(14));
    }
}

/* 8079A560-8079A9B4 001B00 0454+00 1/1 0/0 0/0 .text            dmcalc__FP11e_sm2_class */
static void dmcalc(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    int i;

    cXyz sp5C;
    cXyz sp50;
    cXyz* var_r28 = &i_this->field_0x708[1];
    csXyz* sp14 = &i_this->field_0x768[1];

    cXyz sp44;
    cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
    cMtx_XrotM(*calc_mtx, actor->shape_angle.x);

    sp5C.x = 0.0f;
    sp5C.y = 0.0f;
    sp5C.z = i_this->size * (-5.0f + WREG_F(18)) * i_this->field_0x830;
    if (sp5C.z > -1.5f + WREG_F(17)) {
        sp5C.z = -1.5f + WREG_F(17);
    }

    if (i_this->field_0x6a8 == 1) {
        sp5C.z *= 1.4f;
    } else if (i_this->field_0x6a8 == 2) {
        sp5C.z *= 5.0f;
    } else if (i_this->field_0x6a8 == 3) {
        sp5C.z = -2000.0f;
    }

    MtxPosition(&sp5C, &sp44);

    f32 var_f31 = 1.0f;
    f32 temp_f30;
    f32 temp_f26;
    f32 temp_f29;
    f32 var_f28;

    f32 var_f27;
    if (i_this->action == ACTION_WATER) {
        var_f27 = 0.0f;
    } else if (i_this->field_0x6a9 != 0) {
        i_this->field_0x6a9--;
        var_f27 = 5.0f + BREG_F(18);
    } else {
        var_f27 = -50.0f + BREG_F(19);
    }

    cLib_addCalc2(&i_this->field_0x6ac, var_f27, 1.0f, 4.0f + BREG_F(17));

    cXyz sp38;
    cXyz sp2C;
    cXyz sp20(0.0f, 0.0f, 0.0f);
    s16 spE, spC, spA, sp8;
    if (i_this->field_0x6aa != 0) {
        static s16 swsp_d[] = {
            6000,
            5500,
            5000,
            4500,
            4000,
        };

        i_this->field_0x6aa--;
        spA = swsp_d[i_this->sizetype];
    }

    sp5C.x = 0.0f;
    sp5C.y = 0.0f;
    sp5C.z = i_this->size * (100.0f + WREG_F(1)) * i_this->field_0x830;

    for (i = 1; i < 8; i++, var_r28++, sp14++) {
        if (i_this->field_0x6aa != 0) {
            sp8 = (6000.0f + ZREG_F(17)) * cM_ssin((i_this->counter * spA) + (i * (ZREG_S(8) - 9000)));
            cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
            cMtx_XrotM(*calc_mtx, actor->shape_angle.x);
            cMtx_YrotM(*calc_mtx, sp8);

            sp2C.x = 0.0f;
            sp2C.y = 0.0f;
            sp2C.z = 0.04f * ((-20.0f + ZREG_F(18)) * i_this->field_0x6aa);
            MtxPosition(&sp2C, &sp20);
        }

        sp38.set(var_r28->x, 100.0f + var_r28->y, var_r28->z);

        if (fopAcM_gc_c::gndCheck(&sp38)) {
            sp38.y = ((60.0f + TREG_F(6)) * i_this->size) + fopAcM_gc_c::getGroundY();
        } else {
            sp38.y = ((60.0f + TREG_F(6)) * i_this->size) + i_this->acch.GetGroundH();
        }

        temp_f30 = sp20.x + ((var_r28[0].x - var_r28[-1].x) + (sp44.x * var_f31));
        var_f28 = sp20.y + (i_this->field_0x6ac + (var_r28->y + (sp44.y * var_f31)));
        if (var_f28 < sp38.y) {
            var_f28 = sp38.y;
        }
        temp_f26 = var_f28 - var_r28[-1].y;
        temp_f29 = sp20.z + ((var_r28[0].z - var_r28[-1].z) + (sp44.z * var_f31));

        var_f31 *= 1.0f + WREG_F(4);

        spC = (s16)cM_atan2s(temp_f30, temp_f29);
        spE = -cM_atan2s(temp_f26, JMAFastSqrt((temp_f30 * temp_f30) + (temp_f29 * temp_f29)));
        cMtx_YrotS(*calc_mtx, spC);
        cMtx_XrotM(*calc_mtx, spE);
        MtxPosition(&sp5C, &sp50);

        var_r28[0].x = var_r28[-1].x + sp50.x;
        var_r28[0].y = var_r28[-1].y + sp50.y;
        var_r28[0].z = var_r28[-1].z + sp50.z;
        sp14->x = spE;
        sp14->y = spC;
    }
}

/* 8079D888-8079D8BC 000154 0031+03 0/1 0/0 0/0 .data            new_col_d */
// Lookup table for color combinations. Rows correspond to one chu and columns the other chu
// Ex. RED + BLUE = [1][2] = TYPE_PURPLE
static u8 new_col_d[] = {
    TYPE_GREEN,  TYPE_BLUE,   TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_RARE,
    TYPE_BLUE,   TYPE_RED,    TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_RARE,
    TYPE_PURPLE, TYPE_PURPLE, TYPE_BLUE,   TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_RARE,
    TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_YELLOW, TYPE_PURPLE, TYPE_PURPLE, TYPE_RARE,
    TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_RARE,
    TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_PURPLE, TYPE_RARE,   TYPE_RARE,
    TYPE_RARE,   TYPE_RARE,   TYPE_RARE,   TYPE_RARE,   TYPE_RARE,   TYPE_RARE,   TYPE_BLACK,
};

/* 8079A9B4-8079AF94 001F54 05E0+00 1/1 0/0 0/0 .text            damage_check__FP11e_sm2_class */
static void damage_check(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;

    cXyz sp78;
    i_this->ccStts.Move();

    if (i_this->combine_off_timer == 0 && i_this->action == ACTION_COMBINE && i_this->mode < 5) {
        for (int i = 0; i < 4; i++) {
            if (i_this->ccSph[i].ChkCoHit()) {
                fopAc_ac_c* co_hit_actor = dCc_GetAc(i_this->ccSph[i].GetCoHitObj()->GetAc());
                if (co_hit_actor == fopAcM_SearchByID(i_this->combine_actor_pid)) {
                    e_sm2_class* sm_hit_actor = (e_sm2_class*)co_hit_actor;
                    if (sm_hit_actor->sizetype <= i_this->sizetype) {
                        i_this->sizetype++;
                        if (i_this->sizetype > 3) {
                            i_this->sizetype = 3;
                        }

                        if (i_this->sizetype <= 2) {
                            i_this->sound.startCreatureSound(Z2SE_EN_SM_FUSION, 0, -1);
                        } else {
                            i_this->sound.startCreatureSound(Z2SE_EN_SM_FUSION2, 0, -1);
                        }

                        cc_stts_init(i_this);
                        i_this->invulernabilityTimer = 10;
                        i_this->mode = 5;

                        sm_hit_actor->invulernabilityTimer = 10;
                        sm_hit_actor->action = ACTION_COMBINE;
                        sm_hit_actor->mode = 10;

                        u8 new_color_type = new_col_d[(sm_hit_actor->type * 7) + i_this->type];
                        i_this->type = new_color_type;
                        sm_hit_actor->type = new_color_type;

                        sm_hit_actor->timers[0] = 100;
                        sm_hit_actor->combine_actor_pid = fopAcM_GetID(actor);
                        return;
                    }
                }
            }
        }
    }

    if (i_this->invulernabilityTimer == 0) {
        cXyz pos;
        csXyz rotation(0, 0, 0);

        for (int i = 0; i < 4; i++) {
            if (i_this->ccSph[i].ChkTgHit()) {
                i_this->invulernabilityTimer = 6;
                i_this->atInfo.mpCollider = i_this->ccSph[i].GetTgHitObj();
                actor->health = 100;
                cc_at_check(actor, &i_this->atInfo);

                i_this->invulernabilityTimer = 10;
                if (i_this->atInfo.mHitType == 0x10) {
                    i_this->field_0x82c = 8.0f;
                    return;
                }

                i_this->field_0x82c = 5.0f;
                OS_REPORT("E_SM2/////HIT A  %d\n", i_this->sizetype);

                if (i_this->sizetype != 0) {
                    if (i_this->atInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
                        sm2_delete(i_this);

                        static int bun_d[] = {0, 2, 4, 8, 12};
                        for (int j = 0; j < bun_d[i_this->sizetype]; j++) {
                            static int j_d[] = {0, 6, 1, 5, 2, 4, 0, 6, 1, 5, 2, 4};
                            static s16 ya_d[] = {
                                0x0000, 0x8000, 0x0000, 0x8000, 0x0000, 0x8000,
                                0x0000, 0x8000, 0x0000, 0x8000, 0x0000, 0x8000,
                            };
                            static f32 y_ad[] = {20.0f, 30.0f, 40.0f, 50.0f, 60.0f,};

                            rotation.y = ya_d[j] + actor->current.angle.y + (s16)cM_rndFX(8000.0f);

                            pos = i_this->field_0x708[j_d[j]];
                            pos.y += cM_rndF(y_ad[i_this->sizetype]);

                            fopAcM_createChild(PROC_E_SM2, fopAcM_GetID(actor), 0xFFFFFF00 | (i_this->type << 4) | 0xB, &pos, fopAcM_GetRoomNo(actor), &rotation, NULL, -1, NULL);
                        }

                        i_this->field_0xfd4 = 1;
                    } else {
                        i_this->sizetype--;
                        cc_stts_init(i_this);
                        i_this->size = size_get(i_this->sizetype);
                        i_this->action = ACTION_ATTACK;
                        i_this->mode = 10;
                        i_this->field_0x830 = 0.1f;
                        i_this->field_0xfd4 = 1;

                        sp78 = i_this->field_0x708[0] - i_this->field_0x708[3];
                        actor->current.angle.y = cM_atan2s(sp78.x, sp78.z);
                        i_this->invulernabilityTimer = 20;

                        u32 parameters = 0xFF000000 | (i_this->sizetype << 8) | (i_this->type << 4) | 0xA;
                        csXyz rotation(0, 0, 0);

                        sp78 = i_this->field_0x708[6] - i_this->field_0x708[3];
                        rotation.y = cM_atan2s(sp78.x, sp78.z);

                        sp78 = actor->current.pos;
                        sp78.y += 20.0f;

                        cXyz pos(i_this->field_0x708[6]);
                        pos.y += 20.0f;

                        dBgS_LinChk linchk;
                        linchk.Set(&sp78, &pos, actor);
                        if (dComIfG_Bgsp().LineCross(&linchk)) {
                            pos = sp78;
                        }

                        fopAcM_createChild(PROC_E_SM2, fopAcM_GetID(actor), parameters, &pos, fopAcM_GetRoomNo(actor), &rotation, NULL, -1, NULL);
                    }

                    i_this->sound.startCreatureSound(Z2SE_EN_SM_HIT2, 0, -1);
                } else {
                    i_this->sound.startCreatureSound(Z2SE_EN_SM_HIT, 0, -1);
                    i_this->action = ACTION_FAIL;
                    i_this->mode = 0;
                    i_this->field_0x6b0 = 1.5f + BREG_F(3);
                    i_this->timers[0] = 0;
                    i_this->isPiece = TRUE;
                    actor->speed.y = 20.0f + BREG_F(6);
                    i_this->field_0xfd4 = 1;
                    fopAcM_OffStatus(actor, fopAcM_STATUS_UNK_000100);
                }
                return;
            }
        }
    }
}

/* 8079AF94-8079BC9C 002534 0D08+00 2/1 0/0 0/0 .text            action__FP11e_sm2_class */
static void action(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    cXyz sp58;
    cXyz sp4C;

    i_this->angle_to_pl = fopAcM_searchPlayerAngleY(actor);
    i_this->dist_to_pl = fopAcM_searchPlayerDistance(actor);

    damage_check(i_this);

    s8 attn_ON = TRUE;
    s8 cc_co_ON = TRUE;
    s8 check_into_water = TRUE;
    s8 do_pos_crr = TRUE;

    switch (i_this->action) {
    case ACTION_NORMAL_MOVE:
        normal_move(i_this);
        break;
    case ACTION_ATTACK:
        attack(i_this);
        break;
    case ACTION_COMBINE:
        cc_co_ON = combine(i_this);
        break;
    case ACTION_ROOF:
        do_pos_crr = roof(i_this);
        cc_co_ON = FALSE;
        attn_ON = FALSE;
        break;
    case ACTION_WATER:
        water(i_this);
        cc_co_ON = FALSE;
        attn_ON = FALSE;
        check_into_water = FALSE;
        break;
    case ACTION_FAIL:
        fail(i_this);
        cc_co_ON = FALSE;
        attn_ON = FALSE;
        check_into_water = FALSE;
        break;
    }

    if (check_into_water) {
        dBgS_ObjGndChk sp10C;
        dBgS_ObjGndChk_Spl spB8;

        sp58 = actor->current.pos;
        sp58.y += 150.0f;

        spB8.SetPos(&sp58);
        sp10C.SetPos(&sp58);

        f32 ground_y = dComIfG_Bgsp().GroundCross(&spB8);
        f32 temp_f26 = ground_y - dComIfG_Bgsp().GroundCross(&sp10C);

        if (actor->current.pos.y < ground_y && temp_f26 > 100.0f) {
            i_this->action = ACTION_WATER;
            i_this->mode = 0;
            actor->current.pos.y = ground_y;
            i_this->shadowId = 353535;
            actor->current.angle.x = 0;
            actor->gravity = 0.0f;
            i_this->field_0x6a8 = 0;
            i_this->field_0x6aa = 20;

            f32 eff_size = 3.0f * i_this->size;
            fopKyM_createWpillar(&actor->current.pos, eff_size, 0);
            fopAcM_effHamonSet(&i_this->field_0xfd8, &actor->current.pos, eff_size * (1.0f + KREG_F(2)), 0.2f + KREG_F(3));
            i_this->sound.startCreatureSound(Z2SE_AL_INTO_WATER, 0, -1);
        }
    }

    if (attn_ON) {
        fopAcM_OnStatus(actor, 0);
        actor->attention_info.flags = 4;
    } else {
        fopAcM_OffStatus(actor, 0);
        actor->attention_info.flags = 0;
    }

    cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
    sp58.x = 0.0f;
    sp58.y = 0.0f;
    sp58.z = actor->speedF * i_this->size;
    MtxPosition(&sp58, &sp4C);
    actor->speed.x = sp4C.x;
    actor->speed.z = sp4C.z;
    actor->speed.y += actor->gravity;
    if (actor->speed.y < -100.0f) {
        actor->speed.y = -100.0f;
    }

    actor->current.pos += actor->speed;

    cXyz* cc_move_p = i_this->ccStts.GetCCMoveP();
    if (cc_move_p != NULL) {
        actor->current.pos.x += 0.2f * cc_move_p->x;
        actor->current.pos.z += 0.2f * cc_move_p->z;
    }

    if (do_pos_crr) {
        i_this->acch.CrrPos(dComIfG_Bgsp());
    }

    if (i_this->action != ACTION_ROOF) {
        if (i_this->acch.ChkGroundHit()) {
            dBgS_GndChk gndchk;

            cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
            sp58.x = 0.0f;
            sp58.y = 0.0f;
            sp58.z = -25.0f * i_this->size;
            MtxPosition(&sp58, &sp4C);
            sp4C += actor->current.pos;

            Vec sp40;
            sp40.x = sp4C.x;
            sp40.y = 100.0f + sp4C.y;
            sp40.z = sp4C.z;

            gndchk.SetPos(&sp40);
            sp4C.y = dComIfG_Bgsp().GroundCross(&gndchk);

            sp58 = sp4C - actor->current.pos;
            if (fabsf(sp58.y) < 200.0f) {
                actor->current.angle.x = cM_atan2s(sp58.y, JMAFastSqrt((sp58.x * sp58.x) + (sp58.z * sp58.z)));
            } else {
                actor->current.angle.x = 0;
            }
        } else {
            sp58 = actor->speed;
            actor->current.angle.x = -cM_atan2s(sp58.y, JMAFastSqrt((sp58.x * sp58.x) + (sp58.z * sp58.z)));
        }
    }

    cLib_addCalcAngleS2(&actor->shape_angle.y, actor->current.angle.y, 4, 0x2000);
    cLib_addCalcAngleS2(&actor->shape_angle.x, actor->current.angle.x, 4, 0x1000);

    dmcalc(i_this);

    if (i_this->acch.ChkGroundHit()) {
        for (int i = 1; i < 8; i++) {
            if (i_this->field_0x768[i].x > 0x1000 || i_this->field_0x768[i].x < -0x1000) {
                i_this->field_0x83f = JREG_S(6) + 30;
                break;
            }
        }
    }

    f32 var_f31 = 0.1f;
    s16 spC = 4;

    if (i_this->field_0x6a9 == 0 && i_this->field_0x6aa < 10 && i_this->field_0x83f != 0) {
        i_this->field_0x83f--;
        if (i_this->field_0x83f <= 15) {
            static f32 pf_d[] = {
                0.90f,
                0.85f,
                0.80f,
                0.75f,
                0.70f,
                0.65f,
                0.60f,
                0.55f,
                0.50f,
                0.50f,
                0.45f,
                0.40f,
                0.35f,
                0.30f,
                0.25f,
                0.20f,
            };

            static s16 ps_d[] = {
                0x0001,
                0x0001,
                0x0001,
                0x0001,
                0x0002,
                0x0002,
                0x0002,
                0x0002,
                0x0002,
                0x0002,
                0x0002,
                0x0003,
                0x0003,
                0x0003,
                0x0003,
                0x0003,
            };

            var_f31 = pf_d[i_this->field_0x83f];
            spC = ps_d[i_this->field_0x83f];
        }

        cLib_addCalc2(&i_this->field_0x840.x, actor->current.pos.x, var_f31, 500.0f + JREG_F(8));
        cLib_addCalc2(&i_this->field_0x840.y, actor->current.pos.y, var_f31, 500.0f + JREG_F(8));
        cLib_addCalc2(&i_this->field_0x840.z, actor->current.pos.z, var_f31, 500.0f + JREG_F(8));
        cLib_addCalcAngleS2(&i_this->field_0x84c.x, actor->shape_angle.x, spC, JREG_S(8) + 0x800);
        cLib_addCalcAngleS2(&i_this->field_0x84c.y, actor->shape_angle.y, spC, JREG_S(8) + 0x800);

        for (int i = 1; i < 8; i++) {
            cLib_addCalc2(&i_this->jnt_pos[i].x, i_this->field_0x708[i].x, var_f31, 500.0f + JREG_F(8));
            cLib_addCalc2(&i_this->jnt_pos[i].y, i_this->field_0x708[i].y, var_f31, 500.0f + JREG_F(8));
            cLib_addCalc2(&i_this->jnt_pos[i].z, i_this->field_0x708[i].z, var_f31, 500.0f + JREG_F(8));
            cLib_addCalcAngleS2(&i_this->field_0x7f8[i].x, i_this->field_0x768[i].x, spC, JREG_S(8) + 0x800);
            cLib_addCalcAngleS2(&i_this->field_0x7f8[i].y, i_this->field_0x768[i].y, spC, JREG_S(8) + 0x800);
        }
    } else {
        i_this->field_0x840 = actor->current.pos;
        i_this->field_0x84c = actor->shape_angle;

        for (int i = 1; i < 8; i++) {
            i_this->jnt_pos[i] = i_this->field_0x708[i];
            i_this->field_0x7f8[i] = i_this->field_0x768[i];
        }
    }

    if (!i_this->isPiece) {
        J3DModel* model = i_this->modelMorf->getModel();

        mDoMtx_stack_c::transS(i_this->field_0x840.x, i_this->field_0x840.y, i_this->field_0x840.z);
        mDoMtx_stack_c::YrotM(i_this->field_0x84c.y);
        mDoMtx_stack_c::XrotM(i_this->field_0x84c.x);
        mDoMtx_stack_c::ZrotM(i_this->field_0x768[0].z);
        mDoMtx_stack_c::scaleM(i_this->size * (i_this->field_0x6c8[0] + i_this->field_0x6e8[0]), i_this->field_0x6b0 * (i_this->size * (i_this->field_0x6c8[0] - i_this->field_0x6e8[0])), i_this->size * i_this->field_0x830);
        mDoMtx_stack_c::ZrotM(-i_this->field_0x768[0].z);
        mDoMtx_stack_c::transM(0.0f, TREG_F(3), 100.0f + TREG_F(4));
        model->setBaseTRMtx(mDoMtx_stack_c::get());

        sp58.set(0.0f, 60.0f + VREG_F(1), VREG_F(2));
        mDoMtx_stack_c::multVec(&sp58, &i_this->field_0x708[0]);

        f32 btk_frame = 9.0f - (12.0f * (i_this->size - 0.25f));
        if (btk_frame < 0.0f) {
            btk_frame = 0.0f;
        }
        if (btk_frame > 9.0f) {
            btk_frame = 9.0f;
        }

        i_this->pbtk->setFrame(btk_frame);
        i_this->modelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
        i_this->modelMorf->modelCalc();
    } else {
        J3DModel* model = i_this->pieceModelMorf->getModel();

        mDoMtx_stack_c::transS(actor->current.pos.x, actor->current.pos.y, actor->current.pos.z);
        mDoMtx_stack_c::YrotM(actor->shape_angle.y + (i_this->counter * -400));

        f32 temp_f27 = (0.5f / i_this->field_0x6b0) * (1.0f + ((0.007f + NREG_F(16)) * (i_this->timers[1] * cM_ssin(i_this->counter * (ZREG_S(1) + 8000)))));
        mDoMtx_stack_c::scaleM((1.08f + KREG_F(7)) * temp_f27, i_this->field_0x6b0, temp_f27);
        mDoMtx_stack_c::YrotM(i_this->counter * 400);
        model->setBaseTRMtx(mDoMtx_stack_c::get());

        i_this->pieceModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
        i_this->pieceModelMorf->modelCalc();
    }

    actor->eyePos = actor->current.pos;
    actor->eyePos.y += 60.0f * i_this->size;

    actor->attention_info.position = actor->eyePos;
    actor->attention_info.position.y += 100.0f * i_this->size;

    static int cc_idx[] = {1, 3, 4, 6};
    static f32 cc_size[] = {0.7f, 1.0f, 1.0f, 0.7f};

    static u16 key_eno[] = {0x827A, 0x827B};

    for (int i = 0; i < 4; i++) {
        if (i_this->type == TYPE_RARE) {
            for (int j = 0; j < 2; j++) {
                if (!i_this->isPiece) {
                    i_this->field_0xfb0[i][j] = dComIfGp_particle_set(i_this->field_0xfb0[i][j], key_eno[j], &i_this->field_0x708[cc_idx[i]], NULL, NULL);
                } else if (i == 0) {
                    i_this->field_0xfb0[0][j] = dComIfGp_particle_set(i_this->field_0xfb0[0][j], key_eno[j], &actor->current.pos, NULL, NULL);
                }
            }
        }

        i_this->ccSph[i].SetC(i_this->field_0x708[cc_idx[i]]);
        i_this->ccSph[i].SetR((120.0f + BREG_F(12)) * (i_this->size * cc_size[i]));
        dComIfG_Ccsp()->Set(&i_this->ccSph[i]);

        if (i_this->field_0xf88 != 0) {
            i_this->ccSph[i].OnAtSetBit();
            i_this->field_0xf88 = 0;
        } else {
            i_this->ccSph[i].OffAtSetBit();
        }

        if (i_this->invulernabilityTimer != 0) {
            i_this->ccSph[i].OffTgSetBit();
        } else {
            i_this->ccSph[i].OnTgSetBit();
        }

        if (cc_co_ON) {
            i_this->ccSph[i].OnCoSetBit();
        } else {
            i_this->ccSph[i].OffCoSetBit();
        }
    }

    static f32 asp[] = {500.0f, 400.0f, 300.0f, 200.0f, 100.0f};
    static f32 asp2[] = {3500.0f, 3000.0f, 2500.0f, 2000.0f, 1500.0f};

    i_this->field_0x828 += (s16)(asp2[i_this->sizetype] + (i_this->field_0x82c * asp[i_this->sizetype]));

    for (int i = 0; i < 8; i++) {
        if (i_this->action != ACTION_FAIL) {
            i_this->field_0x768[i].z = i_this->field_0x828 + (i * (ZREG_S(5) + 8000));
            i_this->field_0x6e8[i] = 0.05f + (0.01f * i_this->field_0x82c);
        } else {
            i_this->field_0x768[i].z = 0;
            i_this->field_0x6e8[i] = 0.0f;
        }
    }

    cLib_addCalc0(&i_this->field_0x82c, 0.1f, 0.2f);

    if (i_this->field_0xfd4 != 0) {
        eff_set(i_this, &i_this->field_0x708[3], (2.0f + TREG_F(12)) * i_this->size);
        i_this->field_0xfd4 = 0;
    }
}

/* 8079DBE4-8079DBE8 000064 0004+00 0/0 0/0 0/0 .bss             boss */
// unused, unknown type
static void* boss;

/* 8079DC3C-8079DC90 0000BC 0054+00 1/2 0/0 0/0 .bss             col_d */
static cXyz col_d[] = {
    /* Green  */ cXyz(117, 170, 90),
    /* Red    */ cXyz(140, 50, 0),
    /* Blue   */ cXyz(0, 80, 120),
    /* Yellow */ cXyz(150, 130, 10),
    /* Purple */ cXyz(60, 50, 80),
    /* Gold   */ cXyz(255, 255, 150),
    /* Black  */ cXyz(25, 25, 25),
};

/* 8079BD14-8079BEF0 0032B4 01DC+00 2/2 0/0 0/0 .text            col_set__FP11e_sm2_classSc */
static void col_set(e_sm2_class* i_this, s8 i_immediate) {
    if (i_immediate) {
        i_this->color_R = col_d[i_this->type].x;
        i_this->color_G = col_d[i_this->type].y;
        i_this->color_B = col_d[i_this->type].z;
    } else if (l_HIO.color_debug_ON) {
        cLib_addCalc2(&i_this->color_R, l_HIO.color_debug_R, 1.0f, 2.0f);
        cLib_addCalc2(&i_this->color_G, l_HIO.color_debug_G, 1.0f, 2.0f);
        cLib_addCalc2(&i_this->color_B, l_HIO.color_debug_B, 1.0f, 2.0f);
    } else {
        cLib_addCalc2(&i_this->color_R, col_d[i_this->type].x, 1.0f, 2.0f);
        cLib_addCalc2(&i_this->color_G, col_d[i_this->type].y, 1.0f, 2.0f);
        cLib_addCalc2(&i_this->color_B, col_d[i_this->type].z, 1.0f, 2.0f);
    }
}

/* 8079BEF0-8079C120 003490 0230+00 2/1 0/0 0/0 .text            daE_SM2_Execute__FP11e_sm2_class */
static int daE_SM2_Execute(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;

    if (l_HIO.unk_0x7 != 0) {
        i_this->sizetype = l_HIO.unk_0x4;
    }

    f32 size_step = 0.01f * size_get(i_this->sizetype);
    cLib_addCalc2(&i_this->size, size_get(i_this->sizetype), 0.1f, size_step);
    col_set(i_this, FALSE);

    i_this->counter++;

    for (int i = 0; i < 3; i++) {
        if (i_this->timers[i] != 0) {
            i_this->timers[i]--;
        }
    }

    if (i_this->invulernabilityTimer != 0) {
        i_this->invulernabilityTimer--;
    }

    if (i_this->combine_off_timer != 0) {
        i_this->combine_off_timer--;
    }

    action(i_this);

    if (i_this->field_0x83e != 0) {
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        camera_class* camera = dComIfGp_getCamera(0);
        cXyz start;
        cXyz end;

        i_this->field_0x83e--;

        start.x = camera->lookat.eye.x;
        start.y = camera->lookat.eye.y;
        start.z = camera->lookat.eye.z;

        end = actor->current.pos;
        end.y += 20.0f;

        dBgS_LinChk linchk;
        linchk.Set(&start, &end, actor);
        if (dComIfG_Bgsp().LineCross(&linchk)) {
            sm2_delete(i_this);
            return 1;
        }
    }

    f32 effsize_n = 5.0f * i_this->size;
    cXyz effsize(effsize_n, effsize_n, effsize_n);
    setMidnaBindEffect((fopEn_enemy_c*)actor, &i_this->sound, &actor->eyePos, &effsize);

    if (actor->home.pos.y - actor->current.pos.y > 5000.0f) {
        fopAcM_delete(actor);
        
        int bitsw = (fopAcM_GetParam(actor) & 0xFF000000) >> 0x18;
        if (bitsw != 0xFF) {
            dComIfGs_onSwitch(bitsw, fopAcM_GetRoomNo(actor));
        }
    }

    return 1;
}

/* 8079C120-8079C128 0036C0 0008+00 1/0 0/0 0/0 .text            daE_SM2_IsDelete__FP11e_sm2_class
 */
static int daE_SM2_IsDelete(e_sm2_class* i_this) {
    return 1;
}

/* 8079C128-8079C184 0036C8 005C+00 1/0 0/0 0/0 .text            daE_SM2_Delete__FP11e_sm2_class */
static int daE_SM2_Delete(e_sm2_class* i_this) {
    fopAc_ac_c* actor = &i_this->enemy;
    fpc_ProcID id = fopAcM_GetID(actor);
    dComIfG_resDelete(&i_this->phase, "E_sm2");

    if (actor->heap != NULL) {
        i_this->modelMorf->stopZelAnime();
        i_this->pieceModelMorf->stopZelAnime();
    }

    return 1;
}

/* 8079C184-8079C438 003724 02B4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_sm2_class* a_this = (e_sm2_class*)i_this;

    a_this->modelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_sm2", 8), NULL, NULL, NULL, 2, 1.0f, 0, -1, &a_this->sound, 0, 0x11000284);
    if (a_this->modelMorf == NULL || a_this->modelMorf->getModel() == NULL) {
        return 0;
    }

    if (!a_this->invisModel.create(a_this->modelMorf->getModel(), 1)) {
        return 0;
    }

    a_this->modelMorf->getModel()->setUserArea((u32)a_this);

    for (u16 i = 0; i < a_this->modelMorf->getModel()->getModelData()->getJointNum(); i++) {
        if (i >= 1) {
            a_this->modelMorf->getModel()->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }
    }

    a_this->pbtk = new mDoExt_btkAnm();
    if (a_this->pbtk == NULL) {
        return 0;
    }

    if (!a_this->pbtk->init(a_this->modelMorf->getModel()->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("E_sm2", 0xB), 1, 0, 0.0f, 0, -1)) {
        return 0;
    }

    a_this->pieceModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_sm2", 5), NULL, NULL, NULL, 0, 1.0f, 0, -1, &a_this->sound, 0, 0x11000084);
    if (a_this->pieceModelMorf == NULL || a_this->pieceModelMorf->getModel() == NULL) {
        return 0;
    }

    if (!a_this->pieceInvisModel.create(a_this->pieceModelMorf->getModel(), 1)) {
        return 0;
    }

    return 1;
}

/* 8079C480-8079CB28 003A20 06A8+00 1/0 0/0 0/0 .text            daE_SM2_Create__FP10fopAc_ac_c */
static int daE_SM2_Create(fopAc_ac_c* i_this) {
    e_sm2_class* a_this = (e_sm2_class*)i_this;
    fopAcM_SetupActor(i_this, e_sm2_class);

    OS_REPORT("E_SM2//////////////E_SM2 SET 0 !!\n");

    int phase_state = dComIfG_resLoad(&a_this->phase, "E_sm2");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_SM2 PARAM %x\n", fopAcM_GetParam(i_this));
        int swbit = (fopAcM_GetParam(i_this) & 0xFF000000) >> 0x18;
        if (swbit != 0xFF && dComIfGs_isSwitch(swbit, fopAcM_GetRoomNo(i_this))) {
            return cPhs_ERROR_e;
        }
    
        a_this->field_0x5b4 = fopAcM_GetParam(i_this) & 0xF;
        if (a_this->field_0x5b4 == 0xF) {
            a_this->field_0x5b4 = 0;
        }
    
        a_this->type = (fopAcM_GetParam(i_this) & 0xF0) >> 4;
        if (a_this->type == 0xF) {
            a_this->type = TYPE_GREEN;
        }
    
        if (!dComIfGs_isItemFirstBit(fpcNm_ITEM_ARMOR) && a_this->type == TYPE_GREEN) {
            return cPhs_ERROR_e;
        }
    
        if (a_this->field_0x5b4 < 10) {
            if (strcmp(dComIfGp_getStartStageName(), "T_ENEMY") == 0) {
                a_this->type = cM_rndF(6.999f);
            }
        }
    
        if (a_this->type == TYPE_RANDOM) {
            int num = (g_Counter.mCounter0 & 7);
            if (num == 0) {
                a_this->type = TYPE_RARE;
            } else if (num <= 4) {
                a_this->type = TYPE_RED;
            } else {
                a_this->type = TYPE_BLUE;
            }
        }
    
        if (a_this->type == TYPE_RARE && checkItemGet(fpcNm_ITEM_CHUCHU_RARE, 1)) {
            if (cM_rndF(1.0f) <= 0.5f) {
                a_this->type = TYPE_RED;
            } else {
                a_this->type = TYPE_BLUE;
            }
        }
    
        col_set(a_this, 1);

        a_this->sizetype = (fopAcM_GetParam(i_this) & 0xFF00) >> 8;
        if (a_this->sizetype == 0xFF || a_this->field_0x5b4 == 1 || a_this->field_0x5b4 == 2) {
            a_this->sizetype = 0;
        }
        if (a_this->sizetype > 3) {
            a_this->sizetype = 3;
        }

        a_this->field_0x5b6 = (fopAcM_GetParam(i_this) & 0xFF0000) >> 0x10;
        if (a_this->field_0x5b6 == 0xFF) {
            a_this->field_0x5b6 = 3;
        }

        a_this->field_0x5b8 = i_this->home.angle.z & 0xFF;
        i_this->shape_angle.z = 0;
        i_this->current.angle.z = 0;
        a_this->size = size_get(a_this->sizetype);
    
        OS_REPORT("E_SM2//////////////E_SM2 SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, 0x20D0)) {
            OS_REPORT("//////////////E_SM2 SET NON !!\n");
            return cPhs_ERROR_e;
        }
    
        OS_REPORT("//////////////E_SM2 SET 2 !!\n");

        a_this->sound.init(&i_this->current.pos, &i_this->current.pos, 3, 1);
        a_this->sound.setEnemyName("E_sm2");
        a_this->atInfo.mpSound = &a_this->sound;

        a_this->counter = cM_rndF(65536.0f);
        a_this->field_0x840 = i_this->current.pos;
        a_this->field_0x84c = i_this->current.angle;

        for (int i = 0; i < 8; i++) {
            a_this->field_0x708[i] = i_this->current.pos;
            a_this->jnt_pos[i] = i_this->current.pos;
            a_this->field_0x6c8[i] = 1.0f;
        }

        i_this->health = 100;
        i_this->field_0x560 = 100;

        fopAcM_SetMtx(i_this, a_this->modelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(i_this, -1000.0f, -600.0f, -1000.0f);
        fopAcM_SetMax(i_this, 1000.0f, 600.0f, 1000.0f);

        a_this->acch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this, 1, &a_this->acchcir, fopAcM_GetSpeed_p(i_this), NULL, NULL);
        a_this->acchcir.SetWall(50.0f, 20.0f);

        cc_stts_init(a_this);

        static dCcD_SrcSph cc_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xdafbfdff, 0x3}, 0x75}}, // mObj
                {dCcD_SE_SOFT_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0xa0}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
            } // mSphAttr
        };

        for (int i = 0; i < 4; i++) {
            a_this->ccSph[i].Set(cc_sph_src);
            a_this->ccSph[i].SetStts(&a_this->ccStts);
        }

        a_this->combine_actor_pid = -1;

        if (a_this->field_0x5b4 == 10) {
            a_this->action = ACTION_ATTACK;
            a_this->mode = 10;
            a_this->invulernabilityTimer = 20;
            a_this->field_0x830 = 0.1f;
            a_this->field_0xfd4 = 1;

            if (strcmp(dComIfGp_getStartStageName(), "D_SB01") == 0) {
                a_this->field_0x83e = 30;
            }
        } else if (a_this->field_0x5b4 == 11) {
            a_this->action = ACTION_ATTACK;
            a_this->mode = 20;
            a_this->invulernabilityTimer = 20;
            a_this->field_0x830 = 0.1f;
            a_this->field_0xfd4 = 1;

            if (strcmp(dComIfGp_getStartStageName(), "D_SB01") == 0) {
                a_this->field_0x83e = 30;
            }
        } else if (a_this->field_0x5b4 == 1) {
            a_this->action = ACTION_ROOF;
        } else if (a_this->field_0x5b4 == 2) {
            a_this->action = ACTION_ROOF;
            a_this->is_roof = TRUE;
        } else {
            a_this->action = ACTION_NORMAL_MOVE;
            a_this->timers[0] = cM_rndF(20.0f);
            a_this->combine_off_timer = 100.0f + cM_rndF(100.0f);
        }

        i_this->gravity = -5.0f;
        a_this->color_alpha = 1.0f;
        a_this->field_0x6b0 = 1.0f;

        daE_SM2_Execute(a_this);
    }

    return phase_state;
}

/* 8079DA6C-8079DA8C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SM2_Method */
static actor_method_class l_daE_SM2_Method = {
    (process_method_func)daE_SM2_Create,
    (process_method_func)daE_SM2_Delete,
    (process_method_func)daE_SM2_Execute,
    (process_method_func)daE_SM2_IsDelete,
    (process_method_func)daE_SM2_Draw,
};

/* 8079DA8C-8079DABC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SM2 */
extern actor_process_profile_definition g_profile_E_SM2 = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SM2,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_sm2_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  128,                    // mPriority
  &l_daE_SM2_Method,      // sub_method
  0x00040120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES
