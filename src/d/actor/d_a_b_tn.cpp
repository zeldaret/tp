/**
* @file d_a_b_tn.cpp
 *
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_b_tn.h"
#include <cmath.h>
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_boomerang.h"
#include "d/actor/d_a_nbomb.h"

#include "f_op/f_op_actor_enemy.h"
#include "f_op/f_op_camera_mng.h"

enum B_TN_RES_FILE_ID {
    /* BCK */
    /* 0x04 */ BCK_TN2B_DIE = 4,
    /* 0x05 */ BCK_TNA_ATACK_A,
    /* 0x06 */ BCK_TNA_ATACK_B,
    /* 0x07 */ BCK_TNA_ATACK_OP,
    /* 0x08 */ BCK_TNA_ATACK_SHIELD,
    /* 0x09 */ BCK_TNA_DAMAGE_L,
    /* 0x0A */ BCK_TNA_DAMAGE_LAST,
    /* 0x0B */ BCK_TNA_DAMAGE_R,
    /* 0x0C */ BCK_TNA_GUARD,
    /* 0x0D */ BCK_TNA_GUARD_DAMAGE,
    /* 0x0E */ BCK_TNA_TURN_OP,
    /* 0x0F */ BCK_TNA_WAIT,
    /* 0x10 */ BCK_TNA_WAIT_B_1,
    /* 0x11 */ BCK_TNA_WAIT_B_2,
    /* 0x12 */ BCK_TNA_WAIT_OP,
    /* 0x13 */ BCK_TNA_WALK,
    /* 0x14 */ BCK_TNB_ATACK_A,
    /* 0x15 */ BCK_TNB_ATACK_B,
    /* 0x16 */ BCK_TNB_ATACK_SHIELD,
    /* 0x17 */ BCK_TNB_DAMAGE_L,
    /* 0x18 */ BCK_TNB_DAMAGE_R,
    /* 0x19 */ BCK_TNB_DIE,
    /* 0x1A */ BCK_TNB_DOWN,
    /* 0x1B */ BCK_TNB_DOWN_SIPPU,
    /* 0x1C */ BCK_TNB_GUARD_A,
    /* 0x1D */ BCK_TNB_GUARD_B,
    /* 0x1E */ BCK_TNB_JUMP_B_1,
    /* 0x1F */ BCK_TNB_JUMP_B_2,
    /* 0x20 */ BCK_TNB_JUMP_F_1,
    /* 0x21 */ BCK_TNB_JUMP_F_2,
    /* 0x22 */ BCK_TNB_JUMP_L_1,
    /* 0x23 */ BCK_TNB_JUMP_L_2,
    /* 0x24 */ BCK_TNB_JUMP_R_1,
    /* 0x25 */ BCK_TNB_JUMP_R_2,
    /* 0x26 */ BCK_TNB_PULL,
    /* 0x27 */ BCK_TNB_SWORD_B_PULL_A,
    /* 0x28 */ BCK_TNB_SWORD_B_PULL_B,
    /* 0x29 */ BCK_TNB_THROW,
    /* 0x2A */ BCK_TNB_WAIT,
    /* 0x2B */ BCK_TNB_WAIT_B_1,
    /* 0x2C */ BCK_TNB_WAIT_B_2,
    /* 0X2D */ BCK_TNB_WALK,

    /* BMDR */
    /* 0x30 */ BMDR_TN_EFFECT = 0x30,
};

enum B_TNP_RES_FILE_ID {
    /* BMDR */
    /* 0x03 */ BMDR_TN = 3,
    /* 0x04 */ BMDR_TN_ARMOR_ARM_L,
    /* 0x05 */ BMDR_TN_ARMOR_ARM_R,
    /* 0x06 */ BMDR_TN_ARMOR_CHEST_B,
    /* 0x07 */ BMDR_TN_ARMOR_CHEST_F,
    /* 0x08 */ BMDR_TN_ARMOR_HEAD_B,
    /* 0x09 */ BMDR_TN_ARMOR_HEAD_F,
    /* 0x0A */ BMDR_TN_ARMOR_SHOULDER_L,
    /* 0x0B */ BMDR_TN_ARMOR_SHOULDER_R,
    /* 0x0C */ BMDR_TN_ARMOR_WAIST_B,
    /* 0x0D */ BMDR_TN_ARMOR_WAIST_F,
    /* 0x0E */ BMDR_TN_ARMOR_WAIST_L,
    /* 0x0F */ BMDR_TN_ARMOR_WAIST_R,
    /* 0x10 */ BMDR_TN_SHIELD,
    /* 0x11 */ BMDR_TN_SWORD_A,
    /* 0x12 */ BMDR_TN_SWORD_B,
    /* 0x13 */ BMDR_TN_SWORD_B_SAYA,
};

enum B_TNP2_RES_FILE_ID {
    /* BMDR */
    /* 0x04 */ BMDR_TN2 = 4,
    /* 0x05 */ BMDR_TN2_ARMOR_ARM_L,
    /* 0x06 */ BMDR_TN2_ARMOR_ARM_R,
    /* 0x07 */ BMDR_TN2_ARMOR_CHEST_B,
    /* 0x08 */ BMDR_TN2_ARMOR_CHEST_F,
    /* 0x09 */ BMDR_TN2_ARMOR_HEAD_A,
    /* 0x0A */ BMDR_TN2_ARMOR_HEAD_B,
    /* 0x0B */ BMDR_TN2_ARMOR_SHOULDER_L,
    /* 0x0C */ BMDR_TN2_ARMOR_SHOULDER_R,
    /* 0x0D */ BMDR_TN2_ARMOR_WAIST_B,
    /* 0x0E */ BMDR_TN2_ARMOR_WAIST_F,
    /* 0x0F */ BMDR_TN2_ARMOR_WAIST_L,
    /* 0x10 */ BMDR_TN2_ARMOR_WAIST_R,
    /* 0x11 */ BMDR_TN2_MACE,
    /* 0x12 */ BMDR_TN2_SHIELD,
    /* 0x13 */ BMDR_TN2_SWORD_A,
    /* 0x14 */ BMDR_TN2_SWORD_B,
    /* 0x15 */ BMDR_TN2_SWORD_B_SAYA,

    /* BRK */
    /* 0x18 */ BRK_TN2_BODY = 0x18,
    /* 0x19 */ BRK_TN2_COLOR_1,
    /* 0x1A */ BRK_TN2_COLOR_2,
    /* 0x1B */ BRK_TN2_SHIELD,
};

enum B_TN_JOINT {
    /* 0x00 */ JNT_WORLD_ROOT,
    /* 0x01 */ JNT_BACKBONE_1,
    /* 0x02 */ JNT_BACKBONE_2,
    /* 0x03 */ JNT_BACKBONE_3,
    /* 0x04 */ JNT_NECK,
    /* 0x05 */ JNT_HEAD,
    /* 0x06 */ JNT_SHOLDER_L,
    /* 0x07 */ JNT_ARM_L_1,
    /* 0x08 */ JNT_ARM_L_2,
    /* 0x09 */ JNT_ARM_L_3,
    /* 0x0A */ JNT_HAND_L,
    /* 0x0B */ JNT_SHOLDER_ARMOR_L,
    /* 0x0C */ JNT_SHOLDER_R,
    /* 0x0D */ JNT_ARM_R_1,
    /* 0x0E */ JNT_ARM_R_2,
    /* 0x0F */ JNT_ARM_R_3,
    /* 0x10 */ JNT_HAND_R,
    /* 0x11 */ JNT_SHOLDER_ARMOR_R,
    /* 0x12 */ JNT_WAIST,
    /* 0x13 */ JNT_LEG_L_1,
    /* 0x14 */ JNT_LEG_L_2,
    /* 0x15 */ JNT_LEG_L_3,
    /* 0x16 */ JNT_LEG_R_1,
    /* 0x17 */ JNT_LEG_R__2,
    /* 0x18 */ JNT_LEG_R_3,
    /* 0x19 */ JNT_TN_ARMOR_WAIST_F,
    /* 0x1A */ JNT_WAIST_ARMOR_BACK,
    /* 0x1B */ JNT_WAIST_ARMOR_L,
    /* 0x1C */ JNT_WAIST_ARMOR_R,
};

enum daB_TN_ACTION1 {
    /* 0x0 */ ACT_ROOMDEMO,
    /* 0x1 */ ACT_OPENING,
    /* 0x2 */ ACT_WAITH,
    /* 0x3 */ ACT_CHASEH,
    /* 0x4 */ ACT_ATTACKH,
    /* 0x5 */ ACT_ATTACKSHIELDH,
    /* 0x6 */ ACT_GUARDH,
    /* 0x7 */ ACT_DAMAGEH,
    /* 0x8 */ ACT_CHANGEDEMO,
    /* 0x9 */ ACT_CHASEL,
    /* 0xA */ ACT_ATTACKL,
    /* 0xB */ ACT_ATTACKSHIELDL,
    /* 0xC */ ACT_GUARDL,
    /* 0xD */ ACT_DAMAGEL,
    /* 0xE */ ACT_ENDING,
    /* 0xF */ ACT_YOROKE,
};

enum Action_Phase {
    /* 0x0 */ PHASE_INIT,

    /* executeRoomDemo */
    /* 0x02 */ ROOM_DEMO_PHASE_2 = 0x2,
    /* 0x03 */ ROOM_DEMO_PHASE_3,
    /* 0x0A */ ROOM_DEMO_PHASE_10 = 0xA,
    /* 0x0B */ ROOM_DEMO_PHASE_11,
    /* 0x0F */ ROOM_DEMO_PHASE_15 = 0xF,
    /* 0x10 */ ROOM_DEMO_PHASE_END,

    /* executeOpening */
    /* 0x01 */ OPENING_PHASE_1 = 0x1,
    /* 0x02 */ OPENING_PHASE_2,
    /* 0x03 */ OPENING_PHASE_3,
    /* 0x04 */ OPENING_PHASE_4,
    /* 0x0A */ OPENING_PHASE_10 = 0xA,
    /* 0x0E */ OPENING_PHASE_14 = 0xE,
    /* 0x11 */ OPENING_PHASE_17 = 0x11,
    /* 0x14 */ OPENING_PHASE_END = 0x14,

    /* executeWaitH */
    /* 0x1 */ WAIT_H_PHASE_END = 0x1,

    /* executeChaseH */
    /* 0x01 */ CHASE_H_PHASE_1 = 0x1,
    /* 0x02 */ CHASE_H_PHASE_2,
    /* 0x03 */ CHASE_H_PHASE_3,
    /* 0x04 */ CHASE_H_PHASE_4,
    /* 0x05 */ CHASE_H_PHASE_5,
    /* 0x06 */ CHASE_H_PHASE_6,
    /* 0x07 */ CHASE_H_PHASE_7,
    /* 0x08 */ CHASE_H_PHASE_WALK_FAST_BLEND,
    /* 0x09 */ CHASE_H_PHASE_PLAY_FOOT_SOUND,
    /* 0x0A */ CHASE_H_PHASE_WALK_SLOW_BLEND,
    /* 0x0B */ CHASE_H_PHASE_11,
    /* 0x46 */ CHASE_H_PHASE_70 = 0x46,
    /* 0x64 */ CHASE_H_PHASE_100 = 0x64,
    /* 0x66 */ CHASE_H_PHASE_102 = 0x66,
    /* 0x67 */ CHASE_H_PHASE_103,
    /* 0x6A */ CHASE_H_PHASE_106 = 0x6A,
    /* 0x6B */ CHASE_H_PHASE_107,

    /* executeAttackH */
    /* 0x1 */ ATTACK_H_PHASE_ATTACK_A_EXECUTE = 0x1,
    /* 0x2 */ ATTACK_H_PHASE_ATTACK_B_EXECUTE,

    /* executeAttackShieldH */
    /* 0x1 */ ATTACK_SHIELD_H_PHASE_EXECUTE = 0x1,

    /* executeGuardH */
    /* 0x1 */ GUARD_H_PHASE_END = 0x1,

    /* executeDamageH */
    /* 0x0 */ DAMAGE_H_PHASE_INIT_LEFT = 0x0,
    /* 0x1 */ DAMAGE_H_PHASE_INIT_RIGHT,
    /* 0x2 */ DAMAGE_H_PHASE_END,

    /* executeChangeDemo */
    /* 0x01 */ CHANGE_DEMO_PHASE_JUMP_B_1 = 0x1,
    /* 0x02 */ CHANGE_DEMO_PHASE_JUMP_B_2,
    /* 0x03 */ CHANGE_DEMO_PHASE_THROW_INIT,
    /* 0x04 */ CHANGE_DEMO_PHASE_THROW_EXECUTE,
    /* 0x0A */ CHANGE_DEMO_PHASE_WAIT = 0xA,
    /* 0x0B */ CHANGE_DEMO_PHASE_11,
    /* 0x0C */ CHANGE_DEMO_PHASE_12,
    /* 0x0D */ CHANGE_DEMO_PHASE_PULL_INIT,
    /* 0x0F */ CHANGE_DEMO_PHASE_PULL_EXECUTE = 0xF,
    /* 0x10 */ CHANGE_DEMO_PHASE_END,
    /* 0x64 */ CHANGE_DEMO_PHASE_100 = 0x64,
    /* 0x65 */ CHANGE_DEMO_PHASE_101,

    /* executeZakoChangeDemo */
    /* 0x1 */ ZAKO_CHANGE_DEMO_PHASE_JUMP_INIT = 0x1,
    /* 0x2 */ ZAKO_CHANGE_DEMO_PHASE_JUMP_END,
    /* 0x3 */ ZAKO_CHANGE_DEMO_PHASE_THROW_INIT,
    /* 0x4 */ ZAKO_CHANGE_DEMO_PHASE_THROW_END,
    /* 0x5 */ ZAKO_CHANGE_DEMO_PHASE_END,

    /* executeChaseL */
    /* 0x01 */ CHASE_L_PHASE_INIT = 0x1,
    /* 0x02 */ CHASE_L_PHASE_WAIT,
    /* 0x03 */ CHASE_L_PHASE_WALK,
    /* 0x04 */ CHASE_L_PHASE_WAIT_B_1,
    /* 0x05 */ CHASE_L_PHASE_WAIT_B_2,
    /* 0x06 */ CHASE_L_PHASE_JUMP_BACK,
    /* 0x07 */ CHASE_L_PHASE_JUMP_BACK_LAND,
    /* 0x08 */ CHASE_L_PHASE_JUMP_FRONT,
    /* 0x09 */ CHASE_L_PHASE_JUMP_FRONT_LAND,
    /* 0x0A */ CHASE_L_PHASE_10,
    /* 0x0B */ CHASE_L_PHASE_11,
    /* 0x0C */ CHASE_L_PHASE_JUMP_RIGHT_LAND,
    /* 0x0D */ CHASE_L_PHASE_13,
    /* 0x0E */ CHASE_L_PHASE_14,
    /* 0x0F */ CHASE_L_PHASE_JUMP_LEFT_LAND,
    /* 0x10 */ CHASE_L_PHASE_WALK_TO_JUMP,
    /* 0x11 */ CHASE_L_PHASE_JUMP_FRONT_FAST,

    /* executeAttackL */
    /* 0x01 */ ATTACK_L_PHASE_ATACK_A_EXECUTE = 0x1,
    /* 0x02 */ ATTACK_L_PHASE_ATACK_B_EXECUTE,
    /* 0x03 */ ATTACK_L_PHASE_ATACK_A_INIT,
    /* 0x04 */ ATTACK_L_PHASE_ATACK_B_INIT,
    /* 0x0A */ ATTACK_L_PHASE_WAIT_TO_ATACK_FAST = 0xA,
    /* 0x0B */ ATTACK_L_PHASE_11,
    /* 0x14 */ ATTACK_L_PHASE_WAIT_TO_ATACK = 0x14,
    /* 0x65 */ ATTACK_L_PHASE_ATACK_A_END = 0x65,
    /* 0x66 */ ATTACK_L_PHASE_ATACK_B_END,

    /* executeAttackShieldL */
    /* 0x1 */ ATTACK_SHIELD_L_PHASE_ATACK_SHIELD_EXECUTE = 0x1,
    /* 0xA */ ATTACK_SHIELD_L_PHASE_10 = 0xA,

    /* executeGuardL */
    /* 0x1 */ GUARD_L_PHASE_1 = 0x1,
    /* 0x2 */ GUARD_L_PHASE_CHASEL_MODE_INIT,
    /* 0x3 */ GUARD_L_PHASE_ATTACK_MODE_INIT,
    /* 0xA */ GUARD_L_PHASE_10 = 0xA,
    /* 0xB */ GUARD_L_PHASE_11,

    /* executeDamage */
    /* 0x0 */ DAMAGE_PHASE_LEFT_INIT = 0x0,
    /* 0x1 */ DAMAGE_PHASE_RIGHT_INIT,
    /* 0x2 */ DAMAGE_PHASE_LEFT_END,
    /* 0x3 */ DAMAGE_PHASE_RIGHT_END,

    /* executeYoroke */
    /* 0x1 */ YOROKE_PHASE_1 = 0x1,
    /* 0xA */ YOROKE_PHASE_EXECUTE = 0xA,

    /* executeEnding */
    /* 0x01 */ ENDING_PHASE_DIE_EXECUTE = 0x1,
    /* 0x02 */ ENDING_PHASE_2,
    /* 0x03 */ ENDING_PHASE_3,
    /* 0x04 */ ENDING_PHASE_4,
    /* 0x05 */ ENDING_PHASE_END,
    /* 0x64 */ ENDING_PHASE_SET_POS_ANGLE = 0x64,

    /* executeZakoEnding */
    /* 0x1 */ ZAKO_ENDING_PHASE_DIE_EXECUTE = 0x1,
    /* 0x2 */ ZAKO_ENDING_PHASE_2,
    /* 0x3 */ ZAKO_ENDING_PHASE_END,
};

class daB_TN_HIO_c {
public:
    /* 8061EBEC */ daB_TN_HIO_c();
    /* 8062D98C */ virtual ~daB_TN_HIO_c() {};

    /* 0x04 */ s8 mUnk1;
    /* 0x08 */ f32 mScale;
    /* 0x0C */ f32 mKColorA;
    /* 0x10 */ f32 mTimer3Wolf;
    /* 0x14 */ f32 mTimer3HumanType0;
    /* 0x18 */ f32 mTimer3HumanType1;
    /* 0x1C */ f32 mTimer3NormalType0;
    /* 0x20 */ f32 mTimer3NormalType1;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 mTimer1Action1;
    /* 0x2C */ f32 mTimer1Action2;
};

STATIC_ASSERT(sizeof(daB_TN_HIO_c) == 0x30);

/* 8062E93C-8062E97C 000038 0040+00 0/1 0/0 0/0 .data            cc_tt_src__22@unnamed@d_a_b_tn_cpp@ */
namespace {
static dCcD_SrcSph cc_tt_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 0}, {0xD8000012, 0x43}, 0x75}},
        {dCcD_SE_METAL, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {6}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        40.0f,
    }},
};

/* 8062E97C-8062E9BC 000078 0040+00 0/1 0/0 0/0 .data cc_tt_src2__22@unnamed@d_a_b_tn_cpp@ */
static dCcD_SrcSph cc_tt_src2 = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 0}, {0x00FBFDED, 0x43}, 0x0}},
        {dCcD_SE_METAL, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {7}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        40.0f,
    }},
};

/* 8062E9BC-8062E9FC 0000B8 0040+00 0/1 0/0 0/0 .data cc_bomb_src__22@unnamed@d_a_b_tn_cpp@ */
static dCcD_SrcSph cc_bomb_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 0}, {0x00000000, 0x00}, 0x145}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        40.0f,
    }},
};

/* 8062E9FC-8062EA3C 0000F8 0040+00 0/1 0/0 0/0 .data cc_tt_at_src__22@unnamed@d_a_b_tn_cpp@ */
static dCcD_SrcSph cc_tt_at_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 0x5}, {0xD8FBFDFF, 0x00}, 0x15}},
        {dCcD_SE_METAL, 0, 9, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {2}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        40.0f,
    }},
};

/* 8062EA3C-8062EA88 000138 004C+00 0/1 0/0 0/0 .data cc_tt_at_cps_src__22@unnamed@d_a_b_tn_cpp@ */
static dCcD_SrcCps cc_tt_at_cps_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 5}, {0xD8FBFDFF, 0x00}, 0x75}},
        {dCcD_SE_METAL, 0, 9, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {2}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        {0.0f, 0.0f, 0.0f},
        20.0f,
    }},
};

/* 8062EA88-8062EAC8 000184 0040+00 0/1 0/0 0/0 .data cc_tt_tate_src__22@unnamed@d_a_b_tn_cpp@ */
static dCcD_SrcSph cc_tt_tate_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 4}, {0xD8FBFDFF, 0x43}, 0x75}},
        {dCcD_SE_METAL, 0, 9, 0, {0}},
        {dCcD_SE_NONE, 2, 0, 0, {0x0303}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        40.0f,
    }},
};

/* 8062EAC8-8062EB08 0001C4 0040+00 0/1 0/0 0/0 .data cc_part_src__22@unnamed@d_a_b_tn_cpp@ */
static dCcD_SrcSph cc_part_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 0}, {0x00000002, 0x00}, 0x75}},
        {dCcD_SE_METAL, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {6}},
        {0},
    },
    {{
        {0.0f, 0.0f, 0.0f},
        40.0f,
    }},
};

/* 8062EB08-8062EB18 000204 0010+00 0/1 0/0 0/0 .data tn_model_brk_idx__22@unnamed@d_a_b_tn_cpp@ */
static s8 tn_model_brk_idx[16] = {
    0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 2, -1, -1, -1,
};

/* 8062EB18-8062EB28 000214 0010+00 0/1 0/0 0/0 .data tn_model_brk_idx2__22@unnamed@d_a_b_tn_cpp@ */
static s8 tn_model_brk_idx2[16] = {
    0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 2, -1, -1, -1,
};

/* 8062EB28-8062EBA8 000224 0080+00 0/1 0/0 0/0 .data tn_part_model_id__22@unnamed@d_a_b_tn_cpp@ */
static int tn_part_model_id[32] = {
    /* TN */
    BMDR_TN_ARMOR_ARM_L, BMDR_TN_ARMOR_ARM_R, BMDR_TN_ARMOR_CHEST_B, BMDR_TN_ARMOR_CHEST_F, 
    BMDR_TN_ARMOR_HEAD_B, BMDR_TN_ARMOR_HEAD_F,  BMDR_TN_ARMOR_SHOULDER_L, BMDR_TN_ARMOR_SHOULDER_R, 
    BMDR_TN_ARMOR_WAIST_B, BMDR_TN_ARMOR_WAIST_F, BMDR_TN_ARMOR_WAIST_L, BMDR_TN_ARMOR_WAIST_R, 
    BMDR_TN_SHIELD, BMDR_TN_SWORD_A, BMDR_TN_SWORD_B_SAYA, BMDR_TN_SWORD_B,

    /* TN2 */
    BMDR_TN2_ARMOR_ARM_L, BMDR_TN2_ARMOR_ARM_R, BMDR_TN2_ARMOR_CHEST_B, BMDR_TN2_ARMOR_CHEST_F, 
    BMDR_TN2_ARMOR_HEAD_A, BMDR_TN2_ARMOR_HEAD_B, BMDR_TN2_ARMOR_SHOULDER_L, BMDR_TN2_ARMOR_SHOULDER_R, 
    BMDR_TN2_ARMOR_WAIST_B, BMDR_TN2_ARMOR_WAIST_F, BMDR_TN2_ARMOR_WAIST_L, BMDR_TN2_ARMOR_WAIST_R, 
    BMDR_TN2_SHIELD, BMDR_TN2_MACE, BMDR_TN2_SWORD_B_SAYA, BMDR_TN2_SWORD_B,
};

