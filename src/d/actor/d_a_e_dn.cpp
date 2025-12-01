/**
 * @file d_a_e_dn.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_e_dn.h"
#include "d/d_cc_d.h"
#include "d/d_bomb.h"
#include "f_op/f_op_kankyo_mng.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_horse.h"
#include "f_op/f_op_actor_enemy.h"
#include "Z2AudioLib/Z2Instances.h"

#if DEBUG
#pragma nosyminline on
#endif

class daE_DN_HIO_c : public JORReflexible {
public:
    daE_DN_HIO_c();
    virtual ~daE_DN_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ s8 id;
    /* 0x08 */ f32 model_size;          // 基本サイズ
    /* 0x0C */ f32 movement_speed;      // 移動速度
    /* 0x10 */ f32 dash_speed;          // 突進速度
    /* 0x14 */ f32 battle_init_range;   // 戦闘開始範囲
    /* 0x18 */ f32 attack_init_range;   // 攻撃開始範囲
    /* 0x1C */ s16 field_0x1c;          // 防御静止間
    /* 0x1E */ s16 field_0x1e;          // 魂抜間 弱
    /* 0x20 */ s16 field_0x20;          // 魂抜間 強
    /* 0x22 */ u8 field_0x22;
    /* 0x23 */ u8 invulnerable;         // 不死身
    /* 0x24 */ u8 field_0x24;           // 学習なし
};

enum Joint {
    /* 0x00 */ JNT_WORLD_ROOT,
    /* 0x01 */ JNT_BACKBONE01,
    /* 0x02 */ JNT_BACKBONE02,
    /* 0x03 */ JNT_NECK01,
    /* 0x04 */ JNT_NECK02,
    /* 0x05 */ JNT_FIN,
    /* 0x06 */ JNT_HEAD,
    /* 0x07 */ JNT_JAW1,
    /* 0x08 */ JNT_JAW2,
    /* 0x09 */ JNT_TONGUE,
    /* 0x0A */ JNT_SHOULDERL,
    /* 0x0B */ JNT_ARML1,
    /* 0x0C */ JNT_ARML2,
    /* 0x0D */ JNT_HANDL,
    /* 0x0E */ JNT_FINGERL1,
    /* 0x0F */ JNT_FINGERL2,
    /* 0x10 */ JNT_SHOULDERR,
    /* 0x11 */ JNT_ARMR1,
    /* 0x12 */ JNT_ARMR2,
    /* 0x13 */ JNT_HANDR1,
    /* 0x14 */ JNT_FINGERR1,
    /* 0x15 */ JNT_FINGERR2,
    /* 0x16 */ JNT_WAIST,
    /* 0x17 */ JNT_LEGL1,
    /* 0x18 */ JNT_LEGL2,
    /* 0x19 */ JNT_LEGL3,
    /* 0x1A */ JNT_FOOTL,
    /* 0x1B */ JNT_LEGR1,
    /* 0x1C */ JNT_LEGR2,
    /* 0x1D */ JNT_LEGR3,
    /* 0x1E */ JNT_FOOTR,
    /* 0x1F */ JNT_TAIL01,
    /* 0x20 */ JNT_TAIL02,
    /* 0x21 */ JNT_TAIL03,
    /* 0x22 */ JNT_TAIL04,
};

enum Action {
    /* 0x00 */ ACTION_NORMAL       = 0,
    /* 0x03 */ ACTION_FIGHT_RUN    = 3,
    /* 0x04 */ ACTION_ATTACK_0     = 4,
    /* 0x05 */ ACTION_ATTACK       = 5,
    /* 0x06 */ ACTION_TAIL_ATTACK  = 6,
    /* 0x07 */ ACTION_GUARD        = 7,
    /* 0x08 */ ACTION_JUMP         = 8,
    /* 0x09 */ ACTION_STAY         = 9,
    /* 0x0A */ ACTION_OTOREAC      = 10,
    /* 0x0B */ ACTION_BOMB_ACTION  = 11,
    /* 0x0C */ ACTION_DRAWBACK     = 12,
    /* 0x0D */ ACTION_WOLFBITE     = 13,
    /* 0x14 */ ACTION_S_DAMAGE     = 20,
    /* 0x15 */ ACTION_DAMAGE       = 21,
    /* 0x17 */ ACTION_BACKDROP     = 23,
    /* 0x18 */ ACTION_WATER        = 24,
    /* 0x19 */ ACTION_GAKEJUMP     = 25,
    /* 0x3C */ ACTION_REG          = 60,
};

enum Animation {
    /* 0x04 */ ANM_ATTACK_TAIL_01 = 4,
    /* 0x05 */ ANM_ATTACK_TAIL_02,
    /* 0x06 */ ANM_ATTACK_TAIL_03,
    /* 0x07 */ ANM_ATTACK_00,
    /* 0x08 */ ANM_ATTACK_01,
    /* 0x09 */ ANM_BLOWNOFF,
    /* 0x0A */ ANM_BRUSH_LEFT_UP,
    /* 0x0B */ ANM_BRUSH_RIGHT_UP,
    /* 0x0C */ ANM_DAMAGE_W,
    /* 0x0D */ ANM_DIE_LEFT,
    /* 0x0E */ ANM_DIE_LEFT_UP,
    /* 0x0F */ ANM_DIE_RIGHT,
    /* 0x10 */ ANM_DIE_RIGHT_UP,
    /* 0x11 */ ANM_DIE_W,
    /* 0x12 */ ANM_DRAWBACK,
    /* 0x13 */ ANM_DROWNED_A,
    /* 0x14 */ ANM_DROWNED_B,
    /* 0x15 */ ANM_FIND,
    /* 0x16 */ ANM_GUARD,
    /* 0x17 */ ANM_HANGED,
    /* 0x18 */ ANM_HANGED_DAMAGE,
    /* 0x19 */ ANM_HANGED_BRUSH,
    /* 0x1A */ ANM_HANGED_WAIT,
    /* 0x1B */ ANM_JUMP_A,
    /* 0x1C */ ANM_JUMP_B,
    /* 0x1D */ ANM_JUMP_C,
    /* 0x1E */ ANM_RUN,
    /* 0x1F */ ANM_WAIT_01,
    /* 0x20 */ ANM_WAIT_02,
    /* 0x21 */ ANM_WAIT_03,
    /* 0x22 */ ANM_WAIT_04,
    /* 0x23 */ ANM_WALK,
};

daE_DN_HIO_c::daE_DN_HIO_c() {
    id = -1;
    model_size = 1.1f;
    movement_speed = 7.5f;
    dash_speed = 25.0f;
    battle_init_range = 300.0f;
    attack_init_range = 350.0f;
    field_0x1c = 3;
    field_0x1e = 40;
    field_0x20 = 80;
    field_0x22 = 1;
    invulnerable = 0;
    field_0x24 = 0;
}

#if DEBUG
void daE_DN_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genLabel("  リザードマン", 0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("基本サイズ", &model_size, 0.0f, 5.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("移動速度", &movement_speed, 0.0f, 20.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("突進速度", &dash_speed, 0.0f, 40.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("戦闘開始範囲", &battle_init_range, 0.0f, 2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("攻撃開始範囲", &attack_init_range, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genCheckBox("不死身", &invulnerable, 1, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genCheckBox("学習なし", &field_0x24, 1, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("魂抜間 弱", &field_0x1e, 0, 100, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("魂抜間 強", &field_0x20, 0, 100, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("防御静止間", &field_0x1c, 0, 20, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
}
#endif

static void dn_disappear(e_dn_class* i_this) {
    fopEn_enemy_c* actor = (fopEn_enemy_c*)&i_this->actor;
    cXyz work, pos;

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
    work.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&work, &pos);

    fopAcM_createDisappear(actor, &pos, 13, 0, 21);
    fopAcM_delete(actor);

    int swBit = (fopAcM_GetParam(actor) & 0xFF000000) >> 24;
    if (swBit != 0xFF) {
        dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(actor));
    }
}

static void anm_init(e_dn_class* i_this, int i_anmID, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_dn", i_anmID), i_attr, i_morf,
                                i_rate, 0.0f, -1.0f);
    i_this->mAnmID = i_anmID;
}

static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_dn_class* i_this = (e_dn_class*)model->getUserArea();
        if (i_this != NULL) {
            MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);

            if (jointNo != JNT_WORLD_ROOT) {
                if (jointNo == JNT_WAIST) {
                    cMtx_YrotM(*calc_mtx, (s16)i_this->field_0x830.y);
                    cMtx_ZrotM(*calc_mtx, i_this->mJntWaistZRot + (-i_this->field_0x762[2].x + i_this->field_0x830.x));
                } else if (jointNo == JNT_LEGL1) {
                    cMtx_YrotM(*calc_mtx, i_this->mJntLegL1YRot);
                } else if (jointNo == JNT_LEGL2) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7fc[0]);
                } else if (jointNo == JNT_LEGR1) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x7fc[1]);
                } else if (jointNo == JNT_LEGR2) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7fc[2]);
                } else if (jointNo == JNT_BACKBONE02) {
                    cMtx_YrotM(*calc_mtx, (i_this->field_0x6fa / 2) + (-i_this->field_0x6f6 + i_this->field_0x762[1].y));
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[1].x + i_this->field_0x7ec[1]);
                } else if (jointNo == JNT_NECK01 || jointNo == JNT_NECK02) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x762[0].y + (-i_this->field_0x6f6 + i_this->field_0x6fa));
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7ec[0] + (-i_this->field_0x6f8 + i_this->field_0x762[0].x));
                } else if (jointNo == JNT_ARML1) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[3].y + i_this->mJntArmL1ZRotOffset);
                } else if (jointNo == JNT_ARML2) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[4].y + i_this->mJntArmL2ZRotOffset);
                } else if (jointNo == JNT_ARMR1) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[5].y + i_this->mJntArmR1ZRotOffset);
                } else if (jointNo == JNT_ARMR2) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[6].y + i_this->mJntArmR2ZRotOffset);
                } else if (jointNo >= JNT_TAIL01 && jointNo <= JNT_TAIL04) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x80e[jointNo - 31].y + i_this->mJntTailYRotOffset);
                    cMtx_ZrotM(*calc_mtx, (s16)i_this->field_0x80e[jointNo - 31].x);
                }
            }

            if (i_this->field_0x80a != 0) {
                if ((jointNo & 1) != 0) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x80a);
                } else if ((jointNo & 2) != 0) {
                    cMtx_XrotM(*calc_mtx, i_this->field_0x80a);
                } else if ((jointNo & 4) != 0) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x80a);
                }
            }

            model->setAnmMtx(jointNo, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            if (jointNo == TREG_S(0)) {
                MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, TREG_S(1));
                cMtx_XrotM(*calc_mtx, TREG_S(2));
                cMtx_ZrotM(*calc_mtx, TREG_S(3));
                model->setAnmMtx(jointNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }

            if (jointNo == TREG_S(4)) {
                MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, TREG_S(5));
                cMtx_XrotM(*calc_mtx, TREG_S(6));
                cMtx_ZrotM(*calc_mtx, TREG_S(7));
                model->setAnmMtx(jointNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }
        }
    }

    return 1;
}

static int daE_DN_Draw(e_dn_class* i_this) {
    if (i_this->field_0x10d8 != 0) {
        return 1;
    }

    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);

    if (i_this->field_0x6c4 != 0) {
        J3DModelData* modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = i_this->mColor;
            matNode_p->getTevColor(0)->g = i_this->mColor;
            matNode_p->getTevColor(0)->b = i_this->mColor;
        }
    }

    i_this->mpModelMorf->entryDL();

    if (i_this->field_0x6c4 != 0) {
        J3DModelData* modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = 0;
            matNode_p->getTevColor(0)->g = 0;
            matNode_p->getTevColor(0)->b = 0;
        }
    }

    g_env_light.setLightTevColorType_MAJI(i_this->mpKnifeModel, &a_this->tevStr);
    mDoExt_modelUpdateDL(i_this->mpKnifeModel);

    if (i_this->mpSkullModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(i_this->mpSkullModel, &a_this->tevStr);
        mDoExt_modelUpdateDL(i_this->mpSkullModel);
    }

    g_env_light.setLightTevColorType_MAJI(i_this->mpShieldModel, &a_this->tevStr);
    mDoExt_modelUpdateDL(i_this->mpShieldModel);

    cXyz pos;
    pos.set(a_this->current.pos.x, a_this->current.pos.y + 50.0f + BREG_F(18), a_this->current.pos.z);
    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &pos, BREG_F(19) + 950.0f, 0.0f, 
                                            a_this->current.pos.y, i_this->mObjAcch.GetGroundH(), 
                                            i_this->mObjAcch.m_gnd, &i_this->actor.tevStr, 0, 1.0f, 
                                            dDlst_shadowControl_c::getSimpleTex());
    dComIfGd_addRealShadow(i_this->mShadowKey, i_this->mpKnifeModel);
    if (i_this->mpSkullModel != NULL) {
        dComIfGd_addRealShadow(i_this->mShadowKey, i_this->mpSkullModel);
    }
    dComIfGd_addRealShadow(i_this->mShadowKey, i_this->mpShieldModel);
    
    return 1;
}

static BOOL other_bg_check(e_dn_class* i_this, fopAc_ac_c* i_actor) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz unused, start, end;

    end = i_actor->current.pos;
    end.y += 100.0f;
    start = a_this->current.pos;
    start.y = a_this->eyePos.y;
    lin_chk.Set(&start, &end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

static BOOL other_bg_check2(e_dn_class* i_this, cXyz* param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz unused, start, end;

    end = *param_2;
    end.y += 100.0f;
    start = a_this->current.pos;
    start.y = a_this->eyePos.y;

    lin_chk.Set(&start, &end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 804EEF2D 0003+00 data_804EEF2D None */
u8 l_initHIO;

daE_DN_HIO_c l_HIO;

fopAc_ac_c* target_info[10];

int target_info_count;

static void* s_b_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && dBomb_c::checkBombActor((fopAc_ac_c*)i_actor) && !((dBomb_c*)i_actor)->checkStateExplode() && target_info_count < 10) {
        target_info[target_info_count] = (fopAc_ac_c*)i_actor;
        target_info_count++;
    }

    return NULL;
}

static dBomb_c* search_bomb(e_dn_class* i_this, int param_2) {
    if ((i_this->field_0x744 & 0x10000000) == 0) {
        return NULL;
    }

    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBomb_c* bomb;

    target_info_count = 0;
    for (int i = 0; i < 10; i++) {
        target_info[i] = NULL;
    }

    fpcM_Search(s_b_sub, i_this);

    f32 threshold = 50.0f;
    if (target_info_count != 0) {
        cXyz sp44, sp50, sp5c;
        for (int i = 0; i < target_info_count;) {
            bomb = (dBomb_c*)target_info[i];
            sp44.x = bomb->current.pos.x - a_this->eyePos.x;
            sp44.y = 50.0f + bomb->current.pos.y - a_this->eyePos.y;
            sp44.z = bomb->current.pos.z - a_this->eyePos.z;
            sp50.x = bomb->current.pos.x - a_this->current.pos.x;
            sp50.y = bomb->current.pos.y - a_this->current.pos.y;
            sp50.z = bomb->current.pos.z - a_this->current.pos.z;

            if (sp44.abs() < threshold && !(sp50.abs() > i_this->mPlayerDistance + 30.0f) && (!other_bg_check(i_this, bomb) || !param_2)) {
                if (param_2) {
                    f32 absVal = fabsf(50.0f + bomb->current.pos.y - a_this->eyePos.y);
                    if (absVal <= 300.0f) {
                        s16 sVar1 = a_this->shape_angle.y - cM_atan2s(sp44.x, sp44.z);
                        if (sVar1 < 0) {
                            sVar1 = -1 * sVar1;
                        }

                        if ((u16)sVar1 < 20000) {
                            return bomb;
                        }

                        cMtx_YrotS(*calc_mtx, -a_this->shape_angle.y);
                        MtxPosition(&sp44, &sp5c);

                        if (fabsf(sp5c.x) < 500.0f && fabsf(sp5c.y) < 300.0f && sp5c.z > -125.0f && sp5c.z < 500.0f) {
                            return bomb;
                        }
                    }
                } else {
                    return bomb;
                }
            }

            i++;
            if (i == target_info_count) {
                i = 0;
                threshold += 50.0f;
                if (threshold > 1500.0f) {
                    return NULL;
                }
            }
        }
    } else {
        return NULL;
    }
    
    return NULL;
}

static dBomb_c* bomb_view_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    return search_bomb(i_this, TRUE);
}

