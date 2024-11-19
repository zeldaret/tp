/**
 * @file d_a_b_zant.cpp
 * 
*/

#include "d/actor/d_a_b_zant.h"
#include "d/actor/d_a_b_zant_magic.h"
#include "d/actor/d_a_b_zant_mobile.h"
#include "d/actor/d_a_b_zant_sima.h"
#include "d/actor/d_a_nbomb.h"
#include "d/actor/d_a_obj_pillar.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_mirror.h"
#include "d/d_s_play.h"
#include "f_op/f_op_msg_mng.h"
#include "SSystem/SComponent/c_math.h"
#include "Z2AudioLib/Z2Instances.h"
#include <cmath.h>
#include "dol2asm.h"

static u8 const lit_3757[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

UNK_REL_DATA

namespace {
/* 8064EEAC-8064EEEC 000020 0040+00 0/1 0/0 0/0 .data cc_zant_src__24@unnamed@d_a_b_zant_cpp@ */
dCcD_SrcSph cc_zant_src = {
    {
        {0x0, {{0x400, 0x1, 0x4}, {0xD8FBFDFF, 0x43}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8064EEEC-8064EF2C 000060 0040+00 0/1 0/0 0/0 .data
 * cc_zant_sword_src__24@unnamed@d_a_b_zant_cpp@                */
dCcD_SrcSph cc_zant_sword_src = {
    {
        {0x0, {{0x400, 0x1, 0x4}, {0xD8FBFDFF, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8064EF2C-8064EF70 0000A0 0044+00 0/1 0/0 0/0 .data cc_zant_roll_src__24@unnamed@d_a_b_zant_cpp@
 */
dCcD_SrcCyl cc_zant_roll_src = {
    {
        {0x0, {{0x400, 0x2, 0x4}, {0xD8FBFDFF, 0x42}, 0x74}},  // mObj
        {dCcD_SE_METAL, 0x0, 0x6, 0x0, 0x0},                 // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x303},                 // mGObjTg
        {0x0},                                              // mGObjCo
    },                                                      // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        40.0f,              // mRadius
        40.0f                // mHeight
    }                        // mCyl
};

/* 8064EF70-8064EFB0 0000E4 0040+00 0/1 0/0 0/0 .data cc_zant_foot_src__24@unnamed@d_a_b_zant_cpp@
 */
dCcD_SrcSph cc_zant_foot_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x400000, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0xA, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x106}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8064EFB0-8064EFF0 000124 0040+00 0/1 0/0 0/0 .data
 * cc_zant_foot_src2__24@unnamed@d_a_b_zant_cpp@                */
dCcD_SrcSph cc_zant_foot_src2 = {
    {
        {0x0, {{0x400, 0x2, 0x1E}, {0xD8BBFDFF, 0x43}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0xD, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8064EFF0-8064F030 000164 0040+00 0/1 0/0 0/0 .data
 * cc_zant_camera_src__24@unnamed@d_a_b_zant_cpp@               */
dCcD_SrcSph cc_zant_camera_src = {
    {
        {0x0, {{0x400, 0x2, 0x1E}, {0xD8BBFDFF, 0x0}, 0x5}}, // mObj
        {dCcD_SE_METAL, 0x0, 0xD, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8064F030-8064F038 0001A4 0007+01 4/4 0/0 0/0 .data warp_next_room__24@unnamed@d_a_b_zant_cpp@
 */
static s8 warp_next_room[] = {
    50,
    53,
    54,
    55,
    56,
    57,
    60,
};
}

/* 8063E10C-8063E19C 0000EC 0090+00 1/1 0/0 0/0 .text            __ct__14daB_ZANT_HIO_cFv */
daB_ZANT_HIO_c::daB_ZANT_HIO_c() {
    field_0x4 = -1;
    mModelSize = 1.0f;
    mMahojinWaitTime = 10.0f;
    mBulletNum = 15.0f;
    mAttackAnmSpeed = 1.7f;
    mBulletSpeed = 100.0f;
    mBulletSpeedUnderwater = 40.0f;
    mDemoWarpTime = 22.0f;
    mPlayWarpTime = 0.0f;
    mSwordAttackSize = 1.2f;
    mMahojinSize = 0.5f;
    mMahojinOffsetX = 0.0f;
    mMahojinOffsetY = 200.0f;
    mMahojinOffsetZ = -100.0f;
    mAppearAnmSpeed = 2.0f;
    mDisappearAnmSpeed = 0.5f;
}

/* 8063E19C-8063E264 00017C 00C8+00 1/1 0/0 0/0 .text ctrlJoint__10daB_ZANT_cFP8J3DJointP8J3DModel
 */
int daB_ZANT_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    u16 jnt_no = i_joint->getJntNo();

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 1:
        mDoMtx_stack_c::ZrotM(field_0x722);
        break;
    case 2:
        mDoMtx_stack_c::ZXYrotM(field_0x720, 0, field_0x71e);
        break;
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 8063E264-8063E2B0 000244 004C+00 1/1 0/0 0/0 .text JointCallBack__10daB_ZANT_cFP8J3DJointi */
int daB_ZANT_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daB_ZANT_c* actor = (daB_ZANT_c*)model->getUserArea();

        if (actor != NULL) {
            actor->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

namespace {
/* 8064EB5C-8064EB74 000040 0018+00 1/4 0/0 0/0 .rodata iron_tg_cc__24@unnamed@d_a_b_zant_cpp@ */
static int const iron_tg_cc[] = {
    0,
    1,
    2,
    4,
    5,
    6,
};
}

/* 8063E2B0-8063E568 000290 02B8+00 1/1 0/0 0/0 .text            draw__10daB_ZANT_cFv */
int daB_ZANT_c::draw() {
    J3DModel* model = mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    mpModelMorf->entryDL();
    daMirror_c::entry(model);

    cXyz sp38;
    sp38.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);

    f32 var_f31;
    if (mFightPhase == 5) {
        var_f31 = 2000.0f - current.pos.y;
        if (var_f31 < 0.0f) {
            var_f31 = 0.0f;
        }

        tevStr.field_0x344 = (var_f31 * 3.0f) / 2000.0f;
        if (tevStr.field_0x344 >= 1.0f) {
            tevStr.field_0x344 = 1.0f;
        }

        mShadowKey = dComIfGd_setShadow(mShadowKey, 0, model, &sp38, 1500.0f, 0.0f, current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    } else {
        mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &sp38, 800.0f, 0.0f, current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    if (field_0x710 != 0) {
        g_env_light.setLightTevColorType_MAJI(mpSwordLModel, &tevStr);
        mDoExt_modelUpdateDL(mpSwordLModel);
        dComIfGd_addRealShadow(mShadowKey, mpSwordLModel);

        g_env_light.setLightTevColorType_MAJI(mpSwordRModel, &tevStr);
        mDoExt_modelUpdateDL(mpSwordRModel);
        dComIfGd_addRealShadow(mShadowKey, mpSwordRModel);
    }

    if (field_0x5e8 != 0) {
        g_env_light.setLightTevColorType_MAJI(mpMahojinModel, &tevStr);
        mpMahojinBrk->entry(mpMahojinModel->getModelData());
        mpMahojinBtk->entry(mpMahojinModel->getModelData());
        mpMahojinStartBtk->entry(mpMahojinModel->getModelData());
        
        mDoExt_modelUpdateDL(mpMahojinModel);

        if (field_0x5e9) {
            g_env_light.setLightTevColorType_MAJI(mpMahojinModel2, &tevStr);
            mpMahojinBrk2->entry(mpMahojinModel2->getModelData());
            mpMahojinStartBtk2->entry(mpMahojinModel2->getModelData());
            
            mDoExt_modelUpdateDL(mpMahojinModel2);
        }
    }

    return 1;
}

/* 8063E5A4-8063E5C4 000584 0020+00 1/0 0/0 0/0 .text            daB_ZANT_Draw__FP10daB_ZANT_c */
static int daB_ZANT_Draw(daB_ZANT_c* i_this) {
    return i_this->draw();
}

/* 8063E5C4-8063E668 0005A4 00A4+00 23/23 0/0 0/0 .text            setBck__10daB_ZANT_cFiUcff */
void daB_ZANT_c::setBck(int i_resID, u8 i_attr, f32 i_morf, f32 i_speed) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_zan", i_resID), i_attr, i_morf, i_speed, 0.0f, -1.0f);
}

/* 8063E668-8063E6C4 000648 005C+00 3/3 0/0 0/0 .text            checkBck__10daB_ZANT_cFi */
bool daB_ZANT_c::checkBck(int i_resID) {
    return mpModelMorf->getAnm() == (J3DAnmTransform*)dComIfG_getObjectRes("B_zan", i_resID) ? TRUE : FALSE;
}

/* 8063E6C4-8063E6F8 0006A4 0034+00 24/24 0/0 0/0 .text            setActionMode__10daB_ZANT_cFii */
void daB_ZANT_c::setActionMode(int i_action, int i_mode) {
    field_0x6d0 = 1.0f;
    field_0x701 = 0;
    field_0x702 = 1;
    field_0x717 = 0;

    mLastAction = mAction;
    mAction = i_action;
    mMode = i_mode;
}

/* 8063E6F8-8063E79C 0006D8 00A4+00 2/2 0/0 0/0 .text            checkBigDamage__10daB_ZANT_cFv */
bool daB_ZANT_c::checkBigDamage() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    BOOL var_r31 = false;

    if (mAtInfo.mpCollider->ChkAtType(0x2) && daPy_py_c::checkMasterSwordEquip()) {
        if (mAtInfo.mpCollider->GetAtAtp() >= 4) {
            var_r31 = true;
        } else if (player->getSwordAtUpTime() != 0) {
            var_r31 = true;
        } else if (player->getCutCount() >= 4) {
            var_r31 = true;
        }
    }

    return var_r31;
}

/* 8063E79C-8063E810 00077C 0074+00 2/2 0/0 0/0 .text            checkDamageType__10daB_ZANT_cFv */
int daB_ZANT_c::checkDamageType() {
    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) && mFightPhase == 3) {
        return 4;
    }

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) ||
        mAtInfo.mpCollider->ChkAtType(AT_TYPE_SPINNER) ||
        mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW) ||
        mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK))
    {
        return 3;
    }

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_40)) {
        return 2;
    }

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_MASTER_SWORD)) {
        return 0;
    }

    return 1;
}

/* 8063E810-8063E938 0007F0 0128+00 2/2 0/0 0/0 .text setDamageSe__10daB_ZANT_cFP8dCcD_Sphi */
void daB_ZANT_c::setDamageSe(dCcD_Sph* param_0, int param_1) {
    health -= param_1;
    if (health < 0) {
        health = 0;
    }

    BOOL var_r29;
    u8 var_r28 = ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSe();

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) && !fopAcM_checkStatus(this, 0x280000)) {
        var_r29 = 1;
    } else {
        var_r29 = 0;
    }

    u32 var_r30 = 30;
    if (mAtInfo.mHitStatus == 1) {
        var_r30 = 31;
    } else if (mAtInfo.mHitStatus == 2) {
        var_r30 = 32;
    }

    mSound.startCollisionSE(param_0->getHitSeID(var_r28, var_r29), var_r30);

    if (mAtInfo.mHitStatus == 0) {
        dComIfGp_setHitMark(1, this, param_0->GetTgHitPosP(), NULL, NULL, 0);
    } else {
        dComIfGp_setHitMark(3, this, param_0->GetTgHitPosP(), NULL, NULL, 0);
    }
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

/* 8064F5F4-8064F5F8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8064F5F4 0001+00 data_8064F5F4 @1009 */
/* 8064F5F5 0003+00 data_8064F5F5 None */
static u8 data_8064F5F4;
static u8 data_8064F5F5;

/* 8064F604-8064F648 000054 0044+00 12/13 0/0 0/0 .bss             l_HIO */
static daB_ZANT_HIO_c l_HIO;

namespace {
/* 8064F66C-8064F690 0000BC 0024+00 4/5 0/0 0/0 .bss fly_warp_pos__24@unnamed@d_a_b_zant_cpp@ */
static cXyz fly_warp_pos[] = {
    cXyz(0.0f, 400.0f, 1000.0f),
    cXyz(1000.0f, 400.0f, 1500.0f),
    cXyz(-1000.0f, 400.0f, 1500.0f),
};
}

/* 8063E938-8063F0F4 000918 07BC+00 1/1 0/0 0/0 .text            damage_check__10daB_ZANT_cFv */
void daB_ZANT_c::damage_check() {
    field_0x9a4.Move();

    if (mAction != ACT_ROOM_CHANGE) {
        mAtInfo.mpSound = NULL;
        
        if (field_0x702 != 0) {
            field_0x9e0[0].OnTgNoHitMark();
            field_0x9e0[1].OnTgNoHitMark();

            if (field_0x9e0[0].ChkTgShield()) {
                mAtInfo.mpSound = &mSound;
            }
        }

        mAtInfo.mpCollider = NULL;

        dCcD_Sph sp168;
        if (field_0x9e0[0].ChkTgHit()) {
            mAtInfo.mpCollider = field_0x9e0[0].GetTgHitObj();
            sp168 = field_0x9e0[0];
        } else if (field_0x9e0[1].ChkTgHit()) {
            mAtInfo.mpCollider = field_0x9e0[1].GetTgHitObj();
            sp168 = field_0x9e0[1];
        }

        if (mAtInfo.mpCollider != NULL) {
            daPy_py_c* player = daPy_getPlayerActorClass();

            if (sp168.ChkTgShield()) {
                mAtInfo.field_0x18 = 42;
                mAtInfo.mpCollider->SetAtAtp(0);
            } else {
                mAtInfo.field_0x18 = 0;
            }

            s16 var_r27 = health;
            int var_r29 = 0;

            if (field_0x702 != 0) {
                health = 280;
                cc_at_check(this, &mAtInfo);
            } else {
                cc_at_check(this, &mAtInfo);
                var_r29 = var_r27 - health;
            }

            health = var_r27;

            if (!mAtInfo.mpCollider->ChkAtType(AT_TYPE_MASTER_SWORD)) {
                dScnPly_c::setPauseTimer(0);
            }

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK | AT_TYPE_WOLF_CUT_TURN | AT_TYPE_10000000 | AT_TYPE_MIDNA_LOCK)) {
                field_0x6e4 = 20;
            } else {
                field_0x6e4 = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                field_0x6e4 = 10;
            }

            mTakenBigDmg = checkBigDamage();

            switch (mFightPhase) {
            case 1:
                if (field_0x70c == 0) {
                    setActionMode(ACT_FLY, 10);
                } else {
                    switch (checkDamageType()) {
                    case 0:
                        setDamageSe(&sp168, var_r29);

                        if (mAction != ACT_DAMAGE) {
                            field_0x6f4 = 100;
                        }

                        setActionMode(ACT_DAMAGE, pl_cut_LRC(player->getCutType()));
                        break;
                    case 1:
                        field_0x70c = 0;
                        gravity = 0.0f;

                        mFlyWarpPosID = (f32)mFlyWarpPosID + cM_rndF(1.9f) + 1.0f;
                        mFlyWarpPos = fly_warp_pos[mFlyWarpPosID % 3];
                        field_0x711 = 2;

                        setActionMode(ACT_WARP, 1);
                        break;
                    case 2:
                        setActionMode(ACT_CONFUSE, 5);
                        break;
                    case 3:
                        setActionMode(ACT_CONFUSE, 0);
                        break;
                    }
                }
                break;
            case 2:
                switch (checkDamageType()) {
                case 0:
                    setDamageSe(&sp168, var_r29);

                    if (mAction != ACT_DAMAGE) {
                        field_0x6f4 = 100;
                    }

                    setActionMode(ACT_DAMAGE, pl_cut_LRC(player->getCutType()));
                    break;
                case 1:
                    setActionMode(ACT_SIMA_JUMP, 11);
                    break;
                case 2:
                    setActionMode(ACT_CONFUSE, 5);
                    break;
                case 3:
                    setActionMode(ACT_CONFUSE, 0);
                    break;
                }
                break;
            case 3:
                switch (checkDamageType()) {
                case 0:
                    setDamageSe(&sp168, var_r29);

                    if (mAction != ACT_DAMAGE) {
                        field_0x6f4 = 100;
                    }

                    setActionMode(ACT_DAMAGE, pl_cut_LRC(player->getCutType()));
                    break;
                case 4:
                    setActionMode(ACT_HOOK, 0);
                    break;
                }
                break;
            case 4:
                if (field_0x707 != 0) {
                    if (mAction != ACT_MONKEY_FALL) {
                        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_40)) {
                            setActionMode(ACT_MONKEY_FALL, 20);
                        } else {
                            setActionMode(ACT_CONFUSE, 0);
                        }
                    } else {
                        setActionMode(ACT_MONKEY_FALL, 10);
                    }
                } else {
                    switch (checkDamageType()) {
                    case 0:
                        setDamageSe(&sp168, var_r29);
                        setActionMode(ACT_MONKEY_DAMAGE, 0);
                        break;
                    case 1:
                        setNearPillarPos();
                        field_0x711 = 0;
                        setActionMode(ACT_WARP, 1);
                        break;
                    case 2:
                    case 3:
                        field_0x6f0 = 0;
                        setActionMode(ACT_MONKEY_DAMAGE, 0);
                        break;
                    }
                }
                break;
            case 6:
                if (!sp168.ChkTgShield()) {
                    switch (checkDamageType()) {
                    case 0:
                        setDamageSe(&sp168, var_r29);

                        if (mAction == ACT_LAST_ATTACK && mMode == 13) {
                            mAction = ACT_LAST_TIRED;
                        }

                        setActionMode(ACT_LAST_DAMAGE, pl_cut_LRC(player->getCutType()));
                        break;
                    case 1:
                        mSwordCc[0].OffAtSetBit();
                        mSwordCc[1].OffAtSetBit();
                        setTgHitBit(0);
                        setLastWarp(1, 0);
                        break;
                    case 2:
                        setActionMode(ACT_LAST_DAMAGE, 20);
                        break;
                    case 3:
                        setActionMode(ACT_LAST_DAMAGE, 10);
                        break;
                    case 4:
                        break;
                    }
                }
                break;
            }

            field_0x9e0[0].ClrTgHit();
            field_0x9e0[1].ClrTgHit();
            return;
        }
    }
}

