/**
 * @file d_a_e_s1.cpp
 *
 */

#include "d/actor/d_a_e_s1.h"
#include "SSystem/SComponent/c_math.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/d_s_play.h"

UNK_REL_DATA

#include "f_op/f_op_actor_enemy.h"

/* 8077AB8C-8077ABF8 0000EC 006C+00 1/1 0/0 0/0 .text            __ct__12daE_S1_HIO_cFv */
daE_S1_HIO_c::daE_S1_HIO_c() {
    field_0x4 = -1;
    mBaseSize = 1.3f;
    mMoveSpeed = 4.0f;
    mDashSpeed = 20.0f;
    field_0x18 = 300.0f;
    mFallSEWaitTime = 20;
    mAllDeadWaitTime = 100;
    mReactionDist = 700.0f;
    mReactionAngle = 90.0f;
    mReactionTime = 20;
    mInvincible = 0;
}

/* 8077ABF8-8077ACA4 000158 00AC+00 12/12 0/0 0/0 .text            anm_init__FP10e_s1_classifUcf */
static void anm_init(e_s1_class* i_this, int i_resNo, f32 i_morf, u8 i_attr, f32 i_speed) {
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes("E_S2", i_resNo);
    i_this->mpMorf->setAnm(pbck, i_attr, i_morf, i_speed, 0.0f, -1.0f);
    i_this->mAnm = i_resNo;
}

/* 8077ACA4-8077AE38 000204 0194+00 1/0 0/0 0/0 .text            daE_S1_Draw__FP10e_s1_class */
static int daE_S1_Draw(e_s1_class* i_this) {
    if (i_this->field_0x306c != 0) {
        return 1;
    }

    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    J3DModel* var_r27 = i_this->mpMorf->getModel();

    g_env_light.settingTevStruct(2, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(var_r27, &a_this->tevStr);

    dComIfGd_setListDark();
    i_this->mpMorf->entryDL();

    if (i_this->field_0x69a != 0) {
        cXyz sp24;
        sp24.set(a_this->current.pos.x, a_this->current.pos.y + 100.0f, a_this->current.pos.z);

        i_this->mShadowKey = dComIfGd_setShadow(
            i_this->mShadowKey, 1, var_r27, &sp24, BREG_F(0x13) + 1300.0f, 0.0f,
            a_this->current.pos.y, i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd, &i_this->tevStr,
            0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    GXColor color;
    color.r = JREG_S(0) + 5;
    color.g = JREG_S(1) + 10;
    color.b = JREG_S(2) + 10;
    color.a = 0xFF;

    i_this->mLineMat.update(16, color, &i_this->tevStr);
    dComIfGd_set3DlineMatDark(&i_this->mLineMat);

    dComIfGd_setList();
    return 1;
}

/* 8077AE38-8077AEFC 000398 00C4+00 3/3 0/0 0/0 .text            pl_check__FP10e_s1_classf */
static BOOL pl_check(e_s1_class* i_this, f32 i_check_range) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    f32 var_f31 = player->current.pos.x - i_this->home.pos.x;
    f32 var_f30 = player->current.pos.z - i_this->home.pos.z;

    if (JMAFastSqrt(var_f31 * var_f31 + var_f30 * var_f30) < i_check_range) {
        s16 var_r28 = i_this->shape_angle.y - fopAcM_searchPlayerAngleY(i_this);
        if (var_r28 < 0x7000 && var_r28 > -0x7000 &&
            !fopAcM_otherBgCheck(i_this, dComIfGp_getPlayer(0)))
        {
            return true;
        }
    }

    return false;
}

/* 8077AEFC-8077AF40 00045C 0044+00 4/4 0/0 0/0 .text            pl_at_check__FP10e_s1_classf */
static BOOL pl_at_check(e_s1_class* i_this, f32 i_check_range) {
    return fopAcM_searchPlayerDistance(i_this) < i_check_range;
}

UNK_BSS(1109)
UNK_BSS(1107)
UNK_BSS(1105)
UNK_BSS(1104)
UNK_BSS(1099)
UNK_BSS(1097)
UNK_BSS(1095)
UNK_BSS(1094)
UNK_BSS(1057)
UNK_BSS(1055)
UNK_BSS(1053)
UNK_BSS(1052)
UNK_BSS(1014)
UNK_BSS(1012)
UNK_BSS(1010)

static u8 data_8078137c;
static u8 data_8078137d;
static u8 data_8078137e;

/* 8078138C-807813B8 000054 002C+00 8/11 0/0 0/0 .bss             l_HIO */
static daE_S1_HIO_c l_HIO;

/* 8077AF40-8077B1A8 0004A0 0268+00 1/1 0/0 0/0 .text            path_check__FP10e_s1_class */
static BOOL path_check(e_s1_class* i_this) {
    static u8 check_index[255];
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    dBgS_LinChk linchk;
    cXyz spF4;
    cXyz sp100;

    spF4 = a_this->current.pos;
    spF4.y += WREG_F(0) + 10.0f;

    dStage_dPnt_c* point = i_this->mpPath->m_points;
    for (int i = 0; i < i_this->mpPath->m_num; i++, point++) {
        if (i < 255) {
            sp100.x = point->m_position.x;
            sp100.y = point->m_position.y + 10.0f;
            sp100.z = point->m_position.z;
            linchk.Set(&spF4, &sp100, a_this);

            if (!dComIfG_Bgsp().LineCross(&linchk)) {
                check_index[i] = 1;
            } else {
                check_index[i] = 0;
            }
        }
    }

    f32 var_f30;
    f32 var_f29;
    f32 var_f28;
    f32 var_f31 = 100.0f;
    u8 sp8 = false;

    for (int i = 0; i < 100; i++) {
        point = i_this->mpPath->m_points;
        for (int j = 0; j < i_this->mpPath->m_num; j++, point++) {
            if (j < 255 && check_index[j]) {
                var_f30 = a_this->current.pos.x - point->m_position.x;
                var_f29 = a_this->current.pos.y - point->m_position.y;
                var_f28 = a_this->current.pos.z - point->m_position.z;

                if (JMAFastSqrt((var_f28 * var_f28) + ((var_f30 * var_f30) + (var_f29 * var_f29))) <
                    var_f31)
                {
                    i_this->field_0x5c0 = j - i_this->field_0x5c1;

                    if (i_this->field_0x5c0 >= (i_this->mpPath->m_num & 0xFF)) {
                        i_this->field_0x5c0 = i_this->mpPath->m_num;
                    } else if (i_this->field_0x5c0 < 0) {
                        i_this->field_0x5c0 = 0;
                    }

                    sp8 = true;
                    break;
                }
            }
        }

        if (sp8) {
            break;
        }

        var_f31 += 50.0f;
    }

    if (!sp8) {
        return false;
    }

    if (cM_rndF(1.0f) < 0.5f) {
        i_this->field_0x5c1 = 1;
    } else {
        i_this->field_0x5c1 = -1;
    }

    return true;
}

/* 8077B1A8-8077B274 000708 00CC+00 1/1 0/0 0/0 .text            path_check2__FP10e_s1_class */
static void path_check2(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    dBgS_LinChk linchk;
    cXyz sp8C;
    cXyz sp98;

    sp8C = a_this->current.pos;
    sp8C.y += WREG_F(2) + 20.0f;

    sp98 = i_this->field_0x5c4;
    sp98.y += WREG_F(3) + 10.0f;

    linchk.Set(&sp8C, &sp98, a_this);
    if (dComIfG_Bgsp().LineCross(&linchk)) {
        i_this->mAction = 7;
        i_this->mMode = 0;
    }
}

/* 807814B8-807814BC 000180 0004+00 1/2 0/0 0/0 .bss             same_id */
static int same_id;

/* 807814BC-807814C0 000184 0004+00 1/2 0/0 0/0 .bss             fail_id */
static int fail_id;

/* 8077B274-8077B318 0007D4 00A4+00 1/1 0/0 0/0 .text            s_last_sub__FPvPv */
static void* s_last_sub(void* i_actor, void* i_data) {
    fopAc_ac_c* a_actor = (fopAc_ac_c*)i_actor;
    fopAc_ac_c* a_data = (fopAc_ac_c*)i_data;

    if (fopAcM_IsActor(a_actor) && fopAcM_GetName(a_actor) == PROC_E_S1) {
        e_s1_class* e_data = (e_s1_class*)a_data;
        e_s1_class* e_actor = (e_s1_class*)a_actor;

        if (e_actor != e_data && e_actor->field_0x5b6 == e_data->field_0x5b6) {
            same_id++;

            if (e_actor->mAction == 10 || e_actor->mAction == 9) {
                fail_id++;
            }
        }
    }

    return NULL;
}

/* 8077B318-8077B928 000878 0610+00 1/1 0/0 0/0 .text            damage_check__FP10e_s1_class */
static void damage_check(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    if (i_this->field_0x6a8 == 0) {
        i_this->mCcStts.Move();

        for (int i = 0; i <= 2; i++) {
            if (l_HIO.mInvincible) {
                i_this->mCcSph[i].OnTgShield();
            } else {
                i_this->mCcSph[i].OffTgShield();
            }

            if (i_this->mCcSph[i].ChkTgHit()) {
                i_this->field_0x6a8 = 6;
                i_this->mAtInfo.mpCollider = i_this->mCcSph[i].GetTgHitObj();

                if (player->getCutType() != 0x2C && player->getCutType() != 0x2D &&
                    i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK))
                {
                    if (!player->onWolfEnemyHangBite(a_this)) {
                        return;
                    }

                    OS_REPORT("S1 PL BITE HANG \n");
                    i_this->mAction = 8;
                    i_this->mMode = 0;
                    i_this->field_0x6a8 = 1000;
                    i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1F);
                    return;
                }

                at_power_check(&i_this->mAtInfo);
                OS_REPORT("E_S1 HIT POW %d\n", i_this->mAtInfo.mAttackPower);

                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                    i_this->field_0x6a0[3] = 30;
                } else {
                    i_this->field_0x6a0[3] = 0;
                }

                if (l_HIO.mInvincible) {
                    i_this->mAction = 6;

                    if (i_this->mAtInfo.mAttackPower < 20) {
                        i_this->field_0x6a0[0] = 15;
                        i_this->field_0x6ac = TREG_F(0) + 30.0f;
                    } else {
                        i_this->field_0x6a0[0] = 25;
                        i_this->field_0x6ac = TREG_F(1) + 65.0f;
                    }
                } else {
                    if (i_this->mAtInfo.mAttackPower >= 60 && daPy_py_c::i_checkNowWolf()) {
                        i_this->mAtInfo.field_0x18 = 36;
                    } else {
                        i_this->mAtInfo.field_0x18 = 0;
                    }

                    cc_at_check(a_this, &i_this->mAtInfo);

                    if (i_this->mAtInfo.mpCollider->ChkAtType(
                            AT_TYPE_MIDNA_LOCK | AT_TYPE_10000000 | AT_TYPE_WOLF_CUT_TURN |
                            AT_TYPE_WOLF_ATTACK))
                    {
                        i_this->field_0x6a8 = 20;
                    } else {
                        i_this->field_0x6a8 = 10;
                    }

                    if (i_this->mAtInfo.mAttackPower < 20) {
                        i_this->field_0x6ac = TREG_F(0) + 20.0f;
                    } else if (i_this->mAtInfo.mAttackPower >= 60 && daPy_py_c::i_checkNowWolf()) {
                        i_this->field_0x6ac = 0.0f;
                        a_this->health = 0;

                        cXyz sp30;
                        cXyz sp3C;

                        MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(2), *calc_mtx);

                        sp30.set(0.0f, 0.0f, 0.0f);
                        MtxPosition(&sp30, &sp3C);

                        cXyz sp48(l_HIO.mBaseSize, l_HIO.mBaseSize, l_HIO.mBaseSize);
                        csXyz sp50(player->shape_angle);
                        sp50.y -= 0x8000;

                        dComIfGp_particle_set(0x8248, &sp3C, &sp50, &sp48);
                        dComIfGp_particle_set(0x8249, &sp3C, &sp50, &sp48);
                        dComIfGp_particle_set(0x824A, &a_this->current.pos, &sp50, &sp48);
                    } else {
                        i_this->field_0x6ac = TREG_F(1) + 60.0f;
                    }

                    if (!data_8078137d) {
                        if (i_this->mAtInfo.mAttackPower >= 60 && daPy_py_c::i_checkNowWolf()) {
                            i_this->mAction = 9;
                            i_this->field_0x6a8 = 10;
                            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_DEATH, -1);
                        } else if (a_this->health <= 0) {
                            if (i_this->mAtInfo.mHitBit & 0x880) {
                                OS_REPORT("////////// S1 TURN CUT FAIL ..\n");
                                i_this->mAction = 9;
                                i_this->field_0x6a8 = 10;
                                i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_DEATH, -1);
                            } else {
                                fail_id = 0;
                                same_id = 0;

                                fpcM_Search(s_last_sub, a_this);

                                OS_REPORT("////////// SAME ID %d\n", same_id);
                                OS_REPORT("////////// FAIL ID %d\n", fail_id);

                                if (i_this->field_0x5b6 == 0xFF || same_id != fail_id) {
                                    i_this->mAction = 9;
                                    i_this->field_0x6a8 = 10;
                                    i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_DEATH, -1);
                                }
                            }
                        } else {
                            i_this->mAction = 5;
                            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_DAMAGE, -1);
                        }
                    } else if (a_this->health <= 0) {
                        i_this->mAction = 10;
                        i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_DEATH, -1);
                    } else {
                        i_this->mAction = 5;
                        i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_DAMAGE, -1);
                    }
                }

                i_this->mMode = 0;
                a_this->speedF = 0.0f;
                i_this->field_0x6b0 = fopAcM_searchPlayerAngleY(a_this);
                i_this->field_0x69a = 1;
                break;
            }
        }

        for (int i = 0; i < 3; i++) {
            if (a_this->health <= 1) {
                i_this->mCcSph[i].SetTgHitMark(CcG_Tg_UNK_MARK_3);
            }
        }
    }
}

