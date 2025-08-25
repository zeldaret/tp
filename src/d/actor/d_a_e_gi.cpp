/**
 * @file d_a_e_gi.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_gi.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_enemy.h"

class daE_GI_HIO_c : public JORReflexible {
public:
    /* 806CD48C */ daE_GI_HIO_c();
    /* 806D098C */ virtual ~daE_GI_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ s8 id;
    /* 0x08 */ f32 model_size;
    /* 0x0C */ f32 move_speed;
    /* 0x10 */ f32 player_detect_range;
    /* 0x14 */ f32 player_attack_range;
    /* 0x18 */ f32 attack_angle;
    /* 0x1C */ f32 link_stun_time;
    /* 0x20 */ f32 wolf_stun_time;
    /* 0x24 */ f32 scream_prevention_time;
    /* 0x28 */ f32 lever_spin_time;
};

enum daE_GI_ACTION_e {
    ACTION_SLEEP_e,
    ACTION_WAIT_e,
    ACTION_CHASE_e,
    ACTION_ATTACK_e,
    ACTION_DAMAGE_e,
    ATTACK_BITE_DAMAGE_e,
};

namespace {
/* 806D0FBC-806D0FFC 000038 0040+00 1/1 0/0 0/0 .data            cc_gi_src__22@unnamed@d_a_e_gi_cpp@
 */
static dCcD_SrcSph cc_gi_src = {
    {
        {0x0, {{0x0, 0x1, 0x0}, {0xD8FBFDFF, 0x43}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806D0FFC-806D103C 000078 0040+00 1/1 0/0 0/0 .data cc_gi_att_src__22@unnamed@d_a_e_gi_cpp@ */
static dCcD_SrcSph cc_gi_att_src = {
    {
        {0x0, {{0x100000, 0x3, 0xD}, {0xD8FBFDFF, 0x0}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
}

/* 806CD48C-806CD4F4 0000EC 0068+00 1/1 0/0 0/0 .text            __ct__12daE_GI_HIO_cFv */
daE_GI_HIO_c::daE_GI_HIO_c() {
    id = -1;
    model_size = 1.1f;
    move_speed = 4.0f;
    player_detect_range = 1200.0f;
    player_attack_range = 380.0f;
    attack_angle = 0x4000;
    link_stun_time = 135;
    wolf_stun_time = 110;
    scream_prevention_time = 20;
    lever_spin_time = 35;
}

/* 806CD4F4-806CD594 000154 00A0+00 1/1 0/0 0/0 .text ctrlJoint__8daE_GI_cFP8J3DJointP8J3DModel */
int daE_GI_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jnt_no = i_joint->getJntNo();
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 3:
        mDoMtx_stack_c::XrotM(field_0x67e);
        break;
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 806CD594-806CD5E0 0001F4 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_GI_cFP8J3DJointi */
int daE_GI_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == NULL) {
        J3DModel* model = j3dSys.getModel();
        daE_GI_c* a_this = (daE_GI_c*)model->getUserArea();
        
        if (a_this != NULL) {
            a_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 806CD5E0-806CD848 000240 0268+00 1/1 0/0 0/0 .text            draw__8daE_GI_cFv */
int daE_GI_c::draw() {
    J3DModel* model = mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    
    J3DModelData* modelData = model->getModelData();
    J3DMaterial* eyeMaterial = modelData->getMaterialNodePointer(2);
    if (eyeMaterial != NULL) {
        eyeMaterial->getTevColor(2)->r = field_0x6a2;
    }

    if (mBodyDamageColor) {
        J3DMaterial* bodyMaterial = modelData->getMaterialNodePointer(0);
        bodyMaterial->getTevColor(0)->r = mBodyDamageColor;
        bodyMaterial->getTevColor(0)->g = mBodyDamageColor;
        bodyMaterial->getTevColor(0)->b = mBodyDamageColor;

        J3DMaterial* body2Material = modelData->getMaterialNodePointer(1);
        body2Material->getTevColor(0)->r = mBodyDamageColor;
        body2Material->getTevColor(0)->g = mBodyDamageColor;
        body2Material->getTevColor(0)->b = mBodyDamageColor;
    }

    mpModelMorf->entryDL();

    cXyz sp8;
    sp8.set(current.pos.x, 100.0f + current.pos.y, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &sp8, 1200.0f, 0.0f, current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    g_env_light.setLightTevColorType_MAJI(mpSwordModel, &tevStr);
    mDoExt_modelUpdateDL(mpSwordModel);
    dComIfGd_addRealShadow(mShadowKey, mpSwordModel);
    return 1;
}

/* 806CD848-806CD868 0004A8 0020+00 1/0 0/0 0/0 .text            daE_GI_Draw__FP8daE_GI_c */
static int daE_GI_Draw(daE_GI_c* a_this) {
    return a_this->draw();
}

/* 806CD868-806CD90C 0004C8 00A4+00 7/7 0/0 0/0 .text            setBck__8daE_GI_cFiUcff */
void daE_GI_c::setBck(int i_anm, u8 i_mode, f32 i_morf, f32 i_speed) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_GI", i_anm), i_mode, i_morf, i_speed, 0.0f, -1.0f);
}

/* 806CD90C-806CD938 00056C 002C+00 8/8 0/0 0/0 .text            setActionMode__8daE_GI_cFii */
void daE_GI_c::setActionMode(int i_actionMode, int i_moveMode) {
    mWallCheckRadius = 150.0f;
    mActionMode = i_actionMode;
    mMoveMode = i_moveMode;
    mIsAttackStart = FALSE;
    offHeadLockFlg();
}

/* 806D1128-806D112C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_HIOInit;

/* 806D1138-806D1164 000018 002C+00 15/15 0/0 0/0 .bss             l_HIO */
static daE_GI_HIO_c l_HIO;

/* 806CD938-806CDD1C 000598 03E4+00 1/1 0/0 0/0 .text            damage_check__8daE_GI_cFv */
void daE_GI_c::damage_check() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    
    if (mInvulnerabilityTimer == 0 && mActionMode != ATTACK_BITE_DAMAGE_e) {
        mCcStts.Move();
        mAtInfo.mpCollider = NULL;

        if (mCcSph[0].ChkTgHit()) {
            mAtInfo.mpCollider = mCcSph[0].GetTgHitObj();
        }

        if (mCcSph[1].ChkTgHit()) {
            mAtInfo.mpCollider = mCcSph[1].GetTgHitObj();
        }

        if (mAtInfo.mpCollider != NULL) {
            mIsOnHeadLock = FALSE;

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD) && ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtAtp() >= 4 && ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1) {
                health = 0;
            }

            cc_at_check(this, &mAtInfo);

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK | AT_TYPE_WOLF_CUT_TURN | AT_TYPE_10000000 | AT_TYPE_MIDNA_LOCK)) {
                mInvulnerabilityTimer = 20;
            } else {
                mInvulnerabilityTimer = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                mInvulnerabilityTimer = KREG_S(8) + 10;
            }

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK) && player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_LEFT && player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_RIGHT && player->onWolfEnemyHangBite(this)) {
                if (health <= 0) {
                    player->offWolfEnemyHangBite();
                    mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1F);
                    dComIfGp_getVibration().StartShock(3, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
                    setDamageEffect();
                    setActionMode(ACTION_DAMAGE_e, 10);
                } else {
                    setActionMode(ATTACK_BITE_DAMAGE_e, 0);
                }
                return;
            }

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
                if (mContinuousHitTimer != 0) {
                    mDamageDirection ^= 1;
                } else if (cM_rnd() < 0.5f) {
                    mDamageDirection = 0;
                } else {
                    mDamageDirection = 1;
                }
                mContinuousHitTimer = 30;
            } else {
                mDamageDirection ^= 1;
            }

            if (health <= 0) {
                setActionMode(ACTION_DAMAGE_e, 10);
            } else {
                BOOL try_cry_stop = FALSE;
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
                    if (cM_rnd() <= 0.15f) {
                        try_cry_stop = TRUE;
                    } else if (daPy_getPlayerActorClass()->getCutCount() >= 4 || ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1) {
                        if (cM_rnd() <= 0.25f) {
                            try_cry_stop = TRUE;
                        }
                    }
                } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                    mIsOnHeadLock = TRUE;
                }

                switch (field_0x6a0) {
                case 0:
                    if (try_cry_stop) {
                        if (setCryStop()) {
                            setActionMode(ACTION_CHASE_e, 2);
                            return;
                        }

                        setActionMode(ACTION_DAMAGE_e, mDamageDirection);
                        break;
                    }
                    
                    if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_JUMP && daPy_getPlayerActorClass()->checkCutJumpCancelTurn()) {
                        mInvulnerabilityTimer = 3;
                    }

                    setActionMode(ACTION_DAMAGE_e, mDamageDirection);
                    break;
                case 3:
                    return;
                }
            }