/* 8063F524-8063F84C 001504 0328+00 1/1 0/0 0/0 .text            ice_damage_check__10daB_ZANT_cFv */
void daB_ZANT_c::ice_damage_check() {
    field_0xc74.Move();

    if (field_0x6e4 == 0) {
        s16 prev_hp = health;
        mAtInfo.mpCollider = NULL;

        for (int i = 0; i < 6; i++) {
            int tg_idx = iron_tg_cc[i];

            if (mFootCc[tg_idx].ChkTgHit()) {
                field_0x6e4 = 10;
                mAtInfo.mpCollider = mFootCc[tg_idx].GetTgHitObj();

                if (!mFootCc[tg_idx].ChkTgShield()) {
                    if (mAction == ACT_ICE_STEP || mAction == ACT_ICE_JUMP) {
                        setDamageSe(&mFootCc[tg_idx], 0);

                        if (i < 2) {
                            setActionMode(ACT_ICE_DAMAGE, 0);
                        } else {
                            setActionMode(ACT_ICE_DAMAGE, 1);
                        }
                    } else if (mAction == ACT_ICE_DAMAGE) {
                        setActionMode(ACT_ICE_DAMAGE, 30);
                        field_0x6e8 = 0;
                    }
                }

                for (int j = 0; j < 6; j++) {
                    mFootCc[iron_tg_cc[j]].ClrTgHit();
                }

                return;
            }
        }

        for (int i = 0; i < 11; i++) {
            if (mFoot2Cc[i].ChkTgHit()) {
                if (field_0x6e4 == 0) {
                    mAtInfo.mpCollider = mFoot2Cc[i].GetTgHitObj();

                    if (mFoot2Cc[i].ChkTgShield()) {
                        mAtInfo.field_0x18 = 42;
                        mAtInfo.mpCollider->SetAtAtp(0);
                    } else {
                        mAtInfo.field_0x18 = 0;
                    }

                    cc_at_check(this, &mAtInfo);

                    int var_r24 = prev_hp - health;
                    health = prev_hp;

                    if (!mAtInfo.mpCollider->ChkAtType(AT_TYPE_MASTER_SWORD)) {
                        dScnPly_c::setPauseTimer(0);
                    }

                    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK | AT_TYPE_WOLF_CUT_TURN | AT_TYPE_10000000 | AT_TYPE_MIDNA_LOCK)) {
                        field_0x6e4 = 20;
                    } else {
                        field_0x6e4 = 10;
                    }

                    if (mAtInfo.mAttackPower <= 1) {
                        field_0x6e4 = 10;
                    }

                    mTakenBigDmg = checkBigDamage();

                    if (mAction == ACT_ICE_DAMAGE && mAtInfo.field_0x18 != 42) {
                        switch (checkDamageType()) {
                        case 2:
                            setActionMode(ACT_ICE_DAMAGE, 40);
                            field_0x6e8 = 0;
                            break;
                        case 3:
                            setActionMode(ACT_ICE_DAMAGE, 20);
                            field_0x6e8 = 0;
                            break;
                        case 1:
                            setActionMode(ACT_ICE_DAMAGE, 30);
                            field_0x6e8 = 0;
                            break;
                        case 0:
                            setDamageSe(&mFoot2Cc[i], var_r24);
                            setActionMode(ACT_ICE_DAMAGE, 10);
                            break;
                        }
                    }
                }

                mFoot2Cc[i].ClrTgHit();
            }
        }
    }
}

/* 8063F84C-8063F970 00182C 0124+00 3/3 0/0 0/0 .text            setNextDamageMode__10daB_ZANT_cFi
 */
bool daB_ZANT_c::setNextDamageMode(int param_0) {
    if (param_0) {
        if (mFightCycle == 0 && health < 140) {
            mFightCycle++;
            setBaseActionMode(2);
            return 1;
        }
    } else if (mFightCycle == 0) {
        if (mTakenBigDmg) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
            mFightCycle++;
            setBaseActionMode(2);
            return 1;
        }
    } else if (health <= 0 || mTakenBigDmg) {
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        mFightCycle = 0;
        setActionMode(ACT_ROOM_CHANGE, 0);
        return 1;
    }

    return 0;
}

/* 8063F970-8063FAB4 001950 0144+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && !fopAcM_checkCarryNow((fopAc_ac_c*)i_actor)) {
            f32 obj_dist = fopAcM_searchActorDistanceXZ((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
            if (obj_dist < 300.0f && fopAcM_GetSpeed((fopAc_ac_c*)i_actor).y) {
                if (fopAcM_GetName(i_actor) == PROC_Obj_Carry) {
                    return i_actor;
                }

                if (fopAcM_GetName(i_actor) == PROC_NBOMB) {
                    return i_actor;
                }
            }

            if (obj_dist < 300.0f && fopAcM_GetName(i_actor) == PROC_NBOMB && ((daNbomb_c*)i_actor)->getExTime() < 10) {
                return i_actor;
            }

            if (obj_dist < 700.0f && fopAcM_GetName(i_actor) == PROC_ARROW && fopAcM_GetSpeedF((fopAc_ac_c*)i_actor)) {
                s16 var_r28 = ((fopAc_ac_c*)i_actor)->current.angle.y;
                s16 var_r27 = fopAcM_searchActorAngleY((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
                if (abs((s16)(var_r28 - var_r27)) < 0x2000) {
                    return i_actor;
                }
            }
        }
    }

    return NULL;
}

/* 8063FAB4-8063FF6C 001A94 04B8+00 3/3 0/0 0/0 .text            checkAvoidWeapon__10daB_ZANT_cFi */
bool daB_ZANT_c::checkAvoidWeapon(int param_0) {
    if (param_0 == 2) {
        return FALSE;
    }

    daPy_py_c* player = daPy_getPlayerActorClass();

    // avoid bomb, arrow, carry obj
    fopAc_ac_c* obj = (fopAc_ac_c*)fpcM_Search(s_obj_sub, this);
    if (obj != NULL) {
        return TRUE;
    }

    // avoid clawshot
    if (dComIfGp_checkPlayerStatus0(0, 0x4000)) {
        cXyz* ppos = player->getHookshotTopPos();
        if (ppos != NULL && ppos->absXZ(current.pos) < 300.0f) {
            return TRUE;
        }
    }

    // avoid ball and chain
    cXyz* var_r30 = player->getIronBallCenterPos();
    if (var_r30 != NULL) {
        daAlink_c* player_alink = daAlink_getAlinkActorClass();
        if ((player_alink->checkIronBallThrowMode() || player_alink->checkIronBallThrowReturnMode()) && !player->checkIronBallGroundStop()) {
            if (var_r30->absXZ(current.pos) < 300.0f) {
                return TRUE;
            }
        }
    }

    // avoid boomerang
    if (param_0 == 0 && player->getThrowBoomerangActor() != NULL) {
        fopAc_ac_c* pboomerang = (fopAc_ac_c*)player->getThrowBoomerangActor();
        if (pboomerang->current.pos.absXZ(current.pos) < 300.0f) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 8063FF6C-8063FFAC 001F4C 0040+00 18/18 0/0 0/0 .text            setTgHitBit__10daB_ZANT_cFi */
void daB_ZANT_c::setTgHitBit(BOOL i_onBit) {
    if (i_onBit) {
        field_0x9e0[0].OnTgSetBit();
        field_0x9e0[1].OnTgSetBit();
    } else {
        field_0x9e0[0].OffTgSetBit();
        field_0x9e0[1].OffTgSetBit();
    }
}

/* 8063FFAC-8063FFEC 001F8C 0040+00 2/2 0/0 0/0 .text            setCoHitBit__10daB_ZANT_cFi */
void daB_ZANT_c::setCoHitBit(BOOL i_onBit) {
    if (i_onBit) {
        field_0x9e0[0].OnCoSetBit();
        field_0x9e0[1].OnCoSetBit();
    } else {
        field_0x9e0[0].OffCoSetBit();
        field_0x9e0[1].OffCoSetBit();
    }
}

/* 8063FFEC-806400BC 001FCC 00D0+00 2/2 0/0 0/0 .text            setTgShield__10daB_ZANT_cFi */
void daB_ZANT_c::setTgShield(BOOL i_onShield) {
    if (i_onShield) {
        field_0x9e0[0].OnTgShield();
        field_0x9e0[0].OnTgSpinnerReflect();
        field_0x9e0[0].OnTgIronBallRebound();

        field_0x9e0[1].OnTgShield();
        field_0x9e0[1].OnTgSpinnerReflect();
        field_0x9e0[1].OnTgIronBallRebound();

        field_0x9e0[0].OffTgNoHitMark();
        field_0x9e0[1].OffTgNoHitMark();

        field_0x9e0[0].SetTgHitMark(CcG_Tg_UNK_MARK_2);
        field_0x9e0[1].SetTgHitMark(CcG_Tg_UNK_MARK_2);
    } else {
        field_0x9e0[0].OffTgShield();
        field_0x9e0[0].OffTgSpinnerReflect();
        field_0x9e0[0].OffTgIronBallRebound();

        field_0x9e0[1].OffTgShield();
        field_0x9e0[1].OffTgSpinnerReflect();
        field_0x9e0[1].OffTgIronBallRebound();

        field_0x9e0[0].SetTgHitMark(CcG_Tg_UNK_MARK_0);
        field_0x9e0[1].SetTgHitMark(CcG_Tg_UNK_MARK_0);
    }
}

/* 806400BC-806400C8 00209C 000C+00 3/3 0/0 0/0 .text            setTgType__10daB_ZANT_cFUl */
void daB_ZANT_c::setTgType(u32 i_type) {
    field_0x9e0[0].SetTgType(i_type);
    field_0x9e0[1].SetTgType(i_type);
}

/* 806400C8-80640104 0020A8 003C+00 1/1 0/0 0/0 .text            setZantMessage__10daB_ZANT_cFi */
void daB_ZANT_c::setZantMessage(int i_msgNo) {
    mMsgNo = i_msgNo;
    mMsgID = fopMsgM_messageSet(i_msgNo, 1000);
}

/* 80640104-80640180 0020E4 007C+00 1/1 0/0 0/0 .text            doZantMessage__10daB_ZANT_cFv */
int daB_ZANT_c::doZantMessage() {
    if (mpMsg != NULL) {
        if (mpMsg->mMode == 14) {
            mpMsg->mMode = 16;
        } else if (mpMsg->mMode == 18) {
            mpMsg->mMode = 19;
            mMsgID = fpcM_ERROR_PROCESS_ID_e;
            return 1;
        }
    } else {
        mpMsg = fopMsgM_SearchByID(mMsgID);
    }

    return 0;
}

/* 80640180-80640310 002160 0190+00 2/2 0/0 0/0 .text            setIceLandingEffect__10daB_ZANT_cFi
 */
void daB_ZANT_c::setIceLandingEffect(int param_0) {
    static u16 l_landing_effect_id[] = {
        0x86DC, 0x86DD, 0x86DE, 0x86DF, 0x86E0, 0x86E1,
    };

    cXyz sp28;
    if (!param_0) {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x23));
    } else {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x26));
    }

    mDoMtx_stack_c::transM(10.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&sp28);
    sp28.y = 2.0f;

    cXyz sp34(1.0f, 1.0f, 1.0f);
    for (int i = 0; i < 6; i++) {
        dComIfGp_particle_set(l_landing_effect_id[i], &sp28, &tevStr, &shape_angle, &sp34);
    }

    sp28.set(0.0f, 0.0f, 0.0f);
    dComIfGp_particle_set(0x86E2, &sp28, &tevStr, &shape_angle, NULL);
}

/* 80640310-806403D4 0022F0 00C4+00 1/1 0/0 0/0 .text            setWaterBubble__10daB_ZANT_cFv */
void daB_ZANT_c::setWaterBubble() {
    cXyz sp18;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(11));
    mDoMtx_stack_c::multVecZero(&sp18);

    field_0x389c[0] = dComIfGp_particle_set(field_0x389c[0], 0x1E8, &sp18, &tevStr);
}

/* 806403D4-80640478 0023B4 00A4+00 1/1 0/0 0/0 .text            setMonkeyFallEffect__10daB_ZANT_cFv
 */
void daB_ZANT_c::setMonkeyFallEffect() {
    static u16 l_landing_effect_id[] = {0x8901, 0x8902, 0x8903};

    for (int i = 0; i < 3; i++) {
        dComIfGp_particle_set(l_landing_effect_id[i], &current.pos, &tevStr, &shape_angle, NULL);
    }
}

/* 80640478-80640584 002458 010C+00 1/1 0/0 0/0 .text            setLastRollEffect__10daB_ZANT_cFv
 */
void daB_ZANT_c::setLastRollEffect() {
    static u16 l_roll_effect_id[] = {0x8904, 0x8905};

    mSound.startCreatureSoundLevel(Z2SE_EN_ZAN_CTL_SPIN_ATK, 0, -1);

    for (int i = 0; i < 2; i++) {
        field_0x38ac[i] = dComIfGp_particle_set(field_0x38ac[i], l_roll_effect_id[i], &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    }

    fopAcM_effSmokeSet2(&field_0x3894, &field_0x3898, &current.pos, NULL, 2.0f, &tevStr);
}

/* 8064F690-8064F694 0000E0 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static int target_info_count;

/* 80640584-80640654 002564 00D0+00 1/1 0/0 0/0 .text            s_pillar_sub__FPvPv */
static void* s_pillar_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_Obj_Pillar) {
            if (((daPillar_c*)i_actor)->getMdlType() != 0) {
                ((daB_ZANT_c*)i_data)->field_0x73c[8] = fopAcM_GetID(i_actor);
            } else {
                ((daB_ZANT_c*)i_data)->field_0x73c[target_info_count] = fopAcM_GetID(i_actor);
                target_info_count++;
            }
        }
    }

    return NULL;
}

/* 80640654-80640664 002634 0010+00 0/0 0/0 1/1 .text            getMagicSpeed__10daB_ZANT_cFv */
f32 daB_ZANT_c::getMagicSpeed() {
    return l_HIO.mBulletSpeed;
}

/* 80640664-80640674 002644 0010+00 0/0 0/0 1/1 .text            getMagicWaterSpeed__10daB_ZANT_cFv
 */
f32 daB_ZANT_c::getMagicWaterSpeed() {
    return l_HIO.mBulletSpeedUnderwater;
}

/* 80640674-80640C20 002654 05AC+00 1/1 0/0 0/0 .text            executeSmallAttack__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeSmallAttack() {
    cXyz sp44;
    s16 var_r28 = fopAcM_searchPlayerAngleX(this);

    if (mFightPhase == 3) {
        fopAc_ac_c* sp48;
        fopAcM_SearchByID(mMobileIDs[field_0x728], &sp48);

        if (sp48 != NULL) {
            s16 var_r26 = sp48->shape_angle.y - var_r28;
            if (abs(var_r26) > 0x1400) {
                if (var_r26 < 0) {
                    var_r28 = sp48->shape_angle.y + 0x1000;
                } else {
                    var_r28 = sp48->shape_angle.y - 0x1000;
                }
            }
        }
    }

    switch (mMode) {
    case 0:
        setTgHitBit(TRUE);
        attention_info.flags = 4;
        mMode = 2;
        field_0x6fd = 0;

        if (field_0x711 != 0) {
            setBck(0x24, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        } else {
            setBck(0x25, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        }

        field_0x717 = 1;
        break;
    case 2:
        if (field_0x711 != 0) {
            if (mpModelMorf->checkFrame(15.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_V_ATK_BALL, -1);
            }
        } else {
            if (mpModelMorf->checkFrame(16.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_V_ATK_BALL, -1);
            }
        }

        cLib_addCalcAngleS(&shape_angle.y, var_r28, 8, 0x400, 0x80);
        if (mpModelMorf->isStop()) {
            f32 var_f31 = l_HIO.mAttackAnmSpeed;
            if (mFightPhase == 3) {
                var_f31 = 1.0f;
            }

            if (field_0x711 != 0) {
                setBck(0x28, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, var_f31);
            } else {
                setBck(0x26, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, var_f31);
            }
    
            mMode = 3;
            field_0x6fd = 0;
        }
        break;
    case 3:
        cLib_addCalcAngleS(&shape_angle.y, var_r28, 8, 0x400, 0x80);

        if (mpModelMorf->checkFrame(3.0f) || mpModelMorf->checkFrame(13.0f)) {
            if (mpModelMorf->checkFrame(13.0f)) {
                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x10));
            } else {
                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1A));
            }

            mDoMtx_stack_c::multVecZero(&sp44);

            u32 var_r27 = field_0x6fd + 1;
            if (field_0x703 < 10) {
                var_r27 += 2;
            }

            if (var_r27 > 6) {
                var_r27 = 6;
            }

            fopAcM_createChild(PROC_B_ZANTM, fopAcM_GetID(this), var_r27, &sp44, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);
            dComIfGp_particle_set(0x886B, &sp44, &shape_angle, NULL);

            field_0x6fd++;
            field_0x704++;
        } else if ((mpModelMorf->checkFrame(9.0f) || mpModelMorf->checkFrame(19.0f)) && field_0x6fd >= field_0x703) {
            mMode = 4;

            if (field_0x711 != 0) {
                setBck(0x29, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            } else {
                setBck(0x27, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            }

            field_0x717 = 0;
        }
        break;
    case 4:
        if (mpModelMorf->isStop()) {
            attention_info.flags = 4;
            
            if (mFightPhase == 1) {
                field_0x711 = 1;
                setActionMode(ACT_WARP, 1);
            } else if (mFightPhase == 2) {
                setActionMode(ACT_SIMA_JUMP, 0);
            } else if (mFightPhase == 3) {
                setActionMode(ACT_WATER, 0);
            } else if (mFightPhase == 4) {
                setActionMode(ACT_MONKEY, 0);
            }
        }
        break;
    }

    if (mFightPhase == 1 && checkAvoidWeapon(1)) {
        field_0x711 = 1;
        setActionMode(ACT_WARP, 1);
    }
}

/* 80640C20-80640D14 002C00 00F4+00 3/3 0/0 0/0 .text            calcScale__10daB_ZANT_cFi */
bool daB_ZANT_c::calcScale(int param_0) {
    if (!param_0) {
        cLib_addCalc(&field_0x6c0, 0.0f, 0.5f, 0.25f, 0.1f);
        cLib_addCalc(&field_0x6c4, 1.2f, 0.5f, 0.1f, 0.1f);

        if (!field_0x6c0) {
            field_0x6c4 = 0.0f;
            field_0x6c0 = 0.0f;
            return true;
        }
    } else {
        cLib_addCalc(&field_0x6c4, 1.0f, 0.5f, 0.2f, 0.1f);

        if (field_0x6c4 > 0.5f) {
            cLib_addCalc(&field_0x6c0, 1.0f, 0.5f, 0.2f, 0.1f);
        }

        if (field_0x6c4 == 1.0f && field_0x6c0 == 1.0f) {
            return true;
        }
    }

    return false;
}

