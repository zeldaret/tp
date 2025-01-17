/**
 * @file d_a_npc_kn.cpp
 * 
*/

#include "d/actor/d_a_npc_kn.h"
#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_gwolf.h"
#include "d/actor/d_a_obj_knBullet.h"
#include "JSystem//J3DGraphBase/J3DMaterial.h"
#include "dol2asm.h"

UNK_REL_DATA

/* 80A40D54-80A40D98 000020 0044+00 1/1 0/0 0/0 .data            mCcDCyl__10daNpc_Kn_c */
dCcD_SrcCyl daNpc_Kn_c::mCcDCyl = {
    {
        {0, {{0, 0, 0}, {0, 0}, {0}}},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0},
    },
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f},
};

/* 80A40D98-80A40DD8 000064 0040+00 1/1 0/0 0/0 .data            mCcDSph__10daNpc_Kn_c */
dCcD_SrcSph daNpc_Kn_c::mCcDSph = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},         // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},         // mGObjTg
        {0x0},                                      // mGObjCo
    },                                              // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSphCc
    }  
};

/* 80A40DD8-80A40DF0 0000A4 0018+00 0/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[3][2] = {
    {47, 1}, 
    {48, 1},
    {49, 1}
};

/* 80A40DF0-80A40EC0 -00001 00D0+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[26] = {
    {"", 0},
    {"NONE_EQUIP_CHANGE_TALK",1},
    {"NONE_EQUIP_CHANGE_TALK_WAIT",1},
    {"NO_EQ_CHNGE_TLK_STD",1},
    {"LARGE_DAMAGE_TALK",1},
    {"FIRST_ENCOUNT",2},
    {"ATTACK_FAILED",2},
    {"FIRST_SKILL_GET",2},
    {"SECOND_ENCOUNT",1},
    {"SECOND_SKILL_EXPLAIN",3},
    {"REFLECT_EXPLAIN",3},
    {"SECOND_SKILL_GET",3},
    {"THIRD_SKILL_EXPLAIN",4},
    {"THIRD_SKILL_FIRST",1},
    {"THIRD_SKILL_GET",4},
    {"FOURTH_SKILL_EXPLAIN",5},
    {"FOURTH_SKILL_GET",5},
    {"FIFTH_SKILL_EXPLAIN",6},
    {"FIFTH_SKILL_FIRST",1},
    {"FIFTH_SKILL_GET",6},
    {"SIXTH_SKILL_EXPLAIN",7},
    {"SIXTH_SKILL_GET",7},
    {"SIXTH_SKILL_GET_STAND",7},
    {"SEVENTH_SKILL_EXPLAIN",8},
    {"SEVENTH_SKILL_GET",8},
    {"SEVENTH_SKILL_GET_STAND",8},
};

/* 80A40EC0-80A40EE4 -00001 0024+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[9] = {
    "",
    "KN_a",
    "KN_tch01D",
    "KN_tch02D",
    "KN_tch03D",
    "KN_tch04D",
    "KN_tch05D",
    "KN_tch06D",
    "KN_tch07D",
};

/* 80A40EE4-80A40EE8 0001B0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrnTeach01 */
static s8 l_loadResPtrnTeach01[3] = {
    0x01,
    0x02,
    0xFF,
};

/* 80A40EE8-80A40EEC 0001B4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach02 */
static s8 l_loadResPtrnTeach02[4] = {
    0x01,
    0x02,
    0x03,
    0xFF,
};

/* 80A40EEC-80A40EF0 0001B8 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach03 */
static s8 l_loadResPtrnTeach03[4] = {
    0x01,
    0x03,
    0x04,
    0xFF,
};

/* 80A40EF0-80A40EF4 0001BC 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach04 */
static s8 l_loadResPtrnTeach04[4] = {
    0x01,
    0x04,
    0x05,
    0xFF,
};

/* 80A40EF4-80A40EF8 0001C0 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach05 */
static s8 l_loadResPtrnTeach05[4] = {
    0x01,
    0x05,
    0x06,
    0xFF,
};

/* 80A40EF8-80A40EFC 0001C4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTeach06 */
static s8 l_loadResPtrnTeach06[4] = {
    0x01,
    0x06,
    0x07,
    0xFF,
};

/* 80A40EFC-80A40F00 0001C8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrnTeach07 */
static s8 l_loadResPtrnTeach07[3] = {
    0x01,
    0x08,
    0xFF,
};

/* 80A40F00-80A40F04 0001CC 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    0x01,
    0xFF,
};

/* 80A40F04-80A40F24 -00001 0020+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[8] = {
    l_loadResPtrnTeach01, l_loadResPtrnTeach02, l_loadResPtrnTeach03,
    l_loadResPtrnTeach04, l_loadResPtrnTeach05, l_loadResPtrnTeach06,
    l_loadResPtrnTeach07, l_loadResPtrn0,
};

/* 80A40F24-80A40F5C 0001F0 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[2] = {
    {-1, 0, 0, -1, 0, 0, 0},
     {21, 0, 1, -1, 0, 0, 0}

};

/* 80A40F5C-80A41330 000228 03D4+00 0/1 0/0 0/0 .data            l_motionAnmData */
static int l_motionAnmData[245] = {
    43,2, 1, -1,0, 0, 0, 38,2, 1, -1,0, 0, 0, 39,2, 1, -1,0, 0, 
    0, 41,0, 1, -1,0, 0, 0, 16,0, 1, -1,0, 0, 0, 11,0, 1, -1,0, 
    0, 0, 7, 0, 1, -1,0, 0, 0, 8, 0, 1, -1,0, 0, 0, 9, 2, 1, -1,
    0,0,0, 14,0, 1, -1,0, 0, 0, 13,2, 1, -1,0, 0, 0, 12,0, 1, 
    -1,0, 0, 0, 30,0, 1, -1,0, 0, 0, 17,2, 1, -1,0, 0, 0, 26,0, 
    1, -1,0, 0, 0, 28,2, 1, -1,0, 0, 0, 35,0, 1, -1,0, 0, 0, 36,
    2, 1, -1,0, 0, 0, 10,0, 1, -1,0, 0, 0, 19,0, 1, -1,0, 0, 0, 
    40,0, 1, -1,0, 0, 0, 37,0, 1, -1,0, 0, 0, 5, 0, 1, -1,0, 0, 
    0, 18,2, 1, -1,0, 0, 0, 27,0, 1, -1,0, 0, 0, 29,2, 1, -1,0, 
    0, 0, 20,0, 1, -1,0, 0, 0, 15,0, 1, -1,0, 0, 0, 24,0, 1, -1,
    0, 0, 0, 25,2, 1, -1,0, 0, 0, 44,2, 1, -1,0, 0, 0, 42,0, 1, 
    -1,0, 0, 0, 22,0, 1, -1,0, 0, 0, 23,2, 1, -1,0, 0, 0, 6, 0, 
    1, -1,0, 0, 0
};

/* 80A41330-80A41358 0005FC 0028+00 1/2 0/0 0/0 .data            l_podBckData */
static s32 l_podBckData[10] = {
    -1, 
    1,
    34,
    1,
    33,
    1,
    31,
    1,
    32,
    1,
};

/* 80A41358-80A41378 000624 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[8] = {
    {1, -1, 0},
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
    {0, -1, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
};

/* 80A41378-80A41588 000644 0210+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[132] = {
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {3, -1, 1},
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {15, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {30, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {31, -1, 1},
    {30, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {29, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {33, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {4, 3, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {34, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {8, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {32, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {28, 3, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {23, 6, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {24, 3, 1},
    {25, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {26, -1, 1},
    {0, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {20, 3, 1},
    {21, 3, 1},
    {22, 3, 1},
    {0, 3, 0}, 
    {13, 6, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {14, 3, 1},
    {15, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {16, -1, 1},
    {17, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {18, -1, 1},
    {15, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {19, -1, 1},
    {0, 0, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {27, -1, 1},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {12, 3, 1},
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {4, 3, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {5, 0, 1}, 
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {6, 0, 1}, 
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7,  0, 1},
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {2, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {7, 0, 1}, 
    {1, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {1, 3, 0}, 
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0}
};

/* 80A41588-80A415DC -00001 0054+00 1/1 0/0 0/0 .data            mCutNameList__10daNpc_Kn_c */
char* daNpc_Kn_c::mCutNameList[21] = {
    "",
    "NONE_EQUIP_CHANGE_TALK",
    "NO_EQ_CHNGE_TLK_STD",
    "LARGE_DAMAGE_TALK",
    "FIRST_ENCOUNT",
    "ATTACK_FAILED",
    "FIRST_SKILL_GET",
    "SECOND_ENCOUNT",
    "SECOND_SKILL_EXPLAIN",
    "REFLECT_EXPLAIN",
    "SECOND_SKILL_GET",
    "THIRD_SKILL_EXPLAIN",
    "THIRD_SKILL_GET",
    "FOURTH_SKILL_EXPLAIN",
    "FOURTH_SKILL_GET",
    "FIFTH_SKILL_EXPLAIN",
    "FIFTH_SKILL_GET",
    "SIXTH_SKILL_EXPLAIN",
    "SIXTH_SKILL_GET",
    "SEVENTH_SKILL_EXPLAIN",
    "SEVENTH_SKILL_GETT",
};

/* 80A416CC-80A417C8 000998 00FC+00 1/2 0/0 0/0 .data            mCutList__10daNpc_Kn_c */
daNpc_Kn_c::cutFunc daNpc_Kn_c::mCutList[21] = {
    &daNpc_Kn_c::ECut_noneEquipChangeTalk,
    &daNpc_Kn_c::ECut_noneEquipChangeTalkStand,
    &daNpc_Kn_c::ECut_largeDamageTalk,
    &daNpc_Kn_c::ECut_firstEncount,
    &daNpc_Kn_c::ECut_attackFailed,
    &daNpc_Kn_c::ECut_firstSkillGet,
    &daNpc_Kn_c::ECut_secondEncount,
    &daNpc_Kn_c::ECut_secondSkillExplain,
    &daNpc_Kn_c::ECut_reflectExplain,
    &daNpc_Kn_c::ECut_secondSkillGet,
    &daNpc_Kn_c::ECut_thirdSkillExplain,
    &daNpc_Kn_c::ECut_thirdSkillGet,
    &daNpc_Kn_c::ECut_fourthSkillExplain,
    &daNpc_Kn_c::ECut_fourthSkillGet,
    &daNpc_Kn_c::ECut_fifthSkillExplain,
    &daNpc_Kn_c::ECut_fifthSkillGet,
    &daNpc_Kn_c::ECut_sixthSkillExplain,
    &daNpc_Kn_c::ECut_sixthSkillGet,
    &daNpc_Kn_c::ECut_seventhSkillExplain,
    &daNpc_Kn_c::ECut_seventhSkillGet,
    NULL
};

/* 80A417E8-80A417F8 000AB4 000E+02 1/1 0/0 0/0 .data            l_appearFlag$6644 */
static s16 l_appearFlag[7] = {
    0xFFFF,
    0x0153,
    0x0152,
    0x0154,
    0x0155,
    0x0156,
    0x0157,
};

/* 80A417F8-80A41808 000AC4 000E+02 1/1 0/0 0/0 .data            l_delFlag$6645 */
static s16 l_delFlag[7] = {
    0x0153,
    0x0152,
    0x0154,
    0x0155,
    0x0156,
    0x0157,
    0x0158,
};

// /* 80A41808-80A41824 -00001 001C+00 1/1 0/0 0/0 .data            @6752 */
// SECTION_DATA static void* lit_6752[7] = {
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x24),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x30),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x3C),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x48),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x54),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x60),
//     (void*)(((char*)resetType__10daNpc_Kn_cFv) + 0x94),
// };

// /* 80A41824-80A41840 -00001 001C+00 1/1 0/0 0/0 .data            @6810 */
// SECTION_DATA static void* lit_6810[7] = {
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x60),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x90),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0xE0),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x110),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x140),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x170),
//     (void*)(((char*)setParam__10daNpc_Kn_cFv) + 0x180),
// };

// /* 80A41840-80A4184C -00001 000C+00 1/1 0/0 0/0 .data            @6873 */
// SECTION_DATA static void* lit_6873[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)talk__10daNpc_Kn_cFPv,
// };

// /* 80A4184C-80A41858 -00001 000C+00 1/1 0/0 0/0 .data            @6881 */
// SECTION_DATA static void* lit_6881[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)talk__10daNpc_Kn_cFPv,
// };

// /* 80A41858-80A41874 -00001 001C+00 1/1 0/0 0/0 .data            @7116 */
// SECTION_DATA static void* lit_7116[7] = {
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x70),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x7C),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0xA4),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0xCC),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0xF4),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x11C),
//     (void*)(((char*)setCollision__10daNpc_Kn_cFv) + 0x128),
// };

/* 80A41874-80A4187C 000B40 0008+00 1/1 0/0 0/0 .data            l_swordOffset$7120 */
static f32 l_swordOffset[2] = {
    60.0f,
    120.0f
};

// /* 80A4187C-80A41888 -00001 000C+00 0/1 0/0 0/0 .data            @7398 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7398[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)test__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41888-80A41894 -00001 000C+00 0/0 0/0 0/0 .data            @7413 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7413[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41894-80A418A0 -00001 000C+00 0/0 0/0 0/0 .data            @7421 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7421[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418A0-80A418AC -00001 000C+00 0/0 0/0 0/0 .data            @7429 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7429[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418AC-80A418B8 -00001 000C+00 0/0 0/0 0/0 .data            @7437 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7437[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418B8-80A418C4 -00001 000C+00 0/1 0/0 0/0 .data            @7443 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7443[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A418C4-80A418E0 -00001 001C+00 1/1 0/0 0/0 .data            @7450 */
// SECTION_DATA static void* lit_7450[7] = {
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x88),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x90),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0xB0),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0xD0),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x114),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x158),
//     (void*)(((char*)selectAction__10daNpc_Kn_cFv) + 0x19C),
// };

// /* 80A418E0-80A418EC -00001 000C+00 1/1 0/0 0/0 .data            @7456 */
// SECTION_DATA static void* lit_7456[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach03_attackWait__10daNpc_Kn_cFPv,
// };

// /* 80A418EC-80A418F8 -00001 000C+00 1/1 0/0 0/0 .data            @7458 */
// SECTION_DATA static void* lit_7458[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };

// /* 80A418F8-80A41904 -00001 000C+00 0/1 0/0 0/0 .data            @7465 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7465[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach04_attackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41904-80A41910 -00001 000C+00 0/1 0/0 0/0 .data            @7467 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7467[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach04_headBreakWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41910-80A4191C -00001 000C+00 0/1 0/0 0/0 .data            @7469 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7469[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach04_finishWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A4191C-80A41928 -00001 000C+00 0/1 0/0 0/0 .data            @7471 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7471[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41928-80A41934 -00001 000C+00 1/1 0/0 0/0 .data            @7478 */
// SECTION_DATA static void* lit_7478[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach05_surpriseAttackWait__10daNpc_Kn_cFPv,
// };

// /* 80A41934-80A41940 -00001 000C+00 1/1 0/0 0/0 .data            @7480 */
// SECTION_DATA static void* lit_7480[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };

// /* 80A41940-80A4194C -00001 000C+00 0/1 0/0 0/0 .data            @7487 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7487[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_superJumpWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A4194C-80A41958 -00001 000C+00 0/1 0/0 0/0 .data            @7489 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7489[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_divideMove__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41958-80A41964 -00001 000C+00 0/1 0/0 0/0 .data            @7491 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7491[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_superJumpWaitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41964-80A41970 -00001 000C+00 0/1 0/0 0/0 .data            @7493 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7493[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_superJumpedDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41970-80A4197C -00001 000C+00 0/1 0/0 0/0 .data            @7495 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7495[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_warpDelete__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A4197C-80A41988 -00001 000C+00 0/1 0/0 0/0 .data            @7497 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7497[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach06_waitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41988-80A41994 -00001 000C+00 0/1 0/0 0/0 .data            @7499 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7499[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A41994-80A419A0 -00001 000C+00 0/1 0/0 0/0 .data            @7506 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7506[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_superTurnAttackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419A0-80A419AC -00001 000C+00 0/1 0/0 0/0 .data            @7508 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7508[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_divideMove__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419AC-80A419B8 -00001 000C+00 0/1 0/0 0/0 .data            @7510 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7510[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_superTurnAttackWaitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419B8-80A419C4 -00001 000C+00 0/1 0/0 0/0 .data            @7512 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7512[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_superTurnAttackedDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419C4-80A419D0 -00001 000C+00 0/1 0/0 0/0 .data            @7514 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7514[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_warpDelete__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419D0-80A419DC -00001 000C+00 0/1 0/0 0/0 .data            @7516 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7516[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach07_waitDivide__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419DC-80A419E8 -00001 000C+00 0/1 0/0 0/0 .data            @7518 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_7518[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A419E8-80A41A3C -00001 0054+00 1/1 0/0 0/0 .data            @9731 */
// SECTION_DATA static void* lit_9731[21] = {
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x21C),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x224),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x22C),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x234),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x468),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x3D4),
// };

// /* 80A41A3C-80A41A90 -00001 0054+00 1/1 0/0 0/0 .data            @9730 */
// SECTION_DATA static void* lit_9730[21] = {
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x88),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0xEC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x124),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x144),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1FC),
//     (void*)(((char*)ECut_secondEncount__10daNpc_Kn_cFi) + 0x1F4),
// };

// /* 80A41A90-80A41BAC -00001 011C+00 1/1 0/0 0/0 .data            @9985 */
// SECTION_DATA static void* lit_9985[71] = {
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x3A4),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x4AC),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x568),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x590),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x688),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x688),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x6B0),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x7FC),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x590),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x84C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x824),
// };

// /* 80A41BAC-80A41CC8 -00001 011C+00 1/1 0/0 0/0 .data            @9984 */
// SECTION_DATA static void* lit_9984[71] = {
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x13C),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x264),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x278),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x294),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x2E4),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x2F0),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x160),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_thirdSkillExplain__10daNpc_Kn_cFi) + 0x304),
// };

// /* 80A41CC8-80A41D44 -00001 007C+00 1/1 0/0 0/0 .data            @10163 */
// SECTION_DATA static void* lit_10163[31] = {
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2E8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x3B4),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x40C),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x434),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x4F0),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x548),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x5A4),
// };

// /* 80A41D44-80A41DC0 -00001 007C+00 1/1 0/0 0/0 .data            @10162 */
// SECTION_DATA static void* lit_10162[31] = {
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x134),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x16C),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x24C),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x270),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2A4),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_thirdSkillGet__10daNpc_Kn_cFi) + 0x2B8),
// };

// /* 80A41DC0-80A41EDC -00001 011C+00 1/1 0/0 0/0 .data            @10496 */
// SECTION_DATA static void* lit_10496[71] = {
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x4AC),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x578),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x5D0),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x6B4),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x6DC),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x820),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x828),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x828),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x850),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x9C0),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x6DC),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0xA08),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x9E8),
// };

// /* 80A41EDC-80A41FF8 -00001 011C+00 1/1 0/0 0/0 .data            @10495 */
// SECTION_DATA static void* lit_10495[71] = {
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x9C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x12C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x168),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x184),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x344),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x358),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x3F8),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x1A8),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_fourthSkillExplain__10daNpc_Kn_cFi) + 0x40C),
// };

// /* 80A41FF8-80A42074 -00001 007C+00 1/1 0/0 0/0 .data            @10672 */
// SECTION_DATA static void* lit_10672[31] = {
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2E8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x3B4),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x40C),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x434),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x4F0),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x548),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x5A4),
// };

// /* 80A42074-80A420F0 -00001 007C+00 1/1 0/0 0/0 .data            @10671 */
// SECTION_DATA static void* lit_10671[31] = {
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x134),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x16C),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x24C),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x270),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2A4),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fourthSkillGet__10daNpc_Kn_cFi) + 0x2B8),
// };

// /* 80A420F0-80A4220C -00001 011C+00 1/1 0/0 0/0 .data            @11023 */
// SECTION_DATA static void* lit_11023[71] = {
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x4A8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x574),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x5CC),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x5F4),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x6B0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x6D8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x7D0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x7D0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x7F8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9A0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x6D8),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9F0),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x9C8),
// };

// /* 80A4220C-80A42328 -00001 011C+00 1/1 0/0 0/0 .data            @11022 */
// SECTION_DATA static void* lit_11022[71] = {
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x15C),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x178),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x340),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x354),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x370),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x19C),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x488),
//     (void*)(((char*)ECut_fifthSkillExplain__10daNpc_Kn_cFi) + 0x408),
// };

// /* 80A42328-80A423A4 -00001 007C+00 1/1 0/0 0/0 .data            @11199 */
// SECTION_DATA static void* lit_11199[31] = {
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2E8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x3B4),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x40C),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x434),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x4F0),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x548),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x608),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x5A4),
// };

// /* 80A423A4-80A42420 -00001 007C+00 1/1 0/0 0/0 .data            @11198 */
// SECTION_DATA static void* lit_11198[31] = {
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x134),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x16C),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x24C),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x270),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2A4),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
//     (void*)(((char*)ECut_fifthSkillGet__10daNpc_Kn_cFi) + 0x2B8),
// };

// /* 80A42420-80A42564 -00001 0144+00 1/1 0/0 0/0 .data            @11518 */
// SECTION_DATA static void* lit_11518[81] = {
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x414),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x4E0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x538),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x560),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x61C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x644),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x73C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x73C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x764),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x8C8),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x644),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x8F0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x988),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x968),
// };

// /* 80A42564-80A426A8 -00001 0144+00 1/1 0/0 0/0 .data            @11517 */
// SECTION_DATA static void* lit_11517[81] = {
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x15C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x178),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x2A0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x2B4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x2D0),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x354),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x19C),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x368),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3F4),
//     (void*)(((char*)ECut_sixthSkillExplain__10daNpc_Kn_cFi) + 0x3EC),
// };

// /* 80A426A8-80A42724 -00001 007C+00 1/1 0/0 0/0 .data            @11696 */
// SECTION_DATA static void* lit_11696[31] = {
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2F8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x3C4),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x41C),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x444),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x500),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x558),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x618),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x5B4),
// };

// /* 80A42724-80A427A0 -00001 007C+00 1/1 0/0 0/0 .data            @11695 */
// SECTION_DATA static void* lit_11695[31] = {
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0xA4),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x144),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x17C),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x25C),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x280),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2B4),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2D8),
//     (void*)(((char*)ECut_sixthSkillGet__10daNpc_Kn_cFi) + 0x2C8),
// };