static dBomb_c* bomb_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    return search_bomb(i_this, FALSE);
}

static BOOL player_way_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    s16 angle = a_this->shape_angle.y - player->shape_angle.y;
    if (angle < 0) {
        angle = angle * -1;
    }

    if ((u32)((s16)angle & 0xFFFF) < 0x6000) {
        return FALSE;
    }

    return TRUE;
}

static int pl_check(e_dn_class* i_this, f32 param_2, s16 param_3) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    if (i_this->mPlayerDistance < param_2) {
        s16 sVar1 = a_this->shape_angle.y - i_this->mYAngleToPlayer;
        if (sVar1 < param_3 && sVar1 > (s16)-param_3 && !other_bg_check(i_this, player)) {
            return 1;
        }
    }
        
    for (int i = 0; i <= 2; i++) {
        if (i_this->mSphs[i].ChkCoHit() != 0) {
            if (player == dCc_GetAc(i_this->mSphs[i].GetCoHitObj()->GetAc())) {
                return 2;
            }
        }
    }
    
    return 0;
}

static BOOL move_gake_check(e_dn_class* i_this, f32 param_2, s8 param_3) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_GndChk gnd_chk;
    cXyz sp84, sp90;

    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    sp84.x = 0.0f;
    sp84.y = 100.0f;
    if (param_3 != 0) {
        sp84.z = -param_2;
    } else {
        sp84.z = param_2;
    }
    MtxPosition(&sp84, &sp90);
    sp90 += a_this->current.pos;
    gnd_chk.SetPos(&sp90);

    if (a_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 300.0f) {
        return TRUE;
    }

    return FALSE;
}

static BOOL jump_pos_check(e_dn_class* i_this, cXyz* param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_GndChk gnd_chk;
    cXyz sp94, spa0;
    f32 fVar1 = KREG_F(16) + 300.0f;

    cMtx_YrotS(*calc_mtx, i_this->mYAngleToPlayer);
    sp94.x = 0.0f;
    sp94.y = 200.0f;

    int i = 0;
    while (i < KREG_S(7) + 10) {
        sp94.z = fVar1;
        MtxPosition(&sp94, &spa0);
        spa0 += a_this->current.pos;
        gnd_chk.SetPos(&spa0);
        spa0.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

        if ((a_this->current.pos.y - spa0.y) < 200.0f) {
            *param_2 = spa0;
            sp94.z += KREG_F(18) + 200.0f;
            MtxPosition(&sp94, &spa0);
            spa0 += a_this->current.pos;
            gnd_chk.SetPos(&spa0);
            spa0.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

            if ((a_this->current.pos.y - spa0.y) < 200.0f) {
                *param_2 = spa0;
            }

            return TRUE;
        }

        fVar1 += 50.0f;
        i++;
    }

    return FALSE;
}

static void e_dn_stay(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x6f4 = 5;
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_WAIT_01, 10.0f, J3DFrameCtrl::EMode_LOOP, cM_rndF(0.1f) + 0.9f);
            i_this->mMode = 1;
            // fallthrough
        case 1:
            if (fopAcM_otoCheck(a_this, 2000.0f) || daPy_getPlayerActorClass()->checkWolfBark()) {
                SND_INFLUENCE* sound = dKy_Sound_get();
                cXyz posDelta = sound->position - a_this->current.pos;
                s16 sVar1 = cM_atan2s(posDelta.y, JMAFastSqrt(posDelta.x * posDelta.x + posDelta.z * posDelta.z));
                if (sVar1 > 0x1000) {
                    i_this->mMode = 5;
                } else {
                    i_this->mMode = 2;
                }

                i_this->mTimers[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x738 = sound->position;
            }
            break;

        case 2:
            if (i_this->mTimers[0] == 0) {
                anm_init(i_this, ANM_FIND, 3.0f, J3DFrameCtrl::EMode_NONE, 1.5f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND, -1);
                i_this->mMode = 3;
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                if (other_bg_check2(i_this, &i_this->field_0x738)) {
                    i_this->mTimers[0] = cM_rndF(10.0f) + 20.0f;
                    i_this->mMode = 4;
                } else {
                    i_this->mAction = ACTION_OTOREAC;
                    i_this->mMode = 0;
                }
            }
            break;

        case 4:
            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 10;
                i_this->mTimers[0] = cM_rndF(10.0f) + 30.0f;
                anm_init(i_this, ANM_WAIT_03, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.5f);
            }
            break;

        case 5:
            if (i_this->mTimers[0] == 0) {
                anm_init(i_this, ANM_FIND, 3.0f, J3DFrameCtrl::EMode_NONE, 1.5f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND, -1);
                i_this->mMode = 6;
            }
            break;

        case 6:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mTimers[0] = cM_rndF(10.0f) + 20.0f;
                i_this->mMode = 7;
            }
            break;

        case 7:
            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 10;
                i_this->mTimers[0] = cM_rndF(40.0f) + 50.0f;
                anm_init(i_this, ANM_WAIT_04, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.3f);
                i_this->mpModelMorf->setFrame(cM_rndF(75.0f));
            }
            break;

        case 8:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mMode = 0;
            }
            break;

        case 10:
            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 0;
            }
    }

    if ((i_this->mFrameCounter & 15) == 0) {
        if (pl_check(i_this, i_this->field_0x6d8, 0x4000) != 0) {
            i_this->mAction = ACTION_FIGHT_RUN;
            i_this->mMode = -10;
            i_this->mTimers[0] = 60;
        } else if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = ACTION_BOMB_ACTION;
            i_this->mMode = 0;
        }
    }
}

static void e_dn_otoreac(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp40, sp4c;
    f32 fVar1 = 0.0f;
    i_this->field_0x6f4 = 2;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_WAIT_01, 10.0f, J3DFrameCtrl::EMode_LOOP, cM_rndF(0.2f) + 1.5f);
            i_this->mTimers[0] = cM_rndF(10.0f) + 20.0f;
            i_this->mMode = 1;
            // fallthrough
        case 1:
            if (i_this->mTimers[0] == 0) {
                anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndFX(0.05f) + 1.0f);
                i_this->mMode = 2;
            }
            break;

        case 2:
            fVar1 = l_HIO.dash_speed;
            if ((i_this->mFrameCounter & 3) == 0) {
                if ((i_this->mFrameCounter & 4) != 0) {
                    i_this->field_0x10e4 = 1;
                } else {
                    i_this->field_0x10e4 = 2;
                }
            }

            sp40 = i_this->field_0x738 - a_this->current.pos;
            cLib_addCalcAngleS2(&a_this->current.angle.y, cM_atan2s(sp40.x, sp40.z), 2, 0xC00);
            if (sp40.abs() < 250.0f || i_this->mObjAcch.ChkWallHit() != 0) {
                i_this->mAction = ACTION_NORMAL;
                i_this->mMode = 0;
                i_this->mTimers[0] = cM_rndF(50.0f) + 50.0f;
                anm_init(i_this, ANM_WAIT_03, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;


    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    if ((i_this->mFrameCounter & 15) == 0) {
        if (pl_check(i_this, i_this->field_0x6d8, 0x4000) != 0) {
            i_this->mAction = ACTION_FIGHT_RUN;
            i_this->mMode = -10;
            i_this->mTimers[0] = 60;
        } else if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = ACTION_BOMB_ACTION;
            i_this->mMode = 0;
        }
    }
}

static void e_dn_bomb_action(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    s16 sVar2;
    cXyz sp3c, sp48;
    dBomb_c* bomb = bomb_check(i_this);
    if (bomb == NULL) {
        i_this->mAction = ACTION_FIGHT_RUN;
        i_this->mMode = 0;
        return;
    }

    sp3c.x = bomb->current.pos.x - a_this->current.pos.x;
    sp3c.z = bomb->current.pos.z - a_this->current.pos.z;
    s16 sVar1 = cM_atan2s(sp3c.x, sp3c.z);
    f32 fVar1 = 0.0f;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_FIND, 3.0f, J3DFrameCtrl::EMode_NONE, 1.5f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND_BOMB, -1);
            i_this->mMode = 1;
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mMode = 2;
            }
            break;

        case 2:
            i_this->mMode = 3;
            anm_init(i_this, ANM_WAIT_01, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->mTimers[1] = cM_rndF(10.0f) + 10.0f;
            // fallthrough
        case 3:
            if (i_this->mTimers[1] == 0 && bomb->speedF < 0.1f) {
                i_this->mMode = 4;
                anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndFX(0.05f) + 1.0f);
            }
            break;

        case 4:
            if (i_this->arg1 == 1 && bomb->speedF < 0.1f && !bomb->checkStateCarry() && JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 250.0f) {
                sVar2 = i_this->mYAngleToPlayer - a_this->shape_angle.y;
                if (sVar2 < 0x4000 && sVar2 > -0x4000) {
                    i_this->mMode = 10;
                    break;
                }
            }

            sVar1 += 0x8000;
            fVar1 = l_HIO.dash_speed;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) > 600.0f) {
                i_this->mMode = 5;
                anm_init(i_this, ANM_WAIT_01, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            
            break;

        case 5:
            i_this->mSound.startCreatureSoundLevel(Z2SE_EN_DN_V_LOOK_BOMB, 0, -1);
            sVar1 = i_this->mYAngleToPlayer;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 500.0f) {
                i_this->mMode = 2;
            }
            break;

        case 10:
            i_this->field_0x6f2 = 0;
            fVar1 = l_HIO.dash_speed;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 100.0f) {
                i_this->mTimers[0] = 20;
                i_this->mMode = 11;
                anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::EMode_NONE, cM_rndFX(0.05f) + 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_KICK_BOMB, -1);
            }

            if (bomb->speedF > 0.1f) {
                i_this->mMode = 2;
            }
            break;

        case 11:
            i_this->field_0x6f2 = 0;
            sVar1 = i_this->mYAngleToPlayer;

            if (i_this->mTimers[0] >= 10) {
                cMtx_YrotS(*calc_mtx, sVar1);
                sp3c.x = TREG_F(15) + -30.0f;
                sp3c.y = 0.0f;
                sp3c.z = TREG_F(16) + 60.0f;
                MtxPosition(&sp3c, &sp48);
                sp48 += a_this->current.pos;

                cLib_addCalc2(&bomb->current.pos.x, sp48.x, 1.0f, 15.0f);
                cLib_addCalc2(&bomb->current.pos.z, sp48.z, 1.0f, 15.0f);

                if (i_this->mTimers[0] == 10) {
                    bomb->speedF = 30.0f;
                    bomb->speed.y = 30.0f;
                    bomb->current.angle.y = a_this->shape_angle.y;
                }
            }

            if (i_this->mTimers[0] == 0) {
                anm_init(i_this, ANM_WAIT_01, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mMode = 5;
            }
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, sVar1, 4, 0x1000);
    i_this->field_0x6f4 = 2;
    i_this->field_0x738 = bomb->current.pos;
}

static void e_dn_normal(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp44, sp50;
    f32 fVar1 = 0.0f;
    s16 sVar1, angle, sVar3;
    sVar1 = 0x4000;

    switch (i_this->mMode) {
        case 0:
        case 1:
        case 2:
            if (i_this->mTimers[0] == 0) {
                if (fopAcM_wayBgCheck(a_this, 200.0f, 50.0f) || move_gake_check(i_this, 200.0f, 0)) {
                    angle = cM_rndFX(10000.0f) + 32768.0f;
                    i_this->mTimers[1] = 40;
                } else {
                    sp50.x = a_this->home.pos.x + cM_rndFX(600.0f);
                    sp50.y = a_this->home.pos.y;
                    sp50.z = a_this->home.pos.z + cM_rndFX(600.0f);
                    sp44 = sp50 - a_this->current.pos;

                    angle = cM_atan2s(sp44.x, sp44.z) - a_this->current.angle.y;
                    if (angle > 0x3000) {
                        angle = 0x3000;
                    } else if (angle < -0x3000) {
                        angle = -0x3000;
                    }
                }

                i_this->mCurrentAngleYTarget = a_this->current.angle.y + angle;
                anm_init(i_this, ANM_WALK, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mMode = 3;
                i_this->mTimers[0] = cM_rndF(100.0f) + 100.0f;
            } else {
                sVar1 = 0x7000;
            }
            break;

        case 3:
            fVar1 = l_HIO.movement_speed;
            angle = a_this->current.angle.y;
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mCurrentAngleYTarget, 2, 0x400);
            sVar3 = a_this->current.angle.y - i_this->mCurrentAngleYTarget;
            if (sVar3 > 0x1000 || sVar3 < -0x1000) {
                fVar1 = 0.0f;
            }

            angle -= a_this->current.angle.y;
            angle *= (s16)(YREG_S(5) + 2);
            s16 sVar4 = YREG_S(6) + 0x1000;
            if (angle > sVar4) {
                angle = sVar4;
            } else if (angle < (s16)-sVar4) {
                angle = -sVar4;
            }

            cLib_addCalcAngleS2(&i_this->mJntTailYRotOffset, angle, 2, 0x400);

            if (i_this->mTimers[0] == 0 || 
                (i_this->mTimers[1] == 0 && (fopAcM_wayBgCheck(a_this, 200.0f, 50.0f) || move_gake_check(i_this, 200.0f, 0)))) {
                i_this->mMode = 2;
                i_this->mTimers[0] = cM_rndF(100.0f) + 50.0f;
                anm_init(i_this, ANM_WAIT_03, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 3.0f);
    BOOL bVar1 = fopAcM_otoCheck(a_this, 2000.0f) | daPy_getPlayerActorClass()->checkWolfBark();
    if ((i_this->mFrameCounter & 15) == 0 || bVar1) {
        if (bVar1 || pl_check(i_this, i_this->field_0x6d8, sVar1) != 0) {
            i_this->mAction = ACTION_FIGHT_RUN;
            i_this->mMode = -10;
            i_this->mTimers[0] = 60;
        }

        if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = ACTION_BOMB_ACTION;
            i_this->mMode = 0;
        }
    }
}

static void e_dn_drawback(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_DRAWBACK, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 1;
            a_this->speedF = KREG_F(4) + -5.0f;
            i_this->mInvulnerabilityTimer = 10;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DRAWBACK, -1);
            i_this->mCurrentAngleYTarget = player->shape_angle.y + 0x8000;
            break;

        case 1:
            i_this->actor.onHeadLockFlg();
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mCurrentAngleYTarget, 4, 0x400);
            cLib_addCalc0(&a_this->speedF, 1.0f, KREG_F(5) + 0.1f);

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = ACTION_FIGHT_RUN;
                i_this->mMode = 0;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_AWAKE, -1);
            }
            break;
    }

    if (move_gake_check(i_this, KREG_F(9) + 50.0f, 1)) {
        i_this->mAction = ACTION_BACKDROP;
        i_this->mMode = 0;
    }
}