/* 8077B928-8077BC8C 000E88 0364+00 1/1 0/0 0/0 .text            e_s1_wait__FP10e_s1_class */
static void e_s1_wait(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp54;
    cXyz sp60;

    f32 var_f31 = 0.0f;
    s16 var_r25 = 0;
    int sp48 = i_this->mpMorf->getFrame();

    sp54 = a_this->home.pos - a_this->current.pos;

    f32 var_f30 = JMAFastSqrt(sp54.x * sp54.x + sp54.z * sp54.z);

    switch (i_this->mMode) {
    case 0:
        if (i_this->field_0x6a0[0] == 0) {
            if (i_this->mpPath != NULL && path_check(i_this)) {
                i_this->mAction = 7;
                i_this->mMode = 0;
            } else {
                sp60.x = a_this->home.pos.x + cM_rndFX(300.0f);
                sp60.y = a_this->home.pos.y;
                sp60.z = a_this->home.pos.z + cM_rndFX(300.0f);

                sp54 = sp60 - a_this->current.pos;

                s16 var_r27 = cM_atan2s(sp54.x, sp54.z) - a_this->current.angle.y;
                if (var_r27 > 0x3000) {
                    var_r27 = 0x3000;
                } else if (var_r27 < -0x3000) {
                    var_r27 = -0x3000;
                }

                i_this->field_0x5d0 = a_this->current.angle.y + var_r27;
                i_this->field_0x6a0[0] = cM_rndF(100.0f) + 100.0f;
                i_this->mMode = 1;
                anm_init(i_this, 31, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            }
        }
        break;
    case 1:
        var_r25 = 0x100;
        if (i_this->field_0x6a0[0] == 0 || var_f30 > i_this->field_0x3068) {
            i_this->mMode = 0;
            i_this->field_0x6a0[0] = cM_rndF(100.0f) + 100.0f;
            anm_init(i_this, 30, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        break;
    case 2:
        i_this->mMode = 3;
        anm_init(i_this, 31, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        /* fallthrough */
    case 3:
        var_r25 = 0x100;

        sp54.x = a_this->home.pos.x - a_this->current.pos.x;
        sp54.z = a_this->home.pos.z - a_this->current.pos.z;
        i_this->field_0x5d0 = cM_atan2s(sp54.x, sp54.z);

        if (JMAFastSqrt(sp54.x * sp54.x + sp54.z * sp54.z) < i_this->field_0x3068 - 50.0f) {
            i_this->mMode = 1;
        }
        break;
    }

    if (i_this->mAnm == 31 && ((sp48 >= 0 && sp48 <= 18) || (sp48 >= 27 && sp48 <= 45))) {
        var_f31 = l_HIO.mMoveSpeed;
    }

    cLib_addCalc2(&a_this->speedF, var_f31, 1.0f, 1.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5d0, 8, var_r25);

    if (i_this->field_0x6a0[2] == 0 && pl_check(i_this, i_this->field_0x3064)) {
        i_this->mAction = 2;
        i_this->mMode = 0;
    }
}

/* 8077BC8C-8077BEAC 0011EC 0220+00 1/1 0/0 0/0 .text            e_s1_roof__FP10e_s1_class */
static void e_s1_roof(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    s8 var_r29 = false;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 28, 1.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        /* fallthrough */
    case 1:
        var_r29 = true;
        if (i_this->field_0x5b7 != 0xFF) {
            s32 room_no = dComIfGp_roomControl_getStayNo();
            if (dComIfGs_isSwitch(i_this->field_0x5b7, room_no)) {
                i_this->mMode = 2;
            }
        } else if (fopAcM_searchPlayerDistanceXZ(a_this) < i_this->field_0x5b5 * 100.0f) {
            i_this->mMode = 2;
        }
        break;
    case 2:
        i_this->mSound.startCreatureSound(Z2SE_EN_NS_FALLTREE, 0, -1);
        i_this->mMode = 3;
        i_this->field_0x6a0[0] = l_HIO.mFallSEWaitTime;
        /* fallthrough */
    case 3:
        if (i_this->field_0x6a0[0] == 0) {
            i_this->field_0x69a = 1;

            if (i_this->mAcch.i_ChkGroundHit()) {
                anm_init(i_this, 19, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                i_this->mMode = 4;
                i_this->mSound.startCreatureSound(Z2SE_EN_NS_DOSA, 0, -1);
            }
        } else {
            var_r29 = true;
        }
        break;
    case 4:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = 0;
            i_this->mMode = 0;
        }
        break;
    }

    if (var_r29) {
        a_this->speed.y = 0.0f;
        a_this->current.pos.y = a_this->home.pos.y;
    }
}

/* 8077BEAC-8077BFFC 00140C 0150+00 1/1 0/0 0/0 .text            e_s1_fight_run__FP10e_s1_class */
static void e_s1_fight_run(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp14;
    cXyz sp8;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 8, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mpMorf->setFrame(cM_rndF(10.0f));
        i_this->mMode = 1;
        /* fallthrough */
    case 1:
        cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 4, 0x1000);
        cLib_addCalc2(&a_this->speedF, l_HIO.mDashSpeed, 1.0f, l_HIO.mDashSpeed * 0.333f);
        break;
    }

    if (!pl_check(i_this, i_this->field_0x3064 + 50.0f)) {
        i_this->mAction = 0;
        i_this->mMode = 2;
    } else if (pl_at_check(i_this, l_HIO.field_0x18)) {
        i_this->mAction = 3;
        i_this->mMode = 0;
    }
}

/* 8077BFFC-8077C2F8 00155C 02FC+00 1/1 0/0 0/0 .text            e_s1_fight__FP10e_s1_class */
static void e_s1_fight(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp28;
    cXyz sp1C;

    int temp_r29 = i_this->mpMorf->getFrame();
    f32 temp_f31 = 0.0f;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 29, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->field_0x6a0[0] = 30.0f + cM_rndF(30.0f);
        i_this->mMode = 1;
        break;
    case 1:
        if (i_this->field_0x6a0[0] == 0) {
            if (cM_rndF(1.0f) < 0.33329999f) {
                anm_init(i_this, 5, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_ATTACK, -1);
                i_this->field_0x6b8 = 0;
            } else {
                anm_init(i_this, 6, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_ATTACK2, -1);
                i_this->field_0x6b8 = 1;
            }

            i_this->mMode = 2;
        }
        break;
    case 2:
        if (i_this->field_0x6b8 == 0 && temp_r29 >= 21 && temp_r29 <= 30) {
            i_this->field_0x6b9 = 1;

            if (temp_r29 == 21) {
                i_this->mSound.startCreatureSound(Z2SE_EN_NS_UDEHURI, 0, -1);
            }

            if (temp_r29 == 25) {
                i_this->mSound.startCreatureSound(Z2SE_EN_NS_HAND_L, 0, -1);
            }
        } else if (i_this->field_0x6b8 == 1 && temp_r29 >= 25 && temp_r29 <= 33) {
            i_this->field_0x6b9 = 1;

            if (temp_r29 == 25) {
                i_this->mSound.startCreatureSound(Z2SE_EN_NS_UDEHURI, 0, -1);
            }
        }

        if (i_this->mpMorf->isStop()) {
            if (!pl_at_check(i_this, l_HIO.field_0x18 + 10.0f)) {
                i_this->mAction = 2;
            }

            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 4, 0x800);
    cLib_addCalc2(&a_this->speedF, temp_f31, 1.0f, 10.0f);
}

/* 8077C2F8-8077C52C 001858 0234+00 1/1 0/0 0/0 .text            e_s1_bibiri__FP10e_s1_class */
static void e_s1_bibiri(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 26, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f + cM_rndFX(0.1f));
        i_this->mpMorf->setFrame(cM_rndF(15.0f));
        i_this->field_0x6a0[0] = l_HIO.mReactionTime + cM_rndF(10.0f);
        i_this->mMode = 1;
        /* fallthrough */
    case 1:
        if (pl_at_check(i_this, 10.0f + l_HIO.mReactionDist)) {
            if (daPy_getPlayerActorClass()->checkWolfThreat()) {
                i_this->field_0x6a0[0] = l_HIO.mReactionTime + cM_rndF(10.0f);
            }
        }

        if (i_this->field_0x6a0[0] == 0) {
            anm_init(i_this, 27, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mMode = 2;
        }
        break;
    case 2:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = 0;
            i_this->mMode = 2;
        }
        break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 4, 0x1000);
}