// /* 80A427A0-80A428E4 -00001 0144+00 1/1 0/0 0/0 .data            @11977 */
// SECTION_DATA static void* lit_11977[81] = {
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3F0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x4BC),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x514),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x53C),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x620),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x718),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x718),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x740),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x768),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x780),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x7A8),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x840),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x820),
// };

// /* 80A428E4-80A42A28 -00001 0144+00 1/1 0/0 0/0 .data            @11974 */
// SECTION_DATA static void* lit_11974[81] = {
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x15C),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x178),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x2A0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x2B4),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x2D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x324),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x330),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x344),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_seventhSkillExplain__10daNpc_Kn_cFi) + 0x3C8),
// };

// /* 80A42A28-80A42ACC -00001 00A4+00 1/1 0/0 0/0 .data            @12160 */
// SECTION_DATA static void* lit_12160[41] = {
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x314),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x3E0),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x438),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x460),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x51C),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x574),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x5D0),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x690),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x62C),
// };

// /* 80A42ACC-80A42B70 -00001 00A4+00 1/1 0/0 0/0 .data            @12159 */
// SECTION_DATA static void* lit_12159[41] = {
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0xAC),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x14C),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x184),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x264),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x288),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2BC),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2D0),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2F4),
//     (void*)(((char*)ECut_seventhSkillGet__10daNpc_Kn_cFi) + 0x2E4),
// };

// /* 80A42B70-80A42BFC -00001 008C+00 1/1 0/0 0/0 .data            @12828 */
// SECTION_DATA static void* lit_12828[35] = {
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x19C),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x6C),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x104),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0xB8),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x1E8),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x150),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x2B8),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x3E4),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x304),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x350),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x44),
//     (void*)(((char*)setSe__10daNpc_Kn_cFv) + 0x39C),
// };

// /* 80A42BFC-80A42C08 -00001 000C+00 0/1 0/0 0/0 .data            @12903 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12903[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C08-80A42C14 -00001 000C+00 0/1 0/0 0/0 .data            @12905 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12905[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_attackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C14-80A42C20 -00001 000C+00 0/1 0/0 0/0 .data            @12907 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12907[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_swordAttackWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C20-80A42C2C -00001 000C+00 0/1 0/0 0/0 .data            @12909 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12909[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach01_swordFinishWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42C2C-80A42C38 -00001 000C+00 0/1 0/0 0/0 .data            @12911 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_12911[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

/* 80A42C38-80A42C74 001F04 003C+00 0/1 0/0 0/0 .data            l_checkOffset$13216 */
static u8 l_checkOffset[60] = {
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0xC2, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0xC2, 0x48, 0x00, 0x00,
};

/* 80A42C74-80A42CD4 001F40 0060+00 0/1 0/0 0/0 .data            l_WarpInScaleTable$13228 */
static u8 l_WarpInScaleTable[96] = {
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0xCC, 0x08, 0x31,
    0x3F, 0x52, 0xF1, 0xAA,
    0x3F, 0xD5, 0xC2, 0x8F,
    0x3F, 0xF4, 0x7A, 0xE1,
    0x3F, 0x38, 0x51, 0xEC,
    0x3F, 0xE5, 0x1E, 0xB8,
    0x3F, 0xCC, 0x08, 0x31,
    0x3F, 0x51, 0x26, 0xE9,
    0x3F, 0xD5, 0xC2, 0x8F,
    0x3E, 0xCC, 0xCC, 0xCD,
    0x3F, 0xC0, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0xA6, 0x66, 0x66,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 80A42CD4-80A42CDC 001FA0 0008+00 0/1 0/0 0/0 .data            l_warpInTimeTable$13229 */
static u8 l_warpInTimeTable[8] = {
    0x01,
    0x04,
    0x08,
    0x0B,
    0x0D,
    0x0E,
    0x0F,
    0x10,
};

/* 80A42CDC-80A42D0C 001FA8 0030+00 0/1 0/0 0/0 .data            l_WarpOutScaleTable$13245 */
static u8 l_WarpOutScaleTable[48] = {
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00,
    0x3F, 0xA8, 0xF5, 0xC3, 
    0x00, 0x00, 0x00, 0x00, 
    0x3F, 0x18, 0x10, 0x62,
    0x3F, 0xC0, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00,
};

/* 80A42D0C-80A42D10 001FD8 0004+00 0/1 0/0 0/0 .data            l_warpOutTimeTable$13246 */
static u8 l_warpOutTimeTable[4] = {
    0x01,
    0x03,
    0x05,
    0x06,
};

// /* 80A42D10-80A42E04 -00001 00F4+00 1/1 0/0 0/0 .data            @13764 */
// SECTION_DATA static void* lit_13764[61] = {
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x36C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x384),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x3B0),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x3D0),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x48C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x4E4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x540),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x59C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x5C4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x614),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x5EC),
// };

// /* 80A42E04-80A42EF8 -00001 00F4+00 1/1 0/0 0/0 .data            @13763 */
// SECTION_DATA static void* lit_13763[61] = {
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0xC4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x120),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x17C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x1B4),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x294),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x2B8),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x2EC),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x300),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x314),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x328),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x34C),
//     (void*)(((char*)ECut_firstSkillGet__10daNpc_Kn_cFi) + 0x33C),
// };

// /* 80A42EF8-80A42F04 -00001 000C+00 0/1 0/0 0/0 .data            @13890 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13890[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_start__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F04-80A42F10 -00001 000C+00 0/1 0/0 0/0 .data            @13892 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13892[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_shieldBashWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F10-80A42F1C -00001 000C+00 0/1 0/0 0/0 .data            @13894 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13894[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_finishWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F1C-80A42F28 -00001 000C+00 0/1 0/0 0/0 .data            @13896 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13896[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)teach02_shieldReflectWait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F28-80A42F34 -00001 000C+00 0/1 0/0 0/0 .data            @13898 */
// #pragma push
// #pragma force_active on
// SECTION_DATA static void* lit_13898[3] = {
//     (void*)NULL,
//     (void*)0xFFFFFFFF,
//     (void*)wait__10daNpc_Kn_cFPv,
// };
// #pragma pop

// /* 80A42F34-80A43000 -00001 00CC+00 1/1 0/0 0/0 .data            @14387 */
// SECTION_DATA static void* lit_14387[51] = {
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x394),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x3AC),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x3D8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x3F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x4B4),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x4DC),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x598),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x598),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5F8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x5C0),
// };

// /* 80A43000-80A430CC -00001 00CC+00 1/1 0/0 0/0 .data            @14386 */
// SECTION_DATA static void* lit_14386[51] = {
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x9C),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0xF8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x154),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x18C),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x1A8),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x2CC),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x2E0),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x374),
//     (void*)(((char*)ECut_secondSkillExplain__10daNpc_Kn_cFi) + 0x2F4),
// };

// /* 80A430CC-80A43148 -00001 007C+00 1/1 0/0 0/0 .data            @14591 */
// SECTION_DATA static void* lit_14591[31] = {
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x90),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x130),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x210),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x234),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x268),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x28C),
//     (void*)(((char*)ECut_secondSkillGet__10daNpc_Kn_cFi) + 0x27C),
// };

// /* 80A43198-80A431A4 002464 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
// SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGSphFv,
// };

// /* 80A431A4-80A431C8 002470 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
// SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_ObjAcchFv,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80A3C174,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80A3C16C,
// };

// /* 80A431C8-80A431D4 002494 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
// SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_AcchCirFv,
// };

// /* 80A431D4-80A431E0 0024A0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
// SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10cCcD_GSttsFv,
// };

// /* 80A431E0-80A431EC 0024AC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
// SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__10dCcD_GSttsFv,
// };

// /* 80A431EC-80A431F8 0024B8 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
// SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
// };

// /* 80A431F8-80A43204 0024C4 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
// SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__18daNpcT_ActorMngr_cFv,
// };

// /* 80A43204-80A43210 0024D0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
// SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__15daNpcT_JntAnm_cFv,
// };

// /* 80A43210-80A4321C 0024DC 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
// SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGAabFv,
// };

// /* 80A4321C-80A43228 0024E8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
// SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGCylFv,
// };

// /* 80A43228-80A43234 0024F4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
// SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12J3DFrameCtrlFv,
// };

// /* 80A43234-80A43240 002500 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
// SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__13daNpcT_Path_cFv,
// };

/* 80A43240-80A432A8 00250C 0068+00 2/2 0/0 0/0 .data            __vt__10daNpc_Kn_c */
// SECTION_DATA extern void* __vt__10daNpc_Kn_c[26] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)ctrlBtk__10daNpc_Kn_cFv,
//     (void*)getFootLJointNo__10daNpc_Kn_cFv,
//     (void*)getFootRJointNo__10daNpc_Kn_cFv,
//     (void*)getEyeballLMaterialNo__10daNpc_Kn_cFv,
//     (void*)getEyeballRMaterialNo__10daNpc_Kn_cFv,
//     (void*)getEyeballMaterialNo__10daNpc_Kn_cFv,
//     (void*)ctrlJoint__10daNpc_Kn_cFP8J3DJointP8J3DModel,
//     (void*)afterJntAnm__10daNpc_Kn_cFi,
//     (void*)checkChangeEvt__10daNpc_Kn_cFv,
//     (void*)evtEndProc__10daNpc_Kn_cFv,
//     (void*)evtProc__10daNpc_Kn_cFv,
//     (void*)setFootPos__10daNpc_Kn_cFv,
//     (void*)setFootPrtcl__10daNpc_Kn_cFP4cXyzf,
//     (void*)checkCullDraw__10daNpc_Kn_cFv,
//     (void*)twilight__10daNpc_Kn_cFv,
//     (void*)chkXYItems__10daNpc_Kn_cFv,
//     (void*)evtOrder__10daNpc_Kn_cFv,
//     (void*)decTmr__10daNpc_Kn_cFv,
//     (void*)clrParam__10daNpc_Kn_cFv,
//     (void*)afterSetFaceMotionAnm__10daNpc_Kn_cFiifi,
//     (void*)getFaceMotionAnm__10daNpc_Kn_cF26daNpcT_faceMotionAnmData_c,
//     (void*)getMotionAnm__10daNpc_Kn_cF22daNpcT_motionAnmData_c,
//     (void*)__dt__10daNpc_Kn_cFv,
//     (void*)afterSetMotionAnm__10daNpc_Kn_cFiifi,
// };

/* 80A2AA0C-80A2AECC 0000EC 04C0+00 1/0 0/0 0/0 .text            __dt__10daNpc_Kn_cFv */
daNpc_Kn_c::~daNpc_Kn_c() {
    if (heap) {
        mpMorf[0]->stopZelAnime();
        mpMorf[1]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80A2AECC-80A2AF98 0005AC 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
// extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
// }

/* 80A2AF98-80A2AFD4 000678 003C+00 2/2 0/0 0/0 .text __dt__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv
 */
// daNpc_Kn_c::daNpc_Kn_prtclMngr_c::~daNpc_Kn_prtclMngr_c() {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 80A408C8-80A408F8 000000 0030+00 50/50 0/0 0/0 .rodata          mCcDObjData__10daNpc_Kn_c */
const u8 daNpc_Kn_c::mCcDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

// /* 80A408F8-80A40900 000030 0008+00 6/11 0/0 0/0 .rodata          @4095 */
// SECTION_RODATA static u8 const lit_4095[8] = {
//     0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A408F8, &lit_4095);

// /* 80A40900-80A40904 000038 0004+00 26/59 0/0 0/0 .rodata          @4204 */
// SECTION_RODATA static u8 const lit_4204[4] = {
//     0x00,
//     0x00,
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x80A40900, &lit_4204);

// /* 80A40904-80A40908 00003C 0004+00 2/2 0/0 0/0 .rodata          @4205 */
// SECTION_RODATA static f32 const lit_4205 = -1000000000.0f;
// COMPILER_STRIP_GATE(0x80A40904, &lit_4205);

// /* 80A40908-80A4090C 000040 0004+00 2/5 0/0 0/0 .rodata          @4326 */
// SECTION_RODATA static f32 const lit_4326 = 20.0f;
// COMPILER_STRIP_GATE(0x80A40908, &lit_4326);

// /* 80A4090C-80A40910 000044 0004+00 9/16 0/0 0/0 .rodata          @4327 */
// SECTION_RODATA static f32 const lit_4327 = 1.0f;
// COMPILER_STRIP_GATE(0x80A4090C, &lit_4327);

// /* 80A40910-80A40914 000048 0004+00 1/2 0/0 0/0 .rodata          @4561 */
// SECTION_RODATA static f32 const lit_4561 = 1.0f / 5.0f;
// COMPILER_STRIP_GATE(0x80A40910, &lit_4561);

// /* 80A40914-80A40918 00004C 0004+00 16/45 0/0 0/0 .rodata          @4613 */
// SECTION_RODATA static f32 const lit_4613 = -1.0f;
// COMPILER_STRIP_GATE(0x80A40914, &lit_4613);

// /* 80A40918-80A4091C 000050 0004+00 1/3 0/0 0/0 .rodata          @5160 */
// SECTION_RODATA static f32 const lit_5160 = 500.0f;
// COMPILER_STRIP_GATE(0x80A40918, &lit_5160);

// /* 80A4091C-80A40920 000054 0004+00 1/4 0/0 0/0 .rodata          @5255 */
// SECTION_RODATA static f32 const lit_5255 = 180.0f;
// COMPILER_STRIP_GATE(0x80A4091C, &lit_5255);

// /* 80A40920-80A40924 000058 0004+00 1/1 0/0 0/0 .rodata          @5256 */
// SECTION_RODATA static u32 const lit_5256 = 0x43360B61;
// COMPILER_STRIP_GATE(0x80A40920, &lit_5256);

// /* 80A40924-80A40928 00005C 0004+00 0/4 0/0 0/0 .rodata          @5390 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5390 = 30.0f;
// COMPILER_STRIP_GATE(0x80A40924, &lit_5390);
// #pragma pop

// /* 80A40928-80A4092C 000060 0004+00 0/1 0/0 0/0 .rodata          @5391 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5391 = 45.0f;
// COMPILER_STRIP_GATE(0x80A40928, &lit_5391);
// #pragma pop

// /* 80A4092C-80A40930 000064 0004+00 0/1 0/0 0/0 .rodata          @5392 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5392 = 60.0f;
// COMPILER_STRIP_GATE(0x80A4092C, &lit_5392);
// #pragma pop

// /* 80A40930-80A40934 000068 0004+00 0/1 0/0 0/0 .rodata          @5393 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5393 = 90.0f;
// COMPILER_STRIP_GATE(0x80A40930, &lit_5393);
// #pragma pop

// /* 80A40934-80A40938 00006C 0004+00 0/1 0/0 0/0 .rodata          @5394 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5394 = 110.0f;
// COMPILER_STRIP_GATE(0x80A40934, &lit_5394);
// #pragma pop

// /* 80A40938-80A4093C 000070 0004+00 5/6 0/0 0/0 .rodata          @5395 */
// SECTION_RODATA static f32 const lit_5395 = 135.0f;
// COMPILER_STRIP_GATE(0x80A40938, &lit_5395);

// /* 80A4093C-80A40940 000074 0004+00 1/2 0/0 0/0 .rodata          @5560 */
// SECTION_RODATA static u32 const lit_5560 = 0x3BB40000;
// COMPILER_STRIP_GATE(0x80A4093C, &lit_5560);

// /* 80A40940-80A40944 000078 0004+00 0/1 0/0 0/0 .rodata          @5561 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5561 = 8.0f;
// COMPILER_STRIP_GATE(0x80A40940, &lit_5561);
// #pragma pop

// /* 80A40944-80A40948 00007C 0004+00 0/1 0/0 0/0 .rodata          @5562 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5562 = 16384.0f;
// COMPILER_STRIP_GATE(0x80A40944, &lit_5562);
// #pragma pop

// /* 80A40948-80A40950 000080 0008+00 0/5 0/0 0/0 .rodata          @5687 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_5687[8] = {
//     0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40948, &lit_5687);
// #pragma pop

// /* 80A40950-80A40958 000088 0008+00 0/5 0/0 0/0 .rodata          @5688 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_5688[8] = {
//     0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40950, &lit_5688);
// #pragma pop

// /* 80A40958-80A40960 000090 0008+00 0/5 0/0 0/0 .rodata          @5689 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_5689[8] = {
//     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40958, &lit_5689);
// #pragma pop

// /* 80A40960-80A40964 000098 0004+00 0/0 0/0 0/0 .rodata          @5690 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5690 = 17.0f / 20.0f;
// COMPILER_STRIP_GATE(0x80A40960, &lit_5690);
// #pragma pop

// /* 80A40964-80A40968 00009C 0004+00 0/1 0/0 0/0 .rodata          @5710 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5710 = 6.0f;
// COMPILER_STRIP_GATE(0x80A40964, &lit_5710);
// #pragma pop

// /* 80A40968-80A4096C 0000A0 0004+00 0/0 0/0 0/0 .rodata          @5787 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5787 = 1000000000.0f;
// COMPILER_STRIP_GATE(0x80A40968, &lit_5787);
// #pragma pop

/* 80A4096C-80A40970 0000A4 0004+00 1/1 0/0 0/0 .rodata          id$5838 */
static u16 const id[2] = {
    0x8497,
    0x8498,
};

/* 80A40970-80A40A24 0000A8 00B4+00 8/29 0/0 0/0 .rodata          m__16daNpc_Kn_Param_c */
daNpc_Kn_Param_c::param const daNpc_Kn_Param_c::m = {
    50.0f,
    -5.0f,
    1.0f,
    1250.0f,
    245.0f,
    270.0f,
    0.0f,
    55.0f,
    0.0f,
    0.0f,
    40.0f,
    -40.0f,
    30.0f,
    -30.0f,
    60.0f,
    -60.0f,
    0.6f,
    12.0f,
    6,
    6,
    8,
    6,
    0,
    0,
    0,
    0,
    0x3c,
    8,
    0,
    0,
    0,
    4.0f,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    -1,
    255,
    300,
    90,
    0,
    100.0f,
    240.0f,
    1100.0f,
    27.0f,
    50.0f,
    16,
    512,
    120,
    90,
    2.0f
};

/* 80A40A24-80A40A44 00015C 0020+00 0/1 0/0 0/0 .rodata          heapSize$6094 */
static int const heapSize[8] = {
    0x4B10, 
    0x4B20, 
    0x4B10, 
    0x4B10,
    0x5A00, 
    0x4B10, 
    0x4B20, 
    0x0000,
};

// /* 80A40A44-80A40A48 00017C 0004+00 0/1 0/0 0/0 .rodata          @6139 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6139 = -300.0f;
// COMPILER_STRIP_GATE(0x80A40A44, &lit_6139);
// #pragma pop

// /* 80A40A48-80A40A4C 000180 0004+00 0/1 0/0 0/0 .rodata          @6140 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6140 = -50.0f;
// COMPILER_STRIP_GATE(0x80A40A48, &lit_6140);
// #pragma pop

// /* 80A40A4C-80A40A50 000184 0004+00 0/1 0/0 0/0 .rodata          @6141 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6141 = 300.0f;
// COMPILER_STRIP_GATE(0x80A40A4C, &lit_6141);
// #pragma pop

// /* 80A40A50-80A40A54 000188 0004+00 0/1 0/0 0/0 .rodata          @6142 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6142 = 450.0f;
// COMPILER_STRIP_GATE(0x80A40A50, &lit_6142);
// #pragma pop

/* 80A2AFD4-80A2B278 0006B4 02A4+00 1/1 0/0 0/0 .text            create__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::create() {
    cPhs__Step step;
    
    fopAcM_SetupActor2(this, daNpc_Kn_c, l_faceMotionAnmData, (daNpcT_motionAnmData_c*)l_motionAnmData, l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mDivideNo = getDivideNo();
    mFlowNodeNo = getFlowNodeNo();
    field_0xABD = 0;

    if (isDelete()) {
        return cPhs_ERROR_e;
    } else {
        step = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);

        if (step == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
                return cPhs_ERROR_e;
            } else {
                J3DModelData* model_data = mpMorf[0]->getModel()->getModelData();
                fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
                fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
                fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
                mCreature.init(&current.pos,&eyePos,3,1);
                dKy_tevstr_init(&tevStr, fopAcM_GetRoomNo(this), 0xFF);
                mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
                mAcch.CrrPos(dComIfG_Bgsp());
                mGndChk = mAcch.m_gnd;
                mGroundHeight = mAcch.GetGroundH();
                setEnvTevColor();
                setRoomNo();
                mCcStts.Init(daNpc_Kn_Param_c::m.mWeight,0, this);
                resetCol();
                reset();
                field_0xABC = 1;
                Execute();
                field_0xABC = 0;
            }
        }
    }

    return step;
}

/* 80A2B278-80A2B620 000958 03A8+00 1/1 0/0 0/0 .text            CreateHeap__10daNpc_Kn_cFv */
// NONMATCHING - Waiting to fix data before finishing
s32 daNpc_Kn_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreature, 0x80000, 0x11020284);

    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
        return 0;
    } else {
        J3DModel* model = mpMorf[0]->getModel();

        for (u16 i = 0; i < modelData->getJointNum(); i++) {
            modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
        }

        model->setUserArea((u32)this);
        model = mpMorf[0]->getModel();

        if (!mInvisModel.create(model, 1)) {
            return 0;
        } else {
            modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[1][1]], l_bmdData[1][0]));
            mpMorf[1] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreature, 0x80000, 0x11020284);

            if (mpMorf[1] == NULL || mpMorf[1]->getModel() == NULL) {
                mpMorf[1] = NULL;
            }

            if (mpMorf[1] == NULL) {
                if (mpMorf[0] != NULL) {
                    mpMorf[0]->stopZelAnime();
                }
                return 0;
            } else {
                J3DModel* model = mpMorf[1]->getModel();

                for (u16 i = 0; i < modelData->getJointNum(); i++) {
                    modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
                }

                model->setUserArea((u32)this);

                if (mType == 4) {
                    modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[2][1]], l_bmdData[2][0]));

                    if (modelData != NULL) {
                        mpModel = mDoExt_J3DModel__create(modelData,0x80000,0x11000084);
                        if (mpModel == NULL) {
                            return 0;
                        }                        
                    } else {
                        return 0;
                    }
                }

                if (setFaceMotionAnm(1, false)) {
                    if (mType == 4) {
                        J3DAnmTransform* anm_transform = static_cast<J3DAnmTransform*>(getTrnsfrmKeyAnmP(l_resNameList[l_bmdData[1][1]],l_bmdData[1][0]));

                        if (anm_transform != NULL && field_0x1588.init(anm_transform, 1, 2, 1.0f, 0, -1,false)) {
                            field_0x15a4 |= 0x41;
                            return 1;
                        }

                        if (anm_transform == NULL && l_podBckData[2] != -1) {
                            return 0;
                        }
                    }

                    if (setMotionAnm(0,0.0f,0)) {
                        return 1;
                    }
                }
            }
        }
    }

    return 0;
}