static void e_dn_wolfbite(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->mInvulnerabilityTimer = 10;
    cLib_addCalc0(&a_this->speedF, 1.0f, 2.0f);

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_HANGED, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 1;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DRAWBACK, -1);
            a_this->health -= (s16)10;
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, ANM_HANGED_WAIT, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mMode = 2;
            }
            break;

        case 2:
            if (i_this->mAnmID == ANM_HANGED_DAMAGE) {
                if (i_this->mpModelMorf->isStop()) {
                    anm_init(i_this, ANM_HANGED_WAIT, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                }
            }

            if (a_this->health <= 0 || a_this->checkWolfBiteDamage()) {
                a_this->offWolfBiteDamage();
                anm_init(i_this, ANM_HANGED_DAMAGE, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                a_this->health -= (s16)10;
                if (a_this->health <= 0) {
                    player->offWolfEnemyHangBite();
                    i_this->field_0x750 = (a_this->shape_angle.y - 0x8000) - player->shape_angle.y;
                    i_this->field_0x74c = 150.0f;
                    i_this->mAction = ACTION_DAMAGE;
                    i_this->mMode = 0;
                    i_this->field_0x724.y = player->shape_angle.y + 0x8000;
                    a_this->speed.y = 0.0f;
                    i_this->field_0x704 = -1.0f;
                    i_this->mUnkTimer4 = DREG_S(2) + 50;
                    i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 32);
                    i_this->field_0x710 = 1;
                    i_this->mInvulnerabilityTimer = 1000;
                    i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DEATH, -1);
                    return;
                }

                i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 30);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DAMAGE, -1);
            }

            if (!player->checkWolfEnemyHangBiteOwn(a_this)) {
                anm_init(i_this, ANM_HANGED_BRUSH, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mMode = 3;
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = ACTION_FIGHT_RUN;
                i_this->mMode = 0;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_AWAKE, -1);
            }
    }
}

static int way_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    s16 sVar1 = a_this->shape_angle.y - i_this->mYAngleToPlayer;
    if (sVar1 <= 0x4000 && sVar1 >= -0x4000) {
        return 0;
    }

    if (sVar1 < 0) {
        return 1;
    }

    return 2;
}

int learn_check;

static void* shot_s_sub(void* i_actor, void* i_data) {
    e_dn_class* i_this = (e_dn_class*)i_data;
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    if ((fopAcM_IsActor(i_actor) && (learn_check & 0x80000000) != 0 && fopAcM_GetName(i_actor) == PROC_ARROW && (fopAcM_GetParam(i_actor) == 1 || 
        fopAcM_GetParam(i_actor) == 2))) {
        cXyz sp28(a_this->current.pos - ((fopAc_ac_c*)i_actor)->current.pos);
        if (sp28.abs() < 1000.0f) {
            return i_actor;
        }
    }

    return NULL;
}

static void e_dn_fight_run(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp4c, sp58;
    f32 fVar1 = 0.0f;
    int frame = i_this->mpModelMorf->getFrame();
    BOOL wayCheck;
    s8 sVar4 = 1;

    if (pl_check(i_this, i_this->field_0x6d8 + 50.0f, 0x7FFF) == 0 && i_this->mTimers[0] == 0) {
        if (i_this->mUnkTimer1 == 0) {
            sVar4 = 0;
        }
    } else {
        i_this->mUnkTimer1 = 40;
    }

    switch (i_this->mMode) {
        case -10:
            anm_init(i_this, ANM_WAIT_01, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->mTimers[1] = cM_rndF(10.0f) + 15.0f;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND, -1);
            i_this->mMode = -9;
            break;

        case -9:
            cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);
            if (i_this->mTimers[1] == 0) {
                i_this->mMode = 0;
            }
            break;

        case 0:
            anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndFX(0.05f) + 1.0f);
            i_this->mMode = 1;
            i_this->mUnkCounter1 = 0;
            // fallthrough
        case 1:
            fVar1 = l_HIO.dash_speed;
            if ((i_this->mFrameCounter & 3) == 0) {
                if ((i_this->mFrameCounter & 4) != 0) {
                    i_this->field_0x10e4 = 1;
                } else {
                    i_this->field_0x10e4 = 2;
                }
            }

            if (i_this->mObjAcch.ChkWallHit() != 0 && !fopAcM_wayBgCheck(a_this, 200.0f, 120.0f)) {
                i_this->mUnkCounter1++;
            } else if (i_this->mPlayerDistance < l_HIO.battle_init_range) {
                anm_init(i_this, ANM_WAIT_02, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mMode = 2;
                i_this->mTimers[2] = JREG_F(1) + (cM_rndF(30.0f) + 30.0f);
            }

            if (i_this->mUnkCounter1 > 20) {
                i_this->mAction = ACTION_JUMP;
                i_this->mMode = 0;
                return;
            }

            if (move_gake_check(i_this, KREG_F(6) + 50.0f, 0)) {
                i_this->mAction = ACTION_GAKEJUMP;
                i_this->mMode = 0;
                i_this->mInvulnerabilityTimer = 100;
                a_this->speedF = 0.0f;
                return;
            }
            break;

        case 2:
            i_this->field_0x82e = 1;
            if (frame == 7 || frame == 21) {
                a_this->speed.y = XREG_F(4) + 10.0f;
                if (i_this->mPlayerDistance > (l_HIO.battle_init_range + 250.0f)) {
                    i_this->mMode = 0;
                    a_this->current.angle.y = a_this->shape_angle.y;
                    break;
                }

                if (i_this->mPlayerDistance > (l_HIO.battle_init_range + 100.0f)) {
                    a_this->current.angle.y = i_this->mYAngleToPlayer;
                } else if (i_this->mPlayerDistance < (l_HIO.battle_init_range - 100.0f)) {
                    a_this->current.angle.y = -i_this->mYAngleToPlayer;
                } else {
                    a_this->current.angle.y = cM_rndFX(32763.0f);
                }

                a_this->speedF = cM_rndF(XREG_F(5) + 5.0f) + 5.0f;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_BREATH, -1);
            }

            if (frame == 13 || frame == 27) {
                a_this->speedF = 0.0f;
                i_this->field_0x10e4 = 3;
                if (frame == 13) {
                    i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_L, 0, -1);
                } else {
                    i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_R, 0, -1);
                }
            }

            a_this->gravity = XREG_F(6) + -5.0f;
            break;
    }

    s16 sVar1;
    if (i_this->mMode >= 0) {
        if (i_this->field_0x82e == 0) {
            sVar1 = a_this->current.angle.y;
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 2, 0x800);
            sVar1 -= a_this->current.angle.y;
            s16 sVar2 = a_this->current.angle.y - i_this->mYAngleToPlayer;
            if (sVar2 > 0x800 || sVar2 < -0x800) {
                fVar1 = 0.0f;
            }

            cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
        } else {
            sVar1 = a_this->shape_angle.y;
            cLib_addCalcAngleS2(&a_this->shape_angle.y, i_this->mYAngleToPlayer, 4, 0x800);
            sVar1 -= a_this->shape_angle.y;
        }

        sVar1 *= (s16)(YREG_S(5) + 2);
        s16 sVar4 = YREG_S(6) + 0x1000;
        if (sVar1 > sVar4) {
            sVar1 = sVar4;
        } else if (sVar1 < (s16)-sVar4) {
            sVar1 = -sVar4;
        }
        cLib_addCalcAngleS2(&i_this->mJntTailYRotOffset, sVar1, 2, 0x400);
    }

    u8 sVar3 = 0;
    learn_check = i_this->field_0x744;
    if (fpcM_Search(shot_s_sub, i_this) != NULL || ((i_this->field_0x744 & 0x1000) != 0 && daPy_getPlayerActorClass()->checkHookshotShootReturnMode())) {
        sVar3 = 1;
        OS_REPORT(" DEF ON !!\n");
    }

    if (sVar4 == 0) {
        if (i_this->mUnkTimer1 == 0) {
            i_this->mAction = ACTION_NORMAL;
            i_this->mMode = 0;
            i_this->mTimers[0] = cM_rndF(50.0f) + 50.0f;
            anm_init(i_this, ANM_WAIT_03, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);

            if (i_this->field_0x82e != 0) {
                a_this->current.angle.y = a_this->shape_angle.y;
            }

            return;
        }
    } else if (
        dComIfGp_checkPlayerStatus1(0, 0x2000000) != 0 || 
        (((i_this->mXAngleToPlayer < 0x1000 && i_this->mXAngleToPlayer > -0x1000) || sVar3 != 0) && player_way_check(i_this))
    ) {
        if (
            (sVar3 != 0 || (i_this->mPlayerDistance < l_HIO.battle_init_range && (i_this->field_0x744 & cc_pl_cut_bit_get()) != 0 &&
            ((daPy_getPlayerActorClass()->getCutAtFlg() != 0 || daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_JUMP) ||
            (i_this->field_0x744 & 0x400) != 0))) && i_this->field_0x74c < 1.0f
        ) {
            i_this->mAction = ACTION_GUARD;
            if (cc_pl_cut_bit_get() == 0x100) {
                i_this->mMode = 0;
            } else {
                i_this->mMode = 5;
            }

            i_this->field_0x708 = TREG_F(10) + 30.0f;
            i_this->field_0x70c = a_this->shape_angle.y;
            i_this->mTimers[0] = 0;
            i_this->mInvulnerabilityTimer = 15;
        } else if (i_this->mPlayerDistance < l_HIO.attack_init_range) {
            if (i_this->mTimers[2] == 0) {
                i_this->mTimers[2] = JREG_F(1) + (cM_rndF(30.0f) + 30.0f);
                f32 fVar1 = 1.0f;
                if (cM_rndF(1.0f) < fVar1) {
                    wayCheck = way_check(i_this);
                    if (!wayCheck && cM_rndF(1.0f) < 0.75f) {
                        if (i_this->mPlayerDistance < (l_HIO.attack_init_range - 100.0f) + TREG_F(7)) {
                            i_this->mAction = ACTION_ATTACK_0;
                        } else {
                            i_this->mAction = ACTION_ATTACK;
                        }

                        i_this->mMode = 0;
                    } else {
                        i_this->mAction = ACTION_TAIL_ATTACK;
                        i_this->mMode = 0;
                    }
                }
            }
        }
    }

    i_this->field_0x6f4 = 1;
    if ((i_this->mFrameCounter & 15) == 0 && bomb_view_check(i_this) != NULL) {
        i_this->mAction = ACTION_BOMB_ACTION;
        i_this->mMode = 0;
    }

    if (i_this->arg1 == 1 && move_gake_check(i_this, KREG_F(8) + 150.0f, 1) && (i_this->mFrameCounter & 15) == 0 && cM_rndF(1.0f) < 0.5f) {
        i_this->field_0x700 = cM_rndF(10.0f) + 10.0f;
        i_this->field_0x701 = cM_rndF(1.9f);
    }

    if (move_gake_check(i_this, KREG_F(9) + 50.0f, 1)) {
        if (i_this->arg1 == 1) {
            if (cM_rndF(1.0f) < 0.5f) {
                i_this->mAction = ACTION_TAIL_ATTACK;
                i_this->mMode = 0;
            } else {
                i_this->mAction = ACTION_GAKEJUMP;
                i_this->mMode = 0;
                i_this->field_0x5c8 = a_this->current.pos;
                i_this->field_0x5bc = a_this->current.pos;
                i_this->mInvulnerabilityTimer = 100;
            }

            a_this->speedF = 0.0f;
        } else {
            i_this->mAction = ACTION_BACKDROP;
            i_this->mMode = 0;
        }
    }

    if (i_this->mAction != 3 && i_this->field_0x82e != 0) {
        a_this->current.angle.y = a_this->shape_angle.y;
    }
}

static void e_dn_jump(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    
    i_this->field_0x6f4 = 1;
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_JUMP_A, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 1;
            break;

        case 1:
            if (!i_this->mpModelMorf->isStop()) {
                break;
            }

            a_this->speed.y = KREG_F(13) + 50.0f;
            i_this->mMode = 2;
            i_this->field_0x10e4 = 3;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_JUMP, -1);
            // fallthrough
        case 2:
            a_this->speedF =KREG_F(13) +  30.0f;
            if (!(a_this->speed.y <= 0.0f)) {
                break;
            }

            anm_init(i_this, ANM_JUMP_B, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 3;
            break;

        case 3:
            if (!i_this->mObjAcch.ChkGroundHit()) {
                break;
            }

            anm_init(i_this, ANM_JUMP_C, 1.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 4;
            i_this->field_0x10e4 = 3;
            i_this->mTimers[0] = 3;
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_R, 0, -1);
            break;

        case 4:
            if (i_this->mTimers[0] == 1) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_L, 0, -1);
            }

            cLib_addCalc0(&a_this->speedF, 1.0f, 10.0f);
            if (!i_this->mpModelMorf->isStop()) {
                break;
            }

            i_this->mAction = ACTION_FIGHT_RUN;
            i_this->mMode = 0;
    }
}

