/**
 * @file d_a_npc_wrestler.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_wrestler.h"
#include "d/d_timer.h"
#include "dolphin/types.h"
#include "d/actor/d_a_tag_arena.h"
#include "d/actor/d_a_npc_gra.h"
#include "d/actor/d_a_npc_bouS.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_camera.h"
#include "m_Do/m_Do_graphic.h"
#include "d/d_meter2_info.h"

enum Bou3_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_BOUS_DOWN = 6,
    /* 0x07 */ BCK_BOUS_F_DOWN,
    /* 0x08 */ BCK_BOUS_F_HEAD_UP,
    /* 0x09 */ BCK_BOUS_F_LOSE,
    /* 0x0A */ BCK_BOUS_F_LOSE2,
    /* 0x0B */ BCK_BOUS_F_PULLBACK,
    /* 0x0C */ BCK_BOUS_F_PUNCH,
    /* 0x0D */ BCK_BOUS_F_PUNCH_SHOCK,
    /* 0x0E */ BCK_BOUS_F_PUNCHMISS_TACKLESHOCK,
    /* 0x0F */ BCK_BOUS_F_PUNCHSHOCK_RETURN,
    /* 0x10 */ BCK_BOUS_F_PUSHBACK,
    /* 0x11 */ BCK_BOUS_F_STAGGER,
    /* 0x12 */ BCK_BOUS_F_TACKLE,
    /* 0x13 */ BCK_BOUS_F_TACKLE_B,
    /* 0x14 */ BCK_BOUS_F_TACKLE_MISS,
    /* 0x15 */ BCK_BOUS_F_TACKLE_SHOCK,
    /* 0x16 */ BCK_BOUS_F_TACKLE_STAGGER,
    /* 0x17 */ BCK_BOUS_F_TACKLE_WAIT,
    /* 0x18 */ BCK_BOUS_F_TACKLESHOCK_RETURN,
    /* 0x19 */ BCK_BOUS_F_TALK_A,
    /* 0x1A */ BCK_BOUS_F_WAIT_B,
    /* 0x1B */ BCK_BOUS_F_WIN,
    /* 0x1C */ BCK_BOUS_F_WIN_POSE,
    /* 0x1D */ BCK_BOUS_FIGHT_STEP,
    /* 0x1E */ BCK_BOUS_FIGHT_STEPL,
    /* 0x1F */ BCK_BOUS_FIGHT_STEPR,
    /* 0x20 */ BCK_BOUS_FIGHT_WAIT,
    /* 0x21 */ BCK_BOUS_HAKEYOI,
    /* 0x22 */ BCK_BOUS_HEAD_UP,
    /* 0x23 */ BCK_BOUS_LOSE,
    /* 0x24 */ BCK_BOUS_LOSE2,
    /* 0x25 */ BCK_BOUS_MIAU,
    /* 0x26 */ BCK_BOUS_PULLBACK,
    /* 0x27 */ BCK_BOUS_PUNCH,
    /* 0x28 */ BCK_BOUS_PUNCH_SHOCK,
    /* 0x29 */ BCK_BOUS_PUNCHMISS_TACKLESHOCK,
    /* 0x2A */ BCK_BOUS_PUNCHSHOCK_RETURN,
    /* 0x2B */ BCK_BOUS_PUSHBACK,
    /* 0x2C */ BCK_BOUS_PUSHOUT,
    /* 0x2D */ BCK_BOUS_SHIKO,
    /* 0x2E */ BCK_BOUS_STAGGER,
    /* 0x2F */ BCK_BOUS_STEP,
    /* 0x30 */ BCK_BOUS_TACKLE,
    /* 0x31 */ BCK_BOUS_TACKLE_B,
    /* 0x32 */ BCK_BOUS_TACKLE_MISS,
    /* 0x33 */ BCK_BOUS_TACKLE_SHOCK,
    /* 0x34 */ BCK_BOUS_TACKLE_STAGGER,
    /* 0x35 */ BCK_BOUS_TACKLE_WAIT,
    /* 0x36 */ BCK_BOUS_TACKLESHOCK_RETURN,
    /* 0x37 */ BCK_BOUS_WAIT_A,
    /* 0x38 */ BCK_BOUS_WAIT_B,
    /* 0x39 */ BCK_BOUS_WIN,
    /* 0x3A */ BCK_BOUS_WIN_POSE,
    /* 0x3B */ BCK_BOUS_YOKE,

    /* BMDR */
    /* 0x3E */ BMDR_BOUS = 0x3E,

    /* BTK */
    /* 0x41 */ BTK_BOUS = 0x41,

    /* BTP */
    /* 0x44 */ BTP_BOUS = 0x44,
    /* 0x45 */ BTP_BOUS_F_DOWN,
    /* 0x46 */ BTP_BOUS_F_HEAD_UP,
    /* 0x47 */ BTP_BOUS_F_LOSE,
    /* 0x48 */ BTP_BOUS_F_LOSE2,
    /* 0x49 */ BTP_BOUS_F_PULLBACK,
    /* 0x4A */ BTP_BOUS_F_PUNCH,
    /* 0x4B */ BTP_BOUS_F_PUNCH_SHOCK,
    /* 0x4C */ BTP_BOUS_F_PUNCHMISS_TACKLESHOCK,
    /* 0x4D */ BTP_BOUS_F_PUNCHSHOCK_RETURN,
    /* 0x4E */ BTP_BOUS_F_PUSHBACK,
    /* 0x4F */ BTP_BOUS_F_STAGGER,
    /* 0x50 */ BTP_BOUS_F_TACKLE,
    /* 0x51 */ BTP_BOUS_F_TACKLE_B,
    /* 0x52 */ BTP_BOUS_F_TACKLE_MISS,
    /* 0x53 */ BTP_BOUS_F_TACKLE_SHOCK,
    /* 0x54 */ BTP_BOUS_F_TACKLE_STAGGER,
    /* 0x55 */ BTP_BOUS_F_TACKLE_WAIT,
    /* 0x56 */ BTP_BOUS_F_TACKLESHOCK_RETURN,
    /* 0x57 */ BTP_BOUS_F_WAIT_B,
    /* 0x58 */ BTP_BOUS_F_WIN,
    /* 0x59 */ BTP_BOUS_F_WIN_POSE,
};

enum grDS_RES_File_ID {
    /* BCK */
    /* 0x07 */ BCK_GRD_DOWN = 7,
    /* 0x08 */ BCK_GRD_F_DOWN,
    /* 0x09 */ BCK_GRD_F_HEAD_UP,
    /* 0x0A */ BCK_GRD_F_LOSE,
    /* 0x0B */ BCK_GRD_F_LOSE2,
    /* 0x0C */ BCK_GRD_F_MADTALK,
    /* 0x0D */ BCK_GRD_F_PULLBACK,
    /* 0x0E */ BCK_GRD_F_PUNCH,
    /* 0x0F */ BCK_GRD_F_PUNCH_SHOCK,
    /* 0x10 */ BCK_GRD_F_PUNCHMISS_TACKLESHOCK,
    /* 0x11 */ BCK_GRD_F_PUNCHSHOCK_RETURN,
    /* 0x12 */ BCK_GRD_F_PUSHBACK,
    /* 0x13 */ BCK_GRD_F_SMILE,
    /* 0x14 */ BCK_GRD_F_STAGGER,
    /* 0x15 */ BCK_GRD_F_TACKLE,
    /* 0x16 */ BCK_GRD_F_TACKLE_B,
    /* 0x17 */ BCK_GRD_F_TACKLE_MISS,
    /* 0x18 */ BCK_GRD_F_TACKLE_SHOCK,
    /* 0x19 */ BCK_GRD_F_TACKLE_STAGGER,
    /* 0x1A */ BCK_GRD_F_TACKLE_WAIT,
    /* 0x1B */ BCK_GRD_F_TACKLESHOCK_RETURN,
    /* 0x1C */ BCK_GRD_F_TALK_A,
    /* 0x1D */ BCK_GRD_F_WAIT_B,
    /* 0x1E */ BCK_GRD_F_WIN,
    /* 0x1F */ BCK_GRD_F_WIN_POSE,
    /* 0x20 */ BCK_GRD_FH_MAD,
    /* 0x21 */ BCK_GRD_FH_SMILE,
    /* 0x22 */ BCK_GRD_FIGHT_STEP,
    /* 0x23 */ BCK_GRD_FIGHT_STEPL,
    /* 0x24 */ BCK_GRD_FIGHT_STEPR,
    /* 0x25 */ BCK_GRD_FIGHT_WAIT,
    /* 0x26 */ BCK_GRD_HAKEYOI,
    /* 0x27 */ BCK_GRD_HEAD_UP,
    /* 0x28 */ BCK_GRD_LOSE,
    /* 0x29 */ BCK_GRD_LOSE2,
    /* 0x2A */ BCK_GRD_MIAU,
    /* 0x2B */ BCK_GRD_PULLBACK,
    /* 0x2C */ BCK_GRD_PUNCH,
    /* 0x2D */ BCK_GRD_PUNCH_SHOCK,
    /* 0x2E */ BCK_GRD_PUNCHMISS_TACKLESHOCK,
    /* 0x2F */ BCK_GRD_PUNCHSHOCK_RETURN,
    /* 0x30 */ BCK_GRD_PUSHBACK,
    /* 0x31 */ BCK_GRD_SHIKO,
    /* 0x32 */ BCK_GRD_SHIKO_WAIT,
    /* 0x33 */ BCK_GRD_STAGGER,
    /* 0x34 */ BCK_GRD_STEP,
    /* 0x35 */ BCK_GRD_TACKLE,
    /* 0x36 */ BCK_GRD_TACKLE_B,
    /* 0x37 */ BCK_GRD_TACKLE_MISS,
    /* 0x38 */ BCK_GRD_TACKLE_SHOCK,
    /* 0x39 */ BCK_GRD_TACKLE_STAGGER,
    /* 0x3A */ BCK_GRD_TACKLE_WAIT,
    /* 0x3B */ BCK_GRD_TACKLESHOCK_RETURN,
    /* 0x3C */ BCK_GRD_TALK_L,
    /* 0x3D */ BCK_GRD_TALK_R,
    /* 0x3E */ BCK_GRD_TO_WAIT_C,
    /* 0x3F */ BCK_GRD_WAIT_A,
    /* 0x40 */ BCK_GRD_WAIT_B,
    /* 0x41 */ BCK_GRD_WAIT_C,
    /* 0x42 */ BCK_GRD_WALK_A,
    /* 0x43 */ BCK_GRD_WIN,
    /* 0x44 */ BCK_GRD_WIN_POSE,

    /* BMDR */
    /* 0x47 */ BMDR_GRD = 0x47,

    /* BTK */
    /* 0x4A */ BTK_GRD = 0x4A,

    /* BTP */
    /* 0x4D */ BTP_GRD = 0x4D,
    /* 0x4E */ BTP_GRD_F_DOWN,
    /* 0x4F */ BTP_GRD_F_HEAD_UP,
    /* 0x50 */ BTP_GRD_F_LOSE,
    /* 0x51 */ BTP_GRD_F_LOSE2,
    /* 0x52 */ BTP_GRD_F_PULLBACK,
    /* 0x53 */ BTP_GRD_F_PUNCH_SHOCK,
    /* 0x54 */ BTP_GRD_F_PUNCHMISS_TACKLESHOCK,
    /* 0x55 */ BTP_GRD_F_PUNCHSHOCK_RETURN,
    /* 0x56 */ BTP_GRD_F_PUSHBACK,
    /* 0x57 */ BTP_GRD_F_STAGGER,
    /* 0x58 */ BTP_GRD_F_TACKLE,
    /* 0x59 */ BTP_GRD_F_TACKLE_B,
    /* 0x5A */ BTP_GRD_F_TACKLE_MISS,
    /* 0x5B */ BTP_GRD_F_TACKLE_SHOCK,
    /* 0x5C */ BTP_GRD_F_TACKLE_STAGGER,
    /* 0x5D */ BTP_GRD_F_TACKLESHOCK_RETURN,
    /* 0x5E */ BTP_GRD_F_WAIT_B,
    /* 0x5F */ BTP_GRD_F_WIN,

    /* EVT */
    /* 0x62 */ EVT_EVENT_LIST = 0x62,
};

/* 80B41E18-80B41E1C -00001 0004+00 1/2 0/0 0/0 .data            l_resALink */
static char* l_resALink = "alSumou";

/* 80B41E1C-80B41E30 -00001 0014+00 9/13 0/0 0/0 .data            l_resName */
static char* l_resName[5] = {
    "Bou3",
    "grDS",
    NULL,
    NULL,
    NULL,
};

/* 80B41E30-80B41E44 000038 0014+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static int l_bmdGetParamList[5] = {
    BMDR_BOUS, BMDR_GRD, 0, 0, 0,
};

/* 80B41E44-80B4203C 00004C 01F8+00 1/0 0/0 0/0 .data            l_BouBckParamList */
static daNpc_GetParam1 l_BouBckParamList[63] = {
    {-1, 2}, {BCK_BOUS_F_DOWN, 2}, {BCK_BOUS_F_HEAD_UP, 0}, 
    {BCK_BOUS_F_LOSE, 0}, {BCK_BOUS_F_LOSE2, 0}, {BCK_BOUS_F_PULLBACK, 0}, 
    {BCK_BOUS_F_PUNCH, 0}, {BCK_BOUS_F_PUNCH_SHOCK, 0}, {BCK_BOUS_F_PUNCHMISS_TACKLESHOCK, 0}, 
    {BCK_BOUS_F_PUNCHSHOCK_RETURN, 0}, {BCK_BOUS_F_PUSHBACK, 0}, {BCK_BOUS_F_STAGGER, 2},
    {BCK_BOUS_F_TACKLE, 0}, {BCK_BOUS_F_TACKLE_B, 0}, {BCK_BOUS_F_TACKLE_MISS, 0}, 
    {BCK_BOUS_F_TACKLE_SHOCK, 0}, {BCK_BOUS_F_TACKLE_STAGGER, 2}, {BCK_BOUS_F_TACKLE_WAIT, 2}, 
    {BCK_BOUS_F_TACKLESHOCK_RETURN, 0}, {BCK_BOUS_F_TALK_A, 2}, {BCK_BOUS_F_WAIT_B, 2}, 
    {BCK_BOUS_F_WIN, 0}, {BCK_BOUS_F_WIN_POSE, 0}, {-1, 2},
    {-1, 2}, {-1, 2}, {-1, 2}, 
    {BCK_BOUS_WAIT_A, 2}, {-1, 2}, {BCK_BOUS_STEP, 0}, 
    {BCK_BOUS_MIAU, 2}, {BCK_BOUS_HAKEYOI, 0}, {BCK_BOUS_SHIKO, 0}, 
    {BCK_BOUS_FIGHT_WAIT, 2}, {BCK_BOUS_FIGHT_STEP, 0}, {BCK_BOUS_FIGHT_STEPL, 2},
    {BCK_BOUS_FIGHT_STEPR, 2}, {BCK_BOUS_PUNCH, 0}, {BCK_BOUS_PUNCH_SHOCK, 0}, 
    {BCK_BOUS_PUNCHMISS_TACKLESHOCK, 0}, {BCK_BOUS_PUNCHSHOCK_RETURN, 0}, {BCK_BOUS_TACKLE, 0}, 
    {BCK_BOUS_TACKLE_B, 0}, {BCK_BOUS_TACKLE_MISS, 0}, {BCK_BOUS_TACKLE_STAGGER, 2}, 
    {BCK_BOUS_TACKLE_WAIT, 2}, {BCK_BOUS_TACKLE_SHOCK, 0}, {BCK_BOUS_TACKLESHOCK_RETURN, 0},
    {BCK_BOUS_STAGGER, 2}, {BCK_BOUS_PULLBACK, 0}, {BCK_BOUS_PUSHBACK, 0}, 
    {BCK_BOUS_WIN, 0}, {BCK_BOUS_LOSE, 0}, {BCK_BOUS_LOSE2, 0}, 
    {BCK_BOUS_DOWN, 2}, {BCK_BOUS_HEAD_UP, 0}, {BCK_BOUS_WIN_POSE, 0}, 
    {BCK_BOUS_WAIT_B, 2}, {-1, 2}, {-1, 2},
    {-1, 2}, {-1, 2}, {-1, 2},
};

/* 80B4203C-80B42150 000244 0114+00 1/0 0/0 0/0 .data            l_BouFaceParamList */
static daNpc_GetParam2 l_BouFaceParamList[23] = {
    {-1, 0x44, 2}, {7, 0x45, 2}, {8, 0x46, 0},
    {9, 0x47, 0}, {10, 0x48, 0}, {11, 0x49, 0}, 
    {12, 0x4A, 0}, {13, 0x4B, 0}, {14, 0x4C, 0},
    {15, 0x4D, 0}, {16, 0x4E, 0}, {17, 0x4F, 2},
    {18, 0x50, 0}, {19, 0x51, 0}, {20, 0x52, 0},
    {21, 0x53, 0}, {22, 0x54, 2}, {23, 0x55, 2},
    {24, 0x56, 0}, {25, -1, 2}, {26, 0x57, 2},
    {27, 0x58, 0}, {28, 0x59, 0},
};

/* 80B42150-80B42208 000358 00B8+00 1/0 0/0 0/0 .data            l_BouBtpParamList */
static daNpc_GetParam1 l_BouBtpParamList[23] = {
    {BTP_BOUS, 2}, {BTP_BOUS_F_DOWN, 0}, 
    {BTP_BOUS_F_HEAD_UP, 0}, {BTP_BOUS_F_LOSE, 0}, 
    {BTP_BOUS_F_LOSE2, 0}, {BTP_BOUS_F_PULLBACK, 0},
    {BTP_BOUS_F_PUNCH, 0}, {BTP_BOUS_F_PUNCH_SHOCK, 0},
    {BTP_BOUS_F_PUNCHMISS_TACKLESHOCK, 0}, {BTP_BOUS_F_PUNCHSHOCK_RETURN, 0},
    {BTP_BOUS_F_PUSHBACK, 0}, {BTP_BOUS_F_STAGGER, 2},
    {BTP_BOUS_F_TACKLE, 0}, {BTP_BOUS_F_TACKLE_B, 0},
    {BTP_BOUS_F_TACKLE_MISS, 0}, {BTP_BOUS_F_TACKLE_SHOCK, 0},
    {BTP_BOUS_F_TACKLE_STAGGER, 2}, {BTP_BOUS_F_TACKLE_WAIT, 2},
    {BTP_BOUS_F_TACKLESHOCK_RETURN, 0}, {-1, 2},
    {BTP_BOUS_F_WAIT_B, 2}, {BTP_BOUS_F_WIN, 2},
    {BTP_BOUS_F_WIN_POSE, 0},
};

/* 80B42208-80B42210 000410 0008+00 1/0 0/0 0/0 .data            l_BouBtkParamList */
static daNpc_GetParam1 l_BouBtkParamList[1] = {
    {BTK_BOUS, 2},
};

/* 80B42210-80B42220 -00001 0010+00 1/0 0/0 0/0 .data            l_BouAnmParamList */
static WrestlerParamList l_BouAnmParamList = {
    l_BouBckParamList,
    l_BouFaceParamList,
    l_BouBtpParamList,
    l_BouBtkParamList,
};

