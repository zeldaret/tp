/**
 * @file d_a_e_tk.cpp
 *
 */

#include "d/actor/d_a_e_tk.h"
#include "d/actor/d_a_e_tk_ball.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_kankyo_mng.h"

enum Action {
    /* 0x0 */ ACT_TK_WAIT,
    /* 0x1 */ ACT_TK_FIND,
    /* 0x2 */ ACT_TK_ATTACK,
    /* 0x5 */ ACT_TK_PATHSWIM = 0x5,
    /* 0x9 */ ACT_TK_S_DAMAGE = 0x9,
    /* 0xA */ ACT_TK_DAMAGE,
};

enum Animation { /* Not sure if these are correct... */
    /* 0x0 */ ANM_TK_NONE,
    /* 0x1 */ ANM_TK_APPEAR,
    /* 0x2 */ ANM_TK_ATTACK,
    /* 0x3 */ ANM_TK_DAMAGE,
    /* 0x4 */ ANM_TK_HIDE,
    /* 0xA */ ANM_TK_KYORO2 = 0xA,
    /* 0xB */ ANM_TK_SWIM,
    /* 0xC */ ANM_TK_WAIT01,
};

enum Res {
    /* 0x4 */ E_TK_APPEAR = 0x4,
    /* 0x5 */ E_TK_ATTACK,
    /* 0x6 */ E_TK_DAMAGE,
    /* 0x7 */ E_TK_HIDE,
    /* 0x8 */ E_TK_KYORO2,
    /* 0x9 */ E_TK_SWIM,
    /* 0xA */ E_TK_WAIT01,

    /* 0xD */ E_TK_EF_TKBALL = 0xD,
    /* 0xE */ E_TK_TK,
};

/* 807BA438-807BA43C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool hioInit;

/* 807BA448-807BA464 000018 001C+00 7/7 0/0 0/0 .bss             l_HIO */
static daE_TK_HIO_c l_HIO;

/* 807B81EC-807B8234 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_TK_HIO_cFv */
daE_TK_HIO_c::daE_TK_HIO_c() {
    field_0x04 = -1;
    mRadiusScale = 1.9f;
    mPlayerRange2 = 1400.0f;
    mPlayerRange1 = 500.0f;
    mSpeedModifier1 = 10.0f;
    mSpeedModifier2 = 25.0f;
}