static void e_dn_gakejump(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp24, sp30;

    i_this->field_0x6f4 = 1;
    switch (i_this->mMode) {
        case 0:
            if (jump_pos_check(i_this, &i_this->field_0x5bc)) {
                anm_init(i_this, ANM_JUMP_A, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mMode = 2;
                a_this->current.angle.y = i_this->mYAngleToPlayer;
                break;
            }

            if (i_this->mAnmID != ANM_WAIT_01) {
                anm_init(i_this, ANM_WAIT_01, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndF(0.1f) + 0.9f);
                i_this->mTimers[0] = cM_rndF(15.0f) + 35.0f;
                i_this->mMode = 1;
            }

            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 4, 0x800);
            break;

        case 1:
            i_this->field_0x6f4 = 2;
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp24.x = 0.0f;
            sp24.y = 0.0f;
            sp24.z = 100.0f;
            MtxPosition(&sp24, &i_this->field_0x738);
            i_this->field_0x738 += a_this->current.pos;

            if (i_this->mTimers[0] != 0) {
                break;
            }

            i_this->mMode = 0;
            break;

        case 2:
            if (!i_this->mpModelMorf->isStop()) {
                break;
            }

            if (jump_pos_check(i_this, &i_this->field_0x5bc)) {
                i_this->mMode = 3;
                i_this->field_0x10e4 = 3;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_JUMP, -1);
                i_this->mTimers[0] = 20;
                i_this->mTimers[1] = 60;
                i_this->field_0x5c8 = a_this->current.pos;
            } else {
                anm_init(i_this, ANM_WAIT_01, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndF(0.1f) + 0.9f);
                i_this->mTimers[0] = cM_rndF(15.0f) + 35.0f;
                i_this->mMode = 1;
                break;
            }
            // fallthrough
        case 3:
            i_this->field_0x5d8 = 1;
            sp24 = i_this->field_0x5bc - a_this->current.pos;
            i_this->mCurrentAngleYTarget = cM_atan2s(sp24.x, sp24.z);
            i_this->field_0x5d6 = -cM_atan2s(sp24.y, JMAFastSqrt(sp24.x * sp24.x + sp24.z * sp24.z));
            a_this->speedF = KREG_F(13) + 50.0f;

            if (i_this->mTimers[0] == 1) {
                anm_init(i_this, ANM_JUMP_B, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            }

            if (sp24.abs() < (a_this->speedF * 1.1f)) {
                a_this->current.pos = i_this->field_0x5bc;
                anm_init(i_this, ANM_JUMP_C, 1.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mMode = 4;
                i_this->field_0x10e4 = 3;
                i_this->mTimers[0] = 3;
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_R, 0, -1);
                a_this->speedF = 0.0f;
                i_this->mInvulnerabilityTimer = 0;
            }

            if (!(i_this->mTimers[1] == 0 || i_this->mObjAcch.ChkWallHit() != 0)) {
                break;
            }

            i_this->mAction = ACTION_FIGHT_RUN;
            i_this->mMode = 0;
            break;

        case 4:
            if (i_this->mTimers[0] == 1) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_L, 0, -1);
            }

            if (!i_this->mpModelMorf->isStop()) {
                break;
            }

            i_this->mAction = ACTION_FIGHT_RUN;
            i_this->mMode = 0;
    }
}

static fopAc_ac_c* at_hit_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    
    if (i_this->mMode >= 10) {
        return NULL;
    }
    
    if (i_this->mAtSph.ChkAtHit() != 0) {
        return dCc_GetAc(i_this->mAtSph.GetAtHitObj()->GetAc());
    }

    return NULL;
}

static void e_dn_attack_0(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp2c, sp38;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6f4 = 1;
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_ATTACK_TAIL_01, TREG_F(14) + 6.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_KNIFE, -1);
            i_this->mMode = 1;
            // fallthrough
        case 1:
            if (frame >= 22 && frame <= 28) {
                i_this->mAtChkFlag = 1;
                i_this->field_0x6ee = 0;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = ACTION_FIGHT_RUN;
                i_this->mMode = 0;
            }
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);

    if (i_this->mAtChkFlag != 0) {
        fopAc_ac_c* actor_p = at_hit_check(i_this);
        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK && daPy_getPlayerActorClass()->checkPlayerGuard()) {
            dComIfGp_getVibration().StartShock(3, 31, cXyz(0.0f, 1.0f, 0.0f));
        }
    }
}

static void e_dn_attack(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp34, sp40;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6f4 = 1;
    s16 sVar1, sVar2;
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_ATTACK_TAIL_02, TREG_F(14) + 6.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_KNIFE2_A, -1);
            i_this->mMode = 1;
            // fallthrough
        case 1:
            if (frame < 10 || (frame >= 25 && frame <= 30)) {
                sVar1 = a_this->current.angle.y;
                cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 2, 0x800);
                sVar1 -= a_this->current.angle.y;
                sVar1 *= (s16)(YREG_S(5) + 2);
                s16 sVar3 = YREG_S(6) + 0x1000;
                if (sVar1 > sVar3) {
                    sVar1 = sVar3;
                } else if (sVar1 < (s16)-sVar3) {
                    sVar1 = -sVar3;
                }
                cLib_addCalcAngleS2(&i_this->mJntTailYRotOffset, sVar1, 2, 0x400);
            }

            if (frame >= 13 && frame <= 18) {
                i_this->mAtChkFlag = 1;
                i_this->field_0x6ee = 0;
            }

            if (frame >= 25 && frame <= 30) {
                i_this->mAtChkFlag = 1;
                i_this->field_0x6ee = 1;
                cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
                sp34.x = 0.0f;
                sp34.y = 0.0f;
                sp34.z = BREG_F(17) + 25.0f;
                MtxPosition(&sp34, &sp40);
                a_this->current.pos += sp40;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = ACTION_FIGHT_RUN;
                i_this->mMode = 0;
            }
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);
    if (i_this->mAtChkFlag != 0) {
        fopAc_ac_c* actor_p = at_hit_check(i_this);
        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK && daPy_getPlayerActorClass()->checkPlayerGuard()) {
            i_this->mpModelMorf->setPlaySpeed(0.0f);
            i_this->mAction = ACTION_FIGHT_RUN;
            i_this->mMode = 0;
        }
    }
}

static void tail_eff_set(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    J3DModel* model = i_this->mpModelMorf->getModel();
    i_this->mDnTailBlurAPrtcl = dComIfGp_particle_set(i_this->mDnTailBlurAPrtcl, dPa_RM(ID_ZI_S_DNTAILBLUR_A), &a_this->current.pos, NULL, NULL);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->mDnTailBlurAPrtcl);
    if (emitter != NULL) {
        MTXCopy(model->getAnmMtx(0), *calc_mtx);
        emitter->setGlobalRTMatrix(*calc_mtx);
    }

    i_this->mDnTailBlurBPrtcl = dComIfGp_particle_set(i_this->mDnTailBlurBPrtcl, dPa_RM(ID_ZI_S_DNTAILBLUR_B), &a_this->current.pos, NULL, NULL);
    emitter = dComIfGp_particle_getEmitter(i_this->mDnTailBlurBPrtcl);
    if (emitter != NULL) {
        MTXCopy(model->getAnmMtx(0), *calc_mtx);
        emitter->setGlobalRTMatrix(*calc_mtx);
    }
}

static void e_dn_tail_attack(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp30, sp3c;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6f4 = 1;
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_ATTACK_01, TREG_F(14) + 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 1;
            break;

        case 1:
            if (frame >= 19) {
                tail_eff_set(i_this);
            }

            if (frame >= 33 && frame <= 41) {
                i_this->mAtChkFlag = 1;
                i_this->field_0x6ee = 2;
                cMtx_YrotS(*calc_mtx, i_this->mYAngleToPlayer);
                sp30.x = 0.0f;
                sp30.y = 0.0f;
                sp30.z = BREG_F(18) + 30.0f;
                MtxPosition(&sp30, &sp3c);
                a_this->current.pos += sp3c;
            }

            if (frame == 40) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_R, 0, -1);
            } else if (frame == 43) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_L, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = ACTION_FIGHT_RUN;
                i_this->mMode = 0;
            }
    }

    a_this->current.angle.y += i_this->mAngleYOffset;
    a_this->shape_angle.y += i_this->mAngleYOffset;
    cLib_addCalcAngleS2(&i_this->mAngleYOffset, 0, 1, 300);
    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

static void e_dn_guard(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x6f1 = 1;
    i_this->field_0x6f4 = 1;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_WAIT_02, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 1;
            a_this->speed.y = KREG_F(0) + 20.0f;
            a_this->speedF = KREG_F(1) + -8.0f;
            i_this->field_0x10e4 = 3;
            break;

        case 1:
            i_this->mInvulnerabilityTimer = 5;
            if (i_this->mpModelMorf->getFrame() >= 5.0f) {
                i_this->mMode = 5;
                i_this->mTimers[0] = KREG_S(1) + 20;
            }
            break;

        case 5:
            anm_init(i_this, ANM_GUARD, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_GUARD, -1);
            i_this->mMode = 6;
            // fallthrough
        case 6:
            i_this->mInvulnerabilityTimer = 5;
            if (i_this->mObjAcch.ChkGroundHit()) {
                cLib_addCalc0(&a_this->speedF, 1.0f, 10.0f);
            }

            if (i_this->mpModelMorf->getFrame() >= 8.0f) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                i_this->mMode = 7;
                a_this->speedF = 0.0f;
            }
            break;

        case 7:
            i_this->mInvulnerabilityTimer = 5;
            if (cc_pl_cut_bit_get() == 0x80 || cc_pl_cut_bit_get() == 0x800) {
                i_this->mTimers[0] = KREG_S(0) + 20;
            }

            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 8;
                i_this->mpModelMorf->setPlaySpeed(1.0f);
            }
            break;

        case 8:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = ACTION_FIGHT_RUN;
                i_this->mMode = 0;
            }
    }
}