/* 8062EBA8-8062EBE8 0002A4 0040+00 2/2 0/0 0/0 .data tn_part_joint__22@unnamed@d_a_b_tn_cpp@ */
static int tn_part_joint[16] = {8, 14, 3, 3, 5, 5, 11, 17, 26, 25, 27, 28, 9, 27, 27, 27};

/* 8062EBE8-8062EC28 0002E4 0040+00 1/2 0/0 0/0 .data ground_y_part__22@unnamed@d_a_b_tn_cpp@ */
static f32 ground_y_part[16] = {
    15.0f, 15.0f, 0.0f, 0.0f, 23.0f, 12.0f, 25.0f, 25.0f,
    -5.0f, 5.0f,  8.0f, 5.0f, 12.0f, 7.0f,  0.0f,  0.0f,
};
}  // namespace

/* 8061EBEC-8061EC58 0000EC 006C+00 1/1 0/0 0/0 .text            __ct__12daB_TN_HIO_cFv */
daB_TN_HIO_c::daB_TN_HIO_c() {
    mUnk1 = -1;
    mScale = 1.3f;
    mKColorA = 40.0f;
    mTimer3NormalType0 = 150.0f;
    mTimer3NormalType1 = 250.0f;
    mTimer3HumanType0 = 210.0f;
    mTimer3HumanType1 = 350.0f;
    mTimer3Wolf = 120.0f;
    field_0x24 = 360.0f;
    mTimer1Action1 = 0.0f;
    mTimer1Action2 = 0.0f;
}

/* 8061EC58-8061ED10 000158 00B8+00 1/1 0/0 0/0 .text ctrlJoint__8daB_TN_cFP8J3DJointP8J3DModel */
int daB_TN_c::ctrlJoint(J3DJoint* i_joint, J3DModel* model) {
    int mJntNo = i_joint->getJntNo();
    mDoMtx_stack_c::copy(model->getAnmMtx(mJntNo));

    if (mJntNo == 5) {
        mDoMtx_stack_c::XrotM(mNeckAngle);
    } else if (mJntNo == 1) {
        mDoMtx_stack_c::XrotM(mWaistAngle);
    }

    model->setAnmMtx(mJntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 8061ED10-8061ED5C 000210 004C+00 1/1 0/0 0/0 .text JointCallBack__8daB_TN_cFP8J3DJointi */
int daB_TN_c::JointCallBack(J3DJoint* i_joint, int i_data) {
    if (i_data == 0) {
        J3DModel* model = j3dSys.getModel();
        daB_TN_c* mUserArea = (daB_TN_c*)model->getUserArea();
        if (mUserArea != NULL) {
            mUserArea->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 8061ED5C-8061EE14 00025C 00B8+00 1/1 0/0 0/0 .text            calcNeckAngle__8daB_TN_cFv */
void daB_TN_c::calcNeckAngle() {
    csXyz acStack_18;
    s16 sVar1 = 0;

    if (mUpdateNeckAngle) {
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(5));
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &acStack_18);

        sVar1 = fopAcM_searchPlayerAngleY(this) - (acStack_18.y + 0x4000);
        if (sVar1 > 0x3000) {
            sVar1 = 0x3000;
        }

        if (sVar1 < -0x3000) {
            sVar1 = -0x3000;
        }
    }

    cLib_addCalcAngleS2(&mNeckAngle, sVar1, 4, 0x1000);
}

/* 8061EE14-8061EEC8 000314 00B4+00 1/1 0/0 0/0 .text            calcWaistAngle__8daB_TN_cFv */
void daB_TN_c::calcWaistAngle() {
    csXyz acStack_18;
    s16 sVar1 = 0;

    if (mUpdateWaistAngle) {
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(1));
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &acStack_18);

        sVar1 = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
        if (sVar1 > 0x3000) {
            sVar1 = 0x3000;
        }

        if (sVar1 < -0x3000) {
            sVar1 = -0x3000;
        }
    }

    cLib_addCalcAngleS2(&mWaistAngle, sVar1, 4, 0x1000);
}

/* 8062F01D 0003+00 data_8062F01D None */
static u8 s_hioinit;

/* 8062F02C-8062F05C 000054 0030+00 9/11 0/0 0/0 .bss             l_HIO */
static daB_TN_HIO_c l_HIO;

/* 8061EEC8-8061F1E0 0003C8 0318+00 1/1 0/0 0/0 .text            draw__8daB_TN_cFv */
int daB_TN_c::draw() {
    J3DModel* model = mpModelMorf2->getModel();
    if (mDisappear || mInactive) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    J3DModelData* modelData = model->getModelData();
    if (mType == 1) {
        mpBrkAnm->entry(modelData);
    }

    if (mMaterialColor) {
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* mMatNodePtr = modelData->getMaterialNodePointer(i);
            J3DGXColorS10* mColor;
            mColor = mMatNodePtr->getTevColor(0);
            mColor->r = mMaterialColor;
            mColor = mMatNodePtr->getTevColor(0);
            mColor->g = mMaterialColor;
            mColor = mMatNodePtr->getTevColor(0);
            mColor->b = mMaterialColor;
        }
    }

    mpModelMorf2->entryDL();
    cXyz sp48(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &sp48, 1000.0f, 0.0f, current.pos.y,
                                    mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f,
                                    dDlst_shadowControl_c::getSimpleTex());

    for (int i = 0; i < 16; i++) {
        if (mStates[i] != 7) {
            if (i == 15) {
                model = mpModelMorf1->getModel();
                g_env_light.setLightTevColorType_MAJI(model, &tevStr);
                mpModelMorf1->entryDL();
            } else {
                model = mpPartModels[i];
                g_env_light.setLightTevColorType_MAJI(model, &tevStr);

                if (mType == 1 && mpBrkAnms[i]) {
                    modelData = model->getModelData();
                    mpBrkAnms[i]->entry(modelData);
                }
                mDoExt_modelUpdateDL(model);
            }

            if (mStates[i] == 0) {
                dComIfGd_addRealShadow(mShadowKey, model);
            }
        }
    }

    if (mUpdateModelTimer != 0) {
        g_env_light.setLightTevColorType_MAJI(swordEffectModel, &tevStr);
        modelData = swordEffectModel->getModelData();
        J3DGXColor* mKColor = modelData->getMaterialNodePointer(0)->getTevKColor(3);
        mKColor->a = l_HIO.mKColorA;
        mDoExt_modelUpdateDL(swordEffectModel);
    }

    return 1;
}

/* 8061F1E0-8061F200 0006E0 0020+00 1/0 0/0 0/0 .text            daB_TN_Draw__FP8daB_TN_c */
static int daB_TN_Draw(daB_TN_c* i_this) {
    return i_this->draw();
}

/* 8061F200-8061F31C 000700 011C+00 3/3 0/0 0/0 .text            setBreakPart__8daB_TN_cFi */
void daB_TN_c::setBreakPart(int i_idx) {
    static int break_part_no[13] = {
        6, 11, 8, 1, 10, 0, 9, 7, 4, 5, 12, 2, 3,
    };

    if (i_idx >= 12) {
        i_idx = 13;
    }

    int iVar1 = 0;
    for (int i = 0; i < 13; i++) {
        if (mStates[break_part_no[i]] != 0) {
            iVar1++;
        }
    }

    iVar1 = i_idx - iVar1;
    if (iVar1 != 0) {
        for (int i = 0; i <= 12; i++) {
            if (mStates[break_part_no[i]] == 0) {
                mStates[break_part_no[i]] = 2;
                mSound.startCreatureSound(Z2SE_EN_TN_BRK_ARMOR, 0, -1);

                if (mType == 1 && break_part_no[i] == 4) {
                    mNextBreakPart++;
                    iVar1++;
                }

                iVar1--;

                if (iVar1 == 0) {
                    return;
                }
            }
        }
    }
}

/* 8061F31C-8061F3D0 00081C 00B4+00 1/1 0/0 0/0 .text            setBreakHeadPart__8daB_TN_cFi */
void daB_TN_c::setBreakHeadPart(int i_idx) {
    static int break_part_no2[13] = {
        4, 5, 7, 6, 11, 8, 1, 10, 0, 9, 12, 2, 3,
    };

    if (i_idx >= 12) {
        i_idx = 13;
    }

    int iVar1 = 0;
    for (int i = 0; i < 13; i++) {
        if (mStates[break_part_no2[i]] != 0) {
            iVar1++;
        }
    }

    iVar1 = i_idx - iVar1;
    if (iVar1 != 0) {
        for (int i = 0; i <= 12; i++) {
            if (mStates[break_part_no2[i]] == 0) {
                mStates[break_part_no2[i]] = 2;

                if (break_part_no2[i] == 4) {
                    mNextBreakPart++;
                    iVar1++;
                }

                iVar1--;

                if (iVar1 == 0) {
                    return;
                }
            }
        }
    }
}

/* 8061F3D0-8061F520 0008D0 0150+00 4/4 0/0 0/0 .text            setPartLandEffect__8daB_TN_cFii */
void daB_TN_c::setPartLandEffect(int i_idx, int i_data) {
    static int break_part_vib[16] = {
        2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 3, 2, 0xFF, 2,
    };

    if (i_data == 0) {
        csXyz cStack_30(0, 0, 0);
        cXyz sp1c(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
        dComIfGp_particle_setPolyColor(0x87ea, mAcch.m_gnd, &mPositions[i_idx], &tevStr, &cStack_30,
                                       &sp1c, 0, NULL, -1, NULL);
        dComIfGp_particle_set(0x880b, &mPositions[i_idx], &tevStr, &cStack_30, &sp1c);
    }

    int mVibMode = break_part_vib[i_idx];
    if (mVibMode != 0xff) {
        dComIfGp_getVibration().StartShock(mVibMode, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
    }
}

/* 8062F11C-8062F1DC 000144 00C0+00 1/2 0/0 0/0 .bss offset_part__22@unnamed@d_a_b_tn_cpp@ */
namespace {
static cXyz offset_part[16] = {
    cXyz(-20.0f, 0.0f, 0.0f), cXyz(-20.0f, 0.0f, 0.0f),   cXyz(0.0f, 0.0f, 0.0f),
    cXyz(0.0f, 0.0f, 0.0f),   cXyz(-20.0f, 20.0f, 0.0f),  cXyz(-12.0f, 20.0f, 0.0f),
    cXyz(-17.0f, 0.0f, 0.0f), cXyz(-17.0f, 0.0f, 0.0f),   cXyz(0.0f, 35.0f, 0.0f),
    cXyz(0.0f, 15.0f, 0.0f),  cXyz(0.0f, 30.0f, 0.0f),    cXyz(0.0f, -30.0f, 0.0f),
    cXyz(-20.0f, 0.0f, 0.0f), cXyz(-40.0f, 0.0f, -70.0f), cXyz(-15.0f, 50.0f, 30.0f),
    cXyz(-12.0f, 8.0f, 0.0f),
};
}  // namespace

/* 8062F29C-8062F2FC 0002C4 0060+00 4/5 0/0 0/0 .bss ground_angle_part__22@unnamed@d_a_b_tn_cpp@ */
namespace {
static csXyz ground_angle_part[16] = {
    csXyz(0x0000, 0x0000, 0x0000),   csXyz(0x0000, 0x0000, 0x0000),   csXyz(0x0000, 0x0000, 0x0000),
    csXyz(0x0000, 0x0000, -0x8000),  csXyz(0x4000, 0x0000, -0x093e),  csXyz(0x0000, 0x0000, 0x5c00),
    csXyz(0x0000, 0x0000, 0x0400),   csXyz(-0x8000, 0x0000, -0x0400), csXyz(0x0000, 0x0000, 0x3c00),
    csXyz(0x0000, 0x0000, 0x4000),   csXyz(0x0000, 0x0000, 0x36b0),   csXyz(0x0000, 0x0000, 0x4800),
    csXyz(-0x02cc, 0x0000, 0x1000),  csXyz(-0x800, 0x0000, -0x0980),  csXyz(0x0000, 0x0000, 0x3c8c),
    csXyz(-0x04e9, -0x1800, 0x3d2a),
};
}  // namespace

/* 8061F520-8061F9F4 000A20 04D4+00 1/1 0/0 0/0 .text            calcShieldMove__8daB_TN_cFv */
void daB_TN_c::calcShieldMove() {
    s16 sVar2;
    int iVar1;

    switch (mStates[12]) {
    case 2:
        mDoMtx_stack_c::copy(mpPartModels[12]->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&mPositions[12]);
        mPositionsCopy[12] = mPositions[12];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[12]);

        sVar2 = shape_angle.y + 0x4000;
        field_0xa5c = 0x1800;
        field_0x8dc[12].set((cM_rndF(5.0f) + 10.0f) * cM_ssin(sVar2), cM_rndF(7.0f) + 35.0f,
                            (cM_rndF(5.0f) + 10.0f) * cM_scos(sVar2));
        mStates[12] = 3;
        break;

    case 3:
        mAcchArr[12].SetGroundUpY(ground_y_part[12] + 55.0f);
        cLib_chaseF(&field_0x8dc[12].y, -70.0f, 5.0f);
        cLib_chaseAngleS(&field_0x99c[12].x, ground_angle_part[12].x, 0x400);
        cLib_chaseAngleS(&field_0x99c[12].z, field_0xa5c + ground_angle_part[12].z, 0x800);

        if (mAcchArr[12].ChkGroundHit()) {
            Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SHIELD_BND, &mPositions[12], 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
            s16 sVar1 = cM_rndFX(32768.0f);
            field_0x8dc[12].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar1), cM_rndF(5.0f) + 18.0f,
                                (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar1));
            mStates[12] = 4;
            setPartLandEffect(12, 0);
        }
        break;

    case 4:
    case 5:
        mAcchArr[12].SetGroundUpY(ground_y_part[12] + cM_ssin(field_0xa5c) * 60.0f);
        cLib_chaseAngleS(&field_0x99c[12].x, ground_angle_part[12].x, 0x400);
        cLib_chaseAngleS(&field_0x99c[12].z, ground_angle_part[12].z, 0x400);
        cLib_chaseAngleS(&field_0xa5c, 0, 0x60);
        field_0xa3c[12] += 0x1800;
        field_0x99c[12].x += (int)(field_0xa5c * cM_ssin(field_0xa3c[12]));
        field_0x99c[12].z += (int)(field_0xa5c * cM_scos(field_0xa3c[12]));
        cLib_chaseF(&field_0x8dc[12].y, -70.0f, 5.0f);

        if (mStates[12] == 4 && mAcchArr[12].ChkGroundHit()) {
            if (mType == 0) {
                mStates[12] = 5;
                field_0xa3c[12] = 0;
                field_0x8dc[12].set(0.0f, 0.0f, 0.0f);
                setPartLandEffect(12, 1);
            } else {
                fopAcM_createDisappear(this, &mPositions[12], 5, 0, 0xff);
                mStates[12] = 7;
            }
        }
        break;

    case 6:
        sVar2 = shape_angle.y + 0x4000;
        field_0x8dc[12].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar2), cM_rndF(5.0f) + 18.0f,
                            (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar2));
        mStates[12] = 4;
        field_0xa5c = 0x1800;
        break;
    }
}

/* 8061F9F4-8061FD7C 000EF4 0388+00 1/1 0/0 0/0 .text            calcSwordMoveA__8daB_TN_cFv */
void daB_TN_c::calcSwordMoveA() {
    int idx = 13;
    switch (mStates[idx]) {
    case 0:
    case 1: {
        break;
    }

    case 2: {
        mDoMtx_stack_c::copy(mpPartModels[idx]->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&mPositions[idx]);
        mPositionsCopy[idx] = mPositions[idx];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[idx]);

        if (mType == 0) {
            field_0x8dc[idx].set(0.0f, 0.0f, 70.0f);
        } else {
            cXyz sp20 = daPy_getPlayerActorClass()->current.pos;
            sp20.y += 200.0f;
            s16 sVar5 = cLib_targetAngleY(&mPositions[idx], &sp20);
            s16 sVar6 = cLib_targetAngleX(&mPositions[idx], &sp20);
            f32 fVar1 = fabsf(cM_scos(sVar6) * 80.0f);
            field_0x8dc[idx].set(fVar1 * cM_ssin(sVar5), cM_ssin(sVar6) * 80.0f,
                                 fVar1 * cM_scos(sVar5));
        }

        mStates[idx] = 3;
        break;
    }

    case 3: {
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_TN_WEAPON_FLY, &mPositions[idx], 0, 0, 1.0f, 1.0f,
                                      -1.0f, -1.0f, 0);

        cLib_chaseF(&field_0x8dc[idx].y, -70.0f, 0.3f);
        cLib_chaseAngleS(&field_0x99c[idx].x, ground_angle_part[idx].x, 0x800);
        field_0x99c[idx].y -= 0x1800;
        cLib_chaseAngleS(&field_0x99c[idx].z, ground_angle_part[idx].z, 0x800);

        if (mAcchArr[idx].ChkGroundHit() || mAcchArr[idx].ChkWallHit()) {
            Z2GetAudioMgr()->seStart(Z2SE_EN_TN_WEAPON_STOP, &mPositions[idx], 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
            setPartLandEffect(idx, 0);

            if (mType == 1) {
                field_0x99c[idx].y = 0x1800;
                fopAcM_createDisappear(this, &mPositions[idx], 3, 0, 0xff);
                mStates[idx] = 7;
            } else {
                field_0x8dc[idx].set(0.0f, 18.0f, 25.0f);
                mStates[idx] = 4;
            }
        }

        break;
    }

    case 4: {
        cLib_chaseF(&field_0x8dc[idx].y, -70.0f, 5.0f);
        cLib_chaseAngleS(&field_0x99c[idx].x, ground_angle_part[idx].x, 0x800);
        field_0x99c[idx].y -= 0x1000;
        cLib_chaseAngleS(&field_0x99c[idx].z, ground_angle_part[idx].z, 0x800);

        if (mAcchArr[idx].ChkGroundHit() || mAcchArr[idx].ChkWallHit()) {
            field_0x99c[idx] = ground_angle_part[idx];
            field_0x8dc[idx].set(0.0f, 0.0f, 0.0f);
            field_0xa3c[idx] = -0x1800;
            setPartLandEffect(idx, 1);
            mStates[idx] = 7;
        }

        break;
    }

    case 5:
    case 6:
    case 7: {
        return;
    }
    }
}

/* 8061FD7C-8061FFE0 00127C 0264+00 1/1 0/0 0/0 .text            calcSwordMoveB__8daB_TN_cFv */
void daB_TN_c::calcSwordMoveB() {
    switch (mStates[15]) {
    case 2:
        mDoMtx_stack_c::copy(mpModelMorf1->getModel()->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&mPositions[15]);
        mPositionsCopy[15] = mPositions[15];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[15]);
        field_0x8dc[15].set(0.0f, 0.0f, 10.0f);
        mStates[15] = 3;
        // [[fallthrough]]

    case 3:
    case 4:
        cLib_chaseAngleS(&field_0x99c[15].x, ground_angle_part[15].x, 16);
        cLib_chaseAngleS(&field_0x99c[15].y, ground_angle_part[15].y, 16);
        cLib_chaseAngleS(&field_0x99c[15].z, ground_angle_part[15].z, 16);
        cLib_chaseF(&field_0x8dc[15].y, -70.0f, 5.0f);

        if (mAcchArr[15].ChkGroundHit()) {
            cXyz* pos;
            Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SWD_DROP, (pos = &mPositions[15]), 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);

            if (mStates[15] == 3) {
                field_0x8dc[15].set(0.0f, 10.0f, 10.0f);
                mStates[15] = 4;
                setPartLandEffect(15, 0);
            } else if (mType == 0) {
                field_0x8dc[15].set(0.0f, 0.0f, 7.0f);
                field_0x99c[15] = ground_angle_part[15];
                mStates[15] = 5;
            } else {
                fopAcM_createDisappear(this, pos, 3, 0, 0xff);
                mStates[15] = 7;
            }
        }
        return;

    case 5:
        cLib_chaseF(&field_0x8dc[15].y, -70.0f, 5.0f);
        cLib_chaseF(&field_0x8dc[15].z, 0.0f, 0.3f);
        field_0x99c[15].set(ground_angle_part[15].x, ground_angle_part[15].y,
                            ground_angle_part[15].z);
        break;

    case 6:
    case 7:
        return;
    }
}