            if (mPlayerStunTimer != 0) {
                mPlayerStunTimer = 1;
                mCryTimer = l_HIO.scream_prevention_time;
            }
        }
    }
}

/* 806CDD1C-806CDD8C 00097C 0070+00 2/2 0/0 0/0 .text            setWeaponAtBit__8daE_GI_cFUc */
void daE_GI_c::setWeaponAtBit(u8 i_onBit) {
    if (!i_onBit) {
        mAtSph[0].OffAtSetBit();
        mAtSph[1].OffAtSetBit();
        mAtSph[2].OffAtSetBit();
        mAtSph[3].OffAtSetBit();
    } else {
        mAtSph[0].OnAtSetBit();
        mAtSph[1].OnAtSetBit();
        mAtSph[2].OnAtSetBit();
        mAtSph[3].OnAtSetBit();
    }   
}

/* 806D1164-806D1168 000044 0004+00 4/4 0/0 0/0 .bss             m_cry_gi */
static daE_GI_c* m_cry_gi;

/* 806CDD8C-806CDED8 0009EC 014C+00 3/3 0/0 0/0 .text            setCryStop__8daE_GI_cFv */
bool daE_GI_c::setCryStop() {
    if (m_cry_gi == NULL) {
        if (!daPy_getPlayerActorClass()->checkNowWolf()) {
            mPlayerStunTimer = 9.0f + l_HIO.link_stun_time;
        } else {
            mPlayerStunTimer = 9.0f + l_HIO.wolf_stun_time;
        }

        mPlayerStunTimer += (int)l_HIO.lever_spin_time;
        mPushButtonCount = 0;
        mCryTimer = mPlayerStunTimer + l_HIO.scream_prevention_time;
        m_cry_gi = this;

        dCam_getBody()->ForceLockOn(this);
        speedF = 0.0f;
        setBck(10, 0, 5.0f, 1.0f);
        field_0x6a0 = 3;
        return true;
    }

    return false;
}