static void e_dn_s_damage(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            i_this->mTimers[0] = 20;
            anm_init(i_this, ANM_WAIT_01, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            break;

        case 1:
            if (i_this->mTimers[0] == 0) {
                i_this->mAction = ACTION_FIGHT_RUN;
                i_this->mMode = 0;
                i_this->mTimers[0] = 40;
            }
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

static BOOL kado_check(e_dn_class* i_this) {
    static int kado_bit[2] = {
        1, 2,
    };

    static f32 kado_check_x[2] = {
        80.0f, -80.0f,
    };

    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz sp9c, spa8, spb4;
    BOOL rv = FALSE;

    cMtx_YrotS(*calc_mtx, i_this->field_0x724.y);
    for (int i = 0; i < 2; i++) {
        spa8 = a_this->current.pos;
        spa8.y += JREG_F(0) + 100.0f;
        sp9c.x = JREG_F(1);
        sp9c.y = JREG_F(2);
        sp9c.z = JREG_F(3) + 70.0f;
        MtxPosition(&sp9c, &spb4);
        spa8 += spb4;
        sp9c.y = JREG_F(4) + 50.0f;
        sp9c.z = JREG_F(5) + -150.0f;
        sp9c.x = (JREG_F(6) + 1.0f) * kado_check_x[i];
        MtxPosition(&sp9c, &spb4);
        spb4 += spa8;
        lin_chk.Set(&spa8, &spb4, a_this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            rv |= kado_bit[i];
        }
    }

    if (rv == 3) {
        rv = FALSE;
    }

    return rv;
}

static BOOL body_gake(e_dn_class* i_this) {
    J3DModel* model = i_this->mpModelMorf->getModel();
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp7c, sp88;

    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    sp7c.set(BREG_F(10), BREG_F(11), BREG_F(12));
    MtxPosition(&sp7c, &sp88);

    dBgS_ObjGndChk gnd_chk;
    sp88.y += 100.0f;
    gnd_chk.SetPos(&sp88);
    sp88.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

    if ((a_this->current.pos.y - sp88.y) > 300.0f) {
        return TRUE;
    }

    return FALSE;
}

static void e_dn_damage(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp34, sp40;

    if (a_this->health <= 0) {
        fopAcM_OffStatus(a_this, 0);
        a_this->attention_info.flags = 0;
    }

    if (daPy_py_c::checkNowWolf() != 0) {
        if (i_this->field_0x6f3 == 0 && a_this->checkWolfDownStartFlg()) {
            if (i_this->mTimers[0] > 40) {
                i_this->mTimers[0] = 90;
                OS_REPORT("      DN WOLFHIT LONG  \n");
            } else if (i_this->mTimers[0] > 20) {
                i_this->mTimers[0] = 70;
                OS_REPORT("      DN WOLFHIT MID  \n");
            } else {
                i_this->mTimers[0] = 50;
                OS_REPORT("      DN WOLFHIT SHORT \n");
            }

            i_this->mMode = 30;
            i_this->field_0x6f3 = 1;

            if (i_this->arg1 == 1) {
                i_this->mTimers[1] = l_HIO.field_0x20 + 1;
            } else {
                i_this->mTimers[1] = l_HIO.field_0x1e + 1;
            }

        }
    } else if (a_this != NULL && a_this->checkCutDownHitFlg()) {
        a_this->offCutDownHitFlg();
        i_this->mMode = 3;
        a_this->health = 0;
        i_this->mTimers[0] = 100;
        i_this->mTimers[1] = 46;
        a_this->offDownFlg();
        a_this->health = 0;
        i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DEATH, -1);
        i_this->field_0x6c4 = 1;
        daPy_getPlayerActorClass()->onEnemyDead();
        i_this->field_0x80c = TREG_S(7) + 15;
    }

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_BLOWNOFF, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 1;
            a_this->speedF = 0.0f;
            i_this->field_0x7e8 = BREG_F(10) + 8000.0f;

            if (a_this->health <= 0) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DEATH, -1);
                i_this->field_0x6c4 = 1;
                daPy_getPlayerActorClass()->onEnemyDead();
            } else {
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DAMAGE2, -1);
            }

            i_this->mTimers[0] = 0;
            break;

        case 1:
            if (i_this->mObjAcch.ChkWallHit() != 0 && i_this->mTimers[0] == 0) {
                int corner = kado_check(i_this);
                if (corner != 0) {
                    OS_REPORT("              ..KADO KABE ..%x\n", corner);
                    if (corner == 2) {
                        i_this->field_0x70e = 0xC00;
                        i_this->field_0x724.y += TREG_S(8) + -7000;
                    } else {
                        i_this->field_0x70e = -0xC00;
                        i_this->field_0x724.y += -(TREG_S(8) - 7000);
                    }

                    i_this->field_0x7e8 = BREG_F(10) + 8000.0f;
                    i_this->field_0x754 = BREG_F(4) + 100.0f;
                    i_this->field_0x75c = BREG_F(5) + 100.0f;
                    i_this->mUnkTimer4 = DREG_S(1) + 40;
                    i_this->mTimers[0] = 60;
                } else {
                    i_this->mMode = 10;
                    a_this->speed.y = 0.0f;
                    i_this->field_0x704 *= 0.2f;
                    i_this->field_0x724.y += 0x8000;
                    i_this->field_0x7e8 = BREG_F(10) + 8000.0f;
                    i_this->mUnkTimer5 = BREG_S(7) + 5;
                    i_this->field_0x754 = BREG_F(4) + 100.0f;
                    i_this->field_0x75c = BREG_F(5) + 100.0f;
                    i_this->mUnkTimer4 = DREG_S(1) + 40;
                    i_this->field_0x70e = 0;
                }
                break;
            }

            cLib_addCalcAngleS2(&i_this->field_0x724.x, -0x4000, 1, BREG_S(4) + 0x300);
            a_this->current.angle.y += i_this->field_0x70e;
            a_this->shape_angle.y = a_this->current.angle.y;

            if (i_this->field_0x724.x <= -0x3000 && i_this->mObjAcch.ChkGroundHit()) {
                i_this->mMode = 2;
                i_this->mUnkTimer3 = 10;
                i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);

                if (i_this->mLeftRightFlag == 0) {
                    anm_init(i_this, ANM_DIE_LEFT, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                } else {
                    anm_init(i_this, ANM_DIE_RIGHT, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                }

                if (i_this->field_0x710 != 0) {
                    i_this->field_0x704 = 0.0f;
                    i_this->field_0x7e8 = BREG_F(12) + 2000.0f;
                } else {
                    if (i_this->mLeftRightFlag == 0) {
                        i_this->field_0x754 = -100.0f - BREG_F(6);
                        i_this->field_0x75c = -100.0f - BREG_F(7);
                    } else {
                        i_this->field_0x754 = BREG_F(4) + 100.0f;
                        i_this->field_0x75c = BREG_F(5) + 100.0f;
                    }

                    i_this->field_0x758 = -0x5000;
                    i_this->field_0x760 = -0x4000;
                    i_this->mUnkTimer4 = DREG_S(1) + 40;
                    i_this->field_0x704 *= 0.5f;
                    a_this->speed.y = TREG_F(6) + 20.0f;
                    i_this->field_0x70e /= 2;
                    a_this->current.angle.y = i_this->field_0x724.y;
                    i_this->field_0x7e8 = BREG_F(12) + 8000.0f;

                    J3DModel* model = i_this->mpModelMorf->getModel();
                    MTXCopy(model->getAnmMtx(2), *calc_mtx);
                    sp34.set(0.0f, 0.0f, 0.0f);
                    MtxPosition(&sp34, &sp40);

                    fopAcM_effSmokeSet1(&i_this->field_0x10dc, &i_this->field_0x10e0, &sp40, NULL, 1.8f, &a_this->tevStr, 1);
                }
            }
            break;

        case 2:
            a_this->current.angle.y += i_this->field_0x70e;
            a_this->shape_angle.y = a_this->current.angle.y;
            cLib_addCalcAngleS2(&i_this->field_0x724.x, -0x4000, 1, BREG_S(4) + 0x300);

            if (i_this->mObjAcch.ChkGroundHit()) {
                if (a_this->health > 0 && !daPy_py_c::checkNowWolf()) {
                    a_this->onDownFlg();
                }

                dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(&i_this->actor), 5);
                i_this->mUnkTimer3 = 10;

                if (i_this->mLeftRightFlag == 0) {
                    anm_init(i_this, ANM_DIE_LEFT, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                } else {
                    anm_init(i_this, ANM_DIE_RIGHT, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                }

                i_this->field_0x704 = 0.0f;
                i_this->field_0x724.x = -0x4000;

                for (int i = 0; i < 4; i++) {
                    i_this->field_0x802[i] = cM_rndF(10.0f);
                }

                a_this->current.angle.y = i_this->field_0x724.y;
                if (daPy_py_c::checkNowWolf() != 0) {
                    i_this->mTimers[0] = 80;
                    i_this->mTimers[1] = 55;
                } else {
                    i_this->mTimers[0] = cM_rndF(10.0f) + 60.0f;
                    i_this->mTimers[1] = 35;
                }

                i_this->mMode = 3;
                i_this->field_0x7e8 = BREG_F(13) + 1500.0f;

                J3DModel* model = i_this->mpModelMorf->getModel();
                MTXCopy(model->getAnmMtx(2), *calc_mtx);
                sp34.set(0.0f, 0.0f, 0.0f);
                MtxPosition(&sp34, &sp40);

                fopAcM_effSmokeSet1(&i_this->field_0x10dc, &i_this->field_0x10e0, &sp40, NULL, 1.0f, &a_this->tevStr, 1);
            }
            break;

        case 3:
            if (body_gake(i_this)) {
                i_this->field_0x704 = VREG_F(8) + -20.0f;
                i_this->field_0x724.x -= (s16)(VREG_S(7) + 0x300);
            }

            if (a_this->health <= 0 && i_this->mTimers[1] == 0) {
                MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
                sp34.set(0.0f, 0.0f, 0.0f);
                MtxPosition(&sp34, &sp40);
                
                s8 unused = 0;

                dn_disappear(i_this);
                fopAcM_delete(a_this);
                return;
            }

            if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_DOWN && i_this->mTimers[0] == 0) {
                i_this->mMode = 20;
                if (i_this->mLeftRightFlag == 0) {
                    anm_init(i_this, ANM_DIE_LEFT_UP, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                } else {
                    anm_init(i_this, ANM_DIE_RIGHT_UP, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                }

                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_UP, -1);

                if (a_this != NULL) {
                    a_this->offDownFlg();
                }
            }
            break;

        case 10:
            if (i_this->mUnkTimer5 != 0) {
                cLib_addCalcAngleS2(&i_this->field_0x724.x, 0, 1, BREG_S(4) + 0x300);
            } else {
                cLib_addCalcAngleS2(&i_this->field_0x724.x, -0x4000, 1, BREG_S(5) + 0x800);
                if (i_this->mObjAcch.ChkGroundHit()) {
                    i_this->mMode = 2;
                    if (i_this->mLeftRightFlag == 0) {
                        i_this->field_0x754 = -100.0f - BREG_F(6);
                        i_this->field_0x75c = -100.0f - BREG_F(7);
                    } else {
                        i_this->field_0x754 = BREG_F(4) + 100.0f;
                        i_this->field_0x75c = BREG_F(5) + 100.0f;
                    }

                    i_this->field_0x758 = -0x5000;
                    i_this->field_0x760 = -0x4000;
                    i_this->field_0x704 *= 0.5f;
                    a_this->speed.y = TREG_F(6) + 20.0f;
                    a_this->current.angle.y = i_this->field_0x724.y;
                    i_this->field_0x7e8 = BREG_F(12) + 8000.0f;
                }
            }
            break;

        case 20:
            if (i_this->mpModelMorf->getFrame() >= 35.0f) {
                i_this->field_0x730.x = i_this->field_0x730.z = 0;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x724.x = i_this->field_0x724.y = 0;
                anm_init(i_this, ANM_WAIT_01, 0.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mTimers[0] = 5;
                i_this->mMode = 21;

                if (a_this != NULL) {
                    a_this->offDownFlg();
                }
            }
            break;

        case 21:
        case 22:
            i_this->mInvulnerabilityTimer = 0;
            if (i_this->mTimers[0] == 0) {
                i_this->mAction = ACTION_NORMAL;
                i_this->mMode = 0;
                i_this->mTimers[0] = cM_rndF(50.0f) + 50.0f;
                anm_init(i_this, ANM_WAIT_03, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 30:
            if (!a_this->checkWolfDownPullFlg()) {
                i_this->mTimers[1] = 0;
            }

            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 31;
                if (i_this->mLeftRightFlag == 0) {
                    anm_init(i_this, ANM_BRUSH_LEFT_UP, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                } else {
                    anm_init(i_this, ANM_BRUSH_RIGHT_UP, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                }

                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_UP, -1);
                i_this->mTimers[0] = 10;
            } else if (i_this->mTimers[1] == 1) {
                a_this->onWolfDownPullEndFlg();
                a_this->offCutDownHitFlg();
                a_this->health = 0;
                i_this->mTimers[0] = 1000;
                i_this->mTimers[1] = 35;
                i_this->mMode = 3;
            }
            break;

        case 31:
            if (i_this->mTimers[0] == 0) {
                a_this->offDownFlg();
                i_this->mMode = 20;
                i_this->field_0x6f3 = 0;
            }
    }

    if (a_this != NULL && a_this->checkDownFlg()) {
        i_this->field_0x6f2 = 0;
    }

    if (i_this->field_0x80c != 0) {
        i_this->field_0x80c--;
        i_this->field_0x80a = i_this->field_0x80c * cM_ssin(i_this->field_0x80c * (TREG_S(9) + 0x3800)) * (TREG_F(5) + 100.0f);
    }
}

static void e_dn_backdrop(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    f32 zero = 0.0f;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_DRAWBACK, 3.0f, J3DFrameCtrl::EMode_NONE, 0.5f);
            i_this->mMode = 1;
            i_this->field_0x724.y = (s16)a_this->shape_angle.y;
            i_this->field_0x724.x = 0;
            a_this->speedF = -3.0f;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DEATH, -1);
            // fallthrough
        case 1:
            if (i_this->field_0x724.x < -0x4000) {
                a_this->speedF = -6.0f;
            }

            if (a_this->speed.y < -20.0f) {
                i_this->mMode = 2;
                a_this->speedF = 0.0f;
            }
            // fallthrough
        case 2:
            cLib_addCalcAngleS2(&i_this->field_0x724.x, -0x7000, 2, 0x800);
            if (i_this->mMode == 2 && a_this->current.pos.y <= (KREG_F(17) + (i_this->mObjAcch.GetGroundH() + 100.0f))) {
                a_this->current.pos.y = KREG_F(17) + (i_this->mObjAcch.GetGroundH() + 100.0f);
                i_this->field_0x724.x = -0x4000;
                i_this->mAction = ACTION_DAMAGE;
                i_this->mMode = 0;
                i_this->field_0x704 = 0.0f;
                a_this->health = 0;
            }
    }
}

static void e_dn_water(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp20, sp2c;

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
    sp20.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&sp20, &sp2c);

    i_this->mInvulnerabilityTimer = 10;
    switch (i_this->mMode) {
        case 0:
        case 1: {
            a_this->speed.y = 0.0f;
            if (i_this->mLeftRightFlag == 0) {
                anm_init(i_this, ANM_DROWNED_A, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            } else {
                anm_init(i_this, ANM_DROWNED_B, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }

            i_this->mTimers[0] = 60;
            i_this->field_0x708 = i_this->field_0x704 = a_this->speedF = 0.0f;

            cXyz pos = a_this->current.pos;
            pos.y = i_this->field_0xa5c;
            if (i_this->mMode == 0) {
                fopKyM_createWpillar(&pos, 1.5f, 0);
            } else {
                fopKyM_createMpillar(&pos, 1.0f);
            }

            i_this->mMode = 10;
            break;
        }

        case 10:
            a_this->speed.y = 0.0f;
            cLib_addCalc2(&a_this->current.pos.y, i_this->field_0xa5c, 0.5f, 5.0f);
            cLib_addCalcAngleS2(&i_this->field_0x724.x, -0x4000, 4, BREG_S(4) + 0x400);

            if (i_this->mTimers[0] == 0) {
                dn_disappear(i_this);
            }
            break;
    }
}

static void e_dn_reg(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp34, sp40;
    f32 fVar1 = 0.0f;
    int frame = i_this->mpModelMorf->getFrame();
    
    i_this->field_0x6f2 = 0;
    i_this->mInvulnerabilityTimer = 10;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndFX(0.05f) + 1.0f);
            i_this->mMode = 1;

            if ((i_this->arg0 & 1) != 0) {
                a_this->current.pos.set(-8613.0f, 2000.0f, 8017.0f);
                a_this->current.angle.set(0, 0x19A0, 0);
            } else {
                a_this->current.pos.set(-8044.0f, 2000.0f, 8616.0f);
                a_this->current.angle.set(0, -0x629E, 0);
            }

            a_this->old.pos = a_this->current.pos;
            i_this->mCurrentAngleYTarget = a_this->current.angle.y;
            i_this->mTimers[0] = nREG_S(0) + 14;
            // fallthrough
        case 1:
            fVar1 = l_HIO.dash_speed;
            if ((i_this->mFrameCounter & 3) == 0) {
                if ((i_this->mFrameCounter & 4) != 0) {
                    i_this->field_0x10e4 = 1;
                } else {
                    i_this->field_0x10e4 = 2;
                }
            }

            if (i_this->mTimers[0] == 0) {
                fopAc_ac_c* player = dComIfGp_getPlayer(0);
                cMtx_YrotS(*calc_mtx, (s16)player->shape_angle.y);

                if ((i_this->arg0 & 1) != 0) {
                    sp34.x = 100.0f;
                } else {
                    sp34.x = -100.0f;
                }
                sp34.y = 0.0f;
                sp34.z = 0.0f;
                MtxPosition(&sp34, &sp40);
                sp40 += player->current.pos;
                sp34 = sp40 - a_this->current.pos;
                i_this->mCurrentAngleYTarget = cM_atan2s(sp34.x, sp34.z);
            }
            break;

        case 2:
            if ((i_this->arg0 & 1) != 0) {
                i_this->field_0x750 = a_this->shape_angle.y - (0x4000 << 2) + 0x4000;
                i_this->field_0x724.y = a_this->shape_angle.y + 0x4000;
                i_this->field_0x70e = (cM_rndFX(800.0f) + 3000.0f);
            } else {
                i_this->field_0x750 = a_this->shape_angle.y - 0x4000;
                i_this->field_0x724.y = a_this->shape_angle.y - 0x4000;
                i_this->field_0x70e = -(cM_rndFX(800.0f) + 3000.0f);
            }

            i_this->field_0x74c = 150.0f;
            i_this->mAction = ACTION_DAMAGE;
            i_this->mMode = 0;
            a_this->speed.y = TREG_F(13) + 40.0f + cM_rndF(10.0f);
            i_this->field_0x704 = TREG_F(18) + -30.0f;
            i_this->mUnkTimer4 = DREG_S(2) + 50;
            a_this->health = 0;
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mCurrentAngleYTarget, 2, 0x800);
    s16 sVar1 = a_this->current.angle.y - i_this->mCurrentAngleYTarget;
    if (sVar1 > 0x800 || sVar1 < -0x800) {
        fVar1 = 0.0f;
    }

    a_this->speedF = fVar1;
    i_this->field_0x6f4 = 1;
}

static void wolfkick_damage(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    i_this->field_0x750 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
    i_this->field_0x74c = 150.0f;
    i_this->mAction = ACTION_DAMAGE;
    i_this->mMode = 0;
    i_this->field_0x724.y = player->shape_angle.y + 0x8000;
    a_this->speed.y = 0.0f;
    i_this->field_0x704 = -1.0f;
    i_this->mUnkTimer4 = DREG_S(2) + 50;
    i_this->mSound.startCollisionSE(Z2SE_HIT_WOOD_WEAPON, 31);
    i_this->field_0x710 = 1;
}

static void big_damage(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x750 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
    i_this->field_0x74c = 150.0f;
    i_this->mAction = ACTION_DAMAGE;
    i_this->mMode = 0;
    i_this->field_0x724.y = i_this->mAtInfo.mHitDirection.y;
    a_this->speed.y = TREG_F(13) + 25.0f + cM_rndF(10.0f);
    i_this->field_0x704 = TREG_F(18) + -20.0f;
    i_this->mUnkTimer4 = DREG_S(2) + 50;
    if ((i_this->mAtInfo.mHitBit & 0x80) != 0) {
        OS_REPORT("SPIN CUT HIT !!\n");
        i_this->field_0x70e = cM_rndFX(800.0f) + 3000.0f;
    } else if ((i_this->mAtInfo.mHitBit & 0x800) != 0) {
        OS_REPORT("SPIN CUT L HIT !!\n");
        i_this->field_0x70e = -(cM_rndFX(800.0f) + 3000.0f);
    } else {
        i_this->field_0x70e = cM_rndFX(700.0f);
    }

    i_this->field_0x710 = 0;
}

