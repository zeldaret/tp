/**
 * @file d_a_e_fs.cpp
 * Enemy - Puppet
*/

#include "d/actor/d_a_e_fs.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "m_Do/m_Do_lib.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_e_pm.h"
#include "d/actor/d_a_npc_ks.h"
#include "d/actor/d_a_player.h"
UNK_REL_DATA
#include "f_op/f_op_actor_enemy.h"
#include "Z2AudioLib/Z2Instances.h"

enum Animation {
    /* 0x4 */ ANM_APPEAR = 4,
    /* 0x5 */ ANM_ATTACK01,
    /* 0x6 */ ANM_DAMAGE,
    /* 0x7 */ ANM_DIE,
    /* 0x8 */ ANM_MOVE,
    /* 0x9 */ ANM_WAIT01,
};

enum Joint {
    /* 0x00 */ JNT_CENTER,
    /* 0x01 */ JNT_BACKBONE,
    /* 0x02 */ JNT_ARM_L1,
    /* 0x03 */ JNT_ARM_L2,
    /* 0x04 */ JNT_HAND_L,
    /* 0x05 */ JNT_ARM_R1,
    /* 0x06 */ JNT_ARM_R2,
    /* 0x07 */ JNT_HAND_R,
    /* 0x08 */ JNT_CLOAK1,
    /* 0x09 */ JNT_CLOAK2,
    /* 0x0A */ JNT_CLOAK3,
    /* 0x0B */ JNT_HEAD,
    /* 0x0C */ JNT_NECKLESS1,
    /* 0x0D */ JNT_NECKLESS2,
    /* 0x0E */ JNT_WAIST,
    /* 0x0F */ JNT_LEG_L1,
    /* 0x10 */ JNT_LEG_L2,
    /* 0x11 */ JNT_FOOT_L,
    /* 0x12 */ JNT_LEG_R1,
    /* 0x13 */ JNT_LEG_R2,
    /* 0x14 */ JNT_FOOT_R,
};

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

namespace {

/* 806BE79C-806BE7A0 -00001 0004+00 1/1 0/0 0/0 .bss             None */
/* 806BE79C 0001+01 data_806BE79C @1009 */
/* 806BE79E 0002+00 data_806BE79E s_AtCount__22@unnamed@d_a_e_fs_cpp@ */
static u8 data_806BE79C[2];
static s16 s_AtCount;

}  // namespace

/* 806BE7A0-806BE7A4 000048 0004+00 2/2 0/0 0/0 .bss             None */
static bool hioInit;

/* 806BE7B0-806BE7CC 000058 001C+00 6/6 0/0 0/0 .bss             l_HIO */
static daE_Fs_HIO_c l_HIO;

/* 806BBACC-806BBB10 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__12daE_Fs_HIO_cFv */
daE_Fs_HIO_c::daE_Fs_HIO_c() {
    field_0x4 = -1;
    mScale = 1.0f;
    mAttackRange = 350.0f;
    mAttackDistance = 170.0f;
    mMoveSpeedRatio = 1.0f;
    mDeleteRange = 2000.0f;
}

/* 806BBB10-806BBBBC 000130 00AC+00 7/7 0/0 0/0 .text            anm_init__FP10e_fs_classifUcf */
static void anm_init(e_fs_class* i_this, int i_anm, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_FS", i_anm),
                           i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_anm;
}

/* 806BBBBC-806BBCDC 0001DC 0120+00 1/0 0/0 0/0 .text            daE_Fs_Draw__FP10e_fs_class */
static int daE_Fs_Draw(e_fs_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    J3DModelData* model_data = model->getModelData();
    for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
        model_data->getMaterialNodePointer(i)->getTevKColor(3)->a = 0xff;
    }
    i_this->mpMorf->entryDL();
    cXyz pos(i_this->current.pos.x, i_this->current.pos.y + 100.0f, i_this->current.pos.z);
    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &pos, 1000.0f, 50.0f,
                                            i_this->current.pos.y, i_this->mAcch.GetGroundH(),
                                            i_this->mAcch.m_gnd, &i_this->tevStr, 0, 1.0f,
                                            dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 806BBCDC-806BBDF4 0002FC 0118+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_fs_classfs */