/* 80640D14-80641230 002CF4 051C+00 1/1 0/0 0/0 .text            executeWarp__10daB_ZANT_cFv */
void daB_ZANT_c::executeWarp() {
    switch (mMode) {
    case 0:
    case 1:
        attention_info.flags = 0;
        setTgHitBit(FALSE);
        setCoHitBit(FALSE);

        if (mFightPhase != 4 && mFightPhase != 5 && mFightPhase != 6) {
            if (field_0x711 & 1) {
                setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            } else {
                setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            }
        }

        mMode += 2;

        speed.y = 0.0f;
        speedF = 0.0f;

        dComIfGp_particle_set(0x88FF, &current.pos, &shape_angle, NULL);
        dComIfGp_particle_set(0x8900, &current.pos, &shape_angle, NULL);
        mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_OUT, 0, -1);
    case 2:
    case 3:
        if (calcScale(0)) {
            mMode += 2;

            switch (mFightPhase) {
            case 1:
                if (field_0x70b == 0) {
                    field_0x70b = 1;
                    field_0x6e8 = 120;
                } else if (mFightCycle == 0) {
                    field_0x6e8 = 40;
                } else {
                    field_0x6e8 = 15;
                }
                break;
            case 2:
                field_0x6e8 = 15;
                break;
            case 3:
                field_0x6e8 = 60;
                break;
            case 4:
                if (mLastAction == ACT_MONKEY) {
                    field_0x6e8 = 15;
                } else {
                    field_0x6e8 = 60;
                }
                break;
            case 5:
                field_0x6e8 = 60;
                break;
            case 6:
                if (mFlyWarpPosID != 0) {
                    field_0x6e8 = 60;
                } else {
                    field_0x6e8 = 15;
                }
                break;
            }

            field_0x6e8 += (int)l_HIO.mPlayWarpTime;
        }
        break;
    case 4:
    case 5:
        if (field_0x6e8 == 0) {
            if (mMode == 4) {
                dBgS_ObjGndChk gndchk;
                gndchk.SetPos(&mFlyWarpPos);

                f32 var_f31 = dComIfG_Bgsp().GroundCross(&gndchk);
                if (var_f31 != -1000000000.0f) {
                    mFlyWarpPos.y = var_f31;
                }

                shape_angle.y = field_0x6b8;
                shape_angle.x = 0;
                current.pos = mFlyWarpPos;
            } else {
                current.pos = mFlyWarpPos;
                shape_angle.x = 0;
                shape_angle.y = fopAcM_searchPlayerAngleY(this);
            }

            old.pos = current.pos;
            mMode = 6;

            if (field_0x711 & 2) {
                field_0x711 = (field_0x711 & 1) ^ 1;
            } else {
                field_0x711 &= 1;
            }

            if (field_0x711 != 0) {
                setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            } else {
                setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            }

            dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
            mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_IN, 0, -1);
        }
        break;
    case 6:
        if (calcScale(1)) {
            attention_info.flags = 4;
            setCoHitBit(TRUE);
            setBaseActionMode(0);
        }
        break;
    }
}