/* 806CDED8-806CDFB0 000B38 00D8+00 1/1 0/0 0/0 .text            setAttackEffect__8daE_GI_cFv */
void daE_GI_c::setAttackEffect() {
    cXyz size(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    dComIfGp_particle_setPolyColor(0x8684, mAcch.m_gnd, &current.pos, &tevStr, &shape_angle, &size, 0, NULL, -1, NULL);
    dComIfGp_particle_set(0x8685, &current.pos, &tevStr, &shape_angle, &size);
}

/* 806CDFB0-806CE0D4 000C10 0124+00 1/1 0/0 0/0 .text            setDragSwordEffect__8daE_GI_cFv */
void daE_GI_c::setDragSwordEffect() {
    cXyz size(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    cXyz pos;

    mDoMtx_stack_c::copy(mpSwordModel->getBaseTRMtx());
    mDoMtx_stack_c::transM(44.0f, -190.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&pos);

    dBgS_GndChk gndchk;
    gndchk.SetPos(&pos);
    
    f32 ground_height = dComIfG_Bgsp().GroundCross(&gndchk);
    if (-1000000000.0f != ground_height) {
        pos.y = ground_height;
    }

    mPolyColorKey = dComIfGp_particle_setPolyColor(mPolyColorKey, 0x8689, mAcch.m_gnd, &pos, &tevStr, &shape_angle, &size, 0, NULL, -1, NULL);
}

/* 806CE0D4-806CE184 000D34 00B0+00 1/1 0/0 0/0 .text            setDeathSmokeEffect__8daE_GI_cFv */
void daE_GI_c::setDeathSmokeEffect() {
    cXyz size(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    cXyz pos;
    cXyz offset;
    offset.set(0.0f, 0.0f, 85.0f);
    cLib_offsetPos(&pos, &current.pos, shape_angle.y, &offset);
    dComIfGp_particle_setPolyColor(0xE7, mAcch.m_gnd, &pos, &tevStr, &shape_angle, &size, 0, NULL, -1, NULL);
}

/* 806CE184-806CE280 000DE4 00FC+00 3/3 0/0 0/0 .text            setDamageEffect__8daE_GI_cFv */
void daE_GI_c::setDamageEffect() {
    cXyz size(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    cXyz pos;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(2));
    mDoMtx_stack_c::multVecZero(&pos);

    for (int i = 0; i < 3; i++) {
        static u16 gi_damage_eff_id[] = {0x8686, 0x8687, 0x8688};
        dComIfGp_particle_set(gi_damage_eff_id[i], &pos, &tevStr, &shape_angle, &size);
    }
}

/* 806CE280-806CE31C 000EE0 009C+00 1/1 0/0 0/0 .text            s_other_gi__FPvPv */
static void* s_other_gi(void* i_actor, void* i_other) {
    if (i_actor != i_other && fopAcM_IsActor(i_actor) && !fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_E_GI &&
        fopAcM_searchActorDistance((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_other) < 1000.0f)
    {
        return i_actor;
    }

    return NULL;
}

/* 806CE31C-806CE3C4 000F7C 00A8+00 1/1 0/0 0/0 .text            s_battle_gi__FPvPv */
static void* s_battle_gi(void* i_actor, void* i_other) {
    if (i_actor != i_other && fopAcM_IsActor(i_actor) && !fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_E_GI &&
        ((daE_GI_c*)i_actor)->isBattleOn() && fopAcM_searchActorDistance((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_other) < 500.0f)
    {
        return i_actor;
    }

    return NULL;
}

/* 806CE3C4-806CE6AC 001024 02E8+00 1/1 0/0 0/0 .text            executeSleep__8daE_GI_cFv */
void daE_GI_c::executeSleep() {
    switch (mMoveMode) {
    case 0:
        field_0x6a0 = 0;
        setBck(9, 0, 3.0f, 1.0f);
        mpModelMorf->setFrame(1.0f);
        mpModelMorf->setPlaySpeed(0.0f);
        mMoveMode = 1;
        mCcSph[0].OffTgSetBit();
        mCcSph[1].OffTgSetBit();
        /* fallthrough */
    case 1:
        attention_info.flags = 0;

        if (mSwbit2 != 0xFF) {
            if (dComIfGs_isSwitch(mSwbit2, fopAcM_GetRoomNo(this))) {
                mpModelMorf->setPlaySpeed(1.0f);
                mMoveMode = 2;
            }
        } else {
            if (fopAcM_searchPlayerDistance(this) < l_HIO.player_detect_range && !fopAcM_otherBgCheck(this, daPy_getPlayerActorClass())) {
                mpModelMorf->setPlaySpeed(1.0f);
                mMoveMode = 2;
            }
        }
        break;
    case 2:
        if (mpModelMorf->isStop()) {
            setBck(4, 0, 3.0f, 1.0f);
            mMoveMode = 3;
            field_0x668 = cM_rndFX(0.2f);
            field_0x66c = 1024.0f + cM_rndFX(256.0f);
            mCcSph[0].OnTgSetBit();
            mCcSph[1].OnTgSetBit();
        }
        break;
    case 3:
        if (mpModelMorf->getFrame() >= 14.0f) {
            if (mpModelMorf->getFrame() >= 40.0f) {
                cLib_chaseF(&speedF, 0.0f, 0.5f);
            } else {
                cLib_chaseF(&speedF, 2.0f, 0.5f);
            }
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, field_0x66c, 0x40);
            current.angle.y = shape_angle.y;
        }

        if (mpModelMorf->isStop()) {
            if (fopAcM_searchPlayerDistance(this) > l_HIO.player_detect_range) {
                setActionMode(ACTION_WAIT_e, 0);
            } else {
                setActionMode(ACTION_CHASE_e, 10);
            }
        }
        break;
    }
}

/* 806CE6AC-806CE858 00130C 01AC+00 1/1 0/0 0/0 .text            executeWait__8daE_GI_cFv */
void daE_GI_c::executeWait() {
    f32 player_dist = fopAcM_searchPlayerDistance(this);

    switch (mMoveMode) {
    case 0:
        field_0x6a0 = 0;
        speedF = 0.0f;
        setBck(11, 2, 10.0f, 1.0f);
        mMoveMode = 1;
    case 1:
        if ((mSwbit2 == 0xFF || dComIfGs_isSwitch(mSwbit2, fopAcM_GetRoomNo(this))) && player_dist < l_HIO.player_detect_range) {
            if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < (s16)l_HIO.attack_angle && !fopAcM_otherBgCheck(this, daPy_getPlayerActorClass())) {
                if (player_dist < l_HIO.player_attack_range && setCryStop()) {
                    setActionMode(ACTION_CHASE_e, 2);
                } else {
                    setActionMode(ACTION_CHASE_e, 0);
                }
                return;
            }

            if (fpcM_Search(s_battle_gi, this)) {
                setActionMode(ACTION_CHASE_e, 0);
            }
        }
    }
}

/* 806CE858-806CEC94 0014B8 043C+00 1/1 0/0 0/0 .text            executeChase__8daE_GI_cFv */
void daE_GI_c::executeChase() {
    field_0x698 = 1;

    switch (mMoveMode) {
    case 0:
    case 10:
        field_0x6a0 = 0;

        if (mMoveMode == 10) {
            setBck(12, 2, 10.0f, 1.0f);
        } else {
            setBck(12, 2, 3.0f, 1.0f);
        }

        mMoveMode = 1;
        field_0x668 = cM_rndFX(0.2f);
        field_0x66c = 1024.0f + cM_rndFX(256.0f);
        field_0x684 = 30;

        if (fopAcM_searchPlayerDistance(this) < 50.0f + l_HIO.player_attack_range && abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x2800 && !fopAcM_otherBgCheck(this, daPy_getPlayerActorClass())) {
            field_0x684 = 0;
        }
    case 1: {
        setDragSwordEffect();

        if (mpModelMorf->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_GI_WALK, 0, -1);
        }

        f32 anm_frame = mpModelMorf->getFrame();
        if (anm_frame >= 10.0f && anm_frame < 29.0f) {
            cLib_chaseF(&speedF, (field_0x668 + l_HIO.move_speed) - 1.0f, 0.5f);
        } else if (anm_frame >= 34.0f && anm_frame < 54.0f) {
            cLib_chaseF(&speedF, field_0x668 + l_HIO.move_speed, 0.5f);
        } else {
            cLib_chaseF(&speedF, 0.5f, 0.5f);
        }

        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, field_0x66c, 0x40);
        current.angle.y = shape_angle.y;

        if (fopAcM_searchPlayerDistance(this) < (50.0f + l_HIO.player_attack_range)) {
            if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x2800 && !fopAcM_otherBgCheck(this, daPy_getPlayerActorClass()) && field_0x684 == 0) {
                if (setCryStop()) {
                    mMoveMode = 2;
                } else {
                    setActionMode(ACTION_ATTACK_e, 5);
                    setBck(11, 2, 10.0f, 1.0f);
                    speedF = 0.0f;
                }
            }
        } else if (fopAcM_searchPlayerDistance(this) > (200.0f + l_HIO.player_detect_range)) {
            setActionMode(ACTION_WAIT_e, 0);
        }
        break;
    }
    case 2:
        field_0x69f = 1;

        if (mpModelMorf->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_GI_WALK, 0, -1);
            mSound.startCreatureSound(Z2SE_EN_GI_SHOUT, 0, -1);
            field_0x6a0 = 0;
        }

        if (mpModelMorf->isStop()) {
            setActionMode(ACTION_ATTACK_e, 0);
            mIsAttackStart = TRUE;
        }
        break;
    }
}