static BOOL way_bg_check(e_fs_class* i_this, f32 i_offset, s16 i_angle) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz vec, start, end;
    start = _this->current.pos;
    start.y += 100.0f;
    mDoMtx_YrotS(*calc_mtx, i_angle);
    vec.set(0.0f, 100.0f, i_offset);
    MtxPosition(&vec, &end);
    end += _this->current.pos;
    lin_chk.Set(&start, &end, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 806BBDF4-806BC0A8 000414 02B4+00 1/1 0/0 0/0 .text            e_fs_appear__FP10e_fs_class */
static void e_fs_appear(e_fs_class* i_this) {
    daE_PM_c* skullkid;
    fopAcM_SearchByID(i_this->parentActorID, (fopAc_ac_c**)&skullkid);

    switch (i_this->mMode) {
    case -1:
        switch (i_this->field_0x5b5) {
        case 1:
            i_this->mTimer[0] = 40;
            break;
        case 2:
            i_this->mTimer[0] = 50;
            break;
        case 3:
            i_this->mTimer[0] = 160;
            break;
        case 4:
            i_this->mTimer[0] = 150;
            break;
        }

        i_this->mMode = 1;
        fopAcM_OffStatus(i_this, 0);
        i_this->attention_info.flags = 0;
        break;

    case 0:
        i_this->mTimer[0] = (fopAcM_GetID(i_this) & 3) * 10;
        i_this->mMode++;
        fopAcM_OffStatus(i_this, 0);
        i_this->attention_info.flags = 0;
        // fallthrough

    case 1:
        i_this->current.pos.y = i_this->home.pos.y + 10000.0f;
        i_this->mIFrameTimer = 5;

        if (i_this->mTimer[0] == 0) {
            i_this->current.pos.y = i_this->home.pos.y;
            i_this->old.pos = i_this->current.pos;
            anm_init(i_this, ANM_APPEAR, 10.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mMode++;
            i_this->current.angle.y = i_this->mPlayerAngleY;
            i_this->attention_info.flags = 4;
            i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_APPEAR, 0, -1);
        }
        break;

    case 2:
        if (i_this->mpMorf->checkFrame(38.0f)) {
            i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_POSE, 0, -1);
        }

        if (i_this->mpMorf->isStop()) {
            i_this->mAction = e_fs_class::ACT_WAIT;
            i_this->mMode = 0;
        }
        break;
    }

    if (skullkid != NULL && skullkid->SwitchChk() != 0 && skullkid->SwitchChk() != 4
                         && i_this->mPlayerDistXZ > 200.0f) {
        i_this->current.angle.y = i_this->mPlayerAngleY;
        cLib_addCalc2(&i_this->speedF, fopAcM_GetSpeedF(daPy_getPlayerActorClass()) * 0.7f,
                      1.0f, 0.5f);
    }
}

/* 806BC0A8-806BC264 0006C8 01BC+00 1/1 0/0 0/0 .text            e_fs_wait__FP10e_fs_class */
// NONMATCHING regalloc
static void e_fs_wait(e_fs_class* i_this) {
    daE_PM_c* skullkid;
    fopAcM_SearchByID(i_this->parentActorID, (fopAc_ac_c**)&skullkid);

    switch (i_this->mMode) {
    case -1:
        i_this->mTimer[1] = 2;
        // fallthrough

    case 0:
        anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        i_this->mTimer[0] = cM_rndF(60.0f) + 2.0f;
        break;

    case 1:
        if (i_this->mTimer[1] == 1) {
            i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_POSE, 0, -1);
        }

        if (i_this->mpMorf->checkFrame(4.0f)) {
            i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_KUBIKASIGE, 0, -1);
        }

        if (i_this->mTimer[0] == 0) {
            i_this->mAction = e_fs_class::ACT_MOVE;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngleY, 0x10, 0x400);
    if (skullkid != NULL && skullkid->SwitchChk() != 0 && skullkid->SwitchChk() != 4
                         && i_this->mPlayerDistXZ > 200.0f) {
        cLib_addCalc2(&i_this->speedF, fopAcM_GetSpeedF(daPy_getPlayerActorClass()) * 0.7f,
                      1.0f, 0.5f);
    }
}

