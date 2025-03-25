/**
 * @file d_a_b_zant.cpp
 * 
*/

#include "d/actor/d_a_b_zant.h"
#include "d/actor/d_a_b_zant_mobile.h"
#include "d/actor/d_a_nbomb.h"
#include "d/actor/d_a_obj_pillar.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_mirror.h"
#include "d/d_s_play.h"
#include "f_op/f_op_msg_mng.h"
#include "SSystem/SComponent/c_math.h"
#include "Z2AudioLib/Z2Instances.h"
#include "JSystem/JAudio2/JAUSectionHeap.h"
#include <cmath.h>

/* ANIMATION IDS */
#define ANM_DAMAGE_L_A         7
#define ANM_DAMAGE_R_A         8
#define ANM_DIE_DEMO           9
#define ANM_FAINT              10
#define ANM_FALL               11
#define ANM_FLOAT_APPEAR       12
#define ANM_FLOAT_APPEAR_SHORT 13
#define ANM_FLOAT_APPEAR_WAIT  14
#define ANM_FLOAT_DAMAGE_L     15
#define ANM_FLOAT_DAMAGE_R     16
#define ANM_FLOAT_REACTION     17
#define ANM_FLOAT_WAIT         18
#define ANM_FLOAT_WAIT_RETURN  19
#define ANM_GROUND_REACTION    20
#define ANM_HOOK_HIT           21
#define ANM_HOOK_RELEASE       22
#define ANM_HOOK_WAIT          23
#define ANM_HUGE               24
#define ANM_HUGE_LANDING       25
#define ANM_JUMP_A             26
#define ANM_JUMP_B             27
#define ANM_LANDING            28
#define ANM_LANDING_DAMAGE     29
#define ANM_LANDING_WAIT       30
#define ANM_LAST_DEMO          31
#define ANM_LV1_FATIGUE        32
#define ANM_LV1_JUMP_A         33
#define ANM_LB1_JUMP_B         34
#define ANM_MAGIC_SHOOT_A_A    35
#define ANM_MAGIC_SHOOT_A_B    36
#define ANM_MAGIC_SHOOT_A_B_A  37
#define ANM_MAGIC_SHOOT_A_B_B  38
#define ANM_MAGIC_SHOOT_A_B_C  39
#define ANM_MAGIC_SHOOT_A_C    40
#define ANM_MAGIC_SHOOT_A_D    41
#define ANM_OP_1               42
#define ANM_OP_2               43
#define ANM_OP_3               44
#define ANM_OP_RISE            45
#define ANM_SHIND_L            46
#define ANM_SHIND_R            47
#define ANM_SPIN               48
#define ANM_SWAMP_FALL_A       49
#define ANM_SWAMP_FALL_B       50
#define ANM_SWAMP_FALL_LOOP    51
#define ANM_SWAMP_LANDING      52
#define ANM_SWIM               53
#define ANM_SW_ATTACK          54
#define ANM_SW_ATTACK_B        55
#define ANM_SW_DAMAGE_L        56
#define ANM_SW_DAMAGE_R        57
#define ANM_SW_FATIGUE         58
#define ANM_SW_WAIT            59
#define ANM_SW_WALK            60
#define ANM_TRAMPLE_A          61
#define ANM_TRAMPLE_B          62
#define ANM_TRAMPLE_C          63
#define ANM_TRAMPLE_D          64
#define ANM_WAIT               65

/* JOINT IDS */
#define JNT_CENTER     0
#define JNT_BACKBONE   1
#define JNT_NECK       2
#define JNT_HEAD       3
#define JNT_CHIN       4
#define JNT_HELMET     5
#define JNT_TONGUE1    6
#define JNT_TONGUE2    7
#define JNT_TONGUE3    8
#define JNT_TONGUE4    9
#define JNT_TONGUE5    10
#define JNT_MOUTH      11
#define JNT_SHOULDER_L 12
#define JNT_ARM_L1     13
#define JNT_ARM_L2     14
#define JNT_ARM_L3     15
#define JNT_ARM_L4     16
#define JNT_HIRA_LB1   17
#define JNT_HIRA_LB2   18
#define JNT_HIRA_LF1   19
#define JNT_HIRA_LF2   20
#define JNT_SPAD_L     21
#define JNT_SHOULDER_R 22
#define JNT_ARM_R1     23
#define JNT_ARM_R2     24
#define JNT_ARM_R3     25
#define JNT_ARM_R4     26
#define JNT_HIRA_RB1   27
#define JNT_HIRA_RB2   28
#define JNT_HIRA_RF1   29
#define JNT_HIRA_RF2   30
#define JNT_SPAD_R     31
#define JNT_WAIST      32
#define JNT_LEG_L1     33
#define JNT_LEG_L2     34
#define JNT_FOOT_L     35
#define JNT_LEG_R1     36
#define JNT_LEG_R2     37
#define JNT_FOOT_R     38
#define JNT_TARE_B1    39
#define JNT_TARE_B2    40
#define JNT_TARE_F1    41
#define JNT_TARE_F2    42

enum OPENING_MODE {
    MODE_START_DEMO,
    MODE_START_DEMO_WAIT,
    MODE_PAN_GROUND,

    MODE_MSG_1 = 4,
    MODE_MSG_1_WAIT,
    MODE_WARP_OUT_SE,
    MODE_START_WARP,

    MODE_WARP_WAIT = 100,
    MODE_PAN_THRONE,
    MODE_ZOOM_THRONE,
    MODE_MSG_2,
    MODE_FLY_UP,
    MODE_CLOSE_UP,
    MODE_SET_BOSS_TITLE,

    MODE_WARP_IN_SE = 20,
    MODE_WARP_IN_SCALE,
    MODE_WARP_IN_WAIT,
    MODE_ZOOM_OUT_ROOM_CHANGE,
    MODE_START_ROOM_CHANGE,
    MODE_ROOM_CHANGE,
    MODE_END_ROOM_CHANGE,
    MODE_END_DEMO,
};

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
    case JNT_BACKBONE:
        mDoMtx_stack_c::ZrotM(mBackboneRotZ);
        break;
    case JNT_NECK:
        mDoMtx_stack_c::ZXYrotM(mNeckRotX, 0, mNeckRotZ);
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
    if (mFightPhase == PHASE_YO) {
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

    if (mDrawSwords) {
        g_env_light.setLightTevColorType_MAJI(mpSwordLModel, &tevStr);
        mDoExt_modelUpdateDL(mpSwordLModel);
        dComIfGd_addRealShadow(mShadowKey, mpSwordLModel);

        g_env_light.setLightTevColorType_MAJI(mpSwordRModel, &tevStr);
        mDoExt_modelUpdateDL(mpSwordRModel);
        dComIfGd_addRealShadow(mShadowKey, mpSwordRModel);
    }

    if (mMahojinAnmMode != 0) {
        g_env_light.setLightTevColorType_MAJI(mpMahojinModel, &tevStr);
        mpMahojinBrk->entry(mpMahojinModel->getModelData());
        mpMahojinBtk->entry(mpMahojinModel->getModelData());
        mpMahojinStartBtk->entry(mpMahojinModel->getModelData());
        
        mDoExt_modelUpdateDL(mpMahojinModel);

        if (mMahojin2AnmMode) {
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
    mSwordSize = 1.0f;
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
    BOOL taken_big_dmg = false;

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD) && daPy_py_c::checkMasterSwordEquip()) {
        if (mAtInfo.mpCollider->GetAtAtp() >= 4) {
            taken_big_dmg = true;
        } else if (player->getSwordAtUpTime() != 0) {
            taken_big_dmg = true;
        } else if (player->getCutCount() >= 4) {
            taken_big_dmg = true;
        }
    }

    return taken_big_dmg;
}

/* 8063E79C-8063E810 00077C 0074+00 2/2 0/0 0/0 .text            checkDamageType__10daB_ZANT_cFv */
int daB_ZANT_c::checkDamageType() {
    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) && mFightPhase == PHASE_OI) {
        return DMGTYPE_HOOK_OI;
    }

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) ||
        mAtInfo.mpCollider->ChkAtType(AT_TYPE_SPINNER) ||
        mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW) ||
        mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK))
    {
        return DMGTYPE_OBJ;
    }

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_40)) {
        return DMGTYPE_BOOMERANG;
    }

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_MASTER_SWORD)) {
        return DMGTYPE_SWORD;
    }

    return DMGTYPE_MISC;
}

/* 8063E810-8063E938 0007F0 0128+00 2/2 0/0 0/0 .text setDamageSe__10daB_ZANT_cFP8dCcD_Sphi */
void daB_ZANT_c::setDamageSe(dCcD_Sph* i_hitSph, int i_dmgAmount) {
    health -= i_dmgAmount;
    if (health < 0) {
        health = 0;
    }

    BOOL var_r29;
    u8 at_se = ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSe();

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

    mSound.startCollisionSE(i_hitSph->getHitSeID(at_se, var_r29), var_r30);

    if (mAtInfo.mHitStatus == 0) {
        dComIfGp_setHitMark(1, this, i_hitSph->GetTgHitPosP(), NULL, NULL, 0);
    } else {
        dComIfGp_setHitMark(3, this, i_hitSph->GetTgHitPosP(), NULL, NULL, 0);
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
/* 8064F5F5 0003+00 l_initHIO None */
static u8 data_8064F5F4;
static u8 l_initHIO;

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
            mBodySphCc[0].OnTgNoHitMark();
            mBodySphCc[1].OnTgNoHitMark();

            if (mBodySphCc[0].ChkTgShield()) {
                mAtInfo.mpSound = &mSound;
            }
        }

        mAtInfo.mpCollider = NULL;

        dCcD_Sph tg_hit_sph;
        if (mBodySphCc[0].ChkTgHit()) {
            mAtInfo.mpCollider = mBodySphCc[0].GetTgHitObj();
            tg_hit_sph = mBodySphCc[0];
        } else if (mBodySphCc[1].ChkTgHit()) {
            mAtInfo.mpCollider = mBodySphCc[1].GetTgHitObj();
            tg_hit_sph = mBodySphCc[1];
        }

        if (mAtInfo.mpCollider != NULL) {
            daPy_py_c* player = daPy_getPlayerActorClass();

            if (tg_hit_sph.ChkTgShield()) {
                mAtInfo.field_0x18 = 42;
                mAtInfo.mpCollider->SetAtAtp(0);
            } else {
                mAtInfo.field_0x18 = 0;
            }

            s16 prev_hp = health;
            int dmg_amount = 0;

            if (field_0x702 != 0) {
                health = 280;
                cc_at_check(this, &mAtInfo);
            } else {
                cc_at_check(this, &mAtInfo);
                dmg_amount = prev_hp - health;
            }

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

            switch (mFightPhase) {
            case PHASE_BB:
                if (field_0x70c == 0) {
                    setActionMode(ACT_FLY, 10);
                } else {
                    switch (checkDamageType()) {
                    case DMGTYPE_SWORD:
                        setDamageSe(&tg_hit_sph, dmg_amount);

                        if (mAction != ACT_DAMAGE) {
                            field_0x6f4 = 100;
                        }

                        setActionMode(ACT_DAMAGE, pl_cut_LRC(player->getCutType()));
                        break;
                    case DMGTYPE_MISC:
                        field_0x70c = 0;
                        gravity = 0.0f;

                        mFlyWarpPosID = (f32)mFlyWarpPosID + cM_rndF(1.9f) + 1.0f;
                        mFlyWarpPos = fly_warp_pos[mFlyWarpPosID % 3];
                        field_0x711 = 2;

                        setActionMode(ACT_WARP, 1);
                        break;
                    case DMGTYPE_BOOMERANG:
                        setActionMode(ACT_CONFUSE, 5);
                        break;
                    case DMGTYPE_OBJ:
                        setActionMode(ACT_CONFUSE, 0);
                        break;
                    }
                }
                break;
            case PHASE_MG:
                switch (checkDamageType()) {
                case DMGTYPE_SWORD:
                    setDamageSe(&tg_hit_sph, dmg_amount);

                    if (mAction != ACT_DAMAGE) {
                        field_0x6f4 = 100;
                    }

                    setActionMode(ACT_DAMAGE, pl_cut_LRC(player->getCutType()));
                    break;
                case DMGTYPE_MISC:
                    setActionMode(ACT_SIMA_JUMP, 11);
                    break;
                case DMGTYPE_BOOMERANG:
                    setActionMode(ACT_CONFUSE, 5);
                    break;
                case DMGTYPE_OBJ:
                    setActionMode(ACT_CONFUSE, 0);
                    break;
                }
                break;
            case PHASE_OI:
                switch (checkDamageType()) {
                case DMGTYPE_SWORD:
                    setDamageSe(&tg_hit_sph, dmg_amount);

                    if (mAction != ACT_DAMAGE) {
                        field_0x6f4 = 100;
                    }

                    setActionMode(ACT_DAMAGE, pl_cut_LRC(player->getCutType()));
                    break;
                case DMGTYPE_HOOK_OI:
                    setActionMode(ACT_HOOK, 0);
                    break;
                }
                break;
            case PHASE_MK:
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
                    case DMGTYPE_SWORD:
                        setDamageSe(&tg_hit_sph, dmg_amount);
                        setActionMode(ACT_MONKEY_DAMAGE, 0);
                        break;
                    case DMGTYPE_MISC:
                        setNearPillarPos();
                        field_0x711 = 0;
                        setActionMode(ACT_WARP, 1);
                        break;
                    case DMGTYPE_BOOMERANG:
                    case DMGTYPE_OBJ:
                        field_0x6f0 = 0;
                        setActionMode(ACT_MONKEY_DAMAGE, 0);
                        break;
                    }
                }
                break;
            case PHASE_LAST:
                if (!tg_hit_sph.ChkTgShield()) {
                    switch (checkDamageType()) {
                    case DMGTYPE_SWORD:
                        setDamageSe(&tg_hit_sph, dmg_amount);

                        if (mAction == ACT_LAST_ATTACK && mMode == 13) {
                            mAction = ACT_LAST_TIRED;
                        }

                        setActionMode(ACT_LAST_DAMAGE, pl_cut_LRC(player->getCutType()));
                        break;
                    case DMGTYPE_MISC:
                        mSwordCc[0].OffAtSetBit();
                        mSwordCc[1].OffAtSetBit();
                        setTgHitBit(0);
                        setLastWarp(1, 0);
                        break;
                    case DMGTYPE_BOOMERANG:
                        setActionMode(ACT_LAST_DAMAGE, 20);
                        break;
                    case DMGTYPE_OBJ:
                        setActionMode(ACT_LAST_DAMAGE, 10);
                        break;
                    case DMGTYPE_HOOK_OI:
                        break;
                    }
                }
                break;
            }

            mBodySphCc[0].ClrTgHit();
            mBodySphCc[1].ClrTgHit();
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
                        mModeTimer = 0;
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

                    int dmg_amount = prev_hp - health;
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
                        case DMGTYPE_BOOMERANG:
                            setActionMode(ACT_ICE_DAMAGE, 40);
                            mModeTimer = 0;
                            break;
                        case DMGTYPE_OBJ:
                            setActionMode(ACT_ICE_DAMAGE, 20);
                            mModeTimer = 0;
                            break;
                        case DMGTYPE_MISC:
                            setActionMode(ACT_ICE_DAMAGE, 30);
                            mModeTimer = 0;
                            break;
                        case DMGTYPE_SWORD:
                            setDamageSe(&mFoot2Cc[i], dmg_amount);
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
bool daB_ZANT_c::setNextDamageMode(BOOL i_checkHealth) {
    if (i_checkHealth) {
        if (mFightCycle == 0 && health < 140) {
            mFightCycle++;
            setBaseActionMode(2);
            return true;
        }
    } else if (mFightCycle == 0) {
        if (mTakenBigDmg) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
            mFightCycle++;
            setBaseActionMode(2);
            return true;
        }
    } else if (health <= 0 || mTakenBigDmg) {
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        mFightCycle = 0;
        setActionMode(ACT_ROOM_CHANGE, 0);
        return true;
    }

    return false;
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
                s16 actor_angle = ((fopAc_ac_c*)i_actor)->current.angle.y;
                s16 angle_to_boss = fopAcM_searchActorAngleY((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
                if (abs((s16)(actor_angle - angle_to_boss)) < 0x2000) {
                    return i_actor;
                }
            }
        }
    }

    return NULL;
}