/* 80A2B620-80A2B654 000D00 0034+00 1/1 0/0 0/0 .text            Delete__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::Delete() {
    this->~daNpc_Kn_c();
    return 1;
}

/* 80A2B654-80A2B6B0 000D34 005C+00 2/2 0/0 0/0 .text            Execute__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::Execute() {
    s32 ret = execute();
    setPrtcl();
    calcMagicBallPos();
    setSwordChargePtcl();
    setSe();
    return ret;
}

/* 80A2B6B0-80A2B764 000D90 00B4+00 1/1 0/0 0/0 .text            Draw__10daNpc_Kn_cFv */
// NONMATCHING - missing param_c access
void daNpc_Kn_c::Draw() {
    if (mpMatAnm) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm);
    }

    _GXColorS10 local_28;
    local_28.r = 0;
    local_28.g = 0;
    local_28.b = 0;
    local_28.a = daNpc_Kn_Param_c::m.mAlpha;
    draw(0,0,1250.0f,&local_28,0.0f,1,0,0);
}

/* 80A2B764-80A2B784 000E44 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daNpc_Kn_cFP10fopAc_ac_c               */
int daNpc_Kn_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Kn_c*>(i_this)->CreateHeap();
}

/* 80A2B784-80A2B7DC 000E64 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi
 */
int daNpc_Kn_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Kn_c* _this = reinterpret_cast<daNpc_Kn_c*>(model->getUserArea());

        if (_this) {
            _this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A2B7DC-80A2B844 000EBC 0068+00 2/1 0/0 0/0 .text            getType__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 1:
        return 0;
    case 2:
        return 1;
    case 3:
        return 2;
    case 4:
        return 3;
    case 5:
        return 4;
    case 6:
        return 5;
    case 7:
        return 6;
    default:
        return 7;
    };
}

/* 80A2B844-80A2B850 000F24 000C+00 1/1 0/0 0/0 .text            getDivideNo__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getDivideNo() {
    return (fopAcM_GetParam(this) & 0xFF00) >> 8;
}

/* 80A2B850-80A2B86C 000F30 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::getFlowNodeNo() {
    u16 node_no = home.angle.x;

    if (node_no == 0xFFFF) {
        return 0xFFFFFFFF;
    }

    return node_no;
}

/* 80A2B86C-80A2B878 000F4C 000C+00 1/1 0/0 0/0 .text            getPath__10daNpc_Kn_cFv */
u8 daNpc_Kn_c::getPath() {
    return (fopAcM_GetParam(this) & 0xFF00) >> 8;
}

/* 80A2B878-80A2B91C 000F58 00A4+00 1/1 0/0 0/0 .text            isDelete__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::isDelete() {
    switch (mType) {
    case 0:
        if (daNpcT_chkEvtBit(0x153) ==  FALSE) {
            return 0;
        } 
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
        if (daNpcT_chkEvtBit(l_appearFlag[mType*1]) && !daNpcT_chkEvtBit(l_delFlag[mType])) {
            return 0;
        }
    }

    return 1;
}

/* 80A2B91C-80A2B9E0 000FFC 00C4+00 1/1 0/0 0/0 .text            resetCol__10daNpc_Kn_cFv */
void daNpc_Kn_c::resetCol() {

    mCylCc.Set(mCcDCyl);
    mCylCc.SetStts(&mCcStts);
    mCylCc.SetTgHitCallback(tgHitCallBack);

    for (int i = 0; i < 2; i++) {
        mSphCc[i].Set(mCcDSph);
        mSphCc[i].SetStts(&mCcStts);
        mSphCc[i].SetAtSe(dCcD_SE_HARD_BODY);
        mSphCc[i].SetAtSpl(dCcG_At_Spl_UNK_1);
        mSphCc[i].SetAtType(AT_TYPE_800);
        mSphCc[i].OnAtSPrmBit(0xc);
        mSphCc[i].OffAtNoConHit();
        mSphCc[i].OffCoSetBit();
    }
}

/* 80A2B9E0-80A2BC5C 0010C0 027C+00 1/1 0/0 0/0 .text            reset__10daNpc_Kn_cFv */
void daNpc_Kn_c::reset() {
    initialize();
    memset(&mpTeachAction, 0, (int)&field_0x1754 - (int)&mpTeachAction);

    if (mpMatAnm) {
        mpMatAnm->initialize();
    }

    if (getPath() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPath(), fopAcM_GetRoomNo(this), 0);
    }

    mStaffId = -1;
    setAngle(home.angle.y);
    field_0x15bd = 0;
    field_0x15be = 0;
    field_0x15cc = 0;
    field_0x15cd = 0;
    field_0x15ce = 0;
    field_0x15bc = 0;
    field_0x15af = 1;

    for (int i = 0; i < 3; i++) {
        mParticleMngr[i].mManager.init(&mAcch, 0.0f, 0.0f);
    }

    for (int i = 0; i < 3; i++) {
        field_0x15d4[i] = -1;
    }

    field_0x170c = 0;
    field_0x16f4.set(1.0f,1.0f,1.0f);
    field_0x170d = 1;
    field_0x170e = 0;

    field_0x15c0 = current.pos;

    if (mType <= 6 && (mDivideNo == 0 || mDivideNo > 2)) {
        field_0xe2c = 1;
        parentActorID = fopAcM_createChild(PROC_NPC_GWOLF, fopAcM_GetID(this), 0xffffff02, &current.pos, fopAcM_GetRoomNo(this), &current.angle, 0, -1, 0);
    }

    resetType();
}

/* 80A2BC5C-80A2BD30 00133C 00D4+00 2/1 0/0 0/0 .text            resetType__10daNpc_Kn_cFv */
void daNpc_Kn_c::resetType() {
    switch (mType) {
    case 0:
        mActionMode = 0;
        return;
    case 1:
        mActionMode = 4;
        return;
    case 2:
        mActionMode = 4;
        return;
    case 3:
        mActionMode = 4;
        return;
    case 4:
        mActionMode = 4;
        return;
    case 5:
        if (mDivideNo != 0 && mDivideNo <= 2) {
            mActionMode = 0xe;
            field_0x15af = 0;
        } else {
            mActionMode = 0x4;
        }
        break;
    case 6:
        if (mDivideNo != 0 && mDivideNo <= 2) {
            mActionMode = 0x14;
            field_0x15af = 0;
            return;
        }
        mActionMode = 4;
        return;
    default:
        mActionMode = -1;
    }
}

/* 80A2BD30-80A2BFB0 001410 0280+00 2/1 0/0 0/0 .text            setParam__10daNpc_Kn_cFv */
void daNpc_Kn_c::setParam() {
    selectAction();
    srchActors();

    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    f32 radius = daNpc_Kn_Param_c::m.mRadius;
    f32 height = daNpc_Kn_Param_c::m.mHeight;

    switch (mType) {
    case 0:
        attention_info.flags = setParamTeach01();
        mAcchCir.SetWallR(135.0f);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        break;
    case 1:
        if (mActionMode < 4) {
            attention_info.flags = setParamTeach01();
            mAcchCir.SetWallR(135.0f);
            mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        } else {
            attention_info.flags = setParamTeach02();
        }
        break;
    case 2:
        if (mActionMode < 8) {
            attention_info.flags = setParamTeach02();
        } else {
            attention_info.flags = setParamTeach03();
        }
        break;
    case 3:
        if (mActionMode < 9) {
            attention_info.flags = setParamTeach03();
        } else {
            attention_info.flags = setParamTeach04();
        }
        break;
    case 4:
        if (mActionMode < 12) {
            attention_info.flags = setParamTeach04();
        } else {
            attention_info.flags = setParamTeach05();
        }
        break;
    case 5:
        attention_info.flags = setParamTeach06();
        break;
    case 6:
        attention_info.flags = setParamTeach07();
        break;
    default:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        attention_info.flags = 10;
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.mRadius);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
    }

    scale.set(daNpc_Kn_Param_c::m.mScale * field_0x16f4.x, daNpc_Kn_Param_c::m.mScale * field_0x16f4.y, daNpc_Kn_Param_c::m.mScale * field_0x16f4.z);
    mCcStts.SetWeight(daNpc_Kn_Param_c::m.mWeight);
    field_0xe0c = daNpc_Kn_Param_c::m.field_0x14;
    mRadius = daNpc_Kn_Param_c::m.mRadius;
    gravity = daNpc_Kn_Param_c::m.mGravity;
    field_0xab4 = daNpc_Kn_Param_c::m.field_0x6C;
    field_0xab8 = daNpc_Kn_Param_c::m.field_0x44;
};

/* 80A2BFB0-80A2C044 001690 0094+00 1/1 0/0 0/0 .text            setParamTeach03__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach03() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    mAcchCir.SetWallR(135.0f);
    mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
    return 4;
}

/* 80A2C044-80A2C0FC 001724 00B8+00 1/1 0/0 0/0 .text            setParamTeach04__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach04() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    if (mActionMode == 10 || mActionMode == 11) {
        mAcchCir.SetWallR(135.0f);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        return 4;
    }

    return 0x200004;    
}

/* 80A2C0FC-80A2C190 0017DC 0094+00 3/3 0/0 0/0 .text            setParamTeach05__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach05() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
    attention_info.distances[2] = 0xe4;
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
    mAcchCir.SetWallR(135.0f);
    mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
    return 4;
}

/* 80A2C190-80A2C1B0 001870 0020+00 1/1 0/0 0/0 .text            setParamTeach06__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach06() {
    setParamTeach05();
}

/* 80A2C1B0-80A2C1D0 001890 0020+00 1/1 0/0 0/0 .text            setParamTeach07__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach07() {
    setParamTeach05();
}

/* 80A2C1D0-80A2C230 0018B0 0060+00 1/1 0/0 0/0 .text            setAfterTalkMotion__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setAfterTalkMotion() {
    mMotionSeqMngr1.getNo();
    mMotionSeqMngr1.setNo(1, -1.0, 0, 0);
}

/* 80A2C230-80A2C234 001910 0004+00 1/1 0/0 0/0 .text            srchActors__10daNpc_Kn_cFv */
void daNpc_Kn_c::srchActors() {}

/* 80A2C234-80A2C318 001914 00E4+00 1/1 0/0 0/0 .text            evtTalk__10daNpc_Kn_cFv */
bool daNpc_Kn_c::evtTalk() {
    if (chkAction(&daNpc_Kn_c::talk)) {
        (this->*mpActionFunc)(0);
    } else {
        if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
            setAction(&daNpc_Kn_c::talk);
            // return true;
        }
    }

    return true;
}

/* 80A2C318-80A2C3FC 0019F8 00E4+00 1/1 0/0 0/0 .text            evtCutProc__10daNpc_Kn_cFv */
bool daNpc_Kn_c::evtCutProc() {
    bool ret;
    if (mDivideNo != 0 && mDivideNo <= 2) {
        return false;
    } else {
        ret = false;
        int staff_id = dComIfGp_getEventManager().getMyStaffId("Kn", this, -1);
        if (staff_id != -1) {
            mStaffId = staff_id;
            int act_idx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList[0], 21, 0, 0);
            
            if ((this->*mCutList[act_idx])(mStaffId)) {
                dComIfGp_getEventManager().cutEnd(mStaffId);    
            }

            ret = true;
        }
    }
    
    return ret;
}

/* 80A2C3FC-80A2C484 001ADC 0088+00 1/1 0/0 0/0 .text            action__10daNpc_Kn_cFv */
void daNpc_Kn_c::action() {
    if (mpTeachAction) {
        if (mpActionFunc == mpTeachAction) {
            (this->*mpActionFunc)(0);
            
        } else {
            setAction(mpTeachAction);
        }
    }
}

/* 80A2C484-80A2C4FC 001B64 0078+00 1/1 0/0 0/0 .text            beforeMove__10daNpc_Kn_cFv */
void daNpc_Kn_c::beforeMove() {
    if (checkHide() || field_0xe32 != 0) {
        attention_info.flags = 0;
    }
}

/* 80A2C4FC-80A2C56C 001BDC 0070+00 1/1 0/0 0/0 .text            afterMoved__10daNpc_Kn_cFv */
void daNpc_Kn_c::afterMoved() {
    if (mGroundHeight != 1e+09f) {
        mTevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
        mTevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
    }
}

/* ############################################################################################## */
/* 80A40A54-80A40A58 00018C 0004+00 0/1 0/0 0/0 .rodata          @7002 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_7002 = 0x38C90FDB;
// COMPILER_STRIP_GATE(0x80A40A54, &lit_7002);
// #pragma pop

/* 80A2C56C-80A2C77C 001C4C 0210+00 1/1 0/0 0/0 .text            setAttnPos__10daNpc_Kn_cFv */
// NONMATCHING -- float literal and float loading issue
void daNpc_Kn_c::setAttnPos() {
    cXyz pos(30.0f, 0.0f, 0.0f);
    int head_joint_no = getHeadJointNo();
    int neck_joint_no = getNeckJointNo();
    int backbone_joint_no = getBackboneJointNo();
    J3DModel* model = mpMorf[0]->getModel();

    mJntAnm.setParam(this, model, &pos, backbone_joint_no, neck_joint_no, head_joint_no, 
        daNpc_Kn_Param_c::m.field_0x24, daNpc_Kn_Param_c::m.field_0x20, 
        daNpc_Kn_Param_c::m.field_0x2c, daNpc_Kn_Param_c::m.field_0x28, 
        daNpc_Kn_Param_c::m.field_0x34, daNpc_Kn_Param_c::m.field_0x30,
        daNpc_Kn_Param_c::m.field_0x3c, daNpc_Kn_Param_c::m.field_0x38,
        0.0f, daNpc_Kn_Param_c::m.field_0x40,
        0);
    
    mJntAnm.calcJntRad(0.2f, 1.0f,cM_s2rad(mTargetAngle.y - field_0xDB2.y));
    setMtx();
    model = mpMorf[1]->getModel();
    J3DModelData* modelData = model->getModelData();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mTargetAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)modelData);
    mpMorf[1]->modelCalc();
    mDoMtx_stack_c::copy(mpMorf[1]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&pos, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mTargetAngle.y, 1, 1.0f, 0);
    mDoMtx_stack_c::copy(mpMorf[1]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVecZero(&attention_info.position);
    attention_info.position.y += daNpc_Kn_Param_c::m.field_0x00;
}

/* 80A2C77C-80A2C984 001E5C 0208+00 2/1 0/0 0/0 .text            setCollision__10daNpc_Kn_cFv */
void daNpc_Kn_c::setCollision() {
    cXyz centerPos;

    if (field_0xe2c == 0 && field_0x15af != 0) {
        u32 param;

        if (field_0xABD == 1) {
            param = 0x69;
        } else {
            param = 0x79;
        }

        mCylCc.SetCoSPrm(param);

        switch (mType) {
        case 0:
            setCollisionTeach01();
            break;
        case 1:
            if (mActionMode < 4) {
                setCollisionTeach01();
            } else {
                setCollisionTeach02();
            }
            break;
        case 2:
            if (mActionMode < 8) {
                setCollisionTeach02();
            } else {
                setCollisionTeach03();
            }
            break;
        case 3:
            if (mActionMode < 9) {
                setCollisionTeach03();
            } else {
                setCollisionTeach04();
            }
            break;
        case 4:
            if (mActionMode < 12) {
                setCollisionTeach04();
            } else {
                setCollisionTeach05();
            }
            break;
        case 5:
            setCollisionTeach06();
            break;
        case 6:
            setCollisionTeach07();
        }

        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getBackboneJointNo()));
        mDoMtx_stack_c::multVecZero(&centerPos);
        centerPos.y = current.pos.y;
        f32 radius = daNpc_Kn_Param_c::m.mRadius;
        mCylCc.SetH(daNpc_Kn_Param_c::m.field_0x14);
        mCylCc.SetR(radius);
        mCylCc.SetC(centerPos);
        dComIfG_Ccsp()->Set(&mCylCc);
    }

    mCylCc.ClrCoHit();
    mCylCc.ClrTgHit();
    setCollisionSword();
}

// /* ############################################################################################## */
// /* 80A40A58-80A40A5C 000190 0004+00 0/1 0/0 0/0 .rodata          @7177 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7177 = 40.0f;
// COMPILER_STRIP_GATE(0x80A40A58, &lit_7177);
// #pragma pop

/* 80A2C984-80A2CB30 002064 01AC+00 1/1 0/0 0/0 .text            setCollisionSword__10daNpc_Kn_cFv
 */
 // NONMATCHING - regalloc
void daNpc_Kn_c::setCollisionSword() {
    
    if (mMotionSeqMngr2.getNo() == 0x19 && mMotionSeqMngr2.getStepNo() == 0 && mMotionSeqMngr2.checkEntryNewMotion() == 0) {
        field_0x15ce = 1;
    } else {
        field_0x15ce = 0;
    }

    for (s32 i = 0; i < 2; i++) {
        if (field_0xe2c == 0) {
            if (field_0x15ce && mpMorf[0]->getFrame() >= 30.0f && mpMorf[0]->getFrame() <= 40.0f) {
                    cXyz pos(l_swordOffset[i], 0.0f, 0.0f);
                    mSphCc[i].OnAtSetBit();
                    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0xd));
                    mDoMtx_stack_c::scaleM(scale);
                    mDoMtx_stack_c::multVec(&pos,&pos);
                    mSphCc[i].SetC(pos);
                    mSphCc[i].SetR(30.0f);
                    dComIfG_Ccsp()->Set(&mSphCc[i]);
            } else {
                mSphCc[i].OffAtSetBit();
            }
        }

        mSphCc[i].ClrAtHit();
    }
}

/* 80A2CB30-80A2CBEC 002210 00BC+00 9/9 0/0 0/0 .text            checkCollisionSword__10daNpc_Kn_cFv
 */
BOOL daNpc_Kn_c::checkCollisionSword() {
    int iVar2 = false;  // Status variable
    
    // Main collision check loop
    for (int iVar3 = 0; iVar3 < 2; iVar3++) {
        // Check shield hit
        
        if (mSphCc[iVar3].ChkAtShieldHit()) {
            iVar2 = 1;
            break;
        }
        
        // Check regular hit
        if (mSphCc[iVar3].ChkAtHit()) {
            iVar2 = 2;
        }
    }
    
    // If shield was hit, clear hit
    if (iVar2 == 1) {
        for (int iVar3 = 0; iVar3 < 2; iVar3++) {
            mSphCc[iVar3].ClrAtHit();
        }
    }
    
    return iVar2 == 2;
}

/* 80A2CBEC-80A2CC24 0022CC 0038+00 1/1 0/0 0/0 .text            setCollisionTeach03__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach03() {
    mCylCc.SetTgType(-1);
    mCylCc.SetTgSPrm(19);
    mCylCc.OffTgNoAtHitInfSet();
    mCylCc.OnTgNoConHit();
    mCylCc.OnCoSetBit();
}

/* 80A2CC24-80A2CD00 002304 00DC+00 1/1 0/0 0/0 .text            setCollisionTeach04__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach04() {
    switch (mActionMode) {
    case 9:
        if (dComIfGp_event_runCheck() && eventInfo.i_checkCommandDemoAccrpt()) {
            mCylCc.OffTgSetBit();
            mCylCc.OffCoSetBit();
        } else {
            mCylCc.SetTgType(-1);
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            mCylCc.SetTgSPrm(19);
            mCylCc.OnTgShield();
            mCylCc.OffTgNoAtHitInfSet();
            mCylCc.OnTgNoConHit();
        }
        break;
    case 11:
    case 10:
       mCylCc.SetTgType(-1);
       mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
       mCylCc.SetTgSPrm(19);
       mCylCc.OffTgShield();
       mCylCc.OffTgNoAtHitInfSet();
       mCylCc.OnTgNoConHit();
    }
}

/* 80A2CD00-80A2CD38 0023E0 0038+00 3/3 0/0 0/0 .text            setCollisionTeach05__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach05() {
    mCylCc.SetTgType(-1);
    mCylCc.SetTgSPrm(19);
    mCylCc.OffTgNoAtHitInfSet();
    mCylCc.OnTgNoConHit();
    mCylCc.OnCoSetBit();
}

/* 80A2CD38-80A2CD58 002418 0020+00 1/1 0/0 0/0 .text            setCollisionTeach06__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach06() {
    setCollisionTeach05();
}

/* 80A2CD58-80A2CD78 002438 0020+00 1/1 0/0 0/0 .text            setCollisionTeach07__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach07() {
    setCollisionTeach05();
}

/* 80A2CD78-80A2CD80 002458 0008+00 1/1 0/0 0/0 .text            drawDbgInfo__10daNpc_Kn_cFv */
int daNpc_Kn_c::drawDbgInfo() {
    return false;
}

/* 80A2CD80-80A2CF9C 002460 021C+00 1/1 0/0 0/0 .text            drawOtherMdl__10daNpc_Kn_cFv */
void daNpc_Kn_c::drawOtherMdl() {
    J3DModel* model = mpMorf[1]->getModel();

    mTevStr.TevColor.r = 0;
    mTevStr.TevColor.g = 0;
    mTevStr.TevColor.b = 0;
    mTevStr.TevColor.a = 0;

    if (field_0xde0 && mTimer) {
        f32 fval = (f32)mTimer / (f32)field_0xde0;

        if (cM3d_IsZero(fval) == 0) {
            mTevStr.TevColor.r = fval * 20.0f;
        }
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model->getModelData(), &tevStr);
    mpMorf[1]->entryDL();
    // where is the rodata access happening here?
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &current.pos, daNpc_Kn_Param_c::m.field_0x0c, 20.0f, current.pos.y, mGroundHeight, mGndChk, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (field_0x15cd && mpModel) {
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0xd));
        mDoMtx_stack_c::scaleM(scale);
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        g_env_light.setLightTevColorType_MAJI(mpModel,&tevStr);
        J3DModelData* modelData2 = mpModel->getModelData();

        if (field_0x15a4 & 0x40) {
            mBckAnm.entry(modelData2);
        }

        mDoExt_modelUpdateDL(mpModel);

        if (field_0x15a4 & 0x40) {
            mBckAnm.remove(modelData2);
        }

        dComIfGd_addRealShadow(mShadowKey,mpModel);
    }
    
}