/* 806CEC94-806CF0B8 0018F4 0424+00 2/1 0/0 0/0 .text            executeAttack__8daE_GI_cFv */
void daE_GI_c::executeAttack() {
    field_0x698 = 1;

    switch (mMoveMode) {
    case 0:
        field_0x6a0 = 0;
        speedF = 0.0f;
        setBck(5, 0, 10.0f, 1.0f);
        mMoveMode = 1;
        /* fallthrough */
    case 1:
        if (mpModelMorf->checkFrame(60.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_GI_V_ATK, -1);
        }

        if (mpModelMorf->checkFrame(71.0f)) {
            mSound.startCreatureSound(Z2SE_EN_GI_ATK_STRK, 0, -1);
        }

        if (mpModelMorf->checkFrame(76.0f)) {
            setAttackEffect();
            mSound.startCreatureSound(Z2SE_EN_GI_ATK_IMPCT, 0, -1);
        }

        if (mpModelMorf->getFrame() < 70.0f) {
            cLib_chaseF(&mWallCheckRadius, 200.0f, 1.5f);
            cLib_addCalcAngleS(&shape_angle.y, (fopAcM_searchPlayerAngleY(this) + 0x400), 0x10, 0x200, 0x80);
            current.angle.y = shape_angle.y;
        } else if (mpModelMorf->getFrame() <= 80.0f) {
            setWeaponAtBit(1);
            cXyz start;
            cXyz end;
            mDoMtx_stack_c::copy(mpSwordModel->getBaseTRMtx());
            mDoMtx_stack_c::multVecZero(&start);
            mDoMtx_stack_c::transM(33.0f, -150.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&end);
            
            dBgS_LinChk linecheck;
            linecheck.Set(&start, &end, this);
            if (dComIfG_Bgsp().LineCross(&linecheck)) {
                dComIfGp_setHitMark(2, this, &linecheck.GetCross(), NULL, NULL, 0);
                mpModelMorf->setPlaySpeed(-1.0f);
                mMoveMode = 2;
                return;
            }
        }

        if (mpModelMorf->checkFrame(60.0f)) {
            field_0x6a0 = 3;
        }

        if (mpModelMorf->checkFrame(80.0f)) {
            field_0x6a0 = 0;
        }

        if (mpModelMorf->isStop()) {
            setActionMode(ACTION_CHASE_e, 10);
        }
        break;
    case 2:
        if (mpModelMorf->checkFrame(1.0f)) {
            setActionMode(ACTION_CHASE_e, 10);
        }
        break;
    case 5:
        speedF = 0.0f;
        setBck(11, 2, 10.0f, 1.0f);
        mMoveMode = 6;
        /* fallthrough */
    case 6:
        if (m_cry_gi == NULL) {
            field_0x684 = cM_rndF(20.0f);
            mMoveMode = 7;
        } else if (m_cry_gi->isAttackStart()) {
            field_0x684 = 10.0f + cM_rndF(40.0f);
            mMoveMode = 7;
        }
        break;
    case 7:
        if (field_0x684 == 0) {
            mMoveMode = 0;
        }
        break;
    }
}