/* 8063FAB4-8063FF6C 001A94 04B8+00 3/3 0/0 0/0 .text            checkAvoidWeapon__10daB_ZANT_cFi */
bool daB_ZANT_c::checkAvoidWeapon(BOOL i_allowBoomerang) {
    if (i_allowBoomerang == 2) {
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
    cXyz* ppos = player->getIronBallCenterPos();
    if (ppos != NULL) {
        daAlink_c* player_alink = daAlink_getAlinkActorClass();
        if ((player_alink->checkIronBallThrowMode() || player_alink->checkIronBallThrowReturnMode()) && !player->checkIronBallGroundStop()) {
            if (ppos->absXZ(current.pos) < 300.0f) {
                return TRUE;
            }
        }
    }

    // avoid boomerang
    if (!i_allowBoomerang && player->getThrowBoomerangActor() != NULL) {
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
        mBodySphCc[0].OnTgSetBit();
        mBodySphCc[1].OnTgSetBit();
    } else {
        mBodySphCc[0].OffTgSetBit();
        mBodySphCc[1].OffTgSetBit();
    }
}

/* 8063FFAC-8063FFEC 001F8C 0040+00 2/2 0/0 0/0 .text            setCoHitBit__10daB_ZANT_cFi */
void daB_ZANT_c::setCoHitBit(BOOL i_onBit) {
    if (i_onBit) {
        mBodySphCc[0].OnCoSetBit();
        mBodySphCc[1].OnCoSetBit();
    } else {
        mBodySphCc[0].OffCoSetBit();
        mBodySphCc[1].OffCoSetBit();
    }
}

/* 8063FFEC-806400BC 001FCC 00D0+00 2/2 0/0 0/0 .text            setTgShield__10daB_ZANT_cFi */
void daB_ZANT_c::setTgShield(BOOL i_onShield) {
    if (i_onShield) {
        mBodySphCc[0].OnTgShield();
        mBodySphCc[0].OnTgSpinnerReflect();
        mBodySphCc[0].OnTgIronBallRebound();

        mBodySphCc[1].OnTgShield();
        mBodySphCc[1].OnTgSpinnerReflect();
        mBodySphCc[1].OnTgIronBallRebound();

        mBodySphCc[0].OffTgNoHitMark();
        mBodySphCc[1].OffTgNoHitMark();

        mBodySphCc[0].SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mBodySphCc[1].SetTgHitMark(CcG_Tg_UNK_MARK_2);
    } else {
        mBodySphCc[0].OffTgShield();
        mBodySphCc[0].OffTgSpinnerReflect();
        mBodySphCc[0].OffTgIronBallRebound();

        mBodySphCc[1].OffTgShield();
        mBodySphCc[1].OffTgSpinnerReflect();
        mBodySphCc[1].OffTgIronBallRebound();

        mBodySphCc[0].SetTgHitMark(CcG_Tg_UNK_MARK_0);
        mBodySphCc[1].SetTgHitMark(CcG_Tg_UNK_MARK_0);
    }
}

/* 806400BC-806400C8 00209C 000C+00 3/3 0/0 0/0 .text            setTgType__10daB_ZANT_cFUl */
void daB_ZANT_c::setTgType(u32 i_type) {
    mBodySphCc[0].SetTgType(i_type);
    mBodySphCc[1].SetTgType(i_type);
}

/* 806400C8-80640104 0020A8 003C+00 1/1 0/0 0/0 .text            setZantMessage__10daB_ZANT_cFi */
void daB_ZANT_c::setZantMessage(int i_msgNo) {
    mMsgNo = i_msgNo;
    mMsgID = fopMsgM_messageSet(i_msgNo, 1000);
}

/* 80640104-80640180 0020E4 007C+00 1/1 0/0 0/0 .text            doZantMessage__10daB_ZANT_cFv */
int daB_ZANT_c::doZantMessage() {
    if (mpMsg != NULL) {
        if (mpMsg->mode == 14) {
            mpMsg->mode = 16;
        } else if (mpMsg->mode == 18) {
            mpMsg->mode = 19;
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
void daB_ZANT_c::setIceLandingEffect(BOOL i_landFootR) {
    static u16 l_landing_effect_id[] = {
        0x86DC, 0x86DD, 0x86DE, 0x86DF, 0x86E0, 0x86E1,
    };

    cXyz particle_pos;
    if (!i_landFootR) {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_L));
    } else {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_R));
    }

    mDoMtx_stack_c::transM(10.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&particle_pos);
    particle_pos.y = 2.0f;

    cXyz size(1.0f, 1.0f, 1.0f);
    for (int i = 0; i < 6; i++) {
        dComIfGp_particle_set(l_landing_effect_id[i], &particle_pos, &tevStr, &shape_angle, &size);
    }

    particle_pos.set(0.0f, 0.0f, 0.0f);
    dComIfGp_particle_set(0x86E2, &particle_pos, &tevStr, &shape_angle, NULL);
}