/* 8077C52C-8077C5FC 001A8C 00D0+00 1/1 0/0 0/0 .text            e_s1_damage__FP10e_s1_class */
static void e_s1_damage(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp14;
    cXyz sp8;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 7, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mMode = 1;
        break;
    case 1:
        if (i_this->field_0x6a0[3] != 0) {
            i_this->onHeadLockFlg();
        }

        if (i_this->mpMorf->isStop()) {
            i_this->field_0x6ac = 0.0f;
            i_this->mAction = 2;
            i_this->mMode = 0;
        }
        break;
    }
}

/* 8077C5FC-8077C894 001B5C 0298+00 1/1 0/0 0/0 .text            e_s1_path__FP10e_s1_class */
static void e_s1_path(e_s1_class* i_this) {
    cXyz sp14;
    cXyz sp8;
    f32 var_f31 = 0.0f;
    int temp_r26 = i_this->mpMorf->getFrame();

    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        anm_init(i_this, 31, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        /* fallthrough */
    case 1:
        i_this->field_0x5c0 += i_this->field_0x5c1;

        if (i_this->field_0x5c0 >= (i_this->mpPath->m_num & 0xFF)) {
            if (dPath_ChkClose(i_this->mpPath)) {
                i_this->field_0x5c0 = 0;
            } else {
                i_this->field_0x5c1 = -1;
                i_this->field_0x5c0 = (i_this->mpPath->m_num - 2);
            }
        } else if (i_this->field_0x5c0 < 0) {
            i_this->field_0x5c1 = 1;
            i_this->field_0x5c0 = 1;
        }

        dStage_dPnt_c* temp_r28 = &i_this->mpPath->m_points[i_this->field_0x5c0];
        i_this->field_0x5c4.x = temp_r28->m_position.x;
        i_this->field_0x5c4.y = temp_r28->m_position.y;
        i_this->field_0x5c4.z = temp_r28->m_position.z;
        i_this->mMode = 2;
        /* fallthrough */
    case 2:
        if ((temp_r26 >= 12 && temp_r26 <= 27) || (temp_r26 >= 54 && temp_r26 <= 86)) {
            var_f31 = l_HIO.mMoveSpeed;
        }

        sp14.x = i_this->field_0x5c4.x - i_this->current.pos.x;
        sp14.z = i_this->field_0x5c4.z - i_this->current.pos.z;
        i_this->field_0x5d0 = cM_atan2s(sp14.x, sp14.z);

        if (JMAFastSqrt((sp14.x * sp14.x) + (sp14.z * sp14.z)) < 4.0f * l_HIO.mMoveSpeed) {
            i_this->mMode = 3;
            i_this->field_0x6a0[0] = 50.0f + cM_rndF(100.0f);
            anm_init(i_this, 30, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }

        path_check2(i_this);
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x5d0, 8, 0x200);
        break;
    case 3:
        if (i_this->field_0x6a0[0] == 0) {
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, var_f31, 1.0f, 1.0f);

    if (pl_check(i_this, i_this->field_0x3064)) {
        i_this->mAction = 2;
        i_this->mMode = 0;
    }
}

/* 8077C894-8077C938 001DF4 00A4+00 1/1 0/0 0/0 .text            s_down_sub__FPvPv */
static void* s_down_sub(void* i_actor, void* i_data) {
    fopAc_ac_c* a_actor = (fopAc_ac_c*)i_actor;
    fopAc_ac_c* a_data = (fopAc_ac_c*)i_data;

    if (fopAcM_IsActor(a_actor) && fopAcM_GetName(a_actor) == PROC_E_S1) {
        e_s1_class* e_data = (e_s1_class*)a_data;
        e_s1_class* e_actor = (e_s1_class*)a_actor;

        if (e_actor == e_data) {
            return NULL;
        }

        if (e_actor->mAction == 10 && e_actor->mMode == 10 && e_actor->field_0x6a0[1] == 0) {
            return NULL;
        }

        if (e_actor->field_0x5b6 == e_data->field_0x5b6) {
            return i_actor;
        }
    }

    return NULL;
}

/* 8077C938-8077C9D8 001E98 00A0+00 1/1 0/0 0/0 .text            s_fail_sub__FPvPv */
static void* s_fail_sub(void* i_actor, void* i_data) {
    fopAc_ac_c* a_actor = (fopAc_ac_c*)i_actor;
    fopAc_ac_c* a_data = (fopAc_ac_c*)i_data;

    if (fopAcM_IsActor(a_actor) && fopAcM_GetName(a_actor) == PROC_E_S1) {
        e_s1_class* e_data = (e_s1_class*)a_data;
        e_s1_class* e_actor = (e_s1_class*)a_actor;

        if (e_actor == e_data) {
            return NULL;
        }

        if (e_actor->mAction == 10 && e_actor->mMode <= 10) {
            return NULL;
        }

        if (e_actor->field_0x5b6 != e_data->field_0x5b6) {
            return NULL;
        }

        return i_actor;
    }

    return NULL;
}

/* 8077C9D8-8077CA0C 001F38 0034+00 2/2 0/0 0/0 .text            all_fail_check__FP10e_s1_class */
static BOOL all_fail_check(e_s1_class* i_this) {
    return fpcM_Search(s_fail_sub, i_this) == NULL ? TRUE : FALSE;
}

/* 8077CA0C-8077CAA4 001F6C 0098+00 1/1 0/0 0/0 .text            s_allfail_sub__FPvPv */
static void* s_allfail_sub(void* i_actor, void* i_data) {
    fopAc_ac_c* a_actor = (fopAc_ac_c*)i_actor;
    fopAc_ac_c* a_data = (fopAc_ac_c*)i_data;

    if (fopAcM_IsActor(a_actor) && fopAcM_GetName(a_actor) == PROC_E_S1) {
        e_s1_class* e_data = (e_s1_class*)a_data;
        e_s1_class* e_actor = (e_s1_class*)a_actor;

        if (e_actor->field_0x5b6 == e_data->field_0x5b6) {
            e_actor->mAction = 10;
            e_actor->mMode = 11;
            e_actor->field_0x6a0[0] = cM_rndF(10.0f) + 30.0f;
        }
    }

    return NULL;
}

/* 8077CAA4-8077CAD0 002004 002C+00 1/1 0/0 0/0 .text            all_fail__FP10e_s1_class */
static void all_fail(e_s1_class* i_this) {
    fpcM_Search(s_allfail_sub, i_this);
}

/* 8077CAD0-8077CB68 002030 0098+00 1/1 0/0 0/0 .text            s_allwakeup_sub__FPvPv */
static void* s_allwakeup_sub(void* i_actor, void* i_data) {
    fopAc_ac_c* a_actor = (fopAc_ac_c*)i_actor;
    fopAc_ac_c* a_data = (fopAc_ac_c*)i_data;

    if (fopAcM_IsActor(a_actor) && fopAcM_GetName(a_actor) == PROC_E_S1) {
        e_s1_class* e_data = (e_s1_class*)a_data;
        e_s1_class* e_actor = (e_s1_class*)a_actor;

        if (e_actor != e_data && e_actor->field_0x5b6 == e_data->field_0x5b6) {
            e_actor->mMode = 12;

            if (dComIfGp_event_runCheck()) {
                e_actor->field_0x6a0[0] = 50;
            } else {
                e_actor->field_0x6a0[0] = 0;
            }
        }
    }

    return NULL;
}

/* 807814C0-807814C4 000188 0004+00 2/2 0/0 0/0 .bss             s_check */
static int s_check;

/* 807814DC-807814F4 0001A4 0018+00 1/2 0/0 0/0 .bss             s_p */
static cXyz s_p[2] = {
    cXyz(-16500.0f, 0.0f, -100.0f),
    cXyz(-16300.0f, 0.0f, -400.0f),
};

/* 80780FE0-80780FE4 000038 0004+00 1/1 0/0 0/0 .data            s_ya */
static s16 s_ya[2] = {0, 0};

/* 8077CB68-8077CC54 0020C8 00EC+00 1/1 0/0 0/0 .text            s_posrevise_sub__FPvPv */
static void* s_posrevise_sub(void* i_actor, void* i_data) {
    fopAc_ac_c* a_actor = (fopAc_ac_c*)i_actor;
    fopAc_ac_c* a_data = (fopAc_ac_c*)i_data;

    if (fopAcM_IsActor(a_actor) && fopAcM_GetName(a_actor) == PROC_E_S1) {
        e_s1_class* e_data = (e_s1_class*)a_data;
        e_s1_class* e_actor = (e_s1_class*)a_actor;

        if (e_actor != e_data && s_check <= 1) {
            e_actor->current.pos = s_p[s_check];
            e_actor->old.pos = s_p[s_check];
            e_actor->current.angle.y = s_ya[s_check];
            e_actor->shape_angle.y = s_ya[s_check];

            s_check++;
        }
    }

    return NULL;
}

/* 8077CC54-8077CF30 0021B4 02DC+00 1/1 0/0 0/0 .text            e_s1_failwait__FP10e_s1_class */
static void e_s1_failwait(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    i_this->field_0x6a8 = 20;

    switch (i_this->mMode) {
    case 0:
        if (cM_rndF(1.0f) < 0.33329999f) {
            anm_init(i_this, 0xA, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else if (cM_rndF(1.0f) < 0.5f) {
            anm_init(i_this, 0xB, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else {
            anm_init(i_this, 0xC, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        }

        i_this->mMode = 1;
        break;
    case 1:
        if (i_this->mpMorf->checkFrame(9.0f)) {
            i_this->mMode = 2;

            if (i_this->mAnm == 0xA) {
                anm_init(i_this, 0xD, 2.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            } else if (i_this->mAnm == 0xB) {
                anm_init(i_this, 0xE, 2.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            } else {
                anm_init(i_this, 0xF, 2.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            }
        }
        break;
    case 2:
        // TODO: try to fix checkNowWolf here
        if (i_this->mAtInfo.mAttackPower >= 60 &&
            ((daPy_py_c*)dComIfGp_getLinkPlayer())->checkWolf())
        {
            if (daPy_getPlayerActorClass()->getCutType() != 0x36) {
                i_this->mMode = 3;
                i_this->field_0x6a0[0] = (fopAcM_GetID(i_this) & 7);
            }
        } else {
            i_this->mMode = 3;
            i_this->field_0x6a0[0] = 0;
        }
        break;
    case 3:
        if (i_this->field_0x6a0[0] == 0) {
            i_this->mAction = 10;
            i_this->mMode = 1;
            if (dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_FIELD &&
                all_fail_check(i_this))
            {
                if (!dComIfGp_event_runCheck()) {
                    i_this->mDemoMode = 1;
                    anm_init(i_this, 0xA, 2.0f, 0, 1.0f);
                }
            } else if (i_this->mAnm == 0xD) {
                anm_init(i_this, 0xA, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            } else if (i_this->mAnm == 0xE) {
                anm_init(i_this, 0xB, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            } else {
                anm_init(i_this, 0xC, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            }

            i_this->mpMorf->setFrame(10.0f);
        }
        break;
    }
}

/* 8077CF30-8077D448 002490 0518+00 2/1 0/0 0/0 .text            e_s1_fail__FP10e_s1_class */
static void e_s1_fail(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    i_this->field_0x6a8 = 20;
    stage_stag_info_class* staginfo = dComIfGp_getStage()->getStagInfo();

    switch (i_this->mMode) {
    case 0:
        if (cM_rndF(1.0f) < 0.33329999f) {
            anm_init(i_this, 0xA, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else if (cM_rndF(1.0f) < 0.5f) {
            anm_init(i_this, 0xB, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else {
            anm_init(i_this, 0xC, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        }

        if (dStage_stagInfo_GetSTType(staginfo) == ST_FIELD) {
            i_this->mMode = 1;

            if (all_fail_check(i_this) && !dComIfGp_event_runCheck()) {
                i_this->mDemoMode = 1;
                anm_init(i_this, 0xA, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            }
        } else {
            i_this->mMode = 30;
        }
        break;
    case 1:
        if (i_this->mpMorf->checkFrame(25.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_DOSA, 0, -1);
        }

        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 10;
            i_this->field_0x6a0[1] = 0;
        }
        break;
    case 10:
        if (all_fail_check(i_this)) {
            i_this->field_0x6a0[0] = cM_rndF(10.0f) + 30.0f;
            i_this->mMode = 11;

            all_fail(i_this);
        }
        break;
    case 11:
        if (i_this->field_0x6a0[0] == 0) {
            cXyz sp38;
            cXyz sp44;

            MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(2), *calc_mtx);

            sp38.set(0.0f, 0.0f, 0.0f);
            MtxPosition(&sp38, &sp44);

            if (i_this->mDemoMode != 0) {
                i_this->mMode = 20;
            } else {
                fopAcM_delete(a_this);
                fopAcM_createDisappear(a_this, &sp44, 12, 1, 49);
            }

            if (strcmp(dComIfGp_getStartStageName(), "D_MN08") == 0 && i_this->field_0x5b7 != 0xFF)
            {
                dComIfGs_onSwitch(i_this->field_0x5b7, fopAcM_GetRoomNo(a_this));
            }
        }
        break;
    case 12:
        if (i_this->field_0x6a0[0] == 0) {
            if (i_this->mAnm == 10) {
                anm_init(i_this, 0x10, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            } else if (i_this->mAnm == 11) {
                anm_init(i_this, 0x11, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            } else {
                anm_init(i_this, 0x12, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            }

            a_this->health = 50;

            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_AWAKE, -1);

            if (dComIfGp_event_runCheck()) {
                i_this->mMode = 13;
            } else {
                i_this->mMode = 15;
            }
        }
        break;
    case 13:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = 0;
            i_this->mMode = 1;
            i_this->field_0x6a0[0] = 0;
            i_this->field_0x6a0[2] = 40;
        }
        break;
    case 15:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = 0;
            i_this->mMode = 2;
        }
        break;
    case 20:
        if (i_this->field_0x303a == TREG_S(0) + 80) {
            cXyz sp50;
            cXyz sp5C;

            i_this->mMode = 21;
            i_this->field_0x306c = 1;
            fopAcM_createDisappear(a_this, &a_this->eyePos, 12, 2, 49);
        }
        break;
    case 30:
        if (i_this->mpMorf->checkFrame(25.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_DOSA, 0, -1);
        }

        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 11;
            i_this->field_0x6a0[0] = cM_rndF(10.0f) + 30.0f;
        }
        break;
    }
}

/* 8077D448-8077D6A0 0029A8 0258+00 1/1 0/0 0/0 .text            e_s1_shout__FP10e_s1_class */
static void e_s1_shout(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    i_this->field_0x6a8 = 0xA;

    switch (i_this->mMode) {
    case 0:
        a_this->health = 0x32;
        anm_init(i_this, 0x19, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);

        i_this->mMode = 1;
        i_this->field_0x6a0[0] = KREG_S(6) + 10;
        i_this->field_0x6a0[1] = KREG_S(6) + 40;

        i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_SHOUT, -1);

        if (strcmp(dComIfGp_getStartStageName(), "F_SP108") == 0 &&
            !dComIfGs_isSwitch(0xE, fopAcM_GetRoomNo(a_this)))
        {
            i_this->mDemoMode = 0xA;
            a_this->current.pos.set(-16000.0f, 0.0f, -1000.0f);
            a_this->shape_angle.y = 0;
            a_this->current.angle.y = 0;

            s_check = 0;
            fpcM_Search(s_posrevise_sub, i_this);
        }
        break;
    case 1:
        if (i_this->mDemoMode != 0) {
            dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (i_this->field_0x6a0[0] > KREG_S(7) + 5) {
            daPy_getPlayerActorClass()->onNsScream();
        } else {
            daPy_getPlayerActorClass()->onNsScreamAnm();
        }

        if (i_this->field_0x6a0[1] == 1) {
            fpcM_Search(s_allwakeup_sub, i_this);
        }

        if (i_this->mpMorf->isStop()) {
            i_this->mAction = 0;

            if (dComIfGp_event_runCheck()) {
                i_this->field_0x6a0[2] = 150;
                i_this->field_0x6a0[0] = 0;
                i_this->mMode = 1;
            } else {
                i_this->mMode = 2;
            }
        }
        break;
    }

    cLib_addCalc0(&i_this->speedF, 1.0f, 3.0f);
}

/* 8077D6A0-8077D8A8 002C00 0208+00 2/1 0/0 0/0 .text            e_s1_warpappear__FP10e_s1_class */
static void e_s1_warpappear(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    i_this->field_0x6a8 = 20;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 0x13, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 0.0f);
        i_this->mMode = 1;
        /* fallthrough */
    case 1:
        a_this->current.pos.y = a_this->home.pos.y + 50000.0f;
        a_this->speedF = 0.0f;
        a_this->speed.y = 0.0f;
        break;
    case 2:
        i_this->field_0x6a0[0] = 10;
        break;
    case 10:
        if (i_this->field_0x6a0[0] != 0) {
            break;
        }

        if (!i_this->mAcch.i_ChkGroundHit()) {
            break;
        }

        a_this->current = a_this->home;
        a_this->old = a_this->current;
        a_this->speedF = 0.0f;

        i_this->mMode = 11;
        i_this->mSound.startCreatureSound(Z2SE_EN_NS_DOSA, 0, -1);
        /* fallthrough */
    case 11:
        i_this->mMode = 12;
        anm_init(i_this, 0x13, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        break;
    case 12:
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, 30, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 13;
        }
        break;
    case 20:
        i_this->mAction = 0;
        i_this->mMode = 2;
        break;
    }
}

/* 8077D8A8-8077DBB8 002E08 0310+00 1/1 0/0 0/0 .text ke_control__FP10e_s1_classP7s1_ke_sif */
static void ke_control(e_s1_class* i_this, s1_ke_s* i_ke, int param_2, f32 param_3) {
    // NONMATCHING
    cXyz sp4C;
    cXyz sp40;
    int i;

    cXyz* var_r31 = &i_ke->field_0x0[1];
    cXyz* var_r30 = &i_ke->field_0xc0[1];

    sp4C.x = 0.0f;
    sp4C.y = 0.0f;
    sp4C.z = param_3;

    cXyz sp34;
    f32 sp28 = -12.0f + JREG_F(0);
    s16 sp14 = cM_rndF2(65536.0f);

    f32 temp_f26 = 3.0f + JREG_F(8);
    f32 sp2C;
    f32 var_f29;
    f32 temp_f25 = JREG_F(5) + (3.0f + i_this->mAcch.GetGroundH());
    f32 temp_f27 = 0.8f + JREG_F(17);

    for (i = 1; i < 16; i++, var_r31++, var_r30++) {
        f32 sp24 = temp_f26 * cM_ssin((s16)(sp14 + (i * 7000)));
        f32 sp20 = temp_f26 * cM_ssin((s16)(sp14 + 10000 + (i * 6000)));
        f32 temp_f28 = (16 - i) * 0.1f;

        sp34.x = var_r30->x + (sp24 + (i_ke->field_0x180.x * temp_f28));
        sp34.y = var_r30->y + (i_ke->field_0x180.y * temp_f28);
        sp34.z = var_r30->z + (sp20 + (i_ke->field_0x180.z * temp_f28));

        sp2C = sp34.x + (var_r31->x - var_r31[-1].x);
        
        f32 temp_f31;
        f32 temp_f30 = sp34.z + (var_r31->z - var_r31[-1].z);
        
        var_f29 = sp28 + (var_r31->y + sp34.y);
        if (var_f29 < temp_f25) {
            var_f29 = temp_f25;
        }

        temp_f31 = var_f29 - var_r31[-1].y;
        s16 sp18 = (s16)-cM_atan2s(temp_f31, temp_f30);
        s16 sp16 = (s16)cM_atan2s(sp2C, JMAFastSqrt((temp_f31 * temp_f31) + (temp_f30 * temp_f30)));

        cMtx_XrotS(*calc_mtx, sp18);
        cMtx_YrotM(*calc_mtx, sp16);
        MtxPosition(&sp4C, &sp40);
        *var_r30 = *var_r31;

        var_r31->x = var_r31[-1].x + sp40.x;
        var_r31->y = var_r31[-1].y + sp40.y;
        var_r31->z = var_r31[-1].z + sp40.z;

        var_r30->x = temp_f27 * (var_r31->x - var_r30->x);
        var_r30->y = temp_f27 * (var_r31->y - var_r30->y);
        var_r30->z = temp_f27 * (var_r31->z - var_r30->z);
    }
}

/* 8077DBB8-8077DC90 003118 00D8+00 1/1 0/0 0/0 .text
 * ke_move__FP10e_s1_classP19mDoExt_3DlineMat0_cP7s1_ke_sif     */
static void ke_move(e_s1_class* i_this, mDoExt_3DlineMat0_c* i_line, s1_ke_s* i_ke, int param_3,
                    f32 param_4) {
    ke_control(i_this, i_ke, param_3, param_4);

    cXyz* var_r27 = i_line->getPos(param_3);
    f32* var_r29 = i_line->getSize(param_3);

    for (int i = 0; i < 16; i++, var_r27++, var_r29++) {
        *var_r27 = i_ke->field_0x0[i];

        if (i == JREG_S(7) + 14) {
            *var_r29 = (JREG_S(8) + 6) * 0.1f;
        } else if (i < 5) {
            *var_r29 = 3.5f;
        } else {
            *var_r29 = cM_rndF2(1.0f) + 1.8f;
        }
    }
}

/* 8077DC90-8077E070 0031F0 03E0+00 1/1 0/0 0/0 .text            e_s1_wolfbite__FP10e_s1_class */
static void e_s1_wolfbite(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    daPy_py_c* temp_r28 = (daPy_py_c*)dComIfGp_getPlayer(0);
    fopEn_enemy_c* e_this = (fopEn_enemy_c*)a_this;
    i_this->field_0x6a8 = 10;

    cLib_addCalc0(&a_this->speedF, 1.0f, 2.0f);
    i_this->mAcchCir.SetWall(50.0f, 250.0f + nREG_F(11));

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 0x14, 3.0f, 0, 1.0f);
        i_this->mMode = 1;
        i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_HANGED, -1);
        a_this->health -= 5;
        i_this->field_0x6bb = 0;
        break;
    case 1:
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, 0x18, 3.0f, 2, 1.0f);
            i_this->mMode = 2;
        }
        break;
    case 2:
        if (i_this->mAnm == 0x15 && i_this->mpMorf->isStop()) {
            anm_init(i_this, 0x18, 3.0f, 2, 1.0f);
        }

        if (a_this->health <= 0 || e_this->checkWolfBiteDamage()) {
            e_this->offWolfBiteDamage();
            anm_init(i_this, 0x15, 2.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_HANGEDAMAGE, -1);
            a_this->health -= 5;

            if (i_this->health <= 0) {
                temp_r28->offWolfEnemyHangBite();
                if (i_this->field_0x5b6 == 0xFF) {
                    i_this->mAction = 10;
                } else {
                    i_this->mAction = 9;
                }

                i_this->mMode = 0;
                i_this->field_0x6a8 = 10;
                i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_DEATH, -1);
                i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x20);
                return;
            }

            i_this->field_0x6bb = (i_this->field_0x6bb + 1);
            if (i_this->field_0x6bb >= 5) {
                temp_r28->offWolfEnemyHangBite();
                anm_init(i_this, 0x17, 1.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_HANGEDBRUSH2, -1);
                i_this->mMode = 3;
            }

            i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1E);
        }

        if (!temp_r28->checkWolfEnemyBiteAllOwn(a_this)) {
            anm_init(i_this, 0x16, 3.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_HANGEDBRUSH, -1);
            i_this->mMode = 3;
        }
        break;
    case 3:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = 2;
            i_this->mMode = 0;
        }
        break;
    }
}

/* 8077E070-8077E618 0035D0 05A8+00 2/1 0/0 0/0 .text            action__FP10e_s1_class */
static void action(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp64;
    cXyz sp58;

    damage_check(i_this);
    i_this->mAcchCir.SetWall(50.0f, 100.0f);

    s8 spD = true;
    s8 spC = false;
    s8 spB = true;
    s8 spA = true;
    s8 sp9 = false;
    s8 sp8 = false;

    i_this->offHeadLockFlg();

    switch (i_this->mAction) {
    case 0:
        e_s1_wait(i_this);
        spC = true;
        break;
    case 1:
        e_s1_roof(i_this);
        break;
    case 2:
        e_s1_fight_run(i_this);
        spC = true;
        sp8 = true;
        break;
    case 3:
        e_s1_fight(i_this);
        spC = true;
        sp8 = true;
        break;
    case 4:
        e_s1_bibiri(i_this);
        break;
    case 5:
        e_s1_damage(i_this);
        break;
    case 7:
        e_s1_path(i_this);
        break;
    case 8:
        e_s1_wolfbite(i_this);
        break;
    case 9:
        e_s1_failwait(i_this);
        spD = false;
        spA = false;
        sp9 = true;
        break;
    case 11:
        e_s1_shout(i_this);
        spA = false;
        spD = false;
        sp8 = true;
        break;
    case 10:
        e_s1_fail(i_this);
        spD = false;
        spA = false;
        sp9 = true;
        break;
    case 20:
        e_s1_warpappear(i_this);
        spD = false;
        spB = false;
        break;
    }

    if (sp8) {
        i_this->mSound.setLinkSearch(true);
    } else {
        i_this->mSound.setLinkSearch(false);
    }

    if (sp9) {
        dBgS_LinChk sp70;
        cXyz sp4C;
        cXyz sp40;
        cXyz sp34;

        sp40 = a_this->current.pos;
        sp40.y += 30.0f;

        J3DModel* sp24 = i_this->mpMorf->getModel();
        MTXCopy(sp24->getAnmMtx(4), mDoMtx_stack_c::get());
        mDoMtx_stack_c::multVecZero(&sp34);
        sp34.y += 30.0f;

        sp70.Set(&sp40, &sp34, a_this);

        if (dComIfG_Bgsp().LineCross(&sp70)) {
            sp4C = sp40 - sp34;
            mDoMtx_stack_c::YrotS(cM_atan2s(sp4C.x, sp4C.z));

            sp4C.x = 0.0f;
            sp4C.y = 0.0f;
            sp4C.z = 50.0f;
            mDoMtx_stack_c::multVec(&sp4C, &sp58);
            a_this->current.pos += sp58;
        }
    }

    if (data_8078137d == 0 && spA && i_this->field_0x6aa == 0 && i_this->field_0x5b6 != 0xFF && fpcM_Search(s_down_sub, i_this) == NULL) {
        i_this->mAction = 11;
        i_this->mMode = 0;

        daPy_py_c* sp20 = (daPy_py_c*)dComIfGp_getPlayer(0);
        sp20->offWolfEnemyHangBite();
    }

    if (spD) {
        fopAcM_OnStatus(a_this, 0);
        i_this->attention_info.flags = 4;
    } else {
        fopAcM_OffStatus(a_this, 0);
        i_this->attention_info.flags = 0;
    }

    if (spC && (daPy_getPlayerActorClass()->checkWolfBark() || daPy_getPlayerActorClass()->checkWolfThreat()) && pl_at_check(i_this, l_HIO.mReactionDist)) {     
        fopAc_ac_c* sp1C = dComIfGp_getPlayer(0);
        s16 sp10 = sp1C->shape_angle.y - (fopAcM_searchPlayerAngleY(a_this) + 0x8000);
        s16 spE = 182.04f * l_HIO.mReactionAngle;

        if (sp10 < spE && sp10 > (s16)-spE) {
            i_this->mAction = 4;
            i_this->mMode = 0;

            i_this->field_0x6ac = 40.0f + JREG_F(11);
            i_this->field_0x6b0 = fopAcM_searchPlayerAngleY(a_this);
            i_this->mSound.startCreatureVoice(0x700D4, -1);
        }
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 4, 0x2000);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 4, 0x1000);
    cLib_addCalcAngleS2(&a_this->shape_angle.z, a_this->current.angle.z, 4, 0x1000);

    cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
    sp64.x = 0.0f;
    sp64.y = 0.0f;
    sp64.z = a_this->speedF * l_HIO.mBaseSize;
    MtxPosition(&sp64, &sp58);

    a_this->speed.x = sp58.x;
    a_this->speed.z = sp58.z;
    a_this->current.pos += a_this->speed;

    a_this->speed.y += a_this->gravity;
    if (a_this->speed.y < -120.0f) {
        a_this->speed.y = -120.0f;
    }

    if (i_this->field_0x6ac > 0.01f) {
        sp64.x = 0.0f;
        sp64.y = 0.0f;
        sp64.z = -i_this->field_0x6ac;
        cMtx_YrotS(*calc_mtx, i_this->field_0x6b0);
        MtxPosition(&sp64, &sp58);

        a_this->current.pos += sp58;
        cLib_addCalc0(&i_this->field_0x6ac, 1.0f, 7.0f + TREG_F(12));
    }

    if (spB) {
        cXyz* sp18 = i_this->mCcStts.GetCCMoveP();
        if (sp18 != NULL) {
            a_this->current.pos.x += sp18->x;
            a_this->current.pos.y += sp18->y;
            a_this->current.pos.z += sp18->z;
        }
    }
}

/* 8077E618-8077E870 003B78 0258+00 1/1 0/0 0/0 .text            ke_set__FP10e_s1_class */
static void ke_set(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp18;
    cXyz spC;

    cM_initRnd2(12, 123, (fopAcM_GetID(a_this) * 2) + 50);

    MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(4), *calc_mtx);

    for (int i = 0; i < 22; i++) {
        MtxPush();
        cMtx_YrotM(*calc_mtx, (ZREG_S(0) + 0x4000));
        cMtx_XrotM(*calc_mtx, (ZREG_S(1) + (int)cM_rndF2(2000.0f) + 3000));

        static s16 ke_za[] = {
            0xFCE0, 0xFE70, 0x0000, 0x0190, 0x0320, 0xFCE0, 0xFE70,
            0x0000, 0x0190, 0x0320, 0xFCE0, 0xFE70, 0x0000, 0x0190,
            0x0320, 0x04B0, 0xFCE0, 0xFE70, 0x0000, 0x0190, 0x0320,
            0x04B0,
        };

        f32 var_f29;
        f32 var_f31;
        f32 var_f30;
        if (i < 10) {
            cMtx_ZrotM(*calc_mtx, (ZREG_S(2) + 5) * ke_za[i]);

            var_f29 = cM_rndF2(2.25f) + 7.5f;
            var_f31 = cM_rndF2(10.0f) - 5.0f;
            var_f30 = cM_rndF2(20.0f) - 10.0f;
        } else {
            cMtx_ZrotM(*calc_mtx, ((ZREG_S(2) + 5) * ke_za[i]) + 0x8000);

            var_f29 = cM_rndF2(3.0f) + 8.0f;
            var_f31 = cM_rndF2(20.0f) - 10.0f;
            var_f30 = cM_rndF2(30.0f) - 15.0f;
        }

        sp18.set(var_f31, 15.0f + ZREG_F(1), var_f30 + ZREG_F(2));
        MtxPosition(&sp18, &i_this->field_0xe14[i].field_0x0[0]);

        sp18.set(var_f31, 20.0f + (15.0f + ZREG_F(1)) + ZREG_F(4), var_f30 + ZREG_F(2));
        MtxPosition(&sp18, &i_this->field_0xe14[i].field_0x180);

        i_this->field_0xe14[i].field_0x180 -= i_this->field_0xe14[i].field_0x0[0];
        ke_move(i_this, &i_this->mLineMat, &i_this->field_0xe14[i], i, var_f29);

        MtxPull();
    }
}

/* 8077E870-8077EE10 003DD0 05A0+00 2/1 0/0 0/0 .text            demo_camera__FP10e_s1_class */
static void demo_camera(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* spC = dComIfGp_getCamera(0);

    cXyz spC4;
    cXyz spD0;
    cXyz spDC;
    cXyz spE8;

    s8 sp8 = true;

    switch (i_this->mDemoMode) {
    case 1:
        if (!a_this->eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
            a_this->eventInfo.i_onCondition(2);
            return;
        }

        camera->mCamera.Stop();

        i_this->mDemoMode = 2;
        i_this->field_0x303a = 0;
        i_this->field_0x305c = 55.0f;
        i_this->field_0x3054 = 300.0;
        i_this->field_0x3058 = 1200.0f;
        i_this->field_0x3060 = 0.0f;

        camera->mCamera.SetTrimSize(3);
        /* fallthrough */
    case 2:
        mDoMtx_stack_c::YrotS(a_this->shape_angle.y);
        spC4.x = TREG_F(2);
        spC4.y = i_this->field_0x3054;
        spC4.z = i_this->field_0x3058;
        mDoMtx_stack_c::multVec(&spC4, &i_this->field_0x303c);
        i_this->field_0x303c += a_this->current.pos;

        cLib_addCalc2(&i_this->field_0x3054, 30.0f, 0.1f, i_this->field_0x3060 * 270.0f);
        cLib_addCalc2(&i_this->field_0x3058, 750.0f, 0.1f, i_this->field_0x3060 * 850.0f);
        cLib_addCalc2(&i_this->field_0x3060, 0.05f, 1.0f, 0.005f);

        i_this->field_0x3048 = a_this->eyePos;
        i_this->field_0x3048.y += 50.0f;        

        if (i_this->field_0x303a == 137) {
            if (!dComIfGs_isSwitch(i_this->field_0x5b7, fopAcM_GetRoomNo(a_this))) {
                dComIfGs_onSwitch(i_this->field_0x5b7, fopAcM_GetRoomNo(a_this));
                OS_REPORT("S! BITSW %d\n", i_this->field_0x5b7);
                OS_REPORT("S! BITSW %d\n", dComIfGs_isSwitch(i_this->field_0x5b7, fopAcM_GetRoomNo(a_this)));
            }

            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            fopAcM_delete(a_this);
        }
        break;
    case 10:
        if (!a_this->eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
            a_this->eventInfo.i_onCondition(2);
            return;
        }

        camera->mCamera.Stop();

        i_this->mDemoMode = 11;
        i_this->field_0x303a = 0;
        i_this->field_0x305c = 60.0f;
        
        i_this->field_0x3048.set(-16046.0f, 177.0f, -955.0f);
        i_this->field_0x303c.set(-16174.0f, 331.0f, -731.0f);

        camera->mCamera.SetTrimSize(3);
        player->changeOriginalDemo();
        /* fallthrough */
    case 11:
        sp8 = false;
        spC4.set(-15400.0f, 0.0f, 400.0f);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&spC4, 0, 0);

        if (i_this->field_0x303a != 60) {
            break;
        }

        i_this->mDemoMode = 12;
        i_this->field_0x303a = 0;
        i_this->field_0x305c = 45.15f;
        /* fallthrough */
    case 12:
        sp8 = false;
        
        i_this->field_0x3048.set(-40.0f, -39.0f, -68.0f);
        i_this->field_0x3048 += player->attention_info.position;

        i_this->field_0x303c.set(218.0f, -3.0f, 78.0f);
        i_this->field_0x303c += player->attention_info.position;

        if (i_this->field_0x303a == 45) {
            i_this->mDemoMode = 13;
            i_this->field_0x303a = 0;
            i_this->field_0x305c = 42.0f;

            i_this->field_0x3048.set(-16232.0f, 45.6f, 234.0f);
            i_this->field_0x303c.set(-16140.0f, 17.6f, 518.0f);
        }
        break;
    case 13:
        sp8 = false;

        if (i_this->field_0x303a == 110) {
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            dComIfGs_onSwitch(14, fopAcM_GetRoomNo(a_this));
            i_this->mDemoMode = 0;
        }
        break;
    }

    if (i_this->mDemoMode != 0) {
        cXyz spF4;
        cXyz sp100;

        spF4 = i_this->field_0x3048;
        sp100 = i_this->field_0x303c;

        if (sp8) {
            dBgS_LinChk linchk;
            linchk.Set(&i_this->field_0x3048, &i_this->field_0x303c, a_this);

            if (dComIfG_Bgsp().LineCross(&linchk)) {
                sp100 = linchk.i_GetCross() + ((spF4 - sp100) * 0.1f);

                f32 var_f31 = sp100.x - spF4.x;
                f32 var_f30 = sp100.z - spF4.z;
                sp100.y += i_this->field_0x3058 - JMAFastSqrt(var_f31 * var_f31 + var_f30 * var_f30);
            }
        }

        camera->mCamera.Set(spF4, sp100, i_this->field_0x305c, 0);
        i_this->field_0x303a++;
    }
}

/* 8077EE10-8077F250 004370 0440+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_s1_class */
static void anm_se_set(e_s1_class* i_this) {
    if (i_this->mAnm == 0x1F) {
        if (i_this->mpMorf->checkFrame(27.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_FN_L, 0, -1);
        } else if (i_this->mpMorf->checkFrame(57.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_FN_R, 0, -1);
        }
    } else if (i_this->mAnm == 8) {
        if (i_this->mpMorf->checkFrame(1.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_HAND_R, 0, -1);
        } else if (i_this->mpMorf->checkFrame(3.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_FN_R, 0, -1);
        } else if (i_this->mpMorf->checkFrame(4.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_HAND_L, 0, -1);
        } else if (i_this->mpMorf->checkFrame(7.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_FN_L, 0, -1);
        }
    } else if (i_this->mAnm == 9) {
        if (i_this->mpMorf->checkFrame(1.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_HAND_R, 0, -1);
        } else if (i_this->mpMorf->checkFrame(6.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_FN_R, 0, -1);
        } else if (i_this->mpMorf->checkFrame(8.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_HAND_L, 0, -1);
        } else if (i_this->mpMorf->checkFrame(14.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_NS_FN_L, 0, -1);
        }
    } else if (i_this->mAnm == 0x1D) {
        if (i_this->mpMorf->checkFrame(0.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_WAIT, -1);
        } else if (i_this->mpMorf->checkFrame(45.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_WAIT, -1);
        }
    } else if (i_this->mAnm == 0x1E) {
        if (i_this->mpMorf->checkFrame(0.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_SEARCH, -1);
        } else if (i_this->mpMorf->checkFrame(45.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_NS_V_SEARCH, -1);
        }
    }
}

/* 8077F250-8077F314 0047B0 00C4+00 1/1 0/0 0/0 .text            body_eff_set__FP10e_s1_class */
static void body_eff_set(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    J3DModel* model = i_this->mpMorf->getModel();

    i_this->field_0x307c = dComIfGp_particle_set(i_this->field_0x307c, 0x387, &a_this->current.pos, NULL, NULL);

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->field_0x307c);
    if (emitter != NULL) {
        emitter->setGlobalRTMatrix(model->getAnmMtx(2));
    }
}