/* 807B8234-807B82E0 000134 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_tk_classifUcf */
static void anm_init(e_tk_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("E_tk", i_index);

    i_this->mpMorf->setAnm(anm, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mSound = i_index;
}

/* 807B82E0-807B8350 0001E0 0070+00 1/0 0/0 0/0 .text            daE_TK_Draw__FP10e_tk_class */
static int daE_TK_Draw(e_tk_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();

    g_env_light.settingTevStruct(0, fopAcM_GetPosition_p(i_this), &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    i_this->mpMorf->entryDL();
    return 1;
}

/* 807B8350-807B8428 000250 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_tk_classP10fopAc_ac_c
 */
static int other_bg_check(e_tk_class* i_this, fopAc_ac_c* i_ac) {
    fopAc_ac_c* actor = i_this;
    dBgS_LinChk line_check;
    cXyz start_pos;
    cXyz end_pos;

    end_pos = i_ac->current.pos;
    end_pos.y += 100.0f;
    start_pos = actor->current.pos;
    start_pos.y = actor->eyePos.y;

    line_check.Set(&start_pos, &end_pos, actor);

    if (dComIfG_Bgsp().LineCross(&line_check)) {
        return true;
    } else {
        return false;
    }
}

/* 807B8428-807B8460 000328 0038+00 3/3 0/0 0/0 .text            pl_y_check__FP10e_tk_class */
static int pl_y_check(e_tk_class* i_this) {
    // Fakematch? But this needs to be loaded before accessing g_dComIfG_gameInfo.
    f32 tmp = fopAcM_GetPosition(i_this).y;

    f32 actor_y = tmp;
    f32 player_y = fopAcM_GetPosition(dComIfGp_getPlayer(0)).y;

    if (actor_y - player_y > 130.0f) {
        return 0;
    } else {
        return 1;
    }
}

/* 807B8460-807B84DC 000360 007C+00 4/4 0/0 0/0 .text            pl_check__FP10e_tk_classfs */
static int pl_check(e_tk_class* i_this, f32 i_limit, s16 i_max_diff) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (i_this->mPlayerDistanceLimit < i_limit) {
        s16 diff = i_this->shape_angle.y - i_this->mPlayerAngleY;
        if (diff < i_max_diff && diff > (s16)-i_max_diff && other_bg_check(i_this, player) == 0) {
            return 1;
        }
    }

    return 0;
}

/* 807B84DC-807B85DC 0003DC 0100+00 1/1 0/0 0/0 .text            damage_check__FP10e_tk_class */
static void damage_check(e_tk_class* i_this) {
    if (i_this->mInvincibilityTimer == 0x00) {
        i_this->mStts.Move();

        if (i_this->mSph.ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->mSph.GetTgHitObj();
            at_power_check(&i_this->mAtInfo);

            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                i_this->mInvincibilityTimer = 0x14;
            } else {
                i_this->mInvincibilityTimer = 0x0A;
            }

            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
                i_this->mAction = ACT_TK_FIND;
                i_this->mAnim = ANM_TK_KYORO2;
                i_this->mActionTimer[0] = 0x32;
            } else {
                cc_at_check(i_this, &i_this->mAtInfo);
                if (i_this->mAtInfo.mHitType == HIT_TYPE_STUN) {
                    i_this->mAction = ACT_TK_S_DAMAGE;
                } else {
                    i_this->mAction = ACT_TK_DAMAGE;
                }
                i_this->mAnim = ANM_TK_NONE;
            }
        }

        if (i_this->health <= 1) {
            i_this->health = 0;
            i_this->mSph.SetTgHitMark(CcG_Tg_UNK_MARK_3);
        }
    }
}

/* 807B85DC-807B86EC 0004DC 0110+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_tk_classf */
static int way_bg_check(e_tk_class* i_this, f32 i_limit) {
    fopAc_ac_c* actor = i_this;
    dBgS_LinChk line_check;

    cXyz mtx_pos;
    cXyz start_pos;
    start_pos = actor->current.pos;
    start_pos.y -= 50.0f;

    mDoMtx_YrotS(*calc_mtx, actor->shape_angle.y);

    cXyz end_pos;
    mtx_pos.x = 0.0;
    mtx_pos.y = -50.0f;
    mtx_pos.z = i_limit;

    MtxPosition(&mtx_pos, &end_pos);
    end_pos += actor->current.pos;

    line_check.Set(&start_pos, &end_pos, actor);
    if (dComIfG_Bgsp().LineCross(&line_check)) {
        return 1;
    } else {
        return 0;
    }
}