/* 80A2CF9C-80A2D060 00267C 00C4+00 1/1 0/0 0/0 .text            drawGhost__10daNpc_Kn_cFv */
void daNpc_Kn_c::drawGhost() {
    J3DModel* model = mpMorf[0]->getModel();
    g_env_light.settingTevStruct(7, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    if (dKy_darkworld_check()) {
        dComIfGd_setListDark();
        mInvisModel.entryDL(0);
        dComIfGd_setList();
    } else {
        mInvisModel.entryDL(0);
    }
}

/* 80A2D060-80A2D198 002740 0138+00 1/0 0/0 0/0 .text afterSetMotionAnm__10daNpc_Kn_cFiifi */
bool daNpc_Kn_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    field_0x15a4 &= 0xfffffc30;
    J3DAnmTransform* anm_tranform = NULL;
    int i = 0;

    switch (param_0) {
    case 30:
        i = 1;
        break;
    case 31:
        i = 2;
        break;
    case 32:
        i = 3;
        break;
    case 33:
        i = 4;
        break;
    }

    if (l_podBckData[i*2] != -1) {
        anm_tranform = static_cast<J3DAnmTransform*>(getTrnsfrmKeyAnmP(l_resNameList[l_podBckData[1+i*2]], l_podBckData[i*2]));
    }

    if (anm_tranform && field_0x1588.init(anm_tranform, 1, param_1, 1.0f, 0, -1, true)) {
        field_0x15a4 |= 0x41;
        return true;
    } else {
        if (anm_tranform == NULL && l_podBckData[i*2] != -1) {
            return false;
        } else {
            return true;
        }
    }
}

/* 80A2D198-80A2D3A4 002878 020C+00 2/1 0/0 0/0 .text            selectAction__10daNpc_Kn_cFv */
int daNpc_Kn_c::selectAction() {
    mpTeachAction = NULL;

    if (daNpc_Kn_Param_c::m.field_0x6a != 0) {
        mpTeachAction = &daNpc_Kn_c::test;
    } else {
        switch (mType) {
        case 0:
            teach01_selectAction();
            break;
        case 1:
            if (mActionMode < 4) {
                teach01_selectAction();
            } else {
                teach02_selectAction();
            }
            break;
        case 2:
            if (mActionMode < 8) {
                teach02_selectAction();
            } else {
                teach03_selectAction();
            }
            break;
        case 3:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 9) {
                teach03_selectAction();
            } else {
                teach04_selectAction();
            }
            break;
        case 4:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 12) {
                teach04_selectAction();
            } else {
                teach05_selectAction();
            }
            break;
        case 5:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 13) {
                teach05_selectAction();
            } else {
                teach06_selectAction();
            }
            break;
        case 6:
            if (mActionMode == 4) {
                mpTeachAction = &daNpc_Kn_c::teach02_start;
            } else if (mActionMode < 19) {
                teach06_selectAction();
            } else {
                teach07_selectAction();
            }
            break;
        default:
            mpTeachAction = &daNpc_Kn_c::wait;
        }
    }

    return 1;
}

/* 80A2D3A4-80A2D3FC 002A84 0058+00 1/1 0/0 0/0 .text teach03_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach03_selectAction() {
    switch(mActionMode) {
    case 8:
        mpTeachAction = &daNpc_Kn_c::teach03_attackWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D3FC-80A2D4A0 002ADC 00A4+00 1/1 0/0 0/0 .text teach04_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach04_selectAction() {
    switch (mActionMode) {
    case 9:
        mpTeachAction = &daNpc_Kn_c::teach04_headBreakWait;
        return;
    case 10:
        mpTeachAction = &daNpc_Kn_c::teach04_attackWait;
        return;
    case 11: 
        mpTeachAction = &daNpc_Kn_c::teach04_finishWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D4A0-80A2D4F8 002B80 0058+00 1/1 0/0 0/0 .text teach05_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach05_selectAction() {
    switch (mActionMode) {
    case 12:
        mpTeachAction = &daNpc_Kn_c::teach05_surpriseAttackWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D4F8-80A2D600 002BD8 0108+00 1/1 0/0 0/0 .text teach06_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach06_selectAction() {
    switch (mActionMode) {
    case 13:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpedDivide;
        return;
    case 14:
        mpTeachAction = &daNpc_Kn_c::teach06_divideMove;
        return;
    case 15:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpWaitDivide;
        return;
    case 16:
        mpTeachAction = &daNpc_Kn_c::teach06_superJumpWait;
        return;
    case 17:
        mpTeachAction = &daNpc_Kn_c::teach06_waitDivide;
        return;
    case 18:
        mpTeachAction = &daNpc_Kn_c::teach06_warpDelete;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D600-80A2D708 002CE0 0108+00 1/1 0/0 0/0 .text teach07_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach07_selectAction() {
    switch (mActionMode) {
    case 19:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackedDivide;
        return;
    case 20:
        mpTeachAction = &daNpc_Kn_c::teach07_divideMove;
        return;
    case 21:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackWaitDivide;
        return;
    case 22:
        mpTeachAction = &daNpc_Kn_c::teach07_superTurnAttackWait;
        return;
    case 23:
        mpTeachAction = &daNpc_Kn_c::teach07_waitDivide;
        return;
    case 24:
        mpTeachAction = &daNpc_Kn_c::teach07_warpDelete;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
}

/* 80A2D708-80A2D734 002DE8 002C+00 1/1 0/0 0/0 .text
 * chkAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i              */
BOOL daNpc_Kn_c::chkAction(daNpc_Kn_c::actionFunc i_action) {
    return mpActionFunc == i_action;
}

/* 80A2D734-80A2D7DC 002E14 00A8+00 2/2 0/0 0/0 .text
 * setAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i              */
BOOL daNpc_Kn_c::setAction(daNpc_Kn_c::actionFunc i_action) {
    field_0xe2a = 3;
    if (mpActionFunc) {
        (this->*mpActionFunc)(0);
    }

    field_0xe2a = 0;
    mpActionFunc = i_action;

    if (mpActionFunc) {
        (this->*mpActionFunc)(0);
    }

    return TRUE;
}

/* 80A2D7DC-80A2D9C4 002EBC 01E8+00 8/0 0/0 0/0 .text            wait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::wait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        field_0xe2a = 2;
    case 2:
        if (field_0xABD == 0 && srchPlayerActor()) {
            mJntAnm.lookPlayer(0);
        } else {
            if (home.angle.y != mTargetAngle.y && step(home.angle.y, 1, 0x20, 0x14, 0) != 0) {
                field_0xe2a = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
            mJntAnm.lookNone(0);
        };
    case 3:
    default:
        return 1;
    }
}

/* 80A2D9C4-80A2DB94 0030A4 01D0+00 2/0 0/0 0/0 .text            talk__10daNpc_Kn_cFPv */
int daNpc_Kn_c::talk(void* param_0) {
    int bVar = 0;

    switch(field_0xe2a) {
    case 0:
    case 1:
        initTalk(mFlowNodeNo, 0);
        field_0xe2a = 2;
    case 2:
        if (field_0xABD == 0) {
            mJntAnm.lookPlayer(0);

            if (mTargetAngle.y == fopAcM_searchPlayerAngleY(this)) {
                bVar = 1;
            } else {
                if (step(fopAcM_searchPlayerAngleY(this), 1, 0x20, 0x14, 0) != 0) {
                    bVar = true;
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
            }
        } else {
            bVar = 1;
        }

        if (bVar != 0 && talkProc(0,0,NULL,0)) {
            mActorMngr1.entry(daPy_getPlayerActorClass());
            dComIfGp_event_reset();
            field_0xe2a = 3;
        };
    
    case 3:
    default:
        return 0;
    }
}

/* 80A2DB94-80A2DCB4 003274 0120+00 1/0 0/0 0/0 .text            test__10daNpc_Kn_cFPv */
int daNpc_Kn_c::test(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        speedF = 0.0f;
        speed.setall(0.0f);
        field_0xe2a = 2;
    case 2:
        mMotionSeqMngr1.setNo(daNpc_Kn_Param_c::m.field_0x64,-1.0f,0,0);
        mMotionSeqMngr2.setNo(daNpc_Kn_Param_c::m.field_0x66,-1.0f,0,0);
        mJntAnm.lookNone(0);
        attention_info.flags = 0;
    case 3:
    default:
        return 0;
    }
}

/* 80A2DCB4-80A2DD70 003394 00BC+00 7/7 0/0 0/0 .text            setSceneChange__10daNpc_Kn_cFi */
void daNpc_Kn_c::setSceneChange(int param_0) {
    for (int i = 2; i <= 7; i++) {
        if (daNpcT_chkTmpBit(i + 0x5a)) {
            dStage_changeScene(i,0.0,0,fopAcM_GetRoomNo(this),0,-1);

            if (param_0 == 0) return;

            daNpcT_offTmpBit(i + 0x5a);
            daNpcT_onEvtBit(i + 0x1ea);
            return;
        }
    }

    dStage_changeScene(1,0.0,0,fopAcM_GetRoomNo(this),0,-1);
}

/* ############################################################################################## */
/* 80A40AF8-80A40AF8 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_80A40D2D = "prm";
// #pragma pop

/* 80A2DD70-80A2DF84 003450 0214+00 1/0 0/0 0/0 .text ECut_noneEquipChangeTalk__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_noneEquipChangeTalk(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookPlayer(0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            field_0xdfe = 2;
            initTalk(mFlowNodeNo,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
        } else {
            ret = 1;
        }
        break;
    case 10:
        intP = talkProc(NULL,0,NULL,0);
        if (intP != 0) {
            ret = 1;
        }
        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2DF84-80A2E26C 003664 02E8+00 1/0 0/0 0/0 .text
 * ECut_noneEquipChangeTalkStand__10daNpc_Kn_cFi                */
int daNpc_Kn_c::ECut_noneEquipChangeTalkStand(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookNone(0);
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(22,-1.0f,0,0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            mJntAnm.lookPlayer(0);
            break;
        case 20:
            field_0xdfe = 2;
            initTalk(mFlowNodeNo,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (mMotionSeqMngr2.getNo() != 22) {
            break;
        }

        if (mMotionSeqMngr2.getStepNo() > 0) {
            ret = 1;
        }

        break;
    case 10:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            }
        } else {
            ret = 1;
        }
        break;
    case 20:
        intP = talkProc(NULL,0,NULL,0);
        if (intP != 0) {
            ret = 1;
        }
        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2E26C-80A2E528 00394C 02BC+00 1/0 0/0 0/0 .text ECut_largeDamageTalk__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_largeDamageTalk(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mJntAnm.lookPlayer(0);
            speed.zero();
            speedF = 0.0f;
            break;
        case 10:
            break;
        case 20:
            field_0xdfe = 2;
            initTalk(mFlowNodeNo,NULL);
            break;
        }
    }

    switch (intP) {
    case 0:
        if (!daPy_getPlayerActorClass()->checkPlayerFly()) {
           ret = 1;
        }

        daPy_getPlayerActorClass()->onLargeDamageUpStop();
        break;
    case 10:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                ret = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            } 

        } else {
            ret = 1;
        }

        daPy_getPlayerActorClass()->onLargeDamageUpStop();
        
        break;
    case 20:
        intP = talkProc(NULL,0,NULL,0);
        
        if (intP != 0) {
            ret = 1;
        }
        
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
        daPy_getPlayerActorClass()->onLargeDamageUpStop();

        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A2E528-80A2E664 003C08 013C+00 5/0 0/0 0/0 .text            teach02_start__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach02_start(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        mEvtIdx = 8;
        field_0xe39 = 1;
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
    case 3:
    default:
        return 1;
    }
}

/* 80A2E664-80A2EC04 003D44 05A0+00 1/0 0/0 0/0 .text            teach03_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach03_attackWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.mMinRndVal,daNpc_Kn_Param_c::m.mRndValRange);
        speedF = 0;
        speed.zero();
        field_0x15cc = 0;
        field_0xe2a = 2;
    case 2:
        mCcStts.Move();

        int cut_type = daPy_getPlayerActorClass()->getCutType();
        
        if (cut_type == daPy_py_c::CUT_TYPE_TWIRL) { // backslice
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
            mCylCc.OffTgShield();
        } else {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            mCylCc.OnTgShield();
        }

        if (mCylCc.ChkTgHit()) {
            if (cut_type == daPy_py_c::CUT_TYPE_TWIRL) {
                if (mType == 2) {
                        mEvtIdx = 14;
                    } else if (mType == 3) {
                        mEvtIdx = 15;
                    }
                    
                    s16 angle = fopAcM_searchPlayerAngleY(this) - current.angle.y;
                    int absAngle = angle < 0 ? -angle : angle;

                    if (absAngle < 0x4000) {
                        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                        mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);
                    
                        setAngle(fopAcM_searchPlayerAngleY(this));
                        speedF = -daNpc_Kn_Param_c::m.mSpeedF;
                        mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                    } else {
                        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                        mMotionSeqMngr2.setNo(0xe,-1.0f,0,0);
                    
                        setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
                        speedF = daNpc_Kn_Param_c::m.mSpeedF;
                        mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                    }

                    mJntAnm.lookNone(0);
                    speed.y = daNpc_Kn_Param_c::m.mSpeedY;
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD, 0x1f);
            } else {
            
                setAngle(fopAcM_searchPlayerAngleY(this));
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);

                if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                    mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK,0x28);
                } else {
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
                }
            }
        } else {

            if (daPy_getPlayerActorClass()->checkSideStep()) {
                field_0x15cc = 1;
            }

            if (!cLib_calcTimer(&field_0xdec) || checkCollisionSword()) {
                mTargetPos = current.pos;
                field_0x15bc = 0;

                BOOL truth = FALSE;
                
                if (dComIfGp_getAttention().LockonTruth()) {
                    truth = TRUE;
                }

                if (checkCollisionSword()) {
                    mEvtIdx = 4;
                } else {
                    mEvtIdx = 1;
                }

                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);

                if (field_0x15cc) {
                    mFlowNodeNo = 0x2e4;
                } else {
                    if (truth) {
                        mFlowNodeNo = 0x2e2;
                    } else {
                        mFlowNodeNo = 0x2e3;
                    }
                }
            } else {
                calcSwordAttackMove(0);
            }
        }
    case 3:
    default:
        return 1;
    }
}

/* 80A2EC04-80A2EF8C 0042E4 0388+00 1/0 0/0 0/0 .text            teach04_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach04_attackWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.mMinRndVal,daNpc_Kn_Param_c::m.mRndValRange); // fetch from data later
        speedF = 0;
        speed.zero();
        field_0xe2a = 2;
    case 2:
          calcSlip();
          mCcStts.Move();
          if (mCylCc.ChkTgShieldHit()) {
            u8 cut_type = daPy_getPlayerActorClass()->getCutType();

            if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                s16 angle = cLib_targetAngleY(&mCylCc.GetTgHitAc()->current.pos, &current.pos);
                cXyz pos(0.0f,0.0f, daNpc_Kn_Param_c::m.field_0x9c);
                mDoMtx_stack_c::YrotS(angle);
                mDoMtx_stack_c::multVec(&pos, &mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mCylCc.ClrTgHit();
                mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK, 0x28);
                mActionMode = 10;
                break;
            }
        }

        if (cLib_calcTimer(&field_0xdec) == 0 || checkCollisionSword()) {
            BOOL truth = FALSE;
            
            if (dComIfGp_getAttention().LockonTruth()) {
                truth = TRUE;
            }

            if (checkCollisionSword()) {
                mEvtIdx = 4;
            } else {
                mEvtIdx = 1;
            }

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,1,0);

            if (truth) {
                mFlowNodeNo = 0x2f3;
            } else {
                mFlowNodeNo = 0x2f4;
            }

        } else {
            if (mCylCc.ChkTgHit()) {
                if (mCylCc.GetTgHitObj()->ChkAtType(AT_TYPE_SHIELD_ATTACK) == 0) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD, 0x28);
                    break;
                }
            }
            calcSwordAttackMove(1);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* ############################################################################################## */
/* 80A40A5C-80A40A60 000194 0004+00 0/2 0/0 0/0 .rodata          @8270 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_8270 = 10.0f;
// COMPILER_STRIP_GATE(0x80A40A5C, &lit_8270);
// #pragma pop

// /* 80A40A60-80A40A64 000198 0004+00 0/1 0/0 0/0 .rodata          @8271 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_8271 = -10.0f;
// COMPILER_STRIP_GATE(0x80A40A60, &lit_8271);
// #pragma pop

/* 80A2EF8C-80A2F24C 00466C 02C0+00 1/0 0/0 0/0 .text teach04_headBreakWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach04_headBreakWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0xb,-1.0f,1,0);
        mJntAnm.lookNone(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
        onHeadLockFlg();
        field_0xe2a = 2;
    case 2:
        calcSlip();
        field_0x15c0.set(10.0f,-10.0f,0.0f);
        int head_joint_no = getHeadJointNo();
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(head_joint_no));
        mDoMtx_stack_c::multVec(&field_0x15c0, &field_0x15c0);
        setHeadLockPos(&field_0x15c0);
        mCcStts.Move();

        if (mCylCc.ChkTgHit() && daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
            s16 angle = cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &attention_info.position);
            cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x9c);
            mDoMtx_stack_c::YrotS(angle);
            mDoMtx_stack_c::multVec(&pos,&mTargetPos);
            mTargetPos += current.pos;
            field_0x15bc = 1;
            mCylCc.ClrTgHit();
            mCreature.startCollisionSE(Z2SE_HIT_SWORD, 0x1e);
            mActionMode = 11;
            break;
        } else {
            if (!cLib_calcTimer(&field_0xdec)) {
                mEvtIdx = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);
                mFlowNodeNo = 0x2f2;
                mActionMode = 9;
            }
        }
        break;
    case 3:
        offHeadLockFlg();
    default:
        break;
    }

    return 1;
}

/* 80A2F24C-80A2F600 00492C 03B4+00 1/0 0/0 0/0 .text            teach04_finishWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach04_finishWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0xb,-1.0f,1,0);
        mJntAnm.lookNone(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();

        if (mCylCc.ChkTgHit() && daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
            if (mType == 3) {
                mEvtIdx = 16;
            } else {
                mEvtIdx = 17;
            }

            cXyz* pos_p = mCylCc.GetTgHitPosP();
            s16 angle = (pos_p ? cLib_targetAngleY(&current.pos, pos_p) : fopAcM_searchPlayerAngleY(this)) - current.angle.y;
            int absAngle = angle < 0 ? -angle : angle;
            

            if (absAngle < 0x4000) {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);

                setAngle(fopAcM_searchPlayerAngleY(this));
                speedF = -daNpc_Kn_Param_c::m.mSpeedF;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            } else {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0xe,-1.0f,0,0);
                setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
                speedF = daNpc_Kn_Param_c::m.mSpeedF;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            }
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
            mJntAnm.lookNone(0);
            speed.y = daNpc_Kn_Param_c::m.mSpeedY;
            break;
        } else {
            if (!cLib_calcTimer(&field_0xdec)) {
                mEvtIdx = 1;
                mFlowNodeNo = 0x306;
                mActionMode = 9;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);
            }
        }
    case 3:
    default:
        break;
    }

    return 1;
        
}

/* 80A2F600-80A2FBB4 004CE0 05B4+00 1/0 0/0 0/0 .text teach05_surpriseAttackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach05_surpriseAttackWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.mMinRndVal,daNpc_Kn_Param_c::m.mRndValRange);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();

        int cut_type = daPy_getPlayerActorClass()->getCutType();

        if (cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B || cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A) {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
            mCylCc.OffTgShield();
        } else {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            mCylCc.OnTgShield();
        }

        if (mCylCc.ChkTgHit()){
            if (cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B || cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A) {
                if (mType == 4) {
                    mEvtIdx = 0x13;
                } else {
                    mEvtIdx = 0x14;
                }

                s16 angle = fopAcM_searchPlayerAngleY(this) - current.angle.y;
                int absAngle = angle < 0 ? -angle : angle;

                if (absAngle < 0x4000) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);
                    setAngle(fopAcM_searchPlayerAngleY(this));

                    speedF = -daNpc_Kn_Param_c::m.mSpeedF;
                    mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                } else {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(14,-1.0f,0,0);
                    setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);

                    speedF = daNpc_Kn_Param_c::m.mSpeedF;
                    mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
                }

                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
                mJntAnm.lookNone(0);
                speed.y = daNpc_Kn_Param_c::m.mSpeedY;
            } else {
                setAngle(fopAcM_searchPlayerAngleY(this));
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);
            
                if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                    mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK,0x28);
                } else {
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
                }
                break;
            }

        } else {
            if (daPy_getPlayerActorClass()->checkSideStep()) {
                field_0x15cc = 1;
            }

            calcSwordAttackMove(1);

            if (cLib_calcTimer(&field_0xdec) == 0 || checkCollisionSword()) {
                mTargetPos = current.pos;
                field_0x15bc = 0;
            
                BOOL check = FALSE;
                
                if (dComIfGp_getAttention().LockonTruth()) {
                    check = TRUE;
                }

                if (checkCollisionSword()) {
                    mEvtIdx = 4;
                } else {
                    mEvtIdx = 1;
                }

                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);
            
                if (check != FALSE) {
                    mFlowNodeNo = 0x2ec;
                    
                } else {
                    if (!daPy_getPlayerActorClass()->checkSideStep()) {
                        mFlowNodeNo = 0x2ea;
                    } else {
                        mFlowNodeNo = 0x2eb;
                    }
                }
            }
        }

        
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A2FBB4-80A2FC14 005294 0060+00 1/1 0/0 0/0 .text            s_sub6__FPvPv */
static void* s_sub6(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(18);
    }
    
    return 0;
}

/* 80A2FC14-80A2FC80 0052F4 006C+00 2/2 0/0 0/0 .text            s_subEnd6__FPvPv */
static void* s_subEnd6(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1 && static_cast<daNpc_Kn_c*>(i_this)->getActionMode() != 17) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(17);
    }
    
    return 0;
}