/* 806BC264-806BC444 000884 01E0+00 1/1 0/0 0/0 .text            e_fs_move__FP10e_fs_class */
// NONMATCHING regalloc
static void e_fs_move(e_fs_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_MOVE, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode++;
        // fallthrough

    case 1:
        if (i_this->mPlayerDistXZ < l_HIO.mAttackRange) {
            i_this->mAction = e_fs_class::ACT_ATTACK;
            i_this->mMode = 0;
        }
        break;
    }

    f32 target_speed = l_HIO.mMoveSpeedRatio
                            * (0.8f * fopAcM_GetSpeedF(daPy_getPlayerActorClass()) + 20.0f);
    if (!daPy_py_c::i_checkNowWolf()) {
        target_speed = 0.7f * (0.8f * fopAcM_GetSpeedF(daPy_getPlayerActorClass()) + 20.0f);
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 0.5f);
    if (i_this->speedF >= 5.0f) {
        i_this->mCreatureSound.startCreatureSoundLevel(Z2SE_EN_FS_MOVE, 0, -1);
    }

    if (way_bg_check(i_this, 300.0f, i_this->mTargetAngleY) && i_this->field_0x5b6 == 0) {
        for (int i = 0; i < 100; i++) {
            i_this->mTargetAngleY = cM_rndFX(32000.0f);
            if (!way_bg_check(i_this, 300.0f, i_this->mTargetAngleY)) {
                i_this->mTimer[0] = 50;
                i_this->field_0x5b6 = 1;
                break;
            }
        }
    } else if (i_this->mTimer[0] == 0) {
        i_this->field_0x5b6 = 0;
        i_this->mTargetAngleY = i_this->mPlayerAngleY;
    }
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 0x10, 0x400);
}

/* 806BC444-806BC750 000A64 030C+00 1/1 0/0 0/0 .text            e_fs_attack__FP10e_fs_class */
static void e_fs_attack(e_fs_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    int frame = i_this->mpMorf->getFrame();

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_ATTACK01, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mPlayerPos = player->current.pos;
        i_this->mMode++;
        break;

    case 1:
        if (i_this->mpMorf->checkFrame(9.0f)) {
            i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_BACKSWING, 0, -1);
        }

        if (frame >= 31 && frame < 36) {
            if (frame == 31) {
                i_this->field_0x692 = 1;
                i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_ATTACK, 0, -1);
            } else {
                i_this->field_0x692 = 2;
            }
        }

        if (i_this->mpMorf->isStop()) {
            i_this->mAction = e_fs_class::ACT_WAIT;
            i_this->mMode = -1;
        }
        break;
    }

    cXyz delta = i_this->mPlayerPos - i_this->current.pos;
    f32 target_speed = 0.0f;
    f32 dist = delta.abs();
    if (dist < l_HIO.mAttackDistance - 50.0f) {
        target_speed = -10.0f;
    } else if (dist > l_HIO.mAttackDistance + 50.0f) {
        target_speed = 10.0f;
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 0.5f, 1.0f);
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngleY, 5, 0x400);
}