/* 8077F314-8077FC88 004874 0974+00 2/1 0/0 0/0 .text            daE_S1_Execute__FP10e_s1_class */
static int daE_S1_Execute(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    fopAc_ac_c* sp1C = dComIfGp_getPlayer(0);
    cXyz spE0;
    cXyz spD4;

    i_this->field_0x694++;

    for (int i = 0; i < 4; i++) {
        if (i_this->field_0x6a0[i] != 0) {
            i_this->field_0x6a0[i]--;
        }
    }

    if (i_this->field_0x6a8 != 0) {
        i_this->field_0x6a8--;
    }

    if (i_this->field_0x6aa != 0) {
        i_this->field_0x6aa--;
    }

    action(i_this);

    if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0 && i_this->field_0x5b5 == 0xFE) {
        if (a_this->current.pos.z <= -27035.0f) {
            if (a_this->current.pos.z >= -35400.0f && a_this->current.pos.y < 0.0f) {
                if (a_this->current.pos.z > -28750.0f) {
                    a_this->current.pos.z = -28750.0f;
                }

                if (a_this->current.pos.x > 35330.0f) {
                    a_this->current.pos.x = 35330.0f;
                } else if (a_this->current.pos.x < 34270.0f) {
                    a_this->current.pos.x = 34270.0f;
                }
            }
        }
    }

    i_this->mAcch.CrrPos(dComIfG_Bgsp());

    s16 spC = 0;
    s16 spA = 0;

    if (i_this->mAction == 10) {
        Vec spC8;
        cXyz spBC;
        cXyz spB0;
        dBgS_GndChk sp160;
        f32 temp_f30 = 75.0f;

        MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(1), *calc_mtx);
        spE0.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&spE0, &spBC);

        spBC.y += 100.0f;
        spBC.y += 100.0f;
        sp160.SetPos(&spBC);

        spBC.y = dComIfG_Bgsp().GroundCross(&sp160);
        if (-1000000000.0f != spBC.y) {
            spC8.x = spBC.x;
            spC8.y = spBC.y + 100.0f;
            spC8.z = spBC.z + temp_f30;
            sp160.SetPos(&spC8);

            spC8.y = dComIfG_Bgsp().GroundCross(&sp160);
            if (-1000000000.0f != spC8.y) {
                spA = -cM_atan2s(spC8.y - spBC.y, spC8.z - spBC.z);
                if (spA > 0x3000 || spA < -0x3000) {
                    spA = 0;
                }
            }
    
            spC8.x = spBC.x + temp_f30;
            spC8.y = spBC.y + 100.0f;
            spC8.z = spBC.z;
            sp160.SetPos(&spC8);

            spC8.y = dComIfG_Bgsp().GroundCross(&sp160);
            if (-1000000000.0f != spC8.y) {
                spC = (s16)cM_atan2s(spC8.y - spBC.y, spC8.x - spBC.x);
                if (spC > 0x3000 || spC < -0x3000) {
                    spC = 0;
                }
            }
        }

        dBgS_LinChk spF0;
        cXyz spA4;
        cXyz sp98;
        cXyz sp8C;

        sp98 = a_this->current.pos;
        sp98.y += 50.0f + JREG_F(5);

        J3DModel* sp14 = i_this->mpMorf->getModel();
        spA4.set(0.0f, 0.0f, 0.0f);
        MTXCopy(sp14->getAnmMtx(4), *calc_mtx);

        MtxPosition(&spA4, &sp8C);
        sp8C.y += 50.0f + JREG_F(6);

        spF0.Set(&sp98, &sp8C, a_this);

        if (dComIfG_Bgsp().LineCross(&spF0)) {
            spA4 = sp98 - sp8C;
            cMtx_YrotS(*calc_mtx, cM_atan2s(spA4.x, spA4.z));

            spA4.x = 0.0f;
            spA4.y = 0.0f;
            spA4.z = 50.0f + TREG_F(11);
            MtxPosition(&spA4, &spD4);
            a_this->current.pos += spD4;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x6b2, spA, 1, 0x400);
    cLib_addCalcAngleS2(&i_this->field_0x6b6, spC, 1, 0x400);

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::XrotM(i_this->field_0x6b2);
    mDoMtx_stack_c::ZrotM(i_this->field_0x6b6);
    mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.mBaseSize * a_this->scale.x, l_HIO.mBaseSize * a_this->scale.x, l_HIO.mBaseSize * a_this->scale.x);

    J3DModel* sp10 = i_this->mpMorf->getModel();
    sp10->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
    i_this->mpMorf->modelCalc();

    anm_se_set(i_this);
    body_eff_set(i_this);
    ke_set(i_this);

    MTXCopy(sp10->getAnmMtx(4), *calc_mtx);
    spE0.set(20.0f + KREG_F(0), KREG_F(1), KREG_F(2));
    MtxPosition(&spE0, &a_this->eyePos);

    a_this->attention_info.position = a_this->eyePos;
    a_this->attention_info.position.y += 35.0f;

    cXyz sp80(0.0f, 0.0f, 0.0f);
    if (i_this->field_0x6a8 != 0) {
        sp80.x = 22340.0f;
    }

    i_this->mCcSph[0].SetC(a_this->eyePos + sp80);
    i_this->mCcSph[0].SetR(35.0f * l_HIO.mBaseSize);
    dComIfG_Ccsp()->Set(&i_this->mCcSph[0]);

    spE0.set(0.0f, 0.0f, 0.0f);
    MTXCopy(sp10->getAnmMtx(3), *calc_mtx);
    MtxPosition(&spE0, &spD4);

    i_this->mCcSph[1].SetC(spD4 + sp80);
    i_this->mCcSph[1].SetR(60.0f * l_HIO.mBaseSize);

    MTXCopy(sp10->getAnmMtx(2), *calc_mtx);
    MtxPosition(&spE0, &spD4);

    i_this->mCcSph[2].SetC(spD4 + sp80);
    i_this->mCcSph[2].SetR(50.0f * l_HIO.mBaseSize);

    dComIfG_Ccsp()->Set(&i_this->mCcSph[1]);
    dComIfG_Ccsp()->Set(&i_this->mCcSph[2]);

    if (i_this->field_0x6b9 != 0) {
        if (i_this->field_0x6b9 == 1) {
            MTXCopy(sp10->getAnmMtx(0xF), *calc_mtx);
        } else if (i_this->field_0x6b9 == 2) {
            MTXCopy(sp10->getAnmMtx(8), *calc_mtx);
        } else if (i_this->field_0x6b9 == 3) {
            MTXCopy(sp10->getAnmMtx(4), *calc_mtx);
        }

        spE0.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&spE0, &spD4);

        i_this->field_0x6b9 = 0;

        if (i_this->field_0x6ba == 0) {
            i_this->field_0x6ba = 1;
            i_this->mCcAtSph.StartCAt(spD4);
        } else {
            i_this->mCcAtSph.MoveCAt(spD4);
        }
    } else {
        spD4.set(20000.0f, 50000.0f, 20000.0f);
        i_this->mCcAtSph.SetC(spD4);
        i_this->field_0x6ba = 0;
    }

    i_this->mCcAtSph.SetR(40.0f * l_HIO.mBaseSize);
    dComIfG_Ccsp()->Set(&i_this->mCcAtSph);

    demo_camera(i_this);

    MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(2), *calc_mtx);
    spE0.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&spE0, &spD4);

    cXyz sp74(1.3f, 1.3f, 1.3f);
    setMidnaBindEffect(i_this, &i_this->mSound, &spD4, &sp74);

    MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(2), mDoMtx_stack_c::get());

    mDoMtx_stack_c::multVecZero(&spD4);
    spE0 = sp1C->current.pos - spD4;

    s16 sp8 = cM_atan2s(spE0.x, spE0.z);
    cXyz sp68;
    cMtx_YrotS(*calc_mtx, sp8);

    spE0.x = 0.0f;
    spE0.y = 45.0f + NREG_F(18);
    spE0.z = (60.0f + BREG_F(12)) - 30.0f;
    MtxPosition(&spE0, &sp68);
    sp68 += spD4;
    i_this->setDownPos(&sp68);

    cXyz sp5C(a_this->eyePos);
    sp5C.y += NREG_F(7) + 130.0f;
    i_this->setHeadLockPos(&sp5C);
    a_this->attention_info.flags |= 0x200000;
    return 1;
}