/* 80A2FC80-80A30398 005360 0718+00 1/0 0/0 0/0 .text teach06_superJumpWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach06_superJumpWait(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x90;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.mMinRndVal,daNpc_Kn_Param_c::m.mRndValRange);
        speedF = 0.0f;
        speed.zero();
        field_0x15bd = 0;
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();

        int cut_type = daPy_getPlayerActorClass()->getCutType();

        if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_INIT || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH) {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
            mCylCc.OffTgShield();
        } else {
            mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
            mCylCc.OnTgShield();
        }

        if (mCylCc.ChkTgHit()) {
            if (field_0x15bd == 2 && cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH) {
                mEvtIdx = 22;
                fpcM_Search(s_subEnd6,this);
            } else {
                calcSwordAttackMove(1);
                if (field_0x15bd == 2 || cLib_calcTimer(&field_0xdec) && checkCollisionSword() && field_0x15bd != 1) {
                    if (daPy_getPlayerActorClass()->checkDamageImpact()) {
                        BOOL check = FALSE;
                        
                        if (dComIfGp_getAttention().LockonTruth()) {
                            check = TRUE;
                        }

                        if (daPy_getPlayerActorClass()->checkSideStep()) {
                            mFlowNodeNo = 0x2fb;
                            
                        } else {
                            if (check == FALSE) {
                                mFlowNodeNo = 0x2fc;
                            } else {
                                mFlowNodeNo = 0x2fd;
                            }
                        }
                    }
                } else {
                    mTargetPos = current.pos;
                    field_0x15bc = 9;

                    BOOL check = FALSE;
                        
                    if (dComIfGp_getAttention().LockonTruth()) {
                        check = TRUE;
                    }

                    if (checkCollisionSword() && field_0x15bd == 1) {
                        mEvtIdx = 4;
                    } else {
                        mEvtIdx = 1;
                    }

                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,1,0);
                    fpcM_Search(s_sub6,this);
                }
            }
        } else if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH) {
            if (mType == 5) {
                mEvtIdx = 0x15;
            } else {
                mEvtIdx = 0x17;
            }

            s16 angle = fopAcM_searchPlayerAngleY(this) - current.angle.y;
            int absAngle = angle < 0 ? -angle : angle;
            

            if (absAngle < 0x4000) {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);

                setAngle(fopAcM_searchPlayerAngleY(this));
                speedF = -daNpc_Kn_Param_c::m.mSpeedF;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            } else {
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0xe,-1.0f,0,0);
                setAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
                speedF = daNpc_Kn_Param_c::m.mSpeedF;
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
            }
            mJntAnm.lookNone(0);
            speed.y = daNpc_Kn_Param_c::m.mSpeedY;
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
            break;

        } else if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_INIT) {
            fopAc_ac_c* hit_ac = mCylCc.GetTgHitAc();
            s16 angle = cLib_targetAngleY(&hit_ac->current.pos, &current.pos);
            cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x64);
            mDoMtx_stack_c::YrotS(angle);
            mDoMtx_stack_c::multVec(&pos, );
            }
                iVar2 = ::dCcD_GObjInf::GetTgHitAc((dCcD_GObjInf *)(this + 0x122c));
    if (iVar2 == 0) {
      uVar4 = JUTAssertion::getSDevice();
      JUTAssertion::showAssert(uVar4,d_a_npc_kn::@126361,0x10be,d_a_npc_kn::@127478);
      m_Do_printf::OSPanic(d_a_npc_kn::@126361,0x10be,&d_a_npc_kn::@124961);
    }
    sVar8 = SComponentD::(iVar2 + 0x4d4,this + 0x4d4);
    ::cXyz::cXyz(&cStack_2c,0.0,0.0,*(float *)(*(int *)(this + 0x1228) + 0x9c));
    mDoMtx_stack_c::YrotS(sVar8);
    mDoMtx_stack_c::multVec(&cStack_2c,(cXyz *)(this + 0x1600));
    ::cXyz::operator_+=((cXyz *)(this + 0x1600),(Vec *)(this + 0x4d4));
    this[0x160c] = (daNpc_Kn_c)0x1;
    (**(code **)(*(int *)(this + 0x1268) + 0x24))();
    ::daNpcT_MotionSeqMngr_c::setNo((daNpcT_MotionSeqMngr_c *)(this + 0xbd4),1,-1.0,0,0);
    ::daNpcT_MotionSeqMngr_c::setNo((daNpcT_MotionSeqMngr_c *)(this + 0xbf8),0x1e,-1.0,1,0);
    (**(code **)(*(int *)(this + 0x5cc) + 0x2c))(this + 0x5cc,0x40000,0x1e);
        } else {

        }
        
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A30398-80A305A8 005A78 0210+00 1/0 0/0 0/0 .text            teach06_divideMove__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_divideMove(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        cXyz pos(0.0f,0.0f,180.0f);

        s16 angle;
        if (mDivideNo == 1) {
            angle = home.angle.y - 0x1555;
        } else {
            angle = home.angle.y + 0x1555;
        }

        mDoMtx_stack_c::transS(home.pos);
        mDoMtx_stack_c::YrotM(angle);
        mDoMtx_stack_c::multVec(&pos,&pos);
        mTargetPos = pos;
        field_0xe2a = 2;
    case 2:
        cXyz pos2(current.pos);
        cLib_chasePos(&pos2, mTargetPos, 6.0f);
        setPos(pos2);
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        if (!dComIfGp_event_runCheck()) {
            mActionMode = 15;
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A305A8-80A30708 005C88 0160+00 1/0 0/0 0/0 .text            teach06_waitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_waitDivide(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
        break;
    case 2:
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        if (!dComIfGp_event_runCheck()) {
            mActionMode = 15;
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A30708-80A30D44 005DE8 063C+00 1/0 0/0 0/0 .text teach06_superJumpWaitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_superJumpWaitDivide(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40A64-80A40A68 00019C 0004+00 0/3 0/0 0/0 .rodata          @9120 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9120 = 13.0f;
// COMPILER_STRIP_GATE(0x80A40A64, &lit_9120);
// #pragma pop

// /* 80A40A68-80A40A6C 0001A0 0004+00 0/3 0/0 0/0 .rodata          @9121 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9121 = 14.0f;
// COMPILER_STRIP_GATE(0x80A40A68, &lit_9121);
// #pragma pop

/* 80A30D44-80A30EDC 006424 0198+00 1/0 0/0 0/0 .text teach06_superJumpedDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_superJumpedDivide(void* param_0) {
    // NONMATCHING
}

/* 80A30EDC-80A30F5C 0065BC 0080+00 1/0 0/0 0/0 .text            teach06_warpDelete__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach06_warpDelete(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        field_0x170c = 1;
        field_0xe2a = 2;
    case 2:
        field_0x170c = 1;
        ctrlWarp();
        if (this->field_0x170c == 2) {
            fopAcM_delete(this);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A30F5C-80A30FBC 00663C 0060+00 1/1 0/0 0/0 .text            s_sub7__FPvPv */
static void* s_sub7(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(24);
    }
    
    return 0;
}

/* 80A30FBC-80A31028 00669C 006C+00 2/2 0/0 0/0 .text            s_subEnd7__FPvPv */
static void* s_subEnd7(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_NPC_KN && i_this != param_1 && static_cast<daNpc_Kn_c*>(i_this)->getActionMode() != 23) {
        static_cast<daNpc_Kn_c*>(i_this)->setActionMode(23);
    }
    
    return 0;
}

/* 80A31028-80A315D0 006708 05A8+00 1/0 0/0 0/0 .text teach07_superTurnAttackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_superTurnAttackWait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40A6C-80A40A70 0001A4 0004+00 0/2 0/0 0/0 .rodata          @9374 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9374 = 375.0f;
// COMPILER_STRIP_GATE(0x80A40A6C, &lit_9374);
// #pragma pop

/* 80A315D0-80A317F8 006CB0 0228+00 1/0 0/0 0/0 .text            teach07_divideMove__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_divideMove(void* param_0) {
    // NONMATCHING
}

/* 80A317F8-80A31958 006ED8 0160+00 1/0 0/0 0/0 .text            teach07_waitDivide__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_waitDivide(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
        break;
    case 2:
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        if (!dComIfGp_event_runCheck()) {
            mActionMode = 21;
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A31958-80A31E24 007038 04CC+00 1/0 0/0 0/0 .text
 * teach07_superTurnAttackWaitDivide__10daNpc_Kn_cFPv           */
int daNpc_Kn_c::teach07_superTurnAttackWaitDivide(void* param_0) {
    // NONMATCHING
}

/* 80A31E24-80A31FBC 007504 0198+00 1/0 0/0 0/0 .text
 * teach07_superTurnAttackedDivide__10daNpc_Kn_cFPv             */
int daNpc_Kn_c::teach07_superTurnAttackedDivide(void* param_0) {
    // NONMATCHING
}

/* 80A31FBC-80A3203C 00769C 0080+00 1/0 0/0 0/0 .text            teach07_warpDelete__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach07_warpDelete(void* param_0) {
    switch (field_0xe2a) {
    case 0:
    case 1:
        field_0x170c = 1;
        field_0xe2a = 2;
    case 2:
        field_0x170c = 1;
        ctrlWarp();
        if (this->field_0x170c == 2) {
            fopAcM_delete(this);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A3203C-80A324C4 00771C 0488+00 3/0 0/0 0/0 .text            ECut_secondEncount__10daNpc_Kn_cFi
 */
 // NONMATCHING - need to finish second switch under case 10
int daNpc_Kn_c::ECut_secondEncount(int i_idx) {
   dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();
    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,0,0);
            break;
        case 2:
            daNpc_GWolf_c* pGWolf = (daNpc_GWolf_c*)fpcM_SearchByID(parentActorID);

            if (fopAcM_GetName(pGWolf) == PROC_NPC_GWOLF) {
                pGWolf->setMotion(4,-1.0f,FALSE);
            }

            break;
        case 5:
            daNpc_GWolf_c* pProc = (daNpc_GWolf_c*)fpcM_SearchByID(parentActorID);

            if (pProc) {
                fopAcM_delete(pProc);
            };

            field_0xe2c = 0;
            break;
        case 10:
            switch (mType) {
            case 1:
                initTalk(0x2bd,0);
                break;
            case 2:
                initTalk(0x2de,0);
                break;
            case 3:
                initTalk(0x2ee,0);
                break;
            case 4:
                initTalk(0x2e6,0);
                break;
            case 5:
                initTalk(0x2f7,0);
                break;
            case 6:
                initTalk(0x2ff,0);
                break;
            }

            break;
        case 20:
            field_0xdec = 30;
            break;
        }
    }

    switch (intP) {
    case 0:
        ret = 1;
        break;
    case 2:
        ret = 1;
        break;
    case 5:
        ret = 1;
        break;
    case 10:
        if (talkProc(0,0,NULL,0)) {
            if (mFlow.getChoiceNo() == 0) {
                int local_38 = 0;

                switch (mType) {
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
                }
            } else {
                break;
            }
        }

        break;
    case 20:
        if (cLib_calcTimer(&field_0xdec) == 0) {
            ret = 1;

            switch (mType) {
            case 1:
                mActionMode = 2;
                break;
            case 2:
                mActionMode = 5;
                break;
            case 3:
                mActionMode = 8;
                break;
            case 4:
                mActionMode = 9;
                break;
            case 5:
                mActionMode = 12;
                break;
            case 6:
                mActionMode = 13;
                break;
            }
        }

        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A324C4-80A32D30 007BA4 086C+00 3/0 0/0 0/0 .text ECut_thirdSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_thirdSkillExplain(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();

    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
            case 0:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(28,-1.0f,1,0);
                mJntAnm.lookPlayer(0);
                field_0xdec = 0x1e;
                break;
            case 10:
                field_0xdfe = 2;
                initTalk(0x2df,0);
                break;
            case 20:
                Z2GetAudioMgr()->bgmStart(Z2BGM_OUGI_TRAINING,0,0);
            case 65:
                setPos(home.pos);
                setAngle(home.angle.y);
                cXyz pos(0.0f,0.0f,375.0f);
                mDoMtx_stack_c::transS(home.pos);
                mDoMtx_stack_c::YrotM(home.angle.y);
                mDoMtx_stack_c::multVec(&pos,&pos);
                cXyz pos2 = pos;
                pos2.y += 500.0f;
                
                if (fopAcM_gc_c::gndCheck(&pos2)) {
                    pos.y = fopAcM_gc_c::getGroundY();
                }

                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos,fopAcM_searchPlayerAngleY(this) + 0x8000,0);
                daPy_getPlayerActorClass()->onTraningCutBack();
                break;
            case 30:
                initTalk(0x2e0,0);
                break;
            case 40:
                daNpcT_offTmpBit(0xb);
                initTalk(0x2e1,0);
                break;
            case 50:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(17,-1.0f,1,0);
                break;
            case 55:
                field_0xdec = 0x1e;
                break;
            case 60:
                initTalk(0x2e1,0);
                break;
            case 70:
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(24,-1.0f,1,0);
                mJntAnm.lookNone(0);
                break;
        }
    }

    switch (intP) {
        case 0:
            if (cLib_calcTimer(&field_0xdec) == 0) {
                if (mTargetAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    ret = 1;
                    mTargetPos = current.pos;
                    field_0x15bc = 0;
                    speedF = 0.0f;
                    speed.zero();
                } else {
                
                if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
                }
                
            } else {
                calcSlip();
            }

            break;
        case 6:
            if (mTargetAngle.y == fopAcM_searchPlayerAngleY(this)) {
                ret = 1;
            } else {
                if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0) != 0) {
                    ret = 1;
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0,-1.0f,0,0);
                }
                break;
            }
            ret = 1;
            break;
        case 10:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 20:
        case 65:
            ret = 1;
            setPos(home.pos);
            setAngle(home.angle.y);
            cXyz pos(0.0f,0.0f,375.0f);
            mDoMtx_stack_c::transS(home.pos);
            mDoMtx_stack_c::YrotM(home.angle.y);
            mDoMtx_stack_c::multVec(&pos,&pos);
            cXyz pos2(pos);
            pos2.y += 500.0f;
            
            if (fopAcM_gc_c::gndCheck(&pos2)) {
                pos.y = fopAcM_gc_c::getGroundY();
            }

            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos,fopAcM_searchPlayerAngleY(this) + 0x8000,0);
            // daPy_getPlayerActorClass()->onTraningCutBack();
            break;
        case 30:
        case 40:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 50:
            if (mMotionSeqMngr2.getNo() == 17) {
                if (mMotionSeqMngr2.getStepNo() >= 3) {
                    ret = 1;
                } else {
                    cXyz pos(0.0f,0.0f,0.0f);
                    s16 local_98 = 0;

                    if (mMotionSeqMngr2.getStepNo() == 0 && !(mpMorf[0]->getFrame() <= 4) && mpMorf[0]->getFrame() <= 14) {
                        pos.set(13.0f,0.0f,20.0f);

                        local_98 = cM_deg2s(-3.8f);
                    }

                    if (mMotionSeqMngr2.getStepNo() == 1) {
                        if (mpMorf[0]->getFrame() <= 10) {
                            pos.set(-13.66f, 0.0f, 19.05f);
                            local_98 = cM_deg2s(-6.76f);
                        } else {
                            pos.set(3.77f, 0.0f, 19.05f);
                            local_98 = cM_deg2s(-6.76f);
                        }
                    }

                    mDoMtx_stack_c::YrotS(home.angle.y);
                    mDoMtx_stack_c::multVec(&pos,&pos);
                    pos += current.pos;
                    setPos(pos);
                    setAngle(current.angle.y + local_98);
                    
                }
            }
            break;
        case 60:
            if (talkProc(0,0,NULL,0) != 0) {
                ret = 1;
            }
            break;
        case 70:
            if (mMotionSeqMngr2.getNo() == 0x18 && mMotionSeqMngr2.getStepNo() > 0) {
                ret = 1;
                mActionMode = 8;
            }
            break;
        default:
            ret = 1;
    }

    return ret;

}

/* 80A32D30-80A33358 008410 0628+00 3/0 0/0 0/0 .text            ECut_thirdSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_thirdSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A33358-80A33D80 008A38 0A28+00 3/0 0/0 0/0 .text ECut_fourthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_fourthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A33D80-80A343A8 009460 0628+00 3/0 0/0 0/0 .text            ECut_fourthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_fourthSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A343A8-80A34DB8 009A88 0A10+00 3/0 0/0 0/0 .text ECut_fifthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_fifthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A34DB8-80A353E0 00A498 0628+00 3/0 0/0 0/0 .text            ECut_fifthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_fifthSkillGet(int i_idx) {
    // NONMATCHING
}

/* 80A353E0-80A35D88 00AAC0 09A8+00 3/0 0/0 0/0 .text ECut_sixthSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_sixthSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A35D88-80A363C0 00B468 0638+00 3/0 0/0 0/0 .text            ECut_sixthSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_sixthSkillGet(int i_idx) {
    dEvent_manager_c* event_manager =  &dComIfGp_getEventManager();

    int ret = 0;
    int intP = -1;

    int* intP2 = dComIfGp_evmng_getMyIntegerP(i_idx,"prm");

    if (intP2) {
        intP = *intP2;
    }

    if (event_manager->getIsAddvance(i_idx)) {
        switch (intP) {
        case 0:
            daNpcT_offTmpBit(0xb);
            daNpcT_offTmpBit(0xc);
            break;
        case 4:
            mMotionSeqMngr1.setNo(1,-1.0f,0,0);

            if (mMotionSeqMngr2.getNo() == 0x13) {
                mMotionSeqMngr2.setNo(22,-1.0f,0,0);
            } else {
                mMotionSeqMngr2.setNo(16,-1.0f,0,0);
            }
            fpcM_Search(s_subEnd6,this);
            break;
        case 6:
            mJntAnm.lookNone(0);
            break;
        case 10:
            field_0xdfe = 2;
            cXyz pos(0.0f,0.0f,1000.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(cLib_targetAngleY(&current.pos,&home.pos));
            mDoMtx_stack_c::multVec(&pos,&pos);
            cXyz pos2 = pos;
            pos2.y += 500.0f;

            if (fopAcM_gc_c::gndCheck(&pos2)) {
                pos.y = fopAcM_gc_c::getGroundY();
            }

            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos, (s16)cLib_targetAngleY(&home.pos, &current.pos), 0);
            initTalk(0x2fe,NULL);
            break;
        case 12:
            setAngle(fopAcM_searchPlayerAngleY(this));
            break;
        case 15:
            Z2GetAudioMgr()->bgmStreamPrepare(0x2000038);
            Z2GetAudioMgr()->bgmStreamPlay();
            break;
        case 20:
            initTalk(0x2fe,0);
            break;
        case 30:
            initTalk(0x2fe,0);
        }
    }

    switch (intP) {
    case 0:
        if (speed.y <= 0.0f && mAcch.ChkGroundHit()) {
            speedF = 0.0f;
            speed.zero();

            if (mMotionSeqMngr2.getNo() == 0x12) {
                mMotionSeqMngr2.setNo(0x13, -1.0f, 0, 0);
            } else {
                mMotionSeqMngr2.setNo(15, -1.0f, 0, 0);
            }

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            setLandingPrtcl();
            ret = 1;
        }
        break;
    case 2:
        if (mMotionSeqMngr2.getNo() == 0x13 || mMotionSeqMngr2.getNo() == 15) {
            if (mMotionSeqMngr2.getStepNo() > 0) {
                ret = 1;
            } else {
                if (mpMorf[0]->getFrame() >= 13.0f && mpMorf[0]->getFrame() < 14.0f) {
                    setLandingPrtcl();
                }
            }
        }
        break;
    case 4:
        if (mMotionSeqMngr2.getNo() == 22 || mMotionSeqMngr2.getNo() == 16) {
            if (mMotionSeqMngr2.getStepNo() > 0) {
                ret = 1;
            }
        }
        break;
    case 6:
        if (mTargetAngle.y != fopAcM_searchPlayerAngleY(this)) {
            if (step(fopAcM_searchPlayerAngleY(this),1,0x20,0x14,0)) {
                ret = 1;
                mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
                mMotionSeqMngr2.setNo(0, -1.0f, 0, 0);
            }
            
        } else {
            ret = 1;
        }
        break;
    case 10:
        if (talkProc(NULL,0,NULL,0)) {
            ret = 1;

            if (field_0x170e == 0) {
                field_0x170e = 1;
                Z2GetAudioMgr()->bgmStop(0x32,0);
            } 
        }
        break;
    case 20:
        if (talkProc(NULL, 0, NULL, 0)) {
            ret = 1;
        }
        cLib_addCalcAngleS2(&mTargetAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        break;
    case 30:
        if (talkProc(NULL, 0, NULL, 0)) {
            setSceneChange(1);
        }
        cLib_addCalcAngleS2(&mTargetAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
        setAngle(mTargetAngle.y);
        break;
    default:
        ret = 1;
    }

    return ret;
}

/* 80A363C0-80A36C20 00BAA0 0860+00 3/0 0/0 0/0 .text ECut_seventhSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_seventhSkillExplain(int i_idx) {
    // NONMATCHING
}

/* 80A36C20-80A372D0 00C300 06B0+00 3/0 0/0 0/0 .text ECut_seventhSkillGet__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_seventhSkillGet(int i_idx) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40A70-80A40A74 0001A8 0004+00 0/0 0/0 0/0 .rodata          @9980 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_9980 = 4.0f;
// COMPILER_STRIP_GATE(0x80A40A70, &lit_9980);
// #pragma pop

// /* 80A40A74-80A40A78 0001AC 0004+00 0/0 0/0 0/0 .rodata          @9981 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_9981 = 0x407147AE;
// COMPILER_STRIP_GATE(0x80A40A74, &lit_9981);
// #pragma pop

// /* 80A40A78-80A40A7C 0001B0 0004+00 0/0 0/0 0/0 .rodata          @9982 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_9982 = 0x41986666;
// COMPILER_STRIP_GATE(0x80A40A78, &lit_9982);
// #pragma pop

// /* 80A40A7C-80A40A80 0001B4 0004+00 0/0 0/0 0/0 .rodata          @9983 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_9983 = 0xC15A8F5C;
// COMPILER_STRIP_GATE(0x80A40A7C, &lit_9983);
// #pragma pop

// /* 80A40A80-80A40A84 0001B8 0004+00 0/0 0/0 0/0 .rodata          @10161 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_10161 = 700.0f;
// COMPILER_STRIP_GATE(0x80A40A80, &lit_10161);
// #pragma pop

// /* 80A40A84-80A40A88 0001BC 0004+00 0/0 0/0 0/0 .rodata          @10494 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_10494 = 594.0f;
// COMPILER_STRIP_GATE(0x80A40A84, &lit_10494);
// #pragma pop

// /* 80A40A88-80A40A8C 0001C0 0004+00 0/0 0/0 0/0 .rodata          @11020 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_11020 = 165.0f;
// COMPILER_STRIP_GATE(0x80A40A88, &lit_11020);
// #pragma pop

// /* 80A40A8C-80A40A90 0001C4 0004+00 0/0 0/0 0/0 .rodata          @11021 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_11021 = 9.0f;
// COMPILER_STRIP_GATE(0x80A40A8C, &lit_11021);
// #pragma pop

// /* 80A40A90-80A40A94 0001C8 0004+00 0/0 0/0 0/0 .rodata          @11516 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_11516 = 0x430AA3D7;
// COMPILER_STRIP_GATE(0x80A40A90, &lit_11516);
// #pragma pop

// /* 80A40A94-80A40A98 0001CC 0004+00 0/1 0/0 0/0 .rodata          @11694 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_11694 = 1000.0f;
// COMPILER_STRIP_GATE(0x80A40A94, &lit_11694);
// #pragma pop

// /* 80A40A98-80A40AA0 0001D0 0008+00 0/0 0/0 0/0 .rodata          @11976 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_11976[8] = {
//     0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80A40A98, &lit_11976);
// #pragma pop

// /* 80A40AA0-80A40AA4 0001D8 0004+00 0/2 0/0 0/0 .rodata          @12218 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12218 = 2.0f;
// COMPILER_STRIP_GATE(0x80A40AA0, &lit_12218);
// #pragma pop

/* 80A372D0-80A37430 00C9B0 0160+00 1/1 0/0 0/0 .text            setPrtcl__10daNpc_Kn_cFv */
int daNpc_Kn_c::setPrtcl() {
    for (int i = 0; i < 3; i++) {
        BOOL check = i == 2 ? TRUE : FALSE;
        s8 room_no = fopAcM_GetRoomNo(this);

        csXyz* angle = mParticleMngr[i].mpModel == 1 ? &mParticleMngr[i].mAngle : NULL;
        cXyz* pos = mParticleMngr[i].mpModel == 1 ? &mParticleMngr[i].mPos : NULL;

        
        mParticleMngr[i].mManager.setEffectCenter(&tevStr, &mParticleMngr[i].mPos, check, 0, pos, angle, 0, room_no, 0.0f, speedF);

        if (mParticleMngr[i].mpModel) {
            JPABaseEmitter* emitter = mParticleMngr[i].mManager.getCenterEmitter(0,0);

            if (emitter) {
                switch (i) {
                case 0:
                case 1:
                    mParticleMngr[i].mScale.set(1.0f,1.0f,1.0f);
                    emitter->setAwayFromCenterSpeed(0.0f);
                    emitter->setRandomDirectionSpeed(0.0f);
                    emitter->setSpread(1.0f);
                    emitter->setGlobalParticleScale(mParticleMngr[i].mScale);
                    break;
                case 2:
                    mParticleMngr[i].mScale.set(2.0f,2.0f,2.0f);
                    break;
                }
            }
        }

        mParticleMngr[i].mpModel = NULL;
    }

    return 1;
}