/* 806BC750-806BC818 000D70 00C8+00 1/1 0/0 0/0 .text            e_fs_damage__FP10e_fs_class */
static void e_fs_damage(e_fs_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_DAMAGE, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mMode++;
        break;

    case 1:
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = e_fs_class::ACT_WAIT;
            i_this->mMode = -1;
        }
        break;
    }

    cLib_addCalc0(&i_this->speedF, 1.0f, 2.0f);
}

/* 806BC818-806BCC30 000E38 0418+00 1/1 0/0 0/0 .text            e_fs_end__FP10e_fs_class */
static void e_fs_end(e_fs_class* i_this) {
    i_this->mIFrameTimer = 10;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_DIE, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, cM_rndF(0.4f) + 0.7f);
        i_this->mMode++;
        fopAcM_OffStatus(i_this, 0);
        i_this->attention_info.flags = 0;

        if (i_this->mAtInfo.mHitType == 1
            && (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT
                || daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_UNK_9))
        {
            i_this->mTargetAngleY = cM_rndF(2000.0f) + 1000.0f;
        } else {
            i_this->mTargetAngleY = cM_rndFX(1000.0f);
        }
        break;

    case 1:
        if (i_this->mpMorf->checkFrame(23.0f)) {
            i_this->mTargetAngleY = 0;
        }

        if (i_this->mpMorf->checkFrame(15.0f)) {
            i_this->mTargetAngleY = i_this->mTargetAngleY / 2;
            dBgS_GndChk gnd_chk;
            dBgS_ObjGndChk_Spl spl_chk;
            cXyz pos = i_this->current.pos;
            pos.y += 100.0f;
            gnd_chk.SetPos(&pos);
            spl_chk.SetPos(&pos);
            if (dComIfG_Bgsp().GroundCross(&spl_chk) - dComIfG_Bgsp().GroundCross(&gnd_chk) > 0.0f)
            {
                static cXyz sc(1.25, 1.25, 1.25);
                static u16 w_eff_id[4] = {0x01B8, 0x01B9, 0x01BA, 0x01BB};
                for (int i = 0; i < 4; i++) {
                    i_this->mParticleKey[i]
                        = dComIfGp_particle_set(i_this->mParticleKey[i], w_eff_id[i],
                                                &i_this->current.pos, &i_this->tevStr,
                                                &i_this->shape_angle, &sc, 0xff,
                                                NULL, -1, NULL, NULL, NULL);
                }
                i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_LAND_WATER, 0, -1);
            } else {
                fopAcM_effSmokeSet1(&i_this->mSmokeKey1, &i_this->mSmokeKey2, &i_this->current.pos,
                                    NULL, 1.3f, &i_this->tevStr, 1);
                i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_LAND, 0, -1);
            }
        }

        if (i_this->mpMorf->isStop()) {
            cXyz pos = i_this->current.pos;
            if (!strcmp("F_SP117", dComIfGp_getStartStageName())
                                    && dComIfG_play_c::getLayerNo(0) == 2) {
                fopAcM_createDisappear(i_this, &pos, 10, i_this->field_0x565, 50);
            } else {
                fopAcM_createDisappear(i_this, &pos, 10, i_this->field_0x565, 13);
            }
            fopAcM_delete(i_this);
        }
        break;
    }

    cLib_addCalc0(&i_this->speedF, 1.0f, 2.0f);
    i_this->shape_angle.y += i_this->mTargetAngleY;
}