/* 8077FC88-8077FC90 0051E8 0008+00 1/0 0/0 0/0 .text            daE_S1_IsDelete__FP10e_s1_class */
static int daE_S1_IsDelete(e_s1_class* i_this) {
    return 1;
}

/* 8077FC90-8077FCF8 0051F0 0068+00 1/0 0/0 0/0 .text            daE_S1_Delete__FP10e_s1_class */
static int daE_S1_Delete(e_s1_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    dComIfG_resDelete(&i_this->mPhase, "E_S2");

    if (i_this->field_0x3080 != 0) {
        data_8078137e = 0;
    }

    if (a_this->heap != NULL) {
        i_this->mpMorf->stopZelAnime();
    }

    return 1;
}

/* 8078116C-80781178 0001C4 000C+00 1/0 0/0 0/0 .data            jv_offset */
static Vec jv_offset = {0.0f, 0.0f, 0.0f};

/* 80781178-807811E4 -00001 006C+00 1/1 0/0 0/0 .data            jc_data */
static dJntColData_c jc_data[] = {
    {0, 1, 1, 30.0f, &jv_offset},
    {0, 1, 2, 30.0f, &jv_offset},
    {0, 1, 3, 25.0f, &jv_offset},
    {0, 1, 7, 15.0f, &jv_offset},
    {0, 1, 8, 10.0f, &jv_offset},
    {0, 1, 14, 15.0f, &jv_offset},
    {0, 1, 15, 10.0f, &jv_offset},
    {0, 1, 21, 10.0f, &jv_offset},
    {0, 1, 24, 10.0f, &jv_offset},
};