/* 80B42220-80B42418 000428 01F8+00 1/0 0/0 0/0 .data            l_GrdBckParamList */
static daNpc_GetParam1 l_GrdBckParamList[63] = {
    {-1, 2}, {8, 2}, {9, 0}, {10, 0},
    {0x0B, 0}, {0x0D, 0}, {0x0E, 0}, {0x0F, 0},
    {0x10, 0}, {0x11, 0}, {0x12, 0}, {0x14, 2},
    {0x15, 0}, {0x16, 0}, {0x17, 0}, {0x18, 0},
    {0x19, 2}, {0x1A, 2}, {0x1B, 0}, {0x1C, 2},
    {0x1D, 2}, {0x1E, 0}, {0x1F, 0}, {0x0C, 0},
    {0x20, 2}, {0x13, 0}, {0x21, 2}, {0x3F, 2},
    {-1, 2}, {0x34, 0}, {0x2A, 2}, {0x26, 0},
    {0x31, 0}, {0x25, 2}, {0x22, 0}, {0x23, 2},
    {0x24, 2}, {0x2C, 0}, {0x2D, 0}, {0x2E, 0},
    {0x2F, 0}, {0x35, 0}, {0x36, 0}, {0x37, 0},
    {0x39, 2}, {0x3A, 2}, {0x38, 0}, {0x3B, 0},
    {0x33, 2}, {0x2B, 0}, {0x30, 0}, {0x43, 0},
    {0x28, 0}, {0x29, 0}, {0x07, 2}, {0x27, 0},
    {0x44, 0}, {0x40, 2}, {0x3E, 0}, {0x41, 2},
    {0x3C, 0}, {0x3D, 0}, {0x42, 2},
};

/* 80B42418-80B4252C 000620 0114+00 1/0 0/0 0/0 .data            l_GrdFaceParamList */
static daNpc_GetParam2 l_GrdFaceParamList[23] = {
    {-1, 0x4D, 2}, {8, 0x4E, 2}, {9, 0x4F, 0},
    {0x0A, 0x50, 0}, {0x0B, 0x51, 0}, {0x0D, 0x52, 0}, 
    {0x0E, -1, 0}, {0x0F, 0x53, 0}, {0x10, 0x54, 0}, 
    {0x11, 0x55, 0}, {0x12, 0x56, 0}, {0x14, 0x57, 2},
    {0x15, 0x58, 0}, {0x16, 0x59, 0}, {0x17, 0x5A, 0},
    {0x18, 0x5B, 0}, {0x19, 0x5C, 2}, {0x1A, -1, 2}, 
    {0x1B, 0x5D, 0}, {0x1C, -1, 2}, {0x1D, 0x5E, 2}, 
    {0x1E, 0x5F, 0}, {0x1F, -1, 0},
};

/* 80B4252C-80B425E4 000734 00B8+00 1/0 0/0 0/0 .data            l_GrdBtpParamList */
static daNpc_GetParam1 l_GrdBtpParamList[23] = {
    {0x4D, 2}, {0x4E, 2}, {0x4F, 0}, {0x50, 0},
    {0x51, 0}, {0x52, 0}, {-1, 0}, {0x53, 0},
    {0x54, 0}, {0x55, 0}, {0x56, 0}, {0x57, 2},
    {0x58, 0}, {0x59, 0}, {0x5A, 0}, {0x5B, 0},
    {0x5C, 2}, {-1, 2}, {0x5D, 0}, {-1, 2},
    {0x5E, 2}, {0x5F, 0}, {-1, 0},
};

/* 80B425E4-80B425EC 0007EC 0008+00 1/0 0/0 0/0 .data            l_GrdBtkParamList */
static daNpc_GetParam1 l_GrdBtkParamList[1] = {
    {0x4A, 2},
};

/* 80B425EC-80B425FC -00001 0010+00 1/0 0/0 0/0 .data            l_GrdAnmParamList */
static WrestlerParamList l_GrdAnmParamList = {
    l_GrdBckParamList,
    l_GrdFaceParamList,
    l_GrdBtpParamList,
    l_GrdBtkParamList,
};

/* 80B425FC-80B42604 -00001 0008+00 0/1 0/0 0/0 .data            l_anmList */
static WrestlerParamList* l_anmList[2] = {
    &l_BouAnmParamList,
    &l_GrdAnmParamList,
};

/* 80B42604-80B42620 -00001 001C+00 2/5 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[7] = {
    NULL,
    "GRDS_ENTRY",
    "GRDS_ENTRY2",
    "GRDS_ENTRY3",
    "GRDS_ENTRY4",
    "GRDS_ENTRY5",
    "GRDS_LOSE",
};

/* 80B42620-80B42624 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Wrestler";

/* 80B42E24-80B42E28 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcWrestler_Param_c l_HIO;

/* 80B4266C-80B426C0 000874 0054+00 0/2 0/0 0/0 .data            mEvtSeqList__15daNpcWrestler_c */
daNpcWrestler_c::EventFn daNpcWrestler_c::mEvtSeqList[7] = {
    NULL,
    &daNpcWrestler_c::EvCut_grDSEntry,
    &daNpcWrestler_c::EvCut_grDSEntry2,
    &daNpcWrestler_c::EvCut_grDSEntry3_4,
    &daNpcWrestler_c::EvCut_grDSEntry3_4,
    &daNpcWrestler_c::EvCut_grDSEntry5,
    &daNpcWrestler_c::EvCut_grDSLose,
};

/* 80B416DC-80B41870 000000 0194+00 35/35 0/0 0/0 .rodata          m__21daNpcWrestler_Param_c */
const daNpcWrestler_HIOParam daNpcWrestler_Param_c::m = {
    220.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    40.0f,
    0.0f,
    0.0f,
    30.0f,
    -30.0f,
    30.0f,
    -10.0f,
    30.0f,
    -30.0f,
    0.6f,
    6.0f,
    3,
    6,
    19,
    6,
    80.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    0,
    30,
    60,
    0,
    3,
    10,
    0,
    0.5f,
    180.0f,
    500.0f,
    0.05f,
    15,
    0,
    0.0f,
    30.0f,
    20.0f,
    16.0f,
    150.0f,
    10.0f,
    400,
    400,
    0xFF00,
    0,
    400.0f,
    14,
    11,
    0.0f,
    5.0f,
    360.0f,
    0.0f,
    1.0f,
    240.0f,
    0.0f,
    5.0f,
    350.0f,
    0.0f,
    10.0f,
    240.0f,
    0xA8C,
    0x1004,
    0xA28,
    0x11F8,
    44.0f,
    30.0f,
    40.0f,
    150.0f,
    35.0f,
    55.0f,
    800.0f,
    13.0f,
    230.0f,
    140.0f,
    150.0f,
    20,
    0x258,
    0x28,
    20,
    12,
    // Bo chances[0]:
    20.0f,      // lateral
    30.0f,      // hit
    20.0f,      // tackle
    30.0f,      // wait
    // Bo chances[1]:
    25.0f,
    50.0f,
    25.0f,
    0.0f,
    //
    220.0f,
    35.0f,
    85.0f,
    1100.0f,
    10.0f,
    257.0f,
    180.0f,
    150.0f,
    20,
    0x258,
    30,
    15,
    12,
    // Goron chances[0]:
    20.0f,
    20.0f,
    60.0f,
    0.0f,
    // Goron chances[1]:
    20.0f,
    20.0f,
    60.0f,
    0.0f,
};

daNpcWrestler_c::daNpcWrestler_c() {
    // empty function
}

daNpcWrestler_c::~daNpcWrestler_c() {
    dComIfG_resDelete(&mPhase, l_resALink);
    dComIfG_resDelete(&mPhase2, l_resName[mType]);
    dComIfG_TimerDeleteRequest(9);
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80B2F688-80B2F974 0004E8 02EC+00 1/1 0/0 0/0 .text            Create__15daNpcWrestler_cFv */
cPhs__Step daNpcWrestler_c::Create() {
    fopAcM_SetupActor(this, daNpcWrestler_c);

    mType = getType();
    mMsgNo = getMessageNo();
    field_0xe04 = l_anmList[mType];

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_resALink);
    if (phase == cPhs_COMPLEATE_e) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhase2, l_resName[mType]);
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, mType == 0 ? 0x49B0 : 0x3A40)) {
            return cPhs_ERROR_e;
        }

        field_0xbd8 = &daNpcWrestler_Param_c::m;
        field_0xbdc = &field_0xbd8->mTypeParams[mType];

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -160.0f, -50.0f, -160.0f, 160.0f, 220.0f, 160.0f);
        reset();

        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcchCir.SetWall(field_0xbdc->mWallR, field_0xbdc->mWallH);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                    fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(field_0xbd8->common.weight, 0, this);
        field_0xc90.Set(daNpcF_c::mCcDCyl);
        field_0xc90.SetStts(&mCcStts);
        field_0xc90.SetTgType(0);
        field_0xc90.SetTgSPrm(0);
        field_0xc90.SetH(field_0xbdc->field_0x0);
        field_0xc90.SetR(field_0xbdc->mWallR);
        
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();
        Execute();
        dTimer_createTimer(9, 0x989298, 0, 0, 210.0f, 410.0f, 32.0f, 419.0f);
    }

    return phase;
}

/* 80B2F974-80B2FBF4 0007D4 0280+00 1/1 0/0 0/0 .text            CreateHeap__15daNpcWrestler_cFv */
int daNpcWrestler_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resName[mType], l_bmdGetParamList[mType]);
    JUT_ASSERT(830, NULL != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(20, false)) {
        return 0;
    }
    setMotionAnm(57, 0.0f);

    return 1;
}

/* 80B2FDB0-80B2FDE4 000C10 0034+00 1/1 0/0 0/0 .text            Delete__15daNpcWrestler_cFv */
int daNpcWrestler_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpcWrestler_c();
    return 1;
}

/* 80B2FDE4-80B2FE1C 000C44 0038+00 2/2 0/0 0/0 .text            Execute__15daNpcWrestler_cFv */
int daNpcWrestler_c::Execute() {
    checkArenaInfo();
    execute();
    return 1;
}

/* 80B2FE1C-80B2FE84 000C7C 0068+00 1/1 0/0 0/0 .text            Draw__15daNpcWrestler_cFv */
int daNpcWrestler_c::Draw() {
    if (mWrestlerNoDraw != 0) {
        return 0;
    }

    J3DModelData* model_data = mpMorf->getModel()->getModelData();
    model_data->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    return draw(FALSE, FALSE, field_0xbdc->field_0xc, NULL, FALSE);
}

/* 80B2FE84-80B30150 000CE4 02CC+00 1/1 0/0 0/0 .text            ctrlJoint__15daNpcWrestler_cFP8J3DJointP8J3DModel */
int daNpcWrestler_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    J3DJoint* my_joint = i_joint;
    int jnt_no = my_joint->getJntNo();
    int dbg_0x40 = mType == 0 ? 0 : 0;
    int dbg_0x3c = mType == 0 ? 1 : 1;
    int dbg_0x38 = mType == 0 ? 3 : 3;
    int dbg_0x34 = mType == 0 ? 4 : 4;
    int iVar1[3] = {dbg_0x3c, dbg_0x38, dbg_0x34};

    if (jnt_no == dbg_0x40) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(dbg_0x3c));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(dbg_0x38));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(dbg_0x34));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));
    if (mType == 0) {
        switch (jnt_no) {
            case 1:
            case 3:
            case 4:
                setLookatMtx(jnt_no, iVar1, field_0xbd8->common.neck_rotation_ratio);
                break;

            case 2:
                break;
        }
    } else {
        switch (jnt_no) {
            case 1:
            case 3:
            case 4:
                setLookatMtx(jnt_no, iVar1, field_0xbd8->common.neck_rotation_ratio);
                break;

            case 2:
                break;
        }
    }

    if (jnt_no == dbg_0x3c) {
        mDoMtx_stack_c::YrotM(field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(-field_0x908[0].x);
    } else if (jnt_no == dbg_0x34) {
        mDoMtx_stack_c::YrotM(field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    int dbg_0x30 = mType == 0 ? 5 : 5;
    int dbg_0x2c = mType == 0 ? 8 : 7;
    if ((jnt_no == dbg_0x30 - 1 || jnt_no == dbg_0x2c) && (mAnmFlags & 0x100)) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 80B30150-80B30170 000FB0 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__15daNpcWrestler_cFP10fopAc_ac_c */
int daNpcWrestler_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpcWrestler_c* i_this = (daNpcWrestler_c*)a_this;
    return i_this->CreateHeap();
}

/* 80B30170-80B301BC 000FD0 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__15daNpcWrestler_cFP8J3DJointi */
int daNpcWrestler_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcWrestler_c* i_this = reinterpret_cast<daNpcWrestler_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 80B301BC-80B3023C 00101C 0080+00 0/0 0/0 1/1 .text            checkStartUp__15daNpcWrestler_cFv */
bool daNpcWrestler_c::checkStartUp() {
    return chkAction(&daNpcWrestler_c::gotoArena) && field_0xe96 == 2;
}

/* 80B405E8-80B40B3C 011448 0554+00 1/1 0/0 0/0 .text            setAttnPos__15daNpcWrestler_cFv */
inline void daNpcWrestler_c::setAttnPos() {
    static cXyz eyeOffset(-10.0f, 10.0f, 0.0f);
    cXyz* attnPos = NULL;
    cXyz sp44, sp50, sp5c;

    mDoMtx_stack_c::YrotS(field_0x990);
    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        sp50.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&sp50, &sp5c);
        field_0x908[i].x = -sp5c.z;
        field_0x908[i].z = -sp5c.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);
    if (mLookMode == 1) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    int dbg_0x20 = mType == 0 ? 4 : 4;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(dbg_0x20));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.y = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &sp50);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp50);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp50);

    attnPos = mLookAt.getAttnPos();
    if (attnPos != NULL) {
        sp44 = *attnPos - eyePos;
        mEyeAngle.y = - mLookatAngle[2].y -mCurAngle.y;
        mEyeAngle.y += cM_atan2s(sp44.x, sp44.z);
        mEyeAngle.x = -cM_atan2s(sp44.y, sp44.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    cXyz sp68;
    f32 fVar1 = field_0xbd8->common.attention_offset;
    sp44.set(0.0f, 0.0f, field_0xbdc->field_0x10);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&sp44, &sp68);

    if (!(chkAction(&daNpcWrestler_c::wait)
        && chkAction(&daNpcWrestler_c::talk))) {
        attention_info.position.set(sp68.x, sp68.y + fVar1, sp68.z);
    } else {
        attention_info.position.set(sp68.x, 200.0f, sp68.z);
    }

    if (chkAction(&daNpcWrestler_c::wait)
        || chkAction(&daNpcWrestler_c::talk)) {
        field_0xc90.SetC(sp68);
#ifdef DEBUG
        field_0xc90.SetH(field_0xbdc->field_0x0);
        field_0xc90.SetR(field_0xbdc->mWallR);
#endif
        dComIfG_Ccsp()->Set(&field_0xc90);
    }
}

/* 80B3023C-80B30654 00109C 0418+00 2/0 0/0 0/0 .text setExpressionAnm__15daNpcWrestler_cFib */
inline bool daNpcWrestler_c::setExpressionAnm(int param_1, bool param_2) {
    mAnmFlags &= 0xFFFFE03F;

    J3DAnmTransform* anmTransform = (field_0xe04->bck_list[param_1].fileIdx >= 0) ?
        (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], field_0xe04->bck_list[param_1].fileIdx) : NULL;

    int iVar1 = field_0xe04->bck_list[param_1].arcIdx;
    bool bVar1 = false;
    switch (param_1) {
        case 0:
            bVar1 = setExpressionBtp(0);
            break;

        case 1:
            bVar1 = setExpressionBtp(1);
            break;

        case 2:
            bVar1 = setExpressionBtp(2);
            break;

        case 3:
            bVar1 = setExpressionBtp(3);
            break;

        case 4:
            bVar1 = setExpressionBtp(4);
            break;

        case 5:
            bVar1 = setExpressionBtp(5);
            break;

        case 6:
            bVar1 = setExpressionBtp(6);
            break;

        case 7:
            bVar1 = setExpressionBtp(7);
            break;

        case 8:
            bVar1 = setExpressionBtp(8);
            break;

        case 9:
            bVar1 = setExpressionBtp(9);
            break;

        case 10:
            bVar1 = setExpressionBtp(10);
            break;

        case 11:
            bVar1 = setExpressionBtp(11);
            break;

        case 12:
            bVar1 = setExpressionBtp(12);
            break;

        case 13:
            bVar1 = setExpressionBtp(13);
            break;

        case 14:
            bVar1 = setExpressionBtp(14);
            break;

        case 15:
            bVar1 = setExpressionBtp(15);
            break;

        case 16:
            bVar1 = setExpressionBtp(16);
            break;

        case 17:
            bVar1 = setExpressionBtp(17);
            break;

        case 18:
            bVar1 = setExpressionBtp(18);
            break;

        case 19:
            bVar1 = setExpressionBtp(0);
            break;

        case 20:
            bVar1 = setExpressionBtp(20);
            break;

        case 21:
            bVar1 = setExpressionBtp(21);
            break;

        case 22:
            bVar1 = setExpressionBtp(22);
            break;

        case 23:
            bVar1 = setExpressionBtp(0);
            break;

        case 24:
            bVar1 = setExpressionBtp(0);
            break;

        case 25:
            bVar1 = setExpressionBtp(0);
            break;

        case 26:
            bVar1 = setExpressionBtp(0);
            break;

        default:
            anmTransform = NULL;
    }

    if (!bVar1) {
        return false;
    }

    if (anmTransform == NULL) {
        return true;
    }

    if (setBckAnm(anmTransform, 1.0f, iVar1, 0, -1, param_2)) {
        mAnmFlags |= 0x140;
        mExpressionLoops = 0;

        return true;
    }

    // "%s: Failed to register facial expression Bck animation!\n"
    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", "d_a_npc_wrestler.cpp");
    return false;
}

/* 80B30654-80B3074C 0014B4 00F8+00 1/0 0/0 0/0 .text setExpressionBtp__15daNpcWrestler_cFi */
inline bool daNpcWrestler_c::setExpressionBtp(int param_1) {
    J3DAnmTexPattern* anmTexPattern = (field_0xe04->btp_list[param_1].fileIdx >= 0) ?
                    getTexPtrnAnmP(l_resName[mType], field_0xe04->btp_list[param_1].fileIdx) : NULL;

    int iVar1 = field_0xe04->btp_list[param_1].arcIdx;
    mAnmFlags &= 0xFFFFF57F;

    if (anmTexPattern == NULL) {
        return 1;
    }

    if (setBtpAnm(anmTexPattern, mpMorf->getModel()->getModelData(), 1.0f, iVar1)) {
        mAnmFlags |= 0x280;

        if (param_1 == 0 || param_1 == 20) {
            mAnmFlags |= 0x800;
        }

        return 1;
    }

    // "%s: Failed to register facial BTP animation!\n"
    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", "d_a_npc_wrestler.cpp");
    return 0;
}

inline void daNpcWrestler_c::setBackToLiving() {
    if (mType != 1) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        daNpcBouS_c* bou = (daNpcBouS_c*)fpcM_SearchByID(parentActorID);
        JUT_ASSERT(2205, bou != NULL);

        bou->setMessageNo(7);
        bou->setForcibleTalk();
        bou->onDispFlag();

        s16 sVar1 = fopAcM_GetHomeAngle_p(bou)->y + 0x8000;
        mDoMtx_stack_c::transS(fopAcM_GetPosition(bou));
        mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(bou)->y);
        cXyz sp28(0.0f, 0.0f, field_0xbdc->field_0x1c);
        mDoMtx_stack_c::multVec(&sp28, &sp28);

        player->setPlayerPosAndAngle(&sp28, sVar1, 0);

        if (mType == 0) {
            player->setClothesChange(0);
            OS_REPORT("リンクさん！出番です！着替えてください！\n"); // Link! It's your turn! Get changed!
        }

        if (daNpcF_chkTmpBit(0x2F)) {
            fopAcM_onSwitch(this, 0x46);
        }

        field_0xe99 = 1;
    }
}