/* 806CF0B8-806CF410 001D18 0358+00 1/1 0/0 0/0 .text            executeDamage__8daE_GI_cFv */
void daE_GI_c::executeDamage() {
    switch (mMoveMode) {
    case 0:
    case 1:
        mSound.startCreatureVoice(Z2SE_EN_GI_V_DMG, -1);
        setDamageEffect();
        speedF = 0.0f;
        field_0x6a0 = 0;

        if (mMoveMode == 0) {
            setBck(7, 0, 3.0f, 1.0f);
        } else {
            setBck(6, 0, 3.0f, 1.0f);
        }

        mMoveMode = 2;
        return;
    case 2:
        if (mIsOnHeadLock) {
            onHeadLockFlg();
        }

        if (mpModelMorf->isStop()) {
            if (fopAcM_searchPlayerDistance(this) < l_HIO.player_attack_range && cM_rnd() < 0.5 && !fpcM_Search(s_other_gi, this)) {
                setActionMode(ACTION_ATTACK_e, 0);
            } else {
                setActionMode(ACTION_CHASE_e, 0);
            }
        }
        break;
    case 10:
        mSound.startCreatureVoice(Z2SE_EN_GI_V_DEAD, -1);

        mCcSph[0].OffTgSetBit();
        mCcSph[1].OffTgSetBit();
        mCcSph[0].ClrTgHit();
        mCcSph[1].ClrTgHit();
        mCcStts.Init(255, 0, this);

        speedF = 0.0f;
        setBck(8, 0, 3.0f, 1.0f);
        mMoveMode = 11;

        if (m_cry_gi == this) {
            dCam_getBody()->ForceLockOff(this);
            m_cry_gi = NULL;
        }
        break;
    case 11:
        attention_info.flags = 0;
        cLib_chaseF(&mWallCheckRadius, 200.0f, 1.5f);

        if (mpModelMorf->checkFrame(72.0f)) {
            setDeathSmokeEffect();
        }

        if (mpModelMorf->getFrame() >= 45.0f) {
            cLib_chaseF(&mBodyDamageColor, -50.0f, 0.5f);
        }

        if (mpModelMorf->isStop()) {
            if (mSwbit != 0xFF) {
                dComIfGs_onSwitch(mSwbit, fopAcM_GetRoomNo(this));
            }
            fopAcM_createDisappear(this, &current.pos, 10, 0, 0x22);
            fopAcM_delete(this);
        }
        break;
    }
}