/* 80A37430-80A37558 00CB10 0128+00 1/1 0/0 0/0 .text            setSlipPrtcl__10daNpc_Kn_cFv */
int daNpc_Kn_c::setSlipPrtcl() {
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x1f));
    mDoMtx_stack_c::multVecZero(&mParticleMngr[0].mPos);
    mParticleMngr[0].mPos.y -= 20.0f;
    mParticleMngr[0].mAngle = current.angle;
    mParticleMngr[0].mAngle.y -= 0x8000;
    mParticleMngr[0].mpModel = true;
    
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0x1b));
    mDoMtx_stack_c::multVecZero(&mParticleMngr[1].mPos);
    mParticleMngr[1].mPos.y -= 20.0f;
    mParticleMngr[1].mAngle = current.angle;
    mParticleMngr[1].mAngle.y -= 0x8000;
    mParticleMngr[1].mpModel = true;

    return 1;
}

/* 80A37558-80A37598 00CC38 0040+00 12/12 0/0 0/0 .text            setLandingPrtcl__10daNpc_Kn_cFv
 */
int daNpc_Kn_c::setLandingPrtcl() {
    mParticleMngr[2].mPos = current.pos;
    mParticleMngr[2].mAngle = mTargetAngle;
    mParticleMngr[2].mpModel = true;
    return 1;
}

/* ############################################################################################## */
/* 80A40AA4-80A40AA8 0001DC 0004+00 1/2 0/0 0/0 .rodata          @12304 */
// SECTION_RODATA static f32 const lit_12304 = 150.0f;
// COMPILER_STRIP_GATE(0x80A40AA4, &lit_12304);

/* 80A37598-80A37670 00CC78 00D8+00 1/1 0/0 0/0 .text            calcMagicBallPos__10daNpc_Kn_cFv */
void daNpc_Kn_c::calcMagicBallPos() {
    fopAc_ac_c* actor;

    if (mType == 1 && fopAcM_SearchByID(parentActorID, &actor) && actor && fopAcM_GetName(actor) == PROC_KN_BULLET && ((daObjKnBullet_c*)actor)->getActionMode() == 0) {
        cXyz pos(150.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(13));
        mDoMtx_stack_c::multVec(&pos,&pos);
        actor->current.pos = pos;
    }
}

/* ############################################################################################## */
/* 80A40AA8-80A40AAC 0001E0 0004+00 0/1 0/0 0/0 .rodata          @12497 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12497 = 17.0f;
// COMPILER_STRIP_GATE(0x80A40AA8, &lit_12497);
// #pragma pop

// /* 80A40AAC-80A40AB0 0001E4 0004+00 0/1 0/0 0/0 .rodata          @12498 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12498 = 37.0f;
// COMPILER_STRIP_GATE(0x80A40AAC, &lit_12498);
// #pragma pop

// /* 80A40AB0-80A40AB4 0001E8 0004+00 0/1 0/0 0/0 .rodata          @12499 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_12499 = 0x3FC2DABA;
// COMPILER_STRIP_GATE(0x80A40AB0, &lit_12499);
// #pragma pop

// /* 80A40AB4-80A40AB8 0001EC 0004+00 0/1 0/0 0/0 .rodata          @12500 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12500 = 13.0f / 10.0f;
// COMPILER_STRIP_GATE(0x80A40AB4, &lit_12500);
// #pragma pop

// /* 80A40AB8-80A40ABC 0001F0 0004+00 0/1 0/0 0/0 .rodata          @12501 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_12501 = 0x42B0CCCC;
// COMPILER_STRIP_GATE(0x80A40AB8, &lit_12501);
// #pragma pop

// /* 80A40ABC-80A40AC0 0001F4 0004+00 0/1 0/0 0/0 .rodata          @12502 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12502 = 31.0f;
// COMPILER_STRIP_GATE(0x80A40ABC, &lit_12502);
// #pragma pop

// /* 80A40AC0-80A40AC4 0001F8 0004+00 0/1 0/0 0/0 .rodata          @12503 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12503 = 52.0f / 5.0f;
// COMPILER_STRIP_GATE(0x80A40AC0, &lit_12503);
// #pragma pop

// /* 80A432C0-80A432C4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
// static u8 lit_1109[1 + 3 /* padding */];

// /* 80A432C4-80A432C8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
// #pragma push
// #pragma force_active on
// static u8 lit_1107[1 + 3 /* padding */];
// #pragma pop

// /* 80A432C8-80A432CC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
// #pragma push
// #pragma force_active on
// static u8 lit_1105[1 + 3 /* padding */];
// #pragma pop

// /* 80A432CC-80A432D0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
// #pragma push
// #pragma force_active on
// static u8 lit_1104[1 + 3 /* padding */];
// #pragma pop

// /* 80A432D0-80A432D4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
// #pragma push
// #pragma force_active on
// static u8 lit_1099[1 + 3 /* padding */];
// #pragma pop

// /* 80A432D4-80A432D8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
// #pragma push
// #pragma force_active on
// static u8 lit_1097[1 + 3 /* padding */];
// #pragma pop

// /* 80A432D8-80A432DC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
// #pragma push
// #pragma force_active on
// static u8 lit_1095[1 + 3 /* padding */];
// #pragma pop

// /* 80A432DC-80A432E0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
// #pragma push
// #pragma force_active on
// static u8 lit_1094[1 + 3 /* padding */];
// #pragma pop

// /* 80A432E0-80A432E4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
// #pragma push
// #pragma force_active on
// static u8 lit_1057[1 + 3 /* padding */];
// #pragma pop

// /* 80A432E4-80A432E8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
// #pragma push
// #pragma force_active on
// static u8 lit_1055[1 + 3 /* padding */];
// #pragma pop

// /* 80A432E8-80A432EC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
// #pragma push
// #pragma force_active on
// static u8 lit_1053[1 + 3 /* padding */];
// #pragma pop

// /* 80A432EC-80A432F0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
// #pragma push
// #pragma force_active on
// static u8 lit_1052[1 + 3 /* padding */];
// #pragma pop

// /* 80A432F0-80A432F4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
// #pragma push
// #pragma force_active on
// static u8 lit_1014[1 + 3 /* padding */];
// #pragma pop

// /* 80A432F4-80A432F8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
// #pragma push
// #pragma force_active on
// static u8 lit_1012[1 + 3 /* padding */];
// #pragma pop

// /* 80A432F8-80A432FC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
// #pragma push
// #pragma force_active on
// static u8 lit_1010[1 + 3 /* padding */];
// #pragma pop

// /* 80A432FC-80A43300 -00001 0004+00 0/0 0/0 0/0 .bss             None */
// #pragma push
// #pragma force_active on
// /* 80A432FC 0001+01 data_80A432FC @1009 */
// /* 80A432FE 0002+00 data_80A432FE mSrchName__10daNpc_Kn_c */
// static u8 struct_80A432FC[4];
// #pragma pop

/* 80A43300-80A433C8 000048 00C8+00 0/0 0/0 0/0 .bss             mFindActorPtrs__10daNpc_Kn_c */
fopAc_ac_c* daNpc_Kn_c::mFindActorPtrs[50];

/* 80A433C8-80A433CC 000110 0004+00 0/0 0/0 0/0 .bss             mFindCount__10daNpc_Kn_c */
u8 daNpc_Kn_c::mFindCount[4];

/* 80A433CC-80A433D8 000114 000C+00 1/1 0/0 0/0 .bss             @5904 */
// static u8 lit_5904[12];

/* 80A433D8-80A433DC 000120 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A433DC-80A433EC 000124 000C+04 0/1 0/0 0/0 .bss             @12316 */
// #pragma push
// #pragma force_active on
// static u8 lit_12316[12 + 4 /* padding */];
// #pragma pop

static bool lit_12316;

/* 80A433EC-80A433F8 000134 000C+00 0/1 0/0 0/0 .bss             lightAParticleScale$12315 */
static cXyz lightAParticleScale;

static bool lit_12320;

/* 80A433F8-80A43408 000140 000C+04 0/1 0/0 0/0 .bss             @12320 */
// #pragma push
// #pragma force_active on
// static u8 lit_12320[12 + 4 /* padding */];
// #pragma pop

/* 80A43408-80A43414 000150 000C+00 0/1 0/0 0/0 .bss             lightALocalTrans$12319 */
static cXyz lightALocalTrans;

/* 80A37670-80A37B08 00CD50 0498+00 1/1 0/0 0/0 .text            setSwordChargePtcl__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setSwordChargePtcl() {
    if (mMotionSeqMngr2.getNo() == 10 && mMotionSeqMngr2.getStepNo() == 0 && !mMotionSeqMngr2.checkEntryNewMotion()) {
        f32 frame = mpMorf[0]->getFrame();
        if (frame >= 17.0f || frame < 37.0f) {
            if (!lit_12316) {
                lightAParticleScale = cXyz(1.5223,1.3f,1.3f);
                lit_12316 = true;
            }

            if (!lit_12320) {
                lightALocalTrans = cXyz(88.399994f, 0.0f, 0.0f);
                lit_12320 = true;
            }

            field_0x15d4[0] = dComIfGp_particle_set(field_0x15d4[0],0x368, &current.pos, &tevStr);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x15d4[0]);

            if (emitter) {
                emitter->setGlobalRTMatrix(mpMorf[0]->getModel()->getAnmMtx(0xd));
                emitter->setGlobalParticleScale(lightAParticleScale); // may need a tvec cast here
                emitter->setLocalTranslation(lightALocalTrans);
            }

            cXyz pos1;
            cXyz pos2;

            mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(0xd));
            mDoMtx_stack_c::multVecSR(&pos1.BaseX,&pos1);
            mDoMtx_stack_c::multVecZero(&pos2);

            f32 frame_copy = frame;
            if (frame >= 31.0f)
                frame_copy = 31.0f;

            pos1 *= (frame_copy + 1.0f) - 17.0f;
            pos1 += 10.4;
            pos1 += pos2;

            field_0x15d4[1] = dComIfGp_particle_set(field_0x15d4[1],0x36a, &pos1, &tevStr);

            if (frame >= 31.0f) {
                field_0x15d4[2] = dComIfGp_particle_set(field_0x15d4[2],0x36b, &pos1, &tevStr);
            }
            
        } else {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x15d4[0]);

            if (emitter) {
                if (emitter->getGlobalAlpha() < 0x12) {
                    emitter->setGlobalAlpha(0);
                } else {
                    field_0x15d4[0] = dComIfGp_particle_set(field_0x15d4[0],0x368, &current.pos, &tevStr);
                    emitter = dComIfGp_particle_getEmitter(field_0x15d4[0]);

                    if (emitter) {
                        emitter->setGlobalRTMatrix(mpMorf[0]->getModel()->getAnmMtx(0xd));
                        emitter->setGlobalAlpha(emitter->getGlobalAlpha() - 0x11);

                    }
                }
            }

            emitter = dComIfGp_particle_getEmitter(field_0x15d4[1]);

            if (emitter) {
                emitter->stopDrawParticle();
            }

            emitter = dComIfGp_particle_getEmitter(field_0x15d4[2]);

            if (emitter) {
                emitter->stopDrawParticle();
            }
        }
    }
}

/* ############################################################################################## */
/* 80A40AC4-80A40AC8 0001FC 0004+00 0/1 0/0 0/0 .rodata          @12556 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12556 = 0.25f;
// COMPILER_STRIP_GATE(0x80A40AC4, &lit_12556);
// #pragma pop

// /* 80A40AC8-80A40ACC 000200 0004+00 0/1 0/0 0/0 .rodata          @12557 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12557 = 25.0f;
// COMPILER_STRIP_GATE(0x80A40AC8, &lit_12557);
// #pragma pop

// /* 80A40ACC-80A40AD0 000204 0004+00 0/1 0/0 0/0 .rodata          @12558 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12558 = 5.0f;
// COMPILER_STRIP_GATE(0x80A40ACC, &lit_12558);
// #pragma pop

/* 80A37B08-80A37D20 00D1E8 0218+00 13/13 0/0 0/0 .text            calcSlip__10daNpc_Kn_cFv */
void daNpc_Kn_c::calcSlip() {
    if (field_0x15bc) {
        if (mAcch.ChkWallHit()) {
            mTargetPos = current.pos;
            field_0x15bc = 0;
            speed.x = 0.0f;
            speed.z = 0.0f;
            
        } else {
            cXyz pos(current.pos);

            cLib_addCalcPos2(&pos, mTargetPos, 0.25f, 20.0f);
            pos -= current.pos;
            speed.x = pos.x;
            speed.z = pos.z;
            f32 absxz = (mTargetPos - current.pos).absXZ();

            if (absxz > 25.0f) {
                setSlipPrtcl();
            } else {
                if (absxz < 5.0f) {
                    field_0x15bc = 0;
                    speed.x = 0.0f;
                    speed.z = 0.0f;
                }
            }
        }
    }
}

/* ############################################################################################## */
/* 80A40AD0-80A40AD4 000208 0004+00 0/1 0/0 0/0 .rodata          @12656 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12656 = 250.0f;
// COMPILER_STRIP_GATE(0x80A40AD0, &lit_12656);
// #pragma pop

/* 80A37D20-80A3805C 00D400 033C+00 9/9 0/0 0/0 .text            calcSwordAttackMove__10daNpc_Kn_cFi
 */
void daNpc_Kn_c::calcSwordAttackMove(int param_0) {
    // NONMATCHING
}

/* 80A3805C-80A38450 00D73C 03F4+00 2/1 0/0 0/0 .text            setSe__10daNpc_Kn_cFv */
// NONMATCHING - case 12 is wrong
void daNpc_Kn_c::setSe() {
    if (field_0xe2c == 0) {
        switch (field_0x15A8) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 25:
        case 26:
        case 27:
        case 29:
        case 30:
        case 31:
        case 33:
            mCreature.startCreatureVoiceLevel(Z2SE_KN_V_BREATH,-1);
            break;
        case 4:
            if (mpMorf[0]->getFrame() >= 4.0f && mpMorf[0]->getFrame() < 5.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_ATTACK,-1);
            }
            break;
        case 5:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_GUARD,-1);
            }
            break;
        case 6:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_M,-1);
            }
            break;
        case 7:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_S,-1);
            }
            break;
        case 12:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_BALL_READY,-1);
            } else if (mpMorf[1]->getFrame() >= 27.0f && mpMorf[1]->getFrame() < 28.0f) {
                    if (mActionMode == 7) {
                        mCreature.startCreatureVoice(Z2SE_KN_V_BALL_READY,-1);
                    } else {
                        mCreature.startCreatureVoice(Z2SE_KN_V_BALL_THROW,-1);
                    }
            }
            break;
        case 16:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L,-1);
            }
            break;
        case 20:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_SOTOMOGIRI,-1);
            }
            break;
        case 28:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_KABUTOWARI,-1);
            }
            break;
        case 32:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_IAIGIRI,-1);
            }
            break;
        case 34:
            if (mpMorf[0]->getFrame() >= 1.0f && mpMorf[0]->getFrame() < 2.0f) {
                mCreature.startCreatureVoice(Z2SE_KN_V_JUMP_ATTACK_L,-1);
            }
            break;
        }
    }
}

/* 80A38450-80A38470 00DB30 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Create__FPv */
static void daNpc_Kn_Create(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->create();
}

/* 80A38470-80A38490 00DB50 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Delete__FPv */
static void daNpc_Kn_Delete(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Delete();
}

/* 80A38490-80A384B0 00DB70 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Execute__FPv */
static void daNpc_Kn_Execute(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Execute();
}

/* 80A384B0-80A384D0 00DB90 0020+00 1/0 0/0 0/0 .text            daNpc_Kn_Draw__FPv */
static void daNpc_Kn_Draw(void* i_actor) {
    static_cast<daNpc_Kn_c*>(i_actor)->Draw();
}

/* 80A384D0-80A384D8 00DBB0 0008+00 1/0 0/0 0/0 .text            daNpc_Kn_IsDelete__FPv */
static bool daNpc_Kn_IsDelete(void* param_0) {
    return true;
}