/* 80B3074C-80B308B0 0015AC 0164+00 1/0 0/0 0/0 .text            setMotionAnm__15daNpcWrestler_cFif */
void daNpcWrestler_c::setMotionAnm(int param_1, f32 param_2) {
    J3DAnmTransformKey* anmTransformKey = (field_0xe04->bck_list[param_1].fileIdx >= 0)?
        getTrnsfrmKeyAnmP(l_resName[mType], field_0xe04->bck_list[param_1].fileIdx) : NULL;

    J3DAnmTextureSRTKey* anmTextureSRTKey = (field_0xe04->btk_list[0].fileIdx >= 0) ?
        getTexSRTKeyAnmP(l_resName[mType], field_0xe04->btk_list[0].fileIdx) : NULL;

    int bck_arc = field_0xe04->bck_list[param_1].arcIdx;
    int btk_arc = field_0xe04->btk_list[0].arcIdx;
    mAnmFlags &= 0xFFFFFFC0;
    if (anmTransformKey != NULL && setMcaMorfAnm(anmTransformKey, 1.0f, param_2,
                                         bck_arc, 0, -1)) {
        mAnmFlags |= 0x9;
        mMotionLoops = 0;
    }

    if (anmTextureSRTKey != NULL && setBtkAnm(anmTextureSRTKey, mpMorf->getModel()->getModelData(),
                                      1.0f, btk_arc)) {
        mAnmFlags |= 0x12;
    }
}

/* 80B308B0-80B30AD8 001710 0228+00 1/1 0/0 0/0 .text            reset__15daNpcWrestler_cFv */
void daNpcWrestler_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookAt.initialize();

    for (int i = 0; i < 2; i++) {
        mActorMngr[i].initialize();
    }

    field_0xe80 = 0;
    field_0xe84 = 0;
    field_0xdcc = 0;
    mLookMode = -1;
    field_0xe96 = 0;
    field_0xe8c = -1.0f;
    mOrderEvtNo = 0;

    if (mType == 1 && daNpcF_chkEvtBit(0x3F)) {
        if (daNpcF_chkEvtBit(0x3E)) {
            current.pos.set(-216.24759f, -172.1f, 806.0135f);
            old.pos = current.pos;
            setAngle(0x2CD3);
            home.angle.y = 0x2CD3;
        } else {
            current.pos.set(0.0f, -24.54f, 100.0f);
            old.pos = current.pos;
            setAngle(0);
        }
    }

    speedF = 0.0f;
    speed.setall(0.0f);
    mArenaInfo.chkFlag = 0;
    field_0xe78 = -1;
    field_0xe8c = field_0xbd8->common.morf_frame;

    if (mType == 0 && getStatusNo() != 0) {
        checkArenaInfo();
        mItemNo = getStatusNo();
        setAction(&daNpcWrestler_c::gotoArena);
    } else {
        setAction(&daNpcWrestler_c::wait);
    }

    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;
}

inline void daNpcWrestler_c::setNextSumouEvent(int i_sumouEventNo) {
    if (i_sumouEventNo == -1) {
        i_sumouEventNo = mItemNo;
    }

    OS_REPORT("相撲イベント要求 ステータスNo=%d\n", i_sumouEventNo);
    switch (i_sumouEventNo) {
        case 1:
            return;

        case 2:
            setAction(&daNpcWrestler_c::demoSumouReady);
            return;

        case 3:
            setAction(&daNpcWrestler_c::sumouReady);
            return;

        case 4:
            setAction(&daNpcWrestler_c::gotoLiving);
            return;

        case 5:
            return;
    }

    setAction(&daNpcWrestler_c::wait);
}

/* 80B30AD8-80B30B80 001938 00A8+00 1/1 0/0 0/0 .text            setAction__15daNpcWrestler_cFM15daNpcWrestler_cFPCvPvPv_b */
inline int daNpcWrestler_c::setAction(actionFunc action) {
    field_0xe96 = 3;
    if (field_0xdcc != NULL) {
        (this->*field_0xdcc)(NULL);
    }

    field_0xe96 = 0;
    field_0xdcc = action;
    if (field_0xdcc != NULL) {
        (this->*field_0xdcc)(NULL);
    }

    return 1;
}

/* 80B30B80-80B30BEC 0019E0 006C+00 1/1 0/0 0/0 .text            s_sub1__FPvPv */
static void* s_sub1(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Tag_Arena && ((daNpcWrestler_c*)i_data)->checkArenaSub((daNpcWrestler_c*)i_actor)) {
        return i_actor;
    }

    return NULL;
}

/* 80B30BEC-80B30CA4 001A4C 00B8+00 2/2 0/0 0/0 .text            checkArenaInfo__15daNpcWrestler_cFv */
void daNpcWrestler_c::checkArenaInfo() {
    if (mArenaInfo.chkFlag == 0) {
        base_process_class* bpc_p = fpcM_Search(s_sub1, this);
        if (bpc_p != NULL) {
            daTagArena_c* arena = (daTagArena_c*) bpc_p;
            mArenaPos.x = arena->getArenaPos().x;
            mArenaPos.y = arena->getArenaPos().y;
            mArenaPos.z = arena->getArenaPos().z;
            mArenaExtent = arena->getArenaExtent();
            mArenaAngle = arena->getArenaAngle();
            mArenaInfo.chkFlag = 1;
        }
    }
}

/* 80B30CA4-80B30CC8 001B04 0024+00 1/1 0/0 0/0 .text            checkArenaSub__15daNpcWrestler_cFP10fopAc_ac_c */
bool daNpcWrestler_c::checkArenaSub(fopAc_ac_c* actor) {
    daTagArena_c* arena = (daTagArena_c*)actor;
    if (getArenaNo() == arena->getArenaNo()) {
        return true;
    }

    return false;
}

/* 80B30CC8-80B30D48 001B28 0080+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void* s_sub2(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_NPC_GRA) {
        daNpc_grA_c* goron = (daNpc_grA_c*)i_actor;
        if (goron->getType() == 3) {
            goron->setTagJump();
        } else if (goron->getType() == 4 && goron->getMode1() != 1) {
            goron->setHomeJump();
        }
    }

    return NULL;
}

/* 80B30D48-80B30F00 001BA8 01B8+00 2/2 0/0 0/0 .text            setOnToArena__15daNpcWrestler_cFf */
void daNpcWrestler_c::setOnToArena(f32 param_1) {
    if (mType == 0) {
        daNpcBouS_c* bou = (daNpcBouS_c*)fpcM_SearchByID(parentActorID);
        JUT_ASSERT(2166, bou != NULL);
        bou->setHome();
        bou->offDispFlag();
    } else if (mType == 1) {
        fpcM_Search(s_sub2, this);
    }

    JUT_ASSERT(2175, mArenaInfo.chkFlag);

    current.pos.set(0.0f, 0.0f, -param_1);
    mDoMtx_stack_c::transS(mArenaPos);
    mDoMtx_stack_c::YrotM(mArenaAngle);
    mDoMtx_stack_c::multVec(&current.pos, &current.pos);
    old.pos.set(current.pos);
    setAngle(mArenaAngle);

    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp3c(0.0f, 0.0f, param_1);
    mDoMtx_stack_c::multVec(&sp3c, &sp3c);
    player->setPlayerPosAndAngle(&sp3c, mArenaAngle + 0x8000, 0);

    if (mType == 0) {
        player->setClothesChange(1);
    }
}

inline void daNpcWrestler_c::setLookMode(int mode) {
    if (mode > -1 && mode < 4 && mode != mLookMode) {
        mLookMode = mode;
    }
}

inline BOOL daNpcWrestler_c::chkFindPlayer() {
    BOOL bVar1 = FALSE;
    if (mActorMngr[0].getActorP() == NULL) {
        bVar1 = chkPlayerInSpeakArea(this);
    } else {
        bVar1 = chkPlayerInTalkArea(this);
    }

    if (bVar1) {
        setLookMode(2);
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        setLookMode(0);
        mActorMngr[0].remove();
    }

    return bVar1;
}

inline BOOL daNpcWrestler_c::step(s16 param_1, int param_2) {
    if (mTurnMode == 0) {
        s16 ang_diff = param_1 - mCurAngle.y;
        if (mCurAngle.y == param_1) {
            mTurnMode++;
        } else if (param_2 != 0) {
            if ((int) fabsf(cM_sht2d(ang_diff)) > 40) {
                setExpression(5, -1.0f);
                setMotion(6, field_0xbd8->common.morf_frame, 0);
            }
        }

        mTurnTargetAngle = param_1;
        mTurnAmount = 0;
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, 15.0f, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            mOldAngle.y = mCurAngle.y;
            mCurAngle.y = current.angle.y;
            shape_angle.y = current.angle.y;
        }
    }

    return (1 < mTurnMode);
}