/* 807B86EC-807B8980 0005EC 0294+00 1/1 0/0 0/0 .text            e_tk_wait_0__FP10e_tk_class */
static void e_tk_wait_0(e_tk_class* i_this) {
    cXyz src_pos;

    i_this->mActorStatus0 = true;

    switch (i_this->mAnim) {
    case ANM_TK_NONE:
        anm_init(i_this, E_TK_SWIM, 5.0f, 0x2, 1.0f);
        i_this->mAnim = ANM_TK_APPEAR;
        break;

    case ANM_TK_APPEAR:
        if (i_this->mActionTimer[0] == 0) {
            src_pos = i_this->home.pos - i_this->current.pos;
            i_this->mSomeAngle = cM_atan2s(src_pos.x, src_pos.z) + (s16)cM_rndFX(8000.0f);
            i_this->mActionTimer[0] = (s16)(cM_rndF(30.0f) + 30.0f);
        }

        if (i_this->mActionTimer[2] == 0 && way_bg_check(i_this, 200.0f)) {
            i_this->mActionTimer[2] = 0x28;
            src_pos = i_this->home.pos - i_this->current.pos;
            i_this->mSomeAngle = cM_atan2s(src_pos.x, src_pos.z) + (s16)cM_rndFX(2000.0f);
            i_this->mActionTimer[0] = (s16)(cM_rndF(30.0f) + 30.0f);
        }

        if (i_this->mActionTimer[1] == 0 && (pl_y_check(i_this) != false) &&
            pl_check(i_this, l_HIO.mPlayerRange2, 0x4000))
        {
            i_this->mAction = ACT_TK_FIND;
            if (pl_check(i_this, l_HIO.mPlayerRange1, 0x4000)) {
                i_this->mAnim = ANM_TK_WAIT01;
            } else {
                i_this->mAnim = ANM_TK_NONE;
            }
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->mSomeAngle, 0x10, 0x400);
    cLib_addCalcAngleS2(&i_this->shape_angle.x, 0, 0x10, 0x400);
    f32 tmp = 1.0f;  // Fakematch? (fmuls with 1.0f will get optimized out without this)
    cLib_addCalc2(&i_this->speedF, l_HIO.mSpeedModifier1 * tmp, 1.0f, 1.0f);
    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    src_pos.x = 0.0f;
    src_pos.y = 0.0f;
    src_pos.z = i_this->speedF;
    MtxPosition(&src_pos, &i_this->speed);
    i_this->current.pos += i_this->speed;
}

/* 807B8980-807B8D78 000880 03F8+00 2/1 0/0 0/0 .text            e_tk_find__FP10e_tk_class */
static void e_tk_find(e_tk_class* i_this) {
    f32 speed_target = 0.0f;
    f32 speed_step = 3.0f;

    switch (i_this->mAnim) {  // Creates switch jump table in .data
    case ANM_TK_NONE:
        anm_init(i_this, E_TK_APPEAR, 3.0f, 0x0, 1.0f);
        i_this->mAnim = ANM_TK_APPEAR;
        break;

    case ANM_TK_APPEAR:
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, E_TK_WAIT01, 3.0f, 0x2, 1.0f);
            i_this->mAnim = ANM_TK_ATTACK;
            i_this->mActionTimer[0] = (cM_rndF(10.0f) + 10.0f);
        }
        break;

    case ANM_TK_ATTACK:
        if (i_this->mActionTimer[0] == 0x0) {
            i_this->mAction = ACT_TK_ATTACK;
            i_this->mAnim = ANM_TK_NONE;
        } else {
            if (pl_check(i_this, l_HIO.mPlayerRange1, 0x4000)) {
                i_this->mAnim = ANM_TK_KYORO2;
            }
        }
        break;

    case ANM_TK_DAMAGE:
        anm_init(i_this, E_TK_HIDE, 3.0f, 0x0, 1.0f);
        i_this->mAnim = ANM_TK_HIDE;
        break;

    case ANM_TK_HIDE:
        i_this->mActorStatus0 = true;
        if (i_this->mpMorf->isStop()) {
            if (i_this->mPathLoaded) {
                i_this->mAction = ACT_TK_PATHSWIM;
                i_this->mAnim = ANM_TK_NONE;
            } else {
                i_this->mAction = ACT_TK_WAIT;
                i_this->mAnim = ANM_TK_NONE;
                i_this->mActionTimer[0] = 0;
                i_this->mActionTimer[1] = (s16)(cM_rndF(30.0f) + 30.0f);
            }
        }
        break;

    case ANM_TK_KYORO2:
        anm_init(i_this, E_TK_HIDE, 3.0f, 0x0, 3.0f);
        i_this->mAnim = ANM_TK_SWIM;
        break;

    case ANM_TK_SWIM:
        i_this->mPlayerAngleY = i_this->mPlayerAngleY + -0x8000;
        i_this->mActorStatus0 = true;
        if (i_this->mpMorf->isStop()) {
            i_this->mAnimSpeed = 4.0f;
            anm_init(i_this, E_TK_SWIM, 0.0f, 0x2, i_this->mAnimSpeed);
            i_this->mAnim = ANM_TK_WAIT01;
        }
        break;

    case ANM_TK_WAIT01:
        i_this->mActorStatus0 = true;
        cLib_addCalc2(&i_this->mAnimSpeed, 2.0f, 1.0f, 0.15f);
        i_this->mpMorf->setPlaySpeed(i_this->mAnimSpeed);
        speed_target = 1.0f;
        speed_step = 10.0f;
        if (i_this->mActionTimer[0] == 0x0 &&
            i_this->mPlayerDistanceLimit > l_HIO.mPlayerRange1 * 1.2f)
        {
            i_this->mAnim = ANM_TK_NONE;
        } else {
            if (i_this->mActionTimer[1] == 0 && i_this->mAcch.ChkWallHit()) {
                i_this->mActionTimer[1] = (s16)(cM_rndF(10.0f) + 20.0f);
                i_this->mSomeAngle = i_this->mPlayerAngleY + (s16)cM_rndFX(8000.0f);
            }
        }
        if (i_this->mActionTimer[1] == 0) {
            i_this->mPlayerAngleY = i_this->mPlayerAngleY - 0x8000;
        } else {
            i_this->mPlayerAngleY = i_this->mSomeAngle;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->mPlayerAngleY, 4, 0x800);
    cLib_addCalc2(&i_this->speedF, l_HIO.mSpeedModifier2 * speed_target, 1.0f, speed_step);
    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    cXyz local_58;
    local_58.x = 0.0f;
    local_58.y = 0.0f;
    local_58.z = i_this->speedF;
    MtxPosition(&local_58, &i_this->speed);
    i_this->current.pos += i_this->speed;
    cLib_addCalcAngleS2(&i_this->shape_angle.x, 0, 4, 0x400);
}