/* 8061FFE0-8062070C 0014E0 072C+00 2/1 0/0 0/0 .text            calcOtherPartMove__8daB_TN_cFi */
void daB_TN_c::calcOtherPartMove(int i_idx) {
    cXyz sp7c;
    s16 sVar1;

    switch (mStates[i_idx]) {
    case 0:
    case 1: {
        break;
    }

    case 2: {
        if (i_idx != 14) {
            setArmorBreakEffect(i_idx);
        }
        mDoMtx_stack_c::copy(mpPartModels[i_idx]->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&mPositions[i_idx]);
        mPositionsCopy[i_idx] = mPositions[i_idx];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[i_idx]);

        sp7c = daPy_getPlayerActorClass()->current.pos;

        if (i_idx == 14) {
            sVar1 = shape_angle.y + 0x4000;
        } else if (i_idx == 2) {
            sVar1 = shape_angle.y + -0x4000;
        } else if (i_idx == 3) {
            sVar1 = shape_angle.y + 0x2000;
        } else {
            sVar1 = cLib_targetAngleY(&mPositions[i_idx], &sp7c);
            if (cM_rnd() < 0.5f) {
                sVar1 = sVar1 + 0x2000 + cM_rndFX(4096.0f);
            } else {
                sVar1 = sVar1 - 0x2000 + cM_rndFX(4096.0f);
            }
        }

        field_0x8dc[i_idx].set((cM_rndF(5.0f) + 10.0f) * cM_ssin(sVar1), cM_rndF(7.0f) + 35.0f,
                               (cM_rndF(5.0f) + 10.0f) * cM_scos(sVar1));
        mStates[i_idx] = 3;
        break;
    }

    case 3:
        cLib_chaseF(&field_0x8dc[i_idx].y, -70.0f, 5.0f);

        if (i_idx == 14) {
            if (field_0x8dc[i_idx].y > 0.0f) {
                field_0x99c[i_idx].y += 0x800;
                field_0x99c[i_idx].z += 0x800;
            } else {
                cLib_chaseAngleS(&field_0x99c[i_idx].x, ground_angle_part[i_idx].x, 0x800);
                cLib_chaseAngleS(&field_0x99c[i_idx].z, ground_angle_part[i_idx].z, 0x800);
            }
        } else if (field_0x8dc[i_idx].y > 0.0f) {
            field_0x99c[i_idx].y += 0x1000;
            field_0x99c[i_idx].z += 0x1000;
        } else {
            cLib_chaseAngleS(&field_0x99c[i_idx].x, ground_angle_part[i_idx].x, 0x400);
            cLib_chaseAngleS(&field_0x99c[i_idx].z, ground_angle_part[i_idx].z, 0x400);
        }

        if ((mType != 1 || i_idx != 5) && mAcchArr[i_idx].ChkGroundHit()) {
            if (i_idx == 14) {
                Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SAYA_BND_1, &mPositions[i_idx], 0, 0, 1.0f,
                                         1.0f, -1.0f, -1.0f, 0);
            } else {
                Z2GetAudioMgr()->seStart(Z2SE_EN_TN_ARMOR_BND, &mPositions[i_idx], 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);
            }

            sVar1 = cM_rndFX(32768.0f);
            field_0x8dc[i_idx].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar1), cM_rndF(5.0f) + 18.0f,
                                   (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar1));
            mStates[i_idx] = 4;
            setPartLandEffect(i_idx, 0);
        }
        break;

    case 4:
        cLib_chaseF(&field_0x8dc[i_idx].y, -70.0f, 5.0f);
        cLib_chaseAngleS(&field_0x99c[i_idx].x, ground_angle_part[i_idx].x, 0x800);
        field_0x99c[i_idx].y += 0x400;
        cLib_chaseAngleS(&field_0x99c[i_idx].z, ground_angle_part[i_idx].z, 0x800);

        if (mAcchArr[i_idx].ChkGroundHit()) {
            if (mType == 0) {
                if (i_idx == 14) {
                    Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SAYA_BND_2, &mPositions[i_idx], 0, 0, 1.0f,
                                             1.0f, -1.0f, -1.0f, 0);
                }

                mStates[i_idx] = 5;
                field_0x99c[i_idx].x = ground_angle_part[i_idx].x;
                field_0x99c[i_idx].z = ground_angle_part[i_idx].z;
                field_0xa3c[i_idx] = 0x400;
                setPartLandEffect(i_idx, 1);
            } else {
                fopAcM_createDisappear(this, &mPositions[i_idx], 3, 0, 0xff);
                mStates[i_idx] = 7;
                if (mType == 1 && i_idx == 4) {
                    mStates[5] = 7;
                }
            }
        }
        break;

    case 5:
        cLib_chaseF(&field_0x8dc[i_idx].y, -70.0f, 5.0f);
        cLib_chaseF(&field_0x8dc[i_idx].x, 0.0f, 2.0f);
        cLib_chaseF(&field_0x8dc[i_idx].z, 0.0f, 2.0f);
        cLib_chaseAngleS(&field_0xa3c[i_idx], 0, 0x40);
        field_0x99c[i_idx].y += field_0xa3c[i_idx];
        break;

    case 6:
        sVar1 = shape_angle.y + cM_rndFX(16384.0f);
        field_0x8dc[i_idx].set((cM_rndF(5.0f) + 50.0f) * cM_ssin(sVar1), 0.0f,
                               (cM_rndF(5.0f) + 50.0f) * cM_scos(sVar1));
        field_0xa3c[i_idx] = 0x800;
        mStates[i_idx] = 5;
        break;

    case 7: {
        break;
    }
    }
}

/* 8062070C-806208C8 001C0C 01BC+00 1/1 0/0 0/0 .text            calcPartMove__8daB_TN_cFv */
void daB_TN_c::calcPartMove() {
    for (int i = 0; i < 16; i++) {
        if (field_0xa1c[i] != 0) {
            field_0xa1c[i]--;
        }

        mPositionsCopy[i] = mPositions[i];

        if (i == 12) {
            calcShieldMove();
        } else if (i == 13) {
            calcSwordMoveA();
        } else if (i == 15) {
            calcSwordMoveB();
        } else {
            calcOtherPartMove(i);
        }

        mPositions[i] += *mSttsArr[i].GetCCMoveP();

        if (mStates[i] == 3 || mStates[i] == 4 || mStates[i] == 5) {
            mPositions[i] += field_0x8dc[i];
            mAcchArr[i].CrrPos(dComIfG_Bgsp());

            if (mChkCoHitOK && mSphArr[i].ChkCoHit()) {
                cCcD_Obj* mCoHitObj = mSphArr[i].GetCoHitObj();
                daB_TN_c* i_this = (daB_TN_c*)dCc_GetAc(mCoHitObj->GetAc());
                if (i_this == this && mCoHitObj->GetAtAtp() && field_0xa1c[i] == 0) {
                    mStates[i] = 6;
                    field_0xa1c[i] = 30;
                }

                mSphArr[i].ClrCoHit();
            }
        }
    }
}

/* 806208C8-8062096C 001DC8 00A4+00 18/18 0/0 0/0 .text            setBck__8daB_TN_cFiUcff */
void daB_TN_c::setBck(int i_index, u8 i_attr, f32 i_morf, f32 i_rate) {
    mpModelMorf2->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_tn", i_index), i_attr, i_morf,
                         i_rate, 0.0f, -1.0f);
}

/* 8062096C-806209C8 001E6C 005C+00 3/3 0/0 0/0 .text            checkBck__8daB_TN_cFi */
int daB_TN_c::checkBck(int i_index) {
    return mpModelMorf2->getAnm() == dComIfG_getObjectRes("B_tn", i_index);
}

/* 806209C8-806209E0 001EC8 0018+00 22/22 0/0 0/0 .text            setActionMode__8daB_TN_cFii */
void daB_TN_c::setActionMode(int i_mode1, int i_mode2) {
    offHeadLockFlg();
    mActionMode = i_mode1;
    mActionPhase = i_mode2;
}

/* 806209E0-80620AE4 001EE0 0104+00 11/11 0/0 0/0 .text            setSwordAtBit__8daB_TN_cFi */
void daB_TN_c::setSwordAtBit(int param_1) {
    if (param_1 == 0) {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].OffAtSetBit();
            mSwordSphs[i].ClrAtHit();
        }

        mCps.OffAtSetBit();
        mCps.ClrAtHit();
    } else {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].OnAtSetBit();
            if (mActionMode <= 8) {
                mSwordSphs[i].SetAtAtp(4);
            } else {
                mSwordSphs[i].SetAtAtp(2);
            }
        }

        mCps.OnAtSetBit();
        if (mActionMode <= 8) {
            mCps.SetAtAtp(4);
        } else {
            mCps.SetAtAtp(2);
        }
    }
}

/* 80620AE4-80620B4C 001FE4 0068+00 5/5 0/0 0/0 .text            setSwordAtBreak__8daB_TN_cFi */
void daB_TN_c::setSwordAtBreak(int param_1) {
    if (param_1 == 0) {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].SetAtSpl((dCcG_At_Spl)0x1);
        }
        mCps.SetAtSpl((dCcG_At_Spl)0x1);
    } else {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].SetAtSpl((dCcG_At_Spl)0xA);
        }
        mCps.SetAtSpl((dCcG_At_Spl)0xA);
        field_0xa9a = false;
    }
}

/* 80620B4C-80620E90 00204C 0344+00 1/1 0/0 0/0 .text            setBodyShield__8daB_TN_cFv */
void daB_TN_c::setBodyShield() {
    daPy_py_c* player;
    bool check = true;

    player = (daPy_py_c*)daPy_getPlayerActorClass();
    if (mActionMode <= 1) {
        for (int i = 0; i < 3; i++) {
            mSphA[i].OnTgShield();
        }

        mSphC.OnTgShield();
        mSphC.OnTgSetBit();

    } else if (mActionMode < 8) {
        if (!(daPy_py_c::checkNowWolf() || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL) &&
            player->getCutCount() >= 4)
        {
            mCutFlag = true;
        } else {
            mCutFlag = false;
        }

        if (!field_0xa91 || abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) > 0x3000) {
            check = false;
        }

        int iVar3 = false;
        if (player->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP ||
            player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B ||
            player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A || mTimer12 != 0)
        {
            check = false;
            iVar3 = true;
        }

        if (mNextBreakPart >= 11) {
            check = false;
            mTimer10 = 0;
        }

        if (!(check || daPy_py_c::checkNowWolf() || mTimer10 != 0)) {
            for (int i = 0; i < 3; i++) {
                mSphA[i].OffTgShield();
            }
        } else {
            for (int i = 0; i < 3; i++) {
                mSphA[i].OnTgShield();
            }
        }

        if ((mActionMode == ACT_DAMAGEH || mNextBreakPart >= 11) && mTimer10 == 0) {
            iVar3 = true;
        }

        if (iVar3) {
            mSphC.OffTgShield();
            mSphC.OffTgSetBit();
        } else {
            mSphC.OnTgShield();
            mSphC.OnTgSetBit();
        }

    } else {
        mCutFlag = false;

        if (!(daPy_py_c::checkNowWolf() || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL ||
              player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B ||
              player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A ||
              player->getCutCount() < 4))
        {
            mCutFlag = true;
        } else if ((player->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT ||
                    player->getCutType() == daPy_py_c::CUT_TYPE_TURN_LEFT) &&
                   mTimer13 == 0)
        {
            mCutFlag = true;
        }

        int chck = false;
        if (player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP &&
            ((field_0xa91 == true && mCutFlag) || mTimer10 != 0 || daPy_py_c::checkNowWolf()))
        {
            chck = true;
        }

        if (chck) {
            for (int i = 0; i < 3; i++) {
                mSphA[i].OnTgShield();
            }

            return;
        }

        for (int i = 0; i < 3; i++) {
            mSphA[i].OffTgShield();
        }
    }
}

/* 8062F2FC-8062F300 000324 0004+00 2/3 0/0 0/0 .bss             m_attack_tn */
static daB_TN_c* m_attack_tn;

/* 8062F300-8062F304 000328 0004+00 1/2 0/0 0/0 .bss             m_attack_timer */
static int m_attack_timer;

/* 80620E90-80620FA0 002390 0110+00 4/4 0/0 0/0 .text            checkNormalAttackAble__8daB_TN_cFv
 */
bool daB_TN_c::checkNormalAttackAble() {
    if (mType == 1) {
        if (daPy_getPlayerActorClass()->getCutCount() != 0) {
            mTimer3 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        if (m_attack_tn && m_attack_tn != this) {
            mTimer3 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        if (m_attack_timer != 0) {
            mTimer3 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        m_attack_timer = 30;
    }

    return 1;
}

/* 80620FA0-80621070 0024A0 00D0+00 4/3 0/0 0/0 .text            getCutType__8daB_TN_cFv */
u32 daB_TN_c::getCutType() {
    u32 rv = 0;

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
        if (daPy_getPlayerActorClass()->getCutCount() >= 4) {
            rv = 4;
        }

        if (mAtInfo.mpCollider && ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1) {
            rv = 4;
        }
    }

    switch (daPy_getPlayerActorClass()->getCutType()) {
    case daPy_py_c::CUT_TYPE_TURN_LEFT:
    case daPy_py_c::CUT_TYPE_TURN_RIGHT:
        if (mTimer13 == 0) {
            return 0x20;
        }

        return rv | 0x20;

    case daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT:
    case daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT:
        return rv | 0x20;

    case daPy_py_c::CUT_TYPE_JUMP:
    case daPy_py_c::CUT_TYPE_LARGE_JUMP:
        return rv | 0x10;

    case daPy_py_c::CUT_TYPE_TWIRL:
        return rv | 0x22;

    case daPy_py_c::CUT_TYPE_NM_VERTICAL:
    case daPy_py_c::CUT_TYPE_NM_RIGHT:
    case daPy_py_c::CUT_TYPE_FINISH_LEFT:
    case daPy_py_c::CUT_TYPE_FINISH_VERTICAL:
    case daPy_py_c::CUT_TYPE_DASH_UNK_26:
        return rv | 0x12;

    case daPy_py_c::CUT_TYPE_NM_STAB:
    case daPy_py_c::CUT_TYPE_FINISH_STAB:
        return rv | 0x02;

    case daPy_py_c::CUT_TYPE_NM_LEFT:
    case daPy_py_c::CUT_TYPE_DASH_UNK_25:
        return rv | 0x21;

    case daPy_py_c::CUT_TYPE_COMBO_STAB:
        return rv | 0x01;

    default:
        return rv | 0x03;
    }
}

/* 80621070-8062138C 002570 031C+00 1/1 0/0 0/0 .text            setDamage__8daB_TN_cFP8dCcD_Sphi */
void daB_TN_c::setDamage(dCcD_Sph* i_sph, int param_2) {
    u8 uVar5;

    health = 100;
    cc_at_check(this, &mAtInfo);
    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
        mInvincibilityTimer = 20;
    } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
        mInvincibilityTimer = 20;
    } else {
        mInvincibilityTimer = 10;
    }

    if (mAtInfo.mAttackPower <= 1) {
        mInvincibilityTimer = 10;
    }

    dComIfGp_setHitMark(1, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);

    if (mTimer4 != 0) {
        mDamageLeftRightFlag ^= 1;
    } else {
        u8 uVar4 = 0;
        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
            uVar4 = getCutType() & -1;
        }

        if ((uVar4 & 3) != 0) {
            if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) > 0x4000) {
                if ((uVar4 & 1) != 0) {
                    uVar5 = 1;
                } else {
                    uVar5 = 0;
                }
            } else if ((uVar4 & 1) != 0) {
                uVar5 = 0;
            } else {
                uVar5 = 1;
            }
        } else if (cM_rnd() < 0.5f) {
            uVar5 = 0;
        } else {
            uVar5 = 1;
        }

        mDamageLeftRightFlag = uVar5;
    }

    mTimer4 = 30;
    int iVar1 = mActionMode;
    if (iVar1 < 8) {
        if (iVar1 != ACT_DAMAGEH && mTimer5 == 0) {
            mTimer5 = 70;
        }

        mNextBreakPart += param_2;
        setActionMode(ACT_DAMAGEH, mDamageLeftRightFlag);
    } else {
        if (iVar1 != ACT_DAMAGEL && mTimer5 == 0) {
            mTimer5 = 90;

            if (field_0x6fc > field_0x700 - 50.0f) {
                field_0x6fc -= 20;
            }
        }

        if (field_0x6fc > field_0x700 - 50.0f && mCutFlag) {
            field_0x6fc += 50;
        } else {
            field_0x6fc += 100 - health;
        }

        if (field_0x6fc >= field_0x700) {
            setActionMode(ACT_ENDING, PHASE_INIT);
            dComIfGp_setHitMark(3, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);
        } else {
            setActionMode(ACT_DAMAGEL, mDamageLeftRightFlag);
        }
    }
}

/* 8062138C-806213FC 00288C 0070+00 1/1 0/0 0/0 .text setShieldEffect__8daB_TN_cFP8dCcD_Sph */
void daB_TN_c::setShieldEffect(dCcD_Sph* i_sph) {
    def_se_set(&mSound, mAtInfo.mpCollider, 42, this);
    dComIfGp_setHitMark(2, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);
}

/* 806213FC-806223A0 0028FC 0FA4+00 1/1 0/0 0/0 .text            damage_check__8daB_TN_cFv */
void daB_TN_c::damage_check() {
    mStts1.Move();

    for (int i = 0; i < 4; i++) {
        if (mSwordSphs[i].ChkAtHit()) {
            field_0xa9a = true;
            if (mSwordSphs[i].ChkAtShieldHit() && mSwordSphs[i].GetAtSpl() == 10) {
                setSwordAtBit(0);
                m_attack_tn = this;
                break;
            }
        }
    }

    if (mCps.ChkAtHit()) {
        field_0xa9a = true;
        if (mCps.ChkAtShieldHit() && mCps.GetAtSpl() == 10) {
            setSwordAtBit(0);
            m_attack_tn = this;
        }
    }

    if (mSphC.ChkAtHit() && !mSphC.ChkAtShieldHit()) {
        field_0xa9a = true;
        mSound.startCreatureSound(Z2SE_EN_TN_ATK_NO_DMG, 0, -1);
        mSphC.ClrAtHit();
        m_attack_tn = this;
    }

    if (mInvincibilityTimer != 0) {
        return;
    }

    if (mActionMode == ACT_CHANGEDEMO) {
        return;
    }

    if (mActionMode == ACT_ENDING) {
        return;
    }

    dCcD_Sph dStack_160;

    if (mActionMode <= 1) {
        mAtInfo.mpCollider = NULL;
        if (mSphC.ChkTgHit()) {
            mAtInfo.mpCollider = mSphC.GetTgHitObj();
            dStack_160 = mSphC;
        }

        for (int i = 0; i < 3; i++) {
            if (mSphA[i].ChkTgHit()) {
                mAtInfo.mpCollider = mSphA[i].GetTgHitObj();
                dStack_160 = mSphA[i];
                break;
            }
        }

        for (int i = 0; i < 3; i++) {
            if (mSphB[i].ChkTgHit()) {
                mAtInfo.mpCollider = mSphB[i].GetTgHitObj();
                dStack_160 = mSphB[i];
                break;
            }
        }

        if (mAtInfo.mpCollider != NULL) {
            setShieldEffect(&dStack_160);
            setActionMode(ACT_OPENING, 2);

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG) ||
                mAtInfo.mpCollider->ChkAtType(AT_TYPE_40) ||
                mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT))
            {
                mTimer9 = 15;
            }
        }

        return;
    }

    int cut_type = daPy_getPlayerActorClass()->getCutType();
    if (mActionMode < 8 && mSphC.ChkTgHit() && mSphC.GetTgHitObj()->ChkAtType(18) &&
        cut_type != daPy_py_c::CUT_TYPE_HEAD_JUMP &&
        cut_type != daPy_py_c::CUT_TYPE_MORTAL_DRAW_B &&
        cut_type != daPy_py_c::CUT_TYPE_MORTAL_DRAW_A)
    {
        def_se_set(&mSound, mSphC.GetTgHitObj(), 42, this);
        field_0xaa8 = false;
        if (mSphC.GetTgHitObj()->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
            if (mActionMode != ACT_GUARDH) {
                return;
            }

            if (mActionMode == ACT_GUARDH && field_0xaa8) {
                return;
            }

            field_0xaa8 = true;
        }

        setActionMode(ACT_GUARDH, PHASE_INIT);
        return;
    }

    mAtInfo.mpCollider = NULL;
    for (int i = 0; i < 3; i++) {
        if (mSphA[i].ChkTgHit()) {
            mAtInfo.mpCollider = mSphA[i].GetTgHitObj();
            dStack_160 = mSphA[i];
            break;
        }
    }

    if (mAtInfo.mpCollider != NULL) {
        if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH) {
            return;
        } else if (mActionMode < 8) {
            if (cut_type == daPy_py_c::CUT_TYPE_DASH_UNK_25 ||
                cut_type == daPy_py_c::CUT_TYPE_DASH_UNK_26 ||
                mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK))
            {
                setShieldEffect(&dStack_160);
                mTimer9 = 15;
                return;
            }

            if (dStack_160.ChkTgShield()) {
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                    if (mActionMode == ACT_GUARDH && field_0xaa8) {
                        return;
                    }

                    field_0xaa8 = true;
                    def_se_set(&mSound, dStack_160.GetTgHitObj(), 42, this);
                } else {
                    field_0xaa8 = false;
                    setShieldEffect(&dStack_160);
                }

                setActionMode(ACT_GUARDH, 0);
                return;

            } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                setShieldEffect(&dStack_160);
                mTimer9 = 0x14;
                return;
            }

            if (cut_type == daPy_py_c::CUT_TYPE_HEAD_JUMP ||
                cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B ||
                cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A)
            {
                mTimer12 = 60;
            }
        } else {
            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                field_0xaa8 = true;
                def_se_set(&mSound, dStack_160.GetTgHitObj(), 42, this);
                setActionMode(ACT_GUARDL, 0);
                return;
            }

            if (field_0xa91) {
                if (mCutFlag || (getCutType() & 4) != 0) {
                    setShieldEffect(&dStack_160);
                    if (mCutFlag) {
                        setActionMode(ACT_GUARDL, 11);
                    } else {
                        setActionMode(ACT_YOROKE, 0);
                    }

                    return;
                }

                if (mTimer10 != 0 ||
                    abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x3000 ||
                    cut_type == daPy_py_c::CUT_TYPE_DASH_UNK_25 ||
                    cut_type == daPy_py_c::CUT_TYPE_DASH_UNK_26)
                {
                    field_0xaa8 = false;
                    setShieldEffect(&dStack_160);
                    setActionMode(ACT_GUARDL, 0);
                    return;
                }
            }
        }
        setDamage(&dStack_160, 1);
        return;
    }

    mAtInfo.mpCollider = NULL;
    for (int i = 0; i < 3; i++) {
        if (mSphB[i].ChkTgHit()) {
            mAtInfo.mpCollider = mSphB[i].GetTgHitObj();
            dStack_160 = mSphB[i];
            break;
        }
    }

    int bVar1 = false;
    if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) > 0x3000) {
        bVar1 = true;
    };

    if (mActionMode < 8) {
        if (!dStack_160.ChkTgShield() || mNextBreakPart >= 11) {
            bVar1 = true;
        }
    } else if (!field_0xa91) {
        bVar1 = true;
    }

    if (mActionMode < 8 && mSphC.ChkTgHit()) {
        mAtInfo.mpCollider = mSphC.GetTgHitObj();
        dStack_160 = mSphC;
        bVar1 = false;
    }

    if (mAtInfo.mpCollider) {
        field_0xaa8 = false;
        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG) ||
            mAtInfo.mpCollider->ChkAtType(AT_TYPE_40))
        {
            if (mActionMode < 8) {
                mTimer9 = 15;
            } else {
                setActionMode(ACT_GUARDL, GUARD_L_PHASE_10);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
            if (mActionMode < 8) {
                if (mNextBreakPart >= 11 ||
                    abs((s16)(cLib_targetAngleY(
                                  &current.pos,
                                  &dCc_GetAc(mAtInfo.mpCollider->GetAc())->current.pos) -
                              shape_angle.y)) > 0x4000)
                {
                    setDamage(&dStack_160, 2);
                } else {
                    setActionMode(ACT_GUARDH, PHASE_INIT);
                }
            } else if (abs((s16)(cLib_targetAngleY(
                                     &current.pos,
                                     &dCc_GetAc(mAtInfo.mpCollider->GetAc())->current.pos) -
                                 shape_angle.y)) > 0x4000)
            {
                setDamage(&dStack_160, 2);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SPINNER)) {
            setShieldEffect(&dStack_160);
            if (mActionMode < 8) {
                setActionMode(ACT_GUARDH, 0);
            } else {
                setActionMode(ACT_GUARDL, 10);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
            if (mActionMode < 8) {
                mTimer9 = 15;
                setShieldEffect(&dStack_160);
            } else if (!bVar1 || mTimer10 != 0) {
                setShieldEffect(&dStack_160);
                setActionMode(ACT_GUARDL, 0);
            } else {
                health = 100;
                cc_at_check(this, &mAtInfo);
                mDamageLeftRightFlag = 0;
                if (cM_rnd() < 0.5f) {
                    mDamageLeftRightFlag = 1;
                }

                if (mActionMode != ACT_DAMAGEL && mTimer5 == 0) {
                    mTimer5 = 90;
                }

                setActionMode(ACT_DAMAGEL, mDamageLeftRightFlag);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_IRON_BALL)) {
            if (!bVar1) {
                setShieldEffect(&dStack_160);
                if (mActionMode < 8) {
                    setActionMode(ACT_GUARDH, 0);
                } else {
                    setActionMode(ACT_GUARDL, 10);
                }
            } else {
                setDamage(&dStack_160, 2);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW)) {
            if (mActionMode < 8) {
                setShieldEffect(&dStack_160);
            } else if (bVar1 == 0 || mTimer10 != 0) {
                setShieldEffect(&dStack_160);
                setActionMode(ACT_GUARDL, 0);
            } else {
                setDamage(&dStack_160, 1);
            }
        }
    }
}