inline void daNpcWrestler_c::playExpression() {
    daNpcF_anmPlayData playData0 = {0x13, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&playData0};
    daNpcF_anmPlayData playData1 = {0x17, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData* pDat1[1] = {&playData1};
    daNpcF_anmPlayData playData2 = {0x19, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData3 = {0x1A, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[2] = {&playData2, &playData3};
    daNpcF_anmPlayData playData4 = {0x18, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&playData4};
    daNpcF_anmPlayData playData5 = {0x1A, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&playData5};
    daNpcF_anmPlayData playData6 = {0, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&playData6};

    daNpcF_anmPlayData** expressionAnm[6] = {
        pDat0,
        pDat1,
        pDat2,
        pDat4,
        pDat5,
        pDat6,
    };

    if (mExpression >= 0 && mExpression < 6) {
        playExpressionAnm(expressionAnm);
    }
}

/* 80B3FCE8-80B404FC 010B48 0814+00 1/2 0/0 0/0 .text            playMotion__15daNpcWrestler_cFv */
inline void daNpcWrestler_c::playMotion() {
    daNpcF_anmPlayData playData0 = {0x39, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&playData0};
    daNpcF_anmPlayData playData1 = {0x39, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[1] = {&playData1};
    daNpcF_anmPlayData playData2 = {0x3A, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData3 = {0x3B, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[2] = {&playData2, &playData3};
    daNpcF_anmPlayData playData4 = {0x3B, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&playData4};
    daNpcF_anmPlayData playData5 = {0x3C, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData6 = {0x3B, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[2] = {&playData5, &playData6};
    daNpcF_anmPlayData playData7 = {0x3D, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData8 = {0x3B, field_0xbd8->common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[2] = {&playData7, &playData8};
    daNpcF_anmPlayData playData9 = {0x1D, 4.0f, 0};
    daNpcF_anmPlayData* pDat9[1] = {&playData9};
    daNpcF_anmPlayData playData10 = {0x20, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData11 = {0x1E, 24.0f, 0};
    daNpcF_anmPlayData* pDat10[3] = {&playData10, &playData11, NULL};
    daNpcF_anmPlayData playData12 = {0x21, 0.0f, 0};
    daNpcF_anmPlayData* pDat12[1] = {&playData12};
    daNpcF_anmPlayData playData13 = {0x22, 6.0f, 1};
    daNpcF_anmPlayData* pDat13[2] = {&playData13, NULL};
    daNpcF_anmPlayData playData14 = {0x23, 6.0f, 0};
    daNpcF_anmPlayData* pDat14[1] = {&playData14};
    daNpcF_anmPlayData playData15 = {0x24, 6.0f, 0};
    daNpcF_anmPlayData* pDat15[1] = {&playData15};
    daNpcF_anmPlayData playData16 = {0x25, 6.0f, 1};
    daNpcF_anmPlayData* pDat16[2] = {&playData16, NULL};
    daNpcF_anmPlayData playData17 = {0x29, 6.0f, 1};
    daNpcF_anmPlayData* pDat17[2] = {&playData17, NULL};
    daNpcF_anmPlayData playData18 = {0x30, 0.0f, 0};
    daNpcF_anmPlayData* pDat18[1] = {&playData18};
    daNpcF_anmPlayData playData19 = {0x26, 6.0f, 1};
    daNpcF_anmPlayData* pDat19[2] = {&playData19, NULL};
    daNpcF_anmPlayData playData20 = {0x27, 6.0f, 1};
    daNpcF_anmPlayData* pDat20[2] = {&playData20, NULL};
    daNpcF_anmPlayData playData21 = {0x28, 6.0f, 1};
    daNpcF_anmPlayData* pDat21[2] = {&playData21, NULL};
    daNpcF_anmPlayData playData22 = {0x2B, 6.0f, 1};
    daNpcF_anmPlayData* pDat22[2] = {&playData22, NULL};
    daNpcF_anmPlayData playData23 = {0x2E, 0.0f, 1};
    daNpcF_anmPlayData* pDat23[2] = {&playData23, NULL};
    daNpcF_anmPlayData playData24 = {0x2F, 6.0f, 1};
    daNpcF_anmPlayData* pDat24[2] = {&playData24, NULL};
    daNpcF_anmPlayData playData25 = {0x2C, 0.0f, 0};
    daNpcF_anmPlayData* pDat25[1] = {&playData25};
    daNpcF_anmPlayData playData26 = {0x2D, 6.0f, 0};
    daNpcF_anmPlayData* pDat26[1] = {&playData26};
    daNpcF_anmPlayData playData27 = {0x31, 6.0f, 0};
    daNpcF_anmPlayData* pDat27[1] = {&playData27};
    daNpcF_anmPlayData playData28 = {0x32, 6.0f, 0};
    daNpcF_anmPlayData* pDat28[1] = {&playData28};
    daNpcF_anmPlayData playData29 = {0x38, 0.0f, 1};
    daNpcF_anmPlayData playData30 = {0x39, 0.0f, 0};
    daNpcF_anmPlayData* pDat29[3] = {&playData29, &playData30, NULL};
    daNpcF_anmPlayData playData31 = {0x34, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData32 = {0x36, 0.0f, 0};
    daNpcF_anmPlayData* pDat31[3] = {&playData31, &playData32, NULL};
    daNpcF_anmPlayData playData33 = {0x35, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData34 = {0x36, 0.0f, 0};
    daNpcF_anmPlayData* pDat33[3] = {&playData33, &playData34, NULL};
    daNpcF_anmPlayData playData35 = {0x2A, 6.0f, 1};
    daNpcF_anmPlayData* pDat35[2] = {&playData35, NULL};
    daNpcF_anmPlayData playData36 = {0x37, field_0xbd8->common.morf_frame, 1};
    daNpcF_anmPlayData playData37 = {0x1B, 6.0f, 0};
    daNpcF_anmPlayData* pDat36[2] = {&playData36, &playData37};

    daNpcF_anmPlayData** motionAnm[30] = {
        pDat0,
        pDat1,
        pDat2,
        pDat4,
        pDat5,
        pDat7,
        pDat9,
        pDat10,
        pDat12,
        pDat13,
        pDat14,
        pDat15,
        pDat16,
        pDat17,
        pDat18,
        pDat19,
        pDat20,
        pDat21,
        pDat22,
        pDat23,
        pDat24,
        pDat25,
        pDat26,
        pDat27,
        pDat28,
        pDat29,
        pDat31,
        pDat33,
        pDat35,
        pDat36
    };

    if (mMotion >= 0 && mMotion < 30) {
        field_0xe92 = mMotionPhase;
        playMotionAnm(motionAnm);
    }
}

/* 80B40B3C-80B40D1C 01199C 01E0+00 1/1 0/0 0/0 .text            lookat__15daNpcWrestler_cFv */
inline void daNpcWrestler_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL snap = FALSE;
    f32 fVar1 = field_0xbd8->common.body_angleX_min;
    f32 fVar2 = field_0xbd8->common.body_angleX_max;
    f32 fVar3 = field_0xbd8->common.body_angleY_min;
    f32 fVar4 = field_0xbd8->common.body_angleY_max;
    f32 fVar5 = field_0xbd8->common.head_angleX_min;
    f32 fVar6 = field_0xbd8->common.head_angleX_max;
    f32 fVar7 = field_0xbd8->common.head_angleY_min;
    f32 fVar8 = field_0xbd8->common.head_angleY_max;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookat_pos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookat_angle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    cXyz spe8;

    switch (mLookMode) {
        case LOOK_NONE:
            break;

        case LOOK_RESET:
            snap = TRUE;
            break;

        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            player = daPy_getPlayerActorClass();

            if (mLookMode == LOOK_PLAYER_TALK) {
                fVar7 = -80.0f;
                fVar8 = 80.0f;
            }
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (mLookMode != 2 && mLookMode != 3) {
            mLookPos.y -= 40.0f;
        }

        mLookAt.setAttnPos(&mLookPos);
    } else {
        mLookAt.setAttnPos(NULL);
    }

    mLookAt.setParam(fVar1, fVar2, fVar3, fVar4, 0.0f, 0.0f, 0.0f, 0.0f, fVar5, fVar6, fVar7, fVar8, mCurAngle.y, lookat_pos);
    mLookAt.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, FALSE);
}

/* 80B33B3C-80B34654 00499C 0B18+00 1/1 0/0 0/0 .text            setNextAction__15daNpcWrestler_cFv */
inline bool daNpcWrestler_c::setNextAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (mType == 1 && !player->checkEquipHeavyBoots()) {
        if (player->checkSumouSlideLeft() || player->checkSumouSlideRight() || player->checkSumouLeftMove() || player->checkSumouRightMove()) {
            setAction(&daNpcWrestler_c::sumouPunchChaseHit);
            return true;
        }

        if (player->checkSumouPunchDraw()) {
            setAction(&daNpcWrestler_c::sumouPunchDraw);
            return true;
        }

        if (player->checkSumouTackleDraw()) {
            setAction(&daNpcWrestler_c::sumouTackleDraw);
            return true;
        }
    } else {
        if (player->checkSumouPunchStagger() || player->checkSumouTackleStagger()) {
            mWrestlerAction = 3;
            setAction(&daNpcWrestler_c::sumouTackleHit);
            player->setSumouForceTackle();
            return true;
        }

        switch (mWrestlerAction) {
            case 1:
                if (player->checkSumouTackleMiss()) {
                    setAction(&daNpcWrestler_c::sumouSideStep);
                    return true;
                }

                if (player->checkSumouPunchSuccess()) {
                    setAction(&daNpcWrestler_c::sumouPunchChaseShock);
                    return true;
                }

                if (player->checkSumouSlideLeft() || player->checkSumouSlideRight()
                    || player->checkSumouLeftMove() || player->checkSumouRightMove()) {
                    setAction(&daNpcWrestler_c::sumouSideStep);
                    return true;
                }
                break;

            case 2:
                if (player->checkSumouSlideLeft() || player->checkSumouSlideRight()
                    || player->checkSumouLeftMove() || player->checkSumouRightMove()) {
                    setAction(&daNpcWrestler_c::sumouPunchChaseHit);
                    return true;
                }

                if (player->checkSumouPunchDraw()) {
                    setAction(&daNpcWrestler_c::sumouPunchDraw);
                    return true;
                }

                if (player->checkSumouTackleSuccess() || player->checkSumouTackleSuccessPunch()) {
                    setAction(&daNpcWrestler_c::sumouPunchMiss);
                    return true;
                }
                break;

            case 3:
                if (player->checkSumouSlideLeft() || player->checkSumouSlideRight()) {
                    setAction(&daNpcWrestler_c::sumouTackleMiss);
                    return true;
                }

                if (player->checkSumouPunchMiss()) {
                    setAction(&daNpcWrestler_c::sumouTackleHit);
                    return true;
                }

                if (player->checkSumouTackleDraw()) {
                    setAction(&daNpcWrestler_c::sumouTackleDraw);
                    return true;
                }
                break;

            case 4:
                if (player->checkSumouTackleSuccess()) {
                    setAction(&daNpcWrestler_c::sumouTackleShock);
                    return true;
                }

                if (player->checkSumouTackleMiss()) {
                    setAction(&daNpcWrestler_c::sumouSideStep);
                    return true;
                }

                if (player->checkSumouPunchSuccess()) {
                    setAction(&daNpcWrestler_c::sumouPunchShock);
                    return true;
                }

                if (player->checkSumouPunchMiss()) {
                    setAction(&daNpcWrestler_c::sumouTackleHit);
                    return true;
                }
                break;
        }
    }

    return false;
}

/* 80B30F00-80B31680 001D60 0780+00 13/1 0/0 0/0 .text            wait__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::wait(void* param_1) {
    switch (field_0xe96) {
        case 0: {
            setExpression(5, -1.0f);
            setMotion(0, field_0xe8c, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            field_0xe96 = 2;
            break;
        }

        case 2: {
            if (dComIfGp_event_runCheck() && (mOrderNewEvt == 0 || !dComIfGp_getEvent().isOrderOK())) {
                actionFunc action;
                if (eventInfo.checkCommandTalk()) {
                    if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
                        if (mType == 1 && field_0xe99 == 0 && daNpcF_chkEvtBit(0x3A)
                            && !daNpcF_chkEvtBit(0x3E) && daNpcF_chkEvtBit(0x3F)) {
                            s16 sVar1;
                            if (current.pos.z > 200.0f) {
                                sVar1 = 3;
                            } else {
                                sVar1 = 4;
                            }

                            mOrderEvtNo = sVar1;

                            changeEvent(l_resName[mType], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                            setAction(&daNpcWrestler_c::demo);
                            break;
                        } else {
                            setAction(&daNpcWrestler_c::talk);
                            break;
                        }
                    }
                } else {
                    dEvent_manager_c& ev_mng = dComIfGp_getEventManager();
                    if (ev_mng.getMyStaffId(l_myName, NULL, 0) != -1) {
                        setAction(&daNpcWrestler_c::demo);
                        break;
                    }
                }
            } else {
                mOrderEvtNo = 0;
                if (mType == 1 && !daNpcF_chkEvtBit(0x3F)) {
                    fopAc_ac_c* actor = getEvtAreaTagP(6, 0);
                    if (actor != NULL) {
                        f32 player_dist = fopAcM_searchPlayerDistance(actor);
                        f32 scale_fact = fopAcM_GetScale_p(actor)->x * 0.5f;
                        if (player_dist < scale_fact) {
                            mOrderEvtNo = 1;
                            fopAcM_delete(actor);
                        }
                    }
                }

                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName(l_resName[mType]);
                }

                orderEvent(field_0xe99, l_evtNames[mOrderEvtNo], 0xFFFF, 0x28, 0xFF, 1);
            }

            if (mActorMngr[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else if (chkFindPlayer()) {
                mTurnMode = 0;
            }

            if (mActorMngr[0].getActorP() == NULL && home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                setExpression(5, -1.0f);
                setMotion(0, -1.0f, 0);
                mTurnMode = 0;
            }

            break;
        }

        case 3: {
            break;
        }

        default: {
            JUT_PANIC(2769, "0")
            break;
        }
    }

    return true;
}

/* 80B31680-80B316C8 0024E0 0048+00 1/0 0/0 0/0 .text            setMotion__15daNpcWrestler_cFifi */
void daNpcWrestler_c::setMotion(int i_motion, f32 i_motionMorfOverride, int param_3) {
    s16 motion = i_motion;
    if (param_3 || mMotion != motion) {
        if (i_motion >= 0 && i_motion < 30) {
            mMotion = motion;
            mMotionMorfOverride = i_motionMorfOverride;
            mMotionPrevPhase = -1;
            mMotionPhase = 0;
            field_0xe92 = 0;
        }
    }
}

/* 80B316C8-80B316F4 002528 002C+00 1/0 0/0 0/0 .text            setExpression__15daNpcWrestler_cFif */
void daNpcWrestler_c::setExpression(int i_expression, f32 i_expressionMorfOvveride) {
    if (i_expression >= 0 && i_expression < 6) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_expressionMorfOvveride;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

inline bool daNpcWrestler_c::setTalkAngle() {
    s16 playerAngleY = (int) fopAcM_searchPlayerAngleY(this); 
    if (playerAngleY == mCurAngle.y) {
        return true;
    }

    if (step(playerAngleY, 1)) {
        setExpression(5, -1.0f);
        setMotion(0, field_0xbd8->common.morf_frame, 0);
        mTurnMode = 0;
    }

    return false;
}

inline void daNpcWrestler_c::setExpressionTalkAfter() {
    switch (mExpression) {
        case 1:
            setExpression(3, -1.0f);
            break;

        case 2:
            setExpression(4, -1.0f);
            break;

        default:
            setExpression(5, -1.0f);
            break;
    }
}

/* 80B316F4-80B31EB0 002554 07BC+00 3/0 0/0 0/0 .text            talk__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::talk(void* param_1) {
    bool rv = false;
    int i_expression, i_motion, iVar3;

    switch (field_0xe96) {
        case 0: {
            initTalk(mMsgNo, NULL);
            initTalkAngle();
            mMsgTimer = 0;
            field_0xe99 = 0;
            speedF = 0.0f;
            setLookMode(3);
            field_0xe96 = 2;
            break;
        }

        case 2: {
            if (setTalkAngle()) {
                if (talkProc(NULL, 1, NULL)) {
                    actionFunc action;
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    mItemNo = 0;
                    u16 eventID = mFlow.getEventId(&mItemNo);
                    OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", eventID, mItemNo);
                    if (eventID == 1) {
                        field_0xe78 = fopAcM_createItemForPresentDemo(&current.pos, mItemNo, 0, -1, -1, NULL, NULL);
                        if (field_0xe78 != -1) {
                            s16 sVar1 = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xFF);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, sVar1, 1, 0xFFFF);
                            field_0x9ec = true;
                            field_0xe8c = field_0xbd8->common.morf_frame;

                            setAction(&daNpcWrestler_c::wait);
                        }
                    } else if (eventID == 6) {
                        setAction(&daNpcWrestler_c::gotoArena);
                    } else {
                        int choiceNo = mFlow.getChoiceNo();
#ifdef DEBUG
                        // "Choice %s\n", (choiceNo == 0) ? "Yes" : "No"
                        OS_REPORT("二択分岐 %s\n", (choiceNo == 0) ? "はい" : "いいえ");
#endif

                        field_0xe8c = field_0xbd8->common.morf_frame;
                        mItemNo = daNpcF_chkEvtBit(0xE7) ? 2 : 1;

                        if (choiceNo == 0) {
                            if (mType == 0) {
                                setAction(&daNpcWrestler_c::gotoArena);
                            } else {
                                mOrderEvtNo = 5;
                                changeEvent(l_resName[mType], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                                setAction(&daNpcWrestler_c::demo);
                            }
                        } else {
                            setAction(&daNpcWrestler_c::wait);
                        }
                    }

                    rv = true;
                } else {
                    iVar3 = mMsgTimer;
                    if (ctrlMsgAnm(i_expression, i_motion, this, 0)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else {
                        if (iVar3 != 0 && mMsgTimer == 0) {
                            setExpressionTalkAfter();
                        }
                    }
                }
            }

            break;
        }

        case 3: {
            setExpression(5, -1.0f);
            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }

            break;
        }

        default: {
            JUT_PANIC(2858, "0");
        }
    }

    return rv;
}

/* 80B31EB0-80B32058 002D10 01A8+00 4/0 0/0 0/0 .text            demo__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::demo(void* param_1) {
    dEvent_manager_c* eventManager = &dComIfGp_getEventManager();

    switch (field_0xe96) {
        case 0:
            field_0xe96 = 2;
            break;

        case 2: {
            s32 staffID = eventManager->getMyStaffId(l_myName, NULL, 0);
            mStaffID = staffID;
            JUT_ASSERT(2886, NULL != mEvtSeqList[mOrderEvtNo]);

            if (staffID != -1 && (this->*mEvtSeqList[mOrderEvtNo])(staffID)) {
                eventManager->cutEnd(mStaffID);
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager->endCheck(mEventIdx)) {
                u16 asdf = mOrderEvtNo;
                (void) asdf;
                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
                setAction(&daNpcWrestler_c::wait);
            }

            break;
        }

        case 3: {
            field_0xe8c = 20.0f;
            break;
        }

        default: {
            JUT_PANIC(2912, "0");
            break;
        }
    }

    return true;
}

/* 80B32058-80B32444 002EB8 03EC+00 7/0 0/0 0/0 .text            gotoArena__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::gotoArena(void* param_1) {
    dCamera_c* camBody = dCam_getBody();
    int iVar1;

    switch (field_0xe96) {
        case 0:
            if (field_0x9ec) {
                field_0xe84 = 1;
            } else {
                field_0xe84 = 0;
            }

            field_0xe80 = 1.0f / field_0xbd8->fade_speed;
            mDoGph_gInf_c::fadeOut(field_0xbd8->fade_speed);
            camBody->Stop();
            camBody->SetTrimSize(2);
            field_0xe96 = 2;
            break;

        case 2:
            switch (field_0xe84) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    field_0xe84++;
                    break;

                case 1:
                    iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 != 0) {
                        field_0xe9a = 1;
                        field_0xe80 = field_0xbd8->field_0x8c + 1;
                        field_0xe84++;
                    }
                    break;

                case 2: {
                    iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 <= 0) {
                        setNextSumouEvent(-1);
                    }

                    break;
                }

                default: {
                    JUT_PANIC(2969, "0");
                    break;
                }
            }
            break;

        case 3: {
            break;
        }

        default: {
            JUT_PANIC(2974, "0");
            break;
        }
    }

    return true;
}

/* 80B32444-80B32850 0032A4 040C+00 1/0 0/0 0/0 .text            gotoLiving__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::gotoLiving(void* param_1) {
    dCamera_c* camBody = dCam_getBody();
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            Z2GetAudioMgr()->subBgmStop();
            setBackToLiving();
            mDemoCam.mDemoCamCenter.set(0.0f, 100.0f, 0.0f);
            mDemoCam.mDemoCamEye.set(0.0f, 0.0f, 430.0f);
            mDoMtx_stack_c::transS(fopAcM_GetPosition(daPy_getPlayerActorClass()));
            mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamCenter, &mDemoCam.mDemoCamCenter);
            mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y + 0x2D00);
            mDoMtx_stack_c::XrotM(-0xC94);
            mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
            camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, camBody->Fovy(), 0);
            field_0xe96 = 2;
            break;

        case 2:
            switch (field_0xe84) {
                case 0:
                    if (daPy_getPlayerActorClass()->getClothesChangeWaitTimer() == 0) {
                        field_0xe80 = 1.0f / field_0xbd8->fade_speed;
                        mDoGph_gInf_c::fadeOut(-field_0xbd8->fade_speed);
                        field_0xe84++;
                    }
                    break;

                case 1: {
                    if (field_0xe80-- <= 0) {
                        camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                        camBody->Start();
                        dComIfGp_event_reset();
                        field_0xe99 = 1;
                        field_0xe8c = field_0xbd8->common.morf_frame;

                        if (mType == 0) {
                            fopAcM_delete(this);
                        } else {
                            setAction(&daNpcWrestler_c::wait);
                        }
                    }
                    break;
                }

                default: {
                    JUT_PANIC(3032, "0");
                    break;
                }
            }
            break;

        case 3: {
            break;
        }

        default: {
            JUT_PANIC(3037, "0");
            break;
        }
    }

    return true;
}

inline void daNpcWrestler_c::initDemoCamera_ArenaSide() {
    dCamera_c* camBody = dCam_getBody();

    mDemoCamFovy = camBody->Fovy();
    field_0xe58 = field_0xbd8->field_0xac;
    field_0xe54 = field_0xbd8->camera_rotation_angle * 65535.0f;

    mDemoCam.mDemoCamCenter.set(mArenaPos.x, mArenaPos.y + 50.0f, mArenaPos.z);
    field_0xe5e = mArenaAngle;

    mDoMtx_stack_c::transS(mDemoCam.mDemoCamCenter);
    mDoMtx_stack_c::YrotM(field_0xe54 + fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y);
    mDoMtx_stack_c::transM(0.0f, 50.0f, -field_0xbd8->field_0xb0);
    mDoMtx_stack_c::multVecZero(&mDemoCam.mDemoCamEye);
}

/* 80B32850-80B331CC 0036B0 097C+00 2/0 0/0 0/0 .text            sumouReady__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouReady(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    dCamera_c* camBody = dCam_getBody();
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            if (mType == 0) {
                mMsgNo = 7;
            }

            daPy_getPlayerActorClass()->offPlayerNoDraw();
            offWrestlerNoDraw();
            Z2GetAudioMgr()->subBgmStart(Z2BGM_SUMO);
            setLookMode(2);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            setExpression(3, -1.0f);
            setMotionAnm(30, 0.0f);
            mpMorf->modelCalc();
            player->setSumouReady(this);
            initDemoCamera_ArenaSide();

            if (field_0xe9a != 0) {
                field_0xe80 = 1.0f / field_0xbd8->fade_speed;
                mDoGph_gInf_c::fadeOut(-field_0xbd8->fade_speed);
                camBody->SetTrimSize(2);
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            } else {
                field_0xe80 = 0;
            }

            field_0xe96 = 2;
            break;

        case 2: {
            switch (field_0xe84) {
                case 0:
                    if (field_0xe9a == 0) {
                        if (!eventInfo.checkCommandDemoAccrpt()) {
                            fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                            return false;
                        }

                        camBody->Stop();
                        camBody->SetTrimSize(2);
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                        setOnToArena(field_0xbdc->field_0x14 * 0.5f);
                        field_0xe9a = 0;
                        field_0xe84++;
                        break;
                    }

                    setOnToArena(field_0xbdc->field_0x14 * 0.5f);
                    field_0xe9a = 0;
                    field_0xe84++;
                    // fallthrough
                case 1:
                    if (player->getClothesChangeWaitTimer()) {
                        break;
                    }
                    field_0xe84++;
                    // fallthrough
                case 2:
                    field_0xe5e += field_0xbd8->field_0xac;
                    field_0xe54 -= fabsf(field_0xbd8->field_0xac);
                    if (field_0xe54 < fabsf(field_0xbd8->field_0xac)) {
                        field_0xe80 = 1;
                        field_0xe84++;
                    }

                    mDemoCamFovy = 45.0f;
                    mDoMtx_stack_c::transS(mDemoCam.mDemoCamCenter);
                    mDoMtx_stack_c::YrotM(field_0xe5e);
                    mDemoCam.mDemoCamEye.set(0.0f, 50.0f, -field_0xbd8->field_0xb0);
                    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                    camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                    break;

                case 3:
                    iVar1 = field_0xe80;
                    field_0xe80--;

                    if (iVar1 <= 0) {
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                        camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                        camBody->SetTrimSize(0);
                        camBody->Start();
                        dComIfGp_event_reset();
                        field_0xe80 = 0;
                        field_0xe84++;
                    } else {
                        mDoMtx_stack_c::transS(mDemoCam.mDemoCamCenter);
                        mDoMtx_stack_c::YrotM(mArenaAngle + 0x8000);
                        mDemoCam.mDemoCamEye.set(0.0f, 50.0f, -field_0xbd8->field_0xb0);
                        mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                    }
                    break;

                case 4:
                    iVar1 = field_0xe80;
                    field_0xe80++;

                    if (iVar1 > field_0xbd8->ready_appearance_time) {
                        dMeter2Info_setMeterString(0x515);
                        Z2GetAudioMgr()->seStart(Z2SE_SY_SUMO_READY, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                        field_0xe80 = 0;
                        field_0xe84++;
                    }
                    break;

                case 5:
                    iVar1 = field_0xe80;
                    field_0xe80++;
                    if (iVar1 > field_0xbd8->fight_appearance_time) {
                        dMeter2Info_setMeterString(0x516);
                        Z2GetAudioMgr()->seStart(Z2SE_SY_SUMO_START, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                        Z2GetAudioMgr()->changeSubBgmStatus(1);
                        dComIfGp_setDoStatus(21, 0);
                        player->setSumouReadyAcceptButton();
                        player->setSumouForceStand();
                        setMotionAnm(31, 3.0f);
                        field_0xe84++;
                    }
                    break;

                case 6:
                    if (mType == 0) {
                        if (mpMorf->isStop()) {
                            setAction(&daNpcWrestler_c::sumouWait);
                        }
                    } else {
                        setAction(&daNpcWrestler_c::sumouWait);
                    }
                    break;

                default:
                    JUT_PANIC(3181, "0");
                    break;
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

inline void daNpcWrestler_c::sumouAI() {
    if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
        mWrestlerAction = 0;
        return;
    }

    if (field_0xbd8->ai_action) {
        mWrestlerAction = field_0xbd8->ai_action;
        return;
    }

    f32 fVar1 = cM_rnd() * 100.0f;
    // whether we're in 2nd phase or not:
    BOOL bVar1 = daNpcF_chkEvtBit(0xE9) ? TRUE : FALSE;
    f32 fVar2 = field_0xbdc->chances[bVar1].lateral_movement_chance;
    f32 fVar3 = fVar2 + field_0xbdc->chances[bVar1].hit_chance;
    f32 fVar4 = fVar3 + field_0xbdc->chances[bVar1].tackle_chance;

    if (fVar1 >= 0.0f && fVar1 < fVar2) {
        mWrestlerAction = 1;
    } else if (fVar1 >= fVar2 && fVar1 < fVar3) {
        mWrestlerAction = 2;
    } else if (fVar1 >= fVar3 && fVar1 < fVar4) {
        mWrestlerAction = 3;
    } else if (fVar1 >= fVar4 && fVar1 < 100.0f) {
        mWrestlerAction = 4;
    }
}

inline s16 daNpcWrestler_c::oppositeToPlayer() {
    s16 rv = cLib_addCalcAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), field_0xbd8->rotation, 0x4000, 0x40);
    setAngle(mCurAngle.y);
    return rv;
}

inline void daNpcWrestler_c::correctGraspPosAngle(bool param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp24(0.0f, 0.0f, field_0xbdc->grapple_distance);
    mDoMtx_stack_c::transS(*player->getViewerCurrentPosP());
    s16 my_ang = mStepAngle + cLib_targetAngleY(player->getViewerCurrentPosP(), &current.pos);
    mDoMtx_stack_c::YrotM(my_ang);
    mDoMtx_stack_c::multVec(&sp24, &current.pos);

    if (param_1) {
        oppositeToPlayer();
    }
}

/* 80B339EC-80B33B3C 00484C 0150+00 13/13 0/0 0/0 .text          checkOutOfArenaP__15daNpcWrestler_cFv */
inline bool daNpcWrestler_c::checkOutOfArenaP() {
    if (mArenaInfo.chkFlag == 0) {
        return false;
    }

    f32 fVar1 = pow(mArenaExtent, 2.0);
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz left_foot_pos = player->getLeftFootPos();
    cXyz right_foot_pos = player->getRightFootPos();
    return (left_foot_pos.abs2XZ(mArenaPos) > fVar1) || (right_foot_pos.abs2XZ(mArenaPos) > fVar1);
}

/* 80B331CC-80B339EC 00402C 0820+00 14/0 0/0 0/0 .text           sumouWait__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::sumouWait(void* param_1) {
    daPy_py_c* player;
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->wait_time;
            field_0xe98 = 0;
            sumouAI();
            setExpression(3, -1.0f);
            setMotion(8, field_0xe8c, 0);
            field_0xe8c = -1.0f;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);

            if (cLib_distanceAngleS(mCurAngle.y, fopAcM_searchPlayerAngleY(this)) < 0x600) {
                setMotion(8, 6.0f, 0);
            } else {
                setMotion(9, 6.0f, 0);
            }

            if (!setNextAction()) {
                iVar1 = field_0xe80;
                field_0xe80--;
                if (iVar1 < 0) {
                    player = daPy_getPlayerActorClass();
                    if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                        setAction(&daNpcWrestler_c::sumouPunchHit);
                        daPy_getPlayerActorClass()->setSumouForcePunch();
                    } else {
                        switch (mWrestlerAction) {
                            case 1:
                                setAction(&daNpcWrestler_c::sumouSideStep);
                                break;

                            case 2:
                                setAction(&daNpcWrestler_c::sumouPunchHit);
                                daPy_getPlayerActorClass()->setSumouForcePunch();
                                break;

                            case 3:
                                if (player->checkSumouWait()) {
                                    setAction(&daNpcWrestler_c::sumouTackleHit);
                                    daPy_getPlayerActorClass()->setSumouForceTackle();
                                } else if (player->checkSumouLeftMove() || player->checkSumouRightMove()) {
                                    setAction(&daNpcWrestler_c::sumouTackleMiss);
                                }
                                break;

                            case 4:
                                setAction(&daNpcWrestler_c::sumouWait);
                                break;

                            case 5:
                                setAction(&daNpcWrestler_c::sumouWait);
                                break;
                        }
                    }
                }
            }

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B34654-80B34CD0 0054B4 067C+00 2/0 0/0 0/0 .text            sumouPunchHit__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::sumouPunchHit(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType == 0 ? 0x12 : 0x11;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(6, true);
            setMotion(12, -1.0f, 0);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp2c, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
            }

            field_0xddc = field_0xde0 = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            oppositeToPlayer();
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            
            if (mpMorf->getFrame() == 13.0f) {
                if (mType == 1 && !player->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0xddc = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                    field_0xde0 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);

                    if (field_0xddc != NULL) {
                        field_0xddc->becomeImmortalEmitter();
                    }

                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalTranslation(sp2c);
            }

            if (field_0xde0 != NULL) {
                // FIXME: Needs to use ctor:
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde0->setGlobalTranslation(sp2c);
                field_0xde0->setGlobalRotation(emitter_rot);
            }

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouPunchStagger() || player->checkSumouWait()) {
                field_0xe8c = 0.0f;
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3: {
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }

            mDoMtx_stack_c::transS(current.pos);
            s16 tgt_ang = cLib_targetAngleY(player->getViewerCurrentPosP(), &current.pos);
            mDoMtx_stack_c::YrotM(tgt_ang);
            current.pos.set(0.0f, 0.0f, -63.5f);
            mDoMtx_stack_c::multVec(&current.pos, &current.pos);
            break;
        }

        default: {
            JUT_PANIC(3411, "0");
            break;
        }
    }

    return true;
}

/* 80B34CD0-80B35364 005B30 0694+00 2/0 0/0 0/0 .text            sumouPunchChaseHit__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchChaseHit(void* param_1) {
    int jointNo = mType == 0 ? 0x12 : 0x11;
    cXyz sp38;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(6, true);
            setMotion(12, -1.0f, 0);
            daPy_getPlayerActorClass()->setSumouForcePunch();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp38);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp38, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
            }

            field_0xde0 = NULL;
            field_0xddc = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            mCurAngle.y = fopAcM_searchPlayerAngleY(this);
            current.angle.y = mCurAngle.y;
            shape_angle.y = current.angle.y;
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp38);

            if (mpMorf->getFrame() == 13.0f) {
                if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0xddc = dComIfGp_particle_set(0x8539, &sp38, &mCurAngle, NULL);
                    field_0xde0 = dComIfGp_particle_set(0x853A, &sp38, &mCurAngle, NULL);

                    if (field_0xddc != NULL) {
                        field_0xddc->becomeImmortalEmitter();
                    }

                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalTranslation(sp38);
            }

            if (field_0xde0 != NULL) {
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde0->setGlobalTranslation(sp38);
                field_0xde0->setGlobalRotation(emitter_rot);
            }

            field_0xe8c = 0.0f;

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (mpMorf->isStop()) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }

            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(cLib_targetAngleY(daPy_getPlayerActorClass()->getViewerCurrentPosP(), &current.pos));
            current.pos.set(0.0f, 0.0f, -63.5f);
            mDoMtx_stack_c::multVec(&current.pos, &current.pos);
            break;
    }

    return true;
}

/* 80B35780-80B358F0 0065E0 0170+00 8/8 0/0 0/0 .text            checkOutOfArenaW__15daNpcWrestler_cFv */
inline bool daNpcWrestler_c::checkOutOfArenaW() {
    if (mArenaInfo.chkFlag == 0) {
        return false;
    }

    int jointNo = mType == 0 ? 0x1A : 0x18;
    int jointNo2 = mType == 0 ? 0x1E : 0x1B;
    f32 fVar1 = pow(mArenaExtent, 2.0);

    field_0x89c = getJointPos(jointNo);
    field_0x8a8 = getJointPos(jointNo2);
    return field_0x89c.abs2XZ(mArenaPos) > fVar1 || field_0x8a8.abs2XZ(mArenaPos) > fVar1;
}

/* 80B35364-80B35780 0061C4 041C+00 1/0 0/0 0/0 .text            sumouPunchMiss__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::sumouPunchMiss(void* param_1) {
    // NONMATCHING - regalloc
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType == 0 ? 0x12 : 0x11;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(8, true);
            setMotion(0x10, -1.0f, 0);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp2c, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
            }

            field_0xe96 = 2;
            break;

        case 2:
            oppositeToPlayer();
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 34.0f) {
                dCam_getBody()->ModeFix(6);
            }

            if (mpMorf->getFrame() == 35.0f) {
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose);
            } else if (player->checkSumouPushFront()) {
                setAction(&daNpcWrestler_c::sumouTackleStagger);
            }
            break;

        case 3: {
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }
            break;
        }

        default: {
            JUT_PANIC(3579, "0");
        }
    }

    return true;
}

/* 80B358F0-80B35968 006750 0078+00 4/4 0/0 0/0 .text            getJointPos__15daNpcWrestler_cFi */
cXyz daNpcWrestler_c::getJointPos(int i_jointNo) {
    cXyz jointPos;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(i_jointNo));
    mDoMtx_stack_c::multVecZero(&jointPos);
    return jointPos;
}

/* 80B35968-80B3606C 0067C8 0704+00 2/0 0/0 0/0 .text            sumouPunchDraw__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchDraw(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType == 0 ? 0x12 : 0x11;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(9, true);
            setMotion(0x11, -1.0f, 0);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            field_0xdd8 = dComIfGp_particle_set(0x8537, &sp2c, &mCurAngle, NULL);
            if (field_0xdd8 != NULL) {
                field_0xdd8->becomeImmortalEmitter();
                field_0xdd8->setLifeTime(5);
            }

            field_0xde0 = NULL;
            field_0xddc = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            oppositeToPlayer();
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            
            if (mpMorf->getFrame() > 18.0f && mpMorf->getFrame() < 32.0f) {
                dCam_getBody()->ModeFix(5);
            }

            if (mpMorf->getFrame() == 13.0f) {
                if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0xddc = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                    if (field_0xddc != NULL) {
                        field_0xddc->becomeImmortalEmitter();
                    }

                    field_0xde0 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);
                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalTranslation(sp2c);
            }

            if (field_0xde0 != NULL) {
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde0->setGlobalTranslation(sp2c);
                field_0xde0->setGlobalRotation(emitter_rot);
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                field_0xe8c = field_0xbd8->common.morf_frame;
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }
            break;
    }

    return true;
}

/* 80B3606C-80B36908 006ECC 089C+00 5/0 0/0 0/0 .text            sumouTackleHit__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleHit(void* param_1) {
    // NONMATCHING - regalloc
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType == 0 ? 0 : 0;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            if (player->checkSumouPunchMiss()) {
                setExpressionAnm(0xD, true);
                setMotion(0x1C, field_0xbd8->common.morf_frame, 0);

                field_0xdd8 = dComIfGp_particle_set(0x8546, &sp2c, &mCurAngle, NULL);
                field_0xddc = dComIfGp_particle_set(0x8547, &sp2c, &mCurAngle, NULL);

                if (field_0xdd8 != NULL) {
                    field_0xdd8->becomeImmortalEmitter();
                }

                if (field_0xddc != NULL) {
                    field_0xddc->becomeImmortalEmitter();
                }
            } else {
                setExpressionAnm(0xC, true);
                setMotion(0xD, field_0xbd8->common.morf_frame, 0);

                field_0xdd8 = dComIfGp_particle_set(0x8543, &sp2c, &mCurAngle, NULL);
                field_0xddc = dComIfGp_particle_set(0x8544, &sp2c, &mCurAngle, NULL);

                if (field_0xdd8 != NULL) {
                    field_0xdd8->becomeImmortalEmitter();
                }

                if (field_0xddc != NULL) {
                    field_0xddc->becomeImmortalEmitter();
                }
            }

            field_0xde4 = NULL;
            field_0xde0 = NULL;

            if (mType != 0) {
                setLookMode(0);
                mActorMngr[0].remove();
            }

            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();

            if ((mMotion == 13 && mpMorf->getFrame() == 8.0f) || (mMotion == 0x1C && mpMorf->getFrame() == 34.0f)) {
                field_0xde0 = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                field_0xde4 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);

                if (field_0xde0 != NULL) {
                    field_0xde0->becomeImmortalEmitter();
                }

                if (field_0xde4 != NULL) {
                    field_0xde4->becomeImmortalEmitter();
                }
            } else {
                if (mpMorf->getFrame() == 15.0f) {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
                }
            }

            if (field_0xdd8 != NULL) {
                field_0xdd8->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            if (field_0xddc != NULL) {
                field_0xddc->setGlobalRTMatrix(mpMorf->getModel()->getAnmMtx(jointNo));
            }

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);

            mDoMtx_stack_c::transS(sp2c);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            sp2c.set(0.0f, 20.0f, 60.0f);
            mDoMtx_stack_c::multVec(&sp2c, &sp2c);

            if (field_0xde0 != NULL) {
                field_0xde0->setGlobalTranslation(sp2c);
            }

            if (field_0xde4 != NULL) {
                JGeometry::TVec3<s16> emitter_rot;
                emitter_rot.x = mCurAngle.x;
                emitter_rot.y = mCurAngle.y;
                emitter_rot.z = mCurAngle.z;
                field_0xde4->setGlobalTranslation(sp2c);
                field_0xde4->setGlobalRotation(emitter_rot);
            }

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin);
            } else if (player->checkSumouPushBack()) {
                setAction(&daNpcWrestler_c::sumouTacklePush);
            }
            break;

        case 3:
            if (field_0xdd8 != NULL) {
                field_0xdd8->quitImmortalEmitter();
                field_0xdd8 = NULL;
            }

            if (field_0xddc != NULL) {
                field_0xddc->quitImmortalEmitter();
                field_0xddc = NULL;
            }

            if (field_0xde0 != NULL) {
                field_0xde0->quitImmortalEmitter();
                field_0xde0 = NULL;
            }

            if (field_0xde4 != NULL) {
                field_0xde4->quitImmortalEmitter();
                field_0xde4 = NULL;
            }
            break;
    }

    return true;
}

/* 80B36908-80B36C8C 007768 0384+00 2/0 0/0 0/0 .text            sumouTackleMiss__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleMiss(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setLookMode(0);
            mActorMngr[0].remove();
            setExpressionAnm(0xE, true);
            setMotion(0x12, -1.0f, 0);
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouTackleSuccess()) {
                setAction(&daNpcWrestler_c::sumouTackleShock);
            } else if (player->checkSumouPunchSuccess()) {
                setAction(&daNpcWrestler_c::sumouPunchShock);
            } else if (mpMorf->isStop()) {
                setAction(&daNpcWrestler_c::sumouLostBalance);
            }
            break;

        case 3:
            setLookMode(2);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            break;
    }

    return true;
}

/* 80B36C8C-80B37270 007AEC 05E4+00 2/0 0/0 0/0 .text            sumouTackleDraw__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleDraw(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType == 0 ? 0 : 0;
    cXyz sp2c;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(0x12, true);
            setMotion(0x14, -1.0f, 0);
            field_0xde4 = NULL;
            field_0xde0 = NULL;
            field_0xddc = NULL;
            field_0xdd8 = NULL;
            field_0xe96 = 2;
            break;

        case 2:
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            mpMorf->modelCalc();
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            mDoMtx_stack_c::transS(sp2c);
            mDoMtx_stack_c::YrotM(mCurAngle.y);
            mDoMtx_stack_c::transM(0.0f, 20.0f, 60.0f);
            mDoMtx_stack_c::multVecZero(&sp2c);

            if (mpMorf->getFrame() == 4.0f) {
                if (mType == 1 && !daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
                    setAction(&daNpcWrestler_c::demoSumouUnilateralWin);
                } else {
                    dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));

                    field_0xde0 = dComIfGp_particle_set(0x8539, &sp2c, &mCurAngle, NULL);
                    field_0xde4 = dComIfGp_particle_set(0x853A, &sp2c, &mCurAngle, NULL);

                    if (field_0xde0 != NULL) {
                        field_0xde0->becomeImmortalEmitter();
                    }

                    if (field_0xde4 != NULL) {
                        field_0xde4->becomeImmortalEmitter();
                    }
                }
            }

            if (field_0xde0 != NULL || field_0xde4 != NULL) {
                if (field_0xde0 != NULL) {
                    field_0xde0->setGlobalTranslation(sp2c);
                }

                if (field_0xde4 != NULL) {
                    JGeometry::TVec3<s16> emitter_rot;
                    emitter_rot.x = mCurAngle.x;
                    emitter_rot.y = mCurAngle.y;
                    emitter_rot.z = mCurAngle.z;
                    field_0xde4->setGlobalTranslation(sp2c);
                    field_0xde4->setGlobalRotation(emitter_rot);
                }
            }

            if (mpMorf->getFrame() > 4.0f && mpMorf->getFrame() < 24.0f) {
                dCam_getBody()->ModeFix(5);
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                field_0xe8c = field_0xbd8->common.morf_frame;
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            break;
    }

    return true;
}

inline void daNpcWrestler_c::setStepAngle() {
    f32 fVar1[2];
    int var_r25 = 0;
    (void) var_r25;
    daPy_py_c* player = daPy_getPlayerActorClass();
    mDoMtx_stack_c::transS(*player->getViewerCurrentPosP());

    for (int i = 0; i < 2; i++) {
        if (i == 0) {
            mStepAngle = field_0xbdc->horizontal_movement_speed;
        } else {
            mStepAngle = -field_0xbdc->horizontal_movement_speed;
        }

        s16 tgt_ang = cLib_targetAngleY(player->getViewerCurrentPosP(), &current.pos);
        tgt_ang += mStepAngle * field_0xbdc->lateral_movement_time;
        cXyz sp30(0.0f, 0.0f, field_0xbdc->grapple_distance);
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::YrotM(tgt_ang);
        mDoMtx_stack_c::multVec(&sp30, &sp30);
        mDoMtx_stack_c::pop();

        fVar1[i] = sp30.abs2XZ(mArenaPos);
    }

    s16 stepAngle;
    if (fVar1[0] > fVar1[1]) {
        stepAngle = -field_0xbdc->horizontal_movement_speed;
    } else {
        stepAngle = field_0xbdc->horizontal_movement_speed;
    }

    mStepAngle = stepAngle;
}

/* 80B37270-80B378F4 0080D0 0684+00 4/0 0/0 0/0 .text            sumouSideStep__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::sumouSideStep(void* param_1) {
    // NONMATCHING - g_dComIfG_gameInfo weirdness
    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->lateral_movement_time;
            setStepAngle();
            if (mStepAngle > 0) {
                setMotion(11, -1.0f, 0);
            } else {
                setMotion(10, -1.0f, 0);
            }

            mpMorf->setPlaySpeed(2.4f);
            field_0xe96 = 2;
            break;

        case 2: {
            correctGraspPosAngle(true);

            int jointNo = mType == 0 ? 0x1A : 0x18;
            int jointNo2 = mType == 0 ? 0x1E : 0x1B;
            JPABaseEmitter* emitter = NULL;
            cXyz sp2c;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp2c);
            sp2c.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp2c, &mCurAngle, 0.8f, &tevStr);
            emitter = dComIfGp_particle_getEmitter(field_0xde8);
            if (emitter != NULL) {
                emitter->setRateStep(1);
            }

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
            mDoMtx_stack_c::multVecZero(&sp2c);
            sp2c.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xdec, NULL, &sp2c, &mCurAngle, 0.8f, &tevStr);
            emitter = dComIfGp_particle_getEmitter(field_0xdec);
            if (emitter != NULL) {
                emitter->setRateStep(1);
            }

            field_0xe80--;

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (daPy_getPlayerActorClass()->checkSumouPunchSuccess()) {
                setAction(&daNpcWrestler_c::sumouPunchChaseShock);
            } else if (field_0xe80 < 0) {
                field_0xe8c = field_0xbd8->common.morf_frame;
                if (daPy_getPlayerActorClass()->checkSumouTackleMiss()) {
                    setAction(&daNpcWrestler_c::sumouTackleHit);
                    daPy_getPlayerActorClass()->setSumouForceTackle();
                } else {
                    setAction(&daNpcWrestler_c::sumouWait);
                }
            }
            break;
        }

        case 3: {
            mStepAngle = 0;
            break;
        }

        default: {
            JUT_PANIC(4008, "0");
            break;
        }
    }

    return true;
}

/* 80B378F4-80B37C30 008754 033C+00 1/0 0/0 0/0 .text            sumouLostBalance__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouLostBalance(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->stagger_time;
            setMotion(8, field_0xbd8->common.morf_frame, 0);
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            if (abs(oppositeToPlayer()) < 0x1000) {
                setAction(&daNpcWrestler_c::sumouWait);
            } else {
                if (checkOutOfArenaP()) {
                    setAction(&daNpcWrestler_c::demoSumouWin2);
                } else if (player->checkSumouTackleSuccess()) {
                    setAction(&daNpcWrestler_c::sumouTackleShock);
                } else if (player->checkSumouPunchSuccess()) {
                    setAction(&daNpcWrestler_c::sumouPunchShock);
                }
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B37C30-80B37FB8 008A90 0388+00 4/0 0/0 0/0 .text            sumouPunchShock__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchShock(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(7, true);
            setMotion(0xF, -1.0f, 0);
            field_0xe96 = 2;
            break;

        case 2:
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            if (mpMorf->getFrame() == 13.0f) {
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                if (field_0xe98 != 0) {
                    setAction(&daNpcWrestler_c::sumouWait);
                } else {
                    setAction(&daNpcWrestler_c::sumouPunchStagger);
                }
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B37FB8-80B38518 008E18 0560+00 2/0 0/0 0/0 .text            sumouPunchChaseShock__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::sumouPunchChaseShock(void* param_1) {
    // NONMATCHING - regalloc
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setStepAngle();
            if (mStepAngle > 0) {
                setMotion(0xB, -1.0f, 0);
            } else {
                setMotion(10, -1.0f, 0);
            }

            mpMorf->setPlaySpeed(2.4f);
            field_0xe96 = 2;
            break;

        case 2:
            if (player->getBaseAnimeFrame() == 13.0f) {
                setExpressionAnm(7, true);
                setMotion(0xF, -1.0f, 0);
                mpMorf->setFrameF(13.0f);
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (player->getBaseAnimeFrame() >= 13.0f) {
                mpMorf->setPlaySpeed(0.0f);
                mpMorf->setFrameF(player->getBaseAnimeFrame());
            } else {
                correctGraspPosAngle(true);
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouWait()) {
                setAction(&daNpcWrestler_c::sumouPunchStagger);
            }
            break;

        case 3:
            mStepAngle = 0;
            break;

        default:
            JUT_PANIC(4149, "0");
    }

    return true;
}

/* 80B38518-80B389A4 009378 048C+00 2/0 0/0 0/0 .text            sumouPunchStagger__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouPunchStagger(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            correctGraspPosAngle(false);
            field_0xe80 = field_0xbdc->stagger_time;
            setExpressionAnm(0xB, true);
            setMotion(0xE, -1.0f, 0);
            field_0xe98 = 1;
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(false);
            field_0xe80--;

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose2);
            } else if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin2);
            } else if (player->checkSumouTackleSuccess()) {
                setAction(&daNpcWrestler_c::sumouTackleShock);
            } else if (player->checkSumouPunchSuccess()) {
                setAction(&daNpcWrestler_c::sumouPunchShock);
            } else if (field_0xe80 < 0) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B389A4-80B38C90 009804 02EC+00 4/0 0/0 0/0 .text            sumouTackleShock__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleShock(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(0xF, true);
            setMotion(0x13, -1.0f, 0);
            correctGraspPosAngle(true);
            field_0xe96 = 2;
            break;

        case 2:
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());
            if (mpMorf->getFrame() == 5.0f) {
                dComIfGp_getVibration().StartShock(field_0xbd8->slap_hit_impact, 15, cXyz(0.0f, 1.0f, 0.0f));
            }

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose);
            } else if (player->checkSumouPushFront()) {
                setAction(&daNpcWrestler_c::sumouTackleStagger);
            }
            break;

        case 3:
            break;
    }
    return true;
}

/* 80B38C90-80B39334 009AF0 06A4+00 2/0 0/0 0/0 .text            sumouTackleStagger__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleStagger(void* param_1) {
    // NONMATCHING - regalloc
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo = mType == 0 ? 0x1A : 0x18;
    int jointNo2 = mType == 0 ? 0x1E : 0x1B;
    cXyz sp58;
    f32 fVar1, fVar2;

    switch (field_0xe96) {
        case 0:
            field_0xe80 = field_0xbdc->stagger_time;
            setExpressionAnm(0x10, true);
            setMotion(0x15, -1.0f, 0);
            mWrestlerAction = 5;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp58);
            sp58.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp58, &mCurAngle, 0.9f, &tevStr);

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
            mDoMtx_stack_c::multVecZero(&sp58);
            sp58.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xdec, NULL, &sp58, &mCurAngle, 0.9f, &tevStr);

            fVar1 = getJointPos(jointNo).absXZ(mArenaPos);
            fVar2 = getJointPos(jointNo2).absXZ(mArenaPos);
            if (fVar1 > field_0xbd8->field_0x80 || fVar2 > field_0xbd8->field_0x80) {
                Z2GetAudioMgr()->changeSubBgmStatus(3);
            }

            if (fVar1 > field_0xbd8->field_0x84 || fVar2 > field_0xbd8->field_0x84) {
                player->setSumouPushFrontStop();
            }

            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());

            field_0xe80--;

            if (checkOutOfArenaW()) {
                setAction(&daNpcWrestler_c::demoSumouLose);
            } else if (field_0xe80 < 0) {
                setAction(&daNpcWrestler_c::sumouTackleStaggerRelease);
            }
            break;

        case 3:
            player->setSumouForceGraspCancel();
            break;
    }

    return true;
}

/* 80B39334-80B39554 00A194 0220+00 1/0 0/0 0/0 .text            sumouTackleStaggerRelease__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleStaggerRelease(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(10, true);
            setMotion(0x18, -1.0f, 0);
            mWrestlerAction = 0;
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            Z2GetAudioMgr()->changeSubBgmStatus(2);
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());

            if (player->checkSumouWait()) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            break;
    }

    return true;
}

/* 80B39554-80B39C18 00A3B4 06C4+00 1/0 0/0 0/0 .text            sumouTacklePush__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::sumouTacklePush(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    int jointNo, jointNo2;
    f32 fVar1, fVar2;
    s16 sVar1;

    switch (field_0xe96) {
        case 0:
            setExpressionAnm(0x11, true);
            setMotion(0x16, 0.0f, 0);
            field_0xe96 = 2;
            break;

        case 2: {
            correctGraspPosAngle(true);
            jointNo = mType == 0 ? 0x1A : 0x18;
            jointNo2 = mType == 0 ? 0x1E : 0x1B;

            cXyz sp60;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
            mDoMtx_stack_c::multVecZero(&sp60);
            sp60.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp60, &mCurAngle, 0.9f, &tevStr);

            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
            mDoMtx_stack_c::multVecZero(&sp60);
            sp60.y = current.pos.y;
            fopAcM_effSmokeSet2(&field_0xdec, NULL, &sp60, &mCurAngle, 0.9f, &tevStr);

            fVar1 = player->getLeftFootPos().absXZ(mArenaPos);
            fVar2 = player->getRightFootPos().absXZ(mArenaPos);
            if (fVar1 > field_0xbd8->field_0x80 || fVar2 > field_0xbd8->field_0x80) {
                Z2GetAudioMgr()->changeSubBgmStatus(3);
            }

            if (fVar1 > field_0xbd8->field_0x84 || fVar2 > field_0xbd8->field_0x84) {
                player->setSumouPushFrontStop();
            }

            sVar1 = cLib_targetAngleY(mArenaPos, *player->getViewerCurrentPosP()) - mCurAngle.y;
            if (abs(sVar1) > field_0xbdc->field_0x28) {
                sVar1 = (sVar1 > 0) ? field_0xbdc->field_0x28 : (s16) -field_0xbdc->field_0x28;
            }

            player->setSumouPushBackDirection(sVar1);
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(player->getBaseAnimeFrame());

            if (checkOutOfArenaP()) {
                setAction(&daNpcWrestler_c::demoSumouWin);
            } else if (player->checkSumouGraspRelease()) {
                setAction(&daNpcWrestler_c::sumouTackleRelease);
            }
            break;
        }

        case 3:
            break;

        default: {
            JUT_PANIC(4435, "0");
            break;
        }
    }

    return true;
}

/* 80B39C18-80B39F88 00AA78 0370+00 1/0 0/0 0/0 .text sumouTackleRelease__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::sumouTackleRelease(void* param_1) {
    switch (field_0xe96) {
        case 0:
            setExpressionAnm(5, true);
            setMotion(0x17, -1.0f, 0);
            field_0xe96 = 2;
            break;

        case 2:
            correctGraspPosAngle(true);
            if (mpMorf->getFrame() >= 23.0f && mpMorf->getFrame() <= 34.0f) {
                int jointNo = mType == 0 ? 0x1A : 0x18;
                int jointNo2 = mType == 0 ? 0x1E : 0x1B;
                cXyz sp3c;

                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
                mDoMtx_stack_c::multVecZero(&sp3c);
                sp3c.y = current.pos.y;
                fopAcM_effSmokeSet2(&field_0xde8, NULL, &sp3c, &mCurAngle, 0.9f, &tevStr);

                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo2));
                mDoMtx_stack_c::multVecZero(&sp3c);
                sp3c.y = current.pos.y;
                fopAcM_effSmokeSet2(&field_0xdec, NULL, &sp3c, &mCurAngle, 0.9f, &tevStr);
            }

            Z2GetAudioMgr()->changeSubBgmStatus(2);
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->setFrameF(daPy_getPlayerActorClass()->getBaseAnimeFrame());

            if (daPy_getPlayerActorClass()->checkSumouWait()) {
                setAction(&daNpcWrestler_c::sumouWait);
            }
            break;

        case 3:
            if (mType != 0) {
                setLookMode(2);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
            }
            break;
    }

    return true;
}

inline void daNpcWrestler_c::initDemoCamera_ReadyLink() {
    field_0xe5e = mArenaAngle;
    mDemoCamFovy = dCam_getBody()->Fovy();
    field_0xe54 = 0.0f;
    field_0xe58 = 0.0f;
    mDoMtx_stack_c::transS(mArenaPos);
    mDoMtx_stack_c::YrotM(field_0xe5e);
    mDoMtx_stack_c::transM(-field_0xbd8->field_0xa0, field_0xbd8->field_0x9c, field_0xbd8->field_0x94);
    mDoMtx_stack_c::multVecZero(&mDemoCam.mDemoCamEye);
    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xaa);
    mDemoCam.mDemoCamCenter.set(0.0f, 0.0f, mArenaExtent * 0.5f - 100.0f);
    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamCenter, &mDemoCam.mDemoCamCenter);
}

inline void daNpcWrestler_c::initDemoCamera_ReadyWrestler() {
    field_0xe5e = mArenaAngle + 0x8000;
    mDemoCamFovy = dCam_getBody()->Fovy();
    field_0xe54 = 0.0f;
    field_0xe58 = 0.0f;

    mDoMtx_stack_c::transS(mArenaPos);
    mDoMtx_stack_c::YrotM(field_0xe5e);
    mDoMtx_stack_c::transM(-field_0xbd8->field_0xa0, field_0xbd8->field_0x98, field_0xbd8->field_0x90);
    mDoMtx_stack_c::multVecZero(&mDemoCam.mDemoCamEye);
    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xa8);
    mDemoCam.mDemoCamCenter.set(0.0f, 0.0f, mArenaExtent * 0.5f - 100.0f);
    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamCenter, &mDemoCam.mDemoCamCenter);
}

/* 80B39F88-80B3AE24 00ADE8 0E9C+00 2/0 0/0 0/0 .text demoSumouReady__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::demoSumouReady(void* param_1) {
    dCamera_c* camBody = dCam_getBody();

    bool dbg_0x9 = false;
    bool dbg_0x8 = false;
    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            switch (mType) {
                case 0:
                    Z2GetAudioMgr()->subBgmStart(Z2BGM_SUMO_D1);
                    break;

                case 1:
                    Z2GetAudioMgr()->subBgmStart(Z2BGM_SUMO_D02);
                    break;
            }

            daPy_getPlayerActorClass()->setSumouReady(this);
            initDemoCamera_ReadyWrestler();
            setMotionAnm(0x1B, field_0xbd8->common.morf_frame);

            if (field_0xe9a != 0) {
                field_0xe80 = 1.0f / field_0xbd8->fade_speed;
                mDoGph_gInf_c::fadeOut(-field_0xbd8->fade_speed);
                camBody->SetTrimSize(2);
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            } else {
                field_0xe80 = 0;
            }

            dComIfGp_getEvent().startCheckSkipEdge(this);
            field_0xe96 = 2;
            break;

        case 2:
            if (dComIfGp_getEvent().checkSkipEdge()) {
                field_0xe84 = 10;
            }

            switch (field_0xe84) {
                case 0:
                    if (field_0xe9a == 0) {
                        if (!eventInfo.checkCommandDemoAccrpt()) {
                            fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                            return false;
                        }

                        camBody->Stop();
                        camBody->SetTrimSize(2);
                        camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
                        setOnToArena(mArenaExtent * 0.5f);
                        daPy_getPlayerActorClass()->onPlayerNoDraw();
                        field_0xe9a = 0;
                        field_0xe84++;
                        break;
                    }

                    setOnToArena(mArenaExtent * 0.5f);
                    daPy_getPlayerActorClass()->onPlayerNoDraw();
                    field_0xe9a = 0;
                    field_0xe84++;
                    // fallthrough
                case 1:
                    field_0xe84++;
                    // fallthrough
                case 2:
                    field_0xe54 += field_0xe58;
                    cLib_chaseF(&field_0xe58, field_0xbd8->field_0xa4, 0.01f);
                    mDoMtx_stack_c::transS(mArenaPos);
                    mDoMtx_stack_c::YrotM(field_0xe5e);
                    mDoMtx_stack_c::transM(field_0xbd8->field_0xa0 - field_0xe54, field_0xbd8->field_0x98, field_0xbd8->field_0x90);
                    mDoMtx_stack_c::multVecZero(&mDemoCam.mDemoCamEye);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xa8);
                    mDemoCam.mDemoCamCenter.set(0.0f, 0.0f, mArenaExtent * 0.5f - 100.0f);
                    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamCenter, &mDemoCam.mDemoCamCenter);

                    if (fabsf(field_0xe54) > fabsf(field_0xbd8->field_0xa0) - 40.0f) {
                        setMotion(7, 24.0f, 0);
                        field_0xe80 = field_0xbd8->field_0xb4;
                        field_0xe84++;
                    }
                    break;

                case 3:
                    if (field_0xe80-- <= 0) {
                        mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);
                        mDoMtx_stack_c::transM(field_0xbd8->field_0xb8);
                        mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                        mDoMtx_stack_c::XrotM(field_0xbd8->field_0xe8);
                        mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
                        field_0xe84++;
                    }
                    break;

                case 4:
                    if ((mType == 0 && mpMorf->checkFrame(103.0f)) || (mType == 1 && mpMorf->checkFrame(94.0f))) {
                        dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));

                        int jointNo = mType == 0 ? 0x1E : 0x1B;
                        cXyz sp3c;

                        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
                        mDoMtx_stack_c::multVecZero(&sp3c);
                        sp3c.y = current.pos.y;
                        fopAcM_effSmokeSet1(&field_0xde8, &field_0xdec, &sp3c, NULL, 0.8f, &tevStr, 1);
                    }

#ifdef DEBUG
                    mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                    mDoMtx_stack_c::transS(current.pos);
                    mDoMtx_stack_c::YrotM(mCurAngle.y);
                    mDoMtx_stack_c::transM(field_0xbd8->field_0xb8);
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xe8);
                    mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
#endif

                    dbg_0x8 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.15f, 5.0f, 1.0f) == 0.0f;
                    dbg_0x9 = cLib_addCalcPos(&mDemoCam.mDemoCamEye, mDemoCam.field_0x24, 0.15f, 5.0f, 1.0f) == 0.0f;
                    if (dbg_0x9 && dbg_0x8 && mMotionPhase == 1) {
                        mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);
                        mDoMtx_stack_c::transM(field_0xbd8->field_0xc4);
                        mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                        mDoMtx_stack_c::XrotM(field_0xbd8->field_0xea);
                        mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
                        field_0xe80 = 60;
                        field_0xe84++;
                    }
                    break;

                case 5:
#ifdef DEBUG
                    mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                    mDoMtx_stack_c::transS(current.pos);
                    mDoMtx_stack_c::YrotM(mCurAngle.y);
                    mDoMtx_stack_c::transM(field_0xbd8->field_0xc4);
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xea);
                    mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
#endif

                    dbg_0x8 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.15f, 5.0f, 1.0f) == 0.0f;
                    dbg_0x9 = cLib_addCalcPos(&mDemoCam.mDemoCamEye, mDemoCam.field_0x24, 0.15f, 5.0f, 1.0f) == 0.0f;
                    if (dbg_0x9 &&  dbg_0x8) {
                        if (field_0xe80-- <= 0) {
                            daPy_getPlayerActorClass()->offPlayerNoDraw();
                            onWrestlerNoDraw();
                            initDemoCamera_ReadyLink();
                            field_0xe84++;
                        }
                    }
                    break;

                case 6:
                    field_0xe54 += field_0xe58;
                    cLib_chaseF(&field_0xe58, field_0xbd8->field_0xa4, 0.01f);
                    mDoMtx_stack_c::transS(mArenaPos);
                    mDoMtx_stack_c::YrotM(mArenaAngle);
                    mDoMtx_stack_c::transM(field_0xe54 - field_0xbd8->field_0xa0, field_0xbd8->field_0x9c, field_0xbd8->field_0x94);
                    mDoMtx_stack_c::multVecZero(&mDemoCam.mDemoCamEye);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xaa);
                    mDemoCam.mDemoCamCenter.set(0.0f, 0.0f, mArenaExtent * 0.5f - 100.0f);
                    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamCenter, &mDemoCam.mDemoCamCenter);

                    if (fabsf(field_0xe54) > (fabsf(field_0xbd8->field_0xa0) - 40.0f)) {
                        daPy_py_c* player = daPy_getPlayerActorClass();
                        player->changeOriginalDemo();
                        player->changeDemoMode(0x33, 0, 0, 0);
                        field_0xe80 = field_0xbd8->field_0xb6;
                        field_0xe84++;
                    }
                    break;

                case 7:
                    if (field_0xe80-- <= 0) {
                        mDoMtx_stack_c::transS(fopAcM_GetPosition(daPy_getPlayerActorClass()));
                        mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y);
                        mDoMtx_stack_c::transM(field_0xbd8->field_0xd0);
                        mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                        mDoMtx_stack_c::XrotM(field_0xbd8->field_0xec);
                        mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                        mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
                        field_0xe80 = 0x96 - field_0xbd8->field_0xb6;
                        field_0xe84++;
                    }
                    break;

                case 8:
                    if (daPy_getPlayerActorClass()->getBaseAnimeFrame() == 126.0f) {
                        dComIfGp_getVibration().StartShock(3, 15, cXyz(0.0f, 1.0f, 0.0f));
                    }

#ifdef DEBUG
                    mDoMtx_stack_c::transS(fopAcM_GetPosition(daPy_getPlayerActorClass()));
                    mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y);
                    mDoMtx_stack_c::transM(field_0xbd8->field_0xd0);
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xec);
                    mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                    mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
#endif

                    dbg_0x8 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.15f, 5.0f, 1.0f) == 0.0f;
                    dbg_0x9 = cLib_addCalcPos(&mDemoCam.mDemoCamEye, mDemoCam.field_0x24, 0.15f, 5.0f, 1.0f) == 0.0f;
                    if (field_0xe80-- <= 0 && dbg_0x9 && dbg_0x8) {
                        mDoMtx_stack_c::transS(fopAcM_GetPosition(daPy_getPlayerActorClass()));
                        mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y);
                        mDoMtx_stack_c::transM(field_0xbd8->field_0xdc);
                        mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                        mDoMtx_stack_c::XrotM(field_0xbd8->field_0xee);
                        mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                        mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
                        field_0xe80 = 60;
                        field_0xe84++;
                    }
                    break;

                case 9:
#ifdef DEBUG
                    mDoMtx_stack_c::transS(fopAcM_GetPosition(daPy_getPlayerActorClass()));
                    mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y);
                    mDoMtx_stack_c::transM(field_0xbd8->field_0xdc);
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDoMtx_stack_c::XrotM(field_0xbd8->field_0xee);
                    mDemoCam.field_0x18.set(0.0f, 0.0f, -100.0f);
                    mDoMtx_stack_c::multVec(&mDemoCam.field_0x18, &mDemoCam.field_0x18);
#endif

                    dbg_0x8 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.15f, 5.0f, 1.0f) == 0.0f;
                    dbg_0x9 = cLib_addCalcPos(&mDemoCam.mDemoCamEye, mDemoCam.field_0x24, 0.15f, 5.0f, 1.0f) == 0.0f;
                    if (dbg_0x9 && dbg_0x8) {
                        if (field_0xe80-- <= 0) {
                            field_0xe84++;
                        }
                    }
                    break;

                case 10:
                    dComIfGp_getEvent().setSkipProc(this, NULL, 0);
                    field_0x9ec = true;
                    mItemNo = 3;
                    setAction(&daNpcWrestler_c::gotoArena);
                    break;

                default:
                    JUT_PANIC(4821, "0");
                    break;
            }

            mDemoCamFovy = field_0xbd8->field_0xf0;
            if (field_0xe84 > 0) {
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            }
            break;

        case 3:
            break;

        default:
            JUT_PANIC(4828, "0");
            break;
    }

    return true;
}

/* 80B3AE24-80B3B4B4 00BC84 0690+00 2/0 0/0 0/0 .text            demoSumouWin__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouWin(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    dCamera_c* camBody = dCam_getBody();
    f32 fVar1;
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            field_0xe80 = 20;
            mWrestlerAction = 0;
            field_0xe96 = 2;
            break;

        case 2:
            Z2GetAudioMgr()->changeSubBgmStatus(4);
            switch (field_0xe84) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    camBody->SetTrimSize(2);
                    mDemoCam.mDemoCamCenter = camBody->Center();
                    mDemoCam.mDemoCamEye = camBody->Eye();
                    mDemoCamFovy = camBody->Fovy();

                    mDoMtx_stack_c::copy(player->getModelJointMtx(0));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x3c);
                    mDemoCam.field_0x3c = camBody->Eye() - mDemoCam.field_0x3c;
                    mDemoCam.field_0x3c.y -= 50.0f;

                    player->setSumouMoveLoseEnd();
                    setExpressionAnm(0x15, true);
                    setMotionAnm(0x33, field_0xbd8->common.morf_frame);
                    setLookMode(2);
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    field_0xe84++;
                    break;

                case 1:
                    iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 <= 0) {
                        camBody->Stop();
                        camBody->SetTrimSize(2);
                        field_0xe84++;
                    }
                    break;

                case 2:
                    mDoMtx_stack_c::copy(player->getModelJointMtx(1));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x18);
                    mDemoCam.field_0x18.y += 80.0f;
                    fVar1 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.1f, 50.0f, 0.2f);

                    mDoMtx_stack_c::copy(player->getModelJointMtx(0));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDemoCam.field_0x24 += mDemoCam.field_0x3c;
                    mDemoCam.mDemoCamEye = mDemoCam.field_0x24;

                    if (fVar1 == 0.0f) {
                        setExpressionAnm(0x16, true);
                        setMotion(0x19, -1.0f, 0);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);

                        if (mType == 0) {
                            current.pos.set(0.0f, 0.0f, 80.0f);
                        } else {
                            current.pos.set(0.0f, 0.0f, 160.0f);
                        }

                        mDoMtx_stack_c::multVec(&current.pos, &current.pos);
                        mDemoCam.mDemoCamEye.set(0.0f, 50.0f, 200.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);
                        mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                        mDemoCam.mDemoCamCenter = current.pos;
                        mDemoCam.mDemoCamCenter.y += 50.0f;
                        mDemoCam.field_0x18.set(mDemoCam.mDemoCamCenter.x, mDemoCam.mDemoCamCenter.y + 100.0f, mDemoCam.mDemoCamCenter.z);
                        mDemoCamFovy = 60.0f;

                        player->setSumouLoseHeadUp();
                        field_0xe80 = 20;
                        field_0xe84++;
                    }
                    break;

                case 3:
                    if (cLib_addCalc(&mDemoCam.mDemoCamCenter.y, mDemoCam.field_0x18.y, 0.04f, 10.0f, 0.9f) == 0.0f) {
                        iVar1 = field_0xe80;
                        field_0xe80--;
                        if (iVar1 <= 0) {
                            camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                            camBody->Start();
                            camBody->SetTrimSize(0);
                            dComIfGp_event_reset();
                            field_0xe8c = 0.0f;
                            setAction(&daNpcWrestler_c::wait);
                        }
                    }
                    break;
            }

            if (field_0xe84 > 0) {
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            }
            break;

        case 3:
            field_0xe99 = 1;
            break;
    }

    return true;
}

/* 80B3B4B4-80B3BC84 00C314 07D0+00 3/0 0/0 0/0 .text            demoSumouLose__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouLose(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    dCamera_c* camBody = dCam_getBody();
    int iVar1;
    f32 fVar1, fVar2, fVar3;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            field_0xe80 = 20;
            if (mType == 0) {
                daNpcF_onTmpBit(0x2E);
            } else {
                daNpcF_onEvtBit(0x3E);
            }

            mWrestlerAction = 0;
            field_0xe96 = 2;
            break;

        case 2:
            Z2GetAudioMgr()->changeSubBgmStatus(5);
            switch (field_0xe84) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    camBody->Stop();
                    camBody->SetTrimSize(2);
                    mDemoCam.mDemoCamCenter = camBody->Center();
                    mDemoCam.mDemoCamEye = camBody->Eye();
                    mDemoCamFovy = camBody->Fovy();
                    mDemoCam.field_0x24.set(camBody->Eye().x, camBody->Eye().y + 180.0f, camBody->Eye().z);
                    player->setSumouMoveWinEnd();

                    setExpressionAnm(3, true);
                    setMotion(0x1A, -1.0f, 0);
                    setLookMode(0);
                    mActorMngr[0].remove();
                    field_0xe84++;
                    break;

                case 1:
                    if (mMotionPhase == 0 && mpMorf->getFrame() == 40.0f) {
                        dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));

                        int jointNo = mType == 0 ? 0x16 : 0x14;
                        cXyz sp74;
                        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
                        mDoMtx_stack_c::multVecZero(&sp74);
                        fopAcM_effSmokeSet1(&field_0xde8, &field_0xdec, &sp74, NULL, 1.6f, &tevStr, 1);
                    } else if (mMotionPhase == 0) {
                        if (mpMorf->getFrame() > mpMorf->getEndFrame() - 1.0f) {
                            mDoMtx_stack_c::transS(current.pos);
                            mDoMtx_stack_c::YrotM(mCurAngle.y);

                            if (mType == 0) {
                                current.pos.set(0.0f, -87.08f, -266.88f);
                            } else {
                                current.pos.set(0.0f, -92.76f, -302.16f);
                            }

                            mDoMtx_stack_c::multVec(&current.pos, &current.pos);
                            old.pos.set(current.pos);
                        }
                    }

                    iVar1 = field_0xe80;
                    field_0xe80--;
                    if (iVar1 <= 0) {
                        int joint_no = mType == 0 ? 2 : 2;
                        fVar1 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, getJointPos(joint_no), 0.1f, 50.0f, 1.0f);
                        fVar2 = cLib_addCalc(&mDemoCam.mDemoCamEye.y, mDemoCam.field_0x24.y, 0.05f, 50.0f, 1.0f);
                        fVar3 = cLib_addCalc(&mDemoCamFovy, 30.0f, 0.08f, 10.0f, 0.3f);
                        if (fVar1 == 0.0f && fVar2 == 0.0f && fVar3 == 0.0f) {
                            field_0xe84++;
                        }
                    }
                    break;

                case 2:
                    mDemoCam.mDemoCamEye.set(0.0f, 70.0f, 200.0f);
                    mDoMtx_stack_c::transS(*player->getViewerCurrentPosP());
                    mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(player)->y);
                    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                    mDemoCam.mDemoCamCenter = *player->getViewerCurrentPosP();
                    mDemoCam.mDemoCamCenter.y += 30.0f;
                    mDemoCam.field_0x18.set(mDemoCam.mDemoCamCenter.x, mDemoCam.mDemoCamCenter.y + 100.0f, mDemoCam.mDemoCamCenter.z);
                    mDemoCamFovy = 60.0f;

                    player->changeOriginalDemo();
                    player->changeDemoMode(0x31, 1, 0, 0);
                    field_0xe80 = 20;
                    field_0xe84++;
                    // fallthrough
                case 3:
                    if (cLib_addCalc(&mDemoCam.mDemoCamCenter.y, mDemoCam.field_0x18.y, 0.04f, 10.0f, 0.2f) == 0.0f) {
                        iVar1 = field_0xe80;
                        field_0xe80--;
                        if (iVar1 <= 0) {
                            player->changeDemoMode(1, 0, 0, 0);
                            camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                            camBody->Start();
                            camBody->SetTrimSize(0);
                            dComIfGp_event_reset();
                            field_0xe8c = field_0xbd8->common.morf_frame;

                            if (mType == 0) {
                                setAction(&daNpcWrestler_c::wait);
                            } else {
                                setAction(&daNpcWrestler_c::demoTalkAfterLose);
                            }
                        }
                    }
                    break;
            }

            if (field_0xe84 > 0) {
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            }
            break;

        case 3:
            field_0xe99 = 1;
            break;
    }

    return true;
}

/* 80B3BC84-80B3C278 00CAE4 05F4+00 11/0 0/0 0/0 .text demoSumouWin2__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouWin2(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    dCamera_c* camBody = dCam_getBody();
    f32 fVar1;
    int iVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            field_0xe80 = 0;
            mWrestlerAction = 0;
            field_0xe96 = 2;
            break;

        case 2: {
            Z2GetAudioMgr()->changeSubBgmStatus(4);
            switch (field_0xe84) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    mDemoCam.mDemoCamCenter = camBody->Center();
                    mDemoCam.mDemoCamEye = camBody->Eye();
                    mDemoCamFovy = camBody->Fovy();

                    mDoMtx_stack_c::copy(player->getModelJointMtx(0));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x3c);
                    mDemoCam.field_0x3c = camBody->Eye() - mDemoCam.field_0x3c;
                    mDemoCam.field_0x3c.y -= 50.0f;

                    camBody->Stop();
                    camBody->SetTrimSize(2);

                    player->setSumouPunchLoseEnd();
                    setExpression(5, -1.0f);
                    setMotionAnm(0x21, field_0xbd8->common.morf_frame);
                    setLookMode(2);
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    field_0xe84++;
                    break;

                case 1:
                    mDoMtx_stack_c::copy(player->getModelJointMtx(1));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x18);
                    mDemoCam.field_0x18.y += 80.0f;
                    fVar1 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.1f, 50.0f, 0.2f);

                    mDoMtx_stack_c::copy(player->getModelJointMtx(0));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDemoCam.field_0x24 += mDemoCam.field_0x3c;
                    mDemoCam.mDemoCamEye = mDemoCam.field_0x24;

                    if (fVar1 == 0.0f) {
                        setExpressionAnm(0x16, true);
                        setMotion(0x19, -1.0f, 0);
                        mDemoCam.mDemoCamEye.set(0.0f, 50.0f, 200.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);
                        mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                        mDemoCam.mDemoCamCenter = current.pos;
                        mDemoCam.mDemoCamCenter.y += 50.0f;
                        mDemoCam.field_0x18.set(mDemoCam.mDemoCamCenter.x, mDemoCam.mDemoCamCenter.y + 100.0f, mDemoCam.mDemoCamCenter.z);
                        mDemoCamFovy = 60.0f;

                        player->setSumouLoseHeadUp();
                        field_0xe80 = 20;
                        field_0xe84++;
                    }
                    break;

                case 2:
                    if (cLib_addCalc(&mDemoCam.mDemoCamCenter.y, mDemoCam.field_0x18.y, 0.04f, 10.0f, 0.9f) == 0.0f) {
                        iVar1 = field_0xe80;
                        field_0xe80--;
                        if (iVar1 <= 0) {
                            camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                            camBody->Start();
                            camBody->SetTrimSize(0);
                            dComIfGp_event_reset();
                            field_0xe8c = 0.0f;
                            setAction(&daNpcWrestler_c::wait);
                        }
                    }
                    break;
            }

            if (field_0xe84 > 0) {
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            }
            break;
        }

        case 3:
            field_0xe99 = 1;
            break;
    }

    return true;
}

/* 80B3C278-80B3CA2C 00D0D8 07B4+00 5/0 0/0 0/0 .text demoSumouLose2__15daNpcWrestler_cFPv */
bool daNpcWrestler_c::demoSumouLose2(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    dCamera_c* camBody = dCam_getBody();
    int iVar1;
    f32 fVar1, fVar2, fVar3;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;

            if (mType == 0) {
                daNpcF_onTmpBit(0x2E);
            } else {
                daNpcF_onEvtBit(0x3E);
            }

            mWrestlerAction = 0;
            field_0xe96 = 2;
            break;

        case 2:
            Z2GetAudioMgr()->changeSubBgmStatus(5);
            switch (field_0xe84) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    camBody->Stop();
                    camBody->SetTrimSize(2);
                    mDemoCam.mDemoCamCenter = camBody->Center();
                    mDemoCam.mDemoCamEye = camBody->Eye();
                    mDemoCamFovy = camBody->Fovy();
                    mDemoCam.field_0x24.set(camBody->Eye().x, camBody->Eye().y + 180.0f, camBody->Eye().z);
                    player->setSumouPunchWinEnd();
                    setExpressionAnm(4, true);
                    setMotion(0x1B, -1.0f, 0);
                    setLookMode(0);
                    mActorMngr[0].remove();
                    field_0xe84++;
                    break;

                case 1: {
                    if (mMotionPhase == 0 && mpMorf->getFrame() == 20.0f) {
                        dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));

                        int jointNo = mType == 0 ? 0x16 : 0x14;
                        cXyz sp74;
                        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jointNo));
                        mDoMtx_stack_c::multVecZero(&sp74);
                        fopAcM_effSmokeSet1(&field_0xde8, &field_0xdec, &sp74, NULL, 1.6f, &tevStr, 1);
                    } else if (mMotionPhase == 0) {
                        if (mpMorf->getFrame() > mpMorf->getEndFrame() - 1.0f) {
                            mDoMtx_stack_c::transS(current.pos);
                            mDoMtx_stack_c::YrotM(mCurAngle.y);

                            if (mType == 0) {
                                current.pos.set(0.0f, -87.08f, -266.88f);
                            } else {
                                current.pos.set(0.0f, -92.76f, -302.16f);
                            }

                            mDoMtx_stack_c::multVec(&current.pos, &current.pos);
                            old.pos.set(current.pos);
                        }
                    }

                    int joint_no = mType == 0 ? 2 : 2;
                    fVar1 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, getJointPos(joint_no), 0.1f, 50.0f, 1.0f);
                    fVar2 = cLib_addCalc(&mDemoCam.mDemoCamEye.y, mDemoCam.field_0x24.y, 0.05f, 50.0f, 1.0f);
                    fVar3 = cLib_addCalc(&mDemoCamFovy, 30.0f, 0.08f, 10.0f, 0.3f);

                    if (fVar1 == 0.0f && fVar2 == 0.0f && fVar3 == 0.0f) {
                        field_0xe84++;
                    }

                    break;
                }

                case 2:
                    mDemoCam.mDemoCamEye.set(0.0f, 70.0f, 200.0f);
                    mDoMtx_stack_c::transS(*player->getViewerCurrentPosP());
                    mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(player)->y);
                    mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                    mDemoCam.mDemoCamCenter = *player->getViewerCurrentPosP();
                    mDemoCam.mDemoCamCenter.y += 30.0f;
                    mDemoCam.field_0x18.set(mDemoCam.mDemoCamCenter.x, mDemoCam.mDemoCamCenter.y + 100.0f, mDemoCam.mDemoCamCenter.z);
                    mDemoCamFovy = 60.0f;

                    player->changeOriginalDemo();
                    player->changeDemoMode(0x31, 1, 0, 0);
                    field_0xe80 = 20;
                    field_0xe84++;
                    // fallthrough
                case 3: {
                    f32 calc_ret = cLib_addCalc(&mDemoCam.mDemoCamCenter.y, mDemoCam.field_0x18.y, 0.04f, 10.0f, 0.2f);
                    if (calc_ret == 0.0f) {
                        if (field_0xe80-- <= 0) {
                            player->changeDemoMode(1, 0, 0, 0);
                            camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                            camBody->Start();
                            camBody->SetTrimSize(0);
                            dComIfGp_event_reset();
                            field_0xe8c = field_0xbd8->common.morf_frame;

                            if (mType == 0) {
                                setAction(&daNpcWrestler_c::wait);
                            } else {
                                setAction(&daNpcWrestler_c::demoTalkAfterLose);
                            }
                        }
                    }

                    break;
                }

                default:
                    JUT_PANIC(5347, "0");
                    break;
            }

            if (field_0xe84 > 0) {
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            }
            break;

        case 3:
            field_0xe99 = 1;
            break;

        default:
            JUT_PANIC(5355, "0");
    }

    return true;
}

/* 80B3CA2C-80B3D0C0 00D88C 0694+00 4/0 0/0 0/0 .text demoSumouUnilateralWin__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::demoSumouUnilateralWin(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    dCamera_c* camBody = dCam_getBody();
    f32 fVar1;

    switch (field_0xe96) {
        case 0:
            field_0xe84 = 0;
            field_0xe80 = 0;
            mWrestlerAction = 0;
            dMeter2Info_resetMeterString();
            field_0xe96 = 2;
            break;

        case 2:
            Z2GetAudioMgr()->changeSubBgmStatus(4);
            switch (field_0xe84) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    mDemoCam.mDemoCamCenter = camBody->Center();
                    mDemoCam.mDemoCamEye = camBody->Eye();
                    mDemoCamFovy = camBody->Fovy();

                    mDoMtx_stack_c::copy(player->getModelJointMtx(0));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x3c);
                    mDemoCam.field_0x3c = camBody->Eye() - mDemoCam.field_0x3c;
                    mDemoCam.field_0x3c.y -= 50.0f;

                    camBody->Stop();
                    camBody->SetTrimSize(2);

                    player->setSumouMoveLoseEnd();
                    player->setThrowDamage(mCurAngle.y, field_0xbd8->horizontal_speed, field_0xbd8->vertical_speed, 0, 1, 0);
                    setExpression(5, -1.0f);
                    setMotionAnm(0x1B, field_0xbd8->common.morf_frame);
                    setLookMode(2);
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    field_0xe84++;
                    break;

                case 1:
                    mDoMtx_stack_c::copy(player->getModelJointMtx(1));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x18);
                    mDemoCam.field_0x18.y += 80.0f;
                    fVar1 = cLib_addCalcPos(&mDemoCam.mDemoCamCenter, mDemoCam.field_0x18, 0.5f, 70.0f, 0.2f);

                    mDoMtx_stack_c::copy(player->getModelJointMtx(0));
                    mDoMtx_stack_c::multVecZero(&mDemoCam.field_0x24);
                    mDemoCam.field_0x24 += mDemoCam.field_0x3c;
                    mDemoCam.mDemoCamEye = mDemoCam.field_0x24;

                    if (fVar1 == 0.0f) {
                        setExpressionAnm(0x16, true);
                        setMotion(0x19, -1.0f, 0);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);

                        if (mType == 0) {
                            current.pos.set(0.0f, 0.0f, 80.0f);
                        } else {
                            current.pos.set(0.0f, 0.0f, 160.0f);
                        }

                        mDoMtx_stack_c::multVec(&current.pos, &current.pos);
                        mDemoCam.mDemoCamEye.set(0.0f, 50.0f, 200.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(mCurAngle.y);
                        mDoMtx_stack_c::multVec(&mDemoCam.mDemoCamEye, &mDemoCam.mDemoCamEye);
                        mDemoCam.mDemoCamCenter = current.pos;
                        mDemoCam.mDemoCamCenter.y += 50.0f;
                        mDemoCam.field_0x18.set(mDemoCam.mDemoCamCenter.x, mDemoCam.mDemoCamCenter.y + 100.0f, mDemoCam.mDemoCamCenter.z);
                        mDemoCamFovy = 60.0f;

                        player->setSumouLoseHeadUp();
                        field_0xe80 = 20;
                        field_0xe84++;
                    }
                    break;

                case 2: {
                    f32 add_calc = cLib_addCalc(&mDemoCam.mDemoCamCenter.y, mDemoCam.field_0x18.y, 0.04f, 10.0f, 0.9f);
                    if (add_calc == 0.0f) {
                        if (field_0xe80-- <= 0) {
                            camBody->Reset(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye);
                            camBody->Start();
                            camBody->SetTrimSize(0);
                            dComIfGp_event_reset();
                            field_0xe8c = 0.0f;
                            setAction(&daNpcWrestler_c::wait);
                        }
                    }
                    break;
                }

                default:
                    JUT_PANIC(5478, "0");
                    break;
            }

            if (field_0xe84 > 0) {
                camBody->Set(mDemoCam.mDemoCamCenter, mDemoCam.mDemoCamEye, mDemoCamFovy, 0);
            }
            break;

        case 3:
            field_0xe99 = 1;
            break;

        default:
            JUT_PANIC(5486, "0");
            break;
    }

    return true;
}

/* 80B3D0C0-80B3D584 00DF20 04C4+00 2/0 0/0 0/0 .text demoTalkAfterLose__15daNpcWrestler_cFPv */
inline bool daNpcWrestler_c::demoTalkAfterLose(void* param_1) {
    bool retval = false;
    switch (field_0xe96) {
        case 0:
            initTalk(mMsgNo, NULL);
            mMsgTimer = 0;
            field_0xe99 = 0;
            field_0xe84 = 0;
            field_0xe96 = 2;
            break;

        case 2:
            switch (field_0xe84) {
                case 0:
                    if (dComIfGp_event_runCheck() && eventInfo.checkCommandTalk()) {
                        if (talkProc(NULL, TRUE, NULL)) {
                            setMotion(0x1D, -1.0f, 0);
                            field_0xe84++;
                            break;
                        }

                        int iVar1 = mMsgTimer;
                        int i_expression, i_motion;
                        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
                            setExpression(i_expression, -1.0f);
                        } else if (iVar1 != 0 && mMsgTimer == 0) {
                            setExpressionTalkAfter();
                        }
                    } else {
                        eventInfo.onCondition(dEvtCnd_CANTALK_e);
                        fopAcM_orderSpeakEvent(this, 0, 0);
                    }

                    break;

                case 1:
                    if (mpMorf->isStop()) {
                        setLookMode(3);
                        initTalk(mMsgNo, NULL);
                        field_0xe84++;
                    }
                    break;

                case 2:
                    if (dComIfGp_event_runCheck() && eventInfo.checkCommandTalk()) {
                        if (talkProc(NULL, TRUE, NULL)) {
                            mOrderEvtNo = 6;
                            changeEvent(l_resName[mType], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                            setAction(&daNpcWrestler_c::demo);
                            retval = true;
                            break;
                        }

                        int iVar1 = mMsgTimer;
                        int i_expression, i_motion;
                        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
                            setExpression(i_expression, -1.0f);
                        } else if (iVar1 != 0 && mMsgTimer == 0) {
                            setExpressionTalkAfter();
                        }
                    } else {
                        eventInfo.onCondition(dEvtCnd_CANTALK_e);
                        fopAcM_orderSpeakEvent(this, 0, 0);
                    }

                    break;

                default:
                    JUT_PANIC(5571, "0");
                    break;
            }
            break;

        case 3:
            setExpression(5, -1.0f);
            dComIfGp_event_reset();
            break;

        default:
            JUT_PANIC(5579, "0");
            break;
    }

    return retval;
}

/* 80B3D584-80B3DB50 00E3E4 05CC+00 3/0 0/0 0/0 .text EvCut_grDSEntry__15daNpcWrestler_cFi */
inline BOOL daNpcWrestler_c::EvCut_grDSEntry(int i_cutIndex) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutName = (int*)eventManager.getMyNowCutName(i_cutIndex);

    if (eventManager.getIsAddvance(i_cutIndex) != 0) {
        switch (*cutName) {
            case '0001':
                setLookMode(3);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                break;

            case '0007':
                setExpression(2, -1.0f);
                break;

            case '0002':
            case '0005':
            case '0006':
            case '0008':
            case '0009':
                initTalk(mMsgNo, NULL);
                mMsgTimer = 0;
                initTalkAngle();
                break;

            case '0003':
                setMotionAnm(62, 0.0f);
                // fallthrough
            case '0004':
                initTalk(mMsgNo, NULL);
                mMsgTimer = 0;
                break;

            default:
                JUT_PANIC(5622, "0");
                break;
        }
    }

    int iVar1 = mMsgTimer;
    int i_expression, i_motion;
    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else if (iVar1 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    int* piVar1;
    switch (*cutName) {
        case '0001':
        case '0007':
            return TRUE;

        case '0002':
        case '0005':
        case '0006':
        case '0008':
        case '0009':
            if (setTalkAngle() && talkProc(NULL, TRUE, NULL)) {
                int choice_no = mFlow.getChoiceNo();
#ifdef DEBUG
                // "Two-way split %s\n", (mFlow.getChoiceNo() == 0) ? "Yes" : "No"
                OS_REPORT("二択分岐 %s\n", (choice_no == 0) ? "はい" : "いいえ");
#endif
                if (choice_no == 0) {
                    mOrderEvtNo = 2;
                    changeEvent(l_resName[mType], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                }
                return TRUE;
            }
            break;

        case '0003': {
            cXyz* xyz_p = dComIfGp_evmng_getMyXyzP(i_cutIndex, "pos");
            if (xyz_p != NULL && cLib_chasePosXZ(&current.pos, *xyz_p, 3.5f) != 0) {
                return TRUE;
            }

            break;
        }

        case '0004': {
            bool is_talk = false;
            bool bVar1 = false;
            if (talkProc(NULL, TRUE, NULL)) {
                is_talk = true;
            }

            cXyz* pcVar1 = dComIfGp_evmng_getMyXyzP(i_cutIndex, "pos");
            if (pcVar1 != NULL && cLib_chasePosXZ(&current.pos, *pcVar1, 3.5f) != 0) {
                piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "angle");
                if (piVar1 != NULL) {
                    if (cLib_chaseAngleS(&shape_angle.y, *piVar1, 0x100)) {
                        setMotion(0, -1.0f, 0);
                        bVar1 = true;
                    }

                    setAngle(shape_angle.y);
                }
            }

            return (is_talk && bVar1) ? TRUE : FALSE;
        }

        default: {
            JUT_PANIC(5688, "0");
            break;
        }
    }

    return FALSE;
}

/* 80B3DB50-80B3DCE8 00E9B0 0198+00 1/0 0/0 0/0 .text EvCut_grDSEntry2__15daNpcWrestler_cFi */
inline BOOL daNpcWrestler_c::EvCut_grDSEntry2(int i_cutIndex) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutName = (int*)eventManager.getMyNowCutName(i_cutIndex);

    if (eventManager.getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
            case '0002':
                setLookMode(3);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                break;

            default:
                JUT_PANIC(5715, "0");
                break;
        }
    }

    switch (*cutName) {
        case '0001':
            return TRUE;

        case '0002':
            mItemNo = 2;
            setAction(&daNpcWrestler_c::gotoArena);
            dComIfGp_event_reset();
            mOrderEvtNo = 0;
            mEventIdx = -1;
            return TRUE;

        default:
            JUT_PANIC(5735, "0");
            break;
    }

    return FALSE;
}