/* 806BCC30-806BCDDC 001250 01AC+00 1/1 0/0 0/0 .text            damage_check__FP10e_fs_class */
static void damage_check(e_fs_class* i_this) {
    if (i_this->mAction != e_fs_class::ACT_END && i_this->health < 0) {
        i_this->mAction = e_fs_class::ACT_END;
        i_this->mMode = 0;

    } else {
        i_this->mCcStts.Move();

        if (i_this->mCcCyl.ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->mCcCyl.GetTgHitObj();
            cc_at_check(i_this, &i_this->mAtInfo);
            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                i_this->mIFrameTimer = 20;
            } else {
                i_this->mIFrameTimer = 10;
            }
            i_this->current.angle.y = i_this->mAtInfo.mHitDirection.y;

            if (i_this->health <= 0) {
                i_this->mAction = e_fs_class::ACT_END;
                i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_DEATH, 0, -1);
                i_this->speedF = -40.0f;
            } else {
                i_this->mAction = e_fs_class::ACT_DAMAGE;
                i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_DAMAGE, 0, -1);
                i_this->speedF = -30.0f;
                if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_JUMP
                    && daPy_getPlayerActorClass()->checkCutJumpCancelTurn())
                {
                    i_this->speedF = -5.0f;
                    i_this->mIFrameTimer = 3;
                }
            }

            i_this->mMode = 0;
        }

        if (i_this->health <= 10) {
            i_this->health = 0;
            i_this->mCcCyl.SetTgHitMark(CcG_Tg_UNK_MARK_3);
        }
    }
}

/* 806BCDDC-806BCE5C 0013FC 0080+00 1/1 0/0 0/0 .text            checkViewArea__FP4cXyz */
static bool checkViewArea(cXyz* i_pos) {
    Vec proj;
    mDoLib_project(i_pos, &proj);
    bool ret = false;
    if (proj.x >= 0.0f && proj.x <= 608.0f && proj.y >= 0.0f && proj.y <= 448.0f) {
        ret = true;
    }
    return ret;
}

/* 806BCE5C-806BD0A8 00147C 024C+00 2/1 0/0 0/0 .text            e_fs_demowait__FP10e_fs_class */
// NONMATCHING regalloc
static void e_fs_demowait(e_fs_class* i_this) {
    cXyz delta;
    npc_ks_class* monkey = (npc_ks_class*)fopAcM_SearchByName(PROC_NPC_KS);

    switch (i_this->mMode) {
    case 0:
        i_this->current.pos = i_this->home.pos;
        i_this->current.pos.y += 20000.0f;
        i_this->old.pos = i_this->current.pos;
        i_this->speed.y = 0.0f;
        break;

    case 1:
        anm_init(i_this, ANM_APPEAR, 0.0f, J3DFrameCtrl::LOOP_ONCE_e, 0.0f);
        i_this->current.pos.y = (fopAcM_GetID(i_this) & 3) * 200.0f + 1300.0f;
        i_this->mMode = 2;
        i_this->field_0x566 = 1;
        break;

    case 2:
        delta.x = monkey->current.pos.x - i_this->current.pos.x;
        delta.z = monkey->current.pos.z - i_this->current.pos.z;
        i_this->mTargetAngleY = cM_atan2s(delta.x, delta.z);
        if (i_this->mAcch.ChkGroundHit()) {
            i_this->mpMorf->setPlaySpeed(1.0f);
            i_this->mCreatureSound.startCreatureSound(Z2SE_EN_FS_APPEAR, 0, -1);
            i_this->mMode = 3;
        }
        break;

    case 3:
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 4;
        }
        break;

    case 5:
        if (i_this->mTimer[0] == 0) {
            i_this->mTargetAngleY = i_this->mPlayerAngleY;
        }
        break;

    case 6:
        if (i_this->mTimer[0] == 0) {
            i_this->mAction = e_fs_class::ACT_MOVE;
            i_this->mMode = 0;
            i_this->attention_info.flags = 4;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 2, 0x1000);
}