/* 8077FCF8-8077FE38 005258 0140+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_s1_class* a_this = (e_s1_class*)i_this;

    a_this->mpMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_S2", 0x22), NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_S2", 0x1D), 0, 1.0f, 0, -1, &a_this->mSound, 0x80000, 0x11000084);
    if (a_this->mpMorf == NULL || a_this->mpMorf->getModel() == NULL) {
        return 0;
    }

    if (!a_this->mLineMat.init(0x16, 0x10, 1)) {
        return 0;
    }

    if (!a_this->mJntCol.init(i_this, jc_data, a_this->mpMorf->getModel(), 9)) {
        return 0;
    }

    return 1;
}

/* 8077FE38-807803F4 005398 05BC+00 1/0 0/0 0/0 .text            daE_S1_Create__FP10fopAc_ac_c */
static int daE_S1_Create(fopAc_ac_c* i_this) {
    e_s1_class* a_this = (e_s1_class*)i_this;
    fopAcM_SetupActor(a_this, e_s1_class);

    int phase_state = dComIfG_resLoad(&a_this->mPhase, "E_S2");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_S1 PARAM %x\n", fopAcM_GetParam(i_this));
        OS_REPORT("E_S1 AZ    %x\n", i_this->current.angle.z);
        data_8078137d = 0;

        if ((strcmp(dComIfGp_getStartStageName(), "D_MN08") == 0 ||
             strcmp(dComIfGp_getStartStageName(), "D_MN08B") == 0 ||
             strcmp(dComIfGp_getStartStageName(), "D_MN08C") == 0))
        {
            if ((s8)fopAcM_GetRoomNo(i_this) == 51 || (s8)fopAcM_GetRoomNo(i_this) == 9 ||
                (s8)fopAcM_GetRoomNo(i_this) == 52)
            {
                data_8078137d = 1;
            }
        }

        a_this->field_0x5b4 = fopAcM_GetParam(i_this) & 0xF;
        if (a_this->field_0x5b4 == 0xF) {
            a_this->field_0x5b4 = 0;
        }

        a_this->field_0x5b6 = (fopAcM_GetParam(i_this) & 0xF0) >> 4;
        if (a_this->field_0x5b6 == 0xF) {
            a_this->field_0x5b6 = 0xFF;
        }

        a_this->field_0x5b5 = (fopAcM_GetParam(i_this) & 0xFF00) >> 8;
        if (a_this->field_0x5b5 == 0xFF) {
            if (a_this->field_0x5b4 != 0) {
                a_this->field_0x5b5 = 3;
            } else {
                a_this->field_0x5b5 = 20;
            }
        }

        a_this->field_0x3064 = a_this->field_0x5b5 * 100.0f;
        a_this->field_0x3068 = (i_this->current.angle.z & 0xFF) * 100.0f;

        if (a_this->field_0x3068 == 0.0f) {
            a_this->field_0x3068 = 300.0f;
        }

        i_this->current.angle.z = i_this->shape_angle.z = 0;

        int i;

        u8 sp10 = (fopAcM_GetParam(i_this) & 0xFF0000) >> 0x10;
        a_this->field_0x5b7 = (fopAcM_GetParam(i_this) & 0xFF000000) >> 0x18;

        if (a_this->field_0x5b7 != 0xFF) {
            if (dComIfGs_isSwitch(a_this->field_0x5b7, (s8)fopAcM_GetRoomNo(i_this))) {
                // "After E_S1 defeated, so don't re-set\n"
                OS_REPORT("E_S1 やられ後なので再セットしません\n");
                return cPhs_ERROR_e;
            }
        }

        OS_REPORT("E_S1//////////////E_S1 SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, 0x8EA0)) {
            OS_REPORT("//////////////E_S1 SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////E_S1 SET 2 !!\n");

        if (sp10 != 0xFF) {
            a_this->mpPath = dPath_GetRoomPath(sp10, (s8)fopAcM_GetRoomNo(i_this));

            OS_REPORT("//////////////E_S1 PPD %x!!\n", a_this->mpPath);
            if (a_this->mpPath == NULL) {
                OS_REPORT("......NONONONONONO PATH !!!!\n");
                return cPhs_ERROR_e;
            }
        }

        if (!data_8078137e) {
            a_this->field_0x3080 = 1;
            data_8078137e = 1;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_OnStatus(i_this, 0x100);
        i_this->attention_info.flags = 4;

        if (a_this->field_0x5b4 == 0) {
            a_this->mAction = 0;
            a_this->field_0x69a = 1;
        } else {
            a_this->mAction = 1;
        }

        fopAcM_SetMtx(i_this, a_this->mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(i_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(i_this, 200.0f, 200.0f, 200.0f);

        OS_REPORT("//////////////E_S1 POS %d,%d,%d \n", (int)i_this->home.pos.x, (int)i_this->home.pos.y, (int)i_this->home.pos.z);
        a_this->mAcch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this, 1,
                          &a_this->mAcchCir, fopAcM_GetSpeed_p(i_this), NULL, NULL);
        a_this->mAcchCir.SetWall(50.0f, 100.0f);

        i_this->field_0x560 = i_this->health = 50;

        a_this->mCcStts.Init(0xFA, 0, i_this);

        static dCcD_SrcSph cc_sph_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}},  // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                 // mGObjTg
                {0x0},                                              // mGObjCo
            },                                                      // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
            }  // mSphAttr
        };

        static dCcD_SrcSph at_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x0, 0x0}, 0x0}},  // mObj
                {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0},                      // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                           // mGObjTg
                {0x0},                                                        // mGObjCo
            },                                                                // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 35.0f}  // mSph
            }  // mSphAttr
        };

        for (i = 0; i <= 2; i++) {
            a_this->mCcSph[i].Set(cc_sph_src);
            a_this->mCcSph[i].SetStts(&a_this->mCcStts);
        }

        a_this->mCcAtSph.Set(at_sph_src);
        a_this->mCcAtSph.SetStts(&a_this->mCcStts);

        a_this->mSound.init(&i_this->current.pos, &i_this->eyePos, 3, 1);
        a_this->mSound.setEnemyName("E_s1");
        a_this->mAtInfo.mpSound = &a_this->mSound;

        a_this->field_0x6aa = 30;

        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[83]) &&
            strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0 && a_this->field_0x5b5 == 0xFE)
        {
            i_this->current.pos.y += 50000.0f;
            i_this->current.pos.x += 50000.0f;
        }

        daE_S1_Execute(a_this);
        i_this->gravity = -7.0f;
    }

    return phase_state;
}

/* 80781264-80781284 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_S1_Method */
static actor_method_class l_daE_S1_Method = {
    (process_method_func)daE_S1_Create,  (process_method_func)daE_S1_Delete,
    (process_method_func)daE_S1_Execute, (process_method_func)daE_S1_IsDelete,
    (process_method_func)daE_S1_Draw,
};

/* 80781284-807812B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_S1 */
extern actor_process_profile_definition g_profile_E_S1 = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_E_S1,               // mProcName
    &g_fpcLf_Method.mBase,   // sub_method
    sizeof(e_s1_class),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    121,                     // mPriority
    &l_daE_S1_Method,        // sub_method
    0x00040000,              // mStatus
    fopAc_ENEMY_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES;