/* 80B3DCE8-80B3E0FC 00EB48 0414+00 2/0 0/0 0/0 .text EvCut_grDSEntry3_4__15daNpcWrestler_cFi */
BOOL daNpcWrestler_c::EvCut_grDSEntry3_4(int i_cutIndex) {
    dEvent_manager_c* eventManager = dComIfGp_getPEvtManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (cutName == NULL) {
        return FALSE;
    }

    if (eventManager->getIsAddvance(i_cutIndex)){
        switch (*cutName) {
            case '0001':
                setLookMode(3);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                initTalk(mMsgNo, NULL);
                initTalkAngle();
                mMsgTimer = 0;
                break;
        }
    }

    int iVar1 = mMsgTimer;
    int i_expression, i_motion;
    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) != 0) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else {
        if (iVar1 != 0 && mMsgTimer == 0) {
            setExpressionTalkAfter();
        }
    }

    switch (*cutName) {
        case '0001':
            if (setTalkAngle() && talkProc(NULL, TRUE, NULL)) {
                #ifdef DEBUG
                char* choice;
                if (mFlow.getChoiceNo() == 0) {
                    choice = "はい"; 
                } else {
                    choice = "いいえ";
                }
                OS_REPORT("二択分岐 %s\n", choice);
                #endif

                if (mFlow.getChoiceNo() == 0) {
                    mOrderEvtNo = 5;
                    changeEvent(l_resName[mType], l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                }
                return TRUE;
            }
            break;
    }

    return FALSE;
}