/* 806412A8-806414E4 003288 023C+00 1/1 0/0 0/0 .text            executeDamage__10daB_ZANT_cFv */
void daB_ZANT_c::executeDamage() {
    switch (mMode) {
    case 0:
    case 1:
    case 2:
        attention_info.flags = 4;

        if (setNextDamageMode(0)) {
            setTgHitBit(FALSE);
            return;
        } else if (mFightPhase == 3 && setNextDamageMode(1)) {
            setTgHitBit(FALSE);
            return;
        }

        field_0x702 = 0;
        speedF = 0.0f;
        setTgHitBit(TRUE);

        if (mMode == 0) {
            if (cM_rnd() < 0.5f) {
                mMode = 1;
            } else {
                mMode = 2;
            }
        }

        if (mFightPhase == 3) {
            if (mMode == 1) {
                setBck(0xF, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            } else {
                setBck(0x10, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            }

            speed.y = 0.0f;
            speedF = 0.0f;
        } else if (mMode == 1) {
            setBck(7, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        } else {
            setBck(8, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        }

        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        mMode = 5;
        field_0x6e8 = 40;
    case 5:
        if (field_0x6f4 == 0) {
            setTgHitBit(FALSE);
        }

        if (mpModelMorf->isStop() && !setNextDamageMode(1)) {
            setBaseActionMode(0);
        }
        break;
    }
}

/* 806414E4-80641640 0034C4 015C+00 1/1 0/0 0/0 .text            executeConfuse__10daB_ZANT_cFv */
void daB_ZANT_c::executeConfuse() {
    switch (mMode) {
    case 0:
        attention_info.flags = 4;
        speedF = 0.0f;
        speed.y = 0.0f;
        mMode = 1;

        setBck(20, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_NO_DMG, -1);
        field_0x702 = 0;
    case 1:
        if (mpModelMorf->isStop()) {
            setBaseActionMode(0);;
        }
        break;
    case 5:
        setBck(10, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        speedF = 0.0f;
        speed.y = 0.0f;
        field_0x702 = 0;
        field_0x6e8 = 20;
        mMode = 6;
    case 6:
        if (field_0x6e8 == 0) {
            setBaseActionMode(0);
        }
        break;
    }
}

/* 80641640-806427EC 003620 11AC+00 2/2 0/0 0/0 .text            executeOpening__10daB_ZANT_cFv */
void daB_ZANT_c::executeOpening() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();

    cXyz sp34(0.0f, 0.0f, 0.0f);
    cXyz sp40;
    cXyz sp4C;

    switch (mMode) {
    case 0:
        current.pos.set(0.0f, 0.0f, 160.0f);
        shape_angle.y = -0x8000;

        if (!eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 4);
            eventInfo.i_onCondition(2);
            return;
        }

        Z2GetAudioMgr()->setDemoName("force_start");
        fopAcM_OffStatus(this, 0x4000);
        
        sp34.set(0.0f, 0.0f, -700.0f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);

        setBck(0x2A, J3DFrameCtrl::LOOP_REPEAT_e, 0.0f, 1.0f);
        mMode = 1;
        field_0x6e8 = 30;

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        field_0x77c = 220.0f;
    case 1:
        sp4C.set(0.0f, 175.0f, 3.0f);
        sp40.set(0.0f, 270.0f, -194.0f);
        field_0x76c = sp4C;
        field_0x760 = sp40;
        field_0x778 = 30.0f;

        if (field_0x6e8 == 0) {
            mMode = 2;
            field_0x6e8 = 80;
        }
        break;
    case 2:
        sp4C.set(0.0f, 81.0f, -187.0f);
        sp40.set(0.0f, 67.0f, -408.0f);
        cLib_addCalcPos2(&field_0x76c, sp4C, 0.1f, 4.3f);
        cLib_addCalcPos2(&field_0x760, sp40, 0.1f, 6.0f);

        if (field_0x6e8 == 0) {
            mMode = 4;
            setBck(0x2B, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_ZAN_OP_V_WAKEUP, -1);
        }
        break;
    case 4:
        if (mpModelMorf->getFrame() > 5.0f) {
            sp4C.set(0.0f, 86.0f, -9.0f);
            sp40.set(0.0f, 10.0f, -209.0f);
            cLib_addCalcPos2(&field_0x76c, sp4C, 0.5f, 26.0f);
            cLib_addCalcPos2(&field_0x760, sp40, 0.5f, 30.0f);
        }

        if (mpModelMorf->isStop()) {
            mMode = 5;
            field_0x6e8 = 20;
            setBck(0x2C, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            setZantMessage(0xE3B);
        }
        break;
    case 5:
        if (doZantMessage() == true) {
            field_0x6e8 = 20;
            mMode = 6;
        }
        break;
    case 6:
        if (field_0x6e8 == 0) {
            mMode = 7;
            mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_OUT, 0, -1);
        }
        break;
    case 7:
        if (calcScale(0)) {
            current.pos.set(0.0f, 225.0f, -1700.0f);
            sp34.set(0.0f, 0.0f, -500.0f);
            player->setPlayerPosAndAngle(&sp34, 0, 0);
            player->changeOriginalDemo();
            player->changeDemoMode(1, 0, 0, 0);

            mMode = 100;
            field_0x76c.set(0.0f, 200.0f, -1700.0f);
            field_0x760.set(0.0f, 70.0f, -300.0f);
            field_0x778 = 68.0f;
            field_0x6e8 = 15;
        }
        break;
    case 100:
        if (field_0x6e8 == 0) {
            setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            player->changeDemoMode(0x48, 0, 0, 0);
            mMode = 101;
            field_0x6e8 = 105;
        }
        break;
    case 101:
        sp4C.set(32.0f, 290.0f, -1678.0f);
        sp40.set(100.0f, 70.0f, -300.0f);
        cLib_addCalcPos2(&field_0x76c, sp4C, 0.1f, 1.0f);
        cLib_addCalcPos2(&field_0x760, sp40, 0.1f, 1.0f);

        if (field_0x6e8 <= 30) {
            if (field_0x6e8 == 30) {
                current.angle.y = 0;
                shape_angle.y = 0;
                dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
                mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_IN, 0, -1);
            }
            calcScale(1);
        }

        if (field_0x6e8 == 0) {
            mMode = 102;
            field_0x6e8 = 30;
        }
        break;
    case 102:
        calcScale(1);
        sp4C.set(32.0f, 290.0f, -1678.0f);
        sp40.set(66.0f, 180.0f, -989.0f);
        cLib_addCalcPos2(&field_0x76c, sp4C, 0.5f, 60.0f);
        cLib_addCalcPos2(&field_0x760, sp40, 0.5f, 60.0f);

        if (field_0x6e8 == 0) {
            mMode = 103;
            setZantMessage(0xE3C);
        }
        break;
    case 103:
        if (doZantMessage() == true) {
            setBck(0x2D, J3DFrameCtrl::LOOP_REPEAT_e, 10.0f, 1.0f);
            mMode = 104;
            field_0x6e8 = 90;
            mSound.startCreatureSound(Z2SE_EN_ZAN_OP_FLY, 0, -1);
        }
        break;
    case 104:
        current.pos.y += 3.0f;
        field_0x76c.y += 2.0f;

        if (field_0x6e8 == 0) {
            mMode = 105;
        }
        break;
    case 105:
        if (field_0x6e8 == 0) {
            mDoMtx_stack_c::YrotM(-0x8000);
            mDoMtx_stack_c::transM(0.0f, 300.0f, 700.0f);
            mDoMtx_stack_c::multVecZero(&current.pos);
            current.pos.y += 100.0f;
            current.pos.z -= 800.0f;
            old.pos = current.pos;
            speedF = 0.0f;
            speed.y = 0.0f;
            gravity = 0.0f;
            shape_angle.y = fopAcM_searchPlayerAngleY(this);
            shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

            setBck(0x2D, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            
            sp34.x = -140.0f;
            sp34.y += 250.0f;
            sp34.z = -800.0f;
            player->setPlayerPosAndAngle(&sp34, 0x8000, 0);
            player->changeOriginalDemo();
            player->changeDemoPos0(&sp34);
            player->changeDemoMode(0x17, 1, 4, 0);
            field_0x778 = 58.0f;

            mDoMtx_stack_c::YrotM(-0x8000);
            mDoMtx_stack_c::transM(-85.0f, 344.0f, 382.0f);
            mDoMtx_stack_c::multVecZero(&field_0x760);
            field_0x760.y += 250.0f;
            field_0x760.z -= 800.0f;

            mDoMtx_stack_c::YrotM(-0x8000);
            mDoMtx_stack_c::transM(258.0f, 672.0f, 1374.0f);
            mDoMtx_stack_c::multVecZero(&field_0x76c);
            field_0x76c.y += 200.0f;
            field_0x76c.z -= 800.0f;

            Z2GetAudioMgr()->bgmStart(Z2BGM_BOSS_ZANT, 0, 0);
            field_0x77c = 0.0f;
            field_0x6fc = 1;
            mMode = 106;
            field_0x6e8 = 160;
        }
        break;
    case 106:
        if (field_0x6e8 == 100) {
            fopMsgM_messageSetDemo(0x486);
        }

        cLib_addCalc(&current.pos.y, 250.0f + 300.0f, 0.1f, 3.0f, 0.9f);
        cLib_addCalc(&field_0x76c.y, 250.0f + 672.0f, 0.1f, 1.0f, 0.3f);

        if (field_0x6e8 == 0) {
            mMode = 22;
            field_0x6e8 = 20;
        }
        break;
    case 20:
        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (field_0x6e8 == 0) {
            dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
            mMode = 21;
            mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_IN, 0, -1);
        }
        break;
    case 21:
        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (calcScale(1)) {
            mMode = 22;
            field_0x6e8 = 20;
        }
        break;
    case 22:
        if (field_0x6e8 == 0) {
            mMode = 23;
            field_0x6e8 = 50;
        }
        break;
    case 23:
        calcRoomChangeCamera(0);
        if (field_0x6e8 == 0) {
            mMode = 24;
            setBck(0xC, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_ZAN_MAHOJIN_BB, 0, -1);
            field_0x714 = 1;
            field_0x6c8 = 0.0f;
        }
        break;
    case 24:
        cLib_chaseF(&field_0x6c8, 1.0f, 0.006f);
        if (mpModelMorf->checkFrame(110.0f)) {
            field_0x5e8 = 1;
            field_0x715 = 30;
        }

        if (mpModelMorf->getFrame() > 110.0f) {
            cLib_chaseF(&field_0x6c8, 1.0f, 0.01f);
        }

        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (mpModelMorf->isStop()) {
            dComIfGp_getVibration().StopQuake(31);
            setBck(0xE, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            mMode = 25;
            field_0x6e8 = l_HIO.mMahojinWaitTime;

            cXyz sp58(0.0f, 0.0f, 0.0f);
            dComIfGs_setRestartRoom(sp58, 0, warp_next_room[1]);
            return;
        }
        break;
    case 25:
        mFightPhase++;
        if (mFightPhase >= 7) {
            mFightPhase = 0;
        }

        current.pos.set(-140.0f, 300.0f, 700.0f);
        
        sp34.set(0.0f, 0.0f, 0.0f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);
        player->changeDemoMode(0x17, 1, 4, 0);
        
        field_0x760.x += 140.0f;
        field_0x760.y -= 250.0f;
        field_0x760.z += 800.0f;

        mDoMtx_stack_c::YrotM(-0x8000);
        mDoMtx_stack_c::transM(field_0x760);
        mDoMtx_stack_c::multVecZero(&field_0x760);

        field_0x76c.x += 140.0f;
        field_0x76c.y -= 250.0f;
        field_0x76c.z += 800.0f;

        mDoMtx_stack_c::YrotM(-0x8000);
        mDoMtx_stack_c::transM(field_0x76c);
        mDoMtx_stack_c::multVecZero(&field_0x76c);

        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        initNextRoom();
        mMode = 26;
    case 26:
        if (field_0x6e8 == 0 && dComIfGp_roomControl_checkStatusFlag(warp_next_room[mFightPhase], 0x10)) {
            mMode = 27;
            field_0x714 = 0;
            field_0x6c8 = 0.0f;
            setBck(0x13, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 1.0f);
            field_0x5e8 = 4;
        }
        break;
    case 27:
        cLib_chaseF(&field_0x6c8, 1.0f, 0.02f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);

        if (mpModelMorf->isStop()) {
            camera->mCamera.Reset(field_0x76c, field_0x760);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            field_0x6fc = 0;
            setTgHitBit(TRUE);
            setBaseActionMode(1);
            Z2GetAudioMgr()->setDemoName("force_end");
            return;
        }
        break;
    }

    if (field_0x715 != 0) {
        calcRoomChangeCamera(1);
        field_0x715--;
    }

    camera->mCamera.Set(field_0x76c, field_0x760, field_0x778, 0);
}

/* 806427EC-80642EC8 0047CC 06DC+00 2/1 0/0 0/0 .text            executeFly__10daB_ZANT_cFv */
void daB_ZANT_c::executeFly() {
    dBgS_ObjGndChk_All gndchk;
    cXyz sp9C;

    switch (mMode) {
    case 0:
        setTgHitBit(TRUE);
        setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        field_0x6e8 = 0;
        mMode = 1;
        gravity = 0.0f;
        field_0x70c = 0;
        setTgType(0x10040);
    case 1:
        if (field_0x6e8 == 0) {
            if (mFightCycle == 0) {
                field_0x703 = l_HIO.mBulletNum;
            } else {
                field_0x703 = 8;
            }

            mFlyWarpPosID = (f32)mFlyWarpPosID + cM_rndF(1.9f) + 1.0f;
            mFlyWarpPos = fly_warp_pos[mFlyWarpPosID % 3];
            field_0x711 = 1;
            setActionMode(ACT_SMALL_ATTACK, 0);
            return;
        }
        break;
    case 10:
        setBck(0x31, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_ZAN_BB_V_FALL, -1);
        mMode = 11;

        speedF = 0.0f;
        speed.y = 45.0f;
        current.angle.y = shape_angle.y;
        gravity = -5.0f;
        field_0x6f8 = 0x1000;
        setTgHitBit(FALSE);
    case 11:
    case 12:
        if (mMode == 11) {
            if (mpModelMorf->isStop()) {
                setBck(0x33, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
                mMode = 12;
            }
        } else if (speed.y < -10.0f) {
            setBck(0x32, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            mMode = 13;
        }
    case 13:
        if (speed.y < 5.0f) {
            gravity = -2.0f;
        } else {
            gravity = -5.0f;
        }

        if (field_0x6f8 != 0) {
            shape_angle.y += field_0x6f8;
            cLib_chaseAngleS(&field_0x6f8, 0, 0x40);
        } else {
            cLib_addCalcAngleS2(&shape_angle.y, current.angle.y, 4, 0x1000);
        }

        sp9C = current.pos;
        sp9C.y += 100.0f;
        gndchk.SetPos(&sp9C);
        {
            f32 var_f31 = dComIfG_Bgsp().GroundCross(&gndchk);
            if (var_f31 != -1000000000.0f && current.pos.y <= var_f31) {
                if (dComIfG_Bgsp().GetPolyAtt0(gndchk) == 11) {
                    speed.y = 50.0f;
                    speedF = 15.0f;
                    current.angle.y = (cM_rndFX(2.9f) * (f32)0x1000) - (f32)0x8000;

                    mMode = 11;
                    setBck(0x31, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_BB_V_JUMP, -1);

                    cXyz spA8(current.pos.x, var_f31, current.pos.z);
                    cXyz spB4(1.5f, 1.5f, 1.5f);
                    for (int i = 0; i < 4; i++) {
                        static u16 w_eff_id[] = {0x01B8, 0x01B9, 0x01BA, 0x01BB};
                        field_0x389c[i] = dComIfGp_particle_setPolyColor(field_0x389c[i], w_eff_id[i], gndchk, &spA8, &tevStr, &shape_angle, &spB4, 0, NULL, -1, NULL);
                    }

                    mSound.startCreatureSound(Z2SE_EN_ZAN_BB_WTR, 0, -1);
                } else {
                    fopAcM_effSmokeSet1(&field_0x3894, &field_0x3898, &current.pos, NULL, 2.0f, &tevStr, 1);
                    speedF = 0.0f;
                    setBck(0x34, J3DFrameCtrl::LOOP_ONCE_e, 0.0f, 1.0f);
                    mMode = 14;
                    setTgHitBit(TRUE);
                    setTgType(0xD8FBFDFF);
                    field_0x702 = 0;
                    field_0x6f0 = 150;
                    field_0x70c = 1;
                }
            }
        }
        break;
    case 14:
        if (mpModelMorf->checkFrame(3.0f)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_BB_LAND, 0, -1);
        } else if (mpModelMorf->checkFrame(18.0f) || mpModelMorf->checkFrame(23.0f)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_BB_FOOT, 0, -1);
        }

        if (mpModelMorf->checkFrame(5.0f)) {
            speedF = 3.0f;
        }

        if (mpModelMorf->isStop()) {
            setActionMode(ACT_FLY_GROUND, 0);
            field_0x702 = 0;
        }
        break;
    }
}

/* 80642EC8-806430E0 004EA8 0218+00 1/1 0/0 0/0 .text            executeFlyGround__10daB_ZANT_cFv */
void daB_ZANT_c::executeFlyGround() {
    switch (mMode) {
    case 0:
        if (mLastAction == ACT_DAMAGE || mLastAction == ACT_CONFUSE) {
            field_0x70c = 0;
            gravity = 0.0f;
            mFlyWarpPosID = (f32)mFlyWarpPosID + cM_rndF(1.9f) + 1.0f;
            mFlyWarpPos = fly_warp_pos[mFlyWarpPosID % 3];
            field_0x711 = 2;
            setActionMode(ACT_WARP, 1);
            break;
        }
        speed.y = 0.0f;
        speedF = 0.0f;
        setBck(0x20, J3DFrameCtrl::LOOP_REPEAT_e, 5.0f, 1.0f);
        mMode = 1;
        field_0x702 = 0;
        mSound.startCreatureVoice(Z2SE_EN_ZAN_BB_V_ZEIZEI, -1);
    case 1:
        if (field_0x6f0 == 0) {
            field_0x70c = 0;
            gravity = 0.0f;
            mFlyWarpPosID = (f32)mFlyWarpPosID + cM_rndF(1.9f) + 1.0f;
            mFlyWarpPos = fly_warp_pos[mFlyWarpPosID % 3];
            field_0x711 = 2;
            setActionMode(ACT_WARP, 1);
        }
        break;
    }
}

/* 806430E0-806432F8 0050C0 0218+00 1/1 0/0 0/0 .text checkSwimLinkNearMouth__10daB_ZANT_cFv */
bool daB_ZANT_c::checkSwimLinkNearMouth() {
    fopAc_ac_c* pmobile;
    fopAcM_SearchByID(mMobileIDs[field_0x728], &pmobile);
    if (pmobile == NULL) {
        return false;
    }

    s16 mobile_angle = pmobile->shape_angle.y;
    cXyz check_area(cM_ssin(mobile_angle) * 900.0f, 0.0f, cM_scos(mobile_angle) * 900.0f);
    check_area += pmobile->current.pos;

    cXyz player_pos(daPy_getPlayerActorClass()->current.pos);
    if (check_area.absXZ(player_pos) < 400.0f && check_area.y - 300.0f < player_pos.y && check_area.y + 800.0f > player_pos.y) {
        return true;
    }

    return false;
}

/* 806432F8-8064350C 0052D8 0214+00 1/1 0/0 0/0 .text            checkSwimLinkNear__10daB_ZANT_cFv
 */
bool daB_ZANT_c::checkSwimLinkNear() {
    fopAc_ac_c* pmobile;
    fopAcM_SearchByID(mMobileIDs[field_0x728], &pmobile);
    if (pmobile == NULL) {
        return false;
    }

    if (checkSwimLinkNearMouth()) {
        if (field_0x706 != 0 && ((daB_ZANTZ_c*)pmobile)->getMouthMode() == 1) {
            s16 mobile_angle = pmobile->shape_angle.y;
            cXyz check_area(cM_ssin(mobile_angle) * 300.0f, 0.0f, cM_scos(mobile_angle) * 300.0f);
            check_area += pmobile->current.pos;

            if (check_area.abs(current.pos) < 300.0f) {
                setTgHitBit(FALSE);
                ((daB_ZANTZ_c*)pmobile)->setMouthMode(2);
                setActionMode(ACT_WATER, 27);
            }
        }

        ((daB_ZANTZ_c*)pmobile)->setSnortEffect(30);
        return true;
    }

    return false;
}

/* 8064350C-80643690 0054EC 0184+00 1/1 0/0 0/0 .text            executeHook__10daB_ZANT_cFv */
void daB_ZANT_c::executeHook() {
    switch (mMode) {
    case 0:
        setTgHitBit(FALSE);
        setCoHitBit(FALSE);
        gravity = 0.0f;
        speed.y = 0.0f;
        speedF = 0.0f;
        field_0x705 = 0;
        field_0x706 = 0;

        setBck(0x15, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        mMode = 2;
        field_0x6ff++;
        break;
    case 2:
        if (mpModelMorf->checkFrame(2.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_OI_V_CAUGHT, -1);
        }

        if (mpModelMorf->isStop()) {
            mMode = 3;
            setBck(0x17, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        }
    case 3:
        if (!fopAcM_checkStatus(this, 0x100000)) {
            setTgHitBit(TRUE);
            setCoHitBit(TRUE);
            setActionMode(ACT_SWIM, 10);
        }
        break;
    }
}

/* 80643690-80644074 005670 09E4+00 2/1 0/0 0/0 .text            executeWater__10daB_ZANT_cFv */
void daB_ZANT_c::executeWater() {
    fopAc_ac_c* pmobile;
    fopAcM_SearchByID(mMobileIDs[field_0x728], &pmobile);
    if (pmobile != NULL) {
        s16 mobile_angle = pmobile->shape_angle.y;
        cXyz sp58(cM_ssin(mobile_angle) * 300.0f, 0.0f, cM_scos(mobile_angle) * 300.0f);
        sp58 += pmobile->current.pos;

        switch (mMode) {
        case 0:
            if (mLastAction == ACT_SMALL_ATTACK) {
                mMode = 0x19;
                field_0x6f0 = 0x78;
                field_0x705 = 1;
                attention_info.flags = 4;
                setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            } else if (field_0x705 != 0) {
                if (((daB_ZANTZ_c*)pmobile)->getAppearMode() == 3) {
                    mMode = 15;
                } else {
                    ((daB_ZANTZ_c*)pmobile)->setMouthMode(2);
                    mMode = 27;
                }

                attention_info.flags = 0;
            } else {
                setActionMode(ACT_SWIM, 0);
            }
            break;
        case 15:
            {
                daPy_py_c* player = daPy_getPlayerActorClass();
                if (player->current.pos.y < 1000.0f) {
                    mMode = 20;

                    if (mFightCycle == 0) {
                        ((daB_ZANTZ_c*)pmobile)->setAppearMode(0);
                    } else {
                        for (int i = 0; i < 4; i++) {
                            fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                            if (pmobile != NULL) {
                                ((daB_ZANTZ_c*)pmobile)->setAppearMode(0);
                            }
                        }
                    }

                    field_0x704 = 0;
                }
            }
            break;
        case 20:
            old.pos = sp58;
            current.pos = old.pos;
            shape_angle.y = mobile_angle;

            if (((daB_ZANTZ_c*)pmobile)->getAppearMode() == 1) {
                field_0x6e8 = 30;
                mMode = 21;

                if (mFightCycle != 0) {
                    cXyz sp64(daPy_getPlayerActorClass()->current.pos);
                    f32 var_f31 = 0.0f;
                    int sp70 = 0;

                    for (int i = 0; i < 4; i++) {
                        fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                        if (pmobile != NULL && var_f31 < pmobile->current.pos.abs(sp64)) {
                            var_f31 = pmobile->current.pos.abs(sp64);
                            sp70 = i;
                        }
                    }

                    field_0x728 = sp70;
                }
            }
            break;
        case 21:
            if (field_0x6e8 == 0) {
                field_0x6fd = 1;

                if (mFightCycle == 0) {
                    ((daB_ZANTZ_c*)pmobile)->setAppearMode(4);
                } else {
                    int sp78 = 0;

                    for (int i = 0; i < 4; i++) {
                        fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                        if (pmobile != NULL && abs((s16)(fopAcM_searchPlayerAngleY(pmobile) - pmobile->shape_angle.y)) > 0x1000) {
                            sp78++;
                        }
                    }

                    if (sp78 != 0) {
                        for (int i = 0; i < 4; i++) {
                            fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                            if (pmobile != NULL) {
                                ((daB_ZANTZ_c*)pmobile)->setAppearMode(5);
                            }
                        }

                        field_0x6fd = 0;
                    }
                }

                mMode = 22;
            }
            break;
        case 22:
            if (mFightCycle == 0) {
                if (((daB_ZANTZ_c*)pmobile)->getAppearMode() == 1) {
                    ((daB_ZANTZ_c*)pmobile)->setSnortEffect(30);
                    field_0x6e8 = 30;
                    mMode = 23;
                }
            } else {
                int sp84 = 0;

                if (field_0x6fd == 0) {
                    for (int i = 0; i < 4; i++) {
                        fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                        if (pmobile != NULL && ((daB_ZANTZ_c*)pmobile)->isSearchContinue()) {
                            if (abs((s16)(fopAcM_searchPlayerAngleY(pmobile) - pmobile->shape_angle.y)) < 0xC00) {
                                sp84++;
                            }
                        }
                    }

                    if (sp84 == 4) {
                        for (int i = 0; i < 4; i++) {
                            fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                            if (pmobile != NULL) {
                                ((daB_ZANTZ_c*)pmobile)->offSearchContinue();
                            }
                        }
                        field_0x6fd++;
                    }
                } else {
                    for (int i = 0; i < 4; i++) {
                        fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                        if (pmobile != NULL && ((daB_ZANTZ_c*)pmobile)->getAppearMode() == 1) {
                            sp84++;
                        }
                    }

                    if (sp84 == 4) {
                        for (int i = 0; i < 4; i++) {
                            fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                            if (pmobile != NULL) {
                                ((daB_ZANTZ_c*)pmobile)->setSnortEffect(30);
                            }
                        }
                        field_0x6e8 = 30;
                        mMode = 23;
                    }
                }
            }
            break;
        case 23:
            if (field_0x6e8 == 0) {
                old.pos = sp58;
                current.pos = old.pos;
                ((daB_ZANTZ_c*)pmobile)->setMouthMode(0);
                mMode = 24;
                setTgHitBit(TRUE);
                field_0x706 = 1;
            }
            break;
        case 24:
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x400, 0x80);
            if (((daB_ZANTZ_c*)pmobile)->getMouthMode() == 1) {
                attention_info.flags = 4;
                field_0x703 = 8;
                field_0x6ff = 0;
                field_0x711 = 1;
                setActionMode(ACT_SMALL_ATTACK, 0);
            }
            break;
        case 25:
            if (field_0x6f0 == 0) {
                field_0x706 = 0;
                setTgHitBit(FALSE);
                ((daB_ZANTZ_c*)pmobile)->setMouthMode(2);
                mMode = 27;
            }
            break;
        case 27:
            if (((daB_ZANTZ_c*)pmobile)->getMouthMode() == 3) {
                current.pos = sp58;
                field_0x705 = 1;
                attention_info.flags = 0;

                if (mFightCycle == 0) {
                    mMode = 30;
                    field_0x6e8 = cM_rndF(30.0f) + 100.0f;
                } else if (field_0x712 == 0) {
                    field_0x712++;
                    mMode = 28;
                    field_0x6e8 = 30;
                } else {
                    mMode = 30;
                    field_0x6e8 = cM_rndF(30.0f) + 100.0f;
                    field_0x728 = (int)((f32)field_0x728 + cM_rndF(2.9f) + 1.0f) & 3;
                }
            }
            break;
        case 28:
            if (field_0x6e8 == 0) {
                ((daB_ZANTZ_c*)pmobile)->setAppearMode(2);
                mMode = 29;
            }
            break;
        case 29:
            current.pos = sp58;
            shape_angle.y = mobile_angle;

            if (((daB_ZANTZ_c*)pmobile)->getAppearMode() == 3) {
                mMode = 15;
            }
            break;
        case 30:
            if (field_0x6e8 == 0) {
                field_0x6e8 = 30;
                mMode = 21;
            }
            break;
        }
    }
}

/* 80644074-80644A3C 006054 09C8+00 2/1 0/0 0/0 .text            executeSwim__10daB_ZANT_cFv */
void daB_ZANT_c::executeSwim() {
    fopAc_ac_c* pmobile;
    fopAcM_SearchByID(mMobileIDs[field_0x728], &pmobile);

    if (pmobile != NULL) {
        s16 sp12 = pmobile->shape_angle.y;
        cXyz sp50(cM_ssin(sp12) * 300.0f, 300.0f, cM_scos(sp12) * 300.0f);
        sp50 += pmobile->current.pos;

        s16 sp10 = cLib_targetAngleY(&pmobile->current.pos, &current.pos);
        s16 spE = sp12 - sp10;

        switch (mMode) {
        case 10:
            if (field_0x6ff > 5) {
                field_0x6b8 = sp12;
                mFlyWarpPos = sp50;
                field_0x705 = 1;
                field_0x711 = 1;
                setActionMode(ACT_WARP, 0);
                return;
            }
            
            setBck(0x16, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            mMode = 11;
        case 11:
            if (current.pos.y < 50.0f) {
                cLib_addCalc2(&current.pos.y, 50.0f, 0.1f, 10.0f);
            } else if (current.pos.y > 100.0f) {
                cLib_addCalc2(&current.pos.y, 100.0f, 0.1f, 10.0f);
            }

            if (mpModelMorf->isStop()) {
                mMode = 0;
            }
            break;
        case 0:
            setBck(0x35, J3DFrameCtrl::LOOP_REPEAT_e, 5.0f, 1.0f);
            mpModelMorf->setFrame(10.0f);
            field_0x6cc = 0.0f;
            attention_info.flags = 4;
            mMode = 1;
            field_0x702 = 0;
        case 1:
        case 2:
            if (abs(spE) < 0x1000) {
                if (mMode == 1) {
                    field_0x6ac.set(cM_ssin(sp12) * 600.0f, 300.0f, cM_scos(sp12) * 600.0f);
                    field_0x6ac += pmobile->current.pos;
                } else {
                    field_0x6ac = sp50;
                }

                mMode = 4;
            } else {
                s16 spC;
                if (spE < 0) {
                    spC = sp10 - 0x1000;
                } else {
                    spC = sp10 + 0x1000;
                }

                field_0x6ac.set(cM_ssin(spC) * 1200.0f, 250.0f, cM_scos(spC) * 1200.0f);
                field_0x6ac += pmobile->current.pos;
                mMode = 3;
            }

            field_0x6e8 = 60;
        case 3:
        case 4:
            {
                if (current.pos.y < 50.0f) {
                    cLib_addCalc2(&current.pos.y, 50.0f, 0.1f, 10.0f);
                }

                f32 var_f30 = fopAcM_searchPlayerDistance(this);
                s16 spA = -cLib_targetAngleX(&current.pos, &field_0x6ac) + 0x4000;
                s16 sp8 = cLib_targetAngleY(&current.pos, &field_0x6ac);
                f32 var_f31 = mpModelMorf->getFrame();

                int sp64 = 0;
                if (var_f31 < 13.0f || var_f31 >= 45.0f) {
                    sp64 = 1;
                }

                if ((13.0f <= var_f31 && var_f31 <= 19.0f) || (29.0f <= var_f31 && var_f31 <= 45.0f)) {
                    sp64 = 2;
                }

                if (abs((s16)(sp8 - shape_angle.y)) < 0x2000) {
                    switch (sp64) {
                    case 0:
                        cLib_chaseF(&field_0x6cc, 0.0f, 2.0f);
                        break;
                    case 1:
                        cLib_chaseF(&field_0x6cc, 0.0f, 0.5f);
                        break;
                    case 2:
                        cLib_chaseF(&field_0x6cc, 15.0f, 3.0f);
                        break;
                    }
                } else {
                    switch (sp64) {
                    case 0:
                        cLib_chaseF(&field_0x6cc, 0.0f, 1.0f);
                        break;
                    case 1:
                        cLib_chaseF(&field_0x6cc, 0.0f, 0.3f);
                        break;
                    case 2:
                        cLib_chaseF(&field_0x6cc, 5.0f, 1.0f);
                        break;
                    }
                }

                if (sp64 == 2) {
                    cLib_addCalcAngleS2(&shape_angle.y, sp8, 0x10, 0x180);
                    cLib_addCalcAngleS2(&shape_angle.x, spA, 0x10, 0x400);
                } else {
                    cLib_addCalcAngleS2(&shape_angle.y, sp8, 0x10, 0x80);
                    cLib_addCalcAngleS2(&shape_angle.x, spA, 0x10, 0x200);
                }

                current.angle.y = shape_angle.y;
                current.angle.x = cLib_targetAngleX(&current.pos, &field_0x6ac);

                if (field_0x6e8 != 0) {
                    speed.y = (field_0x6cc / 2) * cM_ssin(current.angle.x);
                    speedF = std::abs((field_0x6cc / 2) * cM_scos(current.angle.x));
                } else {
                    speed.y = field_0x6cc * cM_ssin(current.angle.x);
                    speedF = std::abs(field_0x6cc * cM_scos(current.angle.x));
                }

                if (current.pos.absXZ(sp50) < 200.0f) {
                    mMode = 6;
                    attention_info.flags = 0;
                    setTgHitBit(FALSE);
                    ((daB_ZANTZ_c*)pmobile)->setMouthMode(2);
                    field_0x6e8 = 60;
                } else if (current.pos.abs(field_0x6ac) < 200.0f) {
                    if (mMode == 3) {
                        mMode = 1;
                    } else {
                        mMode = 2;
                    }
                }
            }
            break;
        case 6:
            cLib_chaseF(&speedF, 0.0f, 0.5f);
            cLib_chaseF(&speed.y, 5.0f, 0.5f);
            cLib_addCalcAngleS2(&shape_angle.y, sp12, 0x10, 0x200);
            cLib_addCalcAngleS2(&shape_angle.x, 0, 0x10, 0x200);

            if (!speedF && speed.y == 5.0f) {
                mMode = 7;
                gravity = -1.0f;
                maxFallSpeed = -5.0f;
            }
            break;
        case 7:
            {
                field_0x706 = 1;
                maxFallSpeed = -100.0f;

                cXyz sp5C(sp50.x, current.pos.y, sp50.z);
                cLib_chasePosXZ(&current.pos, sp5C, 3.0f);
                
                if (((daB_ZANTZ_c*)pmobile)->getMouthMode() == 3) {
                    field_0x705 = 1;
                    field_0x6e8 = 30;
                    setActionMode(ACT_WATER, 27);

                    shape_angle.x = 0;
                    shape_angle.y = 0;
                    gravity = 0.0f;
                    speed.y = 0.0f;
                    speedF = 0.0f;
                }
            }
            break;
        }

        if (checkBck(0x35)) {
            if (mpModelMorf->checkFrame(12.0f)) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_OI_SWIM1, 0, -1);
            } else if (mpModelMorf->checkFrame(28.0f)) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_OI_SWIM2, 0, -1);
            }
        }
    }
}

/* 80644A3C-80645014 006A1C 05D8+00 1/1 0/0 0/0 .text            executeSimaJump__10daB_ZANT_cFv */
void daB_ZANT_c::executeSimaJump() {
    switch (mMode) {
    case 0:
        setTgHitBit(TRUE);
        field_0x9e0[0].OnTgNoHitMark();
        field_0x9e0[1].OnTgNoHitMark();

        setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);

        if (mLastAction == ACT_SMALL_ATTACK) {
            field_0x702 = 0;
            mMode = 10;

            if (mFightCycle == 0) {
                field_0x6f0 = 120;
            } else {
                field_0x6f0 = 105;
            }

            attention_info.flags = 4;
            setBck(0x20, J3DFrameCtrl::LOOP_REPEAT_e, 10.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_ZAN_MG_V_ZEIZEI, -1);
            return;
        }

        if (mLastAction == ACT_CONFUSE || mLastAction == ACT_DAMAGE) {
            mMode = 11;
            return;
        }

        attention_info.flags = 4;
        field_0x6ec = 0;
        mMode = 1;
        gravity = -5.0f;
        field_0x6fd = 0;

        if (field_0x70f < 2) {
            if (field_0x70f == 0) {
                field_0x6e8 = 150;
            }

            field_0x70f++;
        } else {
            field_0x6e8 = cM_rndF(50.0f) + 100.0f;

            if (field_0x70b >= 4) {
                field_0x6e8 = 0;
            } else if (field_0x70b < 2 && field_0x6e8 < 120) {
                field_0x6e8 = 120;
            }

            if (field_0x6e8 < 120) {
                field_0x70b = 0;
                field_0x6e8 = 0;

                if (mFightCycle == 0) {
                    field_0x703 = l_HIO.mBulletNum;
                } else {
                    field_0x703 = 8;
                }

                field_0x711 = 0;
                setActionMode(ACT_SMALL_ATTACK, 0);
                field_0x702 = 0;
                return;
            }
        }

        field_0x70b++;
        if (mFightCycle != 0) {
            field_0x6e8 -= 50;
        }

        setTgHitBit(FALSE);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x800, 0x80);

        if (fopAcM_searchPlayerDistance(this) < 550.0f) {
            if (mAcch.i_ChkGroundHit()) {
                mMode = 11;
                return;
            }
        } else {
            if (checkAvoidWeapon(0)) {
                mMode = 11;
                return;
            }
        }

        if (mMode == 1) {
            if (mAcch.i_ChkGroundHit() && field_0x6ec == 0) {
                setBck(0x1A, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
                mMode = 2;
            }
        } else if (mMode == 2) {
            if (mpModelMorf->checkFrame(6.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_MG_V_JUMP, -1);
            }

            if (mpModelMorf->checkFrame(10.0f)) {
                speed.y = 55.0f;
                mMode = 3;
            }
        } else if (mMode == 3) {
            if (speed.y <= 0.0f) {
                setBck(0x1B, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
                mMode = 4;
            }
        } else if (mMode == 4) {
            if (mpModelMorf->checkFrame(7.0f)) {
                mpModelMorf->setPlaySpeed(0.0f);
            }

            if (mAcch.i_ChkGroundHit()) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_MG_LAND, 0, -1);
                mpModelMorf->setPlaySpeed(1.0f);
                mpModelMorf->setFrame(8.0f);
                mMode = 5;
            }
        } else if (mpModelMorf->isStop()) {
            fopAcM_effSmokeSet1(&field_0x3894, &field_0x3898, &current.pos, NULL, 2.0f, &tevStr, 1);
            mMode = 1;
            field_0x6ec = 5;
        }

        if (mAcch.i_ChkGroundHit() && field_0x6e8 == 0) {
            mMode = 11;
        }
        break;
    case 10:
        if (field_0x6f0 != 0) {
            return;
        }
    case 11:
        s16 var_r27 = cM_atan2s(daPy_getPlayerActorClass()->current.pos.x, daPy_getPlayerActorClass()->current.pos.z);
        s16 sp1C = (f32)(var_r27 + 0x8000) + cM_rndFX(4.0f) * (f32)0x800;

        mFlyWarpPos.set(cM_ssin(sp1C) * 1100.0f, 1000.0f, cM_scos(sp1C) * 1100.0f);
        field_0x6b8 = sp1C + 0x8000;
        field_0x711 = 0;
        setActionMode(ACT_WARP, 0);
        break;
    }
}