/* 806BD0A8-806BD3E0 0016C8 0338+00 2/1 0/0 0/0 .text            action__FP10e_fs_class */
static void action(e_fs_class* i_this) {
    cXyz vec1, vec2;
    i_this->mPlayerAngleY = fopAcM_searchPlayerAngleY(i_this);
    i_this->mPlayerDistXZ = fopAcM_searchPlayerDistanceXZ(i_this);
    daE_PM_c* skullkid = (daE_PM_c*)fopAcM_SearchByID(i_this->parentActorID);
    s8 link_search = 0;

    switch (i_this->mAction) {
    case e_fs_class::ACT_APPEAR:
        e_fs_appear(i_this);
        link_search = 1;
        break;
    case e_fs_class::ACT_WAIT:
        e_fs_wait(i_this);
        link_search = 1;
        break;
    case e_fs_class::ACT_MOVE:
        if (!dComIfGp_event_runCheck()) {
            e_fs_move(i_this);
            daE_PM_c* skullkid = (daE_PM_c*)fopAcM_SearchByID(i_this->parentActorID);
            if (i_this->field_0x5b4 == 0) {
                fopAcM_OffStatus(i_this, 0x4000);
            }
            if (skullkid != NULL && skullkid->SwitchChk() == 4) {
                fopAcM_OffStatus(i_this, 0x4000);
            }
        }
        link_search = 1;
        break;
    case e_fs_class::ACT_ATTACK:
        e_fs_attack(i_this);
        link_search = 1;
        break;
    case e_fs_class::ACT_DAMAGE:
        e_fs_damage(i_this);
        break;
    case e_fs_class::ACT_END:
        e_fs_end(i_this);
        break;
    case e_fs_class::ACT_DEMOWAIT:
        e_fs_demowait(i_this);
        break;
    }

    if (link_search) {
        i_this->mCreatureSound.setLinkSearch(true);
    } else {
        i_this->mCreatureSound.setLinkSearch(false);
    }

    mDoMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    vec1.x = 0.0f;
    vec1.y = 0.0f;
    vec1.z = i_this->speedF;
    MtxPosition(&vec1, &vec2);
    i_this->speed.x = vec2.x;
    i_this->speed.z = vec2.z;
    i_this->current.pos += i_this->speed;
    i_this->speed.y += i_this->gravity;
    i_this->gravity = -5.0f;
    if (i_this->speed.y < -80.0f) {
        i_this->speed.y = -80.0f;
    }
    i_this->shape_angle.y = i_this->current.angle.y;
    if (i_this->mAcch.ChkWaterHit()
        && !(i_this->mAction == e_fs_class::ACT_APPEAR && i_this->mMode < 2))
    {
        i_this->current.pos.y = i_this->mAcch.m_wtr.GetHeight();
    }

    if (skullkid != NULL && skullkid->ActionChk() != 0) {
        i_this->health = -10;
    }

    if (i_this->mAtSph.ChkAtHit() && dComIfG_play_c::getLayerNo(0) == 0) {
        s_AtCount++;
        if (s_AtCount >= 3 && !dComIfGs_isZoneSwitch(0xb, fopAcM_GetRoomNo(i_this))) {
            dComIfGs_onZoneSwitch(0xb, fopAcM_GetRoomNo(i_this));
        }
    }

    if (!checkViewArea(&i_this->current.pos) && skullkid != NULL) {
        if (i_this->mPlayerDistXZ > l_HIO.mDeleteRange && skullkid->SwitchChk() != 4) {
            fopAcM_delete(i_this);
        } else if (daPy_getPlayerActorClass()->current.pos.y - i_this->current.pos.y > 400.0f
                                                     && skullkid->SwitchChk() != 4) {
            fopAcM_delete(i_this);
        }
    }
}