/* 806CF410-806CF720 002070 0310+00 1/1 0/0 0/0 .text            executeBiteDamage__8daE_GI_cFv */
void daE_GI_c::executeBiteDamage() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mMoveMode) {
    case 0:
        mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1F);
        setBck(14, 0, 3.0f, 1.0f);
        mMoveMode = 1;
        mWolfBiteCount = 0;
        dComIfGp_getVibration().StartShock(3, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        setDamageEffect();
        speedF = 0.0f;
        mPlayerStunTimer = 0;
        /* fallthrough */
    case 1:
        player->setWolfEnemyHangBiteAngle((shape_angle.y - 0x2000));

        if (mpModelMorf->isStop()) {
            setBck(16, 2, 3.0f, 1.0f);
        }

        if (checkWolfBiteDamage()) {
            dComIfGp_getVibration().StartShock(3, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            offWolfBiteDamage();
            mWolfBiteCount++;

            health -= 20;
            if (health < 0) {
                player->offWolfEnemyHangBite();
                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x20);
                setDamageEffect();
                setActionMode(ACTION_DAMAGE_e, 10);
            } else if (mWolfBiteCount >= 5) {
                setDamageEffect();
                player->offWolfEnemyHangBite();
                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1F);
                setBck(15, 0, 3.0f, 1.0f);
                setActionMode(ACTION_DAMAGE_e, 2);
            } else {
                setBck(13, 0, 3.0f, 1.0f);
                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1E);
            }
        }

        if (!player->checkWolfEnemyHangBiteOwn(this)) {
            player->offWolfEnemyHangBite();
            offWolfBiteDamage();
            setBck(15, 0, 3.0f, 1.0f);
            setActionMode(ACTION_DAMAGE_e, 2);
        }
        break;
    }
}

/* 806CF720-806CF878 002380 0158+00 1/1 0/0 0/0 .text            PushButtonCount__8daE_GI_cFv */
void daE_GI_c::PushButtonCount() {
    if (mPlayerStunTimer != 0) {
        if (abs((s16)(mPrevStickAngle - mDoCPd_c::getStickAngle3D(PAD_1))) > 0x1000) {
            mPushButtonCount++;
        }
    
        if (mDoCPd_c::getTrigA(PAD_1)) {
            mPushButtonCount += 2;
        }

        if (mDoCPd_c::getTrigB(PAD_1)) {
            mPushButtonCount += 2;
        }

        if (mDoCPd_c::getTrigL(PAD_1)) {
            mPushButtonCount += 2;
        }

        if (mDoCPd_c::getTrigR(PAD_1)) {
            mPushButtonCount += 2;
        }

        mPlayerStunTimer -= mPushButtonCount / 2;
        if (mPlayerStunTimer < 0) {
            mPlayerStunTimer = 0;
        }

        mCryTimer = mPlayerStunTimer + l_HIO.scream_prevention_time;
        mPushButtonCount &= 1;
    }

    mPrevStickAngle = mDoCPd_c::getStickAngle3D(PAD_1);
}