/* 80645014-8064524C 006FF4 0238+00 1/1 0/0 0/0 .text            executeIceDemo__10daB_ZANT_cFv */
void daB_ZANT_c::executeIceDemo() {
    switch (mMode) {
    case 0:
        current.pos.set(-140.0f, 300.0f, 700.0f);
        old.pos = current.pos;
    case 100:
        for (int i = 0; i < 11; i++) {
            mFoot2Cc[i].OnTgSetBit();
        }

        for (int i = 0; i < 6; i++) {
            mFootCc[iron_tg_cc[i]].OnTgSetBit();
            mFootCc[iron_tg_cc[i]].OnTgShield();
            mFootCc[iron_tg_cc[i]].OnTgIronBallRebound();
        }

        setBck(0x18, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        speedF = 0.0f;
        gravity = 0.0f;
        shape_angle.z = 0;
        shape_angle.x = 0;
        attention_info.flags = 0;
        maxFallSpeed = -100.0f;

        mMode = 1;
        field_0x70e = 0;
    case 1:
        if (mpModelMorf->checkFrame(8.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_HUGE, -1);
        }

        cLib_chaseF(&field_0x6c0, 10.0f, 0.1f);
        cLib_chaseF(&field_0x6c4, 10.0f, 0.1f);

        if (mpModelMorf->checkFrame(115.0f)) {
            mMode = 2;
        }
        break;
    case 2:
        cLib_chaseF(&speed.y, 50.0f, 5.0f);
        if (mpModelMorf->isStop()) {
            setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            setActionMode(ACT_ICE_JUMP, 3);
        }
        break;
    }
}

/* 8064524C-80645DA4 00722C 0B58+00 2/1 0/0 0/0 .text            executeIceJump__10daB_ZANT_cFv */
void daB_ZANT_c::executeIceJump() {
    cXyz sp44(daPy_getPlayerActorClass()->current.pos);
    f32 var_f31 = sp44.absXZ(current.pos);
    cXyz sp50;
    cXyz sp5C;
    cXyz sp68;

    switch (mMode) {
    case 0:
        setBck(0x19, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, -1.0f);
        mMode = 1;
        attention_info.flags = 0;
        field_0x70e = 0;
        mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_JUMP, -1);
    case 1:
        if (mpModelMorf->checkFrame(10.0f)) {
            mMode = 2;
            speed.y = 130.0f;
            current.angle.y = shape_angle.y;
        }
        break;
    case 2:
        if (mpModelMorf->isStop()) {
            setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            mMode = 3;
        }
    case 3:
        cLib_chaseF(&speed.y, 15.0f, 5.0f);
        if (current.pos.y > 1500.0f) {
            field_0x70e = 3;
        }

        if (current.pos.y > 2000.0f) {
            mMode = 4;
            field_0x6e8 = 90;
            current.angle.y = shape_angle.y;
        }
        break;
    case 4:
        cLib_chaseF(&speed.y, 0.0f, 1.0f);
        if (var_f31 < 300.0f) {
            var_f31 -= 50.0f;
            if (var_f31 < 0.0f) {
                var_f31 = 0.0f;
            }

            cLib_chaseF(&speedF, var_f31 / 10.0f, 1.0f);
        } else {
            cLib_chaseF(&speedF, 30.0f, 1.0f);
            cLib_addCalcAngleS(&current.angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x400, 0x80);
        }
        
        shape_angle.y = current.angle.y;

        if (field_0x6e8 == 0 && sp44.absXZ(current.pos) < 550.0f) {
            mMode = 5;
            gravity = -5.0f;
            speed.y = 0.0f;
            speedF = 0.0f;

            setBck(0x19, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_LAND, -1);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x23));
            mDoMtx_stack_c::transM(10.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp50);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x26));
            mDoMtx_stack_c::transM(10.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp5C);

            if (sp44.absXZ(sp50) < sp44.absXZ(sp5C)) {
                field_0x70f = 0;
            } else {
                field_0x70f = 1;
            }
        }
        break;
    case 5:
    case 6:
        if (field_0x70f == 0) {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x23));
        } else {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x26));
        }

        mDoMtx_stack_c::transM(10.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp5C);
        sp68 = sp5C - sp44;
        current.pos -= sp68 * (20.0f / sp68.abs());

        if (mMode == 5) {
            if (mpModelMorf->checkFrame(10.0f)) {
                mpModelMorf->setPlaySpeed(0.0f);
                mMode = 6;
                mFoot2Cc[0].OnAtSetBit();
                mFoot2Cc[4].OnAtSetBit();
                mFoot2Cc[0].SetAtAtp(4);
                mFoot2Cc[4].SetAtAtp(4);
            }
        } else {
            if (mAcch.i_ChkGroundHit()) {
                field_0x70e = 1;
                mSound.startCreatureSound(Z2SE_EN_ZAN_YO_LAND_HUGE, 0, -1);
                dComIfGp_getVibration().StartShock(8, 31, cXyz(0.0f, 1.0f, 0.0f));

                setIceLandingEffect(0);
                setIceLandingEffect(1);

                mFoot2Cc[0].OffAtSetBit();
                mFoot2Cc[4].OffAtSetBit();
                mFoot2Cc[0].SetAtAtp(2);
                mFoot2Cc[4].SetAtAtp(2);

                gravity = 0.0f;

                mpModelMorf->setPlaySpeed(1.0f);
                mMode = 7;
                attention_info.flags = 4;
            }
        }
        break;
    case 7:
        if (mpModelMorf->checkFrame(15.0f)) {
            for (int i = 0; i < 6; i++) {
                mFootCc[iron_tg_cc[i]].OffTgShield();
            }
        }

        if (mpModelMorf->isStop()) {
            setActionMode(ACT_ICE_STEP, 0);
        }
        break;
    }
}

/* 80645DA4-8064687C 007D84 0AD8+00 1/1 0/0 0/0 .text            executeIceStep__10daB_ZANT_cFv */
void daB_ZANT_c::executeIceStep() {
    s16 var_r29 = shape_angle.y;
    int var_r28;
    cXyz sp60;

    switch (mMode) {
    case 0:
        field_0x6e8 = cM_rndFX(50.0f) + 600.0f;
        for (int i = 0; i < 6; i++) {
            mFootCc[iron_tg_cc[i]].OffTgShield();
        }
    case 1:
        {
            f32 var_f30 = cM_rnd();
            s16 sp8 = shape_angle.y - fopAcM_searchPlayerAngleY(this);
            f32 var_f29 = fopAcM_searchPlayerDistance(this);

            if (var_f29 < 300.0f) {
                if (sp8 < 0) {
                    if (var_f30 < 0.5f) {
                        var_r28 = 4;
                    } else {
                        var_r28 = 5;
                    }

                    field_0x6ba = fopAcM_searchPlayerAngleY(this) + 0x1000;
                } else {
                    if (var_f30 < 0.5f) {
                        var_r28 = 2;
                    } else {
                        var_r28 = 3;
                    }

                    field_0x6ba = fopAcM_searchPlayerAngleY(this) - 0x1000;
                }
            } else if (var_f29 < 400.0f) {
                if (sp8 > 0) {
                    if (var_f30 < 0.5f) {
                        var_r28 = 2;
                    } else {
                        var_r28 = 3;
                    }

                    field_0x6ba = fopAcM_searchPlayerAngleY(this) + 0x4000;
                } else {
                    if (var_f30 < 0.5f) {
                        var_r28 = 4;
                    } else {
                        var_r28 = 5;
                    }

                    field_0x6ba = fopAcM_searchPlayerAngleY(this) - 0x4000;
                }
            } else if (abs(sp8) > 0x4000) {
                if (sp8 < 0) {
                    var_r28 = 4;
                    field_0x6ba = fopAcM_searchPlayerAngleY(this) - 0x1000;
                } else {
                    var_r28 = 2;
                    field_0x6ba = fopAcM_searchPlayerAngleY(this) + 0x1000;
                }
            } else {
                if (sp8 < 0) {
                    var_r28 = 2;
                    field_0x6ba = fopAcM_searchPlayerAngleY(this) + 0x4000;
                } else {
                    var_r28 = 4;
                    field_0x6ba = fopAcM_searchPlayerAngleY(this) - 0x4000;
                }
            }

            switch (var_r28) {
            case 2:
                setBck(0x3D, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
                mMode = 2;
                break;
            case 3:
                setBck(0x3F, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
                mMode = 3;
                break;
            case 4:
                setBck(0x3E, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
                mMode = 4;
                break;
            case 5:
                setBck(0x40, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
                mMode = 5;
                break;
            }
        }
    case 2:
    case 3:
    case 4:
    case 5:
        f32 var_f31 = mpModelMorf->getFrame();
        int sp98 = 0;

        if (mMode == 2) {
            if (8.0f <= var_f31 && var_f31 <= 24.0f) {
                sp98 = 1;
            }

            if (mpModelMorf->checkFrame(23)) {
                mFoot2Cc[4].OnAtSetBit();
                mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_FUMI_1, -1);
            }

            if (mpModelMorf->checkFrame(28)) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_YO_FUMI, 0, -1);
                dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
                setIceLandingEffect(1);
            }

            if (mpModelMorf->checkFrame(30)) {
                mFoot2Cc[4].OffAtSetBit();
            }
        } else if (mMode == 3) {
            if (7.0f <= var_f31 && var_f31 <= 14.0f) {
                sp98 = 1;
            }

            if (22.0f <= var_f31 && var_f31 <= 28.0f) {
                sp98 = 1;
            }

            if (mpModelMorf->checkFrame(13) || mpModelMorf->checkFrame(27)) {
                mFoot2Cc[4].OnAtSetBit();
                
                if (mpModelMorf->checkFrame(13)) {
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_FUMI_2, -1);
                } else {
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_FUMI_3, -1);
                }
            }

            if (mpModelMorf->checkFrame(17) || mpModelMorf->checkFrame(30)) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_YO_FUMI, 0, -1);
                dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
                setIceLandingEffect(1);
            }

            if (mpModelMorf->checkFrame(18) || mpModelMorf->checkFrame(31)) {
                mFoot2Cc[4].OffAtSetBit();
            }
        } else if (mMode == 4) {
            if (8.0f <= var_f31 && var_f31 <= 23.0f) {
                sp98 = 1;
            }

            if (mpModelMorf->checkFrame(22)) {
                mFoot2Cc[0].OnAtSetBit();
                mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_FUMI_1, -1);
            }

            if (mpModelMorf->checkFrame(28)) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_YO_FUMI, 0, -1);
                dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
                setIceLandingEffect(0);
            }

            if (mpModelMorf->checkFrame(30)) {
                mFoot2Cc[0].OffAtSetBit();
            }
        } else {
            if (7.0f <= var_f31 && var_f31 <= 13.0f) {
                sp98 = 1;
            }

            if (21.0f <= var_f31 && var_f31 <= 27.0f) {
                sp98 = 1;
            }

            if (mpModelMorf->checkFrame(11) || mpModelMorf->checkFrame(26)) {
                mFoot2Cc[0].OnAtSetBit();
                
                if (mpModelMorf->checkFrame(11)) {
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_FUMI_2, -1);
                } else {
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_FUMI_3, -1);
                }
            }

            if (mpModelMorf->checkFrame(16) || mpModelMorf->checkFrame(31)) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_YO_FUMI, 0, -1);
                dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
                setIceLandingEffect(0);
            }

            if (mpModelMorf->checkFrame(18) || mpModelMorf->checkFrame(32)) {
                mFoot2Cc[0].OffAtSetBit();
            }
        }

        if (sp98 != 0) {
            cLib_addCalcAngleS2(&shape_angle.y, field_0x6ba, 0x10, 0x400);
        }

        if (mMode <= 3) {
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(var_r29);
            mDoMtx_stack_c::transM(field_0x6c0 * 35.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp60);
            mDoMtx_stack_c::transS(sp60);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::transM(field_0x6c0 * -35.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&current.pos);
        } else {
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(var_r29);
            mDoMtx_stack_c::transM(field_0x6c0 * -30.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp60);
            mDoMtx_stack_c::transS(sp60);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::transM(field_0x6c0 * 30.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&current.pos);
        }

        if (mpModelMorf->isStop()) {
            if (field_0x6e8 != 0) {
                mMode = 1;
            } else {
                for (int i = 0; i < 6; i++) {
                    mFootCc[iron_tg_cc[i]].OnTgShield();
                }

                setActionMode(ACT_ICE_JUMP, 0);
            }
        }
        break;
    }
}