/* 806227D0-80622B60 003CD0 0390+00 4/4 0/0 0/0 .text            checkMoveArea__8daB_TN_cFv */
int daB_TN_c::checkMoveArea() {
    if (mType != 0) {
        return 0;
    }

    if (current.pos.absXZ() > 1700.0f) {
        return 3;
    }

    if (current.pos.absXZ() > 1600.0f) {
        return 2;
    }

    if (current.pos.absXZ() > 1500.0f) {
        return 1;
    }

    return 0;
}

/* 80622B60-80622BE0 004060 0080+00 1/1 0/0 0/0 .text            checkMoveAngle__8daB_TN_cFv */
bool daB_TN_c::checkMoveAngle() {
    s16 sVar1 = cM_atan2s(-current.pos.x, -current.pos.z);
    return abs((s16)(fopAcM_searchPlayerAngleY(this) - sVar1)) < 0x4000;
}

/* 80622BE0-80622CE4 0040E0 0104+00 1/1 0/0 0/0 .text            setAttackBlurEffect__8daB_TN_cFi */
void daB_TN_c::setAttackBlurEffect(int i_data) {
    static u16 blur_effect_id_5997[4] = {
        0x87DA,
        0x87DB,
        0x87DC,
        0x87DD,
    };

    if (i_data != 0) {
        for (int i = 0; i < 4; i++) {
            mParticleKeys[i] = dComIfGp_particle_set(mParticleKeys[i], blur_effect_id_5997[i],
                                                     &current.pos, &tevStr);

            JPABaseEmitter* mBaseEmitter = dComIfGp_particle_getEmitter(mParticleKeys[i]);
            if (mBaseEmitter) {
                mBaseEmitter->setGlobalSRTMatrix(mpPartModels[13]->getBaseTRMtx());
            }
        }
    }
}

/* 80622CE4-80622DF4 0041E4 0110+00 1/1 0/0 0/0 .text            setArmorBreakEffect__8daB_TN_cFi */
void daB_TN_c::setArmorBreakEffect(int i_idx) {
    static u16 blur_effect_id_6035[3] = {0x87DE, 0x87DF, 0x87E0};

    cXyz sp24(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
    cXyz sp30;
    mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(tn_part_joint[i_idx]));
    mDoMtx_stack_c::multVecZero(&sp30);

    for (int i = 0; i < 3; i++) {
        dComIfGp_particle_set(blur_effect_id_6035[i], &sp30, &tevStr, &shape_angle, &sp24);
    }
}

/* 80622DF4-80622ec8 0042F4 0170+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) &&
            fopAcM_checkCarryNow((fopAc_ac_c*)i_actor) == 0)
        {
            f32 mActorDistance =
                fopAcM_searchActorDistanceXZ((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
            if (mActorDistance < 300.0f && fopAcM_GetSpeed((fopAc_ac_c*)i_actor).y) {
                if (fopAcM_GetName(i_actor) == PROC_Obj_Carry) {
                    return i_actor;
                }

                if (fopAcM_GetName((fopAc_ac_c*)i_actor) == PROC_NBOMB) {
                    return i_actor;
                }
            }

            if (mActorDistance < 300.0f && fopAcM_GetName(i_actor) == PROC_NBOMB) {
                daNbomb_c* mNBomb = (daNbomb_c*)i_actor;
                if (mNBomb->checkInsectBombMove((fopAc_ac_c*)i_actor)) {
                    return i_actor;
                }

                if (mNBomb->getExTime() < 10) {
                    return i_actor;
                }
            }

            if ((mActorDistance < 700.0f && fopAcM_GetName(i_actor) == PROC_ARROW) &&
                fopAcM_GetSpeedF((fopAc_ac_c*)i_actor))
            {
                s16 mAngleY = ((fopAc_ac_c*)i_actor)->current.angle.y;
                if (abs((s16)(mAngleY - fopAcM_searchActorAngleY((fopAc_ac_c*)i_actor,
                                                                 (fopAc_ac_c*)i_data))) < 0x2000)
                {
                    return i_actor;
                }
            }
        }
    }

    return NULL;
}

/* 80622ec8-8062318C 004464 0228+00 1/1 0/0 0/0 .text            demo_skip__8daB_TN_cFi */
void daB_TN_c::demo_skip(int param_1) {
    camera_class* cameraClass = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (param_1 == 0) {
        mDemoCamCenter.set(0.0f, -180.0f, 0.0f);
        mDemoCamEye.set(300.0f, -200.0f, 1000.0f);
        cameraClass->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
        cameraClass->mCamera.Start();
        cameraClass->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();

        Z2GetAudioMgr()->bgmStreamStop(0x1e);
        Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS);

        setActionMode(ACT_WAITH, 0);
        mUpdateNeckAngle = true;
        mBlendStatus = 2;
        mBlend = 1.0f;
    } else if (param_1 == 1) {
        mDemoCamCenter.set(0.0f, -239.0f, 1874.0f);
        mDemoCamEye.set(0.0f, -202.0f, 2251.0f);
        cXyz sp28(0.0f, -350.0f, 2200.0f);
        player->setPlayerPosAndAngle(&sp28, -0x8000, 0);

        cameraClass->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
        cameraClass->mCamera.Start();
        cameraClass->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();

        setActionMode(ACT_OPENING, 0);
    }
}

/* 8062318C-806231C0 00468C 0034+00 2/2 0/0 0/0 .text            DemoSkipCallBack__8daB_TN_cFPvi */
int daB_TN_c::DemoSkipCallBack(void* i_this, int param_1) {
    if (i_this) {
        ((daB_TN_c*)i_this)->demo_skip(param_1);
        return 1;
    }

    return 0;
}

/* 806231C0-80623920 0046C0 0760+00 2/1 0/0 0/0 .text            executeRoomDemo__8daB_TN_cFv */
void daB_TN_c::executeRoomDemo() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz pos = player->current.pos;
    cXyz target;

    fopAcM_searchPlayerDistance(this);

    switch (mActionPhase) {
    case PHASE_INIT:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }

        mBlendStatus = 0;
        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_0x4000);

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        mDemoCamCenter = dCam_getBody()->Center();
        mDemoCamEye = dCam_getBody()->Eye();

        mCamFovY = dCam_getBody()->Fovy();
        mActionPhase = ROOM_DEMO_PHASE_2;
        mTimer1 = 30;
        break;

    case ROOM_DEMO_PHASE_2:
        if (mTimer1 == 0) {
            if (!daPy_py_c::checkNowWolf()) {
                mTimer1 = 70;
            } else {
                mTimer1 = 30;
            }

            player->changeOriginalDemo();
            player->changeDemoMoveAngle(-0x8000);
            pos.set(0.0f, -350.0f, 1850.0f);
            player->changeDemoPos0(&pos);
            player->changeDemoMode(daPy_demo_c::DEMO_UNK_2_e, 0, 0, 0);
            mActionPhase = ROOM_DEMO_PHASE_3;
        }
        break;

    case ROOM_DEMO_PHASE_3:
        cLib_addCalcPos2(&mDemoCamCenter, pos, 0.1f, 1.0f);

        if (mTimer1 == 0) {
            player->changeDemoMoveAngle(-0x8000);

            if (!daPy_py_c::checkNowWolf()) {
                pos.set(0.0f, -350.0f, 1923.0f);
            } else {
                pos.set(0.0f, -350.0f, 2173.0f);
            }

            player->changeDemoPos0(&pos);
            player->changeDemoMode(daPy_demo_c::DEMO_UNK_2_e, 0, 0, 0);
            pos.z += 500.0f;
            player->setPlayerPosAndAngle(&pos, -0x8000, 0);

            mTimer1 = 30;
            mActionPhase = ROOM_DEMO_PHASE_10;
            field_0x720 = -0x7000;
            mDemoCamEye.x = cM_ssin(field_0x720) * 400.0f;
            mDemoCamEye.y = -170.0f;
            mDemoCamEye.z = cM_scos(field_0x720) * 400.0f + 1900.0f;
            mDemoCamCenter.set(pos.x, pos.y + 150.0f, pos.z);
            return;
        }
        break;

    case ROOM_DEMO_PHASE_10:
    case ROOM_DEMO_PHASE_11:
        target.set(pos.x, pos.y + 150.0f, pos.z);
        cLib_addCalcPos2(&mDemoCamCenter, target, 0.5f, 10.0f);
        cLib_addCalcAngleS2(&field_0x720, -0x4000, 16, 32);
        cLib_addCalc2(&mDemoCamEye.y, -250.0f, 16.0f, 0.5f);
        mDemoCamEye.x = cM_ssin(field_0x720) * 400.0f;
        mDemoCamEye.z = cM_scos(field_0x720) * 400.0f + 1900.0f;

        if (mTimer1 == 0) {
            if (mActionPhase == ROOM_DEMO_PHASE_10) {
                player->changeDemoMode(daPy_demo_c::DEMO_LOOK_AROUND_e, 0, 0, 0);
                mTimer1 = 120;
                mActionPhase = ROOM_DEMO_PHASE_11;
            } else if (mActionPhase == ROOM_DEMO_PHASE_11) {
                if (!daPy_py_c::checkNowWolf()) {
                    player->changeDemoMode(daPy_demo_c::DEMO_LOOK_UP_e, 2, 0, 0);
                }

                mActionPhase = ROOM_DEMO_PHASE_15;
                mTimer1 = 150;

                if (!daPy_py_c::checkNowWolf()) {
                    mDemoCamEye.set(0.0f, -200.0f, 2400.0f);
                } else {
                    mDemoCamEye.set(0.0f, -265.0f, 2400.0f);
                }

                field_0x720 = 0x5c00;
                mDemoCamCenter = mDemoCamEye;
                mDemoCamCenter.y += 400.0f * cM_ssin(field_0x720);
                mDemoCamCenter.z += 400.0f * cM_scos(field_0x720);
            }
        }
        break;

    case ROOM_DEMO_PHASE_15:
        mDemoCamCenter = mDemoCamEye;
        mDemoCamCenter.y += 400.0f * cM_ssin(field_0x720);
        mDemoCamCenter.z += 400.0f * cM_scos(field_0x720);
        cLib_addCalcAngleS2(&field_0x720, 0x7800, 16, 64);

        if (mTimer1 == 0) {
            mActionPhase = ROOM_DEMO_PHASE_END;
            mTimer1 = 70;
            field_0x724 = 1200.0f;
        }
        break;

    case ROOM_DEMO_PHASE_END:
        cLib_chaseF(&field_0x724, 1200.0f, 50.0f);
        target.set(0.0f, 423.0f, -1841.0f);
        cLib_addCalcPos2(&mDemoCamCenter, target, 0.3f, field_0x724);
        target.set(0.0f, 370.0f, -1442.0f);
        cLib_addCalcPos2(&mDemoCamEye, target, 0.3f, field_0x724);

        if (mTimer1 == 0) {
            mDemoCamCenter.set(0.0f, -239.0f, 1874.0f);
            mDemoCamEye.set(0.0f, -202.0f, 2251.0f);
            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            setActionMode(ACT_OPENING, 0);
            return;
        }
    }

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mCamFovY, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 1);
}

/* 80623920-806246E8 004E20 0DC8+00 2/1 0/0 0/0 .text            executeOpening__8daB_TN_cFv */
void daB_TN_c::executeOpening() {
    cXyz pos, work;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    fopAcM_searchPlayerDistance(this);

    switch (mActionPhase) {
    case PHASE_INIT:
        speedF = 0.0f;
        setBck(BCK_TNA_WAIT_OP, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        mActionPhase = OPENING_PHASE_1;
        // [[fallthrough]]
    case OPENING_PHASE_1:
        pos = player->current.pos;
        if (pos.absXZ() < 2200.0f) {
            work.set(0.0f, -350.0f, 2250.0f);
            if (pos.absXZ(work) > 1300.0f) {
                mActionPhase = OPENING_PHASE_2;
            }
        }
        return;

    case OPENING_PHASE_2:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }

        dComIfGs_onOneZoneSwitch(14, fopAcM_GetRoomNo(this));

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        mTimer1 = 30;

        Z2GetAudioMgr()->bgmStreamPrepare(0x2000037);
        Z2GetAudioMgr()->bgmStreamPlay();

        mActionPhase = OPENING_PHASE_3;
        mCamFovY = 60.0f;
        field_0x724 = 380.0f;
        field_0x720 = 0x1000;
        mDemoCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
        mDemoCamEye.set(mDemoCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f,
                    mDemoCamCenter.z + field_0x724 * cM_scos(field_0x720));

        mpModelMorf2->setFrame(15.0f);
        player->changeOriginalDemo();
        pos.set(150.0f, -400.0f, 600.0f);
        player->setPlayerPosAndAngle(&pos, -0x7000, 0);
        player->changeDemoMode(daPy_demo_c::DEMO_UNK_4_e, 1, 0, 0);
        break;

    case OPENING_PHASE_3:
        cLib_addCalcAngleS2(&field_0x720, 0x400, 8, 48);
        mDemoCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
        mDemoCamEye.set(mDemoCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f,
                    mDemoCamCenter.z + field_0x724 * cM_scos(field_0x720));

        if (mTimer1 == 0) {
            setBck(BCK_TNA_TURN_OP, J3DFrameCtrl::EMode_NONE, 20.0f, 1.0f);
            mActionPhase = OPENING_PHASE_4;
            mBlendStatus = 1;
            mBlend = 0.0f;
        }
        break;

    case OPENING_PHASE_4:
        if (mpModelMorf2->checkFrame(111.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(148.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 80.0f) {
            cLib_addCalcAngleS2(&field_0x720, -0x400, 8, 48);
            mDemoCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
        } else {
            cLib_addCalc2(&field_0x724, 250.0f, 8.0f, 5.0f);
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
            mDoMtx_stack_c::multVecZero(&work);
            cLib_addCalcPos2(&mDemoCamCenter, work, 0.5f, 5.0f);
        }

        mDemoCamEye.set(mDemoCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f,
                    mDemoCamCenter.z + field_0x724 * cM_scos(field_0x720));
        if (mpModelMorf2->isStop()) {
            setBck(BCK_TNA_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mTimer1 = 60;
            mActionPhase = OPENING_PHASE_10;
        }
        break;

    case OPENING_PHASE_10:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&work);
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.5f, 5.0f);

        if (mTimer1 < 30) {
            work.set(0.0f, -350.0f, 400.0f);
            cLib_addCalcPos2(&mDemoCamEye, work, 0.5f, 5.0f);
        }

        if (mTimer1 == 0) {
            setBck(BCK_TNA_ATACK_OP, J3DFrameCtrl::EMode_NONE, 10.0f, 1.0f);
            mActionPhase = OPENING_PHASE_14;
        }
        break;

    case OPENING_PHASE_14:
        if (mpModelMorf2->checkFrame(33.0f) || mpModelMorf2->checkFrame(105.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        } else if (mpModelMorf2->checkFrame(57.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KIAI_OP, -1);
        } else if (mpModelMorf2->checkFrame(62.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        } else if (mpModelMorf2->checkFrame(98.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 30.0f) {
            /* Moves the camera center towards the actor's neck joint position */
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
            mDoMtx_stack_c::multVecZero(&work);
            cLib_addCalcPos2(&mDemoCamCenter, work, 0.5f, 5.0f);

            work.set(0.0f, -350.0f, 400.0f);
            cLib_addCalcPos2(&mDemoCamEye, work, 0.5f, 5.0f);
        } else if (mpModelMorf2->getFrame() < 57.0f) {
            /* Moves the camera center towards, but slightly under, the actor's arm_R_2 joint position */
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_ARM_R_2));
            mDoMtx_stack_c::multVecZero(&work);
            work.y -= 50.0f;
            cLib_addCalcPos2(&mDemoCamCenter, work, 0.5f, 3.0f);

            work.set(0.0f, -350.0f, 400.0f);
            cLib_addCalcPos2(&mDemoCamEye, work, 0.5f, 5.0f);
        } else {
            /* Moves the camera center towards, but slightly under, the actor's arm_R_2 joint position */
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_ARM_R_2));
            mDoMtx_stack_c::multVecZero(&work);
            work.y -= 50.0f;

            cLib_addCalcPos2(&mDemoCamCenter, work, 1.0f, 30.0f);
            work.set(0.0f, -350.0f, 500.0f);
            cLib_addCalcPos2(&mDemoCamEye, work, 0.5f, 3.0f);
        }

        if (mpModelMorf2->checkFrame(58.0f) || mpModelMorf2->checkFrame(98.0f)) {
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER4, 31, cXyz(0.0f, 1.0f, 0.0f));
            mVibrationTimer = 7;
        }

        if (mpModelMorf2->checkFrame(126.0f)) {
            mActionPhase = 17;
            mTimer1 = 30;
        }
        break;

    case 17:
        mDemoCamCenter.set(2.0f, -225.0f, -109.0f);
        work.set(0.0f, -350.0f, 430.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.5f, 100.0f);
        if (mpModelMorf2->checkFrame(160.0f)) {
            mActionPhase = OPENING_PHASE_END;
            player->changeDemoMode(daPy_demo_c::DEMO_UNK_23_e, 0, 0, 0);
        }
        break;

    case OPENING_PHASE_END:
        /* Moves the camera center towards the actor's neck joint position */
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&work);
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.5f, 5.0f);

        work.set(0.0f, -300.0f, 1000.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.1f, 20.0f);

        if (mpModelMorf2->checkFrame(220.0f)) {
            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS);

            setActionMode(ACT_WAITH, PHASE_INIT);
            mUpdateNeckAngle = true;
            mBlendStatus = 2;
            mBlend = 0.0f;
            return;
        }
    }

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mCamFovY, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 0);
}

/* 806246E8-806247D8 005BE8 00F0+00 1/1 0/0 0/0 .text            executeWaitH__8daB_TN_cFv */
void daB_TN_c::executeWaitH() {
    fopAcM_searchPlayerAngleY(this);
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);

    switch (mActionPhase) {
    case PHASE_INIT:
        speedF = 0.0f;
        setBck(BCK_TNA_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        mActionPhase = WAIT_H_PHASE_END;
        // [[fallthrough]]
    case WAIT_H_PHASE_END:
        if (mPlayerDistance < 1500.0f) {
            if (mStayNo2Flag) {
                Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS_LV9);
            }

            setActionMode(ACT_CHASEH, PHASE_INIT);
        }
    }
}

/* 806247D8-80624890 005CD8 00B8+00 1/1 0/0 0/0 .text            setAwaitSound__8daB_TN_cFv */
void daB_TN_c::setAwaitSound() {
    if (mpModelMorf2->checkFrame(17.0f)) {
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
    }

    if (mpModelMorf2->checkFrame(36.0f)) {
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
    }
}