/* 806BD3E0-806BD6D0 001A00 02F0+00 2/1 0/0 0/0 .text            daE_Fs_Execute__FP10e_fs_class */
static int daE_Fs_Execute(e_fs_class* i_this) {
    cXyz zero, center;
    i_this->mFrameCounter++;
    for (int i = 0; i < 4; i++) {
        if (i_this->mTimer[i] != 0) {
            i_this->mTimer[i]--;
        }
    }
    if (i_this->mIFrameTimer != 0) {
        i_this->mIFrameTimer--;
    }

    action(i_this);

    cXyz scale(1.5f, 1.5f, 1.5f);
    cXyz pos(i_this->current.pos.x, i_this->current.pos.y + 120.0f, i_this->current.pos.z);
    setMidnaBindEffect(i_this, &i_this->mCreatureSound, &pos, &scale);

    cXyz* move_p = i_this->mCcStts.GetCCMoveP();
    if (move_p != NULL) {
        i_this->current.pos += *move_p * 0.2f;
    }

    i_this->mAcch.CrrPos(dComIfG_Bgsp());
    damage_check(i_this);

    center = i_this->current.pos;
    if (i_this->mIFrameTimer != 0) {
        center.x += 20000.0f;
    }
    i_this->mCcCyl.SetC(center);
    dComIfG_Ccsp()->Set(&i_this->mCcCyl);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::scaleM(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
    J3DModel* model = i_this->mpMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
    i_this->mpMorf->modelCalc();

    MTXCopy(model->getAnmMtx(JNT_HEAD), *calc_mtx);
    zero.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&zero, &i_this->eyePos);
    i_this->attention_info.position = i_this->eyePos;
    i_this->attention_info.position.y += 20.0f;

    MTXCopy(model->getAnmMtx(JNT_HAND_R), *calc_mtx);
    zero.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&zero, &center);
    if (i_this->field_0x692 != 0) {
        if (i_this->field_0x692 == 1) {
            i_this->mAtSph.StartCAt(center);
        } else {
            i_this->mAtSph.MoveCAt(center);
        }
        i_this->field_0x692 = 0;
    } else {
        center.x += 10000.0f;
        i_this->mAtSph.SetC(center);
    }
    i_this->mAtSph.SetR(50.0f);
    dComIfG_Ccsp()->Set(&i_this->mAtSph);

    return 1;
}

/* 806BD6D0-806BD6D8 001CF0 0008+00 1/0 0/0 0/0 .text            daE_Fs_IsDelete__FP10e_fs_class */
static int daE_Fs_IsDelete(e_fs_class* i_this) {
    return 1;
}

/* 806BD6D8-806BD740 001CF8 0068+00 1/0 0/0 0/0 .text            daE_Fs_Delete__FP10e_fs_class */
static int daE_Fs_Delete(e_fs_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "E_FS");

    if (i_this->mHIOInit) {
        hioInit = false;
    }

    if (i_this->heap != NULL) {
        i_this->mpMorf->stopZelAnime();
    }

    return 1;
}