/* 8064687C-806471CC 00885C 0950+00 2/1 0/0 0/0 .text            executeIceDamage__10daB_ZANT_cFv */
void daB_ZANT_c::executeIceDamage() {
    static f32 const damage_scale[] = {
        10.0f, 8.0f, 7.5f, 6.0f, 4.5f, 3.0f, 2.0f, 1.4f, 1.0f, 0.69999999f, 0.5f,
    };

    static f32 const damage_jump_speed[] = {
        100.0f, 95.0f, 90.0f, 85.0f, 80.0f, 75.0f, 70.0f, 65.0f, 60.0f, 55.0f, 50.0f
    };

    daPy_py_c* player = daPy_getPlayerActorClass();

    if (mMode >= 10 && field_0x6e8 == 0) {
        for (int i = 0; i < 11; i++) {
            mFoot2Cc[i].OnTgShield();
            mFoot2Cc[i].OffTgSetBit();
            mFoot2Cc[i].OffTgNoHitMark();
        }

        for (int i = 0; i < 6; i++) {
            mFootCc[iron_tg_cc[i]].OffTgSetBit();
            mFootCc[iron_tg_cc[i]].OnTgShield();
            mFootCc[iron_tg_cc[i]].OnTgIronBallRebound();
        }
    }

    switch (mMode) {
    case 0:
    case 1:
        field_0x70e = 2;

        if (mMode == 0) {
            setBck(0x2E, J3DFrameCtrl::LOOP_REPEAT_e, 10.0f, 1.0f);
        } else {
            setBck(0x2F, J3DFrameCtrl::LOOP_REPEAT_e, 10.0f, 1.0f);
        }

        mFoot2Cc[0].OffAtSetBit();
        mFoot2Cc[4].OffAtSetBit();

        for (int i = 0; i < 6; i++) {
            mFootCc[iron_tg_cc[i]].OnTgShield();
        }

        current.angle.y = shape_angle.y;
        mMode = 2;
        field_0x6e8 = 300;
        field_0x70b = 0;
        field_0x70b++;
        field_0x6cc = (field_0x6c0 - damage_scale[field_0x70b]) / 3.0f;
    case 2:
        if (mpModelMorf->checkFrame(6) || mpModelMorf->checkFrame(19)) {
            if (mpModelMorf->getFrame() < 14) {
                mpModelMorf->setFrame(6);
            } else {
                mpModelMorf->setFrame(19);
            }

            if (field_0x70b <= 8) {
                speedF = 25.0f;
            } else if (field_0x70b == 9) {
                if (mFightCycle == 0) {
                    speedF = 20.0f;
                } else {
                    speedF = 23.0f;
                }
            } else if (mFightCycle == 0) {
                speedF = 15.0f;
            } else {
                speedF = 22.0f;
            }

            speed.y = damage_jump_speed[field_0x70b];
            gravity = -15.0f;
            mMode = 3;

            mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_KENKEN, -1);
        } else {
            if (field_0x70b <= 10) {
                cLib_addCalc2(&field_0x6c0, damage_scale[field_0x70b], 0.5f, field_0x6cc);
            } else {
                cLib_chaseF(&field_0x6c0, 0.5f, 0.1f);
            }

            field_0x6c4 = field_0x6c0;
            cLib_addCalcAngleS2(&shape_angle.y, field_0x6ba, 8, 0x1000);
            current.angle.y = shape_angle.y;
            speedF = 0.0f;

            if (field_0x6e8 == 0) {
                mMode = 30;
            }
        }
        break;
    case 3:
        if (mpModelMorf->checkFrame(12) || mpModelMorf->checkFrame(25)) {
            if (mpModelMorf->getFrame() < 14) {
                mpModelMorf->setFrame(12);
            } else {
                mpModelMorf->setFrame(25);
            }

            mpModelMorf->setPlaySpeed(0.0f);
            mMode = 4;
        }
        break;
    case 4:
        if (mAcch.i_ChkGroundHit()) {
            s16 sp8 = fopAcM_searchPlayerAngleY(this) + (4096.0f * cM_rndFX(4.9f)) + 32768.0f;

            if (current.pos.absXZ() > 1200.0f) {
                sp8 = cM_atan2s(-current.pos.x, -current.pos.z);
            }

            field_0x6ba = sp8;

            if (field_0x70b < 10) {
                field_0x70b++;
            }

            field_0x6cc = (field_0x6c0 - damage_scale[field_0x70b]) / 3.0f;
            mpModelMorf->setPlaySpeed((10.0f - field_0x6c0) / 10.0f + 1.0f);

            if (field_0x70b == 8) {
                for (int i = 0; i < 11; i++) {
                    mFoot2Cc[i].OffTgShield();
                    mFoot2Cc[i].OnTgNoHitMark();
                }

                for (int i = 0; i < 6; i++) {
                    mFootCc[iron_tg_cc[i]].OffTgShield();
                    mFootCc[iron_tg_cc[i]].OffTgIronBallRebound();
                }
            }

            mSound.startCreatureSound(Z2SE_EN_ZAN_YO_LAND, 0, -1);
            mMode = 2;
        }
        break;
    case 10:
        if (setNextDamageMode(0)) {
            return;
        }

        if (cM_rnd() < 0.5f) {
            setBck(7, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        } else {
            setBck(8, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        }

        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        speed.y = 0.0f;
        speedF = 0.0f;
        mMode = 11;
    case 11:
        cLib_chaseF(&field_0x6c0, 0.5f, 0.1f);
        field_0x6c4 = field_0x6c0;

        if (mpModelMorf->isStop()) {
            mMode = 12;
            if (field_0x6e8 >= 30) {
                field_0x6e8 = 30;
            }

            setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        }
        break;
    case 12:
        if (field_0x6e8 == 0) {
            mMode = 30;
        }
        break;
    case 20:
        setBck(0x14, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_NO_DMG, -1);
        mMode = 21;
        speed.y = 0.0f;
        speedF = 0.0f;
    case 21:
        if (mpModelMorf->isStop()) {
            mMode = 30;
        }
        break;
    case 40:
        setBck(10, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        mMode = 41;
        speed.y = 0.0f;
        speedF = 0.0f;
        field_0x6e8 = 30;
    case 41:
        if (field_0x6e8 == 0) {
            mMode = 30;
        }
        break;
    case 30:
        for (int i = 0; i < 11; i++) {
            mFoot2Cc[i].OnTgShield();
            mFoot2Cc[i].OffTgSetBit();
            mFoot2Cc[i].OffTgNoHitMark();
        }

        for (int i = 0; i < 6; i++) {
            mFootCc[iron_tg_cc[i]].OffTgSetBit();
            mFootCc[iron_tg_cc[i]].OnTgShield();
            mFootCc[iron_tg_cc[i]].OnTgIronBallRebound();
        }

        if (!setNextDamageMode(1)) {
            mFlyWarpPos.set(0.0f, 300.0f, 0.0f);
            field_0x711 = 1;
            setActionMode(ACT_WARP, 1);
            gravity = 0.0f;
        }
        break;
    }
}

/* 806471CC-806473E4 0091AC 0218+00 1/1 0/0 0/0 .text            setFarPillarPos__10daB_ZANT_cFv */
void daB_ZANT_c::setFarPillarPos() {
    fopAc_ac_c* sp48;
    cXyz sp44(daPy_getPlayerActorClass()->current.pos);
    int var_r28 = -1;
    f32 var_f31 = 0.0f;

    for (int i = 0; i < 8; i++) {
        if (i != field_0x70a) {
            fopAcM_SearchByID(field_0x73c[i], &sp48);
            if (sp48 != NULL) {
                f32 var_f30 = sp44.abs(sp48->current.pos);
                if (var_f30 > var_f31) {
                    var_r28 = i;
                    var_f31 = var_f30;
                }
            }
        }
    }

    if (var_r28 != -1) {
        fopAcM_SearchByID(field_0x73c[var_r28], &sp48);
        if (sp48 != NULL) {
            mFlyWarpPos = sp48->current.pos;
            mFlyWarpPos.y += 500.0f;
            field_0x709 = var_r28;
            field_0x708 = var_r28;
            field_0x70a = var_r28;
            field_0x71b = 1;
        }
    }
}

/* 806473E4-80647468 0093C4 0084+00 4/4 0/0 0/0 .text            setNearPillarPos__10daB_ZANT_cFv */
void daB_ZANT_c::setNearPillarPos() {
    fopAc_ac_c* sp48;
    fopAcM_SearchByID(field_0x73c[8], &sp48);

    if (sp48 != NULL) {
        mFlyWarpPos = sp48->current.pos;
        mFlyWarpPos.y += 500.0f;
        field_0x709 = 8;
        field_0x708 = 8;
        field_0x70a = 8;
        field_0x71b = 0;
    }
}

/* 80647468-806474F4 009448 008C+00 1/1 0/0 0/0 .text            setNextPillarInfo__10daB_ZANT_cFi
 */
void daB_ZANT_c::setNextPillarInfo(int param_0) {
    fopAc_ac_c* sp48;
    fopAcM_SearchByID(field_0x73c[param_0], &sp48);

    if (sp48 != NULL) {
        field_0x6ac = sp48->current.pos;
        field_0x6ac.y += 500.0f;
        field_0x708 = field_0x709;
        field_0x709 = param_0;
    }
}

/* 806474F4-80647A34 0094D4 0540+00 1/1 0/0 0/0 .text            setNextPillarPos__10daB_ZANT_cFv */
void daB_ZANT_c::setNextPillarPos() {
    fopAc_ac_c* sp54;
    cXyz sp44(daPy_getPlayerActorClass()->current.pos);
    int var_r26 = -1;
    f32 var_f31 = 10000.0f;

    if (field_0x708 != 8 && field_0x709 != 8 && cM_rnd() < 0.5) {
        fopAcM_SearchByID(field_0x73c[8], &sp54);

        if (sp54 != NULL && sp44.absXZ(sp54->current.pos) > 500.0f) {
            setNextPillarInfo(8);
            return;
        }
    }

    if (field_0x709 == 8) {
        fopAcM_SearchByID(field_0x73c[8], &sp54);
        if (sp54 != NULL) {
            cXyz sp50(sp54->current.pos);
            s16 sp8 = cLib_targetAngleY(&sp50, &sp44);

            for (int i = 0; i < 8; i++) {
                if (i != field_0x708 && i != field_0x709) {
                    fopAcM_SearchByID(field_0x73c[i], &sp54);
                    if (sp54 != NULL && abs((s16)(cLib_targetAngleY(&sp50, &sp54->current.pos) - sp8)) > 0x6000) {
                        setNextPillarInfo(i);
                        return;
                    }
                }
            }
        }
    }

    for (int i = 0; i < 8; i++) {
        if (i != field_0x708 && i != field_0x709) {
            fopAcM_SearchByID(field_0x73c[i], &sp54);
            if (sp54 != NULL && sp44.absXZ(sp54->current.pos) > 500.0f) {
                f32 var_f30 = current.pos.abs(sp54->current.pos);
                if (var_f30 < var_f31) {
                    var_r26 = i;
                    var_f31 = var_f30;
                }
            }
        }
    }

    if (var_r26 != -1) {
        setNextPillarInfo(var_r26);
    }
}

/* 80647A34-80647AC8 009A14 0094+00 1/1 0/0 0/0 .text            checkPillarSwing__10daB_ZANT_cFv */
void daB_ZANT_c::checkPillarSwing() {
    if (field_0x707 != 0) {
        fopAc_ac_c* sp48;
        fopAcM_SearchByID(field_0x73c[field_0x70a], &sp48);

        if (sp48 != NULL && ((daPillar_c*)sp48)->checkRollAttack()) {
            if (mAction != ACT_MONKEY_FALL) {
                setActionMode(ACT_MONKEY_FALL, 0);
            } else {
                setActionMode(ACT_MONKEY_FALL, 10);
            }
        }
    }
}

/* 80647AC8-806481F4 009AA8 072C+00 1/1 0/0 0/0 .text            executeMonkey__10daB_ZANT_cFv */
void daB_ZANT_c::executeMonkey() {
    fopAc_ac_c* sp30;

    switch (mMode) {
    case 0:
        gravity = -5.0f;
        field_0x707 = 1;
        setTgHitBit(FALSE);
        field_0x9e0[0].OnTgNoHitMark();
        field_0x9e0[1].OnTgNoHitMark();
        field_0x708 = field_0x709 = field_0x70a;

        if (mLastAction == ACT_WARP) {
            if (field_0x71b != 0) {
                field_0x71b = 0;
                field_0x703 = l_HIO.mBulletNum;
                field_0x711 = 0;
                setActionMode(ACT_SMALL_ATTACK, 0);
                setNextPillarPos();
                return;
            }

            setNextPillarPos();
            setBck(0x21, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            mMode = 8;
        } else if (mLastAction == ACT_SMALL_ATTACK) {
            mMode = 5;
            setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            field_0x6e8 = 0;
        } else {
            mMode = 5;
            setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        }

        field_0x70b = cM_rndF(2.9f) + 3.0f;
        field_0x6fd = 0;
        field_0x71b = 0;
        break;
    case 1:
        if (mpModelMorf->checkFrame(10) || mpModelMorf->checkFrame(14)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_LAND, -1);
        }

        if (mpModelMorf->isStop()) {
            field_0x6fd++;

            if (field_0x6fd >= field_0x70b) {
                if (mFightCycle != 0) {
                    setFarPillarPos();
                    field_0x711 = 0;
                    setActionMode(ACT_WARP, 1);
                } else {
                    setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
                    mMode = 2;
                }
            } else {
                mMode = 5;
                setBck(0x41, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            }
        }
        break;
    case 2:
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x800, 0x80);
        if (abs((s16)(shape_angle.y - fopAcM_searchPlayerAngleY(this))) < 0x2000) {
            field_0x703 = l_HIO.mBulletNum;
            field_0x711 = 0;
            setActionMode(ACT_SMALL_ATTACK, 0);
        }
        break;
    case 5:
        setTgHitBit(FALSE);
        setNextPillarPos();
        mMode = 6;
    case 6:
        cLib_addCalcAngleS2(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x6ac), 8, 0x800);

        if (field_0x6e8 == 0 && mAcch.i_ChkGroundHit()) {
            setBck(0x21, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
            mMode = 8;
        }
        break;
    case 8:
        cLib_addCalcAngleS2(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x6ac), 8, 0x800);

        if (mpModelMorf->checkFrame(13)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_V_JUMP, -1);
            field_0x6e8 = 18;
            speed.y = 45.0f;
            mMode = 9;
            field_0x707 = 0;

            fopAcM_SearchByID(field_0x73c[field_0x70a], &sp30);
            if (sp30 != NULL) {
                ((daPillar_c*)sp30)->setShake(2);
            }
        }
        break;
    case 9:
        if (field_0x6e8 != 0) {
            cXyz sp2C(field_0x6ac.x, current.pos.y, field_0x6ac.z);
            cLib_chasePosXZ(&current.pos, sp2C, field_0x6ac.absXZ(current.pos) / field_0x6e8);
        }

        if (field_0x6e8 == 8) {
            setBck(0x22, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        }

        if (mAcch.i_ChkGroundHit()) {
            current.pos = field_0x6ac;
            field_0x707 = 1;
            field_0x70a = field_0x709;
            
            fopAcM_SearchByID(field_0x73c[field_0x70a], &sp30);
            if (sp30 != NULL) {
                ((daPillar_c*)sp30)->setShake(2);
            }

            mMode = 1;
            field_0x6fd++;
        }
        break;
    case 100:
        target_info_count = 0;
        fpcM_Search(s_pillar_sub, this);

        if (target_info_count < 8 || field_0x73c[8] == fpcM_ERROR_PROCESS_ID_e) {
            for (int i = 0; i < 9; i++) {
                field_0x73c[i] = fpcM_ERROR_PROCESS_ID_e;
            }
        } else {
            setNearPillarPos();
            field_0x711 = 0;
            setActionMode(ACT_WARP, 1);
        }
        break;
    }
}

/* 806481F4-80648544 00A1D4 0350+00 2/1 0/0 0/0 .text            executeMonkeyFall__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeMonkeyFall() {
    switch (mMode) {
    case 0:
    case 20:
        setTgHitBit(TRUE);
        field_0x6e8 = 90;

        if (mMode == 20) {
            field_0x6e8 = 30;
        }

        setBck(10, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        mMode = 1;

        field_0x9e0[0].OffTgNoHitMark();
        field_0x9e0[1].OffTgNoHitMark();

        mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_V_OTT, -1);
    case 1:
        if (field_0x6e8 == 0) {
            setActionMode(ACT_MONKEY, 0);
        }
        break;
    case 10:
        setBck(11, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        mMode = 11;
        field_0x707 = 0;
        setTgHitBit(FALSE);
        speedF = 0.0f;
    case 11:
        if (mpModelMorf->checkFrame(5)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_V_FALL, -1);
        }

        if (mpModelMorf->isStop()) {
            cXyz sp20(-30.0f, -170.0f, -175.0f);
            cLib_offsetPos(&current.pos, &current.pos, shape_angle.y, &sp20);
            old.pos = current.pos;
            speed.y = -15.0f;
            speedF = 8.0f;
            current.angle.y = shape_angle.y + 0x8000;

            setBck(0x1C, J3DFrameCtrl::LOOP_ONCE_e, 0.0f, 0.0f);
            mMode = 12;

            field_0x9e0[0].OnAtSetBit();
            field_0x9e0[1].OnAtSetBit();
        }
        break;
    case 12:
        if (mAcch.i_ChkGroundHit()) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_MK_UMARU, 0, -1);
            setMonkeyFallEffect();
            dComIfGp_getVibration().StartShock(3, 31, cXyz(0.0f, 1.0f, 0.0f));

            field_0x9e0[0].OffAtSetBit();
            field_0x9e0[1].OffAtSetBit();

            speedF = 0.0f;
            mpModelMorf->setPlaySpeed(1.0f);
            mMode = 13;
            field_0x702 = 0;
            setTgHitBit(TRUE);
            field_0x6f0 = 120;
        }
        break;
    case 13:
        if (mpModelMorf->isStop()) {
            setActionMode(ACT_MONKEY_DAMAGE, 5);
        }
        break;
    }
}

/* 80648544-80648778 00A524 0234+00 1/1 0/0 0/0 .text            executeMonkeyDamage__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeMonkeyDamage() {
    switch (mMode) {
    case 0:
        if (setNextDamageMode(0)) {
            setTgHitBit(FALSE);
            return;
        }

        setBck(0x1D, J3DFrameCtrl::LOOP_ONCE_e, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        mMode = 1;
        field_0x702 = 0;
    case 1:
        if (field_0x6f0 == 0) {
            setTgHitBit(FALSE);
        }

        if (mpModelMorf->isStop()) {
            setBck(0x1E, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
            mMode = 10;
        }
        break;
    case 5:
    case 6:
        if (mMode == 5) {
            field_0x6f0 = 100;
            field_0x6ff = 0;
        } else if (field_0x6f0 < 30) {
            field_0x6f0 = 30;
        }

        setBck(0x1E, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        mMode = 10;
        field_0x702 = 0;
    case 10:
        if (mpModelMorf->checkFrame(1)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_V_MGGG, -1);
        }

        if (field_0x6f0 == 0) {
            setTgHitBit(FALSE);

            if (!setNextDamageMode(1)) {
                setNearPillarPos();
                field_0x711 = 0;
                setActionMode(ACT_WARP, 1);
            }
        }
        break;
    }
}

/* 8064EDB0-8064EDB4 000294 0004+00 0/2 0/0 0/0 .rodata          @8683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8683 = -200.0f;
COMPILER_STRIP_GATE(0x8064EDB0, &lit_8683);
#pragma pop

/* 8064EDB4-8064EDB8 000298 0004+00 0/1 0/0 0/0 .rodata          @8684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8684 = 8192.0f;
COMPILER_STRIP_GATE(0x8064EDB4, &lit_8684);
#pragma pop

/* 8064EDB8-8064EDBC 00029C 0004+00 0/1 0/0 0/0 .rodata          @8685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8685 = -1400.0f;
COMPILER_STRIP_GATE(0x8064EDB8, &lit_8685);
#pragma pop

/* 8064EDBC-8064EDC0 0002A0 0004+00 0/1 0/0 0/0 .rodata          @8686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8686 = 39.0f / 10.0f;
COMPILER_STRIP_GATE(0x8064EDBC, &lit_8686);
#pragma pop

/* 80648778-80648F64 00A758 07EC+00 5/5 0/0 0/0 .text            setLastWarp__10daB_ZANT_cFii */
void daB_ZANT_c::setLastWarp(int param_0, int param_1) {
    // NONMATCHING
}

/* 80648F64-806494A8 00AF44 0544+00 2/1 0/0 0/0 .text executeLastStartDemo__10daB_ZANT_cFv */
void daB_ZANT_c::executeLastStartDemo() {
    // NONMATCHING
}

/* 806494A8-8064A58C 00B488 10E4+00 2/1 0/0 0/0 .text            executeLastAttack__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeLastAttack() {
    // NONMATCHING
}

/* 8064A58C-8064A688 00C56C 00FC+00 1/1 0/0 0/0 .text            executeLastTired__10daB_ZANT_cFv */
void daB_ZANT_c::executeLastTired() {
    switch (mMode) {
    case 0:
        if (field_0x713 == 0) {
            field_0x6e8 = 120;
        } else if (field_0x713 == 1) {
            field_0x6e8 = 90;
        } else {
            field_0x6e8 = 60;
        }

        field_0x6f0 = field_0x6e8;
        mMode = 5;
        field_0x702 = 0;

        setTgShield(FALSE);
        setTgHitBit(TRUE);
        field_0x71d = 0;
        field_0x703 = 0;
        field_0x71c = 0;
        field_0x712 = 0;
    case 5:
        cLib_chaseF(&speedF, 0.0f, 1.0f);
        if (field_0x6e8 == 0) {
            setTgHitBit(FALSE);
            setLastWarp(1, 0);
        }
    }
}

/* 8064EDC0-8064EDC4 0002A4 0004+00 0/0 0/0 0/0 .rodata          @8793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8793 = 480.0f;
COMPILER_STRIP_GATE(0x8064EDC0, &lit_8793);
#pragma pop

/* 8064EDC4-8064EDC8 0002A8 0004+00 0/2 0/0 0/0 .rodata          @8794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8794 = -1000.0f;
COMPILER_STRIP_GATE(0x8064EDC4, &lit_8794);
#pragma pop

/* 8064EDC8-8064EDCC 0002AC 0004+00 0/0 0/0 0/0 .rodata          @8795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8795 = -600.0f;
COMPILER_STRIP_GATE(0x8064EDC8, &lit_8795);
#pragma pop

/* 8064EDCC-8064EDD0 0002B0 0004+00 0/0 0/0 0/0 .rodata          @8796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8796 = 90.0f;
COMPILER_STRIP_GATE(0x8064EDCC, &lit_8796);
#pragma pop

/* 8064EDD0-8064EDD4 0002B4 0004+00 0/0 0/0 0/0 .rodata          @8797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8797 = -900.0f;
COMPILER_STRIP_GATE(0x8064EDD0, &lit_8797);
#pragma pop

/* 8064EDD4-8064EDD8 0002B8 0004+00 0/0 0/0 0/0 .rodata          @8798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8798 = 97.0f;
COMPILER_STRIP_GATE(0x8064EDD4, &lit_8798);
#pragma pop

/* 8064EDD8-8064EDDC 0002BC 0004+00 0/0 0/0 0/0 .rodata          @8799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8799 = 72.0f;
COMPILER_STRIP_GATE(0x8064EDD8, &lit_8799);
#pragma pop

/* 8064EDDC-8064EDE0 0002C0 0004+00 0/0 0/0 0/0 .rodata          @8800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8800 = 103.0f;
COMPILER_STRIP_GATE(0x8064EDDC, &lit_8800);
#pragma pop

/* 8064EDE0-8064EDE4 0002C4 0004+00 0/0 0/0 0/0 .rodata          @8801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8801 = 134.0f;
COMPILER_STRIP_GATE(0x8064EDE0, &lit_8801);
#pragma pop

/* 8064EDE4-8064EDE8 0002C8 0004+00 0/0 0/0 0/0 .rodata          @8802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8802 = 128.0f;
COMPILER_STRIP_GATE(0x8064EDE4, &lit_8802);
#pragma pop

/* 8064EDE8-8064EDEC 0002CC 0004+00 0/0 0/0 0/0 .rodata          @9164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9164 = 33.0f;
COMPILER_STRIP_GATE(0x8064EDE8, &lit_9164);
#pragma pop

/* 8064EDEC-8064EDF0 0002D0 0004+00 0/0 0/0 0/0 .rodata          @9165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9165 = 512.0f;
COMPILER_STRIP_GATE(0x8064EDEC, &lit_9165);
#pragma pop

/* 8064EDF0-8064EDF4 0002D4 0004+00 0/0 0/0 0/0 .rodata          @9166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9166 = 768.0f;
COMPILER_STRIP_GATE(0x8064EDF0, &lit_9166);
#pragma pop

/* 8064EDF4-8064EDF8 0002D8 0004+00 0/0 0/0 0/0 .rodata          @9167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9167 = -45.0f;
COMPILER_STRIP_GATE(0x8064EDF4, &lit_9167);
#pragma pop

/* 8064EDF8-8064EDFC 0002DC 0004+00 0/1 0/0 0/0 .rodata          @9168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9168 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8064EDF8, &lit_9168);
#pragma pop

/* 8064EDFC-8064EE00 0002E0 0004+00 0/1 0/0 0/0 .rodata          @9306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9306 = 38.0f;
COMPILER_STRIP_GATE(0x8064EDFC, &lit_9306);
#pragma pop

/* 8064A688-8064AC20 00C668 0598+00 2/1 0/0 0/0 .text            executeLastDamage__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeLastDamage() {
    // NONMATCHING
}

/* 8064AC20-8064AC8C 00CC00 006C+00 1/1 0/0 0/0 .text            s_del_tp__FPvPv */
static void* s_del_tp(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_OBJ_TP) {
            fopAcM_delete((fopAc_ac_c*)i_actor);
        }
    }

    return NULL;
}