/* 80B3E0FC-80B3E584 00EF5C 0488+00 1/0 0/0 0/0 .text EvCut_grDSEntry5__15daNpcWrestler_cFi */
BOOL daNpcWrestler_c::EvCut_grDSEntry5(int i_cutIndex) {
    dEvent_manager_c* eventManager = dComIfGp_getPEvtManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
            case '0002':
                setLookMode(3);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                initTalk(mMsgNo, NULL);
                initTalkAngle();
                mMsgTimer = 0;
                break;
        }
    }

    int iVar1 = mMsgTimer;
    int i_expression, i_motion;
    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) != 0) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else if (iVar1 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0001':
            return TRUE;
            
        case '0002':
            if (setTalkAngle() && talkProc(NULL, TRUE, NULL)) {
                mItemNo = 3;
                setAction(&daNpcWrestler_c::gotoArena);
                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
                return TRUE;
            }
    }

    return FALSE;
}

/* 80B3E584-80B3EA2C 00F3E4 04A8+00 1/0 0/0 0/0 .text            EvCut_grDSLose__15daNpcWrestler_cFi */
BOOL daNpcWrestler_c::EvCut_grDSLose(int i_cutIndex) {
    dEvent_manager_c* eventManager = dComIfGp_getPEvtManager();
    int* cutName = (int*)eventManager->getMyNowCutName(i_cutIndex);
    int* piVar1;
    cXyz* pcVar1;

    if (eventManager->getIsAddvance(i_cutIndex)) {
        switch (*cutName) {
            case '0001':
                break;

            case '0002':
                piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "angle");
                pcVar1 = dComIfGp_evmng_getMyXyzP(i_cutIndex, "pos");
                if (pcVar1 != NULL) {
                    current.pos.set(*pcVar1);
                    old.pos = current.pos;
                }

                if (piVar1 != NULL) {
                    setAngle(*piVar1);
                }

                setLookMode(3);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                setMotionAnm(0x39, 0.0f);
                break;

            case '0003':
            case '0004':
                initTalk(mMsgNo, NULL);
                initTalkAngle();
                mMsgTimer = 0;
                break;
        }
    }

    int iVar1 = mMsgTimer;
    int i_expression, i_motion;
    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) != 0) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else if (iVar1 != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0001':
        case '0002':
            return TRUE;

        case '0003':
        case '0004':
            if (setTalkAngle() && talkProc(NULL, TRUE, NULL)) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                return TRUE;
            }
            break;
    }

    return FALSE;
}