/* 80640310-806403D4 0022F0 00C4+00 1/1 0/0 0/0 .text            setWaterBubble__10daB_ZANT_cFv */
void daB_ZANT_c::setWaterBubble() {
    cXyz particle_pos;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_MOUTH));
    mDoMtx_stack_c::multVecZero(&particle_pos);

    field_0x389c[0] = dComIfGp_particle_set(field_0x389c[0], 0x1E8, &particle_pos, &tevStr);
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
                ((daB_ZANT_c*)i_data)->mPillarIDs[8] = fopAcM_GetID(i_actor);
            } else {
                ((daB_ZANT_c*)i_data)->mPillarIDs[target_info_count] = fopAcM_GetID(i_actor);
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
    s16 aim_target_angle = fopAcM_searchPlayerAngleY(this);

    if (mFightPhase == PHASE_OI) {
        fopAc_ac_c* pmobile;
        fopAcM_SearchByID(mMobileIDs[mCorrectMobileNo], &pmobile);

        if (pmobile != NULL) {
            s16 var_r26 = pmobile->shape_angle.y - aim_target_angle;
            if (abs(var_r26) > 0x1400) {
                if (var_r26 < 0) {
                    aim_target_angle = pmobile->shape_angle.y + 0x1000;
                } else {
                    aim_target_angle = pmobile->shape_angle.y - 0x1000;
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
            setBck(ANM_MAGIC_SHOOT_A_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else {
            setBck(ANM_MAGIC_SHOOT_A_B_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        field_0x717 = 1;
        break;
    case 2:
        if (field_0x711 != 0) {
            if (mpModelMorf->checkFrame(15)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_V_ATK_BALL, -1);
            }
        } else {
            if (mpModelMorf->checkFrame(16)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_V_ATK_BALL, -1);
            }
        }

        cLib_addCalcAngleS(&shape_angle.y, aim_target_angle, 8, 0x400, 0x80);
        if (mpModelMorf->isStop()) {
            f32 anm_speed = l_HIO.mAttackAnmSpeed;
            if (mFightPhase == PHASE_OI) {
                anm_speed = 1.0f;
            }

            if (field_0x711 != 0) {
                setBck(ANM_MAGIC_SHOOT_A_C, J3DFrameCtrl::EMode_LOOP, 3.0f, anm_speed);
            } else {
                setBck(ANM_MAGIC_SHOOT_A_B_B, J3DFrameCtrl::EMode_LOOP, 3.0f, anm_speed);
            }
    
            mMode = 3;
            field_0x6fd = 0;
        }
        break;
    case 3:
        cLib_addCalcAngleS(&shape_angle.y, aim_target_angle, 8, 0x400, 0x80);

        if (mpModelMorf->checkFrame(3) || mpModelMorf->checkFrame(13)) {
            if (mpModelMorf->checkFrame(13)) {
                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_ARM_L4));
            } else {
                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_ARM_R4));
            }

            mDoMtx_stack_c::multVecZero(&sp44);

            u32 parameter = field_0x6fd + 1;
            if (field_0x703 < 10) {
                parameter += 2;
            }

            if (parameter > 6) {
                parameter = 6;
            }

            fopAcM_createChild(PROC_B_ZANTM, fopAcM_GetID(this), parameter, &sp44, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);
            dComIfGp_particle_set(0x886B, &sp44, &shape_angle, NULL);

            field_0x6fd++;
            field_0x704++;
        } else if ((mpModelMorf->checkFrame(9) || mpModelMorf->checkFrame(19)) && field_0x6fd >= field_0x703) {
            mMode = 4;

            if (field_0x711 != 0) {
                setBck(ANM_MAGIC_SHOOT_A_D, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            } else {
                setBck(ANM_MAGIC_SHOOT_A_B_C, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            }

            field_0x717 = 0;
        }
        break;
    case 4:
        if (mpModelMorf->isStop()) {
            attention_info.flags = 4;
            
            if (mFightPhase == PHASE_BB) {
                field_0x711 = 1;
                setActionMode(ACT_WARP, 1);
            } else if (mFightPhase == PHASE_MG) {
                setActionMode(ACT_SIMA_JUMP, 0);
            } else if (mFightPhase == PHASE_OI) {
                setActionMode(ACT_WATER, 0);
            } else if (mFightPhase == PHASE_MK) {
                setActionMode(ACT_MONKEY, 0);
            }
        }
        break;
    }

    if (mFightPhase == PHASE_BB && checkAvoidWeapon(TRUE)) {
        field_0x711 = 1;
        setActionMode(ACT_WARP, 1);
    }
}

/* 80640C20-80640D14 002C00 00F4+00 3/3 0/0 0/0 .text            calcScale__10daB_ZANT_cFi */
bool daB_ZANT_c::calcScale(BOOL param_0) {
    if (!param_0) {
        cLib_addCalc(&mModelScaleXZ, 0.0f, 0.5f, 0.25f, 0.1f);
        cLib_addCalc(&mModelScaleY, 1.2f, 0.5f, 0.1f, 0.1f);

        if (!mModelScaleXZ) {
            mModelScaleY = 0.0f;
            mModelScaleXZ = 0.0f;
            return true;
        }
    } else {
        cLib_addCalc(&mModelScaleY, 1.0f, 0.5f, 0.2f, 0.1f);

        if (mModelScaleY > 0.5f) {
            cLib_addCalc(&mModelScaleXZ, 1.0f, 0.5f, 0.2f, 0.1f);
        }

        if (mModelScaleY == 1.0f && mModelScaleXZ == 1.0f) {
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

        if (mFightPhase != PHASE_MK && mFightPhase != PHASE_YO && mFightPhase != PHASE_LAST) {
            if (field_0x711 & 1) {
                setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            } else {
                setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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
            case PHASE_BB:
                if (field_0x70b == 0) {
                    field_0x70b = 1;
                    mModeTimer = 120;
                } else if (mFightCycle == 0) {
                    mModeTimer = 40;
                } else {
                    mModeTimer = 15;
                }
                break;
            case PHASE_MG:
                mModeTimer = 15;
                break;
            case PHASE_OI:
                mModeTimer = 60;
                break;
            case PHASE_MK:
                if (mLastAction == ACT_MONKEY) {
                    mModeTimer = 15;
                } else {
                    mModeTimer = 60;
                }
                break;
            case PHASE_YO:
                mModeTimer = 60;
                break;
            case PHASE_LAST:
                if (mFlyWarpPosID != 0) {
                    mModeTimer = 60;
                } else {
                    mModeTimer = 15;
                }
                break;
            }

            mModeTimer += (int)l_HIO.mPlayWarpTime;
        }
        break;
    case 4:
    case 5:
        if (mModeTimer == 0) {
            if (mMode == 4) {
                dBgS_ObjGndChk gndchk;
                gndchk.SetPos(&mFlyWarpPos);

                f32 gnd_y = dComIfG_Bgsp().GroundCross(&gndchk);
                if (gnd_y != -1000000000.0f) {
                    mFlyWarpPos.y = gnd_y;
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
                setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            } else {
                setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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

        if (setNextDamageMode(FALSE)) {
            setTgHitBit(FALSE);
            return;
        } else if (mFightPhase == PHASE_OI && setNextDamageMode(TRUE)) {
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

        if (mFightPhase == PHASE_OI) {
            if (mMode == 1) {
                setBck(ANM_FLOAT_DAMAGE_L, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            } else {
                setBck(ANM_FLOAT_DAMAGE_R, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            }

            speed.y = 0.0f;
            speedF = 0.0f;
        } else if (mMode == 1) {
            setBck(ANM_DAMAGE_L_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else {
            setBck(ANM_DAMAGE_R_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        mMode = 5;
        mModeTimer = 40;
    case 5:
        if (field_0x6f4 == 0) {
            setTgHitBit(FALSE);
        }

        if (mpModelMorf->isStop() && !setNextDamageMode(TRUE)) {
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

        setBck(ANM_GROUND_REACTION, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_NO_DMG, -1);
        field_0x702 = 0;
    case 1:
        if (mpModelMorf->isStop()) {
            setBaseActionMode(0);
        }
        break;
    case 5:
        setBck(ANM_FAINT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        speedF = 0.0f;
        speed.y = 0.0f;
        field_0x702 = 0;
        mModeTimer = 20;
        mMode = 6;
    case 6:
        if (mModeTimer == 0) {
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
    case MODE_START_DEMO:
        current.pos.set(0.0f, 0.0f, 160.0f);
        shape_angle.y = -0x8000;

        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 4);
            eventInfo.onCondition(2);
            return;
        }

        Z2GetAudioMgr()->setDemoName("force_start");
        fopAcM_OffStatus(this, 0x4000);
        
        sp34.set(0.0f, 0.0f, -700.0f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);

        setBck(ANM_OP_1, J3DFrameCtrl::EMode_LOOP, 0.0f, 1.0f);
        mMode = MODE_START_DEMO_WAIT;
        mModeTimer = 30;

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        field_0x77c = 220.0f;
    case MODE_START_DEMO_WAIT:
        sp4C.set(0.0f, 175.0f, 3.0f);
        sp40.set(0.0f, 270.0f, -194.0f);
        mDemoCamCenter = sp4C;
        mDemoCamEye = sp40;
        mDemoCamBank = 30.0f;

        if (mModeTimer == 0) {
            mMode = MODE_PAN_GROUND;
            mModeTimer = 80;
        }
        break;
    case MODE_PAN_GROUND:
        sp4C.set(0.0f, 81.0f, -187.0f);
        sp40.set(0.0f, 67.0f, -408.0f);
        cLib_addCalcPos2(&mDemoCamCenter, sp4C, 0.1f, 4.3f);
        cLib_addCalcPos2(&mDemoCamEye, sp40, 0.1f, 6.0f);

        if (mModeTimer == 0) {
            mMode = MODE_MSG_1;
            setBck(ANM_OP_2, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_ZAN_OP_V_WAKEUP, -1);
        }
        break;
    case MODE_MSG_1:
        if (mpModelMorf->getFrame() > 5.0f) {
            sp4C.set(0.0f, 86.0f, -9.0f);
            sp40.set(0.0f, 10.0f, -209.0f);
            cLib_addCalcPos2(&mDemoCamCenter, sp4C, 0.5f, 26.0f);
            cLib_addCalcPos2(&mDemoCamEye, sp40, 0.5f, 30.0f);
        }

        if (mpModelMorf->isStop()) {
            mMode = MODE_MSG_1_WAIT;
            mModeTimer = 20;
            setBck(ANM_OP_3, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            setZantMessage(0xE3B);  // My god had only one wish...
        }
        break;
    case MODE_MSG_1_WAIT:
        if (doZantMessage() == true) {
            mModeTimer = 20;
            mMode = MODE_WARP_OUT_SE;
        }
        break;
    case MODE_WARP_OUT_SE:
        if (mModeTimer == 0) {
            mMode = MODE_START_WARP;
            mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_OUT, 0, -1);
        }
        break;
    case MODE_START_WARP:
        if (calcScale(0)) {
            current.pos.set(0.0f, 225.0f, -1700.0f);
            sp34.set(0.0f, 0.0f, -500.0f);
            player->setPlayerPosAndAngle(&sp34, 0, 0);
            player->changeOriginalDemo();
            player->changeDemoMode(1, 0, 0, 0);

            mMode = MODE_WARP_WAIT;
            mDemoCamCenter.set(0.0f, 200.0f, -1700.0f);
            mDemoCamEye.set(0.0f, 70.0f, -300.0f);
            mDemoCamBank = 68.0f;
            mModeTimer = 15;
        }
        break;
    case MODE_WARP_WAIT:
        if (mModeTimer == 0) {
            setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            player->changeDemoMode(0x48, 0, 0, 0);
            mMode = MODE_PAN_THRONE;
            mModeTimer = 105;
        }
        break;
    case MODE_PAN_THRONE:
        sp4C.set(32.0f, 290.0f, -1678.0f);
        sp40.set(100.0f, 70.0f, -300.0f);
        cLib_addCalcPos2(&mDemoCamCenter, sp4C, 0.1f, 1.0f);
        cLib_addCalcPos2(&mDemoCamEye, sp40, 0.1f, 1.0f);

        if (mModeTimer <= 30) {
            if (mModeTimer == 30) {
                current.angle.y = 0;
                shape_angle.y = 0;
                dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
                mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_IN, 0, -1);
            }
            calcScale(1);
        }

        if (mModeTimer == 0) {
            mMode = MODE_ZOOM_THRONE;
            mModeTimer = 30;
        }
        break;
    case MODE_ZOOM_THRONE:
        calcScale(1);
        sp4C.set(32.0f, 290.0f, -1678.0f);
        sp40.set(66.0f, 180.0f, -989.0f);
        cLib_addCalcPos2(&mDemoCamCenter, sp4C, 0.5f, 60.0f);
        cLib_addCalcPos2(&mDemoCamEye, sp40, 0.5f, 60.0f);

        if (mModeTimer == 0) {
            mMode = MODE_MSG_2;
            setZantMessage(0xE3C);
        }
        break;
    case MODE_MSG_2:
        if (doZantMessage() == true) {
            setBck(ANM_OP_RISE, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
            mMode = MODE_FLY_UP;
            mModeTimer = 90;
            mSound.startCreatureSound(Z2SE_EN_ZAN_OP_FLY, 0, -1);
        }
        break;
    case MODE_FLY_UP:
        current.pos.y += 3.0f;
        mDemoCamCenter.y += 2.0f;

        if (mModeTimer == 0) {
            mMode = MODE_CLOSE_UP;
        }
        break;
    case MODE_CLOSE_UP:
        if (mModeTimer == 0) {
            mDoMtx_stack_c::YrotS(-0x8000);
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

            setBck(ANM_OP_RISE, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            
            sp34.x = -140.0f;
            sp34.y += 250.0f;
            sp34.z = -800.0f;
            player->setPlayerPosAndAngle(&sp34, 0x8000, 0);
            player->changeOriginalDemo();
            player->changeDemoPos0(&sp34);
            player->changeDemoMode(0x17, 1, 4, 0);
            mDemoCamBank = 58.0f;

            mDoMtx_stack_c::YrotS(-0x8000);
            mDoMtx_stack_c::transM(-85.0f, 344.0f, 382.0f);
            mDoMtx_stack_c::multVecZero(&mDemoCamEye);
            mDemoCamEye.y += 250.0f;
            mDemoCamEye.z -= 800.0f;

            mDoMtx_stack_c::YrotS(-0x8000);
            mDoMtx_stack_c::transM(258.0f, 672.0f, 1374.0f);
            mDoMtx_stack_c::multVecZero(&mDemoCamCenter);
            mDemoCamCenter.y += 200.0f;
            mDemoCamCenter.z -= 800.0f;

            Z2GetAudioMgr()->bgmStart(Z2BGM_BOSS_ZANT, 0, 0);
            field_0x77c = 0.0f;
            field_0x6fc = 1;
            mMode = MODE_SET_BOSS_TITLE;
            mModeTimer = 160;
        }
        break;
    case MODE_SET_BOSS_TITLE:
        if (mModeTimer == 100) {
            fopMsgM_messageSetDemo(0x486);
        }

        cLib_addCalc(&current.pos.y, 250.0f + 300.0f, 0.1f, 3.0f, 0.9f);
        cLib_addCalc(&mDemoCamCenter.y, 250.0f + 672.0f, 0.1f, 1.0f, 0.3f);

        if (mModeTimer == 0) {
            mMode = MODE_WARP_IN_WAIT;
            mModeTimer = 20;
        }
        break;
    case MODE_WARP_IN_SE:
        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (mModeTimer == 0) {
            dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
            mMode = MODE_WARP_IN_SCALE;
            mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_IN, 0, -1);
        }
        break;
    case MODE_WARP_IN_SCALE:
        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (calcScale(1)) {
            mMode = MODE_WARP_IN_WAIT;
            mModeTimer = 20;
        }
        break;
    case MODE_WARP_IN_WAIT:
        if (mModeTimer == 0) {
            mMode = MODE_ZOOM_OUT_ROOM_CHANGE;
            mModeTimer = 50;
        }
        break;
    case MODE_ZOOM_OUT_ROOM_CHANGE:
        calcRoomChangeCamera(0);
        if (mModeTimer == 0) {
            mMode = MODE_START_ROOM_CHANGE;
            setBck(ANM_FLOAT_APPEAR, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_ZAN_MAHOJIN_BB, 0, -1);
            field_0x714 = 1;
            mKankyoBlend = 0.0f;
        }
        break;
    case MODE_START_ROOM_CHANGE:
        cLib_chaseF(&mKankyoBlend, 1.0f, 0.006f);
        if (mpModelMorf->checkFrame(110)) {
            mMahojinAnmMode = 1;
            field_0x715 = 30;
        }

        if (mpModelMorf->getFrame() > 110.0f) {
            cLib_chaseF(&mKankyoBlend, 1.0f, 0.01f);
        }

        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (mpModelMorf->isStop()) {
            dComIfGp_getVibration().StopQuake(31);
            setBck(ANM_FLOAT_APPEAR_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mMode = MODE_ROOM_CHANGE;
            mModeTimer = l_HIO.mMahojinWaitTime;

            cXyz pos(0.0f, 0.0f, 0.0f);
            dComIfGs_setRestartRoom(pos, 0, warp_next_room[1]);
            return;
        }
        break;
    case MODE_ROOM_CHANGE:
        mFightPhase++;
        if (mFightPhase >= PHASE_MAX) {
            mFightPhase = PHASE_OP;
        }

        current.pos.set(-140.0f, 300.0f, 700.0f);
        
        sp34.set(0.0f, 0.0f, 0.0f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);
        player->changeDemoMode(0x17, 1, 4, 0);
        
        mDemoCamEye.x += 140.0f;
        mDemoCamEye.y -= 250.0f;
        mDemoCamEye.z += 800.0f;

        mDoMtx_stack_c::YrotS(-0x8000);
        mDoMtx_stack_c::transM(mDemoCamEye);
        mDoMtx_stack_c::multVecZero(&mDemoCamEye);

        mDemoCamCenter.x += 140.0f;
        mDemoCamCenter.y -= 250.0f;
        mDemoCamCenter.z += 800.0f;

        mDoMtx_stack_c::YrotS(-0x8000);
        mDoMtx_stack_c::transM(mDemoCamCenter);
        mDoMtx_stack_c::multVecZero(&mDemoCamCenter);

        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        initNextRoom();
        mMode = MODE_END_ROOM_CHANGE;
    case MODE_END_ROOM_CHANGE:
        if (mModeTimer == 0 && dComIfGp_roomControl_checkStatusFlag(warp_next_room[mFightPhase], 0x10)) {
            mMode = MODE_END_DEMO;
            field_0x714 = 0;
            mKankyoBlend = 0.0f;
            setBck(ANM_FLOAT_WAIT_RETURN, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mMahojinAnmMode = 4;
        }
        break;
    case MODE_END_DEMO:
        cLib_chaseF(&mKankyoBlend, 1.0f, 0.02f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);

        if (mpModelMorf->isStop()) {
            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
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

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamBank, 0);
}

/* 806427EC-80642EC8 0047CC 06DC+00 2/1 0/0 0/0 .text            executeFly__10daB_ZANT_cFv */
void daB_ZANT_c::executeFly() {
    dBgS_ObjGndChk_All gndchk;
    cXyz sp9C;

    switch (mMode) {
    case 0:
        setTgHitBit(TRUE);
        setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        mModeTimer = 0;
        mMode = 1;
        gravity = 0.0f;
        field_0x70c = 0;
        setTgType(0x10040);
    case 1:
        if (mModeTimer == 0) {
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
        setBck(ANM_SWAMP_FALL_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
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
                setBck(ANM_SWAMP_FALL_LOOP, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
                mMode = 12;
            }
        } else if (speed.y < -10.0f) {
            setBck(ANM_SWAMP_FALL_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
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
            f32 gnd_pos = dComIfG_Bgsp().GroundCross(&gndchk);
            if (gnd_pos != -1000000000.0f && current.pos.y <= gnd_pos) {
                if (dComIfG_Bgsp().GetPolyAtt0(gndchk) == 11) {
                    speed.y = 50.0f;
                    speedF = 15.0f;
                    current.angle.y = (cM_rndFX(2.9f) * (f32)0x1000) - (f32)0x8000;

                    mMode = 11;
                    setBck(ANM_SWAMP_FALL_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_BB_V_JUMP, -1);

                    cXyz pos(current.pos.x, gnd_pos, current.pos.z);
                    cXyz size(1.5f, 1.5f, 1.5f);
                    for (int i = 0; i < 4; i++) {
                        static u16 w_eff_id[] = {0x01B8, 0x01B9, 0x01BA, 0x01BB};
                        field_0x389c[i] = dComIfGp_particle_setPolyColor(field_0x389c[i], w_eff_id[i], gndchk, &pos, &tevStr, &shape_angle, &size, 0, NULL, -1, NULL);
                    }

                    mSound.startCreatureSound(Z2SE_EN_ZAN_BB_WTR, 0, -1);
                } else {
                    fopAcM_effSmokeSet1(&field_0x3894, &field_0x3898, &current.pos, NULL, 2.0f, &tevStr, 1);
                    speedF = 0.0f;
                    setBck(ANM_SWAMP_LANDING, J3DFrameCtrl::EMode_NONE, 0.0f, 1.0f);
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
        if (mpModelMorf->checkFrame(3)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_BB_LAND, 0, -1);
        } else if (mpModelMorf->checkFrame(18) || mpModelMorf->checkFrame(23)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_BB_FOOT, 0, -1);
        }

        if (mpModelMorf->checkFrame(5)) {
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
        setBck(ANM_LV1_FATIGUE, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
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
    fopAcM_SearchByID(mMobileIDs[mCorrectMobileNo], &pmobile);
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
    fopAcM_SearchByID(mMobileIDs[mCorrectMobileNo], &pmobile);
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

        setBck(ANM_HOOK_HIT, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mMode = 2;
        field_0x6ff++;
        break;
    case 2:
        if (mpModelMorf->checkFrame(2)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_OI_V_CAUGHT, -1);
        }

        if (mpModelMorf->isStop()) {
            mMode = 3;
            setBck(ANM_HOOK_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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
    fopAcM_SearchByID(mMobileIDs[mCorrectMobileNo], &pmobile);
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
                setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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
                mModeTimer = 30;
                mMode = 21;

                if (mFightCycle != 0) {
                    // set zant to farthest mobile from player
                    cXyz player_pos(daPy_getPlayerActorClass()->current.pos);
                    f32 farthest_dist = 0.0f;
                    int correct_no = 0;

                    for (int i = 0; i < 4; i++) {
                        fopAcM_SearchByID(mMobileIDs[i], &pmobile);
                        if (pmobile != NULL && farthest_dist < pmobile->current.pos.abs(player_pos)) {
                            farthest_dist = pmobile->current.pos.abs(player_pos);
                            correct_no = i;
                        }
                    }

                    mCorrectMobileNo = correct_no;
                }
            }
            break;
        case 21:
            if (mModeTimer == 0) {
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
                    mModeTimer = 30;
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
                        mModeTimer = 30;
                        mMode = 23;
                    }
                }
            }
            break;
        case 23:
            if (mModeTimer == 0) {
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
                    mModeTimer = cM_rndF(30.0f) + 100.0f;
                } else if (field_0x712 == 0) {
                    field_0x712++;
                    mMode = 28;
                    mModeTimer = 30;
                } else {
                    mMode = 30;
                    mModeTimer = cM_rndF(30.0f) + 100.0f;
                    mCorrectMobileNo = (int)((f32)mCorrectMobileNo + cM_rndF(2.9f) + 1.0f) & 3;
                }
            }
            break;
        case 28:
            if (mModeTimer == 0) {
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
            if (mModeTimer == 0) {
                mModeTimer = 30;
                mMode = 21;
            }
            break;
        }
    }
}

/* 80644074-80644A3C 006054 09C8+00 2/1 0/0 0/0 .text            executeSwim__10daB_ZANT_cFv */
void daB_ZANT_c::executeSwim() {
    fopAc_ac_c* pmobile;
    fopAcM_SearchByID(mMobileIDs[mCorrectMobileNo], &pmobile);

    if (pmobile != NULL) {
        s16 mobile_angle = pmobile->shape_angle.y;
        cXyz sp50(cM_ssin(mobile_angle) * 300.0f, 300.0f, cM_scos(mobile_angle) * 300.0f);
        sp50 += pmobile->current.pos;

        s16 sp10 = cLib_targetAngleY(&pmobile->current.pos, &current.pos);
        s16 spE = mobile_angle - sp10;

        switch (mMode) {
        case 10:
            if (field_0x6ff > 5) {
                field_0x6b8 = mobile_angle;
                mFlyWarpPos = sp50;
                field_0x705 = 1;
                field_0x711 = 1;
                setActionMode(ACT_WARP, 0);
                return;
            }
            
            setBck(ANM_HOOK_RELEASE, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
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
            setBck(ANM_SWIM, J3DFrameCtrl::EMode_LOOP, 5.0f, 1.0f);
            mpModelMorf->setFrame(10.0f);
            field_0x6cc = 0.0f;
            attention_info.flags = 4;
            mMode = 1;
            field_0x702 = 0;
        case 1:
        case 2:
            if (abs(spE) < 0x1000) {
                if (mMode == 1) {
                    field_0x6ac.set(cM_ssin(mobile_angle) * 600.0f, 300.0f, cM_scos(mobile_angle) * 600.0f);
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

            mModeTimer = 60;
        case 3:
        case 4:
            {
                if (current.pos.y < 50.0f) {
                    cLib_addCalc2(&current.pos.y, 50.0f, 0.1f, 10.0f);
                }

                f32 player_dist = fopAcM_searchPlayerDistance(this);
                s16 spA = -cLib_targetAngleX(&current.pos, &field_0x6ac) + 0x4000;
                s16 sp8 = cLib_targetAngleY(&current.pos, &field_0x6ac);
                f32 anm_frame = mpModelMorf->getFrame();

                int sp64 = 0;
                if (anm_frame < 13.0f || anm_frame >= 45.0f) {
                    sp64 = 1;
                }

                if ((13.0f <= anm_frame && anm_frame <= 19.0f) || (29.0f <= anm_frame && anm_frame <= 45.0f)) {
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

                if (mModeTimer != 0) {
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
                    mModeTimer = 60;
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
            cLib_addCalcAngleS2(&shape_angle.y, mobile_angle, 0x10, 0x200);
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

                cXyz target(sp50.x, current.pos.y, sp50.z);
                cLib_chasePosXZ(&current.pos, target, 3.0f);
                
                if (((daB_ZANTZ_c*)pmobile)->getMouthMode() == 3) {
                    field_0x705 = 1;
                    mModeTimer = 30;
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

        if (checkBck(ANM_SWIM)) {
            if (mpModelMorf->checkFrame(12)) {
                mSound.startCreatureSound(Z2SE_EN_ZAN_OI_SWIM1, 0, -1);
            } else if (mpModelMorf->checkFrame(28)) {
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
        mBodySphCc[0].OnTgNoHitMark();
        mBodySphCc[1].OnTgNoHitMark();

        setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);

        if (mLastAction == ACT_SMALL_ATTACK) {
            field_0x702 = 0;
            mMode = 10;

            if (mFightCycle == 0) {
                field_0x6f0 = 120;
            } else {
                field_0x6f0 = 105;
            }

            attention_info.flags = 4;
            setBck(ANM_LV1_FATIGUE, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
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
                mModeTimer = 150;
            }

            field_0x70f++;
        } else {
            mModeTimer = cM_rndF(50.0f) + 100.0f;

            if (field_0x70b >= 4) {
                mModeTimer = 0;
            } else if (field_0x70b < 2 && mModeTimer < 120) {
                mModeTimer = 120;
            }

            if (mModeTimer < 120) {
                field_0x70b = 0;
                mModeTimer = 0;

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
            mModeTimer -= 50;
        }

        setTgHitBit(FALSE);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x800, 0x80);

        if (fopAcM_searchPlayerDistance(this) < 550.0f) {
            if (mAcch.ChkGroundHit()) {
                mMode = 11;
                return;
            }
        } else {
            if (checkAvoidWeapon(FALSE)) {
                mMode = 11;
                return;
            }
        }

        if (mMode == 1) {
            if (mAcch.ChkGroundHit() && field_0x6ec == 0) {
                setBck(ANM_JUMP_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                mMode = 2;
            }
        } else if (mMode == 2) {
            if (mpModelMorf->checkFrame(6)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_MG_V_JUMP, -1);
            }

            if (mpModelMorf->checkFrame(10)) {
                speed.y = 55.0f;
                mMode = 3;
            }
        } else if (mMode == 3) {
            if (speed.y <= 0.0f) {
                setBck(ANM_JUMP_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                mMode = 4;
            }
        } else if (mMode == 4) {
            if (mpModelMorf->checkFrame(7)) {
                mpModelMorf->setPlaySpeed(0.0f);
            }

            if (mAcch.ChkGroundHit()) {
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

        if (mAcch.ChkGroundHit() && mModeTimer == 0) {
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

        setBck(ANM_HUGE, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        speedF = 0.0f;
        gravity = 0.0f;
        shape_angle.z = 0;
        shape_angle.x = 0;
        attention_info.flags = 0;
        maxFallSpeed = -100.0f;

        mMode = 1;
        field_0x70e = 0;
    case 1:
        if (mpModelMorf->checkFrame(8)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_HUGE, -1);
        }

        cLib_chaseF(&mModelScaleXZ, 10.0f, 0.1f);
        cLib_chaseF(&mModelScaleY, 10.0f, 0.1f);

        if (mpModelMorf->checkFrame(115)) {
            mMode = 2;
        }
        break;
    case 2:
        cLib_chaseF(&speed.y, 50.0f, 5.0f);
        if (mpModelMorf->isStop()) {
            setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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
        setBck(ANM_HUGE_LANDING, J3DFrameCtrl::EMode_NONE, 3.0f, -1.0f);
        mMode = 1;
        attention_info.flags = 0;
        field_0x70e = 0;
        mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_JUMP, -1);
    case 1:
        if (mpModelMorf->checkFrame(10)) {
            mMode = 2;
            speed.y = 130.0f;
            current.angle.y = shape_angle.y;
        }
        break;
    case 2:
        if (mpModelMorf->isStop()) {
            setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mMode = 3;
        }
    case 3:
        cLib_chaseF(&speed.y, 15.0f, 5.0f);
        if (current.pos.y > 1500.0f) {
            field_0x70e = 3;
        }

        if (current.pos.y > 2000.0f) {
            mMode = 4;
            mModeTimer = 90;
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

        if (mModeTimer == 0 && sp44.absXZ(current.pos) < 550.0f) {
            mMode = 5;
            gravity = -5.0f;
            speed.y = 0.0f;
            speedF = 0.0f;

            setBck(ANM_HUGE_LANDING, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_ZAN_YO_V_LAND, -1);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_L));
            mDoMtx_stack_c::transM(10.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp50);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_R));
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
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_L));
        } else {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_R));
        }

        mDoMtx_stack_c::transM(10.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp5C);
        sp68 = sp5C - sp44;
        current.pos -= sp68 * (20.0f / sp68.abs());

        if (mMode == 5) {
            if (mpModelMorf->checkFrame(10)) {
                mpModelMorf->setPlaySpeed(0.0f);
                mMode = 6;
                mFoot2Cc[0].OnAtSetBit();
                mFoot2Cc[4].OnAtSetBit();
                mFoot2Cc[0].SetAtAtp(4);
                mFoot2Cc[4].SetAtAtp(4);
            }
        } else {
            if (mAcch.ChkGroundHit()) {
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
        if (mpModelMorf->checkFrame(15)) {
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
        mModeTimer = cM_rndFX(50.0f) + 600.0f;
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
                setBck(ANM_TRAMPLE_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                mMode = 2;
                break;
            case 3:
                setBck(ANM_TRAMPLE_C, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                mMode = 3;
                break;
            case 4:
                setBck(ANM_TRAMPLE_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                mMode = 4;
                break;
            case 5:
                setBck(ANM_TRAMPLE_D, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
                mMode = 5;
                break;
            }
        }
    case 2:
    case 3:
    case 4:
    case 5:
        f32 anm_frame = mpModelMorf->getFrame();
        int sp98 = 0;

        if (mMode == 2) {
            if (8.0f <= anm_frame && anm_frame <= 24.0f) {
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
            if (7.0f <= anm_frame && anm_frame <= 14.0f) {
                sp98 = 1;
            }

            if (22.0f <= anm_frame && anm_frame <= 28.0f) {
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
            if (8.0f <= anm_frame && anm_frame <= 23.0f) {
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
            if (7.0f <= anm_frame && anm_frame <= 13.0f) {
                sp98 = 1;
            }

            if (21.0f <= anm_frame && anm_frame <= 27.0f) {
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
            mDoMtx_stack_c::transM(mModelScaleXZ * 35.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp60);
            mDoMtx_stack_c::transS(sp60);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::transM(mModelScaleXZ * -35.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&current.pos);
        } else {
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(var_r29);
            mDoMtx_stack_c::transM(mModelScaleXZ * -30.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp60);
            mDoMtx_stack_c::transS(sp60);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::transM(mModelScaleXZ * 30.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&current.pos);
        }

        if (mpModelMorf->isStop()) {
            if (mModeTimer != 0) {
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

    if (mMode >= 10 && mModeTimer == 0) {
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
            setBck(ANM_SHIND_L, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        } else {
            setBck(ANM_SHIND_R, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        }

        mFoot2Cc[0].OffAtSetBit();
        mFoot2Cc[4].OffAtSetBit();

        for (int i = 0; i < 6; i++) {
            mFootCc[iron_tg_cc[i]].OnTgShield();
        }

        current.angle.y = shape_angle.y;
        mMode = 2;
        mModeTimer = 300;
        field_0x70b = 0;
        field_0x70b++;
        field_0x6cc = (mModelScaleXZ - damage_scale[field_0x70b]) / 3.0f;
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
                cLib_addCalc2(&mModelScaleXZ, damage_scale[field_0x70b], 0.5f, field_0x6cc);
            } else {
                cLib_chaseF(&mModelScaleXZ, 0.5f, 0.1f);
            }

            mModelScaleY = mModelScaleXZ;
            cLib_addCalcAngleS2(&shape_angle.y, field_0x6ba, 8, 0x1000);
            current.angle.y = shape_angle.y;
            speedF = 0.0f;

            if (mModeTimer == 0) {
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
        if (mAcch.ChkGroundHit()) {
            s16 sp8 = fopAcM_searchPlayerAngleY(this) + (4096.0f * cM_rndFX(4.9f)) + 32768.0f;

            if (current.pos.absXZ() > 1200.0f) {
                sp8 = cM_atan2s(-current.pos.x, -current.pos.z);
            }

            field_0x6ba = sp8;

            if (field_0x70b < 10) {
                field_0x70b++;
            }

            field_0x6cc = (mModelScaleXZ - damage_scale[field_0x70b]) / 3.0f;
            mpModelMorf->setPlaySpeed((10.0f - mModelScaleXZ) / 10.0f + 1.0f);

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
            setBck(ANM_DAMAGE_L_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else {
            setBck(ANM_DAMAGE_R_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        speed.y = 0.0f;
        speedF = 0.0f;
        mMode = 11;
    case 11:
        cLib_chaseF(&mModelScaleXZ, 0.5f, 0.1f);
        mModelScaleY = mModelScaleXZ;

        if (mpModelMorf->isStop()) {
            mMode = 12;
            if (mModeTimer >= 30) {
                mModeTimer = 30;
            }

            setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        }
        break;
    case 12:
        if (mModeTimer == 0) {
            mMode = 30;
        }
        break;
    case 20:
        setBck(ANM_GROUND_REACTION, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
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
        setBck(ANM_FAINT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        mMode = 41;
        speed.y = 0.0f;
        speedF = 0.0f;
        mModeTimer = 30;
    case 41:
        if (mModeTimer == 0) {
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
    fopAc_ac_c* ppillar;
    cXyz player_pos(daPy_getPlayerActorClass()->current.pos);
    int pillar_no = -1;
    f32 farthest_dist = 0.0f;

    for (int i = 0; i < 8; i++) {
        if (i != field_0x70a) {
            fopAcM_SearchByID(mPillarIDs[i], &ppillar);
            if (ppillar != NULL) {
                f32 dist = player_pos.abs(ppillar->current.pos);
                if (dist > farthest_dist) {
                    pillar_no = i;
                    farthest_dist = dist;
                }
            }
        }
    }

    if (pillar_no != -1) {
        fopAcM_SearchByID(mPillarIDs[pillar_no], &ppillar);
        if (ppillar != NULL) {
            mFlyWarpPos = ppillar->current.pos;
            mFlyWarpPos.y += 500.0f;
            field_0x709 = pillar_no;
            field_0x708 = pillar_no;
            field_0x70a = pillar_no;
            field_0x71b = 1;
        }
    }
}

/* 806473E4-80647468 0093C4 0084+00 4/4 0/0 0/0 .text            setNearPillarPos__10daB_ZANT_cFv */
void daB_ZANT_c::setNearPillarPos() {
    fopAc_ac_c* ppillar;
    fopAcM_SearchByID(mPillarIDs[8], &ppillar);

    if (ppillar != NULL) {
        mFlyWarpPos = ppillar->current.pos;
        mFlyWarpPos.y += 500.0f;
        field_0x709 = 8;
        field_0x708 = 8;
        field_0x70a = 8;
        field_0x71b = 0;
    }
}

/* 80647468-806474F4 009448 008C+00 1/1 0/0 0/0 .text            setNextPillarInfo__10daB_ZANT_cFi
 */
void daB_ZANT_c::setNextPillarInfo(int i_pillarNo) {
    fopAc_ac_c* ppillar;
    fopAcM_SearchByID(mPillarIDs[i_pillarNo], &ppillar);

    if (ppillar != NULL) {
        field_0x6ac = ppillar->current.pos;
        field_0x6ac.y += 500.0f;
        field_0x708 = field_0x709;
        field_0x709 = i_pillarNo;
    }
}

/* 806474F4-80647A34 0094D4 0540+00 1/1 0/0 0/0 .text            setNextPillarPos__10daB_ZANT_cFv */
void daB_ZANT_c::setNextPillarPos() {
    fopAc_ac_c* ppillar;
    cXyz player_pos(daPy_getPlayerActorClass()->current.pos);
    int pillar_no = -1;
    f32 nearest_dist = 10000.0f;

    if (field_0x708 != 8 && field_0x709 != 8 && cM_rnd() < 0.5) {
        fopAcM_SearchByID(mPillarIDs[8], &ppillar);

        if (ppillar != NULL && player_pos.absXZ(ppillar->current.pos) > 500.0f) {
            setNextPillarInfo(8);
            return;
        }
    }

    if (field_0x709 == 8) {
        fopAcM_SearchByID(mPillarIDs[8], &ppillar);
        if (ppillar != NULL) {
            cXyz pillar_pos(ppillar->current.pos);
            s16 sp8 = cLib_targetAngleY(&pillar_pos, &player_pos);

            for (int i = 0; i < 8; i++) {
                if (i != field_0x708 && i != field_0x709) {
                    fopAcM_SearchByID(mPillarIDs[i], &ppillar);
                    if (ppillar != NULL && abs((s16)(cLib_targetAngleY(&pillar_pos, &ppillar->current.pos) - sp8)) > 0x6000) {
                        setNextPillarInfo(i);
                        return;
                    }
                }
            }
        }
    }

    for (int i = 0; i < 8; i++) {
        if (i != field_0x708 && i != field_0x709) {
            fopAcM_SearchByID(mPillarIDs[i], &ppillar);
            if (ppillar != NULL && player_pos.absXZ(ppillar->current.pos) > 500.0f) {
                f32 dist = current.pos.abs(ppillar->current.pos);
                if (dist < nearest_dist) {
                    pillar_no = i;
                    nearest_dist = dist;
                }
            }
        }
    }

    if (pillar_no != -1) {
        setNextPillarInfo(pillar_no);
    }
}

/* 80647A34-80647AC8 009A14 0094+00 1/1 0/0 0/0 .text            checkPillarSwing__10daB_ZANT_cFv */
void daB_ZANT_c::checkPillarSwing() {
    if (field_0x707 != 0) {
        fopAc_ac_c* ppillar;
        fopAcM_SearchByID(mPillarIDs[field_0x70a], &ppillar);

        if (ppillar != NULL && ((daPillar_c*)ppillar)->checkRollAttack()) {
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
    fopAc_ac_c* ppillar;

    switch (mMode) {
    case 0:
        gravity = -5.0f;
        field_0x707 = 1;
        setTgHitBit(FALSE);
        mBodySphCc[0].OnTgNoHitMark();
        mBodySphCc[1].OnTgNoHitMark();
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
            setBck(ANM_LV1_JUMP_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mMode = 8;
        } else if (mLastAction == ACT_SMALL_ATTACK) {
            mMode = 5;
            setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mModeTimer = 0;
        } else {
            mMode = 5;
            setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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
                    setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
                    mMode = 2;
                }
            } else {
                mMode = 5;
                setBck(ANM_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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

        if (mModeTimer == 0 && mAcch.ChkGroundHit()) {
            setBck(ANM_LV1_JUMP_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mMode = 8;
        }
        break;
    case 8:
        cLib_addCalcAngleS2(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x6ac), 8, 0x800);

        if (mpModelMorf->checkFrame(13)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_V_JUMP, -1);
            mModeTimer = 18;
            speed.y = 45.0f;
            mMode = 9;
            field_0x707 = 0;

            fopAcM_SearchByID(mPillarIDs[field_0x70a], &ppillar);
            if (ppillar != NULL) {
                ((daPillar_c*)ppillar)->setShake(daPillar_c::SHAKE_WEAK);
            }
        }
        break;
    case 9:
        if (mModeTimer != 0) {
            cXyz sp2C(field_0x6ac.x, current.pos.y, field_0x6ac.z);
            cLib_chasePosXZ(&current.pos, sp2C, field_0x6ac.absXZ(current.pos) / mModeTimer);
        }

        if (mModeTimer == 8) {
            setBck(ANM_LB1_JUMP_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        if (mAcch.ChkGroundHit()) {
            current.pos = field_0x6ac;
            field_0x707 = 1;
            field_0x70a = field_0x709;
            
            fopAcM_SearchByID(mPillarIDs[field_0x70a], &ppillar);
            if (ppillar != NULL) {
                ((daPillar_c*)ppillar)->setShake(daPillar_c::SHAKE_WEAK);
            }

            mMode = 1;
            field_0x6fd++;
        }
        break;
    case 100:
        target_info_count = 0;
        fpcM_Search(s_pillar_sub, this);

        if (target_info_count < 8 || mPillarIDs[8] == fpcM_ERROR_PROCESS_ID_e) {
            for (int i = 0; i < 9; i++) {
                mPillarIDs[i] = fpcM_ERROR_PROCESS_ID_e;
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
        mModeTimer = 90;

        if (mMode == 20) {
            mModeTimer = 30;
        }

        setBck(ANM_FAINT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        mMode = 1;

        mBodySphCc[0].OffTgNoHitMark();
        mBodySphCc[1].OffTgNoHitMark();

        mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_V_OTT, -1);
    case 1:
        if (mModeTimer == 0) {
            setActionMode(ACT_MONKEY, 0);
        }
        break;
    case 10:
        setBck(ANM_FALL, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mMode = 11;
        field_0x707 = 0;
        setTgHitBit(FALSE);
        speedF = 0.0f;
    case 11:
        if (mpModelMorf->checkFrame(5)) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_MK_V_FALL, -1);
        }

        if (mpModelMorf->isStop()) {
            cXyz offset(-30.0f, -170.0f, -175.0f);
            cLib_offsetPos(&current.pos, &current.pos, shape_angle.y, &offset);
            old.pos = current.pos;
            speed.y = -15.0f;
            speedF = 8.0f;
            current.angle.y = shape_angle.y + 0x8000;

            setBck(ANM_LANDING, J3DFrameCtrl::EMode_NONE, 0.0f, 0.0f);
            mMode = 12;

            mBodySphCc[0].OnAtSetBit();
            mBodySphCc[1].OnAtSetBit();
        }
        break;
    case 12:
        if (mAcch.ChkGroundHit()) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_MK_UMARU, 0, -1);
            setMonkeyFallEffect();
            dComIfGp_getVibration().StartShock(3, 31, cXyz(0.0f, 1.0f, 0.0f));

            mBodySphCc[0].OffAtSetBit();
            mBodySphCc[1].OffAtSetBit();

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

        setBck(ANM_LANDING_DAMAGE, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        mMode = 1;
        field_0x702 = 0;
    case 1:
        if (field_0x6f0 == 0) {
            setTgHitBit(FALSE);
        }

        if (mpModelMorf->isStop()) {
            setBck(ANM_LANDING_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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

        setBck(ANM_LANDING_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
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

/* 80648778-80648F64 00A758 07EC+00 5/5 0/0 0/0 .text            setLastWarp__10daB_ZANT_cFii */
void daB_ZANT_c::setLastWarp(int param_0, int i_warpID) {
    mFlyWarpPosID = i_warpID;

    if (mFightCycle == 0) {
        if (health <= 400) {
            mFightCycle = 1;
        }
    } else if (mFightCycle == 1 && health <= 200) {
        mFightCycle = 2;
    }

    if (field_0x713 != mFightCycle) {
        field_0x71d = 0;
        field_0x703 = 0;
        field_0x71c = 0;
        field_0x712 = 0;

        if (mFightCycle == 2) {
            field_0x6ec = 450;
            field_0x71d = 1;
            field_0x6ff = 0;
        }
    }

    field_0x713 = mFightCycle;

    cXyz player_pos(daPy_getPlayerActorClass()->current.pos);
    s16 var_r28;

    if (field_0x713 == 2 && param_0) {
        if (field_0x703 <= 1 || field_0x6ff >= 3) {
            if (field_0x71d == 1) {
                param_0 = 3;
            } else {
                param_0 = 1;
            }
        } else {
            if (cM_rnd() < 0.5f) {
                param_0 = 3;
            } else {
                param_0 = 1;
            }

            if (field_0x71d == param_0) {
                field_0x6ff++;
            } else {
                field_0x6ff = 0;
            }
        }

        field_0x71d = param_0;
    }

    switch (param_0) {
    case 0:
        mFlyWarpPos.set(0.0f, 0.0f, 1000.0f);
        field_0x70f = 0;
        mDrawSwords = true;
        mSwordSize = 1.0f;
        break;
    case 1:
        if (field_0x713 == 0) {
            field_0x70f = 0;
            
            field_0x703++;
            if (field_0x703 >= 3 && cM_rnd() < (field_0x703 / 10.0f) + 0.3f) {
                field_0x70f = 10;
                field_0x71d = 0;
                field_0x703 = 0;
                field_0x71c = 0;
                field_0x712 = 0;
            }

            field_0x704 = 0;

            var_r28 = cM_atan2s(-player_pos.x, -200.0f - player_pos.z);
            mFlyWarpPos.set(cM_ssin(var_r28) * 1000.0f, 0.0f, cM_scos(var_r28) * 1000.0f - 200.0f);
        } else {
            field_0x70f = 0;
            field_0x703++;

            if (field_0x713 != 2 && field_0x703 >= 3 && cM_rnd() < (field_0x703 / 10.0f) + 0.3f) {
                field_0x70f = 10;
                field_0x71d = 0;
                field_0x703 = 0;
                field_0x71c = 0;
                field_0x712 = 0;
            }

            field_0x704 = 0;
            f32 var_f31 = cM_rndF(200.0f) + 300.0f;
            var_r28 = daPy_getPlayerActorClass()->shape_angle.y + 0x8000;

            if (field_0x70f == 10) {
                var_f31 += 400.0f;
                var_r28 = daPy_getPlayerActorClass()->shape_angle.y + cM_rndFX(2.9f) * 8192.0f;
            } else if (dComIfGp_checkPlayerStatus0(0, 0x400)) {
                var_f31 += 400.0f;
            }

            mFlyWarpPos.set(cM_ssin(var_r28) * var_f31, 0.0f, cM_scos(var_r28) * var_f31);
            mFlyWarpPos += player_pos;

            if (mFlyWarpPos.z > 1000.0f || mFlyWarpPos.z < -1400.0f || std::abs(mFlyWarpPos.x) > 1200.0f) {
                var_r28 = cM_atan2s(-player_pos.x, -200.0f - player_pos.z);
                mFlyWarpPos.set(cM_ssin(var_r28) * var_f31, 0.0f, cM_scos(var_r28) * var_f31);
                mFlyWarpPos += player_pos;
            }
        }
        break;
    case 2: {
        f32 var_f29 = player_pos.absXZ(current.pos);
        s16 spE = cLib_targetAngleY(&player_pos, &current.pos);
        s16 spC = cM_atan2s(-player_pos.x, -player_pos.z);

        if ((s16)(spE - spC) < 0) {
            var_r28 = spE + 0x2000;
        } else {
            var_r28 = spE - 0x2000;
        }

        if (var_f29 < 400.0f) {
            var_f29 = 400.0f;
        }

        mFlyWarpPos.set(var_f29 * cM_ssin(var_r28), 0.0f, var_f29 * cM_scos(var_r28));
        mFlyWarpPos += player_pos;
        field_0x70f = 20;
        break;
    }
    case 3:
        f32 var_f30 = cM_rndF(200.0f) + 700.0f;
        if (field_0x713 == 0) {
            var_f30 += 400.0f;
            var_r28 = cM_atan2s(-player_pos.x, -200.0f - player_pos.z);
        } else {
            var_f30 += 400.0f;
            var_r28 = daPy_getPlayerActorClass()->shape_angle.y + cM_rndFX(3.9f) * 8192.0f;
        }

        mFlyWarpPos.set(cM_ssin(var_r28) * var_f30, 0.0f, cM_scos(var_r28) * var_f30);
        mFlyWarpPos += player_pos;

        if (mFlyWarpPos.z > 1000.0f || mFlyWarpPos.z < -1400.0f || std::abs(mFlyWarpPos.x) > 1200.0f) {
            var_r28 = cM_atan2s(-player_pos.x, -200.0f - player_pos.z);
            mFlyWarpPos.set(cM_ssin(var_r28) * var_f30, 0.0f, cM_scos(var_r28) * var_f30);
            mFlyWarpPos += player_pos;
        }

        field_0x70f = 10;
        field_0x704 = 1;
        break;
    }

    field_0x711 = 0;
    setActionMode(ACT_WARP, 1);
}

/* 80648F64-806494A8 00AF44 0544+00 2/1 0/0 0/0 .text executeLastStartDemo__10daB_ZANT_cFv */
void daB_ZANT_c::executeLastStartDemo() {
    dCamera_c* camera = dCam_getBody();
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp1C;
    cXyz sp28(0.0f, 0.0f, 0.0f);

    switch (mMode) {
    case 0:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.onCondition(2);
        } else {
            camera->Stop();
            camera->SetTrimSize(3);
            setBck(ANM_LAST_DEMO, J3DFrameCtrl::EMode_NONE, 10.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_OP, 0, -1);
            mpModelMorf->setPlaySpeed(0.0f);

            gravity = -5.0f;
            mModeTimer = 10;
            mMode = 1;
            field_0x71d = 0;
            field_0x703 = 0;
            field_0x71c = 0;
            field_0x712 = 0;
        }
        break;
    case 1:
        if (mModeTimer == 0) {
            current.pos.set(0.0f, 480.0f, -1000.0f);
            shape_angle.y = 0;
            shape_angle.z = 0;
            shape_angle.x = 0;
            current.angle.y = -0x8000;
            speedF = 0.0f;

            mDemoCamEye.set(0.0f, 50.0f, -600.0f);
            mDemoCamCenter.set(0.0f, 200.0f, -1000.0f);
            mDemoCamBank = 60.0f;
            mMode = 2;
            return;
        }
        break;
    case 2:
        player->setPlayerPosAndAngle(&sp28, 0x8000, 0);

        sp1C.set(0.0f, 90.0f, -900.0f);
        cLib_addCalcPos(&mDemoCamCenter, sp1C, 0.2f, 5.0f, 1.0f);

        if (mAcch.ChkGroundHit()) {
            speed.y = 0.0f;
            speedF = 0.0f;
            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
            mpModelMorf->setPlaySpeed(1.0f);
            mMode = 3;
        }
        break;
    case 3:
        sp1C = eyePos;
        sp1C.y -= 30.0f;

        cLib_addCalcPos(&mDemoCamCenter, sp1C, 0.5f, 50.0f, 1.0f);
        if (mpModelMorf->checkFrame(97)) {
            mMode = 4;
        }
        break;
    case 4:
        cLib_addCalc2(&mDemoCamBank, 72.0f, 0.3f, 1.0f);
        sp1C = eyePos;
        sp1C.y -= 30.0f;

        cLib_addCalc2(&mDemoCamCenter.y, sp1C.y, 0.5f, 50.0f);
        sp1C.y = mDemoCamCenter.y;

        cLib_addCalcPosXZ(&mDemoCamCenter, sp1C, 0.5f, 3.0f, 1.0f);
        if (mpModelMorf->checkFrame(103)) {
            dComIfGp_getVibration().StartShock(2, 31, cXyz(0.0f, 1.0f, 0.0f));
            mMode = 5;
        }
        break;
    case 5:
        cLib_addCalc2(&mDemoCamBank, 72.0f, 0.3f, 1.0f);
        sp1C = eyePos;
        sp1C.y = mDemoCamCenter.y;

        cLib_addCalcPosXZ(&mDemoCamCenter, sp1C, 0.5f, 3.0f, 1.0f);
        if (mpModelMorf->checkFrame(134)) {
            mDrawSwords = true;
            mMode = 6;
        }
        break;
    case 6:
        cLib_addCalc2(&mDemoCamCenter.y, 128.0f, 0.3f, 3.0f);
        cLib_addCalc2(&mDemoCamBank, 55.0f, 0.3f, 3.0f);

        if (mpModelMorf->isStop()) {
            mFightCycle = 0;
            field_0x713 = 0;
            setActionMode(ACT_LAST_ATTACK, 0);
            field_0x70b = 0;
            attention_info.flags = 4;

            mDemoCamEye.set(0.0f, 300.0f, 200.0f);
            camera->Reset(mDemoCamCenter, mDemoCamEye);
            camera->Start();
            camera->SetTrimSize(0);
            dComIfGp_event_reset();
            return;
        }
        break;
    }

    camera->Set(mDemoCamCenter, mDemoCamEye, mDemoCamBank, 0);
}

/* 806494A8-8064A58C 00B488 10E4+00 2/1 0/0 0/0 .text            executeLastAttack__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeLastAttack() {
    s16 angle_to_player = fopAcM_searchPlayerAngleY(this);

    switch (mMode) {
    case 0:
        gravity = -5.0f;

        if (field_0x713 == 0) {
            mMode = 1;
            setBck(ANM_SW_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mModeTimer = 60;
        } else {
            mMode = 5;
        }
        break;
    case 1:
        if (mpModelMorf->checkFrame(2) || mpModelMorf->checkFrame(17)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_SWD_RUB, 0, -1);
        }

        if (checkAvoidWeapon(0)) {
            mSwordCc[0].OffAtSetBit();
            mSwordCc[1].OffAtSetBit();
            setTgHitBit(FALSE);

            field_0x71c++;
            if (field_0x71c < 5) {
                setLastWarp(2, 0);
            } else {
                field_0x703 = 7;
                setLastWarp(1, 0);
            }
        } else {
            cLib_addCalcAngleS2(&shape_angle.y, angle_to_player, 0x10, 0x400);
            current.angle.y = shape_angle.y;

            if (fopAcM_searchPlayerDistance(this) < 800.0f || mModeTimer == 0) {
                mMode = 2;
                setBck(ANM_SW_WALK, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            }
        }
        break;
    case 2:
        if (mpModelMorf->checkFrame(10) || mpModelMorf->checkFrame(26)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_FOOT, 0, -1);
        }

        if (checkAvoidWeapon(0)) {
            mSwordCc[0].OffAtSetBit();
            mSwordCc[1].OffAtSetBit();
            setTgHitBit(FALSE);

            field_0x71c++;
            if (field_0x71c < 5) {
                setLastWarp(2, 0);
            } else {
                field_0x703 = 7;
                setLastWarp(1, 0);
            }
        } else {
            cLib_addCalcAngleS2(&shape_angle.y, angle_to_player, 0x10, 0x400);
            current.angle.y = shape_angle.y;
            cLib_chaseF(&speedF, 5.0f, 1.0f);

            if (fopAcM_searchPlayerDistance(this) < 500.0f) {
                mMode = 5;
            }
        }
        break;
    case 5:
        if (field_0x713 == 0) {
            setBck(ANM_SW_ATTACK, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mModeTimer = 200;
            speedF = 5.0f;
        } else {
            setBck(ANM_SW_ATTACK_B, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);

            if (field_0x713 != 2) {
                mModeTimer = cM_rndF(60.0f) + 60.0f;
            } else {
                mModeTimer = cM_rndF(15.0f) + 30.0f;
            }

            speedF = 10.0f;
        }

        mMode = 6;
        field_0x6f8 = 0;
        current.angle.y = shape_angle.y;

        setTgType(2);
        setTgHitBit(TRUE);
        setTgShield(FALSE);
        field_0x702 = 0;
    case 6:
        if (checkAvoidWeapon(FALSE)) {
            mSwordCc[0].OffAtSetBit();
            mSwordCc[1].OffAtSetBit();
            setTgHitBit(FALSE);

            field_0x71c++;
            if (field_0x71c < 10) {
                setLastWarp(2, 0);
            } else {
                field_0x703 = 7;
                setLastWarp(1, 0);
            }
        } else {
            cLib_chaseF(&mSwordSize, l_HIO.mSwordAttackSize, 0.1f);
            cLib_addCalcAngleS2(&current.angle.y, angle_to_player, 8, 0x400);
            cLib_addCalcAngleS2(&shape_angle.y, angle_to_player, 8, 0x400);

            if (field_0x713 == 0) {
                if (mpModelMorf->checkFrame(4) || mpModelMorf->checkFrame(24)) {
                    mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_SW_SWING_L, 0, -1);
                } else if (mpModelMorf->checkFrame(7) || mpModelMorf->checkFrame(28)) {
                    mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_FOOT_L, 0, -1);
                } else if (mpModelMorf->checkFrame(5)) {
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_CTL_V_SW_ATK_A1, -1);
                } else if (mpModelMorf->checkFrame(22)) {
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_CTL_V_SW_ATK_A2, -1);
                }

                if (mpModelMorf->checkFrame(1)) {
                    mSwordCc[1].OnAtSetBit();
                }

                if (mpModelMorf->checkFrame(12)) {
                    mSwordCc[1].OffAtSetBit();
                }

                if (mpModelMorf->checkFrame(22)) {
                    mSwordCc[0].OnAtSetBit();
                }

                if (mpModelMorf->checkFrame(33)) {
                    mSwordCc[0].OffAtSetBit();
                }
            } else {
                if (mpModelMorf->checkFrame(2) || mpModelMorf->checkFrame(20)) {
                    mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_SW_SWING_S1, 0, -1);
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_CTL_V_SW_ATK_B1, -1);
                } else if (mpModelMorf->checkFrame(11) || mpModelMorf->checkFrame(28)) {
                    mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_SW_SWING_S2, 0, -1);
                    mSound.startCreatureVoice(Z2SE_EN_ZAN_CTL_V_SW_ATK_B2, -1);
                } else if (mpModelMorf->checkFrame(0) || mpModelMorf->checkFrame(9) || mpModelMorf->checkFrame(17) || mpModelMorf->checkFrame(26)) {
                    mSound.startCreatureSound(Z2SE_EN_ZAN_CTL_FOOT, 0, -1);
                }

                if (mpModelMorf->checkFrame(1) || mpModelMorf->checkFrame(19)) {
                    mSwordCc[1].OnAtSetBit();
                    mSwordCc[0].OffAtSetBit();
                }

                if (mpModelMorf->checkFrame(9) || mpModelMorf->checkFrame(28)) {
                    mSwordCc[0].OnAtSetBit();
                    mSwordCc[1].OffAtSetBit();
                }
            }

            if (mModeTimer == 0 && mpModelMorf->checkFrame(1)) {
                mSwordCc[0].OffAtSetBit();
                mSwordCc[1].OffAtSetBit();
                setTgHitBit(FALSE);
                setLastWarp(1, 0);
            }
        }
        break;
    case 20:
        if (fopAcM_searchPlayerDistance(this) < 500.0f) {
            mMode = 5;
        } else {
            mMode = 2;
            setBck(ANM_SW_WALK, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        }
        break;
    case 10:
    case 30:
        dComIfGs_onOneZoneSwitch(1, fopAcM_GetRoomNo(this));
        setBck(ANM_SPIN, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);

        if (field_0x704 == 0) {
            if (field_0x713 != 2) {
                field_0x6ec = 300;
                field_0x71d = 1;
                field_0x6ff = 0;
            }
        } else if (field_0x6ec < 30) {
            field_0x6ec = 30;
        }

        if (field_0x713 == 0) {
            mMode = 11;
        } else {
            mMode = 31;
        }

        current.angle.y = angle_to_player;

        mRollCc.OnAtSetBit();
        mRollCc.OnTgSetBit();
        mRollCc.OnCoSetBit();
        setTgType(0xD8FBFDFF);
        setTgShield(TRUE);
        setTgHitBit(TRUE);
        field_0x6f8 = 0x3000;
        speedF = 30.0f;
        field_0x6fd = 0;
        field_0x70b = 0;
    case 11:
    case 31: {
        mSound.startCreatureVoiceLevel(Z2SE_EN_ZAN_CTL_V_SPIN_ATK, -1);
        setLastRollEffect();

        cLib_chaseF(&mSwordSize, l_HIO.mSwordAttackSize, 0.1f);
        
        f32 var_f31 = 1.2f;
        if (field_0x713 != 0) {
            var_f31 = 1.5f;
        }

        if (field_0x70b != 0) {
            if (mAcch.ChkGroundHit()) {
                field_0x70b--;

                if (field_0x70b != 0) {
                    speedF = 0.0f;
                    speed.y = 30.0f;
                    field_0x6ec = 0;
                }
            }
        } else if (mMode == 11) {
            int sp48 = abs((s16)(angle_to_player - current.angle.y));
            if (sp48 > 0x4000) {
                if (sp48 > 0x6800) {
                    cLib_chaseF(&speedF, -30.0f, var_f31 * 0.2f);
                } else {
                    cLib_chaseF(&speedF, 5.0f, var_f31 * 0.2f);
                }

                cLib_addCalcAngleS2(&current.angle.y, angle_to_player + 0x8000, 0x10, var_f31 * 512.0f);
                if (speedF < 0.0f && sp48 > 0x6000) {
                    current.angle.y += 0x8000;
                    speedF = -speedF;
                }
            } else {
                if (sp48 > 0x1800) {
                    cLib_chaseF(&speedF, 10.0f, var_f31);
                } else {
                    cLib_chaseF(&speedF, var_f31 * 30.0f, var_f31);
                }

                cLib_addCalcAngleS2(&current.angle.y, angle_to_player, 0x10, var_f31 * 768.0f);
            }
        } else {
            cLib_chaseF(&speedF, var_f31 * 30.0f, var_f31 * 2.0f);
        }

        int sp3C = 0;
        int sp40 = 0;
        int sp44 = 0;
        cCcD_Obj* sp48 = NULL;

        if (mRollCc.ChkTgHit()) {
            sp48 = mRollCc.GetTgHitObj();
            
            if (sp48->ChkAtType(AT_TYPE_IRON_BALL)) {
                sp40 = 1;
            } else if (sp48->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
                daPy_py_c* player = daPy_getPlayerActorClass();
                if (player->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT || player->getCutType() == daPy_py_c::CUT_TYPE_TURN_LEFT ||
                    player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT || player->getCutType() == daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT)
                {
                    sp40 = 1;
                }
            }

            def_se_set(&mSound, mRollCc.GetTgHitObj(), 0x2A, this);
            mRollCc.ClrTgHit();
        } else if (mRollCc.ChkAtHit()) {
            sp48 = mRollCc.GetAtHitObj();
            if (!mRollCc.ChkAtShieldHit()) {
                sp44 = 1;
            }

            mRollCc.ClrAtHit();
        }

        if (sp48 != NULL && fopAcM_GetName(dCc_GetAc(sp48->GetAc())) == PROC_ALINK) {
            sp3C = 1;
            field_0x6fd++;

            if (sp40 != 0) {
                speedF = -speedF;
                field_0x70b = 2;
                speed.y = 40.0f;
            } else if (sp44 != 0) {
                field_0x6fd += 5;
                speedF = -45.0f;
            } else {
                speedF = -2.0f;
            }
        } else {
            if (mAcch.ChkWallHit()) {
                s16 sp8 = mAcchCir.GetWallAngleY();

                if (speedF > 0.0f) {
                    if ((s16)cLib_distanceAngleS(sp8, current.angle.y) > 0x5800) {
                        current.angle.y = sp8 - 0x8000;
                        speedF *= 0.8f;
                        sp3C = 1;
                        field_0x6fd += 5;
                    }
                } else {
                    if ((s16)cLib_distanceAngleS(sp8, current.angle.y) < 0x2800) {
                        current.angle.y = sp8 - (s16)(current.angle.y - sp8);
                        speedF *= 0.8f;
                        sp3C = 1;
                        field_0x6fd += 5;
                    }
                }
            }
        }

        if (sp3C != 0) {
            if (mMode == 31 && field_0x6fd >= 5) {
                mRollCc.OffAtSetBit();
                mRollCc.OffTgSetBit();
                mRollCc.OffCoSetBit();
                setTgHitBit(FALSE);
                setLastWarp(3, sp44);
                return;
            }

            if (field_0x6ec < 10) {
                field_0x6ec = 10;
                mMode = 12;
            }
        }

        cLib_chaseAngleS(&field_0x6f8, 0x3000, 0x80);
        shape_angle.y += field_0x6f8;

        if (field_0x6ec == 0) {
            mMode = 12;
        }
        break;
    }
    case 12:
        mSound.startCreatureVoiceLevel(Z2SE_EN_ZAN_CTL_V_SPIN_ATK, -1);
        setLastRollEffect();

        cLib_chaseF(&speedF, 0.0f, 1.0f);
        cLib_chaseAngleS(&field_0x6f8, 0, 0x80);
        shape_angle.y += field_0x6f8;

        if (field_0x6f8 < 0x1000) {
            mRollCc.OffAtSetBit();
            mRollCc.OffTgSetBit();
            mRollCc.OffCoSetBit();

            setBck(ANM_SW_FATIGUE, J3DFrameCtrl::EMode_LOOP, 30.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_ZAN_CTL_V_ZEIZEI, -1);
            mMode = 13;
            dComIfGs_offOneZoneSwitch(1, fopAcM_GetRoomNo(this));

            if (field_0x713 == 2) {
                field_0x6ec = 450;
            }
        }
        break;
    case 13:
        if (field_0x6f8 < 0x800) {
            field_0x702 = 0;
            setTgShield(FALSE);
            setTgHitBit(TRUE);

            field_0x6f0 = 60;
            field_0x71d = 0;
            field_0x703 = 0;
            field_0x71c = 0;
            field_0x712 = 0;
        }

        cLib_chaseF(&mSwordSize, 1.0f, 0.1f);
        cLib_chaseF(&speedF, 0.0f, 1.0f);
        cLib_chaseAngleS(&field_0x6f8, 0, 0x80);
        shape_angle.y += field_0x6f8;

        if (field_0x6f8 == 0) {
            setActionMode(ACT_LAST_TIRED, 0);
        }
        break;
    }
}

/* 8064A58C-8064A688 00C56C 00FC+00 1/1 0/0 0/0 .text            executeLastTired__10daB_ZANT_cFv */
void daB_ZANT_c::executeLastTired() {
    switch (mMode) {
    case 0:
        if (field_0x713 == 0) {
            mModeTimer = 120;
        } else if (field_0x713 == 1) {
            mModeTimer = 90;
        } else {
            mModeTimer = 60;
        }

        field_0x6f0 = mModeTimer;
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
        if (mModeTimer == 0) {
            setTgHitBit(FALSE);
            setLastWarp(1, 0);
        }
    }
}

/* 8064A688-8064AC20 00C668 0598+00 2/1 0/0 0/0 .text            executeLastDamage__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeLastDamage() {
    switch (mMode) {
    case 0:
    case 1:
    case 2:
        if (mLastAction == ACT_LAST_ATTACK) {
            field_0x6f0 = 0;
        }

        if (field_0x6f0 == 0) {
            setTgHitBit(FALSE);
        } else {
            setTgHitBit(TRUE);
        }

        mSwordCc[0].OffAtSetBit();
        mSwordCc[1].OffAtSetBit();

        speedF = 0.0f;
        attention_info.flags = 4;

        if (mTakenBigDmg) {
            if (mFightCycle == 0) {
                if (health < 400) {
                    health = 400;
                }
            } else if (mFightCycle == 1 && health < 200) {
                health = 200;
            }

            mFightCycle++;
            setTgHitBit(FALSE);
        }

        if (health <= 0 || mFightCycle >= 3) {
            mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
            setActionMode(ACT_LAST_END_DEMO, 0);
            return;
        }

        field_0x702 = 0;

        if (mMode == 1) {
            setBck(ANM_SW_DAMAGE_R, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else if (mMode == 2) {
            setBck(ANM_SW_DAMAGE_L, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else if (cM_rnd() < 0.5f) {
            setBck(ANM_SW_DAMAGE_L, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else {
            setBck(ANM_SW_DAMAGE_R, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG, -1);
        mMode = 5;
    case 5: {
        BOOL var_r28 = false;
        if (checkBck(ANM_SW_DAMAGE_L)) {
            if (mpModelMorf->checkFrame(17)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG_JITANDA, -1);
            }

            if (mLastAction == ACT_LAST_ATTACK) {
                if (mpModelMorf->checkFrame(18)) {
                    var_r28 = true;
                }
            } else {
                if (mpModelMorf->checkFrame(38)) {
                    var_r28 = true;
                }
            }

            if (var_r28) {
                setTgHitBit(FALSE);
                field_0x71c++;
                field_0x712++;

                if (field_0x71c >= 5 || field_0x712 >= 3) {
                    field_0x703 = 7;
                    setLastWarp(1, 0);
                } else if (mLastAction == ACT_LAST_ATTACK) {
                    setLastWarp(2, 0);
                } else {
                    setLastWarp(1, 0);
                }
            }
        } else {
            if (mpModelMorf->checkFrame(19)) {
                mSound.startCreatureVoice(Z2SE_EN_ZAN_V_DMG_SHINARU, -1);
            }

            if (mLastAction == ACT_LAST_ATTACK) {
                if (mpModelMorf->checkFrame(20)) {
                    var_r28 = true;
                }
            } else {
                if (mpModelMorf->checkFrame(30)) {
                    var_r28 = true;
                }
            }

            if (var_r28) {
                setTgHitBit(FALSE);
                field_0x71c++;
                field_0x712++;

                if (field_0x71c >= 5 || field_0x712 >= 3) {
                    field_0x703 = 7;
                    setLastWarp(1, 0);
                } else if (mLastAction == ACT_LAST_ATTACK) {
                    setLastWarp(2, 0);
                } else {
                    setLastWarp(1, 0);
                }
            }
        }
        break;
    }
    case 10:
        attention_info.flags = 4;
        setBck(ANM_GROUND_REACTION, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_ZAN_V_NO_DMG, -1);
        mMode = 11;
        speedF = 0.0f;
        break;
    case 11:
        if (mpModelMorf->isStop()) {
            setTgHitBit(FALSE);
            setLastWarp(1, 0);
        }
        break;
    case 20:
        setBck(ANM_FAINT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        speedF = 0.0f;
        speed.y = 0.0f;
        field_0x702 = 0;
        mModeTimer = 20;
        mMode = 21;
    case 21:
        if (mModeTimer == 0) {
            setTgHitBit(FALSE);
            setLastWarp(1, 0);
        }
        break;
    }
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

/* 8064AC8C-8064B270 00CC6C 05E4+00 1/1 0/0 0/0 .text            executeLastEndDemo__10daB_ZANT_cFv
 */
void daB_ZANT_c::executeLastEndDemo() {
    dCamera_c* camera = dCam_getBody();
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp34;
    cXyz sp40;

    switch (mMode) {
    case 0:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.onCondition(2);
            return;
        }

        mDrawSwords = false;
        camera->Stop();
        camera->SetTrimSize(3);
        
        setBck(ANM_DIE_DEMO, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_ZAN_END, 0, -1);
        Z2GetAudioMgr()->bgmStop(30, 0);
        fpcM_Search(s_del_tp, this);
        speedF = 0.0f;

        mDemoCamCenter.set(0.0f, 120.0f, -1000.0f);
        mDemoCamEye.set(0.0f, 50.0f, -750.0f);
        mDemoCamBank = 80.0f;
        
        mMode = 1;
        field_0x6ba = 0x2F00;
        field_0x6bc = 0.0f;
        dComIfGs_onStageBossEnemy();
        return;
    case 1:
    case 2:
        if (mMode == 1) {
            cXyz sp4C(0.0f, 0.0f, 0.0f);
            player->setPlayerPosAndAngle(&sp4C, 0x8000, 0);

            current.pos.set(0.0f, 0.0f, -1000.0f);
            shape_angle.z = 0;
            shape_angle.x = 0;
            shape_angle.y = 0;
            sp34 = mDemoCamCenter;
            mMode = 2;
        } else {
            sp34 = eyePos;
            sp34.y -= 44.0f;
        }

        {
            f32 var_f31 = mpModelMorf->getFrame();
            if ((80 <= var_f31 && var_f31 <= 120) || (175 <= var_f31 && var_f31 <= 205)) {
                cLib_addCalcPos(&mDemoCamCenter, sp34, 0.1f, 3.0f, 1.0f);
            } else {
                cLib_addCalcPos(&mDemoCamCenter, sp34, 0.5f, 30.0f, 1.0f);
            }
        }

        cLib_addCalcAngleS(&field_0x6ba, 0, 0x10, 0x40, 0x10);

        sp34.set(0.0f, 50.0f, -1000.0f);
        sp40.set(0.0f, field_0x6bc, 250.0f);
        cLib_offsetPos(&mDemoCamEye, &sp34, field_0x6ba, &sp40);

        if (mpModelMorf->checkFrame(230)) {
            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (mpModelMorf->checkFrame(250)) {
            mMode = 3;
        }
        break;
    case 3:
        cLib_addCalcAngleS(&field_0x6ba, 0, 0x10, 0x40, 0x10);
        cLib_addCalc2(&field_0x6bc, 250.0f, 0.1f, 3.0f);
        sp34.set(0.0f, 300.0f, -1000.0f);
        sp40.set(0.0f, 0.0f, 150.0f);
        
        {
            cXyz sp58;
            cLib_offsetPos(&sp58, &sp34, field_0x6ba, &sp40);
            cLib_addCalcPos(&mDemoCamEye, sp58, 0.1f, 4.0f, 1.0f);
        }
        
        sp34 = eyePos;
        cLib_addCalcPos(&mDemoCamCenter, sp34, 0.1f, 0.8f, 1.0f);

        if (mpModelMorf->checkFrame(340)) {
            mpModelMorf->setFrame(300);
            mMode = 14;
            
            mDemoCamEye.set(0.0f, 5.0f, -800.0f);
            field_0x6bc = 30.0f;
            mDemoCamCenter = eyePos;
            mDemoCamCenter.y -= field_0x6bc;
            mDemoCamBank = 80.0f;
        }
        break;
    case 14:
        mDemoCamCenter = eyePos;
        mDemoCamCenter.y -= field_0x6bc;

        if (mpModelMorf->checkFrame(360)) {
            mpModelMorf->setPlaySpeed(0.5f);
            mMode = 15;
        }
        break;
    case 15:
        if (mpModelMorf->checkFrame(375)) {
            dComIfGp_setNextStage("D_MN08A", 25, 10, 9);
        }

        mDemoCamCenter = eyePos;
        mDemoCamCenter.y -= field_0x6bc;

        cLib_chaseF(&field_0x6bc, 0.0f, 1.0f);
        cLib_chaseF(&mDemoCamBank, 80.0f, 0.5f);
        break;
    }

    camera->Set(mDemoCamCenter, mDemoCamEye, mDemoCamBank, 0);
}

/* 8064B270-8064B49C 00D250 022C+00 1/1 0/0 0/0 .text            calcMahojinAnime__10daB_ZANT_cFv */
void daB_ZANT_c::calcMahojinAnime() {
    switch (mMahojinAnmMode) {
    case 1:
        mpMahojinStartBtk->setPlaySpeed(1.0f);
        mpMahojinStartBtk->setFrame(0);
        mpMahojinBrk->setPlaySpeed(0.0f);
        mpMahojinBrk->setFrame(0);
        mMahojinAnmMode = 2;
    case 2:
        if (mpMahojinStartBtk->checkFrame(9)) {
            mMahojin2AnmMode = 1;
        }

        if (mpMahojinStartBtk->isStop()) {
            mMahojinAnmMode = 3;
        }
        break;
    case 3:
        break;
    case 4:
        mpMahojinBrk->setPlaySpeed(1.0f);
        mMahojinAnmMode = 5;
    case 5:
        if (mpMahojinBrk->isStop()) {
            mMahojinAnmMode = 0;
        }
        break;
    }

    switch (mMahojin2AnmMode) {
    case 0:
        mpMahojinBrk2->setPlaySpeed(0.0f);
        mpMahojinBrk2->setFrame(30);
        mpMahojinStartBtk2->setFrame(19);
        mMahojin2Size = 1.0f;
        break;
    case 1:
        mpMahojinBrk2->setPlaySpeed(0.5f);
        cLib_chaseF(&mMahojin2Size, 10.0f, 0.1f);

        if (mpMahojinBrk2->isStop()) {
            mMahojin2AnmMode = 0;
            mpMahojinBrk2->init(mpMahojinModel2->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_zan", 0x4F), TRUE, J3DFrameCtrl::EMode_NONE, 0.0f, 0, -1);
        }
    }
}

/* 8064B49C-8064B69C 00D47C 0200+00 2/2 0/0 0/0 .text calcRoomChangeCamera__10daB_ZANT_cFi */
void daB_ZANT_c::calcRoomChangeCamera(int param_0) {
    cXyz eye_target(-100.0f, 87.0f, -160.0f);
    cXyz center_target(106.0f, 483.0f, 843.0f);

    if (param_0 == 1) {
        cXyz sp38(-20.0f, -40.0f, -100.0f);
        eye_target += sp38;
        center_target += sp38;
    }

    if (mFightPhase == PHASE_OP) {
        eye_target.x += 140.0f;
        center_target.x += 140.0f;

        mDoMtx_stack_c::YrotS(-0x8000);
        mDoMtx_stack_c::transM(eye_target);
        mDoMtx_stack_c::multVecZero(&eye_target);

        eye_target.y += 250.0f;
        eye_target.z -= 800.0f;

        mDoMtx_stack_c::YrotS(-0x8000);
        mDoMtx_stack_c::transM(center_target);
        mDoMtx_stack_c::multVecZero(&center_target);

        center_target.y += 250.0f;
        center_target.z -= 800.0f;
    }

    switch (param_0) {
    case 0:
        mDemoCamBank = 58.0f;
        cLib_chaseF(&field_0x77c, 30.0f, 1.0f);
        cLib_addCalcPos(&mDemoCamEye, eye_target, 0.3f, field_0x77c * 1.1f, 3.0f);
        cLib_addCalcPos(&mDemoCamCenter, center_target, 0.3f, field_0x77c, 3.0f);
        break;
    case 1:
        cLib_addCalcPos(&mDemoCamEye, eye_target, 0.2f, 15.0f, 3.0f);
        cLib_addCalcPos(&mDemoCamCenter, center_target, 0.2f, 15.0f, 3.0f);
        break;
    }
}

/* 8064B69C-8064B868 00D67C 01CC+00 3/3 0/0 0/0 .text            initNextRoom__10daB_ZANT_cFv */
void daB_ZANT_c::initNextRoom() {
    field_0x70f = 0;
    field_0x6f0 = 0;
    field_0x70e = 0;
    mDrawSwords = false;

    setTgType(0xD8FBFDFF);
    mBodySphCc[0].OffTgNoHitMark();
    mBodySphCc[1].OffTgNoHitMark();

    dComIfGs_offSaveDunSwitch(20);
    dComIfGs_offSaveDunSwitch(21);
    dComIfGs_offSaveDunSwitch(22);

    if (mFightPhase != PHASE_LAST) {
        health = 280;
    } else {
        health = field_0x560;
    }

    mAcchCir.SetWall(100.0f, 100.f);

    if (mFightPhase == PHASE_MG) {
        attention_info.distances[fopAc_attn_BATTLE_e] = 4;
    } else {
        attention_info.distances[fopAc_attn_BATTLE_e] = 24;
    }

    fopAc_ac_c* pmobile;
    fopAcM_SearchByID(mMobileIDs[0], &pmobile);

    if (mFightPhase == PHASE_OI) {
        fopAcM_OnStatus(this, 0x80000);

        if (pmobile == NULL) {
            cXyz pos(0.0f, -3300.0f, 0.0f);
            for (int i = 0; i < 4; i++) {
                mMobileIDs[i] = fopAcM_create(PROC_B_ZANTZ, i | 0xFFFFFF00, &pos, warp_next_room[mFightPhase], &shape_angle, NULL, -1);
            }

            mCorrectMobileNo = 0;
        }
    } else {
        fopAcM_OffStatus(this, 0x80000);

        if (pmobile != NULL) {
            fopAcM_delete(pmobile);
            mMobileIDs[0] = fpcM_ERROR_PROCESS_ID_e;
        }
    }

    tevStr.room_no = warp_next_room[mFightPhase];
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
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.onCondition(2);
            return;
        }

        camera->Stop();
        camera->SetTrimSize(3);
        
        mDemoCamCenter = dCam_getBody()->Center();
        mDemoCamEye = dCam_getBody()->Eye();
        mDemoCamBank = dCam_getBody()->Fovy();

        field_0x705 = 0;
        mMode = 1;

        if (mFightPhase != PHASE_MK) {
            setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        }

        dComIfGp_particle_set(0x88FE, &current.pos, &shape_angle, NULL);
        mSound.startCreatureSound(Z2SE_EN_ZAN_WARP_OUT, 0, -1);
        break;
    case 1:
        if (calcScale(0)) {
            mMode = 4;
            mModeTimer = l_HIO.mDemoWarpTime;
        }
        break;
    case 4:
        if (mModeTimer == 0) {
            mMode = 10;
            mModeTimer = 15;

            current.pos.set(-140.0f, 300.0f, 700.0f);
            old.pos = current.pos;
            speedF = 0.0f;
            speed.y = 0.0f;
            gravity = 0.0f;

            shape_angle.x = 0;
            current.angle.y = 0x8000;
            shape_angle.y = 0x8000;

            setBck(ANM_FLOAT_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);

            player->setPlayerPosAndAngle(&sp34, 0, 0);
            player->changeOriginalDemo();
            player->changeDemoPos0(&sp34);
            player->changeDemoMode(0x17, 1, 4, 0);

            mDemoCamBank = 65.0f;
            mDemoCamEye.set(-225.0f, 344.0f, 382.0f);
            mDemoCamCenter.set(118.0f, 672.0f, 1374.0f);

            Z2GetAudioMgr()->changeBgmStatus(13);
            field_0x77c = 0.0f;

            calcRoomChangeCamera(0);

            if (mFightPhase == PHASE_OI) {
                for (int i = 0; i < 4; i++) {
                    fopAc_ac_c* pmobile;
                    fopAcM_SearchByID(mMobileIDs[i], &pmobile);

                    if (pmobile != NULL) {
                        fopAcM_delete(pmobile);
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

        if (mModeTimer == 0) {
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
            mModeTimer = 20;
        }
        break;
    case 12:
        if (mModeTimer == 0) {
            mMode = 13;
            mModeTimer = 50;
        }
        break;
    case 13:
        calcRoomChangeCamera(0);

        if (mModeTimer == 0) {
            mMode = 14;
            setBck(ANM_FLOAT_APPEAR_SHORT, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            field_0x714 = 1;
            mKankyoBlend = 0.0f;

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
        cLib_chaseF(&mKankyoBlend, 1.0f, 0.02f);

        if (mpModelMorf->checkFrame(42)) {
            mMahojinAnmMode = 1;
            Z2GetAudioMgr()->changeBgmStatus(mFightPhase + PHASE_MAX);
        }

        if (mpModelMorf->checkFrame(42)) {
            field_0x715 = 30;
        }

        shape_angle.y = fopAcM_searchPlayerAngleY(this);
        shape_angle.x = -fopAcM_searchPlayerAngleX(this) * 0.5f;

        if (mpModelMorf->isStop()) {
            dComIfGp_getVibration().StopQuake(0x1F);
            setBck(ANM_FLOAT_APPEAR_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);

            mFightPhase++;
            if (mFightPhase >= PHASE_MAX) {
                mFightPhase = PHASE_OP;
            }

            mMode = 15;
            mModeTimer = l_HIO.mMahojinWaitTime;

            initNextRoom();
            cXyz pos(0.0f, 0.0f, 0.0f);
            dComIfGs_setRestartRoom(pos, 0, warp_next_room[mFightPhase]);
        }
        break;
    case 15:
        if (mModeTimer == 0 && dComIfGp_roomControl_checkStatusFlag(warp_next_room[mFightPhase], 0x10)) {
            mMode = 16;
            field_0x714 = 0;
            mKankyoBlend = 0.0f;

            setBck(ANM_FLOAT_WAIT_RETURN, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mMahojinAnmMode = 4;
        }
        break;
    case 16:
        cLib_chaseF(&mKankyoBlend, 1.0f, 0.02f);
        player->setPlayerPosAndAngle(&sp34, 0, 0);

        if (mpModelMorf->isStop()) {
            if (mFightPhase != PHASE_LAST) {
                camera->Reset(mDemoCamCenter, mDemoCamEye);
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

    camera->Set(mDemoCamCenter, mDemoCamEye, mDemoCamBank, 0);
}

/* 8064C1C0-8064C5A8 00E1A0 03E8+00 8/7 0/0 0/0 .text            setBaseActionMode__10daB_ZANT_cFi
 */
void daB_ZANT_c::setBaseActionMode(int param_0) {
    switch (mFightPhase) {
    case PHASE_BB:
        if (param_0 == 0) {
            if (field_0x70c == 0) {
                setActionMode(ACT_FLY, 0);
            } else {
                setActionMode(ACT_FLY_GROUND, 0);
            }
        } else if (param_0 == 1) {
            field_0x70b = 1;
            mFlyWarpPosID = 0;
            mFlyWarpPos = fly_warp_pos[mFlyWarpPosID];
            field_0x711 = 1;
            setActionMode(ACT_WARP, 1);
        } else {
            field_0x70c = 0;
            gravity = 0.0f;
            mFlyWarpPosID = (f32)mFlyWarpPosID + cM_rndF(1.9f) + 1.0f;
            mFlyWarpPos = fly_warp_pos[mFlyWarpPosID % 3];
            field_0x711 = 2;
            setActionMode(ACT_WARP, 1);
        }
        break;
    case PHASE_MG:
        if (param_0 == 0) {
            setActionMode(ACT_SIMA_JUMP, 0);
        } else if (param_0 == 1) {
            gravity = -5.0f;
            mFlyWarpPosID = 0;
            mFlyWarpPos.set(0.0f, 1000.0f, 1100.0f);
            field_0x6b8 = 0x8000;
            field_0x711 = 3;
            setActionMode(ACT_WARP, 0);
        } else {
            setActionMode(ACT_SIMA_JUMP, 11);
        }
        break;
    case PHASE_YO:
        if (param_0 == 0) {
            setActionMode(ACT_ICE_DEMO, 100);
        } else if (param_0 == 1) {
            setActionMode(ACT_ICE_DEMO, 0);
        } else {
            setActionMode(ACT_ICE_DAMAGE, 30);
        }

        mModeTimer = 0;
        break;
    case PHASE_OI:
        if (param_0 == 0) {
            setActionMode(ACT_WATER, 0);
        } else {
            fopAc_ac_c* pmobile;
            fopAcM_SearchByID(mMobileIDs[mCorrectMobileNo], &pmobile);

            s16 var_r27 = shape_angle.y;
            cXyz sp44(current.pos);
            sp44.y = -4000.0f;

            if (pmobile != NULL) {
                var_r27 = pmobile->shape_angle.y;
                sp44.set(cM_ssin(var_r27) * 300.0f, 300.0f, cM_scos(var_r27) * 300.0f);
                sp44 += pmobile->current.pos;
            }

            attention_info.flags = 0;
            field_0x6b8 = var_r27;
            mFlyWarpPos = sp44;
            field_0x705 = 1;
            field_0x711 = 1;
            setActionMode(ACT_WARP, 0);
        }
        break;
    case PHASE_MK:
        if (param_0 == 0) {
            setActionMode(ACT_MONKEY, 0);
        } else if (param_0 == 1) {
            setActionMode(ACT_MONKEY, 100);
        } else {
            setNearPillarPos();
            field_0x711 = 0;
            setActionMode(ACT_WARP, 1);
        }
        break;
    case PHASE_LAST:
        if (param_0 == 0) {
            setActionMode(ACT_LAST_ATTACK, field_0x70f);
        } else if (param_0 == 1) {
            if (field_0x718 == 0) {
                setActionMode(ACT_LAST_START_DEMO, 0);
            } else {
                setLastWarp(0, 0);
            }
        }
        break;
    case PHASE_OP:
        setActionMode(ACT_OPENING, 0);
        executeOpening();
        break;
    }
}

/* 8064C5A8-8064CB1C 00E588 0574+00 2/1 0/0 0/0 .text            action__10daB_ZANT_cFv */
void daB_ZANT_c::action() {
    if (mFightPhase == PHASE_YO) {
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
    case PHASE_BB:
        if (field_0x70c == 0) {
            dComIfGs_onOneZoneSwitch(0, fopAcM_GetRoomNo(this));
        } else {
            dComIfGs_offOneZoneSwitch(0, fopAcM_GetRoomNo(this));
        }
        break;
    case PHASE_MG:
        break;
    case PHASE_YO:
        if (checkBck(ANM_FLOAT_WAIT) && mpModelMorf->checkFrame(1)) {
            mSound.startCreatureSound(Z2SE_EN_ZAN_YO_FLOAT_WAIT, 0, -1);
        }

        {
            f32 wall_r = mModelScaleXZ * 50.0f;
            if (wall_r < 100.0f) {
                wall_r = 100.0f;
            }

            mAcchCir.SetWall(100.0f, wall_r);
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
    case PHASE_OI:
        setWaterBubble();
        checkSwimLinkNear();
        dComIfGs_onOneZoneSwitch(0, fopAcM_GetRoomNo(this));
        break;
    case PHASE_MK:
        checkPillarSwing();
        break;
    case PHASE_LAST:
        break;
    }

    s16 var_r29 = fopAcM_searchPlayerAngleX(this);
    s16 neck_rot_z = 0;
    s16 body_rot_x = 0;

    if (field_0x717 != 0) {
        if (var_r29 > 0x2800) {
            var_r29 = 0x2800;
        }

        if (var_r29 < -0x2800) {
            var_r29 = -0x2800;
        }

        if (abs(var_r29) < 0x1800) {
            neck_rot_z = 0;
            body_rot_x = var_r29;
        } else if (var_r29 > 0) {
            body_rot_x = 0x1800;
            neck_rot_z = (s16)(var_r29 - 0x1800);
        } else {
            body_rot_x = -0x1800;
            neck_rot_z = (s16)(var_r29 + 0x1800);
        }
    }

    var_r29 = fopAcM_searchPlayerAngleY(this);
    s16 neck_rot_x = 0;

    if (field_0x716 != 0) {
        if (var_r29 > 0x2000) {
            var_r29 = 0x2000;
        }

        if (var_r29 < -0x2000) {
            var_r29 = -0x2000;
        }

        neck_rot_x = var_r29;
    }

    cLib_addCalcAngleS(&mNeckRotZ, neck_rot_z, 8, 0x400, 0x80);
    cLib_addCalcAngleS(&mNeckRotX, neck_rot_x, 8, 0x400, 0x80);
    cLib_addCalcAngleS(&mBackboneRotZ, body_rot_x, 8, 0x400, 0x80);

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

    u32 sp44 = mModelScaleY * 100.0f;
    mpModelMorf->play(sp44, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 8064CB1C-8064CD0C 00EAFC 01F0+00 2/2 0/0 0/0 .text            mtx_set__10daB_ZANT_cFv */
void daB_ZANT_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.mModelSize * mModelScaleXZ, l_HIO.mModelSize * mModelScaleY, l_HIO.mModelSize * mModelScaleXZ);
    
    J3DModel* model = mpModelMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();

    if (mDrawSwords) {
        mDoMtx_stack_c::copy(model->getAnmMtx(JNT_ARM_L3));
        mDoMtx_stack_c::scaleM(mSwordSize, mSwordSize, mSwordSize);
        mpSwordLModel->setBaseTRMtx(mDoMtx_stack_c::get());

        mDoMtx_stack_c::copy(model->getAnmMtx(JNT_ARM_R3));
        mDoMtx_stack_c::scaleM(mSwordSize, mSwordSize, mSwordSize);
        mpSwordRModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }

    if (mMahojinAnmMode != 0) {
        cXyz offset(l_HIO.mMahojinOffsetX, l_HIO.mMahojinOffsetY, l_HIO.mMahojinOffsetZ);
        cXyz pos;
        cLib_offsetPos(&pos, &current.pos, shape_angle.y, &offset);

        mDoMtx_stack_c::transS(pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::scaleM(l_HIO.mMahojinSize, l_HIO.mMahojinSize, l_HIO.mMahojinSize);
        mpMahojinModel->setBaseTRMtx(mDoMtx_stack_c::get());

        mpMahojinBrk->play();
        mpMahojinBtk->play();
        mpMahojinStartBtk->play();

        if (mMahojin2AnmMode != 0) {
            mDoMtx_stack_c::copy(mpMahojinModel->getBaseTRMtx());
            mDoMtx_stack_c::scaleM(mMahojin2Size, mMahojin2Size, mMahojin2Size);
            mpMahojinModel2->setBaseTRMtx(mDoMtx_stack_c::get());
            mpMahojinBrk2->play();
            mpMahojinStartBtk2->play();
        }
    }
}

/* 8064CD0C-8064CFA8 00ECEC 029C+00 1/1 0/0 0/0 .text            cc_set__10daB_ZANT_cFv */
void daB_ZANT_c::cc_set() {
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_NECK));
    mDoMtx_stack_c::multVecZero(&eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += mModelScaleY * 100.0f;

    cXyz center;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_BACKBONE));
    mDoMtx_stack_c::transM(30.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&center);
    mBodySphCc[0].SetC(center);
    mBodySphCc[0].SetR(70.0f);
    dComIfG_Ccsp()->Set(&mBodySphCc[0]);

    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_WAIST));
    mDoMtx_stack_c::transM(50.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&center);
    mBodySphCc[1].SetC(center);
    mBodySphCc[1].SetR(70.0f);
    dComIfG_Ccsp()->Set(&mBodySphCc[1]);

    if (mFightPhase == PHASE_LAST) {
        mRollCc.SetC(current.pos);
        mRollCc.SetR(200.0f);
        mRollCc.SetH(250.0f);
        dComIfG_Ccsp()->Set(&mRollCc);

        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_ARM_L3));
        mDoMtx_stack_c::transM(100.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&center);
        mSwordCc[0].SetC(center);
        mSwordCc[0].SetR(50.0f);
        dComIfG_Ccsp()->Set(&mSwordCc[0]);

        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_ARM_R3));
        mDoMtx_stack_c::transM(-100.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&center);
        mSwordCc[1].SetC(center);
        mSwordCc[1].SetR(50.0f);
        dComIfG_Ccsp()->Set(&mSwordCc[1]);
    }
}

/* 8064CFA8-8064DA48 00EF88 0AA0+00 1/1 0/0 0/0 .text            cc_ice_set__10daB_ZANT_cFv */
void daB_ZANT_c::cc_ice_set() {
    class dZantSph_c {
    public:
        int joint_no;
        f32 offset_x;
        f32 radius;
    };

    static dZantSph_c ice_sph_jnt[] = {
        {JNT_FOOT_L, 10.0f, 15.0f},
        {JNT_LEG_L2, 20.0f, 20.0f},
        {JNT_LEG_L2, 0.0f, 25.0f},
        {JNT_LEG_L1, 20.0f, 30.0f},
        {JNT_FOOT_R, 10.0f, 15.0f},
        {JNT_LEG_R2, 20.0f, 20.0f},
        {JNT_LEG_R2, 0.0f, 25.0f},
        {JNT_LEG_R1, 20.0f, 30.0f},
        {JNT_WAIST, 0.0f, 45.0f},
        {JNT_BACKBONE, 20.0f, 45.0f},
        {JNT_HEAD, 20.0f, 25.0f},
    };

    cXyz sp34;
    cXyz sp40;

    if (mAction == ACT_ICE_STEP || mAction == ACT_ICE_JUMP) {
        if (!dComIfGp_getAttention().LockonTruth() || dComIfGp_getAttention().LockonTarget(0) != this) {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_L));
            mDoMtx_stack_c::transM(20.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp34);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_R));
            mDoMtx_stack_c::transM(20.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp40);

            cXyz player_pos(daPy_getPlayerActorClass()->current.pos);
            s16 player_angle = daPy_getPlayerActorClass()->shape_angle.y;

            if (sp34.absXZ(player_pos) < 700.0f) {
                field_0x70d = 0;
                if (sp40.absXZ(player_pos) < 700.0f && abs((s16)(player_angle - cLib_targetAngleY(&player_pos, &sp40))) < abs((s16)(player_angle - cLib_targetAngleY(&player_pos, &sp34)))) {
                    field_0x70d = 1;
                }
            } else if (sp40.absXZ(player_pos) < 700.0f) {
                field_0x70d = 1;
            } else if (sp34.absXZ(player_pos) < sp40.absXZ(player_pos)) {
                field_0x70d = 0;
            } else {
                field_0x70d = 1;
            }

            if (field_0x70d == 0) {
                eyePos = sp34;
            } else {
                eyePos = sp40;
            }
        } else {
            if (field_0x70d == 0) {
                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_L));
            } else {
                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_FOOT_R));
            }

            mDoMtx_stack_c::transM(20.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&eyePos);
        }

        attention_info.position = eyePos;
        attention_info.position.y += 120.0f;
    } else {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += mModelScaleY * 120.0f;
    }

    cXyz sp64;
    dZantSph_c sph;

    for (int i = 0; i < 6; i++) {
        sph = ice_sph_jnt[i];

        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(sph.joint_no));
        mDoMtx_stack_c::transM(sph.offset_x, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp64);

        mFootCc[i].SetC(sp64);
        mFootCc[i].SetR(sph.radius * mModelScaleY);
        dComIfG_Ccsp()->Set(&mFootCc[i]);
    }

    for (int i = 0; i < 11; i++) {
        sph = ice_sph_jnt[i];

        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(sph.joint_no));
        mDoMtx_stack_c::transM(sph.offset_x, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp64);

        mFoot2Cc[i].SetC(sp64);
        mFoot2Cc[i].SetR(sph.radius * mModelScaleY);
        dComIfG_Ccsp()->Set(&mFoot2Cc[i]);

        mCameraCc[i].SetC(sp64);
        mCameraCc[i].SetR((sph.radius + 10.0f) * mModelScaleY);
        dComIfG_Ccsp()->Set(&mCameraCc[i]);
    }
}

/* 8064DA48-8064DB48 00FA28 0100+00 1/1 0/0 0/0 .text            execute__10daB_ZANT_cFv */
int daB_ZANT_c::execute() {
    if (mModeTimer != 0) {
        mModeTimer--;
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
        dKy_custom_colset(10, 0, mKankyoBlend);
        break;
    case 1:
        dKy_custom_colset(0, 10, mKankyoBlend);
        break;
    }

    action();
    mtx_set();

    if (mFightPhase == PHASE_YO) {
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
    
    if (mInitHIO) {
        l_initHIO = false;
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
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("B_zan", 0x48);
    JUT_ASSERT(0, modelData != 0);
    mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("B_zan", 0x12), 2, 1.0f, 0, -1, &mSound, 0, 0x11000084);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpModelMorf->getModel();
    model->setUserArea((u32)this);
    model->getModelData()->getJointNodePointer(1)->setCallBack(JointCallBack);
    model->getModelData()->getJointNodePointer(2)->setCallBack(JointCallBack);

    mpMahojinModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes("B_zan", 0x49), 0x80000, 0x11000284);
    if (mpMahojinModel == NULL) {
        return 0;
    }

    mpMahojinBrk = new mDoExt_brkAnm();
    if (mpMahojinBrk == NULL) {
        return 0;
    }

    if (!mpMahojinBrk->init(mpMahojinModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_zan", 0x4F), 1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    mpMahojinBtk = new mDoExt_btkAnm();
    if (mpMahojinBtk == NULL) {
        return 0;
    }

    if (!mpMahojinBtk->init(mpMahojinModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_zan", 0x53), 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    mpMahojinStartBtk = new mDoExt_btkAnm();
    if (mpMahojinStartBtk == NULL) {
        return 0;
    }

    if (!mpMahojinStartBtk->init(mpMahojinModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_zan", 0x54), 1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    mpMahojinModel2 = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes("B_zan", 0x49), 0x80000, 0x11000284);
    if (mpMahojinModel2 == NULL) {
        return 0;
    }

    mpMahojinBrk2 = new mDoExt_brkAnm();
    if (mpMahojinBrk2 == NULL) {
        return 0;
    }

    if (!mpMahojinBrk2->init(mpMahojinModel2->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_zan", 0x4F), 1, 0, 0.0f, 0, -1)) {
        return 0;
    }

    mpMahojinStartBtk2 = new mDoExt_btkAnm();
    if (mpMahojinStartBtk2 == NULL) {
        return 0;
    }

    if (!mpMahojinStartBtk2->init(mpMahojinModel2->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_zan", 0x54), 1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_zan", 0x4A);
    JUT_ASSERT(0, modelData != 0);
    mpSwordLModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpSwordLModel == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_zan", 0x4B);
    JUT_ASSERT(0, modelData != 0);
    mpSwordRModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpSwordRModel == NULL) {
        return 0;
    }

    return 1;
}

/* 8064E170-8064E190 010150 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return ((daB_ZANT_c*)i_this)->CreateHeap();
}

/* 8064E190-8064E724 010170 0594+00 1/1 0/0 0/0 .text            create__10daB_ZANT_cFv */
int daB_ZANT_c::create() {
    fopAcM_SetupActor(this, daB_ZANT_c);
    OS_REPORT("B_ZANT PARAM %x\n", fopAcM_GetParam(this));

    mSwbit = fopAcM_GetParam(this);
    if (mSwbit != 0xFF) {
        if (dComIfGs_isSwitch(mSwbit, fopAcM_GetRoomNo(this))) {
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

        if (!l_initHIO) {
            l_initHIO = true;
            mInitHIO = true;
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
    
        mBodySphCc[0].Set(cc_zant_src);
        mBodySphCc[0].SetStts(&field_0x9a4);

        mBodySphCc[1].Set(cc_zant_src);
        mBodySphCc[1].SetStts(&field_0x9a4);

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
            mPillarIDs[i] = fpcM_ERROR_PROCESS_ID_e;
        }

        for (int i = 0; i < 4; i++) {
            mMobileIDs[i] = fpcM_ERROR_PROCESS_ID_e;
        }

        field_0x724 = -1;

        if (dComIfGp_roomControl_getStayNo() == 60) {
            mFightPhase = PHASE_LAST;
            field_0x718 = 1;
        } else if (dComIfGp_roomControl_getStayNo() == 50) {
            mFightPhase = PHASE_OP;
        } else {
            mFightPhase = dComIfGp_roomControl_getStayNo() - 52;
            if (mFightPhase >= PHASE_MAX) {
                mFightPhase = PHASE_BB;
            }
        }

        if (mFightPhase != PHASE_OP) {
            Z2GetAudioMgr()->bgmStart(Z2BGM_BOSS_ZANT, 0, 0);
            Z2GetAudioMgr()->changeBgmStatus(mFightPhase);
        }

        initNextRoom();
        mKankyoBlend = 1.0f;
        setBaseActionMode(1);

        if (mFightPhase == PHASE_BB) {
            field_0x70b = 0;
        }

        mModelScaleXZ = 1.0f;
        mModelScaleY = 1.0f;

        onWolfNoLock();
        mtx_set();
    }

    return phase_state;
}

/* 8064E92C-8064E94C 01090C 0020+00 1/0 0/0 0/0 .text            daB_ZANT_Create__FP10daB_ZANT_c */
static int daB_ZANT_Create(daB_ZANT_c* i_this) {
    return i_this->create();
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
  &g_fpcLf_Method.base,        // sub_method
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
JAUSectionHeap* JASGlobalInstance<JAUSectionHeap>::sInstance;