/* 80624890-80625394 005D90 0B04+00 1/1 0/0 0/0 .text            executeChaseH__8daB_TN_cFv */
void daB_TN_c::executeChaseH() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    s16 target = fopAcM_searchPlayerAngleY(this);
    s16 sVar5 = fopAcM_searchPlayerAngleY(this) - cM_atan2s(-current.pos.x, -current.pos.z);
    int mMoveArea = checkMoveArea();

    switch (mActionPhase) {
    case PHASE_INIT:
    case CHASE_H_PHASE_70:
        if (mMoveArea == 3) {
            if (checkMoveAngle()) {
                mActionPhase = CHASE_H_PHASE_100;
            } else {
                mActionPhase = CHASE_H_PHASE_103;
            }
        } else {
            if (mMoveArea != 0 && mPlayerDistance > 800.0f) {
                mPlayerDistance = 400.0f;
            }

            if (mPlayerDistance < 200.0f) {
                mActionPhase = CHASE_H_PHASE_3;
            } else if (mPlayerDistance >= 800.0f) {
                if (mActionPhase == PHASE_INIT) {
                    mActionPhase = CHASE_H_PHASE_WALK_SLOW_BLEND;
                } else {
                    mActionPhase = CHASE_H_PHASE_WALK_FAST_BLEND;
                }
            } else if (mPlayerDistance >= 400.0f) {
                mActionPhase = CHASE_H_PHASE_1;
            } else {
                mActionPhase = CHASE_H_PHASE_5;
            }
        }

        setSwordAtBit(0);
        field_0xa91 = true;
        break;

    case CHASE_H_PHASE_WALK_FAST_BLEND:
    case CHASE_H_PHASE_WALK_SLOW_BLEND:
        if (mActionPhase == CHASE_H_PHASE_WALK_FAST_BLEND) {
            setBck(BCK_TNA_WALK, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        } else {
            setBck(BCK_TNA_WALK, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        }

        mActionPhase = CHASE_H_PHASE_PLAY_FOOT_SOUND;
        speedF = 4.3f;
        // [[fallthrough]]
    case CHASE_H_PHASE_PLAY_FOOT_SOUND:
        if (mpModelMorf2->checkFrame(23.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(0.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_addCalcAngleS(&shape_angle.y, target, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (mPlayerDistance < 700.0f) {
            mActionPhase = 11;
        }
        break;

    case CHASE_H_PHASE_1:
    case CHASE_H_PHASE_11:
        if (mActionPhase == CHASE_H_PHASE_1) {
            setBck(BCK_TNA_WAIT_B_1, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
        } else {
            setBck(BCK_TNA_WAIT_B_1, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        }

        mActionPhase = CHASE_H_PHASE_2;
        speedF = 2.3f;
        current.angle.y = shape_angle.y;
        // [[fallthrough]]
    case CHASE_H_PHASE_2:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, target, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (mPlayerDistance > 800.0f) {
            if (mMoveArea == 0) {
                mActionPhase = CHASE_H_PHASE_WALK_SLOW_BLEND;
            }
        } else if (mPlayerDistance < 300.0f) {
            speedF = 0.0f;
            mActionPhase = CHASE_H_PHASE_5;
        }
        break;

    case CHASE_H_PHASE_3:
        setBck(BCK_TNA_WAIT_B_1, J3DFrameCtrl::EMode_LOOP, 3.0f, -1.0f);
        mActionPhase = CHASE_H_PHASE_4;
        current.angle.y = shape_angle.y + 0x8000;
        mWalkDir = 0;
        // [[fallthrough]]
    case CHASE_H_PHASE_4:
        setAwaitSound();
        speedF = 2.3f;
        cLib_addCalcAngleS(&shape_angle.y, target, 4, 0x400, 16);
        current.angle.y = shape_angle.y + 0x8000;

        if (mPlayerDistance < 200.0f && mTimer3 == 0) {
            mWalkDir++;
            if (mWalkDir > 60) {
                if (mType == 1) {
                    mTimer3 = l_HIO.mTimer3NormalType0;
                } else {
                    mTimer3 = l_HIO.mTimer3NormalType1;
                }

                setActionMode(ACT_ATTACKH, PHASE_INIT);
            }
        } else {
            mWalkDir = 0;
        }

        if (mPlayerDistance > 300.0f) {
            speedF = 0.0f;
            mActionPhase = CHASE_H_PHASE_5;
        }
        break;

    case CHASE_H_PHASE_5:
        if (cM_rnd() < 0.5f) {
            mActionPhase = CHASE_H_PHASE_6;
            setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            mActionPhase = CHASE_H_PHASE_7;
            setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, -1.0f);
            current.angle.y = shape_angle.y + -0x4000;
        }

        mTimer1 = cM_rndFX(20.0f) + 60.0f;
        speedF = 2.3f;
        break;

    case CHASE_H_PHASE_6:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, target, 4, 0x400, 16);
        current.angle.y = shape_angle.y + 0x4000;

        if (mTimer1 == 0) {
            if (cM_rnd() < 0.5f) {
                setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, -1.0f);
                current.angle.y = shape_angle.y + -0x4000;
                mActionPhase = CHASE_H_PHASE_7;
            }

            mTimer1 = cM_rndFX(20.0f) + 60.0f;
        }

        if (mPlayerDistance < 200.0f) {
            mActionPhase = CHASE_H_PHASE_3;
        }

        if (mPlayerDistance > 400.0f) {
            mActionPhase = CHASE_H_PHASE_1;
        }
        break;

    case CHASE_H_PHASE_7:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, target, 4, 0x400, 16);
        current.angle.y = shape_angle.y + -0x4000;

        if (mTimer1 == 0) {
            if (cM_rnd() < 0.5f) {
                setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
                current.angle.y = shape_angle.y + 0x4000;
                mActionPhase = CHASE_H_PHASE_6;
            }
            mTimer1 = cM_rndFX(20.0f) + 90.0f;
        }

        if (mPlayerDistance < 200.0f) {
            mActionPhase = CHASE_H_PHASE_3;
        }

        if (mPlayerDistance > 400.0f) {
            mActionPhase = CHASE_H_PHASE_1;
        }
        break;

    case CHASE_H_PHASE_100:
        setBck(BCK_TNA_WAIT_B_1, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        mActionPhase = CHASE_H_PHASE_102;
        speedF = 2.3f;
        current.angle.y = shape_angle.y;
        // [[fallthrough]]
    case CHASE_H_PHASE_102:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, target, 4, 0x400, 16);
        cLib_addCalcAngleS(&current.angle.y, cM_atan2s(-current.pos.x, -current.pos.z), 4, 0x400,
                           16);

        if (!checkMoveAngle()) {
            mActionPhase = CHASE_H_PHASE_103;
        }

        if (mMoveArea <= 1) {
            mActionPhase = CHASE_H_PHASE_70;
        }
        break;

    case CHASE_H_PHASE_103:
        mPlayerDistance = 3.0f;

        if ((u8)checkBck(BCK_TNA_WALK)) {
            mPlayerDistance = 10.0f;
        }

        if (abs(sVar5) < 0x2000) {
            if (cM_rnd() < 0.5f) {
                mActionPhase = CHASE_H_PHASE_106;
                setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, mPlayerDistance, 1.0f);
            } else {
                mActionPhase = CHASE_H_PHASE_107;
                setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, mPlayerDistance, -1.0f);
            }
        } else if (sVar5 < 0) {
            mActionPhase = CHASE_H_PHASE_106;
            setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, mPlayerDistance, 1.0f);
        } else {
            mActionPhase = CHASE_H_PHASE_107;
            setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, mPlayerDistance, -1.0f);
        }

        mTimer1 = cM_rndFX(20.0f) + 60.0f;
        // [[fallthrough]]
    case CHASE_H_PHASE_106:
    case CHASE_H_PHASE_107:
        setAwaitSound();
        speedF = 2.3f;
        cLib_addCalcAngleS(&shape_angle.y, target, 4, 0x400, 16);

        if (mActionPhase == CHASE_H_PHASE_106) {
            if (mMoveArea == 3) {
                current.angle.y = shape_angle.y + 0x6000;
            } else if (mMoveArea == 2) {
                current.angle.y = shape_angle.y + 0x4000;
            } else {
                current.angle.y = shape_angle.y + 0x3000;
            }
        } else if (mMoveArea == 3) {
            current.angle.y = shape_angle.y + -0x6000;
        } else if (mMoveArea == 2) {
            current.angle.y = shape_angle.y + -0x4000;
        } else {
            current.angle.y = shape_angle.y + -0x3000;
        }

        if (mTimer1 == 0 && mpModelMorf2->checkFrame(0.0f)) {
            if (abs(sVar5) > 0x7800) {
                mTimer1 = cM_rndFX(20.0f) + 90.0f;
                if (cM_rnd() < 0.5f) {
                    if (mActionPhase == CHASE_H_PHASE_106) {
                        setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, -1.0f);
                        mActionPhase = CHASE_H_PHASE_107;
                    } else {
                        setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
                        mActionPhase = CHASE_H_PHASE_106;
                    }
                }
            } else if (abs(sVar5) < 0x7000) {
                if (mActionPhase == CHASE_H_PHASE_106) {
                    if (sVar5 > 0) {
                        setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, -1.0f);
                        mActionPhase = CHASE_H_PHASE_107;
                    }
                } else if (sVar5 < 0) {
                    setBck(BCK_TNA_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
                    mActionPhase = CHASE_H_PHASE_106;
                }
            }
        }

        if (checkMoveAngle()) {
            mActionPhase = CHASE_H_PHASE_100;
        }

        if (mMoveArea < 1) {
            mActionPhase = CHASE_H_PHASE_70;
        }
        break;
    }

    if (mActionPhase < 100) {
        checkStartAttackH();
        if (mMoveArea == 3) {
            if (checkMoveAngle()) {
                mActionPhase = CHASE_H_PHASE_100;
            } else {
                mActionPhase = CHASE_H_PHASE_103;
            }
        }
    }
}

/* 80625394-806255F0 006894 025C+00 1/1 0/0 0/0 .text            checkStartAttackH__8daB_TN_cFv */
void daB_TN_c::checkStartAttackH() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    fopAcM_searchPlayerAngleY(this);
    s16 sVar1 = fopAcM_searchPlayerAngleY(this) - shape_angle.y;

    if (mPlayerDistance < 400.0f && abs(sVar1) < 0x3000) {
        if (mNextBreakPart >= 11) {
            if (mType == 1) {
                if (mTimer3 > 40) {
                    mTimer3 = cM_rndF(20.0f) + 15.0f;
                }
            } else if (mTimer3 > 10) {
                mTimer3 = 10;
            }

            if (mTimer3 == 0 && checkNormalAttackAble()) {
                if (mType == 1) {
                    mTimer3 = l_HIO.mTimer3NormalType0;
                } else {
                    mTimer3 = l_HIO.mTimer3NormalType1;
                }

                setActionMode(ACT_ATTACKH, 0);
            }
        } else if (mPlayerDistance < 200.0f) {
            setActionMode(ACT_ATTACKSHIELDH, 0);
        } else {
            if (mPlayerDistance < 250.0f) {
                if (mType == 1) {
                    if (mTimer3 > 60) {
                        mTimer3 = cM_rndF(20.0f) + 40.0f;
                    }
                } else if (mTimer3 > 30) {
                    mTimer3 = 30;
                }
            }

            if (mTimer3 == 0 && checkNormalAttackAble()) {
                if (mType == 1) {
                    mTimer3 = l_HIO.mTimer3NormalType0;
                } else {
                    mTimer3 = l_HIO.mTimer3NormalType1;
                }

                setActionMode(ACT_ATTACKH, PHASE_INIT);
            }
        }
    }
}

/* 806255F0-80625C74 006AF0 0684+00 1/1 0/0 0/0 .text            executeAttackH__8daB_TN_cFv */
void daB_TN_c::executeAttackH() {
    f32 frame;
    s16 playerAngleY = fopAcM_searchPlayerAngleY(this);
    f32 playerDistance = fopAcM_searchPlayerDistance(this);

    switch (mActionPhase) {
    case PHASE_INIT:
        speedF = 0.0f;

        if (playerDistance < 250.0f) {
            mActionPhase = ATTACK_H_PHASE_ATTACK_A_EXECUTE;
            setBck(BCK_TNA_ATACK_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else if (playerDistance < 350.0f) {
            mActionPhase = ATTACK_H_PHASE_ATTACK_B_EXECUTE;
            setBck(BCK_TNA_ATACK_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else if (cM_rnd() < 0.5f) {
            mActionPhase = ATTACK_H_PHASE_ATTACK_A_EXECUTE;
            setBck(BCK_TNA_ATACK_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else {
            mActionPhase = ATTACK_H_PHASE_ATTACK_B_EXECUTE;
            setBck(BCK_TNA_ATACK_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            setAttackBlurEffect(1);
        }

        field_0xa91 = false;
        break;

    case ATTACK_H_PHASE_ATTACK_A_EXECUTE:
        if (mpModelMorf2->getFrame() >= 20.0f && mpModelMorf2->getFrame() < 25.0f) {
            mUpdateModelTimer = 3;
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_ARM_R_3));
            mDoMtx_stack_c::transM(40.0f, 0.0f, 70.0f);
            mDoMtx_stack_c::YrotM(-0x8000);
            MTXCopy(mDoMtx_stack_c::get(), mNewSwordTRMtx);
        }

        if (mpModelMorf2->checkFrame(18.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KIAI, -1);
        }

        if (mpModelMorf2->checkFrame(23.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        }

        if (mpModelMorf2->checkFrame(72.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->getFrame() <= 30.0f) {
            cLib_addCalcAngleS(&shape_angle.y, playerAngleY, 8, 0x400, 16);
        }

        frame = mpModelMorf2->getFrame();
        if (frame >= 18.0f && frame < 29.0f) {
            mSphCSmallFlag = true;
        }

        if (mpModelMorf2->checkFrame(18.0f)) {
            setSwordAtBit(1);
        }

        if (mpModelMorf2->checkFrame(29.0f)) {
            setSwordAtBit(0);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(ACT_CHASEH, PHASE_INIT);
            field_0xa91 = true;
        }
        break;

    case ATTACK_H_PHASE_ATTACK_B_EXECUTE:
        setAttackBlurEffect(1);
        if (mpModelMorf2->checkFrame(11.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        } else if (mpModelMorf2->checkFrame(19.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KIAI_AGE, -1);
        } else if (mpModelMorf2->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
        } else if (mpModelMorf2->checkFrame(23.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        } else if (mpModelMorf2->checkFrame(66.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->getFrame() <= 22.0f) {
            cLib_addCalcAngleS(&shape_angle.y, playerAngleY, 8, 0x400, 16);
        }

        if (mpModelMorf2->getFrame() >= 22.0f && mpModelMorf2->getFrame() < 30.0f) {
            mChkCoHitOK = true;
            mSphCSmallFlag = true;
        }

        if (mpModelMorf2->checkFrame(22.0f)) {
            setSwordAtBit(1);
        }

        if (mpModelMorf2->checkFrame(30.0f)) {
            setSwordAtBit(0);
        }

        if (mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_IMPCT, 0, -1);
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER6, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(ACT_CHASEH, PHASE_INIT);
            field_0xa91 = true;
        }
    }
}

/* 80625C74-80625E40 007174 01CC+00 1/1 0/0 0/0 .text            executeAttackShieldH__8daB_TN_cFv */
void daB_TN_c::executeAttackShieldH() {
    switch (mActionPhase) {
    case PHASE_INIT:
        speedF = 0.0f;
        setBck(BCK_TNA_ATACK_SHIELD, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mActionPhase = ATTACK_SHIELD_H_PHASE_EXECUTE;
        break;

    case ATTACK_SHIELD_H_PHASE_EXECUTE:
        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_ATK_SLD, -1);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        }

        if (mpModelMorf2->checkFrame(21.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(5.0f)) {
            mSphC.OnAtSetBit();
        }

        if (mpModelMorf2->checkFrame(9.0f)) {
            mSphC.OffAtSetBit();
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(ACT_ATTACKH, PHASE_INIT);
        }
    }
}

/* 80625E40-80626034 007340 01F4+00 1/1 0/0 0/0 .text            executeGuardH__8daB_TN_cFv */
void daB_TN_c::executeGuardH() {
    cXyz work;
    switch (mActionPhase) {
    case PHASE_INIT:
        setSwordAtBit(0);
        mSphC.OffAtSetBit();
        field_0xa91 = true;

        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_WAIST));
        mDoMtx_stack_c::multVecZero(&work);
        current.pos.set(work.x, current.pos.y, work.z);

        mActionPhase = GUARD_H_PHASE_END;
        speedF = 0.0f;

        if (field_0xaa8) {
            shape_angle.y = fopAcM_searchPlayerAngleY(this);
            setBck(BCK_TNA_GUARD_DAMAGE, J3DFrameCtrl::EMode_NONE, 0.0f, 1.0f);
        } else {
            cLib_chaseAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x2000);
            setBck(BCK_TNA_GUARD, J3DFrameCtrl::EMode_NONE, 0.0f, 1.0f);
        }
        break;

    case GUARD_H_PHASE_END:
        if (field_0xaa8) {
            onHeadLockFlg();
        } else if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[341])) { // Obtained 4 secret techinques
            attention_info.flags |= fopAc_AttnFlag_UNK_0x200000;
        }

        if (mpModelMorf2->isStop() &&
            daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP)
        {
            setActionMode(ACT_CHASEH, PHASE_INIT);
        }
    }
}

/* 80626034-80626320 007534 02EC+00 1/1 0/0 0/0 .text            executeDamageH__8daB_TN_cFv */
void daB_TN_c::executeDamageH() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    daPy_py_c* player = daPy_getPlayerActorClass();
    field_0xa91 = false;

    if (mTimer5 == 0) {
        field_0xa91 = true;
        mTimer10 = 30;
    }

    if (mType == 0) {
        if (player->getCutCount() >= 3) {
            field_0xa91 = true;
        }
    } else if (mTimer10 != 0) {
        field_0xa91 = true;
    }

    int part_idx;
    switch (mActionPhase) {
    case DAMAGE_H_PHASE_INIT_LEFT:
    case DAMAGE_H_PHASE_INIT_RIGHT:
        setSwordAtBit(0);
        part_idx = mNextBreakPart;
        if (part_idx >= 12) {
            setActionMode(ACT_CHANGEDEMO, PHASE_INIT);
        } else {
            if (player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                setBreakPart(part_idx);
            } else {
                setBreakHeadPart(part_idx);
            }

            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_WAIST));
            cXyz work;
            mDoMtx_stack_c::multVecZero(&work);
            current.pos.set(work.x, current.pos.y, work.z);

            if (mActionPhase == DAMAGE_H_PHASE_INIT_LEFT) {
                setBck(BCK_TNA_DAMAGE_L, J3DFrameCtrl::EMode_NONE, 0.0f, 1.0f);
            } else {
                setBck(BCK_TNA_DAMAGE_R, J3DFrameCtrl::EMode_NONE, 0.0f, 1.0f);
            }

            mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG, -1);
            speedF = 0.0f;
            mActionPhase = DAMAGE_H_PHASE_END;

            cLib_chaseAngleS(&shape_angle.y, mPlayerAngleY, 0x1800);

            if (mType == 1 && mNextBreakPart < 11 && mCutFlag) {
                field_0xa91 = true;
                mTimer10 = 40;
            }
        }
        break;

    case DAMAGE_H_PHASE_END:
        if (mpModelMorf2->checkFrame(3.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(35.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(ACT_CHASEH, PHASE_INIT);
            field_0xa91 = true;
        }
    }
}

/* 80626320-80627100 007820 0DE0+00 1/1 0/0 0/0 .text            executeChangeDemo__8daB_TN_cFv */
void daB_TN_c::executeChangeDemo() {
    cXyz pos, work, prevEyePos;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    switch (mActionPhase) {
    case PHASE_INIT:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }

        Z2GetAudioMgr()->changeSubBgmStatus(1);

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        mTimer1 = 30;
        mCamFovY = 55.0f;
        field_0x724 = 380.0f;
        field_0x720 = 0x1000;
        mDemoCamCenter.set(0.0f, -179.0f, -342.0f);
        mDemoCamEye.set(0.0f, -300.0f, 350.0f);

        player->changeOriginalDemo();
        pos.set(100.0f, -400.0f, 1000.0f);
        player->setPlayerPosAndAngle(&pos, -0x8000, 0);
        player->changeDemoMode(daPy_demo_c::DEMO_UNK_4_e, 1, 0, 0);

        speedF = 0.0f;
        setBck(BCK_TNA_DAMAGE_LAST, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);

        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG_2, -1);

        mActionPhase = CHANGE_DEMO_PHASE_100;

        for (int i = 0; i < 16; i++) {
            if (mStates[i] >= 3 && mStates[i] <= 5 && std::abs(mPositions[i].x) < 200.0f) {
                if (mPositions[i].x < 0.0f) {
                    mPositions[i].x -= 200.0f;
                } else {
                    mPositions[i].x += 200.0f;
                }
            }
        }
        return;

    case CHANGE_DEMO_PHASE_JUMP_B_1:
    case CHANGE_DEMO_PHASE_100:
    case CHANGE_DEMO_PHASE_101:
        if (mActionPhase == CHANGE_DEMO_PHASE_100) {
            current.pos.set(0.0f, -400.0f, -350.0f);
            shape_angle.y = 0;
            mActionPhase = CHANGE_DEMO_PHASE_101;
        } else {
            if (mActionPhase == CHANGE_DEMO_PHASE_101) {
                setBreakPart(mNextBreakPart);
                mActionPhase = CHANGE_DEMO_PHASE_JUMP_B_1;
            }

            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
            mDoMtx_stack_c::multVecZero(&mDemoCamCenter);
        }

        mDemoCamEye.set(0.0f, -300.0f, 0.0f);

        if (mpModelMorf2->checkFrame(3.0f) || mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(15.0f) || mpModelMorf2->checkFrame(37.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            setBck(BCK_TNB_JUMP_B_1, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            current.angle.y = shape_angle.y + 0x10000 + -0x8000;
            mActionPhase = CHANGE_DEMO_PHASE_JUMP_B_2;
        }
        break;

    case CHANGE_DEMO_PHASE_JUMP_B_2:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&mDemoCamCenter);
        mDemoCamEye.set(0.0f, -300.0f, 0.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            speedF = 35.0f;
            speed.y = 4.0f;
            gravity = -1.0f;
        }

        if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
        }

        if (mpModelMorf2->isStop() && mAcch.ChkGroundHit()) {
            setBck(BCK_TNB_JUMP_B_2, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            mActionPhase = CHANGE_DEMO_PHASE_THROW_INIT;
        }
        break;

    case CHANGE_DEMO_PHASE_THROW_INIT:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&mDemoCamCenter);
        mDemoCamEye.set(0.0f, -300.0f, 0.0f);
        cLib_chaseF(&speedF, 0.0f, 7.0f);
        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            speedF = 0.0f;
            setBck(BCK_TNB_THROW, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mActionPhase = CHANGE_DEMO_PHASE_THROW_EXECUTE;
        }
        break;

    case CHANGE_DEMO_PHASE_THROW_EXECUTE:
        if (mpModelMorf2->checkFrame(11.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(19.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_THROW, -1);
        }

        if (mpModelMorf2->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&mDemoCamCenter);
        mDemoCamEye.set(0.0f, -300.0f, 0.0f);

        if (mpModelMorf2->checkFrame(23.0f)) {
            mStates[13] = 2;
        }

        if (mpModelMorf2->checkFrame(33.0f)) {
            mActionPhase = CHANGE_DEMO_PHASE_WAIT;
            mPositions[13].z = -200.0f;
            mDemoCamEye.set(250.0f, -330.0f, 1250.0f);
            mDemoCamCenter = mPositions[13];
        }
        break;

    case CHANGE_DEMO_PHASE_WAIT:
        mDemoCamCenter = mPositions[13];

        if (mpModelMorf2->isStop()) {
            player->changeDemoMode(daPy_demo_c::DEMO_UNK_16_e, 2, 0, 0);
            setBck(BCK_TNB_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mTimer1 = 60;
            mActionPhase = CHANGE_DEMO_PHASE_11;
        }
        break;

    case CHANGE_DEMO_PHASE_11:
        prevEyePos = mDemoCamEye;
        work.set(100.0f, -330.0f, 1250.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.5f, 10.0f);
        mDemoCamCenter += mDemoCamEye - prevEyePos;

        /* Move the demo cam center above the player */
        pos = player->current.pos;
        pos.y += 150.0f;
        cLib_addCalcPos2(&mDemoCamCenter, pos, 0.5f, 30.0f);

        if (mTimer1 == 45) {
            player->changeDemoMode(daPy_demo_c::DEMO_TURN_BACK_e, 0, 0, 0);
        }

        if (mTimer1 == 15) {
            mTimer1 = 30;
            mActionPhase = CHANGE_DEMO_PHASE_12;
        }
        break;

    case CHANGE_DEMO_PHASE_12:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&work);
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.1f, 60.0f);

        if (mTimer1 == 0) {
            mTimer1 = 40;
            mActionPhase = CHANGE_DEMO_PHASE_PULL_INIT;
        }
        break;

    case CHANGE_DEMO_PHASE_PULL_INIT:
        /* Move demo cam center below actor neck */
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&work);
        work.y -= 100.0f;
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.1f, 30.0f);

        work.set(0.0f, -380.0f, -270.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.1f, 70.0f);

        if (mTimer1 == 0) {
            setBck(BCK_TNB_PULL, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_PULL_OUT, -1);
            mActionPhase = CHANGE_DEMO_PHASE_PULL_EXECUTE;
            pos.set(-100.0f, -400.0f, 300.0f);
            player->setPlayerPosAndAngle(&pos, 0x7000, 0);
        }
        break;

    case CHANGE_DEMO_PHASE_PULL_EXECUTE:
        /* Move demo cam center below actor neck */
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_NECK));
        mDoMtx_stack_c::multVecZero(&work);
        work.y -= 100.0f;
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.1f, 30.0f);

        work.set(0.0f, -380.0f, -270.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.1f, 70.0f);

        if (mpModelMorf2->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_PULL_OUT, 0, -1);
            mStates[15] = 1;
            mStates[14] = 2;
            mpModelMorf1->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_tn", BCK_TNB_SWORD_B_PULL_B), J3DFrameCtrl::EMode_NONE, 0.0f, 1.0f,
                                 0.0f, -1.0f);
        }

        if (mpModelMorf2->isStop()) {
            for (int i = 0; i < 4; i++) {
                mSwordSphs[i].OffCoSetBit();
            }

            mCps.OffCoSetBit();
            setBck(BCK_TNB_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            mTimer1 = 30;
            mActionPhase = CHANGE_DEMO_PHASE_END;
            return;
        }
        break;

    case CHANGE_DEMO_PHASE_END:
        if (mTimer1 == 0) {
            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            setActionMode(ACT_CHASEL, PHASE_INIT);
            initChaseL(16);
            mSphC.OffAtSetBit();
        }
        break;
    }

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mCamFovY, 0);
}