/* 806CF878-806CFB60 0024D8 02E8+00 1/1 0/0 0/0 .text            action__8daE_GI_cFv */
void daE_GI_c::action() {
    setWeaponAtBit(0);
    field_0x69f = 0;
    field_0x698 = 0;

    damage_check();

    u8 is_battle_on = FALSE;
    attention_info.flags = 4;

    switch (mActionMode) {
    case ACTION_SLEEP_e:
        executeSleep();
        break;
    case ACTION_WAIT_e:
        executeWait();
        break;
    case ACTION_CHASE_e:
        is_battle_on = TRUE;
        executeChase();
        break;
    case ACTION_ATTACK_e:
        is_battle_on = TRUE;
        executeAttack();
        break;
    case ACTION_DAMAGE_e:
        is_battle_on = TRUE;
        executeDamage();
        break;
    case ATTACK_BITE_DAMAGE_e:
        is_battle_on = TRUE;
        executeBiteDamage();
        break;
    }

    mAcchCir.SetWall(20.0f, mWallCheckRadius);
    mIsBattleOn = is_battle_on;
    mSound.setLinkSearch(is_battle_on);

    if (attention_info.flags & 4) {
        dBgS_LinChk linecheck;
        linecheck.Set(&dComIfGp_getCamera(0)->lookat.eye, &attention_info.position, this);
        if (dComIfG_Bgsp().LineCross(&linecheck)) {
            attention_info.flags &= ~0x4;
        }
    }

    PushButtonCount();

    if (field_0x698 != 0) {
        s16 var_r28 = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
        if (var_r28 > 0x2000) {
            var_r28 = 0x2000;
        }
        if (var_r28 < -0x2000) {
            var_r28 = -0x2000;
        }
        cLib_addCalcAngleS(&field_0x67e, var_r28, 0x10, 0x400, 0x80);
    } else {
        cLib_addCalcAngleS(&field_0x67e, 0, 0x10, 0x400, 0x80);
    }

    if (field_0x69f != 0) {
        cLib_chaseS(&field_0x6a2, 0xFF, 0x10);
    } else {
        cLib_chaseS(&field_0x6a2, 0, 0x10);
    }

    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());

    cXyz down_pos;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&down_pos);
    setDownPos(&down_pos);

    cXyz lock_pos(eyePos);
    lock_pos.y += 300.0f;
    setHeadLockPos(&lock_pos);

    mAcch.CrrPos(dComIfG_Bgsp());
    mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 806CFB60-806CFBF0 0027C0 0090+00 1/1 0/0 0/0 .text            mtx_set__8daE_GI_cFv */
void daE_GI_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);

    J3DModel* model = mpModelMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();
    mpSwordModel->setBaseTRMtx(model->getAnmMtx(16));
}

/* 806CFBF0-806CFDF4 002850 0204+00 1/1 0/0 0/0 .text            cc_set__8daE_GI_cFv */
void daE_GI_c::cc_set() {
    cXyz cc_center;
    J3DModel* model = mpModelMorf->getModel();

    mDoMtx_stack_c::copy(model->getAnmMtx(4));
    mDoMtx_stack_c::transM(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += 30.0f;

    for (int i = 0; i < 2; i++) {
        if (i == 0) {
            mDoMtx_stack_c::copy(model->getAnmMtx(1));
            mDoMtx_stack_c::transM(-33.0f, 0.0f, 0.0f);
        } else {
            mDoMtx_stack_c::copy(model->getAnmMtx(3));
            mDoMtx_stack_c::transM(-11.0f, 0.0f, 0.0f);
        }

        mDoMtx_stack_c::multVecZero(&cc_center);
        mCcSph[i].SetC(cc_center);
        mCcSph[i].SetR(55.0f);
        dComIfG_Ccsp()->Set(&mCcSph[i]);
    }

    mDoMtx_stack_c::copy(mpSwordModel->getBaseTRMtx());
    mDoMtx_stack_c::transM(0.0f, 33.0f, 0.0f);

    for (int i = 0; i < 4; i++) {
        mDoMtx_stack_c::transM(11.0f, -55.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&cc_center);
        mAtSph[i].SetC(cc_center);
        mAtSph[i].SetR(33.0f);
        dComIfG_Ccsp()->Set(&mAtSph[i]);
    }
}

/* 806CFDF4-806D002C 002A54 0238+00 1/1 0/0 0/0 .text            execute__8daE_GI_cFv */
int daE_GI_c::execute() {
    if (field_0x684 != 0) {
        field_0x684--;
    }

    if (field_0x688 != 0) {
        field_0x688--;
    }

    if (mInvulnerabilityTimer != 0) {
        mInvulnerabilityTimer--;
    }

    if (mPlayerStunTimer != 0) {
        mPlayerStunTimer--;

        if (daPy_getPlayerActorClass()->getDamageWaitTimer() < 30) {
            if (!daPy_getPlayerActorClass()->checkNowWolf()) {
                if (mPlayerStunTimer < (l_HIO.link_stun_time + l_HIO.lever_spin_time)) {
                    daPy_getPlayerActorClass()->onNsScreamAnm();
                }
            } else if (mPlayerStunTimer < (l_HIO.wolf_stun_time + l_HIO.lever_spin_time)) {
                daPy_getPlayerActorClass()->onNsScreamAnm();
            }
        }
    }

    if (mContinuousHitTimer != 0) {
        mContinuousHitTimer--;
    }

    if (mCryTimer != 0) {
        mCryTimer--;
        if (mCryTimer == 0 && m_cry_gi == this) {
            dCam_getBody()->ForceLockOff(this);
            m_cry_gi = NULL;
        }
    }

    action();
    mtx_set();
    cc_set();

    cXyz effpos;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(2));
    mDoMtx_stack_c::transM(-30.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&effpos);
    cXyz effsize(1.0f, 1.5f, 1.0f);
    setMidnaBindEffect(this, &mSound, &effpos, &effsize);
    return 1;
}

/* 806D002C-806D004C 002C8C 0020+00 2/1 0/0 0/0 .text            daE_GI_Execute__FP8daE_GI_c */
static int daE_GI_Execute(daE_GI_c* a_this) {
    return a_this->execute();
}