/* 80A384D8-80A38520 00DBB8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
// extern "C" void __dt__10cCcD_GSttsFv() {
//     // NONMATCHING
// }

/* 80A38520-80A38550 00DC00 0030+00 1/1 0/0 0/0 .text
 * tgHitCallBack__10daNpc_Kn_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
void daNpc_Kn_c::tgHitCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                   dCcD_GObjInf* param_3) {
    u8 cut_type = 0;

    if (param_2) {
        if (fopAcM_GetProfName(param_2) == 0xfd) {
            cut_type = ((daPy_py_c*)param_2)->getCutType();
        } else {
            cut_type = 1;
        }
    }

    ((daNpc_Kn_c*)param_0)->setCutType(cut_type);
}

/* 80A38550-80A3858C 00DC30 003C+00 1/1 0/0 0/0 .text            getTrnsfrmAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTrnsfrmAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A3858C-80A385C8 00DC6C 003C+00 3/3 0/0 0/0 .text getTrnsfrmKeyAnmP__10daNpc_Kn_cFPCci */
void* daNpc_Kn_c::getTrnsfrmKeyAnmP(char const* i_arcName, int i_resIdx) {
   return dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A385C8-80A38604 00DCA8 003C+00 1/1 0/0 0/0 .text            getTexPtrnAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTexPtrnAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A38604-80A38640 00DCE4 003C+00 1/1 0/0 0/0 .text            getTexSRTKeyAnmP__10daNpc_Kn_cFPCci
 */
void daNpc_Kn_c::getTexSRTKeyAnmP(char const* i_arcName, int i_resIdx) {
    dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80A38640-80A38684 00DD20 0044+00 1/1 0/0 0/0 .text
 * setBckAnm__10daNpc_Kn_cFP15J3DAnmTransformfiiib              */
void daNpc_Kn_c::setBckAnm(J3DAnmTransform* i_bck, f32 i_rate, int i_attribute, int i_startF,
                               int i_endF, bool i_modify) {
    mBckAnm.init(i_bck, 1, i_attribute, i_rate, i_startF, i_endF, i_modify); 
}

/* 80A38684-80A3877C 00DD64 00F8+00 1/1 0/0 0/0 .text
 * setMcaMorfAnm__10daNpc_Kn_cFP18J3DAnmTransformKeyffiii       */
 // NONMATCHING - no clue what's going on here
int daNpc_Kn_c::setMcaMorfAnm(J3DAnmTransformKey* i_anm, f32 i_rate, f32 i_morf,
                                   int i_attribute, int i_start, int i_end) {

    J3DAnmTransformKey* anm = (J3DAnmTransformKey*)i_anm;
    f32 rate = (f32)i_rate;
    f32 morf = (f32)i_morf;
    int attribute = (int)i_attribute; 
    int start = (int)i_start;
    int end = (int)i_end;

    mpMorf[0]->setAnm(anm, attribute, morf, rate, start, end);

    if (mpMorf[1]) {
        mpMorf[1]->setAnm(anm, attribute, morf, rate, start, end);
    }

    return 1;
}

/* 80A3877C-80A387BC 00DE5C 0040+00 1/1 0/0 0/0 .text
 * setBtpAnm__10daNpc_Kn_cFP16J3DAnmTexPatternP12J3DModelDatafi */
void daNpc_Kn_c::setBtpAnm(J3DAnmTexPattern* i_btp, J3DModelData* i_modelData, f32 i_rate,
                               int i_attribute) {
    mBtpAnm.init(i_modelData, i_btp, 1, i_attribute, i_rate, 0, -1);
}

/* 80A387BC-80A387FC 00DE9C 0040+00 1/1 0/0 0/0 .text
 * setBtkAnm__10daNpc_Kn_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi */
void daNpc_Kn_c::setBtkAnm(J3DAnmTextureSRTKey* i_btk, J3DModelData* i_modelData, f32 i_rate,
                               int i_attribute) {
    mBtkAnm.init(i_modelData, i_btk, 1, i_attribute, i_rate, 0, -1);
}

/* 80A387FC-80A388B0 00DEDC 00B4+00 1/1 0/0 0/0 .text            loadRes__10daNpc_Kn_cFPCScPPCc */
// NONMATCHING - extra instructions + regalloc. may actually be a for loop
cPhs__Step daNpc_Kn_c::loadRes(s8 const* param_0, char const** param_1) {
    int i = 0;
    int j = 0;

    while (true) {
        if (param_0[j] == -1) {
            if (i == j) {
                return cPhs_COMPLEATE_e;
            }
        }

        cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase[j], param_1[param_0[j]]);
        if (phase == 4) {
            i++;
        }

        if (phase == 5 || phase == 3){
            return cPhs_ERROR_e;
        }

        i++;
        j++;

        if (i >= 8) {
            return cPhs_INIT_e;
        }
    }
}

/* 80A388B0-80A38930 00DF90 0080+00 1/1 0/0 0/0 .text            deleteRes__10daNpc_Kn_cFPCScPPCc */
void daNpc_Kn_c::deleteRes(s8 const* param_0, char const** param_1) {
    for (int i = 0; i < 8 && param_0[i] != -1; i++ ) {
        dComIfG_resDelete(&mPhase[i], param_1[param_0[i]]);
    }
}

/* 80A38930-80A38BB8 00E010 0288+00 1/1 0/0 0/0 .text            execute__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::execute() {
    setParam();

    if (!evtEndProc()) {
        action();
    }

    beforeMove();

    if (speedF != 0.0f) {
        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    } else {
        fopAcM_posMove(this, mCcStts.GetCCMoveP());
    }

    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    field_0xdf0 = fopAcM_getPolygonAngle(mGndChk,current.angle.y);
    mGroundHeight = mAcch.GetGroundH();
    afterMoved();

    if (mGroundHeight !=  -1e+09f) {
        setEnvTevColor();
        setRoomNo();
    }

    if (mMotionSeqMngr1.checkEntryNewMotion()) {
        ctrlFaceMotion();
    }

    if (mMotionSeqMngr2.checkEntryNewMotion()) {
        ctrlMotion();
    }

    playAllAnm();
    ctrlFaceMotion();
    ctrlMotion();
    setAttnPos();
    twilight();
    setCollision();

    if (field_0xe33 == 0) {
        if (field_0xe39 != 0 && dComIfGp_getEvent().isOrderOK() || g_dComIfG_gameInfo.play.mEvent.mEventStatus == 0) {
            evtOrder();
        }
    }
        
    clrParam();
    decTmr();


    return 1;
}

/* 80A38BB8-80A38FAC 00E298 03F4+00 1/1 0/0 0/0 .text draw__10daNpc_Kn_cFiifP11_GXColorS10fiii */
void daNpc_Kn_c::draw(int param_0, int param_1, f32 param_2, _GXColorS10* param_3, f32 param_4,
                          int param_5, int param_6, int param_7) {
    // NONMATCHING
}

/* 80A38FAC-80A39008 00E68C 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__10daNpc_Kn_cFv */
void daNpc_Kn_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80A39008-80A3904C 00E6E8 0044+00 2/2 0/0 0/0 .text            setRoomNo__10daNpc_Kn_cFv */
void daNpc_Kn_c::setRoomNo() {
    s32 room_id = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, room_id);
    mCcStts.SetRoomId(room_id);
}

/* 80A3904C-80A390F8 00E72C 00AC+00 1/1 0/0 0/0 .text            checkEndAnm__10daNpc_Kn_cFf */
// NONMATCHING - missing instructions + regalloc
bool daNpc_Kn_c::checkEndAnm(f32 i_rate) {
    switch(mpMorf[0]->getPlayMode()) {
    case 2:
        return mpMorf[0]->isLoop();
    case 1:
    case 0:
        bool check = false;

        if (mpMorf[0]->isStop() && mpMorf[0]->getPlaySpeed() == 0.0f) {
            check = true;
        }

        if (check && i_rate != 0.0f) {
            return true;
        }
    case 3:
    default:
        return false;
    };
}

/* 80A390F8-80A3917C 00E7D8 0084+00 1/1 0/0 0/0 .text checkEndAnm__10daNpc_Kn_cFP12J3DFrameCtrlf
 */
 // NONMATCHING - missing instructions + regalloc
BOOL daNpc_Kn_c::checkEndAnm(J3DFrameCtrl* i_frameCtrl, f32 i_rate) {
    switch (i_frameCtrl->getAttribute()) {
    case 2:
        return i_frameCtrl->checkState(2);
    case 1:
    case 0:
        bool check = false;

        if (i_frameCtrl->checkState(1) && i_frameCtrl->getRate() == 0.0f) {
            check = true;
        }

        if (check && i_rate != 0.0f) {
            return TRUE;
        }
    case 3:
    default:
        return FALSE;
    }
}

/* 80A3917C-80A3949C 00E85C 0320+00 1/1 0/0 0/0 .text            playAllAnm__10daNpc_Kn_cFv */
void daNpc_Kn_c::playAllAnm() {
    // NONMATCHING
}

/* 80A3949C-80A39558 00EB7C 00BC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpc_Kn_cFv */
int daNpc_Kn_c::ctrlBtk() {
    if (mpMatAnm) {
        if (field_0xe30 != 0 && mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mJntAnm.getEyeAngleY()) * 0.2f);
            mpMatAnm->setNowOffsetY(cM_ssin(mJntAnm.getEyeAngleX()) * 0.2f);

            if (field_0xe31 != 0) {
                mpMatAnm->setMorfFrm(field_0xe31);
                field_0xe31 = 0;
            }

            mpMatAnm->onEyeMoveFlag();
            return 1;
        }

        if (field_0xe31 != 0) {
            mpMatAnm->setMorfFrm(field_0xe31);
            field_0xe31 = 0;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return 0;
}

/* 80A39558-80A395DC 00EC38 0084+00 1/1 0/0 0/0 .text            setMtx__10daNpc_Kn_cFv */
void daNpc_Kn_c::setMtx() {
    J3DModel* model = mpMorf[0]->getModel();
    // J3DModelData* data = model->getModelData(); // debug used this?
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mTargetAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (field_0xdcc & 0x400) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
    }

    mpMorf[0]->modelCalc();
}

/* 80A395DC-80A39684 00ECBC 00A8+00 1/1 0/0 0/0 .text            ctrlFaceMotion__10daNpc_Kn_cFv */
void daNpc_Kn_c::ctrlFaceMotion() {
    // NONMATCHING
}

/* 80A39684-80A39738 00ED64 00B4+00 1/1 0/0 0/0 .text            ctrlMotion__10daNpc_Kn_cFv */
// NONMATCHING - param2 being passed into setMotionAnm are wrong
void daNpc_Kn_c::ctrlMotion() {
    int p2;
    f32 p3;
    BOOL b;

    if (mMotionSeqMngr2.play(field_0xe26, &p2, &p3)) {
        b = p3 < 1.0f ? TRUE : p3;
        setMotionAnm(p2, p3 < 0.0f ? field_0xab8 : p3, b);

        if (field_0xABC != 0) {
            mpMorf[0]->setMorf(0.0f);

            if (mpMorf[1]) {
                mpMorf[1]->setMorf(0.0f);
            }
        }
    }
}

/* 80A39738-80A3989C 00EE18 0164+00 1/1 0/0 0/0 .text ctrlMsgAnm__10daNpc_Kn_cFPiPiP10fopAc_ac_ci
 */
void daNpc_Kn_c::ctrlMsgAnm(int* param_0, int* param_1, fopAc_ac_c* param_2, int param_3) {
    // NONMATCHING
}

/* 80A3989C-80A39BBC 00EF7C 0320+00 1/0 0/0 0/0 .text ctrlJoint__10daNpc_Kn_cFP8J3DJointP8J3DModel
 */
void daNpc_Kn_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80A39BBC-80A39DBC 00F29C 0200+00 1/0 0/0 0/0 .text            evtProc__10daNpc_Kn_cFv */
int daNpc_Kn_c::evtProc() {
    // NONMATCHING
}

/* 80A39DBC-80A39F84 00F49C 01C8+00 1/0 0/0 0/0 .text            setFootPos__10daNpc_Kn_cFv */
void daNpc_Kn_c::setFootPos() {
    if (getFootLJointNo() >= 0) {
        field_0xD88 = field_0xD70;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getFootLJointNo()));
        mDoMtx_stack_c::multVecZero(&field_0xd58);
        field_0xD70 = field_0xd58 - current.pos;
    }

    if (getFootRJointNo() >= 0) {
        field_0xD94 = field_0xD7C;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getFootRJointNo()));
        mDoMtx_stack_c::multVecZero(&field_0xD64);
        field_0xD7C = field_0xD64 - current.pos;
    }

    if (field_0xABC != 0) {
        field_0xD88 = field_0xD70;
        field_0xD94 = field_0xD7C;
    }
}

/* 80A39F84-80A3A254 00F664 02D0+00 1/0 0/0 0/0 .text            setFootPrtcl__10daNpc_Kn_cFP4cXyzf
 */