/* 807B8D78-807B8F68 000C78 01F0+00 1/1 0/0 0/0 .text            e_tk_attack__FP10e_tk_class */
static void e_tk_attack(e_tk_class* i_this) {
    switch (i_this->mAnim) {
    case ANM_TK_NONE:
        i_this->mAnim = ANM_TK_APPEAR;
        anm_init(i_this, E_TK_ATTACK, 3.0f, 0x0, 1.0f);
        break;

    case ANM_TK_APPEAR:
        if (pl_y_check(i_this)) {
            if ((int)i_this->mpMorf->getFrame() == 0x18) {
                i_this->mpBall =
                    fopAcM_createChild(PROC_E_TK_BALL, fopAcM_GetID(i_this), 0, &i_this->eyePos,
                                       fopAcM_GetRoomNo(i_this), &i_this->shape_angle, 0, -1, 0);
            }
            if ((int)i_this->mpMorf->getFrame() == 0x1c) {
                i_this->mTKBallSpawned = true;
            }
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, E_TK_WAIT01, 1.0f, 0x2, 1.0f);
            i_this->mActionTimer[0] = (s16)(cM_rndF(30.0f) + 60.0f);
            i_this->mAnim = ANM_TK_ATTACK;
        }
        break;

    case ANM_TK_ATTACK:
        if ((pl_y_check(i_this) == 0) || (i_this->mActionTimer[0] == 0)) {
            i_this->mAction = ACT_TK_FIND;
            i_this->mAnim = ANM_TK_DAMAGE;
        }
        if (pl_check(i_this, l_HIO.mPlayerRange1, 0x4000)) {
            i_this->mAction = ACT_TK_FIND;
            i_this->mAnim = ANM_TK_KYORO2;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->mPlayerAngleY, 4, 0x800);
}