/* 80B3EA2C-80B3EA4C 00F88C 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Create__FPv */
static int daNpcWrestler_Create(void* a_this) {
    daNpcWrestler_c* i_this = (daNpcWrestler_c*)a_this;
    return i_this->Create();

}

/* 80B3EA4C-80B3EA6C 00F8AC 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Delete__FPv */
static int daNpcWrestler_Delete(void* a_this) {
    daNpcWrestler_c* i_this = (daNpcWrestler_c*)a_this;
    return i_this->Delete();
}

/* 80B3EA6C-80B3EA8C 00F8CC 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Execute__FPv */
static int daNpcWrestler_Execute(void* a_this) {
    daNpcWrestler_c* i_this = (daNpcWrestler_c*)a_this;
    return i_this->Execute();
}

/* 80B3EA8C-80B3EAAC 00F8EC 0020+00 1/0 0/0 0/0 .text            daNpcWrestler_Draw__FPv */
static int daNpcWrestler_Draw(void* a_this) {
    daNpcWrestler_c* i_this = (daNpcWrestler_c*)a_this;
    return i_this->Draw();
}

/* 80B3EAAC-80B3EAB4 00F90C 0008+00 1/0 0/0 0/0 .text            daNpcWrestler_IsDelete__FPv */
static int daNpcWrestler_IsDelete(void* a_this) {
    return 1;
}