/* 8064EE00-8064EE04 0002E4 0004+00 0/2 0/0 0/0 .rodata          @9432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9432 = 120.0f;
COMPILER_STRIP_GATE(0x8064EE00, &lit_9432);
#pragma pop

/* 8064EE04-8064EE08 0002E8 0004+00 0/1 0/0 0/0 .rodata          @9433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9433 = -750.0f;
COMPILER_STRIP_GATE(0x8064EE04, &lit_9433);
#pragma pop

/* 8064EE08-8064EE0C 0002EC 0004+00 0/1 0/0 0/0 .rodata          @9434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9434 = 80.0f;
COMPILER_STRIP_GATE(0x8064EE08, &lit_9434);
#pragma pop

/* 8064EE0C-8064EE10 0002F0 0004+00 0/1 0/0 0/0 .rodata          @9435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9435 = 44.0f;
COMPILER_STRIP_GATE(0x8064EE0C, &lit_9435);
#pragma pop

/* 8064EE10-8064EE14 0002F4 0004+00 0/1 0/0 0/0 .rodata          @9436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9436 = 205.0f;
COMPILER_STRIP_GATE(0x8064EE10, &lit_9436);
#pragma pop

/* 8064EE14-8064EE18 0002F8 0004+00 0/1 0/0 0/0 .rodata          @9437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9437 = 230.0f;
COMPILER_STRIP_GATE(0x8064EE14, &lit_9437);
#pragma pop

/* 8064EE18-8064EE1C 0002FC 0004+00 0/1 0/0 0/0 .rodata          @9438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9438 = 150.0f;
COMPILER_STRIP_GATE(0x8064EE18, &lit_9438);
#pragma pop

/* 8064EE1C-8064EE20 000300 0004+00 0/1 0/0 0/0 .rodata          @9439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9439 = 340.0f;
COMPILER_STRIP_GATE(0x8064EE1C, &lit_9439);
#pragma pop

/* 8064EE20-8064EE24 000304 0004+00 0/1 0/0 0/0 .rodata          @9440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9440 = 360.0f;
COMPILER_STRIP_GATE(0x8064EE20, &lit_9440);
#pragma pop

/* 8064EE24-8064EE28 000308 0004+00 0/1 0/0 0/0 .rodata          @9441 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9441 = 375.0f;
COMPILER_STRIP_GATE(0x8064EE24, &lit_9441);
#pragma pop

/* 8064EE60-8064EE60 000344 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8064EE7C = "D_MN08A";
#pragma pop

/* 8064AC8C-8064B270 00CC6C 05E4+00 1/1 0/0 0/0 .text            executeLastEndDemo__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeLastEndDemo() {
    // NONMATCHING
}

/* 8064B270-8064B49C 00D250 022C+00 1/1 0/0 0/0 .text            calcMahojinAnime__10daB_ZANT_cFv */
void daB_ZANT_c::calcMahojinAnime() {
    // NONMATCHING
}

/* 8064B49C-8064B69C 00D47C 0200+00 2/2 0/0 0/0 .text calcRoomChangeCamera__10daB_ZANT_cFi */
void daB_ZANT_c::calcRoomChangeCamera(int param_0) {
    cXyz sp20(-100.0f, 87.0f, -160.0f);
    cXyz sp2C(106.0f, 483.0f, 843.0f);

    if (param_0 == 1) {
        cXyz sp38(-20.0f, -40.0f, -100.0f);
        sp20 += sp38;
        sp2C += sp38;
    }

    if (mFightPhase == 0) {
        sp20.x += 140.0f;
        sp2C.x += 140.0f;

        mDoMtx_stack_c::YrotS(-0x8000);
        mDoMtx_stack_c::transM(sp20);
        mDoMtx_stack_c::multVecZero(&sp20);

        sp20.y += 250.0f;
        sp20.z -= 800.0f;

        mDoMtx_stack_c::YrotS(-0x8000);
        mDoMtx_stack_c::transM(sp2C);
        mDoMtx_stack_c::multVecZero(&sp2C);

        sp2C.y += 250.0f;
        sp2C.z -= 800.0f;
    }

    switch (param_0) {
    case 0:
        field_0x778 = 58.0f;
        cLib_chaseF(&field_0x77c, 30.0f, 1.0f);
        cLib_addCalcPos(&field_0x760, sp20, 0.3f, field_0x77c * 1.1f, 3.0f);
        cLib_addCalcPos(&field_0x76c, sp2C, 0.3f, field_0x77c, 3.0f);
        break;
    case 1:
        cLib_addCalcPos(&field_0x760, sp20, 0.2f, 15.0f, 3.0f);
        cLib_addCalcPos(&field_0x76c, sp2C, 0.2f, 15.0f, 3.0f);
        break;
    }
}

/* 8064B69C-8064B868 00D67C 01CC+00 3/3 0/0 0/0 .text            initNextRoom__10daB_ZANT_cFv */
void daB_ZANT_c::initNextRoom() {
    field_0x70f = 0;
    field_0x6f0 = 0;
    field_0x70e = 0;
    field_0x710 = 0;

    setTgType(0xD8FBFDFF);
    field_0x9e0[0].OffTgNoHitMark();
    field_0x9e0[1].OffTgNoHitMark();

    dComIfGs_offSaveDunSwitch(20);
    dComIfGs_offSaveDunSwitch(21);
    dComIfGs_offSaveDunSwitch(22);

    if (mFightPhase != 6) {
        health = 280;
    } else {
        health = field_0x560;
    }

    mAcchCir.SetWall(100.0f, 100.f);

    if (mFightPhase == 2) {
        attention_info.distances[fopAc_attn_BATTLE_e] = 4;
    } else {
        attention_info.distances[fopAc_attn_BATTLE_e] = 24;
    }

    fopAc_ac_c* sp28;
    fopAcM_SearchByID(mMobileIDs[0], &sp28);

    if (mFightPhase == 3) {
        fopAcM_OnStatus(this, 0x80000);

        if (sp28 == NULL) {
            cXyz sp24(0.0f, -3300.0f, 0.0f);
            for (int i = 0; i < 4; i++) {
                mMobileIDs[i] = fopAcM_create(PROC_B_ZANTZ, i | 0xFFFFFF00, &sp24, warp_next_room[mFightPhase], &shape_angle, NULL, -1);
            }

            field_0x728 = 0;
        }
    } else {
        fopAcM_OffStatus(this, 0x80000);

        if (sp28 != NULL) {
            fopAcM_delete(sp28);
            mMobileIDs[0] = fpcM_ERROR_PROCESS_ID_e;
        }
    }

    tevStr.mRoomNo = warp_next_room[mFightPhase];
}