/* 807B8F68-807B92C4 000E68 035C+00 1/1 0/0 0/0 .text            e_tk_pathswim__FP10e_tk_class */
static void e_tk_pathswim(e_tk_class* i_this) {
    cXyz local_50;

    f32 speed_target = 1.0f;
    f32 speed_step = 1.0f;

    switch (i_this->mAnim) {
    case ANM_TK_NONE:
        anm_init(i_this, E_TK_SWIM, 5.0f, 0x2, 1.0f);
        i_this->mAnim = ANM_TK_APPEAR;
        /* [[fallthrough]] */;

    case ANM_TK_APPEAR: {
        i_this->mPathIdx += i_this->mPathIdxDir;
        if (i_this->mPathIdx >= (u8)i_this->mpPath->m_num) {
            if (dPath_ChkClose(i_this->mpPath)) {
                i_this->mPathIdx = 0x0;
            } else {
                i_this->mPathIdxDir = -1;
                i_this->mPathIdx = i_this->mpPath->m_num - 0x2;
            }
        } else {
            if (i_this->mPathIdx < 0x0) {
                i_this->mPathIdxDir = 1;
                i_this->mPathIdx = 0x1;
            }
        }

        dPnt* point = i_this->mpPath->m_points;
        point += i_this->mPathIdx;
        i_this->mPos.x = point->m_position.x + cM_rndFX(100.0f);
        i_this->mPos.z = point->m_position.z + cM_rndFX(100.0f);
        i_this->mAnim = ANM_TK_ATTACK;
        break;
    }

    case ANM_TK_ATTACK:
        local_50 = i_this->mPos - i_this->current.pos;
        if (JMAFastSqrt(local_50.x * local_50.x + local_50.z * local_50.z) < 100.0f) {
            dPnt* point = &i_this->mpPath->m_points[i_this->mPathIdx];
            if (point->mArg0 != 0x2) {
                anm_init(i_this, E_TK_KYORO2, 5.0, 0x2, 1.0);
                i_this->mActionTimer[0] = (s16)(cM_rndF(60.0f) + 50.0f);
                i_this->mActionTimer[1] = 0x14;
                i_this->mAnim = ANM_TK_DAMAGE;
            } else {
                i_this->mAnim = ANM_TK_APPEAR;
            }
        }
        i_this->mSomeAngle = cM_atan2s(local_50.x, local_50.z);
        break;

    case ANM_TK_DAMAGE:
        speed_target = 0.0f;
        speed_step = 3.0f;
        if (i_this->mActionTimer[1] == 0 && pl_y_check(i_this) &&
            (pl_check(i_this, l_HIO.mPlayerRange2, 0x4000)))
        {
            i_this->mAction = ACT_TK_FIND;
            anm_init(i_this, E_TK_WAIT01, 5.0f, 0x2, 1.0f);
            i_this->mAnim = ANM_TK_ATTACK;
            i_this->mActionTimer[0] = (s16)(cM_rndF(20.0f) + 20.0f);
        }
        if (i_this->mActionTimer[0] == 0) {
            i_this->mAnim = ANM_TK_NONE;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->mSomeAngle, 8, 0x400);
    cLib_addCalc2(&i_this->speedF, l_HIO.mSpeedModifier1 * speed_target, 1.0f, speed_step);
    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    local_50.x = 0.0f;
    local_50.y = 0.0f;
    local_50.z = i_this->speedF;
    MtxPosition(&local_50, &i_this->speed);
    i_this->current.pos += i_this->speed;
}

/* 807B92C4-807B9354 0011C4 0090+00 1/1 0/0 0/0 .text            e_tk_s_damage__FP10e_tk_class */
static void e_tk_s_damage(e_tk_class* i_this) {
    switch (i_this->mAnim) {
    case ANM_TK_NONE:
        anm_init(i_this, E_TK_DAMAGE, 2.0f, 0x0, 1.0f);
        i_this->mAnim = ANM_TK_APPEAR;
        break;

    case ANM_TK_APPEAR:
        if (i_this->mpMorf->getFrame() > 10.0f) {
            i_this->mAction = ACT_TK_FIND;
            i_this->mAnim = ANM_TK_DAMAGE;
        }
        break;
    }
}

/* 807B9354-807B941C 001254 00C8+00 1/1 0/0 0/0 .text            e_tk_damage__FP10e_tk_class */
static void e_tk_damage(e_tk_class* i_this) {
    i_this->mInvincibilityTimer = 0x06;
    i_this->mActorStatus0 = true;

    switch (i_this->mAnim) {
    case ANM_TK_NONE:
        anm_init(i_this, E_TK_DAMAGE, 2.0f, 0x0, 1.0f);
        i_this->mAnim = ANM_TK_APPEAR;
        break;

    case ANM_TK_APPEAR:
        if (i_this->mpMorf->isStop()) {
            fopAcM_createDisappear(i_this, &i_this->eyePos, 10, 0, 0x11);
            fopAcM_delete(i_this);
        }
        break;
    }
}

/* 807B941C-807B9554 00131C 0138+00 2/1 0/0 0/0 .text            action__FP10e_tk_class */
static void action(e_tk_class* i_this) {
    i_this->mPlayerAngleY = fopAcM_searchPlayerAngleY(i_this);
    i_this->mPlayerDistanceLimit = fopAcM_searchPlayerDistance(i_this);
    damage_check(i_this);

    s8 link_search_flag = false;
    switch (i_this->mAction) {  // Creates switch jump table in .data
    case ACT_TK_WAIT:
        e_tk_wait_0(i_this);
        break;
    case ACT_TK_FIND:
        e_tk_find(i_this);
        link_search_flag = true;
        break;
    case ACT_TK_ATTACK:
        e_tk_attack(i_this);
        link_search_flag = true;
        break;
    case ACT_TK_PATHSWIM:
        e_tk_pathswim(i_this);
        break;
    case ACT_TK_S_DAMAGE:
        e_tk_s_damage(i_this);
        break;
    case ACT_TK_DAMAGE:
        e_tk_damage(i_this);
        break;
    }

    if (link_search_flag) {
        i_this->mSoundE.setLinkSearch(true);
    } else {
        i_this->mSoundE.setLinkSearch(false);
    }

    if (i_this->speedF < 2.0f) {
        cXyz this_pos = fopAcM_GetPosition(i_this);
        fopAcM_effHamonSet(&i_this->mHamonSet, &this_pos, 2.3f, 0.05f);
    }
}

/* 807B9554-807B9C50 001454 06FC+00 2/1 0/0 0/0 .text            daE_TK_Execute__FP10e_tk_class */
static int daE_TK_Execute(e_tk_class* i_this) {
    cXyz cStack_94;
    cXyz cStack_a0;

    if (i_this->mExecuteState == 0x00) {
        dBgS_ObjGndChk_Spl ground_check;
        cStack_94 = i_this->current.pos;
        cStack_94.y += 200.0f;
        ground_check.SetPos(&cStack_94);
        i_this->current.pos.y = dComIfG_Bgsp().GroundCross(&ground_check);
    }
    i_this->mLifetime++;
    i_this->mActorStatus0 = false;

    for (int i = 0; i <= 3; i++) {
        if (i_this->mActionTimer[i]) {
            i_this->mActionTimer[i]--;
        }
    }

    if (i_this->mInvincibilityTimer) {
        i_this->mInvincibilityTimer--;
    }
    action(i_this);
    i_this->mAcch.CrrPos(dComIfG_Bgsp());

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::scaleM(l_HIO.mRadiusScale, l_HIO.mRadiusScale, l_HIO.mRadiusScale);

    J3DModel* model = i_this->mpMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());

    i_this->mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));

    if (i_this->mpMorf->checkFrame(6.0f) &&
        ((i_this->mSound == E_TK_APPEAR || (i_this->mSound == E_TK_HIDE))))
    {
        fopKyM_createWpillar(&i_this->current.pos, 2.3f, 0);
    }

    if (i_this->mSound == E_TK_SWIM) {
        if ((i_this->mpMorf->checkFrame(0.0f)) || (i_this->mpMorf->checkFrame(6.0f)) ||
            (i_this->mpMorf->checkFrame(12.0f)) || (i_this->mpMorf->checkFrame(18.0f)) ||
            (i_this->mpMorf->checkFrame(24.0f)))
        {
            i_this->mSoundE.startCreatureSound(Z2SE_EN_TK_SWIM, 0, -1);
        }
    } else if (i_this->mSound == E_TK_APPEAR) {
        if (i_this->mpMorf->checkFrame(5.0f)) {
            i_this->mSoundE.startCreatureSound(Z2SE_EN_TK_APPEAR, 0, -1);
        } else if (i_this->mpMorf->checkFrame(20.0f)) {
            i_this->mSoundE.startCreatureSound(Z2SE_EN_TK_APPEAR2, 0, -1);
        }
    } else if (i_this->mSound == E_TK_HIDE) {
        if (i_this->mpMorf->checkFrame(6.0f)) {
            i_this->mSoundE.startCreatureSound(Z2SE_EN_TK_HIDE, 0, -1);
        }
    } else if (i_this->mSound == E_TK_ATTACK) {
        if (i_this->mpMorf->checkFrame(1.0f)) {
            i_this->mSoundE.startCreatureVoice(Z2SE_EN_TK_V_ATTACK, -1);
        } else if (i_this->mpMorf->checkFrame(27.0f)) {
            i_this->mSoundE.startCreatureSound(Z2SE_EN_TK_ATTACK, 0, -1);
        }
    } else if (i_this->mSound == E_TK_DAMAGE) {
        if (i_this->mpMorf->checkFrame(1.0f)) {
            i_this->mSoundE.startCreatureVoice(Z2SE_EN_TK_V_DAMAGE, -1);
        }
    } else if (i_this->mSound == E_TK_WAIT01) {
        if (i_this->mpMorf->checkFrame(1.0f)) {
            i_this->mSoundE.startCreatureVoice(Z2SE_EN_TK_V_WAIT, -1);
        }
    } else if (i_this->mSound == E_TK_KYORO2) {
        if (i_this->mpMorf->checkFrame(1.0f) || i_this->mpMorf->checkFrame(30.0f)) {
            i_this->mSoundE.startCreatureVoice(Z2SE_EN_TK_KYORO, -1);
        }
    }
    i_this->mpMorf->modelCalc();

    MTXCopy(model->getAnmMtx(3), *calc_mtx);

    cStack_94.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&cStack_94, &i_this->eyePos);

    i_this->attention_info.position = i_this->eyePos;
    i_this->attention_info.position.y =
        i_this->attention_info.position.y + l_HIO.mRadiusScale * 35.0f;

    if (i_this->mTKBallSpawned) {
        e_tk_ball_class* a_this = static_cast<e_tk_ball_class*>(fopAcM_SearchByID(i_this->mpBall));
        if (a_this != NULL) {
            a_this->current.pos = i_this->eyePos;
            a_this->field_0x5ac[0x31C] = 0x0;
        }

        cXyz scale;
        scale.setall(2.0f);
        dComIfGp_particle_set(0x819B, &i_this->eyePos, &i_this->shape_angle, &scale);
        dComIfGp_particle_set(0x819C, &i_this->eyePos, &i_this->shape_angle, &scale);
        i_this->mTKBallSpawned = false;
    }
    
    if (i_this->mActorStatus0) {
        fopAcM_OffStatus(i_this, 0);
        i_this->attention_info.flags = 0;
    } else {
        fopAcM_OnStatus(i_this, 0);
        i_this->attention_info.flags = 4;
    }

    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    cStack_94.set(0.0f, 0.0f, 0.0f);

    MtxPosition(&cStack_94, &cStack_a0);
    i_this->mSph.SetC(cStack_a0);
    i_this->mSph.SetR(50.0f * l_HIO.mRadiusScale);

    dComIfG_Ccsp()->Set(&i_this->mSph);

    return 1;
}