/* 806D004C-806D0054 002CAC 0008+00 1/0 0/0 0/0 .text            daE_GI_IsDelete__FP8daE_GI_c */
static int daE_GI_IsDelete(daE_GI_c* a_this) {
    return 1;
}

/* 806D0054-806D00C8 002CB4 0074+00 1/1 0/0 0/0 .text            _delete__8daE_GI_cFv */
int daE_GI_c::_delete() {
    dComIfG_resDelete(&mPhase, "E_GI");

    if (mHIOInit) {
        l_HIOInit = FALSE;
        mDoHIO_DELETE_CHILD(l_HIO.id);
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 806D00C8-806D00E8 002D28 0020+00 1/0 0/0 0/0 .text            daE_GI_Delete__FP8daE_GI_c */
static int daE_GI_Delete(daE_GI_c* a_this) {
    return a_this->_delete();
}

/* 806D00E8-806D025C 002D48 0174+00 1/1 0/0 0/0 .text            CreateHeap__8daE_GI_cFv */
int daE_GI_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_GI", 0x13);
    JUT_ASSERT(1621, modelData != 0);

    mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_GI", 0xB), 0, 1.0f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpModelMorf->getModel();
    model->setUserArea((u32)this);

    for (u16 i = 1; i < model->getModelData()->getJointNum(); i++) {
        if (i == 3) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
        }
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("E_GI", 0x14);
    JUT_ASSERT(1652, modelData != 0);
    mpSwordModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (mpSwordModel == NULL) {
        return 0;
    }

    return 1;
}

/* 806D025C-806D027C 002EBC 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return ((daE_GI_c*)i_this)->CreateHeap();
}

/* 806D027C-806D0608 002EDC 038C+00 1/1 0/0 0/1 .text            create__8daE_GI_cFv */
int daE_GI_c::create() {
    fopAcM_SetupActor(this, daE_GI_c);

    OS_REPORT("E_GI PARAM %x\n", fopAcM_GetParam(this));
    mSwbit = fopAcM_GetParam(this);

    if (mSwbit != 0xFF && dComIfGs_isSwitch(mSwbit, fopAcM_GetRoomNo(this))) {
        // "After E_GI defeated, so not re-setting\n"
        OS_REPORT("E_GI やられ後なので再セットしません\n");
        return cPhs_ERROR_e;
    }

    mIsCreateAwake = (fopAcM_GetParam(this) >> 8);
    if (mIsCreateAwake) {
        mIsCreateAwake = TRUE;
    }

    mSwbit2 = (fopAcM_GetParam(this) >> 0x10);

    int phase_state = dComIfG_resLoad(&mPhase, "E_GI");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x30A0)) {
            return cPhs_ERROR_e;
        }

        if (!l_HIOInit) {
            l_HIOInit = TRUE;
            mHIOInit = TRUE;
            l_HIO.id = mDoHIO_CREATE_CHILD("ギブド", &l_HIO);
        }

        attention_info.flags = 4;
        fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcchCir.SetWall(20.0f, 100.0f);

        mWallCheckRadius = 150.0f;
        health = 240;
        field_0x560 = 240;

        mCcStts.Init(254, 0, this);
    
        mCcSph[0].Set(cc_gi_src);
        mCcSph[0].SetStts(&mCcStts);

        mCcSph[1].Set(cc_gi_src);
        mCcSph[1].SetStts(&mCcStts);

        mAtSph[0].Set(cc_gi_att_src);
        mAtSph[0].SetStts(&mCcStts);

        mAtSph[1].Set(cc_gi_att_src);
        mAtSph[1].SetStts(&mCcStts);

        mAtSph[2].Set(cc_gi_att_src);
        mAtSph[2].SetStts(&mCcStts);

        mAtSph[3].Set(cc_gi_att_src);
        mAtSph[3].SetStts(&mCcStts);
    
        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setEnemyName("E_gi");

        mAtInfo.mpSound = &mSound;
        mAtInfo.mPowerType = 1;
        gravity = -5.0f;
    
        if (!mIsCreateAwake) {
            setActionMode(ACTION_SLEEP_e, 0);
        } else {
            setActionMode(ACTION_WAIT_e, 0);
        }
    
        daE_GI_Execute(this);
    }

    return phase_state;
}

/* 806D0924-806D0944 003584 0020+00 1/0 0/0 0/0 .text            daE_GI_Create__FP8daE_GI_c */
static int daE_GI_Create(daE_GI_c* a_this) {
    return a_this->create();
}

/* 806D1064-806D1084 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GI_Method */
static actor_method_class l_daE_GI_Method = {
    (process_method_func)daE_GI_Create,
    (process_method_func)daE_GI_Delete,
    (process_method_func)daE_GI_Execute,
    (process_method_func)daE_GI_IsDelete,
    (process_method_func)daE_GI_Draw,
};

/* 806D1084-806D10B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GI */
extern actor_process_profile_definition g_profile_E_GI = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_E_GI,              // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daE_GI_c),       // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    210,                    // mPriority
    &l_daE_GI_Method,       // sub_method
    0x00040100,             // mStatus
    fopAc_ENEMY_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