static void small_damage(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->mAction = ACTION_S_DAMAGE;
    i_this->mMode = 0;
    i_this->mUnkTimer4 = DREG_S(6) + 50;
    i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DAMAGE, -1);

    if (i_this->field_0x82e != 0) {
        a_this->current.angle.y = a_this->shape_angle.y;
    }

    i_this->field_0x750 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
    i_this->field_0x74c = 150.0f;
    i_this->field_0x708 = TREG_F(0) + 25.0f;
    i_this->field_0x70c = i_this->mAtInfo.mHitDirection.y;
}

static void damage_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    if (l_HIO.field_0x24 != 0) {
        i_this->field_0x744 = 0;
    }

    i_this->mStts.Move();

    if (i_this->mInvulnerabilityTimer == 0) {
        fopEn_enemy_c* dn_p = (fopEn_enemy_c*)a_this;
        dCcU_AtInfo atInfo;
        if (l_HIO.invulnerable != 0) {
            a_this->health = 100;
        }

        for (int i = 0; i <= 2; i++) {
            if (i_this->mSphs[i].ChkTgHit() != 0) {
                i_this->mAtInfo.mpCollider = i_this->mSphs[i].GetTgHitObj();
                if (player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_LEFT && player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_RIGHT &&
                    i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK)) {
                    if (player->onWolfEnemyHangBite(dn_p)) {
                        OS_REPORT("DN PL BITE HANG \n");
                        i_this->mAction = ACTION_WOLFBITE;
                        i_this->mMode = 0;
                        i_this->mInvulnerabilityTimer = 1000;
                        i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 31);
                    }
                    return;
                }

                i_this->mUnkTimer6 = 3;
                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_10000000)) {
                    wolfkick_damage(i_this);
                    i_this->mInvulnerabilityTimer = 1000;
                } else {
                    at_power_check(&i_this->mAtInfo);
                    s16 sVar1 = a_this->health;
                    cc_at_check(a_this, &i_this->mAtInfo);

                    if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                        i_this->mAtInfo.mHitStatus = 0;
                    }

                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                        i_this->mInvulnerabilityTimer = 20;
                    } else {
                        i_this->mInvulnerabilityTimer = 10;
                    }

                    if (i_this->mAtInfo.mAttackPower <= 1) {
                        i_this->mInvulnerabilityTimer = 10;
                    }

                    i_this->field_0x744 |= i_this->mAtInfo.mHitBit;
                    if (i_this->mAtInfo.mHitType == 16 || i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
                        a_this->health = sVar1;
                        i_this->mAction = ACTION_DRAWBACK;
                        i_this->mMode = 0;

                        if (i_this->field_0x82e != 0) {
                            a_this->current.angle.y = a_this->shape_angle.y;
                        }

                        i_this->field_0x750 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
                        i_this->field_0x74c = KREG_F(9) + 100.0f;
                        i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DAMAGE, -1);
                        break;
                    }

                    if (daPy_getPlayerActorClass()->checkHorseRide() != 0 && dComIfGp_getHorseActor()->speedF >= 20.0f && i_this->mAtInfo.mHitType == 1) {
                        i_this->mAtInfo.mAttackPower = 20;
                        if (cM_rndF(1.0f) < 0.5f) {
                            i_this->mAtInfo.mHitBit |= 0x80;
                        } else {
                            i_this->mAtInfo.mHitBit |= 0x800;
                        }
                    }

                    if (a_this->health <= 0 || i_this->mAtInfo.mHitStatus != 0) {
                        if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                            small_damage(i_this);
                            i_this->mInvulnerabilityTimer = 3;
                        } else {
                            big_damage(i_this);
                            i_this->mInvulnerabilityTimer = 1000;
                        }
                    } else {
                        small_damage(i_this);
                    }

                    a_this->speedF = 0.0f;
                }
                break;
            }
        }

        for (int i = 0; i <= 2; i++) {
            if (a_this->health <= 1) {
                i_this->mSphs[i].SetTgHitMark((CcG_Tg_HitMark)3);
            }
        }
    }
}

static void action(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz work, sp24c;

    i_this->field_0x6f4 = 0;
    i_this->mPlayerDistance = fopAcM_searchPlayerDistanceXZ(a_this);
    i_this->mYAngleToPlayer = fopAcM_searchPlayerAngleY(a_this);
    i_this->mXAngleToPlayer = fopAcM_searchPlayerAngleX(a_this);
    damage_check(i_this);
    i_this->field_0x82e = 0;

    s8 bVar1 = 0;
    s8 bVar2 = 1;
    a_this->offHeadLockFlg();
    if (fopAcM_otherBgCheck(player, a_this)) {
        fopAcM_OffStatus(a_this, 0);
        a_this->attention_info.flags = 0;
    } else {
        fopAcM_OnStatus(a_this, 0);
        a_this->attention_info.flags = fopAc_AttnFlag_BATTLE_e;
    }

    switch (i_this->mAction) {
        case ACTION_NORMAL:
            e_dn_normal(i_this);
            break;

        case ACTION_FIGHT_RUN:
            e_dn_fight_run(i_this);
            bVar1 = 1;
            break;

        case ACTION_ATTACK_0:
            e_dn_attack_0(i_this);
            bVar1 = 1;
            break;

        case ACTION_ATTACK:
            e_dn_attack(i_this);
            bVar1 = 1;
            break;

        case ACTION_TAIL_ATTACK:
            e_dn_tail_attack(i_this);
            bVar1 = 1;
            break;

        case ACTION_GUARD:
            e_dn_guard(i_this);
            bVar1 = 1;
            break;

        case ACTION_JUMP:
            e_dn_jump(i_this);
            bVar1 = 1;
            break;

        case ACTION_STAY:
            e_dn_stay(i_this);
            break;

        case ACTION_OTOREAC:
            e_dn_otoreac(i_this);
            break;

        case ACTION_DRAWBACK:
            e_dn_drawback(i_this);
            bVar1 = 1;
            break;

        case ACTION_WOLFBITE:
            e_dn_wolfbite(i_this);
            break;

        case ACTION_BOMB_ACTION:
            e_dn_bomb_action(i_this);
            break;

        case ACTION_S_DAMAGE:
            e_dn_s_damage(i_this);
            break;

        case ACTION_DAMAGE:
            e_dn_damage(i_this);
            break;

        case ACTION_BACKDROP:
            e_dn_backdrop(i_this);
            break;

        case ACTION_WATER:
            e_dn_water(i_this);
            bVar2 = 0;
            break;

        case ACTION_GAKEJUMP:
            e_dn_gakejump(i_this);
            bVar1 = 1;
            break;

        case ACTION_REG:
            e_dn_reg(i_this);
            break;
    }

    if (bVar2) {
        dBgS_ObjGndChk obj_gnd_chk;
        dBgS_ObjGndChk_Spl spl_chk;
        work = a_this->current.pos;
        work.y += 150.0f;
        spl_chk.SetPos(&work);
        obj_gnd_chk.SetPos(&work);
        i_this->field_0xa5c = dComIfG_Bgsp().GroundCross(&spl_chk);
        f32 fVar1 = i_this->field_0xa5c - dComIfG_Bgsp().GroundCross(&obj_gnd_chk);
        if (a_this->current.pos.y < i_this->field_0xa5c && fVar1 > 100.0f) {
            OS_REPORT("DN YOGAN \n");
            i_this->mAction = ACTION_WATER;
            if (dComIfG_Bgsp().GetPolyAtt0(spl_chk) == 6) {
                i_this->mMode = 1;
            } else {
                i_this->mMode = 0;
            }

            a_this->current.pos.y = i_this->field_0xa5c;
        }
    }

    if (bVar1) {
        i_this->mSound.setLinkSearch(true);
    } else {
        i_this->mSound.setLinkSearch(false);
    }

    if (i_this->field_0x82e == 0) {
        cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 2, 0x2000);
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 2, 0x2000);
    cLib_addCalcAngleS2(&a_this->shape_angle.z, a_this->current.angle.z, 2, 0x2000);

    if (i_this->field_0x5d8 != 0) {
        cMtx_YrotS(*calc_mtx, i_this->mCurrentAngleYTarget);
        cMtx_XrotM(*calc_mtx, i_this->field_0x5d6);
        work.x = 0.0f;
        work.y = 0.0f;
        work.z = a_this->speedF;
        MtxPosition(&work, &sp24c);
        a_this->current.pos += sp24c;
        work = i_this->field_0x5bc - i_this->field_0x5c8;
        f32 fVar1 = work.abs();
        work = i_this->field_0x5bc - a_this->current.pos;
        f32 fVar2 = work.abs();
        f32 fVar3 = fVar1 * (NREG_F(19) + 0.3f);
        if (fVar3 > NREG_F(18) + 250.0f) {
            fVar3 = NREG_F(18) + 250.0f;
        }

        i_this->mCurrentPosYOffset = fVar3 * cM_ssin((fVar2 / fVar1) * 32768.0f);
        i_this->field_0x5d8 = 0;
    } else {
        cLib_addCalc0(&i_this->mCurrentPosYOffset, 1.0f, 30.0f);

        if (i_this->field_0x704) {
            cMtx_YrotS(*calc_mtx, i_this->field_0x724.y);
            if (i_this->mUnkTimer5 == 0) {
                work.z = i_this->field_0x704;
            } else {
                work.z = 0.0f;
                a_this->speed.y = 0.0f;
            }

            a_this->gravity = -4.0f;
        } else {
            cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
            work.z = a_this->speedF;
        }
        work.x = 0.0f;
        work.y = 0.0f;
        MtxPosition(&work, &sp24c);

        a_this->speed.x = sp24c.x;
        a_this->speed.z = sp24c.z;
        a_this->speed.y += a_this->gravity;
        a_this->current.pos += a_this->speed;
        a_this->gravity = -5.0f;

        if (a_this->speed.y < -100.0f) {
            a_this->speed.y = -100.0f;
        }

        if (i_this->mAction != ACTION_STAY && i_this->field_0x6f2 != 0) {
            cXyz* move_pos = i_this->mStts.GetCCMoveP();
            if (move_pos != NULL) {
                a_this->current.pos.x += move_pos->x;
                a_this->current.pos.z += move_pos->z;
            }
        }

        if (i_this->field_0x708 > 0.1f) {
            work.x = 0.0f;
            work.y = 0.0f;
            work.z = -i_this->field_0x708;
            cMtx_YrotS(*calc_mtx, i_this->field_0x70c);
            MtxPosition(&work, &sp24c);
            a_this->current.pos += sp24c;
            cLib_addCalc0(&i_this->field_0x708, 1.0f, TREG_F(12) + 7.0f);
        }
    }

    s16 sVar1, sVar2, sVar3;
    sVar2 = 0;
    sVar3 = 0;
    sVar1 = 0x800;
    if (i_this->field_0x700 != 0) {
        i_this->field_0x700--;
        i_this->field_0x6f4 = 2;
        cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);

        if (i_this->field_0x701 != 0) {
            work.x = 100.0f;
        } else {
            work.x = -100.0f;
        }
        work.y = JREG_F(4) + 100.0f;
        work.z = -100.0f;
        MtxPosition(&work, &i_this->field_0x738);
        i_this->field_0x738 += a_this->current.pos;
        sVar1 = 0x400;
    }

    if (i_this->field_0x6f4 != 0) {
        if (i_this->field_0x6f4 == 5) {
            if ((i_this->mFrameCounter & 15) == 0 && cM_rndF(1.0f) < 0.3f) {
                i_this->field_0x6fc = cM_rndFX(2500.0f);
            }
        } else {
            if (i_this->field_0x6f4 == 1) {
                work = player->eyePos - a_this->current.pos;
            } else if (i_this->field_0x6f4 == 2) {
                work = i_this->field_0x738 - a_this->current.pos;
            } else {
                work = player->eyePos - a_this->current.pos;
            }
            work.y += -(TREG_F(2) + 150.0f) * l_HIO.model_size;

            sVar2 = cM_atan2s(work.x, work.z) - a_this->shape_angle.y;
            sVar3 = a_this->shape_angle.x + cM_atan2s(work.y, JMAFastSqrt(work.x * work.x + work.z * work.z));
            if (sVar2 > 0x2710) {
                sVar2 = 10000;
            } else if (sVar2 < -10000) {
                sVar2 = -10000;
            }

            if (sVar3 > 0x2710) {
                sVar3 = 10000;
            } else if (sVar3 < -20000) {
                sVar3 = -20000;
            }

            cLib_addCalcAngleS2(&i_this->field_0x6f6, sVar2 / 2, 2, sVar1);
            cLib_addCalcAngleS2(&i_this->field_0x6f8, sVar3 / 2, 2, sVar1);
        }

        i_this->field_0x6fc = 0;
    } else {
        cLib_addCalcAngleS2(&i_this->field_0x6f6, 0, 2, sVar1);
        cLib_addCalcAngleS2(&i_this->field_0x6f8, 0, 2, sVar1);
        i_this->field_0x6fc = 0;
    }

    cLib_addCalcAngleS2(&i_this->field_0x6fa, i_this->field_0x6fc, 4, 0x400);

    if (i_this->field_0x6fe != 0) {
        i_this->field_0x6fe--;
        i_this->field_0x6fa = i_this->field_0x6fe * cM_ssin(i_this->field_0x6fe * (BREG_S(5) + 12000)) * (BREG_F(18) + 200.0f);
    }

    if (i_this->field_0x74c > 1.0f) {
        cMtx_YrotS(*calc_mtx, i_this->field_0x750);
        work.x = 0.0f;
        work.y = 0.0f;
        work.z = (TREG_F(7) + 120.0f) * i_this->field_0x74c;
        if (work.z > 15000.0f) {
            work.z = 15000.0f;
        }
        MtxPosition(&work, &sp24c);
        
        i_this->field_0x7a4[0].y = sp24c.x;
        i_this->field_0x7a4[0].x = sp24c.z;
        i_this->field_0x7a4[1].y = sp24c.x;
        i_this->field_0x7a4[1].x = sp24c.z;
        cLib_addCalc0(&i_this->field_0x74c, 0.5f, TREG_F(7) + 10.0f);
    }

    if (fabsf(i_this->field_0x75c) > 1.0f) {
        i_this->field_0x7a4[1].x = i_this->field_0x75c * cM_scos(i_this->field_0x760) * (BREG_F(0) + 70.0f);
        i_this->field_0x7a4[2].x += i_this->field_0x7a4[1].x;
        cLib_addCalc0(&i_this->field_0x75c, 1.0f, BREG_F(1) + 3.0f);
        i_this->field_0x760 += BREG_S(0) + 4000;
    }

    if (fabsf(i_this->field_0x754) > 1.0f) {
        i_this->field_0x7a4[0].x = i_this->field_0x754 * cM_scos(i_this->field_0x758) * (BREG_F(2) + 70.0f);
        cLib_addCalc0(&i_this->field_0x754, 1.0f, BREG_F(3) + 3.0f);
        i_this->field_0x758 += BREG_S(1) + 4000;
    }

    if (a_this->speed.y < 0.0f && i_this->mObjAcch.ChkGroundHit()) {
        cLib_addCalc0(&i_this->field_0x75c, 1.0f, 30.0f);
        cLib_addCalc0(&i_this->field_0x754, 1.0f, 30.0f);
    }

    if (i_this->field_0x704) {
        s16 sVar4 = i_this->field_0x724.y - a_this->shape_angle.y;
        i_this->field_0x7a4[3].y = 0x4000 + -sVar4;
        if (i_this->field_0x7a4[3].y > 0x1770) {
            i_this->field_0x7a4[3].y = 6000;
        } else if (i_this->field_0x7a4[3].y < -9000) {
            i_this->field_0x7a4[3].y = -9000;
        }

        i_this->field_0x7a4[4].y = 0x4000 + -sVar4;
        if (i_this->field_0x7a4[4].y > 0x4268) {
            i_this->field_0x7a4[4].y = 17000;
        } else if (i_this->field_0x7a4[4].y < 0) {
            i_this->field_0x7a4[4].y = 0;
        }

        i_this->field_0x7a4[5].y = sVar4 + 0x4000;
        if (i_this->field_0x7a4[5].y > 0x1770) {
            i_this->field_0x7a4[5].y = 6000;
        } else if (i_this->field_0x7a4[5].y < -9000) {
            i_this->field_0x7a4[5].y = -9000;
        }

        i_this->field_0x7a4[6].y = sVar4 + 0x4000;
        if (i_this->field_0x7a4[6].y > 0x4268) {
            i_this->field_0x7a4[6].y = 17000;
        } else if (i_this->field_0x7a4[6].y < 0) {
            i_this->field_0x7a4[6].y = 0;
        }

        cMtx_YrotS(*calc_mtx, sVar4);
        work.x = 0.0f;
        work.y = 0.0f;
        work.z = BREG_F(8) + 12000.0f;
        MtxPosition(&work, &sp24c);
        i_this->field_0x836.y = -sp24c.x;
        i_this->field_0x836.x = -sp24c.z * 1.3f;
        
        if (i_this->field_0x836.x > (s16)(BREG_S(6) + 10000)) {
            i_this->field_0x836.x = BREG_S(6) + 10000;
        }

        i_this->field_0x836.x += BREG_S(7) + 6000;
    }

    static s16 j_spd[11] = {
        0x4000, 0x4000, 0x4000,
        0x1000, 0x1000, 0x1000,
        0x1000, 0x4000, 0x4000,
        0x4000, 0x4000
    };

    for (int i = 0; i < 11; i++) {
        cLib_addCalcAngleS2(&i_this->field_0x762[i].x, i_this->field_0x7a4[i].x, 2, j_spd[i]);
        cLib_addCalcAngleS2(&i_this->field_0x762[i].y, i_this->field_0x7a4[i].y, 2, j_spd[i]);
        cLib_addCalcAngleS2(&i_this->field_0x762[i].z, i_this->field_0x7a4[i].z, 2, j_spd[i]);
        i_this->field_0x7a4[i].x = i_this->field_0x7a4[i].z = 0;

        if (i >= 3 && i <= 6) {
            if (i_this->field_0x802[i - 3] == 0) {
                s16 sVar5;
                if (i == 4 || i == 6) {
                    sVar5 = 0x600;
                } else {
                    sVar5 = 0x800;
                }

                cLib_addCalcAngleS2(&i_this->field_0x7a4[i].y, 0, 1, sVar5);
            } else {
                i_this->field_0x802[i - 3]--;
            }
        } else {
            i_this->field_0x7a4[i].y = 0;
        }

        if (i >= 3) {
            i_this->field_0x7ec[i] = i_this->field_0x7e8 * cM_scos(i_this->mFrameCounter * (BREG_S(0) + 4000) + i * (BREG_S(1) + 20000));
        }
    }

    cLib_addCalc0(&i_this->field_0x7e8, 1.0f, BREG_F(11) + 100.0f);
    cLib_addCalcAngleS2(&i_this->field_0x830.y, i_this->field_0x836.y, 2, 0x800);
    cLib_addCalcAngleS2(&i_this->field_0x830.x, i_this->field_0x836.x, 2, 0x800);
    i_this->field_0x836.y = i_this->field_0x836.x = 0;
    if (i_this->mUnkTimer4 != 0) {
        i_this->mUnkTimer4--;
    }

    f32 fVar1 = i_this->mUnkTimer4 * (DREG_F(13) + 1.0f);
    if (fVar1 > 30.0f) {
        fVar1 = 30.0f;
    }
    fVar1 *= fVar1;

    for (int i = 0; i < 4; i++) {
        i_this->field_0x80e[i].x = fVar1 * (cM_ssin(i_this->mFrameCounter * (DREG_S(5) + 5000) + i * (DREG_S(7) + -15000)) * (DREG_F(18) + 5.0f));
        i_this->field_0x80e[i].y = fVar1 * (cM_ssin(i_this->mFrameCounter * (DREG_S(5) + 0x12C0) + i * (DREG_S(7) + -13000)) * (DREG_F(18) + 5.0f));
    }

    cLib_addCalcAngleS2(&i_this->mJntTailYRotOffset, 0, 4, 0x100);
    if (i_this->mUnkTimer3 != 0) {
        i_this->mUnkTimer3--;
        if (i_this->field_0x724.x != 0) {
            Vec sp258;
            cXyz sp264, sp270;
            dBgS_GndChk gnd_chk;
            s16 sVar6, sVar7;
            sVar6 = 0;
            sVar7 = 0;
            fVar1 = 100.0f;

            MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
            work.set(0.0f, 0.0f, 0.0f);
            MtxPosition(&work, &sp264);
            sp264.y += 100.0f;
            sp264.y += 100.0f;
            gnd_chk.SetPos(&sp264);
            sp264.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

            if (sp264.y != -G_CM3D_F_INF) {
                sp258.x = sp264.x;
                sp258.y = sp264.y + 100.0f;
                sp258.z = sp264.z + fVar1;
                gnd_chk.SetPos(&sp258);
                sp258.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

                if (sp258.y != -G_CM3D_F_INF) {
                    f32 z, y;
                    y = sp258.y - sp264.y;
                    z = sp258.z - sp264.z;
                    sVar7 = -cM_atan2s(y, z);
                    if (sVar7 > 0x3000 || sVar7 < -0x3000) {
                        sVar7 = 0;
                    }
                }

                sp258.x = sp264.x + fVar1;
                sp258.y = sp264.y + 100.0f;
                sp258.z = sp264.z;
                gnd_chk.SetPos(&sp258);
                sp258.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
                if (sp258.y != -G_CM3D_F_INF) {
                    f32 x, y;
                    y = sp258.y - sp264.y;
                    x = sp258.x - sp264.x;
                    sVar6 = (s16)cM_atan2s(y, x);
                    if (sVar6 > 0x3000 || sVar6 < -0x3000) {
                        sVar6 = 0;
                    }
                }
            }

            dBgS_LinChk lin_chk;
            cXyz sp27c, sp288, sp294;

            sp288 = a_this->current.pos;
            sp288.y += JREG_F(5) + 30.0f;
            J3DModel* model = i_this->mpModelMorf->getModel();
            sp27c.set(0.0f, 0.0f, 0.0f);
            MTXCopy(model->getAnmMtx(BREG_S(8) + 4), *calc_mtx);
            MtxPosition(&sp27c, &sp294);
            sp294.y += JREG_F(6) + 30.0f;
            lin_chk.Set(&sp288, &sp294, a_this);

            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                sp27c = sp288 - sp294;
                cMtx_YrotS(*calc_mtx, cM_atan2s(sp27c.x, sp27c.z));
                sp27c.x = 0.0f;
                sp27c.y = 0.0f;
                sp27c.z = TREG_F(11) + 50.0f;
                MtxPosition(&sp27c, &sp24c);
                a_this->current.pos += sp24c;
            }

            i_this->field_0x730.x = sVar7;
            i_this->field_0x730.z = sVar6;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x72a.x, i_this->field_0x730.x, 1, 0x400);
    cLib_addCalcAngleS2(&i_this->field_0x72a.z, i_this->field_0x730.z, 1, 0x400);

    if (i_this->field_0x10e4 != 0) {
        J3DModel* model = i_this->mpModelMorf->getModel();
        work.set(0.0f, 0.0f, 0.0f);

        static int foot_idx[2] = {
            26, 30,
        };
        for (int i = 0; i < 2; i++) {
            if ((i_this->field_0x10e4 == 3 || (i_this->field_0x10e4 == 2 && i == 1)) || (i_this->field_0x10e4 == 1 && i == 0)) {
                MTXCopy(model->getAnmMtx(foot_idx[i]), *calc_mtx);
                MtxPosition(&work, &sp24c);
                fopAcM_effSmokeSet2(&i_this->field_0x10e8[i], &i_this->field_0x10f0[i], &sp24c, &a_this->shape_angle,
                                    TREG_F(8) + 1.0f, &a_this->tevStr);
            }
        }

        i_this->field_0x10e4 = 0;
    }

    if (i_this->mUnkTimer6 != 0) {
        i_this->mUnkTimer6--;
        if (i_this->mUnkTimer6 == 0) {
            dComIfGp_particle_set(ID_ZI_J_TUBA00, &a_this->eyePos, &a_this->shape_angle, NULL);
        }
    }

    cXyz sp2a4(1.3f, 1.3f, 1.3f);
    setMidnaBindEffect(a_this, &i_this->mSound, &a_this->eyePos, &sp2a4);
}