void daNpc_Kn_c::setFootPrtcl(cXyz* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A3A254-80A3A25C 00F934 0008+00 1/0 0/0 0/0 .text            checkCullDraw__10daNpc_Kn_cFv */
bool daNpc_Kn_c::checkCullDraw() {
    return false;
}

/* 80A3A25C-80A3A2A8 00F93C 004C+00 1/0 0/0 0/0 .text            twilight__10daNpc_Kn_cFv */
void daNpc_Kn_c::twilight() {
    if (field_0xABD != 0) {
        attention_info.flags |= 0x400000;
        field_0xe32 = 0;
        attention_info.flags |= 0x800000;
        setHitodamaPrtcl();
    }
}

/* 80A3A2A8-80A3A404 00F988 015C+00 1/0 0/0 0/0 .text            evtOrder__10daNpc_Kn_cFv */
void daNpc_Kn_c::evtOrder() {
    if (strlen(mpEventData[mEvtIdx].eventName) != 0) {
        if (strlen(field_0x5B8[mpEventData[mEvtIdx].num])) {
            eventInfo.setArchiveName(field_0x5B8[mpEventData[mEvtIdx].num]);
            dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
        }

        field_0xe24 = dComIfGp_getEventManager().getEventIdx(this, mpEventData[mEvtIdx].eventName,0xff);
        fopAcM_orderOtherEventId(this,field_0xe24,0xff,0xffff,6,1);
        
    } else {
        u32 flag_check = attention_info.flags;

        if (flag_check & 8 || flag_check & 2) {
            eventInfo.i_onCondition(1);

            if (chkXYItems()) {
                eventInfo.i_onCondition(32);
            }

            if (field_0xe38 != 0) {
                fopAcM_orderSpeakEvent(this,0,0);
            }
        }
    }
}

/* 80A3A404-80A3A504 00FAE4 0100+00 1/1 0/0 0/0 .text            evtChange__10daNpc_Kn_cFv */
void daNpc_Kn_c::evtChange() {
    if (strlen(mpEventData[mEvtIdx].eventName) != 0) {
        if (strlen(field_0x5B8[mpEventData[mEvtIdx].num])) {
            eventInfo.setArchiveName(field_0x5B8[mpEventData[mEvtIdx].num]);
            dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
        }

        field_0xe24 = dComIfGp_getEventManager().getEventIdx(this, mpEventData[mEvtIdx].eventName,0xff);
        dComIfGp_getEvent().reset(this);
        fopAcM_orderChangeEventId(this,field_0xe24,1,0xffff);
    }
}

/* 80A3A504-80A3A568 00FBE4 0064+00 1/0 0/0 0/0 .text            clrParam__10daNpc_Kn_cFv */
void daNpc_Kn_c::clrParam() {
    field_0xDB2 = mTargetAngle;
    mCutType = 0;
    memset((void*)&mEvtIdx,0,(int)(void*)&field_0xe3c - (int)(void*)&mEvtIdx); // fake match?
    mJntAnm.clrDirectFlag();
}

/* 80A3A568-80A3A7C0 00FC48 0258+00 2/2 0/0 0/0 .text            setFaceMotionAnm__10daNpc_Kn_cFib
 */
bool daNpc_Kn_c::setFaceMotionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80A3A7C0-80A3AA58 00FEA0 0298+00 2/2 0/0 0/0 .text            setMotionAnm__10daNpc_Kn_cFifi */
bool daNpc_Kn_c::setMotionAnm(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80A3AA58-80A3AAF0 010138 0098+00 10/10 0/0 0/0 .text            setPos__10daNpc_Kn_cF4cXyz */
void daNpc_Kn_c::setPos(cXyz i_pos) {
    i_pos.y += 500.0f;
    mGndChk.SetPos(&i_pos);
    i_pos.y = dComIfG_Bgsp().GroundCross(&mGndChk);
    current.pos = i_pos;
    old.pos = current.pos;
}

/* 80A3AAF0-80A3AB18 0101D0 0028+00 35/35 0/0 0/0 .text            setAngle__10daNpc_Kn_cFs */
void daNpc_Kn_c::setAngle(s16 i_angle) {
    current.angle.y = i_angle;
    shape_angle.y = current.angle.y;
    mTargetAngle.y = current.angle.y;
    field_0xDB2.y = mTargetAngle.y;
    old.angle.y = current.angle.y;
}

/* 80A3AB18-80A3AC24 0101F8 010C+00 1/1 0/0 0/0 .text
 * chkActorInSight__10daNpc_Kn_cFP10fopAc_ac_cfs                */
void daNpc_Kn_c::chkActorInSight(fopAc_ac_c* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 80A3AC24-80A3ACD4 010304 00B0+00 1/1 0/0 0/0 .text chkPointInArea__10daNpc_Kn_cF4cXyz4cXyzfffs
 */
void daNpc_Kn_c::chkPointInArea(cXyz param_0, cXyz param_1, f32 param_2, f32 param_3,
                                    f32 param_4, s16 param_5) {
    // NONMATCHING
}

/* 80A3ACD4-80A3AD50 0103B4 007C+00 1/1 0/0 0/0 .text
 * chkPointInArea__10daNpc_Kn_cF4cXyz4cXyz4cXyzs                */
void daNpc_Kn_c::chkPointInArea(cXyz param_0, cXyz param_1, cXyz param_2, s16 param_3) {
    // NONMATCHING
}

/* 80A3AD50-80A3AF50 010430 0200+00 1/1 0/0 0/0 .text            chkFindPlayer__10daNpc_Kn_cFis */
void daNpc_Kn_c::chkFindPlayer(int param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A3AF50-80A3AF64 010630 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
// extern "C" void getDistTable__12dAttention_cFi() {
//     // NONMATCHING
// }

/* 80A3AF64-80A3B000 010644 009C+00 1/1 0/0 0/0 .text            srchPlayerActor__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::srchPlayerActor() {
    // NONMATCHING
}

/* 80A3B000-80A3B074 0106E0 0074+00 2/2 0/0 0/0 .text getAttnPos__10daNpc_Kn_cFP10fopAc_ac_c */
cXyz daNpc_Kn_c::getAttnPos(fopAc_ac_c* param_0) {
    cXyz pos(param_0->attention_info.position);

    if (fopAcM_GetName(param_0) == PROC_ALINK) {
        f32 offset = static_cast<daPy_py_c*>(param_0)->getAttentionOffsetY();
        pos.y -= offset;
    }

    return pos;
}

/* 80A3B074-80A3B220 010754 01AC+00 1/1 0/0 0/0 .text            turn__10daNpc_Kn_cFsii */
void daNpc_Kn_c::turn(s16 param_0, int param_1, int param_2) {
    // NONMATCHING
}

/* 80A3B220-80A3B3E8 010900 01C8+00 19/19 0/0 0/0 .text            step__10daNpc_Kn_cFsiiii */
s32 daNpc_Kn_c::step(s16 param_0, int param_1, int param_2, int param_3, int param_4) {
    // NONMATCHING
}

/* 80A3B3E8-80A3B448 010AC8 0060+00 20/20 0/0 0/0 .text initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c */
s32 daNpc_Kn_c::initTalk(int param_0, fopAc_ac_c** param_1) {
    mFlow.init(this,param_0, 0, param_1);
    speedF = 0.0f;
    speed.setall(0.0f);
    return 1;
}

/* 80A3B448-80A3B5EC 010B28 01A4+00 20/20 0/0 0/0 .text talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
 */
BOOL daNpc_Kn_c::talkProc(int* param_0, int param_1, fopAc_ac_c** param_2, int param_3) {
    // NONMATCHING
}

/* 80A3B5EC-80A3B708 010CCC 011C+00 1/1 0/0 0/0 .text            setHitodamaPrtcl__10daNpc_Kn_cFv */
void daNpc_Kn_c::setHitodamaPrtcl() {
    cXyz pos(eyePos);

    for (int i = 0; i < 2; i++) {
        tevStr.mLightObj.mLightObj.field_0x0[i] = dComIfGp_particle_set(tevStr.mLightObj.mLightObj.field_0x0[i], id[i],&pos, &mTargetAngle, 0);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(tevStr.mLightObj.mLightObj.field_0x0[i]);
        if (emitter) {
            u8 alpha;

            if (dComIfGs_wolfeye_effect_check() == 0) {
                alpha = 0xff;
            } else {
                alpha = 0;
            }

            emitter->setGlobalTranslation(pos.x,pos.y,pos.z);
            emitter->setGlobalAlpha(alpha);
        }
    }
}

/* 80A3B708-80A3B720 010DE8 0018+00 1/0 0/0 0/0 .text            decTmr__10daNpc_Kn_cFv */
void daNpc_Kn_c::decTmr() {
    if (mTimer == 0) {
        return;
    }

    mTimer--;
}

/* 80A3B720-80A3B724 010E00 0004+00 1/0 0/0 0/0 .text            afterJntAnm__10daNpc_Kn_cFi */
void daNpc_Kn_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80A3B724-80A3B760 010E04 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
// extern "C" void __dt__5csXyzFv() {
//     // NONMATCHING
// }

// /* 80A3B760-80A3B79C 010E40 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// // cXyz::~cXyz() {
// extern "C" void __dt__4cXyzFv() {
//     // NONMATCHING
// }

/* 80A3B79C-80A3B7A4 010E7C 0008+00 1/0 0/0 0/0 .text            evtEndProc__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::evtEndProc() {
    return TRUE;
}

/* 80A3B7A4-80A3B7AC 010E84 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__10daNpc_Kn_cFv */
bool daNpc_Kn_c::checkChangeEvt() {
    return false;
}

/* 80A3B7AC-80A3B7B4 010E8C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getFootRJointNo() {
    return -1;
}

/* 80A3B7B4-80A3B7BC 010E94 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getFootLJointNo() {
    return -1;
}

/* 80A3B7BC-80A3B7C4 010E9C 0008+00 1/0 0/0 0/0 .text            chkXYItems__10daNpc_Kn_cFv */
BOOL daNpc_Kn_c::chkXYItems() {
    return false;
}

/* 80A3B7C4-80A3B7CC 010EA4 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__10daNpc_Kn_cFiifi */
bool daNpc_Kn_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    return true;
}

/* 80A3B7CC-80A3B7FC 010EAC 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__10daNpc_Kn_cF26daNpcT_faceMotionAnmData_c  */
// daNpcT_faceMotionAnmData_c daNpc_Kn_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
//     // NONMATCHING
// }

// /* 80A3B7FC-80A3B82C 010EDC 0030+00 1/0 0/0 0/0 .text
//  * getMotionAnm__10daNpc_Kn_cF22daNpcT_motionAnmData_c          */
// daNpcT_motionAnmData_c daNpc_Kn_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
//     // NONMATCHING
// }

/* 80A3B82C-80A3BD14 010F0C 04E8+00 1/1 0/0 0/0 .text
 * __ct__10daNpc_Kn_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
 // NONMATCHING - missing something instructions / regalloc
daNpc_Kn_c::daNpc_Kn_c(daNpcT_faceMotionAnmData_c const* param_0,
                           daNpcT_motionAnmData_c const* param_1,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                           daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                           daNpcT_evtData_c const* param_6, char** param_7) :
                            // daNpcT_c(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7) { 
                           mpFaceMotionAnmData(param_0), 
                           mpMotionAnmData(param_1), mMotionSeqMngr1(param_2, param_3), 
                           mMotionSeqMngr2(param_4, param_5), 
                           mpEventData(param_6),
                           field_0x5B8(param_7) {
    initialize();
}

/* 80A3BD14-80A3BD1C 0113F4 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__10daNpc_Kn_cFv */
s32 daNpc_Kn_c::getEyeballMaterialNo() {
    return false;
}

/* 80A3BD1C-80A3BD24 0113FC 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__10daNpc_Kn_cFv */
int daNpc_Kn_c::getEyeballLMaterialNo() {
    return false;
}

/* 80A3BD24-80A3BD2C 011404 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__10daNpc_Kn_cFv */
bool daNpc_Kn_c::getEyeballRMaterialNo() {
    return false;
}

/* 80A3BD2C-80A3BD48 01140C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
// extern "C" void func_80A3BD2C(void* _this, s16* param_0) {
//     // NONMATCHING
// }

// /* 80A3BD48-80A3BD64 011428 001C+00 23/23 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
// extern "C" void func_80A3BD48(void* _this, int* param_0) {
//     // NONMATCHING
// }

// /* 80A3BD64-80A3BDE8 011444 0084+00 9/9 0/0 0/0 .text            cLib_getRndValue<s>__Fss */
// extern "C" void func_80A3BD64(void* _this, s16 param_0, s16 param_1) {
//     // NONMATCHING
// }

// /* 80A3BDE8-80A3BE64 0114C8 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
// extern "C" void func_80A3BDE8(void* _this, int param_0, int param_1) {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 80A432A8-80A432B4 002574 000C+00 2/2 0/0 0/0 .data            __vt__16daNpc_Kn_Param_c */
// SECTION_DATA extern void* __vt__16daNpc_Kn_Param_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__16daNpc_Kn_Param_cFv,
// };

// /* 80A3BE64-80A3C124 011544 02C0+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kn_cpp */
// void __sinit_d_a_npc_kn_cpp() {
//     // NONMATCHING
// }

// #pragma push
// #pragma force_active on
// REGISTER_CTORS(0x80A3BE64, __sinit_d_a_npc_kn_cpp);
// #pragma pop

/* 80A3C124-80A3C16C 011804 0048+00 2/1 0/0 0/0 .text            __dt__16daNpc_Kn_Param_cFv */
daNpc_Kn_Param_c::~daNpc_Kn_Param_c() {}

/* 80A3C16C-80A3C174 01184C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
// static void func_80A3C16C() {
//     // NONMATCHING
// }

// /* 80A3C174-80A3C17C 011854 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
// static void func_80A3C174() {
//     // NONMATCHING
// }

// /* 80A3C17C-80A3C1C4 01185C 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// // daNpcT_Path_c::~daNpcT_Path_c() {
// extern "C" void __dt__13daNpcT_Path_cFv() {
//     // NONMATCHING
// }

// /* 80A3C1C4-80A3C1C8 0118A4 0004+00 1/1 0/0 0/0 .text __ct__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv
//  */
// // daNpc_Kn_c::daNpc_Kn_prtclMngr_c::daNpc_Kn_prtclMngr_c() {
// //     /* empty function */
// // }

// /* 80A3C1C8-80A3C24C 0118A8 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// // dCcD_Sph::dCcD_Sph() {
// extern "C" void __ct__8dCcD_SphFv() {
//     // NONMATCHING
// }

// /* 80A3C24C-80A3C294 01192C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// // cM3dGSph::~cM3dGSph() {
// extern "C" void __dt__8cM3dGSphFv() {
//     // NONMATCHING
// }

// /* 80A3C294-80A3C2DC 011974 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// // cM3dGCyl::~cM3dGCyl() {
// extern "C" void __dt__8cM3dGCylFv() {
//     // NONMATCHING
// }

// /* 80A3C2DC-80A3C324 0119BC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// // cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

// /* 80A3C324-80A3C35C 011A04 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// // J3DLightObj::J3DLightObj() {
// extern "C" void __ct__11J3DLightObjFv() {
//     // NONMATCHING
// }

// /* 80A3C35C-80A3C360 011A3C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// // csXyz::csXyz() {
// extern "C" void __ct__5csXyzFv() {
//     /* empty function */
// }

// /* 80A3C360-80A3C45C 011A40 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// // daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
// extern "C" void __dt__15daNpcT_JntAnm_cFv() {
//     // NONMATCHING
// }

// /* 80A3C45C-80A3C460 011B3C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// // cXyz::cXyz() {
// extern "C" void __ct__4cXyzFv() {
//     /* empty function */
// }

// /* 80A3C460-80A3C4A8 011B40 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// // daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
// extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
//     // NONMATCHING
// }

// /* 80A3C4A8-80A3C4F0 011B88 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// // daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
// extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
//     // NONMATCHING
// }

// /* 80A3C4F0-80A3C560 011BD0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// // dBgS_AcchCir::~dBgS_AcchCir() {
// extern "C" void __dt__12dBgS_AcchCirFv() {
//     // NONMATCHING
// }

// /* 80A3C560-80A3C5BC 011C40 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// // dCcD_GStts::~dCcD_GStts() {
// extern "C" void __dt__10dCcD_GSttsFv() {
//     // NONMATCHING
// }

// /* 80A3C5BC-80A3C62C 011C9C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// // dBgS_ObjAcch::~dBgS_ObjAcch() {
// extern "C" void __dt__12dBgS_ObjAcchFv() {
//     // NONMATCHING
// }

// /* 80A3C62C-80A3C674 011D0C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// // J3DFrameCtrl::~J3DFrameCtrl() {
// extern "C" void __dt__12J3DFrameCtrlFv() {
//     // NONMATCHING
// }

// /* 80A3C674-80A3C790 011D54 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// // void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
// //                                       s16 param_4) {
// extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
//     // NONMATCHING
// }

// /* 80A3C790-80A3C998 011E70 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// // void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
// extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
//     // NONMATCHING
// }

/* 80A3C998-80A3CB14 012078 017C+00 1/1 0/0 0/0 .text            setParamTeach01__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach01() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;

    switch(mActionMode) {
    case 0:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        return 0;
    case 1:
        if (field_0x170c != 0) {
            return 0;
        }
    case 2:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.mRadius);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        return 4;
    case 3:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        mAcchCir.SetWallR(135.0f);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        return 4;
    }

    return 10;
}

/* 80A3CB14-80A3CBFC 0121F4 00E8+00 1/1 0/0 0/0 .text            setCollisionTeach01__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach01() {
    switch (mActionMode) {
    case 0:
        break;
    case 1:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OnTgNoConHit();
        
        if (field_0x170c == 0) {
            mCylCc.OnTgShield();
        } else {
            mCylCc.OffTgShield();    
        }
        break;
    case 2:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OffTgShield();
        mCylCc.OffTgNoAtHitInfSet();
        mCylCc.OnTgNoConHit();
        mCylCc.OnCoSetBit();
        break;
    case 3:
        mCylCc.OffTgSetBit();
        mCylCc.OffCoSetBit();
        break;
    }
}

/* 80A3CBFC-80A3CCC0 0122DC 00C4+00 1/1 0/0 0/0 .text teach01_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach01_selectAction() {
    switch(mActionMode) {
    case 0:
        mpTeachAction = &daNpc_Kn_c::teach01_start;
        return;
    case 1:
        mpTeachAction = &daNpc_Kn_c::teach01_attackWait;
        return;
    case 2:
        mpTeachAction = &daNpc_Kn_c::teach01_swordAttackWait;
        return;
    case 3:
        mpTeachAction = &daNpc_Kn_c::teach01_swordFinishWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
    return;
}

/* 80A3CCC0-80A3CDFC 0123A0 013C+00 1/0 0/0 0/0 .text            teach01_start__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_start(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        mEvtIdx = 5;
        field_0xe39 = 1;
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
    case 3:
    default:
        return 1;
    }
}

/* 80A3CDFC-80A3CF78 0124DC 017C+00 1/0 0/0 0/0 .text            teach01_attackWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach01_attackWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr2.setNo(9,-1.0f,1,0);
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
    if (!ctrlWarp()) {
        cLib_addCalcAngleS2(&mTargetAngle.y,fopAcM_searchPlayerAngleY(this),2,0x800);
        setAngle(mTargetAngle.y);
        if (mCylCc.ChkTgHit()) {

            mEvtIdx = 6;
            field_0x16f4.set(1.0f,1.0f,1.0f);
            field_0x170c = 0;
            field_0x170d = 0;
            mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
        }
    }
    case 3:
    default:
        return 1;
    }
}

/* 80A3CF78-80A3D32C 012658 03B4+00 1/0 0/0 0/0 .text teach01_swordAttackWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_swordAttackWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(9,-1.0f,0,0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.mMinRndVal,daNpc_Kn_Param_c::m.mRndValRange);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();
        if (mCylCc.ChkTgHit()) {
            int cut_type = daPy_getPlayerActorClass()->getCutType();
            if (cut_type == daPy_py_c::CUT_TYPE_JUMP || cut_type == daPy_py_c::CUT_TYPE_TURN_RIGHT || cut_type == daPy_py_c::CUT_TYPE_TURN_LEFT || daPy_getPlayerActorClass()->getCutCount() >= 4) {
                mActionMode = 0x3;
                setAngle(fopAcM_searchPlayerAngleY(this));
                speedF = -daNpc_Kn_Param_c::m.mSpeedF;
                speed.y = daNpc_Kn_Param_c::m.mSpeedY;
                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1f);
            } else {
                fopAc_ac_c* hit_ac = mCylCc.GetTgHitAc();
                s16 angle = cLib_targetAngleY(&hit_ac->current.pos,&current.pos);
                cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x94);
                mDoMtx_stack_c::YrotS(angle);
                mDoMtx_stack_c::multVec(&pos,&mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x1f,-1.0f,1,0);
                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1e);
            }
        } else {
            if (cLib_calcTimer(&field_0xdec) == 0 || checkCollisionSword()) {
                mTargetPos = current.pos;
                int check = 0;
                
                if (dComIfGp_getAttention().LockonTruth()) {
                    check = 1;
                }

                checkCollisionSword() != 0 ? mEvtIdx = 4 : mEvtIdx = 1;
                
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0,-1.0f,1,0);

                check != 0 ?mFlowNodeNo = 0x2da: mFlowNodeNo = 0x2db;
                
            } else {
                calcSwordAttackMove(1);         
            }

            
        }
    case 3:
    default:
        return 1;
    }
}

/* 80A3D32C-80A3D6D8 012A0C 03AC+00 1/0 0/0 0/0 .text teach01_swordFinishWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach01_swordFinishWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
        mMotionSeqMngr2.setNo(0x12,-1.0f,0,0);
        mCreature.startCreatureVoice(Z2SE_KN_V_DAMAGE_L, -1);
        mJntAnm.lookNone(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        field_0xe2a = 2;
    case 2:
        mTargetPos = current.pos;
        int no = mMotionSeqMngr2.getNo();
        if (no == 0x12) {
            if (speed.y <= 0.0f && mAcch.ChkGroundHit()) {
                speedF = 0.0f;
                speed.zero();
                mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                mMotionSeqMngr2.setNo(0x13,-1.0f,0,0);
                setLandingPrtcl();
            }
        } else if (no == 0x13) {
            if (mMotionSeqMngr2.getStepNo() == 0) {
                if (mpMorf[0]->getFrame() >= 13.0f && mpMorf[0]->getFrame() < 14.0f) {
                    setLandingPrtcl();
                }
            } else {
                // both downFlg inlines are generating extra instructions?
                // if (!checkDownFlg())
                if (!(mFlags & 0x1)) {
                    cXyz pos(10.0f,0.0f,0.0f);
                    mFlags |= 1;
                    // onDownFlg();
                    u8 backbone_joint = getBackboneJointNo();
                    J3DModel* model = mpMorf[0]->getModel();
                    mDoMtx_stack_c::copy(model->getAnmMtx(backbone_joint));
                    mDoMtx_stack_c::multVec(&pos,&field_0x15c0);
                    setDownPos(&field_0x15c0);
                } else {
                    if (checkCutDownHitFlg()) {
                        mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                        mMotionSeqMngr2.setNo(0x14,-1.0f,0,0);
                        
                        if (mType == 0) {
                            mEvtIdx = 7;
                        } else if (mType == 1) {
                            mEvtIdx = 9;
                        }
                        
                        mCreature.startCollisionSE(Z2SE_HIT_SWORD_STAB,0x1e);
                        break;
                    }
                }   
            }
        }

        if (cLib_calcTimer(&field_0xdec) == 0) {
            if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_DOWN) {
                offDownFlg();
                mTargetPos = current.pos;
                mEvtIdx = 3;
                mFlowNodeNo = 0x2dc;
                mActionMode = 2;
            }
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* ############################################################################################## */
/* 80A40AD4-80A40AD8 00020C 0004+00 0/0 0/0 0/0 .rodata          @12826 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12826 = 27.0f;
// COMPILER_STRIP_GATE(0x80A40AD4, &lit_12826);
// #pragma pop

// /* 80A40AD8-80A40ADC 000210 0004+00 0/0 0/0 0/0 .rodata          @12827 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_12827 = 28.0f;
// COMPILER_STRIP_GATE(0x80A40AD8, &lit_12827);
// #pragma pop

// /* 80A40ADC-80A40AE0 000214 0004+00 0/2 0/0 0/0 .rodata          @13396 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_13396 = 600.0f;
// COMPILER_STRIP_GATE(0x80A40ADC, &lit_13396);
// #pragma pop

// /* 80A40AE0-80A40AE4 000218 0004+00 0/1 0/0 0/0 .rodata          @13397 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_13397 = 100.0f;
// COMPILER_STRIP_GATE(0x80A40AE0, &lit_13397);
// #pragma pop

/* 80A3D6D8-80A3DCEC 012DB8 0614+00 3/3 0/0 0/0 .text            ctrlWarp__10daNpc_Kn_cFv */
int daNpc_Kn_c::ctrlWarp() {
    // NONMATCHING
}

/* 80A3DCEC-80A3DEC4 0133CC 01D8+00 1/0 0/0 0/0 .text            ECut_firstEncount__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_firstEncount(int param_0) {
    // NONMATCHING
}

/* 80A3DEC4-80A3E550 0135A4 068C+00 1/0 0/0 0/0 .text            ECut_attackFailed__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_attackFailed(int param_0) {
    // NONMATCHING
}

/* 80A3E550-80A3EB84 013C30 0634+00 3/0 0/0 0/0 .text            ECut_firstSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_firstSkillGet(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A40AE4-80A40AE8 00021C 0004+00 0/1 0/0 0/0 .rodata          @13839 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_13839 = 255.0f;
// COMPILER_STRIP_GATE(0x80A40AE4, &lit_13839);
// #pragma pop

/* 80A3EB84-80A3EE38 014264 02B4+00 1/1 0/0 0/0 .text            setParamTeach02__10daNpc_Kn_cFv */
u32 daNpc_Kn_c::setParamTeach02() {
    s16 field48 = daNpc_Kn_Param_c::m.field_0x48;
    s16 field4a = daNpc_Kn_Param_c::m.field_0x4a;
    s16 field4c = daNpc_Kn_Param_c::m.field_0x4c;
    s16 field4e = daNpc_Kn_Param_c::m.field_0x4e;
    f32 radius = daNpc_Kn_Param_c::m.mRadius;
    f32 height = daNpc_Kn_Param_c::m.mHeight;

    switch(mActionMode) {
    case 7:
    case 6:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        return 4;
    case 5:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        cXyz pos;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getBackboneJointNo()));
        mDoMtx_stack_c::multVecZero(&pos);

        f32 absxz = (daPy_getPlayerActorClass()->current.pos - pos).absXZ();

        if (absxz < 255.0f) {
            return 0x200004;
        } else {
            return 4;
        }
    case 4:
        attention_info.distances[0] = daNpcT_getDistTableIdx(field4c, field4e);
        attention_info.distances[2] = 0xe4;
        attention_info.distances[1] = attention_info.distances[0];
        attention_info.distances[3] = daNpcT_getDistTableIdx(field48, field4a);
        mAcchCir.SetWallR(daNpc_Kn_Param_c::m.mRadius);
        mAcchCir.SetWallH(daNpc_Kn_Param_c::m.mHeight);
        return 0;
    }

    return 10;
}

/* 80A3EE38-80A3EF1C 014518 00E4+00 1/1 0/0 0/0 .text            setCollisionTeach02__10daNpc_Kn_cFv
 */
void daNpc_Kn_c::setCollisionTeach02() {
    switch (mActionMode) {
    case 4:
        break;
    case 5:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OnTgShield();
        mCylCc.OffTgNoAtHitInfSet();
        mCylCc.OnTgNoConHit();
        break;
    case 6:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_1);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OffTgShield();
        mCylCc.OffTgNoAtHitInfSet();
        mCylCc.OnTgNoConHit();
        break;
    case 7:
        mCylCc.SetTgType(-1);
        mCylCc.SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mCylCc.SetTgSPrm(0x13);
        mCylCc.OffTgShield();
        mCylCc.OnTgNoConHit();
        break;
    }
}

/* 80A3EF1C-80A3EFE0 0145FC 00C4+00 1/1 0/0 0/0 .text teach02_selectAction__10daNpc_Kn_cFv */
void daNpc_Kn_c::teach02_selectAction() {
    switch(mActionMode) {
    case 4:
        mpTeachAction = &daNpc_Kn_c::teach02_start;
        return;
    case 5:
        mpTeachAction = &daNpc_Kn_c::teach02_shieldBashWait;
        return;
    case 6:
        mpTeachAction = &daNpc_Kn_c::teach02_finishWait;
        return;
    case 7:
        mpTeachAction = &daNpc_Kn_c::teach02_shieldReflectWait;
        return;
    }

    mpTeachAction = &daNpc_Kn_c::wait;
    return;
}

/* 80A3EFE0-80A3F358 0146C0 0378+00 1/0 0/0 0/0 .text teach02_shieldBashWait__10daNpc_Kn_cFPv */
int daNpc_Kn_c::teach02_shieldBashWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
        mMotionSeqMngr1.setNo(9, -1.0f, 0, 0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        mTargetPos = current.pos;
        field_0x15bc = 0;
        field_0x15d0 = cLib_getRndValue(daNpc_Kn_Param_c::m.mMinRndVal,daNpc_Kn_Param_c::m.mRndValRange);
        speedF = 0.0f;
        speed.zero();
        field_0xe2a = 2;
    case 2:
        mCcStts.Move();
        
        if (mCylCc.ChkTgShieldHit()) {
            u8 cut_type = daPy_getPlayerActorClass()->getCutType();

            if (cut_type == daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                s16 angle = cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &attention_info.position);
                cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x94);

            
                mDoMtx_stack_c::YrotS(angle);
                mDoMtx_stack_c::multVec(&pos,&mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mCylCc.ClrTgHit();
                mActionMode = 6;
                mCreature.startCollisionSE(Z2SE_HIT_SHIELD_ATTACK,0x28);
                break;
            }
        }

        if (!cLib_calcTimer(&field_0xdec) || checkCollisionSword()) {
            BOOL truth = FALSE;
            
            if (dComIfGp_getAttention().LockonTruth()) {
                truth = TRUE;
            }

            if (checkCollisionSword()) {
                mEvtIdx = 4;
            } else {
                mEvtIdx = 1;
            }

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,1,0);

            if (truth) {
                mFlowNodeNo = 0x2c0;
            } else {
                mFlowNodeNo = 0x2bf;
            }
        } else {
            if (mCylCc.ChkTgHit()) {
                if (mCylCc.GetTgHitObj()->ChkAtType(0x10) == 0) {
                    mMotionSeqMngr1.setNo(1,-1.0f,0,0);
                    mMotionSeqMngr2.setNo(0x1b,-1.0f,1,0);
                    mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x28);
                    break;
                }
            }
            
            calcSwordAttackMove(1);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A3F358-80A3F5A4 014A38 024C+00 1/0 0/0 0/0 .text            teach02_finishWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach02_finishWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
        mMotionSeqMngr1.setNo(11, -1.0f, 1, 0);
        mJntAnm.lookPlayer(0);
        field_0xdec = daNpc_Kn_Param_c::m.field_0x8e;
        field_0xe2a = 2;
    case 2:
        calcSlip();
        mCcStts.Move();
        
        if (mCylCc.ChkTgHit()) {
            u8 cut_type = daPy_getPlayerActorClass()->getCutType();

            if (cut_type != daPy_py_c::CUT_TYPE_GUARD_ATTACK) {
                if (mType == 1) {
                    mEvtIdx = 10;
                } else if (mType == 2) {
                    mEvtIdx = 12;
                }

                cXyz pos(0.0f,0.0f,daNpc_Kn_Param_c::m.field_0x94);
                mDoMtx_stack_c::YrotS(cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos, &attention_info.position));
                mDoMtx_stack_c::multVec(&pos,&mTargetPos);
                mTargetPos += current.pos;
                field_0x15bc = 1;
                mCreature.startCollisionSE(Z2SE_HIT_SWORD,0x1e);
                break;
            }
        }

        if (!cLib_calcTimer(&field_0xdec)) {
            mEvtIdx = 1;
            mFlowNodeNo = 0x2c1;
            mActionMode = 5;

            mMotionSeqMngr1.setNo(1,-1.0f,0,0);
            mMotionSeqMngr2.setNo(0,-1.0f,1,0);
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* ############################################################################################## */
/* 80A40AE8-80A40AEC 000220 0004+00 0/1 0/0 0/0 .rodata          @14209 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_14209 = 3.0f;
// COMPILER_STRIP_GATE(0x80A40AE8, &lit_14209);
// #pragma pop

// /* 80A40AEC-80A40AF0 000224 0004+00 0/1 0/0 0/0 .rodata          @14210 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_14210 = 34.0f;
// COMPILER_STRIP_GATE(0x80A40AEC, &lit_14210);
// #pragma pop

// /* 80A40AF0-80A40AF4 000228 0004+00 0/1 0/0 0/0 .rodata          @14211 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_14211 = 35.0f;
// COMPILER_STRIP_GATE(0x80A40AF0, &lit_14211);
// #pragma pop

/* 80A3F5A4-80A3F99C 014C84 03F8+00 1/0 0/0 0/0 .text teach02_shieldReflectWait__10daNpc_Kn_cFPv
 */
int daNpc_Kn_c::teach02_shieldReflectWait(void* param_0) {
    switch(field_0xe2a) {
    case 0:
    case 1:
        mMotionSeqMngr1.setNo(1, -1.0f, 0, 0);
        mMotionSeqMngr1.setNo(32, -1.0f, 1, 0);
        mJntAnm.lookPlayer(0);
        field_0xe2a = 2;
    case 2:
        mCcStts.Move();

        if (field_0x15bd == 0) {
            
        }
    case 3:
    default:
        break;
    }

    return 1;
}

/* 80A3F99C-80A3FFB4 01507C 0618+00 3/0 0/0 0/0 .text ECut_secondSkillExplain__10daNpc_Kn_cFi */
int daNpc_Kn_c::ECut_secondSkillExplain(int param_0) {
    // NONMATCHING
}

/* 80A3FFB4-80A403B8 015694 0404+00 1/0 0/0 0/0 .text            ECut_reflectExplain__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_reflectExplain(int param_0) {
    // NONMATCHING
}

/* 80A403B8-80A408B4 015A98 04FC+00 2/0 0/0 0/0 .text            ECut_secondSkillGet__10daNpc_Kn_cFi
 */
int daNpc_Kn_c::ECut_secondSkillGet(int param_0) {
    // NONMATCHING
}

/* 80A43148-80A43168 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kn_MethodTable */
static actor_method_class daNpc_Kn_MethodTable = {
    (process_method_func)daNpc_Kn_Create,
    (process_method_func)daNpc_Kn_Delete,
    (process_method_func)daNpc_Kn_Execute,
    (process_method_func)daNpc_Kn_IsDelete,
    (process_method_func)daNpc_Kn_Draw,
};

/* 80A43168-80A43198 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KN */
extern actor_process_profile_definition g_profile_NPC_KN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_KN,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Kn_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  347,                    // mPriority
  &daNpc_Kn_MethodTable,  // sub_method
  0x00044107,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
