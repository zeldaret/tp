/**
 * @file d_a_fr.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_fr.h"
#include "SSystem/SComponent/c_lib.h"
#include "c/c_damagereaction.h"
#include "d/actor/d_a_mg_fish.h"
#include "d/actor/d_a_obj_lp.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "f_op/f_op_kankyo_mng.h"

/* 805198EC-8051994C 0000EC 0060+00 1/1 0/0 0/0 .text            __ct__10daFr_HIO_cFv */
daFr_HIO_c::daFr_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 10.0f;
    field_0xc = 20.0f;
    field_0x10 = -5.0f;
    field_0x14 = 300.0f;
    field_0x18 = 300.0f;
    field_0x1c = 15.0f;
    field_0x20 = 20.0f;
    field_0x24 = 5.0f;
    field_0x28 = 6.0f;
}

/* 8051994C-805199F4 00014C 00A8+00 7/7 0/0 0/0 .text            anm_init__FP8fr_classifUcf */
static void anm_init(fr_class* i_this, int i_index, f32 i_morf, u8 i_mode, f32 i_speed) {
    i_this->mMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("Fr", i_index),
    i_mode, i_morf, i_speed, 0.0f, -1.0f, NULL);
}

/* 805199F4-80519AB8 0001F4 00C4+00 1/0 0/0 0/0 .text            daFr_Draw__FP8fr_class */
static int daFr_Draw(fr_class* i_this) {
    fopAc_ac_c* actor = i_this;

    J3DModel* model = i_this->mMorf->getModel();

    g_env_light.settingTevStruct(0, &actor->current.pos, &actor->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &actor->tevStr);

    i_this->mBtkAnm->entry(model->getModelData());
    i_this->mMorf->entryDL();

    if (!i_this->field_0x5ec) {
        dComIfGd_setSimpleShadow(&actor->current.pos, i_this->mAcch.GetGroundH(),
            (10.0f + TREG_F(8)) * actor->scale.x, i_this->mAcch.m_gnd, 0, 1.0f,
            dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80519AB8-80519B14 0002B8 005C+00 1/1 0/0 0/0 .text            sibuki_set__FP8fr_class */
static void sibuki_set(fr_class* i_this) {
    fopAc_ac_c* actor = i_this;

    cXyz sp18 = actor->current.pos;
    sp18.y = i_this->field_0x5f0;
    fopKyM_createWpillar(&sp18, actor->scale.x * 0.3f, 0);
}

/* 80519B14-80519B60 000314 004C+00 1/1 0/0 0/0 .text            s_wd_sub__FPvPv */
static void* s_wd_sub(void* param_1, void* param_2) {
    (void)param_2;
    if (fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_OBJ_LP) {
        return param_1;
    }

    return NULL;
}

/* 80519B60-80519D28 000360 01C8+00 1/1 0/0 0/0 .text            wd_check__FP8fr_class */
static wd_ss* wd_check(fr_class* i_this) {
    fopAc_ac_c* actor = i_this;

    obj_lp_class* mLilyPad = (obj_lp_class*)fpcM_Search(s_wd_sub, i_this);
    if (mLilyPad) {
        wd_ss* mWdSs = mLilyPad->mWdSs;
        cXyz unkXyz1;
        for (int i = 0; i < mLilyPad->field_0xad98; i++, mWdSs++) {
            unkXyz1 = mWdSs->field_0x10 - actor->current.pos;
            if (unkXyz1.abs() < mWdSs->field_0x3c * (22.0f + KREG_F(11))) {
                return mWdSs;
            }
        }
    }

    return NULL;
}

/* 80519D28-80519E24 000528 00FC+00 4/4 0/0 0/0 .text            way_bg_check__FP8fr_class */
static BOOL way_bg_check(fr_class* i_this) {
    // NONMATCHING
    cXyz sp24;
    cXyz sp18;
    cXyz sp0c;

    sp24 = i_this->current.pos;
    sp24.y += 20.0f;

    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    sp0c.x = 0.0f;
    sp0c.y = 0.0f;
    sp0c.z = 50.0f;
    MtxPosition(&sp0c, &sp18);
    sp18 += sp24;

    dBgS_LinChk dStack_84;
    dStack_84.Set(&sp24, &sp18, i_this);

    if (dComIfG_Bgsp().LineCross(&dStack_84)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 8051BC10-8051BC14 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool l_initHIO;

/* 8051BC20-8051BC4C 000018 002C+00 9/9 0/0 0/0 .bss             l_HIO */
static daFr_HIO_c l_HIO;

/* 80519E24-8051A0D8 000624 02B4+00 1/2 0/0 0/0 .text            fr_normal__FP8fr_class */
static void fr_normal(fr_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* actor = i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    cXyz sp18;
    cXyz sp0c;
    switch (i_this->field_0x5d4) {
        case 0:
            i_this->field_0x5d4 += (s16)1;
            anm_init(i_this, 11, 5.0f, 2, cM_rndF(0.3f) + 0.8f);
            i_this->field_0x5dc[0] = cM_rndF(50.0f) + 20.0f;
            i_this->speedF = 0.0f;
        case 1:
            if (!i_this->field_0x5dc[0]) {
                if ((int)i_this->mMorf->getFrame() == 14) {
                    i_this->field_0x5d4++;
                    anm_init(i_this, 7, 5.0f, 0, 2.0f);
                }
            }
            break;
        case 2:
            if (i_this->mMorf->isStop()) {
                anm_init(i_this, 8, 1.0f, 0, 1.0f);
                i_this->speedF = l_HIO.field_0x8 + cM_rndFX(l_HIO.field_0x8 * 0.5f);
                i_this->speed.y = l_HIO.field_0xc + cM_rndFX(l_HIO.field_0xc * 0.5f);

                if (way_bg_check(i_this)) {
                    i_this->current.angle.y += 0x8000;
                } else {
                    i_this->field_0x5e8 = l_HIO.field_0x14;
                    f32 x = i_this->home.pos.x + cM_rndFX(i_this->field_0x5e8) - i_this->current.pos.x;
                    f32 z = i_this->home.pos.z + cM_rndFX(i_this->field_0x5e8) - i_this->current.pos.z;
                    cLib_addCalcAngleS2(&i_this->current.angle.y, cM_atan2s(x, z), 1, 0x2000 + TREG_S(2));
                }

                i_this->field_0x5d4++;
            }
            break;
        case 3:
            if (i_this->mAcch.ChkGroundHit() || i_this->field_0x5ce) {
                i_this->field_0x5d4++;
                anm_init(i_this, 9, 1.0f, 0, 2.0f);
                i_this->speedF = 0.0f;
            }
            break;
        case 4:
            if (i_this->mMorf->isStop()) {
                i_this->field_0x5d4 = 0;
            }
    }
}

/* 8051A0D8-8051A318 0008D8 0240+00 1/2 0/0 0/0 .text            fr_away__FP8fr_class */
static void fr_away(fr_class* i_this) {
    fopAc_ac_c* actor = i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    cXyz sp14;
    cXyz sp08;
    switch (i_this->field_0x5d4) {
        case 0:
            i_this->field_0x5d4 += (s16)1;
            i_this->speedF = 0.0f;
            anm_init(i_this, 7, 3.0f, 0, 4.0f);
            break;
        case 1:
            if (i_this->mMorf->isStop()) {
                anm_init(i_this, 8, 1.0f, 0, 1.0f);
                i_this->speedF = l_HIO.field_0x1c + cM_rndFX(l_HIO.field_0x1c * 0.5f);
                i_this->speed.y = l_HIO.field_0x20 + cM_rndFX(l_HIO.field_0x20 * 0.5f);

                if (way_bg_check(i_this)) {
                    i_this->current.angle.y += 0x8000;
                } else {
                    cLib_addCalcAngleS2(&i_this->current.angle.y, 
                        fopAcM_searchPlayerAngleY(i_this) + 0x8000 + (s16)cM_rndFX(8000.0f), 1,
                        0x2000 + TREG_S(2));
                }

                i_this->field_0x5d4++;
            }
            break;
        case 2:
            if (i_this->mAcch.ChkGroundHit() || i_this->field_0x5ce != 0) {
                i_this->field_0x5d4++;
                anm_init(i_this, 9, 1.0f, 0, 4.0f);
                i_this->speedF = 0.0f;
            }
            break;
        case 3:
            if (i_this->mMorf->isStop()) {
                i_this->field_0x5d4 = 0;
                if (i_this->field_0x5d8 > (l_HIO.field_0x18 + 200.0f)) {
                    i_this->field_0x5d2 = 0;
                }
            }
    }
}

/* 8051A318-8051A558 000B18 0240+00 1/1 0/0 0/0 .text            fr_s_normal__FP8fr_class */
static void fr_s_normal(fr_class* i_this) {
    fopAc_ac_c* actor = i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    cXyz sp18;
    cXyz sp0c;
    switch (i_this->field_0x5d4) {
        case 0:
            i_this->field_0x5d4++;
            anm_init(i_this, 10, 5.0f, 2, cM_rndF(0.3f) + 1.5f);
            i_this->field_0x5cc = 0;
            i_this->field_0x5dc[0] = cM_rndF(100.0f) + 50.0f;
            if (i_this->speedF > l_HIO.field_0x24) {
                i_this->speedF = l_HIO.field_0x24;
            }
            break;
        case 1:
            if ((int)i_this->mMorf->getFrame() >= 10) {
                if ((int)i_this->mMorf->getFrame() <= 25) {
                    cLib_addCalc2(&i_this->speedF, l_HIO.field_0x24, 1.0f, l_HIO.field_0x24 * 0.2f);
                    if ((int)i_this->mMorf->getFrame() >= 10) {
                        if ((int)i_this->mMorf->getFrame() <= 15 && (s8)i_this->field_0x5cc == 0) {
                            if (way_bg_check(i_this)) {
                                i_this->current.angle.y += 0x8000;
                            } else {
                                i_this->field_0x5e8 = l_HIO.field_0x14;

                                sp0c.x = i_this->home.pos.x + cM_rndFX(i_this->field_0x5e8) - i_this->current.pos.x;
                                sp0c.z = i_this->home.pos.z + cM_rndFX(i_this->field_0x5e8) - i_this->current.pos.z;
                                cLib_addCalcAngleS2(&i_this->current.angle.y, cM_atan2s(sp0c.x, sp0c.z), 1, 0x2000 + TREG_S(2));
                            }

                            i_this->field_0x5cc = 1;
                        }
                    }

                    if ((int)i_this->mMorf->getFrame() < 20) {
                        return;
                    } 
                    i_this->field_0x5cc = 0;
                    return;
                }
            }

            cLib_addCalc0(&i_this->speedF, 1.0f, l_HIO.field_0x24 * 0.05f);
            if (i_this->field_0x5dc[0] == 0) {
                i_this->field_0x5d2 = 0x1e;
                i_this->field_0x5d4 = 0;
            }
    }
}

/* 8051A558-8051A620 000D58 00C8+00 1/1 0/0 0/0 .text            fr_s_wait__FP8fr_class */
static void fr_s_wait(fr_class* i_this) {
    fopAc_ac_c* actor = i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    cXyz sp14;
    cXyz sp08;
    switch (i_this->field_0x5d4) {
        case 0:
            i_this->field_0x5d4++;
            anm_init(i_this, 10, 30.0f, 2, 0.0f);
            i_this->field_0x5dc[0] = cM_rndF(300.0f) + 100.0f;
        case 1:
            i_this->mMorf->setFrame(13.0f);
            cLib_addCalc0(&i_this->speedF, 1.0f, 0.15f);
            if (i_this->field_0x5dc[0] == 0) {
                i_this->field_0x5d2 = 20;
                i_this->field_0x5d4 = 0;
            };
    }

}

/* 8051A620-8051A820 000E20 0200+00 1/1 0/0 0/0 .text            fr_s_away__FP8fr_class */
static void fr_s_away(fr_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* actor = i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    cXyz sp14;
    cXyz sp08;
    switch (i_this->field_0x5d4) {
        case 0:
            i_this->field_0x5d4++;
            anm_init(i_this, 10, 5.0f, 2, cM_rndF(0.3f) + 2.0f);
            i_this->field_0x5cc = 0;
            break;
        case 1:
            if ((int)i_this->mMorf->getFrame() >= 10) {
                if ((int)i_this->mMorf->getFrame() >= 25) {
                    cLib_addCalc2(&i_this->speedF, l_HIO.field_0x28, 1.0f, l_HIO.field_0x28 * 0.2f);
                    if ((int)i_this->mMorf->getFrame() >= 10) {
                        if ((int)i_this->mMorf->getFrame() <= 15 && (s8)i_this->field_0x5cc == 0) {
                            if (way_bg_check(i_this)) {
                                i_this->current.angle.y += 0x8000;
                            } else {
                                cLib_addCalcAngleS2(&i_this->current.angle.y,
                                    (s16)(fopAcM_searchPlayerAngleY(i_this) + (s16)cM_rndFX(8000.0f)) + 0x8000,
                                    1, 0x2000 + TREG_S(2));
                            }

                            if (i_this->field_0x5d8 > l_HIO.field_0x18 + 200.0f) {
                                i_this->field_0x5d2 = 20;
                                i_this->field_0x5d4 = 0;
                            }

                            i_this->field_0x5cc = 1;
                        }
                    }

                    if ((int)i_this->mMorf->getFrame() < 20) {
                        return;
                    }

                    i_this->field_0x5cc = 0;
                    return;
                }
            }

            cLib_addCalc0(&i_this->speedF, 1.0f, l_HIO.field_0x28 * 0.05f);
    }
}

/* 8051A820-8051A904 001020 00E4+00 1/1 0/0 0/0 .text            fr_eat__FP8fr_class */
static void fr_eat(fr_class* i_this) {
    fopAc_ac_c* this_actor = i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    cXyz sp14;
    cXyz sp08;
    fopAc_ac_c* actor = fopAcM_SearchByID(i_this->field_0x5f8);
    if (!actor) {
        fopAcM_delete(i_this);
    } else {
        switch (i_this->field_0x5d4) {
        case 0:
            i_this->field_0x5d4++;
            anm_init(i_this, 10, 20.0f, 2, 0.0f);
            i_this->field_0x5dc[0] = 20;
        case 1:
            i_this->mMorf->setFrame(0.0f);
            // not sure if this cast is right
            i_this->current.pos = ((mg_fish_class*)actor)->field_0x638;

            if (i_this->field_0x5dc[0] == 0) {
                fopAcM_delete(i_this);
            }
        }
    }
}

/* 8051A904-8051AA9C 001104 0198+00 2/2 0/0 0/0 .text            swim_on__FP8fr_class */
static void swim_on(fr_class* i_this) {
    if (i_this->field_0x5ec == 0) {
        i_this->field_0x5d2 = 0;
        i_this->field_0x5d4 = 0;
    } else {
        i_this->current.pos.y = i_this->field_0x5f0;
        i_this->gravity = 0.0f;
        i_this->speed.y = 0.0f;

        f32 fVar3 = (0.5f + BREG_F(6)) * cM_ssin(i_this->field_0x5d0 * (1500 + BREG_S(5))) - i_this->scale.x * 10.0f * 1.33f;

        s16 sVar2;
        if (i_this->field_0x5d2 == 0x1e) {
            sVar2 = (cM_ssin(i_this->field_0x5d0 * (700 + BREG_S(3))) * (700 + BREG_S(4)) + -(5000 + BREG_S(7)));
            fVar3 -= (3.0f + BREG_F(4)) * i_this->scale.x * 1.33f;
        } else {
            sVar2 = 0;
        }

        cLib_addCalc2(&i_this->field_0x5f4, fVar3, 0.1f, 1.0f);
        cLib_addCalcAngleS2(&i_this->shape_angle.x, sVar2, 16, 0x100);

        i_this->shape_angle.z = cM_ssin(i_this->field_0x5d0 * (600 + BREG_S(1))) * (500 + BREG_S(2));

        if (((i_this->field_0x994 == -1 || !daPy_py_c::checkNowWolf()) &&
            i_this->field_0x5d2 != 0x28) && i_this->field_0x5d8 < l_HIO.field_0x18) {
            i_this->field_0x5d2 = 0x28;
            i_this->field_0x5d4 = 0;
        }
    }
}

/* 8051AA9C-8051AC2C 00129C 0190+00 1/1 0/0 0/0 .text            swim_off__FP8fr_class */
static void swim_off(fr_class* i_this) {
    fopAc_ac_c* this_actor = i_this;

    cLib_addCalc0(&i_this->field_0x5f4, 0.1f, 1.0f);
    i_this->shape_angle.z = 0;

    if (i_this->mAcch.ChkGroundHit() || i_this->field_0x5ce != 0) {
        i_this->shape_angle.x = 0;
    } else {
        i_this->shape_angle.x = i_this->speed.y * (-500.0f + TREG_F(9));
        if (i_this->shape_angle.x > 0x1000) {
            i_this->shape_angle.x = 0x1000;
        } else if (i_this->shape_angle.x < -0x2000) {
            i_this->shape_angle.x = -0x2000;
        }
    }

    if (i_this->field_0x5ec) {
        i_this->field_0x5d2 = 20;
        i_this->field_0x5d4 = 0;
        swim_on(i_this);
        sibuki_set(i_this);
        i_this->speedF *= 0.4f;
        mDoAud_seStart(Z2SE_AL_UKI_OUT_WATER, &i_this->current.pos, 0, 0);
    } else if (((i_this->field_0x994 == -1 || !daPy_py_c::checkNowWolf()) && i_this->field_0x5d2 != 5) && i_this->field_0x5d8 < l_HIO.field_0x18) {
        i_this->field_0x5d2 = 5;
        i_this->field_0x5d4 = 0;
    }
}

/* 8051AC2C-8051AD04 00142C 00D8+00 1/1 0/0 0/0 .text            fr_message__FP8fr_class */
static void fr_message(fr_class* i_this) {
    fopAc_ac_c* this_actor = i_this;

    switch (i_this->field_0x5d4) {
        case 0:
            anm_init(i_this, 11, 5.0f, 2, cM_rndF(0.3f) + 0.8f);
            i_this->field_0x5d4++;
        case 1:
        default:
            cLib_addCalc0(&i_this->speedF, 1.0f, 2.0f);
            cLib_addCalcAngleS2(&i_this->current.angle.y, fopAcM_searchPlayerAngleY(i_this), 2, 0x1000);
    
            if (i_this->field_0x5d8 > 400.0f) {
                i_this->field_0x5d2 = 0;
                i_this->field_0x5d4 = 0;
            }
    }
}

/* 8051AD04-8051B04C 001504 0348+00 2/1 0/0 0/0 .text            action__FP8fr_class */
static void action(fr_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* this_actor = i_this;

    cXyz sp30;
    cXyz sp24;

    char cVar4 = 0;
    i_this->gravity = l_HIO.field_0x10;
    i_this->field_0x991 = 0;
    switch (i_this->field_0x5d2) {
    case 0:
        fr_normal(i_this);
        i_this->field_0x991 = 1;
        break;
    case 5:
        fr_away(i_this);
        i_this->field_0x991 = 1;
        break;
    case 10:
        fr_message(i_this);
        i_this->field_0x991 = 2;
        break;
    case 20:
        fr_s_normal(i_this);
        cVar4 = 1;
        break;
    case 30:
        fr_s_wait(i_this);
        cVar4 = 1;
        break;
    case 40:
        fr_s_away(i_this);
        cVar4 = 1;
        break;
    case 50:
        fr_eat(i_this);
        cVar4 = -2;
        break;
    case 15:
        cVar4 = -1;
        break;
    }

    if (((i_this->field_0x991 == 1 && i_this->field_0x994 != -1) && daPy_py_c::checkNowWolf()) && i_this->field_0x5d8 < 300.0f) {
        i_this->field_0x5d2 = 10;
        i_this->field_0x5d4 = 0;
    }

    if (cVar4 != -2) {
        cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->current.angle.y, 2, 0x4000);
        cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
        sp24.x = 0.0f;
        sp24.y = 0.0f;
        sp24.z = i_this->speedF;
        MtxPosition(&sp24, &sp30);
        i_this->speed.x = sp30.x;
        i_this->speed.z = sp30.z;
        i_this->speed.y += i_this->gravity;

        i_this->current.pos += (i_this->speed * i_this->scale.x) * 1.33f;

        if (i_this->speed.y < -80.0f) {
            i_this->speed.y = -80.0f;
        }
        
        sp24 = i_this->current.pos;
        sp24.y += 200.0f;
        f32 fVar6 = i_this->mAcch.GetGroundH();
        dBgS_ObjGndChk_Spl(cStack_78);
        i_this->field_0x5ec = 0;
        bool bVar2 = false;

        if (wd_check(i_this)) {
            bVar2 = true;
        } else {
            cStack_78.SetPos(&sp24);
            i_this->field_0x5f0 = dComIfG_Bgsp().GroundCross(&cStack_78);

            if (fVar6 < i_this->field_0x5f0 && i_this->current.pos.y <= i_this->field_0x5f0 + YREG_F(0)) {
                i_this->current.pos.y = i_this->field_0x5f0 + YREG_F(0);
                i_this->field_0x5ec = 1;
            }
        }

        if (cVar4 == 0) {
            swim_off(i_this);
        } else if (cVar4 == 1) {
            swim_on(i_this);
            fopAcM_riverStream(&i_this->current.pos, &i_this->field_0x5fc, &i_this->field_0x600, 0.35f);
        }

        i_this->mAcch.CrrPos(dComIfG_Bgsp());
        i_this->field_0x5ce = 0;
        if ((bVar2 && i_this->speed.y <= 0.0f) && i_this->current.pos.y <= i_this->field_0x5f0 + i_this->scale.x * (5.0f + YREG_F(11))) {
            i_this->current.pos.y = i_this->field_0x5f0 + i_this->scale.x * (5.0f + YREG_F(11));
            i_this->speed.y = 0.0f;
            i_this->field_0x5ce = 1;
        }
    }
}

/* 8051B04C-8051B170 00184C 0124+00 1/1 0/0 0/0 .text            message__FP8fr_class */
static int message(fr_class* i_this) {
    if (i_this->field_0x992) {
        i_this->field_0x5e4 = 10;
        if (i_this->mMsgFlow.doFlow(i_this, NULL, 0)) {
            dComIfGp_event_reset();
            i_this->field_0x992 = 0;
        }
        return 1;
    }

    if (dComIfGp_event_runCheck() && i_this->eventInfo.checkCommandTalk()) {
        i_this->mMsgFlow.init(i_this, i_this->field_0x994, 0, NULL);
        i_this->field_0x992 = 1;
        OS_REPORT("////////FR MSG FNO %d\n", i_this->field_0x994);
    }

    if ((i_this->field_0x991 == 2 && i_this->field_0x994 != -1) && daPy_py_c::checkNowWolf()) {
        fopAcM_OnStatus(i_this, 0);
        cLib_onBit<u32>(i_this->attention_info.flags, 10);
        i_this->eventInfo.onCondition(1);
    } else {
        fopAcM_OffStatus(i_this, 0);
#if DEBUG
        cLib_offBit<u32>(i_this->attention_info.flags, 0x42);
#else
        cLib_offBit<u32>(i_this->attention_info.flags, 0xa);
#endif
    }

    return 0;
}

/* 8051B170-8051B354 001970 01E4+00 2/1 0/0 0/0 .text            daFr_Execute__FP8fr_class */
static int daFr_Execute(fr_class* i_this) {
    if (cDmrNowMidnaTalk()) {
        return 1;
    }

    cXyz sp18(0.0f, 0.0f, 0.0f);
    i_this->field_0x5d8 = fopAcM_searchPlayerDistance(i_this);
    i_this->field_0x5d0++;
    for (int i = 0; i < 4; i++) {
        if (i_this->field_0x5dc[i]) {
            i_this->field_0x5dc[i]--;
        }
    }

    if (i_this->field_0x5e4) {
        i_this->field_0x5e4--;
    }

    action(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y + i_this->field_0x5f4, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM((s16)i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM((s16)i_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(i_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(i_this->scale.x, i_this->scale.x, i_this->scale.x);

    J3DModel* model = i_this->mMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mMorf->play(&i_this->eyePos, 0, 0);
    i_this->mBtkAnm->setFrame(i_this->field_0x5cd);
    i_this->mMorf->modelCalc();

    i_this->eyePos = i_this->current.pos;
    i_this->eyePos.y += 10.0f;
    i_this->attention_info.position = i_this->eyePos;
    i_this->attention_info.position.y += 20.0f;
    message(i_this);
    
    return 1;
}

/* 8051B354-8051B35C 001B54 0008+00 1/0 0/0 0/0 .text            daFr_IsDelete__FP8fr_class */
static int daFr_IsDelete(fr_class* i_this) {
    return true;
}

/* 8051B35C-8051B3B0 001B5C 0054+00 1/0 0/0 0/0 .text            daFr_Delete__FP8fr_class */
static int daFr_Delete(fr_class* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);

    dComIfG_resDelete(&i_this->mPhase, "Fr");
    if (i_this->field_0x9e4) {
        l_initHIO = false;
    }

    mDoHIO_DELETE_CHILD(l_HIO.field_0x4);

    return 1;
}

/* 8051B3B0-8051B550 001BB0 01A0+00 1/1 0/0 0/0 .text            useHeapIfrt__FP10fopAc_ac_c */
static int useHeapIfrt(fopAc_ac_c* a_this) {
    // NONMATCHING
    fr_class* i_this = (fr_class*)a_this;

    i_this->mMorf = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("Fr", 14), NULL, NULL,
        (J3DAnmTransform*)dComIfG_getObjectRes("Fr", 11), 2, 
        1.0f, 0, -1, 1, NULL, 0x80000, 0x11000084);

    if (!i_this->mMorf || !i_this->mMorf->getModel()) {
        return 0;
    }

    i_this->mBtkAnm = new mDoExt_btkAnm();
    if (!i_this->mBtkAnm) {
        return 0;
    } else if (i_this->mBtkAnm->init(i_this->mMorf->getModel()->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Fr", 17),
            1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}

/* 8051B598-8051B820 001D98 0288+00 1/0 0/0 0/0 .text            daFr_Create__FP10fopAc_ac_c */
static int daFr_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    fr_class* i_this = (fr_class*)a_this;
    fopAcM_SetupActor(i_this, fr_class);
    
    int phase_state = dComIfG_resLoad(&i_this->mPhase, "Fr");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("FR PARAM %x\n", fopAcM_GetParam(i_this));

        i_this->field_0x5b4 = fopAcM_GetParam(i_this);
        i_this->current.angle.x = 0;
        i_this->field_0x994 = i_this->current.angle.z;
        i_this->shape_angle.z = 0;
        i_this->current.angle.z = 0;
        OS_REPORT("FR MSGFLOWNO %d\n", i_this->field_0x994);
        OS_REPORT("FR//////////////FR SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(i_this, useHeapIfrt, 0x14e0)) {
            OS_REPORT("//////////////FR SET NON !!\n");
            return cPhs_ERROR_e;
        }
            
        OS_REPORT("//////////////FR SET 2 !!\n");

        if (!l_initHIO) {
            i_this->field_0x9e4 = 1;
            l_initHIO = true;
            l_HIO.field_0x4 = -1;
        }

        i_this->field_0x5d2 = 0;
        i_this->scale.x = 0.75f;

        if (!strcmp(dComIfGp_getStartStageName(), "F_SP127")) {
            i_this->scale.x = 0.4f;
        }

        fopAcM_SetMtx(i_this, i_this->mMorf->getModel()->getBaseTRMtx());

        i_this->mAcch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this),
            i_this, 1, &i_this->mAcchCir, fopAcM_GetSpeed_p(i_this), NULL, NULL);
        i_this->mAcchCir.SetWall(20.0f, 20.0f);

        i_this->field_0x5cd = i_this->field_0x5b4;
        if (i_this->field_0x5cd > 3) {
            i_this->field_0x5cd = 0;
        }
        i_this->field_0x5e8 = 500.0f;
        i_this->field_0x5d0 = cM_rndF(65536.0f);

        daFr_Execute(i_this);
    }

    return phase_state;
}

/* 8051BB60-8051BB80 -00001 0020+00 1/0 0/0 0/0 .data            l_daFr_Method */
static actor_method_class l_daFr_Method = {
    (process_method_func)daFr_Create,
    (process_method_func)daFr_Delete,
    (process_method_func)daFr_Execute,
    (process_method_func)daFr_IsDelete,
    (process_method_func)daFr_Draw,
};

/* 8051BB80-8051BBB0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_FR */
extern actor_process_profile_definition g_profile_FR = {
  fpcLy_CURRENT_e,       // mLayerID
  8,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_FR,               // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(fr_class),      // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  235,                   // mPriority
  &l_daFr_Method,        // sub_method
  0x08040100,            // mStatus
  fopAc_NPC_e,           // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};