static void anm_se_set(e_dn_class* i_this) {
    int frame = i_this->mpModelMorf->getFrame();

    if (i_this->mAnmID == ANM_ATTACK_01) {
        if (frame == 35) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_TAIL, 0, -1);
        } else if (frame == 28) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_TAIL, -1);
        }
    } else if (i_this->mAnmID == ANM_ATTACK_TAIL_01) {
        if (frame == 18) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_KNIFE, 0, -1);
        }
    } else if (i_this->mAnmID == ANM_ATTACK_TAIL_02) {
        if (frame == 10) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_KNIFE2_A, 0, -1);
        }

        if (frame == 24) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_KNIFE2_B, 0, -1);
        }
    } else if (i_this->mAnmID == ANM_WALK) {
        if (frame == 3) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_L, 0, -1);
        } else if (frame == 18) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_R, 0, -1);
        }
    } else if (i_this->mAnmID == ANM_RUN) {
        if (frame == 10) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_L, 0, -1);
        } else if (frame == 4) {
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_R, 0, -1);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_BREATH, -1);
        }
    } else if (i_this->mAnmID == ANM_WAIT_03) {
        if (frame == 15) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_SEARCH, -1);
        }
    } else if (i_this->mAnmID == ANM_WAIT_04 && frame == 15) {
        i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_SEARCH2, -1);
    }
}

int c_start;