/* 806BD740-806BD838 001D60 00F8+00 1/1 0/0 0/0 .text            useHeapIe_fst__FP10fopAc_ac_c */
static int useHeapIe_fst(fopAc_ac_c* i_this) {
    e_fs_class* _this = static_cast<e_fs_class*>(i_this);
    _this->mpMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_FS", 0xc), NULL,
                                         NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_FS", 9),
                                         J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 0, -1,
                                         &_this->mCreatureSound, 0x80000, 0x11000084);
    if (_this->mpMorf == NULL || _this->mpMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 806BD838-806BDD38 001E58 0500+00 1/0 0/0 0/0 .text            daE_Fs_Create__FP10fopAc_ac_c */
static cPhs__Step daE_Fs_Create(fopAc_ac_c* i_this) {
    e_fs_class* _this = static_cast<e_fs_class*>(i_this);
    fopAcM_SetupActor(_this, e_fs_class);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&_this->mPhase, "E_FS");

    if (step == cPhs_COMPLEATE_e) {
        _this->field_0x5b4 = fopAcM_GetParam(_this) & 0xff;
        _this->field_0x5b5 = (fopAcM_GetParam(_this) >> 8) & 0xff;
        _this->field_0x5b7 = (fopAcM_GetParam(_this) >> 0x18) & 0xff;

        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[522])
            && !strcmp("F_SP108", dComIfGp_getStartStageName()))
        {
            return cPhs_ERROR_e;
        }

        if (_this->field_0x5b4 == 0) {
            fopAcM_OnStatus(_this, 0x4000);
        }

        daE_PM_c* skullkid;
        if (fopAcM_SearchByID(_this->parentActorID, (fopAc_ac_c**)&skullkid)
            && skullkid != NULL && skullkid->SwitchChk() == 4)
        {
            fopAcM_OnStatus(_this, 0x4000);
        }

        cXyz gnd_chk_pos(_this->current.pos.x, _this->current.pos.y + 300.0f, _this->current.pos.z);
        dBgS_LinChk lin_chk;
        cXyz lin_end = _this->current.pos;
        lin_end.y += 1000.0f;
        lin_chk.Set(&i_this->current.pos, &lin_end, NULL);

        if (dComIfG_Bgsp().LineCross(&lin_chk) && dComIfG_Bgsp().GetSpecialCode(lin_chk) == 1) {
            return cPhs_ERROR_e;
        }

        if (fopAcM_gc_c::gndCheck(&gnd_chk_pos)) {
            _this->current.pos.y = fopAcM_gc_c::getGroundY();
        } else {
            return cPhs_ERROR_e;
        }

        if (_this->field_0x5b5 == 0xff) {
            _this->field_0x5b5 = 0;
        }

        if (!fopAcM_entrySolidHeap(_this, useHeapIe_fst, 0x1E40)) {
            return cPhs_ERROR_e;
        }

        if (!hioInit) {
            _this->mHIOInit = true;
            hioInit = true;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_SetMtx(_this, _this->mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(_this, 200.0f, 200.0f, 200.0f);

        _this->mCreatureSound.init(&_this->current.pos, &_this->eyePos, 3, 1);
        _this->mCreatureSound.setEnemyName("E_fs");

        _this->mAtInfo.mpSound = &_this->mCreatureSound;
        _this->mAtInfo.field_0x18 = 0x25;

        static dCcD_SrcCyl cc_cyl_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x43}, 0x75}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x4, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {0.0f, 0.0f, 0.0f}, // mCenter
                80.0f, // mRadius
                230.0f // mHeight
            } // mCyl
        };

        static dCcD_SrcSph at_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
                {dCcD_SE_17, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
            } // mSphAttr
        };

        _this->mCcStts.Init(1, 0, _this);
        _this->mCcCyl.Set(cc_cyl_src);
        _this->mCcCyl.SetStts(&_this->mCcStts);
        _this->mAtSph.Set(at_sph_src);
        _this->mAtSph.SetStts(&_this->mCcStts);

        _this->mAcch.Set(fopAcM_GetPosition_p(_this), fopAcM_GetOldPosition_p(_this), _this, 1,
                         &_this->mAcchCir, fopAcM_GetSpeed_p(_this), NULL, NULL);
        _this->mAcchCir.SetWall(50.0f, 100.0f);
        _this->mAcch.ClrWaterNone();
        _this->mAcch.SetWaterCheckOffset(10000.0f);

        _this->field_0x560 = 30;
        _this->health = 30;
        _this->attention_info.flags = 4;

        if (_this->field_0x5b5 >= 1) {
            _this->mMode = -1;
        }
        _this->field_0x5b6 = 0;

        daE_Fs_Execute(_this);
    }

    return step;
}

AUDIO_INSTANCES;

/* 806BE68C-806BE6AC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_Fs_Method */
static actor_method_class l_daE_Fs_Method = {
    (process_method_func)daE_Fs_Create,
    (process_method_func)daE_Fs_Delete,
    (process_method_func)daE_Fs_Execute,
    (process_method_func)daE_Fs_IsDelete,
    (process_method_func)daE_Fs_Draw,
};

/* 806BE6AC-806BE6DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_FS */
extern actor_process_profile_definition g_profile_E_FS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_FS,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_fs_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  160,                    // mPriority
  &l_daE_Fs_Method,       // sub_method
  0x00040120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