/* 80627100-80627790 008600 0690+00 1/1 0/0 0/0 .text            executeZakoChangeDemo__8daB_TN_cFv */
void daB_TN_c::executeZakoChangeDemo() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);

    switch (mActionPhase) {
    case PHASE_INIT:
        if (mStayNo2Flag) {
            Z2GetAudioMgr()->changeSubBgmStatus(1);
        }

        mTimer1 = 30;
        speedF = 0.0f;
        setBck(BCK_TNA_DAMAGE_LAST, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);

        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG_2, -1);

        setBreakPart(mNextBreakPart);
        mActionPhase = ZAKO_CHANGE_DEMO_PHASE_JUMP_INIT;
        // [[fallthrough]]
    case ZAKO_CHANGE_DEMO_PHASE_JUMP_INIT:
        if (mpModelMorf2->checkFrame(3.0f) || mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(15.0f) || mpModelMorf2->checkFrame(37.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x100, 16);

        if (mpModelMorf2->isStop()) {
            setBck(BCK_TNB_JUMP_B_1, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            current.angle.y = shape_angle.y + 0x8000;
            mActionPhase = ZAKO_CHANGE_DEMO_PHASE_JUMP_END;
        }
        break;

    case ZAKO_CHANGE_DEMO_PHASE_JUMP_END:
        if (mpModelMorf2->checkFrame(4.0f)) {
            speedF = 45.0f;
            speed.y = 5.0f;
            gravity = -1.0f;
        }

        if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
        }

        if (!mpModelMorf2->isStop()) {
            return;
        }

        if (!mAcch.ChkGroundHit()) {
            return;
        }

        setBck(BCK_TNB_JUMP_B_2, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);

        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        mActionPhase = ZAKO_CHANGE_DEMO_PHASE_THROW_INIT;
        return;

    case ZAKO_CHANGE_DEMO_PHASE_THROW_INIT:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x800, 16);
        cLib_chaseF(&speedF, 0.0f, 9.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            speedF = 0.0f;
            setBck(BCK_TNB_THROW, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mActionPhase = ZAKO_CHANGE_DEMO_PHASE_THROW_END;
        }
        break;

    case ZAKO_CHANGE_DEMO_PHASE_THROW_END:
        if (mpModelMorf2->checkFrame(11.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(19.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_THROW, -1);
        }

        if (mpModelMorf2->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 23.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x800, 16);
        }

        if (mpModelMorf2->checkFrame(23.0f)) {
            mStates[13] = 2;
            setSwordAtBit(1);
        }

        if (mpModelMorf2->isStop()) {
            setBck(BCK_TNB_PULL, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_PULL_OUT, -1);
            mActionPhase = ZAKO_CHANGE_DEMO_PHASE_END;
        }
        break;

    case ZAKO_CHANGE_DEMO_PHASE_END:
        if (mpModelMorf2->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_PULL_OUT, 0, -1);
            mStates[15] = 1;
            mStates[14] = 2;
            mpModelMorf1->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_tn", BCK_TNB_SWORD_B_PULL_B), J3DFrameCtrl::EMode_NONE, 0.0f, 1.0f,
                                 0.0f, -1.0f);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(ACT_CHASEL, PHASE_INIT);
            initChaseL(3);
            mSphC.OffAtSetBit();
        }
    }
}

/* 80627790-8062799C 008C90 020C+00 1/1 0/0 0/0 .text            setWalkDir__8daB_TN_cFv */
void daB_TN_c::setWalkDir() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);

    if (checkMoveArea()) {
        s16 sVar1 = cM_atan2s(-current.pos.x, -current.pos.z);
        s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this) - sVar1;
        if (abs(mPlayerAngleY) < 0x2000) {
            mWalkDir = 0;
        } else if (abs(mPlayerAngleY) > 0x6000) {
            mWalkDir = 1;
        } else {
            if (abs(mPlayerAngleY) < 0x4000) {
                mWalkDir = 0;
            } else {
                mWalkDir = 1;
            }

            if (mPlayerAngleY < 0) {
                if (mActionPhase == 5 && mTimer1 > 30) {
                    mTimer1 = 30;
                }
            } else if (mActionPhase == 4 && mTimer1 > 30) {
                mTimer1 = 30;
            }
        }
    } else {
        if (mPlayerDistance > 800.0f) {
            mTimer1 = 0;
        }

        if (mWalkDir == 0) {
            if (mTimer3 != 0) {
                if (mPlayerDistance < 500.0f) {
                    mWalkDir = 1;
                }
            } else if (mPlayerDistance < 300.0f) {
                mWalkDir = 1;
            }
        } else if (mWalkDir == 1) {
            if (mTimer3 != 0) {
                if (mPlayerDistance > 550.0f) {
                    mWalkDir = 0;
                }
            } else if (mPlayerDistance > 350.0f) {
                mWalkDir = 0;
            }

            if (mPlayerDistance < 200.0f) {
                mWalkDir = 2;
            }
        } else if (mPlayerDistance > 250.0f) {
            mWalkDir = 1;
        }
    }
}