/* 80B3EAE4-80B3EB94 00F944 00B0+00 1/0 0/0 0/0 .text            setParam__15daNpcWrestler_cFv */
inline void daNpcWrestler_c::setParam() {
    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(5, 6);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(3, 6);
    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;

    if (mType == 1 && daPy_py_c::checkNowWolf()) {
        attention_info.flags = 0;
    }

    mAcchCir.SetWallR(field_0xbdc->mWallR);
    mAcchCir.SetWallH(field_0xbdc->mWallH);
    gravity = field_0xbd8->common.gravity;
}

inline bool daNpcWrestler_c::selectAction() {
    actionFunc null_action = NULL;
    if (null_action != NULL && chkAction(null_action) == FALSE) {
        setAction(null_action);
        return true;
    }

    return false;
}

/* 80B3EF10-80B3FCE8 00FD70 0DD8+00 1/1 0/0 0/0 .text setWrestlerVoice__15daNpcWrestler_cFv */
inline void daNpcWrestler_c::setWrestlerVoice() {
    J3DAnmTransform* anmTransform = mpMorf->getAnm();

    if (mType == 0) {
        if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x27)) {
            if (mpMorf->getFrame() == 11.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HARITE_ATK, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x29)) {
            if (mpMorf->getFrame() == 11.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HARITE_ATK, -1);
            } else if (mpMorf->getFrame() == 35.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HOLDED, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x28)) {
            if (mpMorf->getFrame() == 15.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HARITE_DMG, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2A)) {
            if (mpMorf->getFrame() == 15.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HARITE_DMG, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x30)) {
            if (mpMorf->getFrame() == 2.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_TUCKLE_ATK, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x31)) {
            if (mpMorf->getFrame() == 32.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_TUCKLE_ATK, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x32)) {
            if (mpMorf->getFrame() == 2.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_TUCKLE_ATK, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x33)) {
            if (mpMorf->getFrame() == 7.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HOLDED, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x36)) {
            if (mpMorf->getFrame() == 7.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HOLDED, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2B)) {
            if (mpMorf->getFrame() == 5.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_HOLD_BACK, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x35)) {
            if (mpMorf->getFrame() == 5.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_PUSH, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x39)) {
            if (mpMorf->getFrame() == 10.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_PUSH_LAST, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x23)) {
            if (mpMorf->getFrame() == 23.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_FALL_LOSE, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x24)) {
            if (mpMorf->getFrame() == 3.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_FALL_LOSE, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2D)) {
            if (mpMorf->getFrame() == 37.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_SHIKO, -1);
            }
        } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x26)) {
            if (mpMorf->getFrame() == 13.0f) {
                mSound.startCreatureVoice(Z2SE_BOU_V_SUMO_PUSHED_BACK, -1);
            }
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x31)) {
        if (mpMorf->getFrame() == 42.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_SHIKO, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2C)) {
        if (mpMorf->getFrame() == 11.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HARITE_ATK, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2E)) {
        if (mpMorf->getFrame() == 11.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HARITE_ATK, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2D)) {
        if (mpMorf->getFrame() == 12.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HARITE_DMG, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2F)) {
        if (mpMorf->getFrame() == 15.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HARITE_DMG, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x35)) {
        if (mpMorf->getFrame() == 2.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_TUCKLE_ATK, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x36)) {
        if (mpMorf->getFrame() == 32.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_TUCKLE_ATK, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x37)) {
        if (mpMorf->getFrame() == 2.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_TUCKLE_ATK, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2E)) {
        if (mpMorf->getFrame() == 35.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HOLDED, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x38)) {
        if (mpMorf->getFrame() == 7.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HOLDED, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x3B)) {
        if (mpMorf->getFrame() == 7.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HOLDED, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x30)) {
        if (mpMorf->getFrame() == 5.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_HOLD_BACK, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x2B)) {
        if (mpMorf->getFrame() == 13.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_PUSHED_BACK, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x3A)) {
        if (mpMorf->getFrame() == 5.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_PUSH, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x43)) {
        if (mpMorf->getFrame() == 10.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_PUSH_LAST, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x28)) {
        if (mpMorf->getFrame() == 23.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_FALL_LOSE, -1);
        }
    } else if (anmTransform == (J3DAnmTransform*)getTrnsfrmKeyAnmP(l_resName[mType], 0x29)) {
        if (mpMorf->getFrame() == 3.0f) {
            mSound.startCreatureVoice(Z2SE_GRN_V_SUMO_FALL_LOSE, -1);
        }
    }
}

/* 80B3EB94-80B3EF10 00F9F4 037C+00 1/0 0/0 0/0 .text            main__15daNpcWrestler_cFv */
inline BOOL daNpcWrestler_c::main() {
    if (!selectAction() && field_0xdcc != NULL) {
        (this->*field_0xdcc)(NULL);
    }

    if (dComIfGp_event_runCheck() != 0 && !eventInfo.checkCommandTalk() && field_0xe78 != -1) {
        dComIfGp_event_setItemPartnerId(field_0xe78);
        field_0xe78 = -1;
    }

    playExpression();
    playMotion();
    setWrestlerVoice();
    return TRUE;
}

/* 80B404FC-80B405E8 01135C 00EC+00 1/0 0/0 0/0 .text            ctrlBtk__15daNpcWrestler_cFv */
inline BOOL daNpcWrestler_c::ctrlBtk() {
    J3DAnmTextureSRTKey* btkAnm;
    if (mpMatAnm != NULL) {
        if (field_0xe04->btk_list->fileIdx >= 0) {
            btkAnm = (J3DAnmTextureSRTKey*)getTexSRTKeyAnmP(l_resName[mType], field_0xe04->btk_list->fileIdx);
        } else {
            btkAnm = NULL;
        }

        if (btkAnm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 80B40D1C-80B40D24 011B7C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpcWrestler_cFv */
inline BOOL daNpcWrestler_c::drawDbgInfo() {
    return FALSE;
}

/* 80B40D24-80B40D28 011B84 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__15daNpcWrestler_cFv */
inline void daNpcWrestler_c::drawOtherMdls() {
    /* empty function */
}

/* 80B42CD8-80B42CF8 -00001 0020+00 1/0 0/0 0/0 .data            daNpcWrestler_MethodTable */
static actor_method_class daNpcWrestler_MethodTable = {
    (process_method_func)daNpcWrestler_Create,
    (process_method_func)daNpcWrestler_Delete,
    (process_method_func)daNpcWrestler_Execute,
    (process_method_func)daNpcWrestler_IsDelete,
    (process_method_func)daNpcWrestler_Draw,
};

/* 80B42CF8-80B42D28 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_WRESTLER */
extern actor_process_profile_definition g_profile_NPC_WRESTLER = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_WRESTLER,          // mProcName
  &g_fpcLf_Method.base,      // sub_method
  0xEA0,                      // mSize (fix this)
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  329,                        // mPriority
  &daNpcWrestler_MethodTable, // sub_method
  0x00044007,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};