/* 807B9C50-807B9C58 001B50 0008+00 1/0 0/0 0/0 .text            daE_TK_IsDelete__FP10e_tk_class */
static int daE_TK_IsDelete(e_tk_class* i_this) {
    return 1;
}

/* 807B9C58-807B9CC0 001B58 0068+00 1/0 0/0 0/0 .text            daE_TK_Delete__FP10e_tk_class */
static int daE_TK_Delete(e_tk_class* i_this) {
    // fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mPhaseReq, "E_tk");
    if (i_this->mCreated) {
        hioInit = false;
    }
    if (i_this->heap != NULL) {
        i_this->mpMorf->stopZelAnime();
    }
    return 1;
}

/* 807B9CC0-807B9DB8 001BC0 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    e_tk_class* i_this = static_cast<e_tk_class*>(a_this);

    i_this->mpMorf =
        new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_tk", E_TK_TK), NULL, NULL,
                             (J3DAnmTransform*)dComIfG_getObjectRes("E_tk", E_TK_SWIM), 2,
                             1.0f, 0, -1, &i_this->mSoundE, 0x80000, 0x11000084);

    if (i_this->mpMorf == NULL || i_this->mpMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 807BA358-807BA398 000060 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4408 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x75}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                 // mGObjTg
        {0x0},                                              // mGObjCo
    },                                                      // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }  // mSphAttr
};

/* 807B9DB8-807BA0C4 001CB8 030C+00 1/0 0/0 0/0 .text            daE_TK_Create__FP10fopAc_ac_c */
static int daE_TK_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, e_tk_class);
    e_tk_class* const a_this = static_cast<e_tk_class*>(i_this);

    cPhs__Step rv = (cPhs__Step)dComIfG_resLoad(&a_this->mPhaseReq, "E_tk");
    if (rv == cPhs_COMPLEATE_e) {
        a_this->mParamUnk1 = fopAcM_GetParamBit(a_this, 0, 8);
        a_this->mParamUnk2 = fopAcM_GetParamBit(a_this, 8, 4);
        a_this->mParamUnk3 = fopAcM_GetParamBit(a_this, 12, 4);
        a_this->mParamPathIdx = fopAcM_GetParamBit(a_this, 16, 8);

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x1e20)) {
            return cPhs_ERROR_e;
        }

        if (a_this->mParamPathIdx != 0xff) {
            a_this->mpPath = dPath_GetRoomPath(a_this->mParamPathIdx, fopAcM_GetRoomNo(a_this));
            if (a_this->mpPath == NULL) {
                return cPhs_ERROR_e;
            }
            a_this->mPathLoaded = a_this->mParamPathIdx + 0x1;
            a_this->mPathIdxDir = 0x1;
            a_this->mAction = ACT_TK_PATHSWIM;
        }
        if (hioInit == false) {
            a_this->mCreated = true;
            hioInit = true;
            l_HIO.field_0x04 = -1;
        }
        a_this->attention_info.flags = 4;

        fopAcM_SetMtx(a_this, a_this->mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(a_this, -100.0f, -100.0f, -100.0f);
        fopAcM_SetMax(a_this, 100.0f, 100.0f, 100.0f);

        a_this->attention_info.distances[2] = 0x04;
        a_this->health = 10;
        a_this->field_0x560 = 10;

        a_this->mStts.Init(100, 0, a_this);
        a_this->mSph.Set(cc_sph_src);
        a_this->mSph.SetStts(&a_this->mStts);

        a_this->mAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1,
                          &a_this->mAcchChir, fopAcM_GetSpeed_p(a_this), NULL, NULL);

        a_this->mAcchChir.SetWall(-50.0f, 60.0f);
        a_this->mSoundE.init(&a_this->current.pos, &a_this->eyePos, 0x3, 0x1);
        a_this->mSoundE.setEnemyName("E_tk");
        a_this->mAtInfo.mpSound = &a_this->mSoundE;
        a_this->mExecuteState = 0x14;
        daE_TK_Execute(a_this);
    }
    return rv;
}

/* 807BA398-807BA3B8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TK_Method */
static actor_method_class l_daE_TK_Method = {
    (process_method_func)daE_TK_Create,  (process_method_func)daE_TK_Delete,
    (process_method_func)daE_TK_Execute, (process_method_func)daE_TK_IsDelete,
    (process_method_func)daE_TK_Draw,
};

/* 807BA3B8-807BA3E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TK */
extern actor_process_profile_definition g_profile_E_TK = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_E_TK,               // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(e_tk_class),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    149,                     // mPriority
    &l_daE_TK_Method,        // sub_method
    0x00040100,              // mStatus
    fopAc_ENEMY_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