/* 8062799C-80627CBC 008E9C 0320+00 6/5 0/0 0/0 .text            initChaseL__8daB_TN_cFi */
void daB_TN_c::initChaseL(int param_1) {
    mActionPhase = param_1;
    speedF = 0.0f;

    switch (mActionPhase) {
    case CHASE_L_PHASE_INIT:
        break;

    case CHASE_L_PHASE_WAIT:
        setBck(BCK_TNB_WAIT, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        mTimer1 = 30;
        break;

    case CHASE_L_PHASE_WALK:
        setBck(BCK_TNB_WALK, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        speedF = 4.7f;
        break;

    case CHASE_L_PHASE_WAIT_B_1:
        if ((u8)checkBck(BCK_TNB_WAIT_B_1) == 0) {
            setBck(BCK_TNB_WAIT_B_1, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        }

        current.angle.y = shape_angle.y + 0x4000;
        mTimer1 = cM_rndFX(20.0f) + 90.0f;
        speedF = 4.8f;
        mWalkDir = 1;
        break;

    case CHASE_L_PHASE_WAIT_B_2:
        if ((u8)checkBck(BCK_TNB_WAIT_B_2) == 0) {
            setBck(BCK_TNB_WAIT_B_2, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        }

        current.angle.y = shape_angle.y + -0x4000;
        mTimer1 = cM_rndFX(20.0f) + 90.0f;
        speedF = 4.8f;
        mWalkDir = 1;
        break;

    case CHASE_L_PHASE_JUMP_BACK:
        setBck(BCK_TNB_JUMP_B_1, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        break;

    case CHASE_L_PHASE_JUMP_BACK_LAND:
        mpModelMorf2->setPlaySpeed(1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        break;

    case CHASE_L_PHASE_JUMP_FRONT:
    case CHASE_L_PHASE_JUMP_FRONT_FAST:
        setBck(BCK_TNB_JUMP_F_1, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        break;

    case CHASE_L_PHASE_JUMP_FRONT_LAND:
        setBck(BCK_TNB_JUMP_F_2, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        break;

    case CHASE_L_PHASE_10:
    case CHASE_L_PHASE_11:
        setBck(BCK_TNB_JUMP_R_1, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        break;

    case CHASE_L_PHASE_JUMP_RIGHT_LAND:
        setBck(BCK_TNB_JUMP_R_2, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        speedF = 15.0f;
        break;

    case CHASE_L_PHASE_13:
    case CHASE_L_PHASE_14:
        setBck(BCK_TNB_JUMP_L_1, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        break;

    case CHASE_L_PHASE_JUMP_LEFT_LAND:
        setBck(BCK_TNB_JUMP_L_2, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        speedF = 15.0f;
        break;

    case CHASE_L_PHASE_WALK_TO_JUMP:
        setBck(BCK_TNB_WALK, J3DFrameCtrl::EMode_LOOP, 10.0f, 1.0f);
        speedF = 4.7;
        mTimer1 = 30;
    }
}

/* 80627CBC-80627D3C 0091BC 0080+00 4/4 0/0 0/0 .text            checkAttackAble__8daB_TN_cFv */
bool daB_TN_c::checkAttackAble() {
    if (fopAcM_searchPlayerDistance(this) < 500.0f &&
        abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x3000)
    {
        return true;
    }

    return false;
}

/* 80627D3C-8062868C 00923C 0950+00 1/1 0/0 0/0 .text            checkNextMove__8daB_TN_cFv */
bool daB_TN_c::checkNextMove() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
    s16 isAttackAble = checkAttackAble();
    int iVar1 = 0;
    s16 sVar7 = current.angle.y;

    fopAc_ac_c* mActor = (fopAc_ac_c*)fpcM_Search(s_obj_sub, this);
    if (mActor != NULL) {
        sVar7 = fopAcM_searchActorAngleY(this, mActor);
        iVar1 = 1;
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x4000) && player->getHookshotTopPos() &&
        player->getHookshotTopPos()->absXZ(current.pos) < 300.0f)
    {
        sVar7 = cLib_targetAngleY(&current.pos, player->getHookshotTopPos());
        iVar1 = 1;
    }

    if (player->getIronBallCenterPos() && !player->checkIronBallGroundStop() &&
        player->getIronBallCenterPos()->absXZ(current.pos) < 300.0f)
    {
        sVar7 = cLib_targetAngleY(&current.pos, player->getIronBallCenterPos());
        iVar1 = 1;
    }

    if (daPy_py_c::getThrowBoomerangActor() &&
        daPy_py_c::getThrowBoomerangActor()->current.pos.absXZ(current.pos) < 300.0f)
    {
        sVar7 = cLib_targetAngleY(&current.pos, &daPy_py_c::getThrowBoomerangActor()->current.pos);
        iVar1 = 1;
    }

    if (iVar1) {
        if ((s16)(sVar7 - shape_angle.y) < 0) {
            initChaseL(CHASE_L_PHASE_13);
        } else {
            initChaseL(CHASE_L_PHASE_10);
        }

        mTimer7 = 10;
        return 1;
    }

    if (isAttackAble) {
        if (player->checkFrontRoll() && mPlayerDistance < 250.0f) {
            setActionMode(ACT_ATTACKSHIELDL, 10);
            return 1;
        }

        if (player->getCutType() != daPy_py_c::CUT_TYPE_JUMP && mPlayerDistance < 200.0f) {
            setActionMode(ACT_ATTACKSHIELDL, 0);
            return 1;
        }
    }

    if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && !player->checkCutJumpCancelTurn() &&
        mPlayerDistance < 350.0f)
    {
        if ((field_0xa9d & 1) == 0) {
            field_0xa9d |= 1;

            if (player->speedF < 28.0f) {
                initChaseL(CHASE_L_PHASE_JUMP_BACK);
            } else {
                if (mPlayerAngleY < 0) {
                    initChaseL(CHASE_L_PHASE_14);
                } else {
                    initChaseL(CHASE_L_PHASE_11);
                }

                mTimer7 = 10;
            }
            return 1;
        }

    } else {
        field_0xa9d &= ~0x1;
    }

    if (checkMoveArea() == 3) {
        return 0;
    }

    if (player->checkCutCharge() && isAttackAble) {
        if ((field_0xa9d & 2) == 0) {
            field_0xa9d |= 2;
            setActionMode(ACT_ATTACKL, ATTACK_L_PHASE_WAIT_TO_ATACK_FAST);
            return 1;
        }
    } else {
        field_0xa9d &= ~0x2;
    }

    if (mTimer3 == 0 && abs(mPlayerAngleY) < 0x3000 && mPlayerDistance > 450.0f &&
        mPlayerDistance < 700.0f)
    {
        if (cM_rnd() < 0.5f) {
            initChaseL(CHASE_L_PHASE_JUMP_FRONT);
            return 1;
        }

        if (mType == 1) {
            mTimer3 = cM_rndF(30.0f) + 10.0f;
        } else {
            mTimer3 = 10;
        }
    }

    if (player->getCutCount() != 0) {
        if (isAttackAble && (field_0xa9d & 4) == 0) {
            field_0xa9d |= 4;
            if (cM_rnd() < 0.4f && mPlayerDistance < 450.0f && mPlayerDistance > 200.0f) {
                if (cM_rnd() < 0.5f) {
                    initChaseL(CHASE_L_PHASE_14);
                } else {
                    initChaseL(CHASE_L_PHASE_11);
                }

                mTimer7 = 10;
                return 1;
            }
        }
    } else {
        field_0xa9d &= ~0x4;
    }

    if (isAttackAble && mPlayerDistance < 350.0f) {
        if (mPlayerDistance < 250.0f) {
            if (mType == 1) {
                if (mTimer3 > 90) {
                    mTimer3 = cM_rndF(30.0f) + 60.0f;
                }
            } else if (mTimer3 > 30) {
                mTimer3 = 30;
            }
        }

        if (mTimer3 == 0 && checkNormalAttackAble()) {
            setActionMode(ACT_ATTACKL, PHASE_INIT);
            return 1;
        }
    }

    if (mPlayerDistance < 100.0f) {
        if (!isAttackAble) {
            initChaseL(CHASE_L_PHASE_JUMP_BACK);
            return 1;
        }

        if (mTimer3 > 5) {
            mTimer3 = 5;
        }

        if (mTimer3 == 0 && checkNormalAttackAble()) {
            setActionMode(ACT_ATTACKL, PHASE_INIT);
            return 1;
        }
    }

    return 0;
}

/* 8062868C-806292F8 009B8C 0C6C+00 2/1 0/0 0/0 .text            executeChaseL__8daB_TN_cFv */
void daB_TN_c::executeChaseL() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (player->getCutCount() <= 1) {
        field_0xa9c++;
    } else {
        field_0xa9c = 0;
    }

    switch (mActionPhase) {
    case PHASE_INIT:
        field_0xa9d = 0;
        // [[fallthrough]]
    case CHASE_L_PHASE_INIT:
        speedF = 0.0f;
        if (checkMoveArea()) {
            if (cM_rnd() < 0.5f) {
                initChaseL(CHASE_L_PHASE_WAIT_B_1);
            } else {
                initChaseL(CHASE_L_PHASE_WAIT_B_2);
            }
        } else if (mPlayerDistance > 800.0f) {
            initChaseL(CHASE_L_PHASE_WALK);
        } else if (cM_rnd() < 0.5f) {
            initChaseL(CHASE_L_PHASE_WAIT_B_1);
        } else {
            initChaseL(CHASE_L_PHASE_WAIT_B_2);
        }

        setSwordAtBit(0);
        field_0xa91 = true;
        break;

    case CHASE_L_PHASE_WALK:
        if (checkNextMove() == 0) {
            if (mpModelMorf2->checkFrame(16.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(33.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
            current.angle.y = shape_angle.y;

            if (mPlayerDistance < 700.0f) {
                initChaseL(CHASE_L_PHASE_INIT);
            }

            if (checkMoveArea()) {
                if (cM_rnd() < 0.5f) {
                    initChaseL(CHASE_L_PHASE_WAIT_B_1);
                } else {
                    initChaseL(CHASE_L_PHASE_WAIT_B_2);
                }
            }
        }
        break;

    case CHASE_L_PHASE_WALK_TO_JUMP:
        if (mpModelMorf2->checkFrame(16.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(33.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (mTimer1 == 0) {
            initChaseL(CHASE_L_PHASE_JUMP_FRONT_FAST);
        }
        break;

    case CHASE_L_PHASE_WAIT:
        if (mTimer1 == 0) {
            initChaseL(CHASE_L_PHASE_INIT);
        }
        break;

    case CHASE_L_PHASE_WAIT_B_1:
        if (checkNextMove() == 0) {
            if (mpModelMorf2->checkFrame(13.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(27.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            mUpdateWaistAngle = true;
            setWalkDir();
            if (mWalkDir == 0) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + -0x2000, 4, 0x400, 16);
            } else if (mWalkDir == 1) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
            } else {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + 0x2000, 4, 0x400, 16);
            }

            current.angle.y = shape_angle.y + 0x4000;

            if (mTimer1 == 0) {
                initChaseL(CHASE_L_PHASE_INIT);
            }
        }
        break;

    case CHASE_L_PHASE_WAIT_B_2:
        if (!checkNextMove()) {
            if (mpModelMorf2->checkFrame(13.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(27.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            mUpdateWaistAngle = true;
            setWalkDir();
            if (mWalkDir == 0) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + 0x2000, 4, 0x400, 16);
            } else if (mWalkDir == 1) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
            } else {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + -0x2000, 4, 0x400, 16);
            }

            current.angle.y = shape_angle.y + -0x4000;

            if (mTimer1 == 0) {
                initChaseL(CHASE_L_PHASE_INIT);
            }
        }
        break;

    case CHASE_L_PHASE_JUMP_BACK:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
        current.angle.y = shape_angle.y + 0x8000;

        if ((u8)checkBck(BCK_TNB_JUMP_B_1)) {
            if (mpModelMorf2->checkFrame(4.0f)) {
                speedF = 50.0f;
                speed.y = 19.0f;
                gravity = -4.0f;
            }

            if (mpModelMorf2->checkFrame(6.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
            }

            if (mpModelMorf2->isStop()) {
                setBck(BCK_TNB_JUMP_B_2, J3DFrameCtrl::EMode_NONE, 5.0f, 0.0f);
            }
        } else if (mAcch.ChkGroundHit()) {
            initChaseL(CHASE_L_PHASE_JUMP_BACK_LAND);
        }
        break;

    case CHASE_L_PHASE_JUMP_BACK_LAND:
        cLib_chaseF(&speedF, 0.0f, 6.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            if (!checkAttackAble() || mTimer13 != 0 || !checkNormalAttackAble()) {
                initChaseL(CHASE_L_PHASE_INIT);
            } else if (mPlayerDistance < 200.0f) {
                setActionMode(ACT_ATTACKSHIELDL, 0);
            } else {
                setActionMode(ACT_ATTACKL, ATTACK_L_PHASE_WAIT_TO_ATACK_FAST);
            }
        }
        break;

    case CHASE_L_PHASE_JUMP_FRONT:
    case CHASE_L_PHASE_JUMP_FRONT_FAST:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (mpModelMorf2->checkFrame(4.0f)) {
            if (mActionPhase == CHASE_L_PHASE_JUMP_FRONT) {
                speedF = 35.0f;
                speed.y = 4.0f;
            } else {
                speedF = 45.0f;
                speed.y = 5.0f;
            }

            gravity = -1.0f;
        }

        if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
        }

        if (mpModelMorf2->isStop() && mAcch.ChkGroundHit()) {
            if (!checkAttackAble() || !checkNormalAttackAble()) {
                initChaseL(CHASE_L_PHASE_JUMP_FRONT_LAND);
            } else {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);

                if (mPlayerDistance < 200.0f) {
                    setActionMode(ACT_ATTACKSHIELDL, 0);
                } else if (cM_rnd() < 0.5f) {
                    setActionMode(ACT_ATTACKL, ATTACK_L_PHASE_WAIT_TO_ATACK_FAST);
                } else {
                    setActionMode(ACT_ATTACKL, PHASE_INIT);
                }
            }
        }
        break;

    case CHASE_L_PHASE_JUMP_FRONT_LAND:
        cLib_chaseF(&speedF, 0.0f, 7.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            initChaseL(CHASE_L_PHASE_INIT);
        }
        break;

    case CHASE_L_PHASE_10:
    case CHASE_L_PHASE_11:
    case CHASE_L_PHASE_13:
    case CHASE_L_PHASE_14:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);

        if (mActionPhase == CHASE_L_PHASE_11 || mActionPhase == CHASE_L_PHASE_10) {
            current.angle.y = shape_angle.y + -0x4000;
        } else {
            current.angle.y = shape_angle.y + 0x4000;
        }

        if (mpModelMorf2->checkFrame(7.0f)) {
            speedF = 33.0f;
        } else if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
            speedF = 35.0f;
        } else if (mpModelMorf2->checkFrame(5.0f)) {
            speedF = 40.0f;
        } else if (mpModelMorf2->checkFrame(4.0f)) {
            speedF = 45.0f;
            speed.y = 5.0f;
            gravity = -1.0f;
        }

        if (mpModelMorf2->isStop() && mAcch.ChkGroundHit()) {
            if (mActionPhase == CHASE_L_PHASE_11 || mActionPhase == CHASE_L_PHASE_10) {
                initChaseL(CHASE_L_PHASE_JUMP_RIGHT_LAND);
            } else {
                initChaseL(CHASE_L_PHASE_JUMP_LEFT_LAND);
            }
        }
        break;

    case CHASE_L_PHASE_JUMP_RIGHT_LAND:
    case CHASE_L_PHASE_JUMP_LEFT_LAND:
        if (mpModelMorf2->checkFrame(5.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_chaseF(&speedF, 0.0f, 7.0f);

        if (mpModelMorf2->isStop()) {
            if (!checkAttackAble() || !checkNormalAttackAble()) {
                initChaseL(CHASE_L_PHASE_INIT);
            } else if (mPlayerDistance < 200.0f) {
                setActionMode(ACT_ATTACKSHIELDL, 0);
            } else {
                setActionMode(ACT_ATTACKL, ATTACK_L_PHASE_WAIT_TO_ATACK_FAST);
            }
        }
    }
}

/* 806292F8-80629D20 00A7F8 0A28+00 1/1 0/0 0/0 .text            executeAttackL__8daB_TN_cFv */
void daB_TN_c::executeAttackL() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);

    speedF = 0.0f;
    current.angle.y = shape_angle.y;

    switch (mActionPhase) {
    case PHASE_INIT:
    case ATTACK_L_PHASE_WAIT_TO_ATACK:
    case ATTACK_L_PHASE_WAIT_TO_ATACK_FAST:
        mTimer1 = 0;
        mPrevActionPhase = mActionPhase;

        if (daPy_getPlayerActorClass()->checkNowWolf()) {
            mTimer3 = l_HIO.mTimer3Wolf;
        } else if (mType == 0) {
            mTimer3 = l_HIO.mTimer3HumanType0;
        } else {
            mTimer3 = l_HIO.mTimer3HumanType1;
        }

        if (mPlayerDistance < 350.0f) {
            if (mPrevActionPhase == ATTACK_L_PHASE_WAIT_TO_ATACK) {
                mActionPhase = ATTACK_L_PHASE_ATACK_B_INIT;
                setBck(BCK_TNB_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
                mTimer1 = 3;
            } else {
                mActionPhase = ATTACK_L_PHASE_ATACK_B_EXECUTE;
                setBck(BCK_TNB_ATACK_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            }
        } else if (mPrevActionPhase == ATTACK_L_PHASE_WAIT_TO_ATACK || mPrevActionPhase == ATTACK_L_PHASE_WAIT_TO_ATACK_FAST) {
            mActionPhase = ATTACK_L_PHASE_ATACK_A_INIT;
            setBck(BCK_TNB_WAIT, J3DFrameCtrl::EMode_LOOP, 3.0f, 1.0f);
            if (mPrevActionPhase == ATTACK_L_PHASE_WAIT_TO_ATACK_FAST) {
                mTimer1 = 5;
            } else {
                mTimer1 = 10;
            }
        } else {
            mActionPhase = ATTACK_L_PHASE_ATACK_A_EXECUTE;
            setBck(BCK_TNB_ATACK_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        mWalkDir = 0;
        break;

    case ATTACK_L_PHASE_11:
        mPrevActionPhase = mActionPhase;
        if (daPy_getPlayerActorClass()->checkNowWolf()) {
            mTimer3 = l_HIO.mTimer3Wolf;
        } else if (mType == 0) {
            mTimer3 = l_HIO.mTimer3HumanType0;
        } else {
            mTimer3 = l_HIO.mTimer3HumanType1;
        }

        if (cM_rnd() < 0.5f) {
            mActionPhase = ATTACK_L_PHASE_ATACK_B_EXECUTE;
            setBck(BCK_TNB_ATACK_B, J3DFrameCtrl::EMode_NONE, 10.0f, 1.0f);
        } else {
            mActionPhase = ATTACK_L_PHASE_ATACK_A_EXECUTE;
            setBck(BCK_TNB_ATACK_A, J3DFrameCtrl::EMode_NONE, 7.0f, 1.0f);
        }

        mWalkDir = 0;
        return;

    case ATTACK_L_PHASE_ATACK_A_EXECUTE:
        if (mpModelMorf2->checkFrame(7.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_S_TRST, 0, -1);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_THRUST, -1);
        }

        if (mpModelMorf2->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        }

        if (mpModelMorf2->checkFrame(15.0f)) {
            mActionPhase = ATTACK_L_PHASE_ATACK_A_END;
            mTimer1 = l_HIO.mTimer1Action1;
            mpModelMorf2->setPlaySpeed(0.0f);
        }
        // fallthrough
    case ATTACK_L_PHASE_ATACK_A_END:
        if (mPrevActionPhase != PHASE_INIT && mpModelMorf2->getFrame() < 8.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x800, 16);
        }

        if (mpModelMorf2->checkFrame(35.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->checkFrame(7.0f)) {
            setSwordAtBit(1);
        } else if (mpModelMorf2->checkFrame(14.0f)) {
            setSwordAtBit(0);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            field_0xa91 = false;
        } else if (mpModelMorf2->checkFrame(30.0f)) {
            field_0xa91 = true;
        }

        if (mActionPhase == ATTACK_L_PHASE_ATACK_A_END && mTimer1 == 0) {
            mpModelMorf2->setPlaySpeed(1.0f);
            if (mpModelMorf2->isStop()) {
                setActionMode(ACT_CHASEL, PHASE_INIT);
            }
        }
        break;

    case ATTACK_L_PHASE_ATACK_B_EXECUTE:
        if (mPrevActionPhase != 0) {
            if (mpModelMorf2->checkFrame(40.0f)) {
                mActionPhase = ATTACK_L_PHASE_ATACK_B_END;
                mTimer1 = l_HIO.mTimer1Action2;
                mpModelMorf2->setPlaySpeed(0.0f);
            }
        } else {
            mActionPhase = ATTACK_L_PHASE_ATACK_B_END;
        }
        // [[fallthrough]]
    case ATTACK_L_PHASE_ATACK_B_END:
        if (mpModelMorf2->checkFrame(14.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_V_2_SWD_1, 0, -1);
        } else if (mpModelMorf2->checkFrame(15.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_S, 0, -1);
        } else if (mpModelMorf2->checkFrame(25.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_2_SWD_2, -1);
        } else if (mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_S, 0, -1);
        } else if (mpModelMorf2->checkFrame(28.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        } else if (mpModelMorf2->checkFrame(52.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mWalkDir != 0 && mpModelMorf2->getFrame() < 10.0f) {
            speedF = 10.0f;
        }

        if (mpModelMorf2->getFrame() < 20.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x400, 16);
        }

        if (mpModelMorf2->checkFrame(13.0f)) {
            setSwordAtBit(1);
            setSwordAtBreak(0);
        } else if (mpModelMorf2->checkFrame(38.0f)) {
            setSwordAtBit(0);
            setSwordAtBreak(1);
        }

        if (mPrevActionPhase == PHASE_INIT) {
            if (mpModelMorf2->checkFrame(20.0f)) {
                field_0xa91 = false;
            } else if (mpModelMorf2->checkFrame(53.0f)) {
                field_0xa91 = true;
            }
        }

        if (mPrevActionPhase == PHASE_INIT && mPlayerDistance < 800.0f &&
            daPy_getPlayerActorClass()->getDamageWaitTimer() == 0)
        {
            if (mpModelMorf2->checkFrame(30.0f)) {
                mWalkDir = 10;
            }

            if (mpModelMorf2->checkFrame(41.0f) && mWalkDir == 10) {
                setBck(BCK_TNB_ATACK_A, J3DFrameCtrl::EMode_NONE, 5.0f, 1.0f);
                setSwordAtBit(0);
                setSwordAtBreak(1);
                mActionPhase = ATTACK_L_PHASE_ATACK_A_EXECUTE;
            }
        }

        if (mActionPhase == ATTACK_L_PHASE_ATACK_B_END && mTimer1 == 0) {
            mpModelMorf2->setPlaySpeed(1.0f);
            if (mpModelMorf2->isStop()) {
                setActionMode(ACT_CHASEL, 0);
            }
        }
        return;

    case ATTACK_L_PHASE_ATACK_A_INIT:
        if (mTimer1 == 0) {
            mActionPhase = ATTACK_L_PHASE_ATACK_A_EXECUTE;
            setBck(BCK_TNB_ATACK_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }
        return;

    case ATTACK_L_PHASE_ATACK_B_INIT:
        if (mTimer1 == 0) {
            mActionPhase = ATTACK_L_PHASE_ATACK_B_EXECUTE;
            setBck(BCK_TNB_ATACK_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }
        return;
    }
}

/* 80629D20-80629FB0 00B220 0290+00 1/1 0/0 0/0 .text            executeAttackShieldL__8daB_TN_cFv */
void daB_TN_c::executeAttackShieldL() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    fopAcM_searchPlayerDistance(this);

    switch (mActionPhase) {
    case ATTACK_SHIELD_L_PHASE_10:
    case PHASE_INIT:
        mPrevActionPhase = mActionPhase;
        if (daPy_getPlayerActorClass()->checkNowWolf()) {
            mTimer3 = l_HIO.mTimer3Wolf;
        } else if (mType == 0) {
            mTimer3 = l_HIO.mTimer3HumanType0;
        } else {
            mTimer3 = l_HIO.mTimer3HumanType1;
        }

        speedF = 0.0f;
        setBck(BCK_TNB_ATACK_SHIELD, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mActionPhase = ATTACK_SHIELD_L_PHASE_ATACK_SHIELD_EXECUTE;
        break;

    case ATTACK_SHIELD_L_PHASE_ATACK_SHIELD_EXECUTE:
        if (mpModelMorf2->checkFrame(8.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KICK, -1);
        }

        if (mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 10.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x800, 16);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            mSphC.OnAtSetBit();
        }

        if (mpModelMorf2->checkFrame(12.0f)) {
            mSphC.OffAtSetBit();
        }

        if (mpModelMorf2->isStop()) {
            if (checkAttackAble() && checkNormalAttackAble()) {
                setActionMode(ACT_ATTACKL, ATTACK_L_PHASE_WAIT_TO_ATACK);
            } else {
                setActionMode(ACT_CHASEL, PHASE_INIT);
            }
        }
        break;
    }
}

/* 80629FB0-8062A3D0 00B4B0 0420+00 1/1 0/0 0/0 .text            executeGuardL__8daB_TN_cFv */
void daB_TN_c::executeGuardL() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);

    switch (mActionPhase) {
    case PHASE_INIT:
    case GUARD_L_PHASE_11:
    case GUARD_L_PHASE_10:
        setSwordAtBit(0);
        setSwordAtBreak(1);
        mSphC.OffAtSetBit();
        speedF = 0.0f;

        if (mActionPhase == PHASE_INIT) {
            field_0xa91 = true;

            u32 mCutType = getCutType();
            if ((mCutType & 16) != 0) {
                setBck(BCK_TNB_GUARD_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            } else if ((mCutType & 32) != 0) {
                setBck(BCK_TNB_GUARD_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            } else if (cM_rnd() < 0.5f) {
                setBck(BCK_TNB_GUARD_A, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            } else {
                setBck(BCK_TNB_GUARD_B, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            }

            speedF = 0.0f;
            mActionPhase = GUARD_L_PHASE_1;
        } else {
            if (mActionPhase == 11) {
                mActionPhase = GUARD_L_PHASE_ATTACK_MODE_INIT;
            } else {
                mActionPhase = GUARD_L_PHASE_CHASEL_MODE_INIT;
            }

            field_0xa91 = false;
            setBck(BCK_TNB_DOWN, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
            speedF = 17.0f;
        }

        if (mTimer10 != 0) {
            shape_angle.y = fopAcM_searchPlayerAngleY(this);
        } else {
            cLib_chaseAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x2000);
        }

        current.angle.y = shape_angle.y + 0x8000;
        break;

    case GUARD_L_PHASE_1:
        field_0xa91 = false;

        if (player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP && abs(mPlayerAngleY) < 0x3000) {
            field_0xa91 = true;
        }

        cLib_chaseF(&speedF, 0.0f, 1.0f);

        if (mpModelMorf2->isStop() && player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP) {
            setActionMode(ACT_CHASEL, PHASE_INIT);
        }
        break;

    case GUARD_L_PHASE_CHASEL_MODE_INIT:
    case GUARD_L_PHASE_ATTACK_MODE_INIT:
        cLib_chaseF(&speedF, 0.0f, 1.0f);
        if (abs(mPlayerAngleY) < 0x3000) {
            field_0xa91 = true;
        } else {
            field_0xa91 = false;
        }

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_PULL_OUT, -1);
        }

        if (mpModelMorf2->checkFrame(37.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mActionPhase == GUARD_L_PHASE_ATTACK_MODE_INIT) {
            if (mpModelMorf2->checkFrame(15.0f)) {
                field_0xa91 = true;
                if (checkAttackAble() && mPlayerDistance < 200.0f) {
                    setActionMode(ACT_ATTACKSHIELDL, PHASE_INIT);
                } else {
                    setActionMode(ACT_ATTACKL, ATTACK_L_PHASE_11);
                }
            }
        } else if (mpModelMorf2->isStop()) {
            setActionMode(ACT_CHASEL, PHASE_INIT);
        }
        break;
    }
}

/* 8062A3D0-8062A71C 00B8D0 034C+00 1/1 0/0 0/0 .text            executeDamageL__8daB_TN_cFv */
void daB_TN_c::executeDamageL() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    daPy_py_c* player = daPy_getPlayerActorClass();

    field_0xa91 = false;

    if (mType == 0) {
        if (daPy_py_c::checkNowWolf()) {
            field_0xa91 = true;
        }

        if (mCutFlag && player->getCutType() != daPy_py_c::CUT_TYPE_TURN_RIGHT &&
            player->getCutType() != daPy_py_c::CUT_TYPE_TURN_LEFT)
        {
            field_0xa91 = true;
        }

        if (mTimer5 == 0) {
            field_0xa91 = true;
            mTimer10 = 30;
        }
    } else {
        field_0xa91 = false;

        if (mTimer5 == 0) {
            field_0xa91 = true;
            mTimer10 = 30;
        }

        if (mTimer10 != 0 || player->checkNowWolf()) {
            field_0xa91 = true;
        }
    }

    switch (mActionPhase) {
    case DAMAGE_PHASE_LEFT_INIT:
    case DAMAGE_PHASE_RIGHT_INIT:
        setSwordAtBit(0);
        setSwordAtBit(0);
        setSwordAtBreak(1);
        mSphC.OffAtSetBit();

        if (mActionPhase == DAMAGE_PHASE_LEFT_INIT) {
            setBck(BCK_TNB_DAMAGE_L, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else {
            setBck(BCK_TNB_DAMAGE_R, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG, -1);
        speedF = 0.0f;
        mActionPhase += 2;

        cLib_chaseAngleS(&shape_angle.y, mPlayerAngleY, 0x1800);

        if (mType == 1 && mCutFlag) {
            field_0xa91 = true;
            mTimer10 = 40;
        }
        break;

    case DAMAGE_PHASE_LEFT_END:
    case DAMAGE_PHASE_RIGHT_END:
        if (mpModelMorf2->checkFrame(3.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mActionPhase == 2) {
            if (mpModelMorf2->checkFrame(32.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }
        } else if (mpModelMorf2->checkFrame(35.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(ACT_CHASEL, PHASE_INIT);
            field_0xa91 = true;
        }
    }
}

/* 8062A71C-8062A950 00BC1C 0234+00 1/1 0/0 0/0 .text            executeYoroke__8daB_TN_cFv */
void daB_TN_c::executeYoroke() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mActionPhase) {
    case PHASE_INIT:
    case YOROKE_PHASE_1:
        if (mActionPhase == PHASE_INIT) {
            setBck(BCK_TNB_DOWN_SIPPU, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        } else {
            setBck(BCK_TNB_DOWN_SIPPU, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        }

        mActionPhase = YOROKE_PHASE_EXECUTE;
        setSwordAtBit(0);
        setSwordAtBreak(1);
        mSphC.OffAtSetBit();
        field_0xa91 = false;
        speedF = 0.0f;
        mCutJumpStatus = 0;

        if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP) {
            mCutJumpStatus = 1;
        }
        // [[fallthrough]]
    case YOROKE_PHASE_EXECUTE:
        if (mCutJumpStatus == 1) {
            if (!player->checkCutJumpMode()) {
                mCutJumpStatus = 2;
            }
        } else if (mCutJumpStatus == 2 && player->checkCutJumpMode() &&
                   !player->checkCutJumpCancelTurn() && fopAcM_searchPlayerDistance(this) < 350.0f)
        {
            setActionMode(ACT_CHASEL, PHASE_INIT);
            if (player->speedF < 28.0f) {
                initChaseL(CHASE_L_PHASE_JUMP_BACK);
                break;
            }

            if ((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y) < 0) {
                initChaseL(CHASE_L_PHASE_14);
            } else {
                initChaseL(CHASE_L_PHASE_11);
            }

            mTimer7 = 10;
            break;
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(ACT_CHASEL, PHASE_INIT);
            field_0xa91 = true;
        }
    }
}

/* 8062A950-8062B344 00BE50 09F4+00 1/1 0/0 0/0 .text            executeEnding__8daB_TN_cFv */
void daB_TN_c::executeEnding() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz pos, work;

    switch (mActionPhase) {
    case PHASE_INIT:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }

        Z2GetAudioMgr()->subBgmStop();

        if (mSwitchNo != 0xff) {
            dComIfGs_onSwitch(mSwitchNo, fopAcM_GetRoomNo(this));
        }

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        setBck(BCK_TNB_DIE, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG_2, -1);
        mActionPhase = ENDING_PHASE_SET_POS_ANGLE;
        speedF = 0.0f;
        mUpdateNeckAngle = false;

        for (int i = 0; i < 16; i++) {
            if (i != 15) {
                mStates[i] = 7;
            }
        }

        mCamFovY = 55.0f;
        field_0x724 = 450.0f;
        field_0x720 = 0x1000;
        mDemoCamCenter.set(-5.0f, -217.0f, -61.0f);
        mDemoCamEye.set(field_0x724 * cM_ssin(field_0x720), -350.0f,
                    field_0x724 * cM_scos(field_0x720));
        player->changeOriginalDemo();
        pos.set(-100.0f, -400.0f, 550.0f);
        player->setPlayerPosAndAngle(&pos, 0x7000, 0);
        player->changeDemoMode(daPy_demo_c::DEMO_UNK_4_e, 1, 0, 0);
        dComIfGs_onStageMiddleBoss();
        return;

    case ENDING_PHASE_DIE_EXECUTE:
    case ENDING_PHASE_2:
    case ENDING_PHASE_SET_POS_ANGLE:
        if (mActionPhase == ENDING_PHASE_SET_POS_ANGLE) {
            current.angle.y = 0;
            shape_angle.y = 0;
            current.pos.set(0.0f, -400.0f, 0.0f);
            mActionPhase = ENDING_PHASE_DIE_EXECUTE;
        } else {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_BACKBONE_2));
            mDoMtx_stack_c::multVecZero(&mDemoCamCenter);
        }

        mDemoCamEye.set(field_0x724 * cM_ssin(field_0x720), -350.0f,
                    field_0x724 * cM_scos(field_0x720));
        cLib_addCalcAngleS2(&field_0x720, -0x1000, 8, 24);

        if (mActionPhase == ENDING_PHASE_DIE_EXECUTE) {
            if (mpModelMorf2->checkFrame(212.0f)) {
                mStates[15] = 2;
            }

            if (mpModelMorf2->checkFrame(6.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(29.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_ZEIZEI, -1);
            }

            if (mpModelMorf2->checkFrame(94.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_KURUSI, -1);
            }

            if (mpModelMorf2->checkFrame(103.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            if (mpModelMorf2->checkFrame(121.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(147.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            if (mpModelMorf2->checkFrame(168.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_DEAD, -1);
            }

            if (mpModelMorf2->checkFrame(289.0f)) {
                dComIfGp_getVibration().StartShock(VIBMODE_S_POWER2, 31, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_EN_TN_HIZA, 0, -1);
            }

            if (mpModelMorf2->checkFrame(312.0f)) {
                dComIfGp_getVibration().StartShock(VIBMODE_S_POWER4, 31, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
            }

            if (mpModelMorf2->isStop()) {
                mActionPhase = ENDING_PHASE_2;
                mTimer1 = 60;
            }
        } else if (mTimer1 == 0) {
            mActionPhase = ENDING_PHASE_3;
            mTimer1 = 60;
        }
        break;

    case ENDING_PHASE_3:
        if (mTimer1 < 36) {
            cLib_chaseF(&mMaterialColor, -50.0f, 0.3f);
        }

        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&work);
        work.x += 100.0f;
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.1f, 2.0f);

        work.set(-350.0f, -250.0f, 700.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.1f, 5.0f);

        if (mTimer1 == 0) {
            if (!daPy_py_c::checkNowWolf()) {
                player->changeDemoMode(daPy_demo_c::DEMO_SWORD_UNEQUIP_SP_e, 0, 0, 0);
            } else {
                player->changeDemoMode(daPy_demo_c::DEMO_UNK_1_e, 0, 0, 0);
            }

            mTimer1 = 54;
            mActionPhase = ENDING_PHASE_4;
        }
        break;

    case ENDING_PHASE_4:
        cLib_chaseF(&mMaterialColor, -50.0f, 0.3f);
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_BACKBONE_2));
        mDoMtx_stack_c::multVecZero(&work);
        work.x += 100.0f;
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.1f, 2.0f);
        
        work.set(-350.0f, -250.0f, 700.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.1f, 5.0f);

        if (mTimer1 == 0) {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_BACKBONE_2));
            mDoMtx_stack_c::multVecZero(&work);
            fopAcM_createDisappear(this, &work, 10, 0, 0xff);
            mDisappear = true;
            mActionPhase = ENDING_PHASE_END;
            mTimer1 = 65;
        }
        break;

    case ENDING_PHASE_END:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_BACKBONE_2));
        mDoMtx_stack_c::multVecZero(&work);
        work.x += 100.0f;
        cLib_addCalcPos2(&mDemoCamCenter, work, 0.1f, 2.0f);

        work.set(-350.0f, -250.0f, 700.0f);
        cLib_addCalcPos2(&mDemoCamEye, work, 0.1f, 5.0f);

        if (mTimer1 == 0) {
            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            fopAcM_delete(this);
        }
    }

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mCamFovY, 0);
}

/* 8062B344-8062B6A8 00C844 0364+00 1/1 0/0 0/0 .text            executeZakoEnding__8daB_TN_cFv */
void daB_TN_c::executeZakoEnding() {
    cXyz sp20;

    switch (mActionPhase) {
    case PHASE_INIT:
        attention_info.flags = 0;
        setBck(BCK_TN2B_DIE, J3DFrameCtrl::EMode_NONE, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_TN_V_DEAD2, -1);
        mActionPhase = ZAKO_ENDING_PHASE_DIE_EXECUTE;
        speedF = 0.0f;
        mUpdateNeckAngle = false;

        if (mStayNo2Flag) {
            Z2GetAudioMgr()->subBgmStop();
        }
        // [[fallthrough]]
    case ZAKO_ENDING_PHASE_DIE_EXECUTE:
        if (mpModelMorf2->checkFrame(3.0f)) {
            mStates[15] = 2;
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(33.0f)) {
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER2, 31, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_TN_HIZA, 0, -1);
        }

        if (mpModelMorf2->checkFrame(68.0f)) {
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER4, 31, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
        }

        cLib_chaseF(&mMaterialColor, -50.0f, 0.3f);

        if (mpModelMorf2->isStop()) {
            mActionPhase = ZAKO_ENDING_PHASE_2;
            mTimer1 = 10;
        }
        break;

    case ZAKO_ENDING_PHASE_2:
        cLib_chaseF(&mMaterialColor, -50.0f, 0.3f);

        if (mTimer1 == 0) {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(JNT_BACKBONE_2));
            mDoMtx_stack_c::multVecZero(&sp20);
            fopAcM_createDisappear(this, &sp20, 10, 0, 29);

            if (mStayNo2Flag) {
                mTimer1 = 60;
                mInactive = true;
                mActionPhase = ZAKO_ENDING_PHASE_END;
            } else {
                if (mSwitchNo != 0xff) {
                    dComIfGs_onSwitch(mSwitchNo, fopAcM_GetRoomNo(this));
                }

                fopAcM_delete(this);
            }
        }
        break;

    case ZAKO_ENDING_PHASE_END:
        if (mTimer1 == 0) {
            if (mSwitchNo != 0xff) {
                dComIfGs_onSwitch(mSwitchNo, fopAcM_GetRoomNo(this));
            }

            fopAcM_delete(this);
        }
    }
}

/* 8062B6A8-8062BA5C 00CBA8 03B4+00 2/1 0/0 0/0 .text            action__8daB_TN_cFv */
void daB_TN_c::action() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (m_attack_timer != 0) {
        m_attack_timer--;
    }

    if (mType == 0 || !player->checkGuardBreakMode()) {
        m_attack_tn = 0;
    }

    if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
        mTimer13 = 30;
    }

    damage_check();
    field_0x700 = l_HIO.field_0x24;
    mUpdateWaistAngle = false;
    mChkCoHitOK = false;
    mSphCSmallFlag = false;
    attention_info.flags &= ~fopAc_AttnFlag_UNK_0x200000;
    int iVar1 = 1;

    switch (mActionMode) {
    case ACT_ROOMDEMO:
        executeRoomDemo();
        iVar1 = 0;
        break;

    case ACT_OPENING:
        executeOpening();
        iVar1 = 0;
        break;

    case ACT_WAITH:
        executeWaitH();
        if (mType == 1) {
            iVar1 = 0;
        }
        break;

    case ACT_CHASEH:
        executeChaseH();
        break;

    case ACT_ATTACKH:
        executeAttackH();
        break;

    case ACT_ATTACKSHIELDH:
        executeAttackShieldH();
        break;

    case ACT_GUARDH:
        executeGuardH();
        break;

    case ACT_DAMAGEH:
        executeDamageH();
        break;

    case ACT_CHANGEDEMO:
        if (mType == 0) {
            executeChangeDemo();
        } else {
            executeZakoChangeDemo();
        }
        break;

    case ACT_CHASEL:
        executeChaseL();
        break;

    case ACT_ATTACKL:
        executeAttackL();
        break;

    case ACT_ATTACKSHIELDL:
        executeAttackShieldL();
        break;

    case ACT_GUARDL:
        executeGuardL();
        break;

    case ACT_DAMAGEL:
        executeDamageL();
        break;

    case ACT_YOROKE:
        executeYoroke();
        break;

    case ACT_ENDING:
        if (mType == 0) {
            executeEnding();
        } else {
            executeZakoEnding();
        }
        break;
    }

    if (mType == 0) {
        if (iVar1) {
            player->onBossRoomWait();
        }

        switch (mBlendStatus) {
        case 0:
            mBlend = 1.0f;
            dKy_custom_colset(0, 0, mBlend);
            break;

        case 1:
            cLib_chaseF(&mBlend, 1.0f, 0.003f);
            dKy_custom_colset(0, 1, mBlend);
            break;

        case 2:
            cLib_chaseF(&mBlend, 1.0f, 0.01f);
            dKy_custom_colset(1, 2, mBlend);
        }
    } else {
        mSound.setLinkSearch(iVar1);
    }

    calcNeckAngle();
    calcWaistAngle();
    setBodyShield();
    calcPartMove();
    fopAcM_posMoveF(this, mStts1.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());

    cXyz pos(eyePos);
    pos.y += 300.0f;
    setHeadLockPos(&pos);

    int iVar2 = 13 - mNextBreakPart;
    if (iVar2 < 0) {
        iVar2 = 0;
    }

    if (iVar2 > 13) {
        iVar2 = 13;
    }

    mpModelMorf2->play(iVar2 + 10, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mpModelMorf1->play(iVar2 + 10, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 8062BA5C-8062BDCC 00CF5C 0370+00 1/1 0/0 0/0 .text            mtx_set__8daB_TN_cFv */
void daB_TN_c::mtx_set() {
    J3DModel* model2;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
    J3DModel* model1 = mpModelMorf2->getModel();
    model1->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf2->modelCalc();

    for (int i = 0; i < 16; i++) {
        if (i == 15) {
            model2 = mpModelMorf1->getModel();
        } else {
            model2 = mpPartModels[i];
        }

        switch (mStates[i]) {
        case 0:
            mDoMtx_stack_c::copy(model1->getAnmMtx(tn_part_joint[i]));

            if (mTimer9 != 0 && i <= 11 && i != 5 && i != 4) {
                int iVar2 = (s16)(mTimer9 * 96);
                field_0xa64 += 1280;
                mDoMtx_stack_c::ZXYrotM(iVar2 * cM_ssin(field_0xa64 + (i << 13)),
                                        iVar2 * cM_ssin(field_0xa64 + (i * 0x6000)),
                                        iVar2 * cM_ssin(field_0xa64 - (i << 13)));
            }

            model2->setBaseTRMtx(mDoMtx_stack_c::get());
            break;

        case 1:
            if (i == 15) {
                mDoMtx_stack_c::copy(model1->getAnmMtx(15));
                mDoMtx_stack_c::transM(12.65f, 13.47f, 20.07f);
                mDoMtx_stack_c::ZXYrotM(cM_deg2s(-168.0f), cM_deg2s(-42.715f), cM_deg2s(77.897));
                model2->setBaseTRMtx(mDoMtx_stack_c::get());
            } else {
                model2->setBaseTRMtx(model1->getAnmMtx(15));
            }
            break;

        case 2:
        case 3:
        case 4:
        case 5:
            if (mType == 1 && i == 5) {
                mDoMtx_stack_c::copy(mpPartModels[4]->getBaseTRMtx());
            } else {
                mDoMtx_stack_c::transS(mPositions[i]);

                if (i == 4) {
                    mDoMtx_stack_c::YrotM(field_0x99c[i].y);
                    mDoMtx_stack_c::ZrotM(field_0x99c[i].z);
                    mDoMtx_stack_c::XrotM(field_0x99c[i].x);
                } else {
                    mDoMtx_stack_c::ZXYrotM(field_0x99c[i]);
                }

                mDoMtx_stack_c::transM(offset_part[i]);
                mDoMtx_stack_c::scaleM(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
            }

            model2->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }

    mpModelMorf1->modelCalc();

    if (mUpdateModelTimer != 0) {
        swordEffectModel->setBaseTRMtx(mNewSwordTRMtx);
    }
}

/* 8062BDCC-8062C5B4 00D2CC 07E8+00 1/1 0/0 0/0 .text            cc_set__8daB_TN_cFv */
void daB_TN_c::cc_set() {
    cXyz sp38;

    J3DModel* model = mpModelMorf2->getModel();
    mDoMtx_stack_c::copy(model->getAnmMtx(5));
    mDoMtx_stack_c::transM(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&eyePos);
    attention_info.position = eyePos;

    if (mActionMode < 8) {
        attention_info.position.y += 80.0f;
    } else {
        attention_info.position.y += 50.0f;
    }

    if (mTimer7 == 0) {
        for (int i = 0; i < 3; i++) {
            switch (i) {
            case 0:
                mDoMtx_stack_c::copy(model->getAnmMtx(5));

                if (mActionMode < 8) {
                    mDoMtx_stack_c::transM(30.0f, 0.0f, 0.0f);
                    mSphA[0].SetR(40.0f);
                    mSphB[0].SetR(40.0f);
                } else {
                    mDoMtx_stack_c::transM(15.0f, 0.0f, 0.0f);
                    mSphA[0].SetR(30.0f);
                    mSphB[0].SetR(30.0f);
                }
                break;

            case 1:
                mSphA[1].SetR(65.0f);
                mSphB[1].SetR(65.0f);
                mDoMtx_stack_c::copy(model->getAnmMtx(3));
                break;

            case 2:
                mSphA[2].SetR(55.0f);
                mSphB[2].SetR(55.0f);
                mDoMtx_stack_c::copy(model->getAnmMtx(18));
                mDoMtx_stack_c::transM(30.0f, 0.0f, 0.0f);
                break;
            }

            mDoMtx_stack_c::multVecZero(&sp38);
            mSphA[i].SetC(sp38);
            mSphB[i].SetC(sp38);
            dComIfG_Ccsp()->Set(&mSphA[i]);
            dComIfG_Ccsp()->Set(&mSphB[i]);
        }
    } else {
        for (int i = 0; i < 3; i++) {
            // Bug: This feels like a bug, but the original
            // does this for some reason. The fields should
            // be indexed by i, not 0.
            mSphA[0].ClrTgHit();
            mSphB[0].ClrTgHit();
        }
    }

    if (mActionMode < 8) {
        sp38 = current.pos;
        sp38.y += 30.0f;
        mSphD.SetC(sp38);
        mSphD.SetR(60.0f);
        dComIfG_Ccsp()->Set(&mSphD);
    }

    if (mStates[13] == 1) {
        mDoMtx_stack_c::copy(model->getAnmMtx(15));
        mDoMtx_stack_c::transM(10.0f, 15.0f, -20.0f);

        for (int i = 0; i < 4; i++) {
            if (mType == 0) {
                mDoMtx_stack_c::transM(12.0f, -6.0f, 36.0f);
            } else {
                mDoMtx_stack_c::transM(9.0f, -4.0f, 27.0f);
            }

            mDoMtx_stack_c::multVecZero(&sp38);
            mSwordSphs[i].SetC(sp38);
            if (mActionPhase == 1) {
                mSwordSphs[i].SetR(70.0f);
            } else {
                mSwordSphs[i].SetR(60.0f);
            }

            dComIfG_Ccsp()->Set(&mSwordSphs[i]);
        }

        if (mActionPhase == 1) {
            mCps.cM3dGCps::Set(mCpsPos, sp38, 70.0f);
        } else {
            mCps.cM3dGCps::Set(mCpsPos, sp38, 60.0f);
        }

        mCpsPos = sp38;
        dComIfG_Ccsp()->Set(&mCps);
    } else if (mStates[15] == 1) {
        mDoMtx_stack_c::copy(mpModelMorf1->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::transM(-50.0f, 0.0f, 0.0f);

        for (int i = 0; i < 4; i++) {
            mDoMtx_stack_c::transM(40.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp38);
            mSwordSphs[i].SetC(sp38);
            mSwordSphs[i].SetR(45.0f);
            dComIfG_Ccsp()->Set(&mSwordSphs[i]);
        }

        mCps.cM3dGCps::Set(mCpsPos, sp38, 45.0f);
        mCpsPos = sp38;
        dComIfG_Ccsp()->Set(&mCps);
    } else if (mStates[13] == 3) {
        mDoMtx_stack_c::copy(mpPartModels[13]->getBaseTRMtx());

        for (int i = 0; i < 4; i++) {
            mDoMtx_stack_c::transM(20.0f, 0.0f, 40.0f);
            mDoMtx_stack_c::multVecZero(&sp38);
            mSwordSphs[i].SetC(sp38);
            mSwordSphs[i].SetR(45.0f);
            dComIfG_Ccsp()->Set(&mSwordSphs[i]);
        }

        mCps.cM3dGCps::Set(mCpsPos, sp38, 45.0f);
        mCpsPos = sp38;
        dComIfG_Ccsp()->Set(&mCps);
    }

    if (mStates[12] == 0) {
        mDoMtx_stack_c::copy(model->getAnmMtx(9));
        mDoMtx_stack_c::transM(10.0f, -10.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp38);
        mSphC.SetC(sp38);

        if (mSphC.ChkAtSet()) {
            mSphC.SetR(70.0f);
        } else if (!mSphCSmallFlag) {
            mSphC.SetR(55.0f);
        } else {
            mSphC.SetR(30.0f);
        }

        dComIfG_Ccsp()->Set(&mSphC);
    } else if (mSphC.ChkAtSet() && mActionMode > 8) {
        mDoMtx_stack_c::copy(model->getAnmMtx(24));
        mDoMtx_stack_c::multVecZero(&sp38);
        mSphC.SetC(sp38);
        mSphC.SetR(70.0f);
        dComIfG_Ccsp()->Set(&mSphC);
    } else {
        mSphC.ClrTgHit();
    }

    for (int i = 0; i < 13; i++) {
        if (mStates[i] == 5) {
            mDoMtx_stack_c::transS(mPositions[i]);
            mDoMtx_stack_c::multVecZero(&sp38);
            mSphArr[i].SetC(sp38);

            if (i == 12) {
                mSphArr[i].SetR(50.0f);
            } else {
                mSphArr[i].SetR(30.0f);
            }

            dComIfG_Ccsp()->Set(&mSphArr[i]);
        }
    }
}

/* 8062C5B4-8062C7A0 00DAB4 01EC+00 1/1 0/0 0/0 .text            execute__8daB_TN_cFv */
int daB_TN_c::execute() {
    if (mTimer1 != 0) {
        mTimer1--;
    }

    if (mInvincibilityTimer != 0) {
        mInvincibilityTimer--;
    }

    if (mTimer3 != 0) {
        mTimer3--;
    }

    if (mTimer4 != 0) {
        mTimer4--;
    }

    if (mTimer5 != 0) {
        mTimer5--;
    }

    if (mTimer6 != 0) {
        mTimer6--;
    }

    if (mTimer7 != 0) {
        mTimer7--;
    }

    if (mVibrationTimer != 0) {
        mVibrationTimer--;
        if (mVibrationTimer == 0) {
            dComIfGp_getVibration().StopQuake(31);
        }
    }

    if (mTimer9 != 0) {
        mTimer9--;
    }

    if (mTimer10 != 0) {
        mTimer10--;
    }

    if (mUpdateModelTimer != 0) {
        mUpdateModelTimer--;
    }

    if (mTimer12 != 0) {
        mTimer12--;
    }

    if (mTimer13 != 0) {
        mTimer13--;
    }

    action();
    mtx_set();

    if (mInactive) {
        return 1;
    }

    cc_set();
    mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(18));
    cXyz effPos, effSize;
    mDoMtx_stack_c::multVecZero(&effPos);
    effSize.set(1.5f, 2.2f, 1.5f);
    setMidnaBindEffect(this, &mSound, &effPos, &effSize);

    return 1;
}

/* 8062C7A0-8062C7C0 00DCA0 0020+00 2/1 0/0 0/0 .text            daB_TN_Execute__FP8daB_TN_c */
static int daB_TN_Execute(daB_TN_c* i_this) {
    i_this->execute();
}

/* 8062C7C0-8062C7C8 00DCC0 0008+00 1/0 0/0 0/0 .text            daB_TN_IsDelete__FP8daB_TN_c */
static int daB_TN_IsDelete(daB_TN_c* i_this) {
    return 1;
}

/* 8062C7C8-8062C848 00DCC8 0080+00 1/1 0/0 0/0 .text            _delete__8daB_TN_cFv */
int daB_TN_c::_delete() {
    dComIfG_resDelete(&mPhaseReq1, "B_tn");
    dComIfG_resDelete(&mPhaseReq2, mArcName);
    if (mHioInit) {
        s_hioinit = 0;
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 8062C848-8062C868 00DD48 0020+00 1/0 0/0 0/0 .text            daB_TN_Delete__FP8daB_TN_c */
static int daB_TN_Delete(daB_TN_c* i_this) {
    i_this->_delete();
}

/* 8062C868-8062CD10 00DD68 04A8+00 1/1 0/0 0/0 .text            CreateHeap__8daB_TN_cFv */
int daB_TN_c::CreateHeap() {
    static int tn2_brk_index[3] = {BRK_TN2_COLOR_1, BRK_TN2_COLOR_2, BRK_TN2_SHIELD};

    J3DModelData* modelData;

    if (mType == 0) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("B_tnp", BMDR_TN);
    } else {
        modelData = (J3DModelData*)dComIfG_getObjectRes("B_tnp2", BMDR_TN2);
    }

    mpModelMorf2 = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                        (J3DAnmTransform*)dComIfG_getObjectRes("B_tn", BCK_TNA_WAIT), 0, 1.0f,
                                        0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf2 == NULL || mpModelMorf2->getModel() == NULL) {
        return 0;
    }

    if (mType == 1) {
        mpBrkAnm = new mDoExt_brkAnm();
        if (mpBrkAnm == NULL) {
            return 0;
        }

        if (mpBrkAnm->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes(mArcName, BRK_TN2_BODY), 1, 2,
                           0.0f, 0, -1) == 0)
        {
            return 0;
        }
    }

    J3DModel* model = mpModelMorf2->getModel();
    model->setUserArea((uintptr_t)this);
    model->getModelData()->getJointNodePointer(5)->setCallBack(JointCallBack);
    model->getModelData()->getJointNodePointer(1)->setCallBack(JointCallBack);

    for (int i = 0; i < 15; i++) {
        if (i == 13 && mType == 1 && mType2 == 1) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(mArcName, 0x13);
        } else {
            modelData =
                (J3DModelData*)dComIfG_getObjectRes(mArcName, tn_part_model_id[i + mType * 0x10]);
        }

        model = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        mpPartModels[i] = model;

        if (mpPartModels[i] == NULL) {
            return 0;
        }

        if (mType == 1) {
            s8 sVar1 = tn_model_brk_idx[i];

            if (mBrkAnmFrame == 3) {
                sVar1 = tn_model_brk_idx2[i];
            }

            if (sVar1 != -1) {
                mpBrkAnms[i] = new mDoExt_brkAnm();
                mDoExt_brkAnm* myanm = mpBrkAnms[i];

                if (myanm == NULL) {
                    return 0;
                }

                if (mpBrkAnms[i]->init(
                        modelData,
                        (J3DAnmTevRegKey*)dComIfG_getObjectRes(mArcName, tn2_brk_index[sVar1]), 1,
                        2, 0.0f, 0, -1) == 0)
                {
                    return 0;
                }
            }
        }
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(mArcName, tn_part_model_id[mType * 0x10 + 0xf]);

    mpModelMorf1 = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                        (J3DAnmTransform*)dComIfG_getObjectRes("B_tn", BCK_TNB_SWORD_B_PULL_A), 0, 1.0f,
                                        0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf1 == NULL || mpModelMorf1->getModel() == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_tn", BMDR_TN_EFFECT);
    model = mDoExt_J3DModel__create(modelData, 0x80000, 0x31000084);

    swordEffectModel = model;
    if (swordEffectModel == NULL) {
        return 0;
    }
    return 1;
}

/* 8062CD58-8062CD78 00E258 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* actor) {
    ((daB_TN_c*)actor)->CreateHeap();
}

/* 8062CD78-8062D2F0 00E278 0578+00 1/1 0/0 0/0 .text            create__8daB_TN_cFv */
int daB_TN_c::create() {
    fopAcM_SetupActor(this, daB_TN_c);

    mSwitchNo = fopAcM_GetParam(this);
    mType = fopAcM_GetParamBit(this, 8, 8);

    if (mType != 1) {
        mType = 0;
    }

    if (mType == 0) {
        mArcName = "B_tnp";
        if (dComIfGs_isStageMiddleBoss()) {
            return cPhs_ERROR_e;
        }
    } else {
        mArcName = "B_tnp2";
        if (dComIfGs_isSwitch(mSwitchNo, fopAcM_GetRoomNo(this))) {
            return cPhs_ERROR_e;
        }
    }

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq1, "B_tn");
    if (step == cPhs_COMPLEATE_e) {
        step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq2, mArcName);

        if (step == cPhs_COMPLEATE_e) {
            mBrkAnmFrame = fopAcM_GetParamBit(this, 16, 16);
            if (mBrkAnmFrame > 4) {
                mBrkAnmFrame = 4;
            }

            mType2 = fopAcM_GetParamBit(this, 24, 24);
            ;
            if (mType2 != 1) {
                mType2 = 0;
            }

            if (mType == 1) {
                if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xb940)) {
                    return cPhs_ERROR_e;
                }
            } else if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xaa20)) {
                return cPhs_ERROR_e;
            }

            if (s_hioinit == 0) {
                s_hioinit = 1;
                mHioInit = 1;
                l_HIO.mUnk1 = -1;
            }

            attention_info.flags = fopAc_AttnFlag_BATTLE_e;
            fopAcM_SetMtx(this, mpModelMorf2->getModel()->getBaseTRMtx());
            fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
            fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);

            mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
            mAcchCir.SetWall(60.0f, 300.0f);
            health = 0x50;
            field_0x560 = 0x50;

            mStts1.Init(0xfa, 0, this);
            mStts2.Init(0xfa, 0, this);

            for (int i = 0; i < 3; i++) {
                mSphA[i].Set(cc_tt_src);
                mSphA[i].SetStts(&mStts1);

                mSphB[i].Set(cc_tt_src2);
                mSphB[i].SetStts(&mStts1);
            }

            mSphA[2].OnCoSameActorHit();
            mSphD.Set(cc_bomb_src);
            mSphD.SetStts(&mStts1);

            for (int i = 0; i < 4; i++) {
                mSwordSphs[i].Set(cc_tt_at_src);
                mSwordSphs[i].SetStts(&mStts2);
            }

            mCps.Set(cc_tt_at_cps_src);
            mCps.SetStts(&mStts2);

            mSphC.Set(cc_tt_tate_src);
            mSphC.SetStts(&mStts1);

            for (int k = 0; k < 16; k++) {
                mAcchArr[k].Set(&mPositions[k], &mPositionsCopy[k], this, 1, &mAcchCirArr[k],
                                &field_0x8dc[k], NULL, NULL);
                mAcchCirArr[k].SetWall(10.0f, 50.0f);
                mAcchArr[k].SetGroundUpY(ground_y_part[k]);
                mSttsArr[k].Init(100, 0, this);
                mSphArr[k].Set(cc_part_src);
                mSphArr[k].SetStts(&mSttsArr[k]);

                mSphArr[k].OnCoSameActorHit();
            }

            mSound.init(&current.pos, &eyePos, 0x3, 0x1);
            mSound.setEnemyName("B_tn");
            mAtInfo.mpSound = &mSound;
            mAtInfo.mPowerType = 1;
            gravity = -5.0f;
            mStates[0xd] = 1;

            setSwordAtBreak(1);

            if (mType == 0) {
                setActionMode(ACT_ROOMDEMO, 0);
            } else {
                mpBrkAnm->setFrame(mBrkAnmFrame);

                for (int k = 0; k < 15; k++) {
                    if (mpBrkAnms[k] != NULL) {
                        mpBrkAnms[k]->setFrame(mBrkAnmFrame);
                    }
                }

                fopAcM_OffStatus(this, 0x4000);
                setActionMode(ACT_WAITH, 0);
            }

            if (!strcmp("D_MN09", dComIfGp_getStartStageName()) &&
                dComIfGp_roomControl_getStayNo() == 0x2)
            {
                mStayNo2Flag = true;
            }

            daB_TN_Execute(this);
        }
    }

    return step;
}

/* 8062D924-8062D944 00EE24 0020+00 1/0 0/0 0/0 .text            daB_TN_Create__FP8daB_TN_c */
static int daB_TN_Create(daB_TN_c* i_this) {
    return i_this->create();
}

/* 8062EF10-8062EF30 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_TN_Method */
static actor_method_class l_daB_TN_Method = {
    (process_method_func)daB_TN_Create,  (process_method_func)daB_TN_Delete,
    (process_method_func)daB_TN_Execute, (process_method_func)daB_TN_IsDelete,
    (process_method_func)daB_TN_Draw,
};

/* 8062EF30-8062EF60 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_TN */
extern actor_process_profile_definition g_profile_B_TN = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_B_TN,               // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daB_TN_c),        // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    225,                     // mPriority
    &l_daB_TN_Method,        // sub_method
    0x00044000,              // mStatus
    fopAc_ENEMY_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES;