/* 8064B868-8064C1C0 00D848 0958+00 2/1 0/0 0/0 .text            executeRoomChange__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeRoomChange() {
    dCamera_c* camera = dCam_getBody();
    cXyz sp34(0.0f, 0.0f, 0.0f);
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mMode) {
    case 0:
        setTgHitBit(FALSE);
        if (!eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.i_onCondition(2);
            return;
        }

        camera->Stop();
        camera->SetTrimSize(3);
        
        field_0x76c = dCam_getBody()->Center();
        field_0x760 = dCam_getBody()->Eye();
        field_0x778 = dCam_getBody()->Fovy();

        field_0x705 = 0;
        mMode = 1;

        if (mFightPhase != 4) {
            setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);
        }

        dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
        mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_OUT, 0, -1);
        break;
    case 1:
        if (calcScale(0)) {
            mMode = 4;
            field_0x6e8 = l_HIO.mDemoWarpTime;
        }
        break;
    case 4:
        if (field_0x6e8 == 0) {
            mMode = 10;
            field_0x6e8 = 15;

            current.pos.set(-140.0f, 300.0f, 700.0f);
            old.pos = current.pos;
            speedF = 0.0f;
            speed.y = 0.0f;
            gravity = 0.0f;

            shape_angle.x = 0;
            current.angle.y = 0x8000;
            shape_angle.y = 0x8000;

            setBck(0x12, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);

            player->setPlayerPosAndAngle(&sp34, 0, 0);
            player->changeOriginalDemo();
            player->changeDemoPos0(&sp34);
            player->changeDemoMode(0x17, 1, 4, 0);

            field_0x778 = 65.0f;
            field_0x760.set(-225.0f, 344.0f, 382.0f);
            field_0x76c.set(118.0f, 672.0f, 1374.0f);

            Z2GetAudioMgr()->changeBgmStatus(13);
            field_0x77c = 0.0f;

            calcRoomChangeCamera(0);

            if (mFightPhase == 3) {
                for (int i = 0; i < 4; i++) {
                    fopAc_ac_c* sp8C;
                    fopAcM_SearchByID(mMobileIDs[i], &sp8C);

                    if (sp8C != NULL) {
                        fopAcM_delete(sp8C);
                        mMobileIDs[i] = fpcM_ERROR_PROCESS_ID_e;
                    }
                }
            }
            field_0x6fc = 1;
        }
        break;
    case 10:
        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (field_0x6e8 == 0) {
            dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
            mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_IN, 0, -1);
            mMode = 11;
        }
        break;
    case 11:
        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (calcScale(1)) {
            mMode = 12;
            field_0x6e8 = 20;
        }
        break;
    case 12:
        if (field_0x6e8 == 0) {
            mMode = 13;
            field_0x6e8 = 50;
        }
        break;
    case 13:
        calcRoomChangeCamera(0);

        if (field_0x6e8 == 0) {
            mMode = 14;
            setBck(0xD, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 1.0f);
            field_0x714 = 1;
            field_0x6c8 = 0.0f;

            static u32 mahojin_se[] = {
                Z2SE_EN_ZAN_MAHOJIN_BB,
                Z2SE_EN_ZAN_MAHOJIN_MG,
                Z2SE_EN_ZAN_MAHOJIN_OI,
                Z2SE_EN_ZAN_MAHOJIN_MK,
                Z2SE_EN_ZAN_MAHOJIN_YO,
                Z2SE_EN_ZAN_MAHOJIN_CTL,
            };

            mSound.startCreatureSound(mahojin_se[mFightPhase], 0, -1);
        }
        break;
    case 14:
        cLib_chaseF(&field_0x6c8, 1.0f, 0.02f);

        if (mpModelMorf->checkFrame(42.0f)) {
            field_0x5e8 = 1;
            Z2GetAudioMgr()->changeBgmStatus(mFightPhase + 7);
        }

        if (mpModelMorf->checkFrame(42.0f)) {
            field_0x715 = 30;
        }

        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (mpModelMorf->isStop()) {
            dComIfGp_getVibration().StopQuake(0x1F);
            setBck(0xE, J3DFrameCtrl::LOOP_REPEAT_e, 3.0f, 1.0f);

            mFightPhase++;
            if (mFightPhase >= 7) {
                mFightPhase = 0;
            }

            mMode = 15;
            field_0x6e8 = l_HIO.mMahojinWaitTime;

            initNextRoom();
            cXyz sp40(0.0f, 0.0f, 0.0f);
            dComIfGs_setRestartRoom(sp40, 0, warp_next_room[mFightPhase]);
        }
        break;
    case 15:
        if (field_0x6e8 == 0 && dComIfGp_roomControl_checkStatusFlag(warp_next_room[mFightPhase], 0x10)) {
            mMode = 16;
            field_0x714 = 0;
            field_0x6c8 = 0.0f;

            setBck(0x13, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 1.0f);
            field_0x5e8 = 4;
        }
        break;
    case 16:
        cLib_chaseF(&field_0x6c8, 1.0f, 0.02f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);

        if (mpModelMorf->isStop()) {
            if (mFightPhase != 6) {
                camera->Reset(field_0x76c, field_0x760);
                camera->Start();
                camera->SetTrimSize(0);
                dComIfGp_event_reset();
            }

            field_0x6fc = 0;
            setTgHitBit(TRUE);
            setBaseActionMode(1);
            return;
        }
        break;
    }

    if (field_0x715 != 0) {
        calcRoomChangeCamera(1);
        field_0x715--;
    }

    camera->Set(field_0x76c, field_0x760, field_0x778, 0);
}

/* 8064C1C0-8064C5A8 00E1A0 03E8+00 8/7 0/0 0/0 .text            setBaseActionMode__10daB_ZANT_cFi
 */
void daB_ZANT_c::setBaseActionMode(int param_0) {
    // NONMATCHING
}

/* 8064C5A8-8064CB1C 00E588 0574+00 2/1 0/0 0/0 .text            action__10daB_ZANT_cFv */
void daB_ZANT_c::action() {
    if (mFightPhase == 5) {
        ice_damage_check();
    } else {
        damage_check();
    }

    switch (mAction) {
    case ACT_SMALL_ATTACK:
        executeSmallAttack();
        break;
    case ACT_WARP:
        executeWarp();
        break;
    case ACT_DAMAGE:
        executeDamage();
        break;
    case ACT_CONFUSE:
        executeConfuse();
        break;
    case ACT_OPENING:
        executeOpening();
        break;
    case ACT_FLY:
        executeFly();
        break;
    case ACT_FLY_GROUND:
        executeFlyGround();
        break;
    case ACT_WATER:
        executeWater();
        break;
    case ACT_HOOK:
        executeHook();
        break;
    case ACT_SWIM:
        executeSwim();
        break;
    case ACT_SIMA_JUMP:
        executeSimaJump();
        break;
    case ACT_ICE_DEMO:
        executeIceDemo();
        break;
    case ACT_ICE_JUMP:
        executeIceJump();
        break;
    case ACT_ICE_STEP:
        executeIceStep();
        break;
    case ACT_ICE_DAMAGE:
        executeIceDamage();
        break;
    case ACT_MONKEY:
        executeMonkey();
        break;
    case ACT_MONKEY_FALL:
        executeMonkeyFall();
        break;
    case ACT_MONKEY_DAMAGE:
        executeMonkeyDamage();
        break;
    case ACT_LAST_START_DEMO:
        executeLastStartDemo();
        break;
    case ACT_LAST_ATTACK:
        executeLastAttack();
        break;
    case ACT_LAST_TIRED:
        executeLastTired();
        break;
    case ACT_LAST_DAMAGE:
        executeLastDamage();
        break;
    case ACT_LAST_END_DEMO:
        executeLastEndDemo();
        break;
    case ACT_ROOM_CHANGE:
        executeRoomChange();
        break;
    }

    if (mAction != ACT_OPENING) {
        daPy_getPlayerActorClass()->onBossRoomWait();
    }

    cXyz sp40(0.0f, 0.0f, 0.0f);

    switch (mFightPhase) {
    case 1:
        if (field_0x70c == 0) {
            dComIfGs_onOneZoneSwitch(0, fopAcM_GetRoomNo(this));
        } else {
            dComIfGs_offOneZoneSwitch(0, fopAcM_GetRoomNo(this));
        }
        break;
    case 2:
        break;
    case 5:
        if (checkBck(0x12) && mpModelMorf->checkFrame(1.0f)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_YO_FLOAT_WAIT, 0, -1);
        }

        {
            f32 var_f31 = field_0x6c0 * 50.0f;
            if (var_f31 < 100.0f) {
                var_f31 = 100.0f;
            }

            mAcchCir.SetWall(100.0f, var_f31);
        }
        
        dComIfGs_offSaveDunSwitch(20);
        dComIfGs_offSaveDunSwitch(21);
        dComIfGs_offSaveDunSwitch(22);

        switch (field_0x70e) {
        case 1:
            dComIfGs_onSaveDunSwitch(20);
            break;
        case 2:
            dComIfGs_onSaveDunSwitch(21);
            break;
        case 3:
            dComIfGs_onSaveDunSwitch(22);
            break;
        }

        field_0x38b4 = dComIfGp_particle_set(field_0x38b4, 0x87B0, &sp40, &tevStr);
        break;
    case 3:
        setWaterBubble();
        checkSwimLinkNear();
        dComIfGs_onOneZoneSwitch(0, fopAcM_GetRoomNo(this));
        break;
    case 4:
        checkPillarSwing();
        break;
    case 6:
        break;
    }

    s16 var_r29 = fopAcM_searchPlayerAngleX(this);
    s16 var_r26 = 0;
    s16 var_r27 = 0;

    if (field_0x717 != 0) {
        if (var_r29 > 0x2800) {
            var_r29 = 0x2800;
        }

        if (var_r29 < -0x2800) {
            var_r29 = -0x2800;
        }

        if (abs(var_r29) < 0x1800) {
            var_r26 = 0;
            var_r27 = var_r29;
        } else if (var_r29 > 0) {
            var_r27 = 0x1800;
            var_r26 = (s16)(var_r29 - 0x1800);
        } else {
            var_r27 = -0x1800;
            var_r26 = (s16)(var_r29 + 0x1800);
        }
    }

    var_r29 = fopAcM_searchPlayerAngleY(this);
    s16 var_r25 = 0;

    if (field_0x716 != 0) {
        if (var_r29 > 0x2000) {
            var_r29 = 0x2000;
        }

        if (var_r29 < -0x2000) {
            var_r29 = -0x2000;
        }

        var_r25 = var_r29;
    }

    cLib_addCalcAngleS(&field_0x71e, var_r26, 8, 0x400, 0x80);
    cLib_addCalcAngleS(&field_0x720, var_r25, 8, 0x400, 0x80);
    cLib_addCalcAngleS(&field_0x722, var_r27, 8, 0x400, 0x80);

    calcMahojinAnime();

    dStage_roomControl_c::onNoChangeRoom();
    dStage_roomControl_c::setRoomReadId(warp_next_room[mFightPhase]);

    if (field_0x6fc != 0) {
        dStage_RoomCheck(NULL);
    }

    fopAcM_posMoveF(this, field_0x9a4.GetCCMoveP());

    if (field_0x705 == 0) {
        mAcch.CrrPos(dComIfG_Bgsp());
    }

    u32 sp44 = field_0x6c4 * 100.0f;
    mpModelMorf->play(sp44, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 8064CB1C-8064CD0C 00EAFC 01F0+00 2/2 0/0 0/0 .text            mtx_set__10daB_ZANT_cFv */
void daB_ZANT_c::mtx_set() {
    // NONMATCHING
}

/* 8064CD0C-8064CFA8 00ECEC 029C+00 1/1 0/0 0/0 .text            cc_set__10daB_ZANT_cFv */
void daB_ZANT_c::cc_set() {
    // NONMATCHING
}

/* 8064CFA8-8064DA48 00EF88 0AA0+00 1/1 0/0 0/0 .text            cc_ice_set__10daB_ZANT_cFv */
void daB_ZANT_c::cc_ice_set() {
    // NONMATCHING
    static u8 ice_sph_jnt[132] = {
        0x00, 0x00, 0x00, 0x23, 0x41, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x22, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00,
        0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x41, 0xA0, 0x00, 0x00, 0x41,
        0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x41, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x25, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x25, 0x00, 0x00, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x41, 0xA0,
        0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x42,
        0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x03, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00,
    };
}

/* 8064DA48-8064DB48 00FA28 0100+00 1/1 0/0 0/0 .text            execute__10daB_ZANT_cFv */
int daB_ZANT_c::execute() {
    if (field_0x6e8 != 0) {
        field_0x6e8--;
    }

    if (field_0x6ec != 0) {
        field_0x6ec--;
    }

    if (field_0x6e4 != 0) {
        field_0x6e4--;
    }

    if (field_0x6f0 != 0) {
        field_0x6f0--;
    }

    if (field_0x6f4 != 0) {
        field_0x6f4--;
    }

    switch (field_0x714) {
    case 0:
        dKy_custom_colset(10, 0, field_0x6c8);
        break;
    case 1:
        dKy_custom_colset(0, 10, field_0x6c8);
        break;
    }

    action();
    mtx_set();

    if (mFightPhase == 5) {
        cc_ice_set();
    } else {
        cc_set();
    }

    return 1;
}

/* 8064DB48-8064DB68 00FB28 0020+00 1/0 0/0 0/0 .text            daB_ZANT_Execute__FP10daB_ZANT_c */
static int daB_ZANT_Execute(daB_ZANT_c* i_this) {
    return i_this->execute();
}

/* 8064DB68-8064DB70 00FB48 0008+00 1/0 0/0 0/0 .text            daB_ZANT_IsDelete__FP10daB_ZANT_c
 */
static int daB_ZANT_IsDelete(daB_ZANT_c* i_this) {
    return 1;
}

/* 8064DB70-8064DBE4 00FB50 0074+00 1/1 0/0 0/0 .text            _delete__10daB_ZANT_cFv */
int daB_ZANT_c::_delete() {
    dComIfG_resDelete(&mPhase, "B_zan");
    
    if (field_0x38b8) {
        data_8064F5F5 = false;
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 8064DBE4-8064DC04 00FBC4 0020+00 1/0 0/0 0/0 .text            daB_ZANT_Delete__FP10daB_ZANT_c */
static int daB_ZANT_Delete(daB_ZANT_c* i_this) {
    return i_this->_delete();
}

/* 8064DC04-8064E128 00FBE4 0524+00 1/1 0/0 0/0 .text            CreateHeap__10daB_ZANT_cFv */
int daB_ZANT_c::CreateHeap() {
    // NONMATCHING
}

/* 8064E170-8064E190 010150 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return ((daB_ZANT_c*)i_this)->CreateHeap();
}

/* 8064E190-8064E724 010170 0594+00 1/1 0/0 0/0 .text            create__10daB_ZANT_cFv */
int daB_ZANT_c::create() {
    fopAcM_SetupActor(this, daB_ZANT_c);
    OS_REPORT("B_ZANT PARAM %x\n", fopAcM_GetParam(this));

    field_0x6fa = fopAcM_GetParam(this);
    if (field_0x6fa != 0xFF) {
        if (dComIfGs_isSwitch(field_0x6fa, fopAcM_GetRoomNo(this))) {
            OS_REPORT("B_ZANT やられ後なので再セットしません\n");
            return cPhs_ERROR_e;
        }
    }

    fopAcM_setStageLayer(this);

    int phase_state = dComIfG_resLoad(&mPhase, "B_zan");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x8F80)) {
            return cPhs_ERROR_e;
        }

        if (!data_8064F5F5) {
            data_8064F5F5 = true;
            field_0x38b8 = true;
            l_HIO.field_0x4 = -1;
        }

        attention_info.flags = 4;
        attention_info.distances[fopAc_attn_BATTLE_e] = 24;

        fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcchCir.SetWall(100.0f, 100.0f);

        health = 600;
        field_0x560 = 600;

        field_0x9a4.Init(0xFE, 0, this);
    
        field_0x9e0[0].Set(cc_zant_src);
        field_0x9e0[0].SetStts(&field_0x9a4);

        field_0x9e0[1].Set(cc_zant_src);
        field_0x9e0[1].SetStts(&field_0x9a4);

        mRollCc.Set(cc_zant_roll_src);
        mRollCc.SetStts(&field_0x9a4);

        mSwordCc[0].Set(cc_zant_sword_src);
        mSwordCc[0].SetStts(&field_0x9a4);
        mSwordCc[1].Set(cc_zant_sword_src);
        mSwordCc[1].SetStts(&field_0x9a4);

        field_0xc74.Init(0xFE, 0, this);
        for (int i = 0; i < 11; i++) {
            mFoot2Cc[i].Set(cc_zant_foot_src2);
            mFoot2Cc[i].SetStts(&field_0xc74);

            mFootCc[i].Set(cc_zant_foot_src);
            mFootCc[i].SetStts(&field_0xc74);

            mCameraCc[i].Set(cc_zant_camera_src);
            mCameraCc[i].SetStts(&field_0xc74);
        }

        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setEnemyName("B_zant");
        
        mAtInfo.mpSound = &mSound;
        mAtInfo.mPowerType = 0;
        gravity = 0.0f;

        for (int i = 0; i < 9; i++) {
            field_0x73c[i] = fpcM_ERROR_PROCESS_ID_e;
        }

        for (int i = 0; i < 4; i++) {
            mMobileIDs[i] = fpcM_ERROR_PROCESS_ID_e;
        }

        field_0x724 = -1;

        if (dComIfGp_roomControl_getStayNo() == 60) {
            mFightPhase = 6;
            field_0x718 = 1;
        } else if (dComIfGp_roomControl_getStayNo() == 50) {
            mFightPhase = 0;
        } else {
            mFightPhase = dComIfGp_roomControl_getStayNo() - 52;
            if (mFightPhase >= 7) {
                mFightPhase = 1;
            }
        }

        if (mFightPhase != 0) {
            Z2GetAudioMgr()->bgmStart(Z2BGM_BOSS_ZANT, 0, 0);
            Z2GetAudioMgr()->changeBgmStatus(mFightPhase);
        }

        initNextRoom();
        field_0x6c8 = 1.0f;
        setBaseActionMode(1);

        if (mFightPhase == 1) {
            field_0x70b = 0;
        }

        field_0x6c0 = 1.0f;
        field_0x6c4 = 1.0f;

        onWolfNoLock();
        mtx_set();
    }

    return phase_state;
}

/* 8064E92C-8064E94C 01090C 0020+00 1/0 0/0 0/0 .text            daB_ZANT_Create__FP10daB_ZANT_c */
static int daB_ZANT_Create(daB_ZANT_c* i_this) {
    return i_this->_delete();
}

/* 8064F4AC-8064F4CC -00001 0020+00 1/0 0/0 0/0 .data            l_daB_ZANT_Method */
static actor_method_class l_daB_ZANT_Method = {
    (process_method_func)daB_ZANT_Create,
    (process_method_func)daB_ZANT_Delete,
    (process_method_func)daB_ZANT_Execute,
    (process_method_func)daB_ZANT_IsDelete,
    (process_method_func)daB_ZANT_Draw,
};

/* 8064F4CC-8064F4FC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_ZANT */
extern actor_process_profile_definition g_profile_B_ZANT = {
  fpcLy_CURRENT_e,              // mLayerID
  4,                            // mListID
  fpcPi_CURRENT_e,              // mListPrio
  PROC_B_ZANT,                  // mProcName
  &g_fpcLf_Method.mBase,        // sub_method
  sizeof(daB_ZANT_c),           // mSize
  0,                            // mSizeOther
  0,                            // mParameters
  &g_fopAc_Method.base,         // sub_method
  226,                          // mPriority
  &l_daB_ZANT_Method,           // sub_method
  0x00040000,                   // mStatus
  fopAc_ENEMY_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,       // cullType
};

AUDIO_INSTANCES;