static int daE_DN_Execute(e_dn_class* i_this) {
    if (i_this->field_0x10d8 != 0) {
        return 1;
    }

    if (c_start == 0 && dComIfGp_event_runCheck() && 
        (fopAcM_getTalkEventPartner((fopAc_ac_c*)daPy_getLinkPlayerActorClass()) == daPy_py_c::getMidnaActor() || daPy_getPlayerActorClass()->eventInfo.checkCommandDoor())) {
        return 1;
    }

    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz work;
    cXyz pos;
    cXyz downPos;
    i_this->mFrameCounter++;
    for (int i = 0; i < 4; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    if (i_this->mInvulnerabilityTimer != 0) {
        i_this->mInvulnerabilityTimer--;
    }

    if (i_this->mUnkTimer2 != 0) {
        i_this->mUnkTimer2--;
    }

    if (i_this->mUnkTimer5 != 0) {
        i_this->mUnkTimer5--;
    }

    if (i_this->mUnkTimer1 != 0) {
        i_this->mUnkTimer1--;
    }

    i_this->field_0x6f2 = 1;
    action(i_this);

    if (i_this->mUnkTimer5 == 0 && i_this->field_0x5d8 == 0) {
        if (i_this->field_0x704) {
            cMtx_YrotS(*calc_mtx, i_this->field_0x724.y);
            work.x = 0.0f;
            work.y = TREG_F(8);
            work.z = i_this->field_0x83c;
            MtxPosition(&work, &pos);
            a_this->current.pos += pos;
            a_this->old.pos += pos;
            cLib_addCalc2(&i_this->field_0x83c, i_this->field_0x704 * (2.0f + TREG_F(9)), 1.0f, 5.0f + TREG_F(17));
        } else {
            cLib_addCalc0(&i_this->field_0x83c, 1.0f, 5.0f + TREG_F(17));
        }

        i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
        if (i_this->field_0x704) {
            a_this->current.pos -= pos;
            a_this->old.pos -= pos;
        }


        if (!i_this->mObjAcch.ChkGroundHit()) {
            if (a_this->speed.y < -10.0f) {
                i_this->mUnkCounter2++;
                if (i_this->mUnkCounter2 == 13) {
                    i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DEATH, -1);
                }
            }
        } else {
            if (i_this->mUnkCounter2 >= 13 + ZREG_S(8)) {
                i_this->mAction = ACTION_DAMAGE;
                i_this->mMode = 0;
                a_this->speed.y = 0.0f;
                i_this->field_0x704 = -1.0;
                i_this->field_0x724.x = -0x3000;
                i_this->mUnkTimer4 = 50 + DREG_S(2);
                i_this->mInvulnerabilityTimer = 1000;
                a_this->health = 0;
            }

            i_this->mUnkCounter2 = 0;
        }
    }

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y + i_this->mCurrentPosYOffset, a_this->current.pos.z);
    mDoMtx_stack_c::XrotM((s16) i_this->field_0x72a.x);
    mDoMtx_stack_c::ZrotM((s16) i_this->field_0x72a.z);
    mDoMtx_stack_c::YrotM((s16) i_this->field_0x724.y);
    mDoMtx_stack_c::XrotM((s16) i_this->field_0x724.x);
    mDoMtx_stack_c::YrotM(-i_this->field_0x724.y);
    mDoMtx_stack_c::YrotM((s16) a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM((s16) a_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.model_size * a_this->scale.x, l_HIO.model_size * a_this->scale.x, l_HIO.model_size * a_this->scale.x);

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpModelMorf->play(0, 0);
    anm_se_set(i_this);
    i_this->mpModelMorf->modelCalc();
    MTXCopy(model->getAnmMtx(2), *calc_mtx);

    work.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&work, &pos);
    work.set(YREG_F(1), YREG_F(2), -200.0f + YREG_F(3));
    MtxPosition(&work, &downPos);
    if (pos.y < downPos.y) {
        i_this->mLeftRightFlag = 0;
    }
    else {
        i_this->mLeftRightFlag = 1;
    }

    cXyz sp50(0.0f, 0.0f, 0.0f);
    if (i_this->mInvulnerabilityTimer != 0) {
        sp50.set(-20000.0f, 200000.0f, 30000.0f);
    }

    MTXCopy(model->getAnmMtx(6), *calc_mtx);
    work.set(30.0f + KREG_F(12), 30.0f + KREG_F(13), 0.0f + KREG_F(14));
    MtxPosition(&work, &a_this->eyePos);

    i_this->mSphs[0].SetC(a_this->eyePos + sp50);
    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        i_this->mSphs[0].SetR(70.0f);
    } else {
        i_this->mSphs[0].SetR(50.0f);
    }
    
    a_this->attention_info.position = a_this->eyePos;
    a_this->attention_info.position.y += 70.0f + BREG_F(7);

    MTXCopy(model->getAnmMtx(1), *calc_mtx);
    work.set(-30.0f + BREG_F(11), BREG_F(12), BREG_F(13));
    MtxPosition(&work, &pos);
    i_this->mSphs[1].SetC(pos + sp50);
    i_this->mSphs[1].SetR(45.0f);
    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    work.set(20.0f + BREG_F(14), BREG_F(15), BREG_F(16));
    MtxPosition(&work, &pos);
    i_this->mSphs[2].SetC(pos + sp50);
    i_this->mSphs[2].SetR(45.0f);

    for (int i = 0; i <= 2; i++) {
        if (i_this->field_0x6f2 != 0) {
            i_this->mSphs[i].OnCoSetBit();
        } else {
            i_this->mSphs[i].OffCoSetBit();
        }

        dComIfG_Ccsp()->Set(&i_this->mSphs[i]);
    }

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(19), *calc_mtx);
    i_this->mpKnifeModel->setBaseTRMtx(*calc_mtx);

    if (i_this->mAtChkFlag != 0 && i_this->field_0x6ee <= 1) {
        work.set(BREG_F(7), 60.0f + BREG_F(8), BREG_F(9));
        MtxPosition(&work, &pos);
        if (i_this->field_0x6f0 == 0) {
            i_this->field_0x6f0 = 1;
            i_this->mAtSph.StartCAt(pos);
        } else {
            i_this->mAtSph.MoveCAt(pos);
        }

        if (i_this->field_0x6ee == 1) {
            i_this->mAtSph.SetR(l_HIO.model_size * 80.0f);
        } else {
            i_this->mAtSph.SetR(l_HIO.model_size * 50.0f);
        }

        i_this->mAtSph.SetAtAtp(1);
    }

    if (i_this->mpSkullModel != NULL) {
        if (i_this->field_0x694 == 0) {
            MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(6), mDoMtx_stack_c::get());
            mDoMtx_stack_c::multVecZero(&i_this->mSkullTrans);
        } else {
            i_this->mSkullTrans += i_this->field_0x6a4;
            if (i_this->field_0x6a4.y <= i_this->mObjAcch.GetGroundH()) {
                i_this->mpSkullModel = NULL;
            }

            i_this->field_0x6a4.y -= 5.0f;
            mDoMtx_stack_c::transS(i_this->mSkullTrans.x, i_this->mSkullTrans.y, i_this->mSkullTrans.z);
            mDoMtx_stack_c::YrotM(i_this->mSkullYRot);
            mDoMtx_stack_c::XrotM(i_this->mSkullXRot);
        }

        i_this->mpSkullModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    
    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(12), *calc_mtx);
    i_this->mpShieldModel->setBaseTRMtx(*calc_mtx);

    if (i_this->mAtChkFlag != 0 && i_this->field_0x6ee == 2) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(34), *calc_mtx);
        work.set(BREG_F(7), BREG_F(8), BREG_F(9));
        MtxPosition(&work, &pos);

        if (i_this->field_0x6f0 == 0) {
            i_this->field_0x6f0 = 1;
            i_this->mAtSph.StartCAt(pos);
        }  else {
            i_this->mAtSph.MoveCAt(pos);
        }

        i_this->mAtSph.SetAtAtp(2);
        i_this->mAtSph.SetR((70.0f + BREG_F(10)) * l_HIO.model_size);
    }

    if (i_this->mAtChkFlag == 0) {
        cXyz sp68(-23500.0f, -20000.0f, -50000.0f);
        i_this->mAtSph.SetC(a_this->current.pos + sp68);
        i_this->field_0x6f0 = 0;
    } else {
        i_this->mAtChkFlag = 0;
    }

    dComIfG_Ccsp()->Set(&i_this->mAtSph);

    if (i_this->field_0x6f1 != 0 && i_this->mUnkTimer2 == 0) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(12), *calc_mtx);
        work.set(50.0f + JREG_F(5), JREG_F(6), 30.0f + JREG_F(7));
        MtxPosition(&work, &pos);
        i_this->mTateSph.SetC(pos);
        i_this->mTateSph.SetR((70.0f + JREG_F(8)) * l_HIO.model_size);

        if (i_this->mTateSph.ChkTgHit()) {
            def_se_set(&i_this->mSound, i_this->mTateSph.GetTgHitObj(), 40, 0);
            dScnPly_c::setPauseTimer(l_HIO.field_0x1c);
            i_this->mUnkTimer2 = 10;
            cMtx_YrotS(*calc_mtx, (s16)a_this->shape_angle.y);
            work.x = KREG_F(0);
            work.y = 120.0f + KREG_F(1);
            work.z = 50.0f + KREG_F(2);
            MtxPosition(&work, &pos);
            pos += a_this->current.pos;
            dComIfGp_setHitMark(2, NULL, &pos, &a_this->shape_angle, NULL, 0);
        }
    } else {
        cXyz sp74(-23500.0f, -20000.0f, -30000.0f);
        i_this->mTateSph.SetC(a_this->current.pos + sp74);
    }

    i_this->field_0x6f1 = 0;
    dComIfG_Ccsp()->Set(&i_this->mTateSph);
    if (i_this->field_0x6c4 != 0) {
        cLib_addCalc2(&i_this->mColor, -20.0f, 1.0f, 0.4f);
    }

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), mDoMtx_stack_c::get());
    mDoMtx_stack_c::multVecZero(&pos);
    work = player->current.pos - pos;
    s16 tans_val = cM_atan2s(work.x, work.z);
    cMtx_YrotS(*calc_mtx, tans_val);
    work.x = 0.0;
    work.y = NREG_F(18) + 45.0f;
    work.z = (BREG_F(12) + 60.0f) - 30.0f;
    MtxPosition(&work, &downPos);
    downPos += pos;
    // The following pokes a hole in the "c-style actors don't inherit" theory....
    ((fopEn_enemy_c*) i_this)->setDownPos(&downPos);
    cXyz sp80(a_this->eyePos);
    sp80.y += NREG_F(7) + 180.0f;
    ((fopEn_enemy_c*) i_this)->setHeadLockPos(&sp80);

    a_this->attention_info.flags |= fopAc_AttnFlag_UNK_0x200000;

    if ((a_this->current.pos.y - a_this->home.pos.y) < -5000.0f) {
        fopAcM_delete(a_this);
        OS_REPORT("DN NARAKU\n");
        int swBit = (fopAcM_GetParam(a_this) & 0xFF000000) >> 24;
        if (swBit != 0xFF) {
            dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
        }
    }

    // City in the Sky - Dynalfos Room:
    //  i.e. where you can scare the 2 lizard dudes with the clawshot, make them fall to their deaths,
    //  then the fan in the middle turns on.
    if (strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0 && fopAcM_GetRoomNo(a_this) == 8
        && a_this->health != 0 && a_this->current.pos.y <= -300.0f) {
        i_this->mAction = ACTION_DAMAGE;
        i_this->mMode = 0;
        i_this->field_0x704 = 0.0;
        a_this->health = 0;
    }

    return 1;
}

static int daE_DN_IsDelete(e_dn_class* i_this) {
    return 1;
}

static int daE_DN_Delete(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fpc_ProcID id = fopAcM_GetID(i_this);

    dComIfG_resDelete(&i_this->mPhase, "E_dn");

    if (i_this->mIsFirstSpawn != 0) {
        l_initHIO = 0;
        mDoHIO_DELETE_CHILD(l_HIO.id);
    }

    if (a_this->heap != NULL) {
        i_this->mpModelMorf->stopZelAnime();
    }

    return 1;
}

Vec jv_offset = { 0.0f, 0.0f, 0.0f };

dJntColData_c jc_data[12] = {
    {0, 1, 2, 40.0f, &jv_offset}, {0, 1, 3, 30.0f, &jv_offset},
    {0, 1, 22, 40.0f, &jv_offset}, {0, 1, 11, 15.0f, &jv_offset},
    {0, 1, 12, 10.0f, &jv_offset}, {0, 1, 17, 15.0f, &jv_offset},
    {0, 1, 18, 10.0f, &jv_offset}, {0, 1, 23, 20.0f, &jv_offset},
    {0, 1, 24, 15.0f, &jv_offset}, {0, 1, 27, 20.0f, &jv_offset},
    {0, 1, 28, 15.0f, &jv_offset}, {0, 1, 32, 20.0f, &jv_offset},
};

static int useHeapInit(fopAc_ac_c* a_this) {
    e_dn_class* i_this = (e_dn_class*)a_this;

    i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_dn", 38), NULL, NULL,
                                               (J3DAnmTransform*)dComIfG_getObjectRes("E_dn", 31), 0, 1.0f,
                                               0, -1, &i_this->mSound, 0x80000, 0x11000084);
    if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setUserArea((uintptr_t)i_this);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        if (i != 0) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }
    }

    if (i_this->mJntCol.init(a_this, &jc_data[0], model, 12) == 0) {
        return 0;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_dn", 39);
    JUT_ASSERT(5420, modelData != NULL);
    i_this->mpKnifeModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->mpKnifeModel == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("E_dn", 41);
    JUT_ASSERT(5432, modelData != NULL);
    i_this->mpShieldModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->mpShieldModel == NULL) {
        return 0;
    }

    if (i_this->arg1 == 1) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("E_dn", 40);
        JUT_ASSERT(5443, modelData != NULL);
        i_this->mpSkullModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (i_this->mpSkullModel == NULL) {
            return 0;
        }
    }

    return 1;
}

static cPhs__Step daE_DN_Create(fopAc_ac_c* a_this) {
    e_dn_class* i_this = (e_dn_class*)a_this;

    fopAcM_ct(a_this, e_dn_class);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&i_this->mPhase, "E_dn");
    if (phase == cPhs_COMPLEATE_e) {
        int swBit = (fopAcM_GetParam(a_this) & 0xFF000000) >> 24;
        if (swBit != 0xFF) {
            if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo(a_this))) {
                return cPhs_ERROR_e;
            }
        }

        OS_REPORT("E_dn PARAM %x\n", fopAcM_GetParam(a_this));
        i_this->arg0 = fopAcM_GetParam(a_this);
        i_this->arg3 = 1;
        i_this->arg1 = (fopAcM_GetParam(a_this) & 0xF00) >> 8;
        i_this->arg2 = (fopAcM_GetParam(a_this) & 0xF000) >> 12;

        if ((a_this->home.angle.z & 0xFF) == 0 || (a_this->home.angle.z & 0xFF) == 0xFF) {
            i_this->field_0x6d8 = 100000.0f;
        } else {
            i_this->field_0x6d8 = (a_this->home.angle.z & 0xFF) * 100.0f;
        }

        OS_REPORT("E_dn AZ %x\n", a_this->home.angle.z);
        OS_REPORT("E_dn PR %d\n", (int)i_this->field_0x6d8);
        a_this->home.angle.z = a_this->current.angle.z = a_this->shape_angle.z = 0;
        u8 param = (fopAcM_GetParam(a_this) & 0xFF0000) >> 16;
        OS_REPORT("E_dn//////////////E_DN SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x3BF0)) {
            OS_REPORT("//////////////E_DN SET NON !!\n");
            return cPhs_ERROR_e;
        }

        if (l_initHIO == 0) {
            i_this->mIsFirstSpawn = 1;
            l_initHIO = 1;
            l_HIO.id = mDoHIO_CREATE_CHILD("リザードマン", &l_HIO);
        }

        fopAcM_OnStatus(a_this, fopAcM_STATUS_UNK_0x100);
        a_this->attention_info.flags = fopAc_AttnFlag_BATTLE_e;
        fopAcM_SetMtx(a_this, i_this->mpModelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(a_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(a_this, 200.0f, 200.0f, 200.0f);

        i_this->mObjAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1,
                             &i_this->mAcchCir, fopAcM_GetSpeed_p(a_this), NULL, NULL);
        i_this->mAcchCir.SetWall(80.0f, 100.0f);

        if (i_this->arg1 == 1) {
            a_this->field_0x560 = a_this->health = 100;
        } else {
            a_this->field_0x560 = a_this->health = 100;
        }
        i_this->mStts.Init(200, 0, a_this);

        static dCcD_SrcSph cc_sph_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xD8FBFDFf, 0x3}, 0x75}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
            } // mSphAttr
        };
        for (int i = 0; i <= 2; i++) {
            i_this->mSphs[i].Set(cc_sph_src);
            i_this->mSphs[i].SetStts(&i_this->mStts);
        }

        static dCcD_SrcSph at_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xD}, {0x0, 0x0}, 0x0}}, // mObj
                {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
            } // mSphAttr
        };
        i_this->mAtSph.Set(at_sph_src);
        i_this->mAtSph.SetStts(&i_this->mStts);

        static dCcD_SrcSph tate_sph_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xD8FBFDFF, 0x3}, 0x0}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_STONE, 0x5, 0x0, 0x0, 0x3}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
            } // mSphAttr
        };
        i_this->mTateSph.Set(tate_sph_src);
        i_this->mTateSph.SetStts(&i_this->mStts);

        i_this->mFrameCounter = (int)cM_rndF(65535.0f) & 0xFF00;

        if (i_this->arg0 == 0) {
            i_this->mAction = ACTION_STAY;
        }

        if ((i_this->arg0 == 13 || i_this->arg0 == 14) || (i_this->arg0 == 15 || i_this->arg0 == 16)) {
            i_this->field_0x10d8 = 1;
            i_this->mAction = ACTION_REG;
            fopAcM_OnStatus(a_this, fopAcM_STATUS_UNK_0x4000);
            i_this->mAcchCir.SetWall(80.0f, 2.0f);
        }

        i_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);
        i_this->mSound.setEnemyName("E_dn");
        i_this->mAtInfo.mpSound = &i_this->mSound;

        c_start = 1;
        daE_DN_Execute(i_this);
        c_start = 0;
    }

    return phase;
}

e_dn_class::e_dn_class() {}

AUDIO_INSTANCES;

static actor_method_class l_daE_DN_Method = {
    (process_method_func)daE_DN_Create,
    (process_method_func)daE_DN_Delete,
    (process_method_func)daE_DN_Execute,
    (process_method_func)daE_DN_IsDelete,
    (process_method_func)daE_DN_Draw,
};

extern actor_process_profile_definition g_profile_E_DN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_DN,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_dn_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  118,                    // mPriority
  &l_daE_DN_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
