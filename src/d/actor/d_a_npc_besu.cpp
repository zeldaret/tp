/**
 * @file d_a_npc_besu.cpp
 * 
*/

#include "d/actor/d_a_npc_besu.h"
#include "d/actor/d_a_npc_len.h"
#include "d/actor/d_a_tag_push.h"
#include "d/d_com_static.h"
#include "d/d_item.h"


#ifndef DEBUG
UNK_REL_DATA;
#endif


/* 8053EB7C-8053EBAC 000020 0030+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[6][2] = {
    {3, 1},
    {11, 2},
    {37, 5},
    {39, 5},
    {14, 6},
    {38, 5},
};

/* 8053EBAC-8053EC14 -00001 0068+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[13] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"CONVERSATION_ABOUT_SARU01", 11},
    {"CONVERSATION_ABOUT_SARU02", 11},
    {"CONVERSATION_ABOUT_PACHINKO1", 4},
    {"CONVERSATION_ABOUT_PACHINKO2", 4},
    {"CONVERSATION_ABOUT_PACHINKO3", 4},
    {"CACARICO_CONVERSATION", 9},
    {"DEMO13_STB", 0},
    {"SURPRISE", 6},
    {"CONVERSATION_ABOUT_DEATHMT", 5},
    {"NURSE", 10},
    {"CONVERSATION_ABOUT_ZORA", 5},
};

/* 8053EC14-8053EC44 -00001 0030+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[12] = {
    "",
    "Besu",
    "Besu_TW",
    "Besu0",
    "Besu1",
    "Besu2",
    "Besu3",
    "Besu_p1",
    "Len1",
    "Taro1",
    "Lud2",
    "Sera",
};

/* 8053EC44-8053EC48 0000E8 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[4] = {
    1, 3, 4, -1
};

/* 8053EC48-8053EC4C 0000EC 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    3, 2, -1,
};

/* 8053EC4C-8053EC50 0000F0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[3] = {
    3, 5, -1,
};

/* 8053EC50-8053EC54 0000F4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn3 */
static s8 l_loadResPtrn3[3] = {
    3, 6, -1,
};

/* 8053EC54-8053EC58 0000F8 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn4 */
static s8 l_loadResPtrn4[4] = {3, 4, 6, -1};

/* 8053EC58-8053EC5C 0000FC 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn5 */
static s8 l_loadResPtrn5[3] = {
    1, 7, -1,
};

/* 8053EC5C-8053EC64 000100 0007+01 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[7] = {
    1, 2, 3, 4, 5, 6, -1,
};

/* 8053EC64-8053ECB0 -00001 004C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[19] = {
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn1, l_loadResPtrn4,
    l_loadResPtrn0, l_loadResPtrn3, l_loadResPtrn2, l_loadResPtrn2,
    l_loadResPtrn2, l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0,
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn4,
    l_loadResPtrn0, l_loadResPtrn5, l_loadResPtrn9,
};

/* 8053ECB0-8053EFF8 000154 0348+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[30] = {
    {-1, 0, 0, 25, 2, 3, 1},
    {6, 0, 4, 19, 0, 4, 0},
    {7, 0, 4, 20, 0, 4, 0},
    {7, 0, 3, 25, 2, 3, 1},
    {5, 0, 4, 18, 0, 4, 0},
    {10, 2, 4, 23, 2, 4, 0},
    {11, 2, 4, 24, 2, 4, 0},
    {9, 2, 4, 22, 2, 4, 0},
    {8, 0, 3, 26, 0, 3, 0},
    {22, 2, 5, 52, 2, 5, 0},
    {19, 0, 5, 49, 0, 5, 0},
    {20, 2, 5, 50, 2, 5, 0},
    {21, 0, 5, 51, 0, 5, 0},
    {23, 0, 5, 53, 0, 5, 0},
    {24, 2, 5, 54, 2, 5, 0},
    {25, 0, 5, 55, 0, 5, 0},
    {17, 0, 5, 47, 0, 5, 0},
    {15, 2, 5, 45, 2, 5, 0},
    {16, 2, 5, 46, 2, 5, 0},
    {9, 0, 6, 21, 0, 6, 0},
    {10, 2, 6, 23, 2, 6, 0},
    {7, 0, 6, 22, 0, 6, 0},
    {8, 2, 6, 24, 2, 6, 0},
    {12, 0, 5, 42, 0, 5, 0},
    {13, 2, 5, 43, 2, 5, 0},
    {14, 0, 5, 44, 0, 5, 0},
    {8, 2, 2, 15, 2, 2, 0},
    {7, 2, 2, 14, 2, 2, 0},
    {18, 2, 5, 48, 2, 5, 0},
    {9, 2, 3, 27, 2, 3, 0},
};

/* 8053EFF8-8053F394 00049C 039C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[33] = {
    {17, 2, 3, 22, 0, 3, 1, 0},
    {15, 2, 4, 22, 0, 3, 1, 0},
    {18, 2, 3, 22, 0, 3, 1, 0},
    {15, 2, 3, 22, 0, 3, 1, 0},
    {13, 0, 4, 22, 0, 3, 1, 0},
    {14, 0, 4, 22, 0, 3, 1, 0},
    {13, 0, 3, 22, 0, 3, 1, 0},
    {19, 0, 3, 22, 0, 3, 1, 0},
    {16, 0, 3, 22, 0, 3, 1, 0},
    {12, 0, 3, 22, 0, 3, 1, 0},
    {31, 2, 5, 22, 0, 3, 1, 0},
    {28, 0, 5, 22, 0, 3, 0, 0},
    {29, 2, 5, 22, 0, 3, 0, 0},
    {30, 0, 5, 22, 0, 3, 0, 0},
    {32, 0, 5, 22, 0, 3, 0, 0},
    {33, 2, 5, 22, 0, 3, 0, 0},
    {34, 0, 5, 22, 0, 3, 0, 0},
    {26, 0, 5, 22, 0, 3, 0, 0},
    {10, 2, 5, 22, 0, 3, 0, 0},
    {11, 2, 5, 22, 0, 3, 0, 0},
    {11, 2, 6, 17, 2, 6, 0, 0},
    {6, 0, 5, 22, 0, 3, 0, 0},
    {7, 2, 5, 22, 0, 3, 0, 0},
    {8, 0, 5, 22, 0, 3, 0, 0},
    {6, 2, 2, -1, 0, 0, 0, 0},
    {5, 2, 2, -1, 0, 0, 0, 0},
    {27, 2, 5, 22, 0, 3, 0, 0},
    {12, 2, 4, 22, 0, 3, 0, 0},
    {10, 0, 3, 22, 0, 3, 1, 0},
    {11, 2, 3, 22, 0, 3, 1, 0},
    {14, 0, 3, 22, 0, 3, 1, 0},
    {5, 0, 3, 22, 0, 3, 1, 0},
    {6, 2, 3, 22, 0, 3, 1, 0},
};

/* 8053F394-8053F564 000838 01D0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[116] = {
    {3, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -1, 1}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {14, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, 0, 1}, {12, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {10, 0, 1}, {11, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {12, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {19, -1, 1}, {20, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {21, -1, 1}, {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {15, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {16, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {20, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {23, -1, 1}, {24, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {25, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {18, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {26, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {27, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {28, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {29, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 8053F564-8053F744 000A08 01E0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[120] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {15, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {18, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {20, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {3, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {28, -1, 1}, {29, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {30, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {31, -1, 1}, {32, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {11, 0, 1}, {13, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {11, 0, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {14, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {16, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {21, -1, 1}, {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {23, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {19, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {24, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {25, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {26, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {27, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {9, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 8053F744-8053F780 -00001 003C+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Besu_c */
char* daNpc_Besu_c::mCutNameList[15] = {
    "",
    "CONVERSATION_ABOUT_SARU",
    "CONVERSATION_ABOUT_PACHINKO",
    "CONVERSATION_ABOUT_WOODSWD",
    "SWDTUTORIAL",
    "FIND_MONKEY",
    "GET_WOODSWD",
    "CACARICO_CONVERSATION",
    "SURPRISE",
    "CONVERSATION_IN_HOTEL",
    "CONVERSATION_ABOUT_DEATHMT",
    "CONVERSATION_ABOUT_GORON",
    "NURSE",
    "CLOTH_TRY",
    "THANK_YOU",
};

/* 8053F828-8053F8DC 000CCC 00B4+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Besu_c */
daNpc_Besu_c::cutFunc daNpc_Besu_c::mCutList[15] = {
    NULL,
    &daNpc_Besu_c::cutConversationAboutSaru,
    &daNpc_Besu_c::cutConversationAboutPachinko,
    &daNpc_Besu_c::cutConversationAboutWoodSwd,
    &daNpc_Besu_c::cutSwdTutorial,
    &daNpc_Besu_c::cutFindMonkey,
    &daNpc_Besu_c::cutGetWoodSwd,
    &daNpc_Besu_c::cutCacaricoConversation,
    &daNpc_Besu_c::cutSurprise,
    &daNpc_Besu_c::cutConversationInHotel,
    &daNpc_Besu_c::cutConversationAboutDeathMt,
    &daNpc_Besu_c::cutConversationAboutGoron,
    &daNpc_Besu_c::cutNurse,
    &daNpc_Besu_c::cutClothTry,
    &daNpc_Besu_c::cutThankYou,
};

/* 80536E4C-8053701C 0000EC 01D0+00 1/0 0/0 0/0 .text            __dt__12daNpc_Besu_cFv */
daNpc_Besu_c::~daNpc_Besu_c() {
    // "Destruct":
    OS_REPORT("|%06d:%x|daNpc_Besu_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    if (mpBesuMorf != NULL) {
        mpBesuMorf->stopZelAnime();
    }

// #ifdef DEBUG
//     if (field_0xe40 != NULL) {
//         field_0xe40->removeHIO();
//     }
// #endif

    deleteRes((l_loadResPtrnList)[mType], (const char**)l_resNameList);
}

/* ############################################################################################## */
/* 8053E754-8053E7E4 000000 0090+00 13/13 0/0 0/0 .rodata          m__18daNpc_Besu_Param_c */
const daNpc_Besu_HIOParam daNpc_Besu_Param_c::m = {
    160.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    140.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    3,
    6,
    5,
    6,
    110.0f,
    0.0f,
    0.0f,
    0.0f,
    60,
    8,
    0,
    0,
    0,
    0,
    0,
    4.0f,
    -15.0f,
    0.0f,
    -15.0f,
    15.0f,
    30.0f,
    15.0f,
    70.0f,
    1.0f,
};

/* 8053701C-805372FC 0002BC 02E0+00 1/1 0/0 0/0 .text            create__12daNpc_Besu_cFv */
int daNpc_Besu_c::create() {
    static int const heapSize[19] = {
        0x35C0, 0x35C0, 0x3510, 0x35D0,
        0x35D0, 0x35D0, 0x3DC0, 0x3EC0,
        0x3DD0, 0x35C0, 0x35C0, 0x35D0,
        0x35C0, 0x35C0, 0x35D0, 0x35C0,
        0x35C0, 0x35C0, 0x0,
    };
    fopAcM_SetupActor2(this, daNpc_Besu_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4,
                       l_evtList, l_resNameList
    );
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();
    if (mType == 9) {
        mTwilight = false;
    }

    cPhs__Step rv = (cPhs__Step) loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x, BitSW:%02x<%08x> ",
                  fopAcM_getProcNameString(this), mType, mFlowNodeNo, getPathID(),
                  getBitSW(), fopAcM_GetParam(this));
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("\n");

        if (fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType]) == 0) {
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData_p = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

// #ifdef DEBUG
//         field_0xe40 = &l_HIO;
//         // "Beth":
//         field_0xe40->entryHIO("ベス");
// #endif

        reset();
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                            &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Besu_Param_c::m.common.weight, 0, this);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mCyl1.SetTgHitCallback(tgHitCallBack);
        mCyl2.Set(mCcDCyl);
        mCyl2.SetStts(&mCcStts);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return rv;
}

/* 805372FC-80537758 00059C 045C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Besu_cFv */
int daNpc_Besu_c::CreateHeap() {
    J3DModelData* modelData = NULL;
    J3DModel* model = NULL;
    int bmdIdx = 0;
    if (chkBesu3()) {
        bmdIdx = 4;
    } else if (chkNurse()) {
        bmdIdx = 3;
    }

    if (mTwilight) {
        bmdIdx = 1;
    }

    int resname_idx = l_bmdData[bmdIdx][1];
    int obres_idx = l_bmdData[bmdIdx][0];
    modelData = static_cast<J3DModelData*>(
        dComIfG_getObjectRes(l_resNameList[resname_idx], obres_idx));
    if (modelData == NULL) {
        return 0;
    }

    u32 dbg_0x24 = 0x11020284;
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000,
                                     dbg_0x24);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    model = (J3DModel*)mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);
    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (mType == 7) {
        bmdIdx = 5;
        resname_idx = l_bmdData[bmdIdx][1];
        obres_idx = l_bmdData[bmdIdx][0];
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[resname_idx],
                                                        obres_idx);

        if (modelData == NULL) {
            return 0;
        }

        dbg_0x24 = 0x11000084;
        mpBesuMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f,
                                          0, -1, NULL, 0x80000, dbg_0x24);
        if (mpBesuMorf == NULL || mpBesuMorf->getModel() == NULL) {
            return 0;
        }
    }

    if (mType == 6 || mType == 8) {
        if (l_bmdData[2][0] >= 0) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[2][1]],
                l_bmdData[2][0]);
        } else {
            modelData = 0;
        }

        if (modelData != NULL) {
            mpModel[0] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        }

        if (mpModel[0] == NULL) {
            return 0;
        }
    }

    if (mTwilight) {
        if (setFaceMotionAnm(26, false) && setMotionAnm(24, 0.0f, 0)) {
            return 1;
        } else {
            return 0;
        }
    } else {
        if (setFaceMotionAnm(3, false) && setMotionAnm(0, 0, 0)) {
            return 1;
        } else {
            return 0;
        }
    }
}

/* 80537914-80537948 000BB4 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Besu_cFv */
int daNpc_Besu_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_Besu_c -> Delete\n", g_Counter, this);
    fopAcM_GetID(this);
    this->~daNpc_Besu_c();
    return 1;
}

/* 80537948-80537968 000BE8 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Besu_cFv */
int daNpc_Besu_c::Execute() {
    return execute();
}

/* 80537968-805379FC 000C08 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Besu_cFv */
int daNpc_Besu_c::Draw() {
    daNpcT_MatAnm_c* matAnm = mpMatAnm[0];
    if (matAnm != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        J3DMaterial* material = modelData->getMaterialNodePointer(getEyeballMaterialNo());
        material->setMaterialAnm(matAnm);
    }

    return draw(FALSE, 0, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 805379FC-80537A1C 000C9C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Besu_cFP10fopAc_ac_c             */
int daNpc_Besu_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Besu_c*>(i_this)->CreateHeap();
}

/* 80537A1C-80537A74 000CBC 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Besu_cFP8J3DJointi                */
int daNpc_Besu_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Besu_c* i_this = (daNpc_Besu_c*) model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(param_0, model);
        }
    }

    return 1;
}

/* 80537A74-80537B34 000D14 00C0+00 2/1 0/0 0/0 .text            getType__12daNpc_Besu_cFv */
u8 daNpc_Besu_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;
        case 1:
            return 1;
        case 2:
            return 2;
        case 3:
            return 3;
        case 4:
            return 4;
        case 5:
            return 5;
        case 6:
            return 6;
        case 7:
            return 7;
        case 8:
            return 8;
        case 9:
            return 9;
        case 10:
            return 0xA;
        case 11:
            return 0xB;
        case 12:
            return 0xC;
        case 13:
            return 0xD;
        case 14:
            return 0xE;
        case 15:
            return 0xF;
        case 16:
            return 0x10;
        case 17:
            return 0x11;
        default:
            return 0x12;
    }
}

/* 80537B34-80537DE4 000DD4 02B0+00 2/1 0/0 0/0 .text            isDelete__12daNpc_Besu_cFv */
BOOL daNpc_Besu_c::isDelete() {
    switch (mType) {
        case 0:
            return !daNpcT_chkEvtBit(0x12) || daNpcT_chkEvtBit(0x1F);
        case 1:
            return daNpcT_chkEvtBit(0x12) == 0;
        case 2:
            return 0;
        case 3:
            return !daNpcT_chkEvtBit(0x3D) || daNpcT_chkEvtBit(0xA4);
        case 4:
            return !daNpcT_chkEvtBit(0xA4) || daNpcT_chkEvtBit(0x35);
        case 5:
            return !daNpcT_chkEvtBit(0x35) || daNpcT_chkEvtBit(0x55);
        case 6:
            return !daNpcT_chkEvtBit(0x55) || daNpcT_chkEvtBit(0x40);
        case 7:
            return !daNpcT_chkEvtBit(0x40) || daNpcT_chkEvtBit(0x44);
        case 8:
            return !daNpcT_chkEvtBit(0x44) || daNpcT_chkEvtBit(0x108);
        case 9:
            return 0;
        case 10:
            return daNpcT_chkEvtBit(0x108) == 0;
        case 11:
            return daNpcT_chkEvtBit(0x13);
        case 12:
            return !daNpcT_chkEvtBit(0x13) || daNpcT_chkEvtBit(0x12);
        case 13:
            return !daNpcT_chkEvtBit(0x12) || daNpcT_chkEvtBit(0x25C);
        case 14:
            return 0;
        case 15:
            return !daNpcT_chkEvtBit(0x25C) || daNpcT_chkEvtBit(0x80);
        case 16:
            return !daNpcT_chkEvtBit(0x80) || daNpcT_chkEvtBit(0x235);
        case 17:
            return 0;
        default:
            return 0;
    }
}

/* 80537DE4-80537FD0 001084 01EC+00 2/1 0/0 0/0 .text            reset__12daNpc_Besu_cFv */
void daNpc_Besu_c::reset() {
    csXyz acStack_20;
    int size = (u8*)&field_0x1134 - (u8*)&mNextAction;
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }
    initialize();
    for (int i = 0; i < 7; i++) {
        mActorMngr[i].initialize();
    }

    memset(&mNextAction, 0, size);
    acStack_20.setall(0);
    acStack_20.y = home.angle.y;
    switch (mType) {
        case 0:
            eventInfo.setIdx(0);
            break;
        case 1:
            mHide = daNpcT_chkEvtBit(0x1f) == 0;
            eventInfo.setIdx(1);
            break;
        case 6:
            field_0x112d = 1;
            break;
        case 7:
            field_0x112e = 1;
            break;
        case 8:
            field_0x112d = 1;
            break;
        case 16:
            break;
    }

    daNpcT_offTmpBit(0x64);
    setAngle(acStack_20);
}

/* 80537FD0-80537FFC 001270 002C+00 6/6 0/0 0/0 .text            chkNurse__12daNpc_Besu_cFv */
BOOL daNpc_Besu_c::chkNurse() {
    return mType == 6 || mType == 7 || mType == 8;
}

/* 80537FFC-80538028 00129C 002C+00 7/7 0/0 0/0 .text            chkBesu3__12daNpc_Besu_cFv */
BOOL daNpc_Besu_c::chkBesu3() {
    return mType == 3 || mType == 5 || mType == 15;
}

/* 80538028-805380A4 0012C8 007C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Besu_cFi */
void daNpc_Besu_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleX(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleZ(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleX(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleZ(0));
    }
}

/* 805380A4-805382D0 001344 022C+00 1/0 0/0 0/0 .text            setParam__12daNpc_Besu_cFv */
void daNpc_Besu_c::setParam() {
    selectAction();
    srchActors();

    u32 att_flags = 10;
    s16 talk_dist = daNpc_Besu_Param_c::m.common.talk_distance;
    s16 talk_ang = daNpc_Besu_Param_c::m.common.talk_angle;
    s16 att_dist = daNpc_Besu_Param_c::m.common.attention_distance;
    s16 att_ang = daNpc_Besu_Param_c::m.common.attention_angle;
    if (daNpcKakashi_chkSwdTutorialStage() & 0xFF) {
        talk_dist = 11;
        talk_ang = 6;
        att_dist = 15;
        att_ang = 6;
        att_flags = 0;
    } else if (chkNurse()) {
        talk_dist = 1;
        att_dist = 1;
    } else {
        switch (mType) {
            case 3:
            case 4: {
                talk_dist = 5;
                att_dist = 7;
                break;
            }

            case 11: {
                talk_dist = 5;
                att_dist = 5;
                break;
            }
        }
    }

    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        if (talk_dist < 7) {
            talk_dist = 7;
        }

        if (att_dist < 9) {
            att_dist = 9;
        }
    }

    attention_info.distances[0] = daNpcT_getDistTableIdx(att_dist, att_ang);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(talk_dist, talk_ang);
    attention_info.flags = att_flags;

    scale.set(daNpc_Besu_Param_c::m.common.scale, daNpc_Besu_Param_c::m.common.scale,
            daNpc_Besu_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Besu_Param_c::m.common.weight);
    mCylH = daNpc_Besu_Param_c::m.common.height;
    mWallR = daNpc_Besu_Param_c::m.common.width;
    if (mTwilight) {
        mCylH = 110.0f;
    } else if (mType == 5) {
        mCylH = 70.0f;
        mWallR = 60.0f;
    }

    mAttnFovY = daNpc_Besu_Param_c::m.common.fov;
    if (mType == 3 || mType == 4) {
        mAttnFovY = 180.0f;
    }

    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Besu_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Besu_Param_c::m.common.real_shadow_size;
    if (chkNurse()) {
        mRealShadowSize = 500.0f;
    }

    mExpressionMorfFrame = daNpc_Besu_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Besu_Param_c::m.common.morf_frame;
    gravity = daNpc_Besu_Param_c::m.common.gravity;
}

/* 805382D0-80538490 001570 01C0+00 2/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Besu_cFv */
BOOL daNpc_Besu_c::checkChangeEvt() {
    if (chkAction(&daNpc_Besu_c::talk) == 0) {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }
            return 1;
        }

        switch (mType) {
            case 0:
                break;

            case 3:
            case 4:
                mEvtNo = 7;
                evtChange();
                return 1;
            case 6:
                mEvtNo = 0xA;
                evtChange();
                return 1;
            case 7:
                mEvtNo = 0xB;
                evtChange();
                return 1;
            case 8:
                mEvtNo = 0xC;
                evtChange();
                return 1;
            case 11:
                if (checkItemGet(0x4B, 1)) {
                    mEvtNo = 6;
                } else if (daNpcT_chkEvtBit(0x1D)) {
                    mEvtNo = 5;
                } else {
                    mEvtNo = 4;
                }
                evtChange();
                return 1;
            case 17:
                if (daNpcT_chkEvtBit(0x24D)) {
                    mEvtNo = 3;
                } else {
                    mEvtNo = 2;
                }
                evtChange();
                return 1;
        }
    }

    return 0;
}

/* 80538490-8053853C 001730 00AC+00 2/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Besu_cFv */
void daNpc_Besu_c::setAfterTalkMotion() {
    int idx = 0x1C;
    switch (mFaceMotionSeqMngr.getNo()) {
        case 1:
            idx = 0xD;
            break;
        case 2:
            idx = 0xE;
            break;
        case 8:
            idx = 0xF;
            break;
        case 10:
            idx = 0x13;
            break;
        case 11:
            idx = 0x1A;
            break;
    }

    mFaceMotionSeqMngr.setNo(idx, -1.0f, 0, 0);
}

/* 8053853C-805387D0 0017DC 0294+00 2/1 0/0 0/0 .text            srchActors__12daNpc_Besu_cFv */
void daNpc_Besu_c::srchActors() {
    switch (mType) {
        case 0:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(PROC_NPC_TARO));
            }
            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(PROC_NPC_MARO));
                return;
            }
            break;
        case 2:
            if (mActorMngr[3].getActorP() == NULL) {
                // LEN is Renaldo
                mActorMngr[3].entry(getNearestActorP(PROC_NPC_LEN));
                return;
            }
            break;
        case 11:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(PROC_NPC_TARO));
            }
            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(PROC_NPC_MARO));
                return;
            }
            break;
        case 12:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(PROC_NPC_TARO));
            }
            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(PROC_NPC_MARO));
                return;
            }
            break;
        case 13:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(PROC_NPC_TARO));
            }
            if (mActorMngr[2].getActorP() == NULL) {
                mActorMngr[2].entry(getNearestActorP(PROC_NPC_KOLIN));
            }
            if (mActorMngr[4].getActorP() == NULL) {
                mActorMngr[4].entry(getNearestActorP(PROC_NPC_SARU));
                return;
            }
            break;
        case 14:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(PROC_NPC_TARO));
            }
            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(PROC_NPC_MARO));
                return;
            }
            break;
        case 17:
            if (mActorMngr[5].getActorP() == NULL) {
                mActorMngr[5].entry(getNearestActorP(PROC_NPC_HANJO));
            }
            if (mActorMngr[6].getActorP() == NULL) {
                mActorMngr[6].entry(getNearestActorP(PROC_NPC_SEIRA));
            }
            break;
    }
}

/* 805387D0-80538870 001A70 00A0+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Besu_cFv */
BOOL daNpc_Besu_c::evtTalk() {
    if (chkAction(&daNpc_Besu_c::talk)) {
        (this->*(mAction))(NULL);
    } else {
        setAction(&daNpc_Besu_c::talk);
    }

    return 1;
}

/* 80538870-80538938 001B10 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Besu_cFv */
BOOL daNpc_Besu_c::evtCutProc() {
    int staff_id = dComIfGp_getEventManager().getMyStaffId("Besu", this, -1);
    if (staff_id != -1) {
        mStaffId = staff_id;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, (char**) &daNpc_Besu_c::mCutNameList, 15, 0, 0);
        if (((this->*(mCutList[actIdx]))(mStaffId))) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return 1;
    }

    return 0;
}

/* 80538938-80538B54 001BD8 021C+00 1/0 0/0 0/0 .text            action__12daNpc_Besu_cFv */
void daNpc_Besu_c::action() {
    fopAc_ac_c* actor_p = NULL;
    if (mTwilight == 0) {
        actor_p = hitChk(&mCyl1, -1);
    }

    if (actor_p != NULL && mType != 5
#ifndef DEBUG
        && !chkNurse()
#endif
    ) {
        mStagger.setParam(this, actor_p, mCurAngle.y);
        setDamage(0, 0xC, 0x12);
        // FIXME: Fakematch
#ifdef DEBUG
        mStagger.setPower(0.0f);
#else
        for (int i = 0; i < 2; i++) {
            mStagger.mPower[i] = 0.0f;
        }
#endif
        mDamageTimerStart = 0;
        mJntAnm.lookNone(1);
    }

    if (mStagger.checkRebirth()) {
        // FIXME: Fakematch
#ifdef DEBUG
        mStagger.initialize();
#else
        for (int i = 0; i < 2; i++) {
            mStagger.mAngle[i].setall(0);
            mStagger.mPower[i] = 0.0f;
        }
        mStagger.mStagger = 0;
        mStagger.field_0x16 = 0;
        mStagger.mRebirth = 0;
#endif
        mMode = 1;
    }

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*(mAction))(NULL);
        } else {
            setAction(mNextAction);
        }
    }

    actor_p = field_0xba0.getActorP();
    if (actor_p != NULL) {
        switch (((daTag_Push_c*) actor_p)->getId()) {
            case 6: {
                mEvtNo = 9;
            }
        }
    }

    cLib_calcTimer(&field_0x1120);
    cLib_calcTimer(&field_0x1124);
}

/* 80538B54-80538C18 001DF4 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Besu_cFv */
void daNpc_Besu_c::beforeMove() {
    fopAcM_OffStatus(this, 0x08000000U);
    if (checkHide()) {
        fopAcM_OnStatus(this, 0x08000000U);
    }

    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80538C18-805391B8 001EB8 05A0+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Besu_cFv */
void daNpc_Besu_c::setAttnPos() {
    // NONMATCHING
    cXyz eyeOffset(10.0f, 30.0f, 0.0f);
    if (field_0x112f) {
        daPy_getPlayerActorClass()->onWolfEyeKeep();
    }

    BOOL var_r28 = FALSE;
    if (mMotionSeqMngr.getNo() == 0x12 && !mMotionSeqMngr.checkEndSequence()) {
        var_r28 = TRUE;
    }

    mStagger.calc(var_r28);
    f32 rad_val = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    if (chkNurse()) {
        mJntAnm.setParam(
            this, mpMorf[0]->getModel(), &eyeOffset, getBackboneJointNo(), getNeckJointNo(),
            getHeadJointNo(), daNpc_Besu_Param_c::m.common.body_angleX_min, 0.0f,
            0.0f, 0.0f, -10.0f, daNpc_Besu_Param_c::m.common.head_angleX_max,
            daNpc_Besu_Param_c::m.common.head_angleY_min, daNpc_Besu_Param_c::m.common.head_angleY_max,
            daNpc_Besu_Param_c::m.common.neck_rotation_ratio, 0.0f, NULL);
    } else {
        mJntAnm.setParam(
            this, mpMorf[0]->getModel(), &eyeOffset, getBackboneJointNo(), getNeckJointNo(),
            getHeadJointNo(), daNpc_Besu_Param_c::m.common.body_angleX_min, daNpc_Besu_Param_c::m.common.body_angleX_max,
            daNpc_Besu_Param_c::m.common.body_angleY_min, daNpc_Besu_Param_c::m.common.body_angleY_max,
            daNpc_Besu_Param_c::m.common.head_angleX_min, daNpc_Besu_Param_c::m.common.head_angleX_max,
            daNpc_Besu_Param_c::m.common.head_angleY_min, daNpc_Besu_Param_c::m.common.head_angleY_max,
            daNpc_Besu_Param_c::m.common.neck_rotation_ratio, 0.0f, NULL);
    }

    mJntAnm.calcJntRad(0.2f, 1.0f, rad_val);
    mpMorf[0]->setPlaySpeed(daNpc_Besu_Param_c::m.field_0x8c);
    setMtx();
    if (mpBesuMorf != NULL) {
        mpBesuMorf->play(0, 0);
        Mtx jointAnmMtx;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(10));
        cMtx_copy(mDoMtx_stack_c::get(), jointAnmMtx);
        mpBesuMorf->getModel()->setBaseTRMtx(jointAnmMtx);
        mpBesuMorf->modelCalc();
    }

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    if (&daNpc_Besu_c::nurse == mNextAction || &daNpc_Besu_c::giveHotWater == mNextAction) {
        mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
        mJntAnm.setEyeAngleY(eyePos, mCurAngle.y + 0x8000, 1, 1.0f, 0);
    } else if (chkBesu3()) {
        mJntAnm.setEyeAngleX(eyePos, 1.0f, -0x1800);
        mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 1, 1.0f, 0);
    } else {
        mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
        mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 1, 1.0f, 0);
    }

    if (chkNurse()) {
        eyeOffset.set(84.0f, 130.0f, 75.0f);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getBaseTRMtx());
        mDoMtx_stack_c::multVec(&eyeOffset, &attention_info.position);
    } else if (mType == 5) {
        eyeOffset.set(40.0f, 80.0f, 20.0f);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getBaseTRMtx());
        mDoMtx_stack_c::multVec(&eyeOffset, &attention_info.position);
    } else {
        eyeOffset.set(0.0f, 0.0f, 0.0f);
        eyeOffset.y = daNpc_Besu_Param_c::m.common.attention_offset;
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&eyeOffset, &eyeOffset);
        attention_info.position = current.pos + eyeOffset;
    }
}

/* 805391B8-80539494 002458 02DC+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Besu_cFv */
void daNpc_Besu_c::setCollision() {
    cXyz cStack_48;
    if (!mHide) {
        int tgType = 0xD8FBFDFF;
        int tgSPrm = 0x1F;
        if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mStagger.checkStagger()) {
            tgType = 0;
            tgSPrm = 0;
        }

        mCyl1.SetCoSPrm(0x79);
        mCyl1.SetTgType(tgType);
        mCyl1.SetTgSPrm(tgSPrm);
        mCyl1.OnTgNoHitMark();
        cStack_48.set(0.0f, 0.0f, 0.0f);
        f32 cylH = mCylH;
        f32 wallR = mWallR;
        if (mType == 2) {
            cStack_48.set(62.72f, 0.0f, 0.0f);
        } else if (chkNurse()) {
            cStack_48.set(84.0f, 0.0f, 85.0f);
        }

        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&cStack_48, &cStack_48);
        cStack_48 += current.pos;
        mCyl1.SetH(cylH);
        mCyl1.SetR(wallR);
        mCyl1.SetC(cStack_48);
        dComIfG_Ccsp()->Set(&mCyl1);
        if ((mType == 11 && !dComIfGp_event_runCheck()) || mType == 3)
        {
            switch (mType) {
                case 3:
                    wallR = 100.0f;
                    cStack_48.set(0.0f, 0.0f, 20.0f);
                    break;
                case 11:
                    wallR = 120.0f;
                    cStack_48.set(30.0f, 0.0f, 60.0f);
                    break;
                default:
                    wallR = 0.0f;
                    cStack_48.set(0.0f, 0.0f, 0.0f);
                    break;
            }

            if (cM3d_IsZero(wallR) == false) {
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&cStack_48, &cStack_48);
                cStack_48 += current.pos;
                mCyl2.SetCoSPrm(0x19);
                mCyl2.SetH(cylH);
                mCyl2.SetR(wallR);
                mCyl2.SetC(cStack_48);
                dComIfG_Ccsp()->Set(&mCyl2);
            }
        }
    }

    mCyl1.ClrCoHit();
    mCyl2.ClrCoHit();
    mCyl1.ClrTgHit();
}

/* 80539494-8053949C 002734 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Besu_cFv */
int daNpc_Besu_c::drawDbgInfo() {
    return false;
}

/* 8053949C-805395F4 00273C 0158+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Besu_cFv */
void daNpc_Besu_c::drawOtherMdl() {
    J3DModel* model_p = mpMorf[0]->getModel();
    if (mpBesuMorf != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpBesuMorf->getModel(), &tevStr);
        if (field_0x112e == 0) {
            mpBesuMorf->getModel()->getModelData()->hide();
        } else {
            mpBesuMorf->getModel()->getModelData()->show();
        }

        mpBesuMorf->entryDL();
        dComIfGd_addRealShadow(mShadowKey, mpBesuMorf->getModel());
    }

    for (int i = 0; i < 1; i++) {
        if (mpModel[i] != NULL && i == 0 && field_0x112d != 0) {
            g_env_light.setLightTevColorType_MAJI(mpModel[i], &tevStr);

            static int const jointNo[1] = {14};

            mDoMtx_stack_c::copy(model_p->getAnmMtx(jointNo[i]));
            Mtx jointAnmMtx;
            cMtx_copy(mDoMtx_stack_c::get(), jointAnmMtx);
            mpModel[i]->setBaseTRMtx(jointAnmMtx);
            mDoExt_modelUpdateDL(mpModel[i]);
            dComIfGd_addRealShadow(mShadowKey, mpModel[i]);
        }
    }
}

/* 805395F4-805396C4 002894 00D0+00 1/1 0/0 0/0 .text            setCupAnm__12daNpc_Besu_cFiif */
int daNpc_Besu_c::setCupAnm(int arg0, int i_attr, f32 i_morf) {
    static int cupAnmData[33][2] = {
        {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0}, { 9, 5}, { 9, 5}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0},
        {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0}, {-1, 0},
        {-1, 0},
    };

    J3DAnmTransform* transform_p = NULL;
    if (mpBesuMorf != NULL) {
        if (cupAnmData[arg0][0] > 0) {
            transform_p = getTrnsfrmKeyAnmP(l_resNameList[cupAnmData[arg0][1]], cupAnmData[arg0][0]);
        }

        if (transform_p != NULL && transform_p != mpBesuMorf->getAnm()) {
            mpBesuMorf->setAnm(transform_p, i_attr, i_morf, 1.0f, 0.0f, -1.0f);
        }
    }

    return 1;
}

/* 805396C4-805396F8 002964 0034+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_Besu_cFiifi */
bool daNpc_Besu_c::afterSetMotionAnm(int arg0, int arg1, f32 arg2, int param_3) {
    f32 var_f30 = (mCreating == 1) ? 0.0f : arg2;
    setCupAnm(arg0, arg1, var_f30);
}

/* 805396F8-805397B0 002998 00B8+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__12daNpc_Besu_cF26daNpcT_faceMotionAnmData_c */
daNpcT_faceMotionAnmData_c daNpc_Besu_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c arg0) {
    daNpcT_faceMotionAnmData_c rv = arg0;
    if (chkBesu3() && rv.mBtpFileIdx == 25 && rv.mBtpArcIdx == 3) {
        rv.mBtpFileIdx = 20;
        rv.mBtpArcIdx = 6;
    }

    return rv;
}

/* 805397B0-80539840 002A50 0090+00 1/0 0/0 0/0 .text            changeAnm__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeAnm(int* arg0, int* arg1) {
    if (mType == 0x11) {
        switch (*arg0) {
            case 14:
                *arg0 = 0xA;
                *arg1 = 7;
                return;
            case 16:
                *arg0 = 0xB;
                *arg1 = 7;
                return;
            case 17:
                *arg0 = 0xC;
                *arg1 = 7;
                return;
            case 19:
                *arg0 = 0xD;
                *arg1 = 7;
                break;
        }
    }
}

/* 80539840-805398DC 002AE0 009C+00 1/0 0/0 0/0 .text            changeBck__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeBck(int* arg0, int* arg1) {
    if (mType == 0x11) {
        switch (*arg0) {
            case 5:
                *arg0 = 5;
                *arg1 = 7;
                return;
            case 6:
                *arg0 = 6;
                *arg1 = 7;
                return;
            case 7:
                *arg0 = 7;
                *arg1 = 7;
                return;
            case 8:
                *arg0 = 8;
                *arg1 = 7;
                return;
            case 9:
                *arg0 = 9;
                *arg1 = 7;
                break;
        }
    }
}

/* 805398DC-80539968 002B7C 008C+00 1/0 0/0 0/0 .text            changeBtp__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeBtp(int* arg0, int* arg1) {
    if (mType == 0x11) {
        switch (*arg0) {
            case 25:
                *arg0 = 0x13;
                *arg1 = 7;
                return;
            case 18:
                *arg0 = 0x14;
                *arg1 = 7;
                return;
            case 26:
                *arg0 = 0x15;
                *arg1 = 7;
                return;
            case 22:
                *arg0 = 0x16;
                *arg1 = 7;
                break;
        }
    }
}

/* 80539968-80539994 002C08 002C+00 1/0 0/0 0/0 .text            changeBtk__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeBtk(int* arg0, int* arg1) {
    if (mType == 0x11) {
        if (*arg0 != 0x16) {
            return;
        }

        *arg0 = 0x10;
        *arg1 = 7;
    }
}

/* 80539994-80539ACC 002C34 0138+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Besu_cFv */
int daNpc_Besu_c::selectAction() {
    mNextAction = NULL;
    switch (mType) {
        case 6:
            mNextAction = &daNpc_Besu_c::nurse;
            break;
        case 7:
            mNextAction = &daNpc_Besu_c::giveHotWater;
            break;
        case 8:
            mNextAction = &daNpc_Besu_c::nurse;
            break;
        case 14:
            if (daNpcKakashi_chkSwdTutorialStage() & 0xFF) {
                mNextAction = &daNpc_Besu_c::swdTutorial;
            } else {
                mNextAction = &daNpc_Besu_c::wait;
            }

            break;
        default:
            mNextAction = &daNpc_Besu_c::wait;
            break;
    }

    return 1;
}

/* 80539ACC-80539AF8 002D6C 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Besu_cFM12daNpc_Besu_cFPCvPvPv_i          */
int daNpc_Besu_c::chkAction(actionFunc arg0) {
    return mAction == arg0;
}

/* 80539AF8-80539BA0 002D98 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Besu_cFM12daNpc_Besu_cFPCvPvPv_i          */
int daNpc_Besu_c::setAction(actionFunc arg0) {
    mMode = MODE_EXIT;
    if (mAction != NULL) {
        (this->*(mAction))(NULL);
    }

    mMode = MODE_ENTER;
    mAction = arg0;
    if (mAction != NULL) {
        (this->*(mAction))(NULL);
    }

    return 1;
}

/* 80539BA0-80539CF4 002E40 0154+00 1/1 0/0 0/0 .text            mop__12daNpc_Besu_cFii */
void daNpc_Besu_c::mop(int arg0, int arg1) {
    if (field_0x1120) {
        action();
        if (field_0x1120 == 0) {
            mFaceMotionSeqMngr.setNo(7, 4.0f, 0, 0);
            mMotionSeqMngr.setNo(0xD, 4.0f, 0, 0);
            field_0x1124 = arg1;
        }
    } else if (field_0x1124) {
        action();
        if (field_0x1124 == 0) {
            mFaceMotionSeqMngr.setNo(4, 4.0f, 0, 0);
            mMotionSeqMngr.setNo(0xE, 4.0f, 0, 0);
            field_0x1120 = arg0;
        }
    }
}

/* 80539CF4-80539E48 002F94 0154+00 1/0 0/0 0/0 .text cutConversationAboutSaru__12daNpc_Besu_cFi
 */
int daNpc_Besu_c::cutConversationAboutSaru(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                mPlayerAngle = fopAcM_searchPlayerAngleY(this);
                if (checkStep()) {
                    mStepMode = 0;
                }
            }

            case 1: {
                break;
            }
        }
    }

    switch (prm_val) {
        case 0: {
            retval = 1;
            break;
        }

        case 1: {
            mJntAnm.lookPlayer(0U);
            if (mPlayerAngle != mCurAngle.y) {
                step(mPlayerAngle, 0x1C, 0x11, 0xF, 0);
            } else {
                retval = 1;
            }

            break;
        }
    }

    return retval;
}

/* 80539E48-8053A45C 0030E8 0614+00 3/0 0/0 0/0 .text
 * cutConversationAboutPachinko__12daNpc_Besu_cFi               */
int daNpc_Besu_c::cutConversationAboutPachinko(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    int msgNo_val = 0;
    int msgNo2_val = 0;
    int timer_val = 0;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "msgNo");
    if (param_p != NULL) {
        msgNo_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "msgNo2");
    if (param_p != NULL) {
        msgNo2_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "timer");
    if (param_p != NULL) {
        timer_val = *param_p;
    }

    fopAc_ac_c* speakers[3] = {mActorMngr[0].getActorP(), mActorMngr[1].getActorP(), this};
    dComIfGp_setMesgCameraInfoActor(speakers[0], speakers[1], speakers[2],
                                    NULL, NULL, NULL, NULL, NULL, NULL, NULL);

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
                break;

            case 1:
                mEventTimer = timer_val;
                initTalk(mFlowNodeNo, speakers);
                break;

            case 10:
                field_0x112c = 1;
                field_0x1128 = 0;
                initTalk(mFlowNodeNo, speakers);
                break;

            case 20:
                initTalk(mFlowNodeNo, speakers);
                break;
        }
    }

    int my_vals[3] = {-1, -1, -1};

    switch (prm_val) {
        case 0: {
            retval = 1;
            break;
        }

        case 1:
        case 2:
        case 3:
        case 4:
        case 10:
        case 11:
        case 12: {
            switch (prm_val) {
                case 1:
                case 2: {
                    mJntAnm.lookPlayer(0U);
                    if (mPlayerAngle != mCurAngle.y) {
                        if (chkBesu3()) {
                            step(mPlayerAngle, -1, -1, 15, 0);
                        } else {
                            step(mPlayerAngle, -1, -1, 15, 0);
                        }
                    }

                    break;
                }

                case 3: {
                    JUT_ASSERT(0xD84, 0 != speakers[0]);
                    mJntAnm.lookActor(speakers[0], -40.0f, 0U);
                    break;
                }

                case 4: {
                    JUT_ASSERT(0xD89, 0 != speakers[0]);
                    mJntAnm.lookActor(speakers[0], -40.0f, 0U);
                    if (home.angle.y != mCurAngle.y) {
                        if (chkBesu3()) {
                            step(home.angle.y, -1, -1, 15, 0);
                        } else {
                            step(home.angle.y, -1, -1, 15, 0);
                        }
                    }

                    break;
                }

                case 10:
                case 11: {
                    JUT_ASSERT(0xD9F, 0 != speakers[0]);
                    mJntAnm.lookActor(speakers[0], -40.0f, 0U);
                    break;
                }

                case 12: {
                    JUT_ASSERT(0xDA4, 0 != speakers[1]);
                    mJntAnm.lookActor(speakers[1], -40.0f, 0U);
                    break;
                }
            }
        }
        /* fallthrough */
        case 20: {
            my_vals[0] = msgNo_val;
            my_vals[1] = msgNo2_val;
            if (talkProc(my_vals, 0, speakers, 0)) {
                if (msgNo_val == 0 && msgNo2_val == 0) {
                    if (mFlow.checkEndFlow()) {
                        retval = 1;
                    }
                } else {
                    retval = 1;
                }
            }

            break;
        }

        case 21: {
            dStage_changeScene(10, 0.0f, 0U, fopAcM_GetRoomNo(this), 0, -1);
            break;
        }
    }

    return retval;
}

/* 8053A45C-8053A7A0 0036FC 0344+00 1/0 0/0 0/0 .text
 * cutConversationAboutWoodSwd__12daNpc_Besu_cFi                */
int daNpc_Besu_c::cutConversationAboutWoodSwd(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    int timer_val = 0;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "timer");
    if (param_p != NULL) {
        timer_val = *param_p;
    }

    fopAc_ac_c* speakers[3] = {mActorMngr[0].getActorP(), mActorMngr[1].getActorP(), this};
    dComIfGp_setMesgCameraInfoActor(speakers[0], speakers[1], speakers[2],
                                    NULL, NULL, NULL, NULL, NULL, NULL, NULL);

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                mEventTimer = timer_val;
                initTalk(mFlowNodeNo, speakers);
                break;
            }

            case 1: {
                break;
            }
        }
    }

    switch (prm_val) {
        case 0: {
            mJntAnm.lookPlayer(0);
            if (mPlayerAngle != mCurAngle.y) {
                if (chkBesu3()) {
                    if (step(mPlayerAngle, 0x1C, 0x1D, 0xF, 0)) {
                        mFaceMotionSeqMngr.setNo(0x1C, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                    }
                } else if (step(mPlayerAngle, 0x1C, 0x11, 0xF, 0)) {
                    mFaceMotionSeqMngr.setNo(0x1C, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                }
            }

            if (cLib_calcTimer(&mEventTimer) == 0) {
                retval = 1;
            }

            break;
        }

        case 1: {
            if (talkProc(NULL, 0, speakers, 0)) {
                int ev_id;
                switch (mFlow.getEventId(&ev_id)) {
                    case 2: {
                        dStage_changeScene(0xC, 0.0f, 0U, fopAcM_GetRoomNo(this), 0, -1);
                        break;
                    }

                    default: {
                        if (mFlow.checkEndFlow()) {
                            retval = 1;
                        }

                        break;
                    }
                }
            }

            break;
        }
    }

    return retval;
}

/* 8053A7A0-8053AA6C 003A40 02CC+00 1/0 0/0 0/0 .text            cutSwdTutorial__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutSwdTutorial(int arg0) {
    fopAc_ac_c* actor_p = NULL;
    cXyz my_vec_0;
    cXyz my_vec_1;
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                break;
            }

            case 1: {
                break;
            }

            case 71: {
                mFaceMotionSeqMngr.setNo(1, 0.0f, 1, 0);
                mMotionSeqMngr.setNo(2, 0.0f, 1, 0);
                setAngle(home.angle.y);
                my_vec_0.set(50.0f, 0.0f, 0.0f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&my_vec_0, &my_vec_0);
                my_vec_0 += current.pos;
                setPos(my_vec_0);
                break;
            }
        }
    }

    switch (prm_val) {
        case 0: {
            mDamageTimer = 1;
            action();
            mJntAnm.lookNone(0);
            retval = 1;
            break;
        }

        case 1: {
            mDamageTimer = 1;
            action();
            actor_p = mActorMngr[1].getActorP();
            JUT_ASSERT(0xE7E, 0 != actor_p);
            mJntAnm.lookActor(actor_p, -40.0f, 0);
            retval = 1;
            break;
        }

        case 71: {
            mJntAnm.lookCamera(0);
            break;
        }
    }

    return retval;
}

/* 8053AA6C-8053AF5C 003D0C 04F0+00 1/0 0/0 0/0 .text            cutFindMonkey__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutFindMonkey(int arg0) {
    fopAc_ac_c* actor_p = NULL;
    cXyz my_vec_0;
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    int timer_val = 0;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "timer");
    if (param_p != NULL) {
        timer_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                break;
            }

            case 1: {
                mFaceMotionSeqMngr.setNo(27, 0.0f, 0, 0);
                break;
            }

            case 2: {
                break;
            }

            case 3: {
                setAngle(fopAcM_searchActorAngleY(this, (fopAc_ac_c*) dComIfGp_getHorseActor()));
                mJntAnm.lookNone(1);
                mEventTimer = timer_val;
                if (mEventTimer == 0) {
                    mMotionSeqMngr.setNo(28, -1.0f, 0, 0);
                }

                break;
            }

            case 4: {
                mHide = 1;
                speedF = 0.0f;
                speed.setall(0.0f);
                break;
            }
        }
    }

    switch (prm_val) {
        case 0: {
            mJntAnm.lookPlayer(0);
            retval = 1;
            break;
        }

        case 1: {
            actor_p = mActorMngr[4].getActorP();
            JUT_ASSERT(0xED5, 0 != actor_p);
            mJntAnm.lookActor(actor_p, -40.0f, 0U);
            retval = 1;
            break;
        }

        case 2: {
            break;
        }

        case 3: {
            mJntAnm.lookNone(0U);
            if (mEventTimer == 0) {
                actor_p = (fopAc_ac_c*) dComIfGp_getHorseActor();
                JUT_ASSERT(0xEE4, 0 != actor_p);
                my_vec_0 = actor_p->current.pos;
                if (50.0f < current.pos.absXZ(my_vec_0)) {
                    cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &my_vec_0), 4, 0x800);
                    shape_angle.y = current.angle.y;
                    mCurAngle.y = shape_angle.y;
                    cLib_chaseF(&speedF, 10.0f, 0.5f);
                } else {
                    retval = 1;
                }
            } else if (cLib_calcTimer(&mEventTimer) == 0) {
                mMotionSeqMngr.setNo(28, -1.0f, 0, 0);
            }

            break;
        }

        case 4: {
            retval = 1;
            break;
        }
    }

    return retval;
}

/* 8053AF5C-8053B058 0041FC 00FC+00 1/0 0/0 0/0 .text            cutGetWoodSwd__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutGetWoodSwd(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                break;
            }

            case 1: {
                mHide = 1;
                break;
            }

            case 10: {
                break;
            }

            case 11: {
                mHide = 0;
                break;
            }
        }
    }

    switch (prm_val) {
        case 0:
        case 1:
        case 10:
        case 11: {
            action();
            retval = 1;
        }
    }

    return retval;
}

/* 8053B058-8053B250 0042F8 01F8+00 1/0 0/0 0/0 .text cutCacaricoConversation__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutCacaricoConversation(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                mPlayerAngle = fopAcM_searchPlayerAngleY(this);
                if (checkStep()) {
                    mStepMode = 0;
                }

                break;
            }

            case 1: {
                break;
            }
        }
    }

    int lits_6105[2] = {-1, -1};
    (void) lits_6105;
    switch (prm_val) {                              /* irregular */
        case 0: {
            mJntAnm.lookPlayer(0);
            if (mPlayerAngle != mCurAngle.y) {
                if (step(mPlayerAngle, 0x1C, 0x11, 0xF, 0)) {
                    mFaceMotionSeqMngr.setNo(28, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                }
            } else {
                retval = 1;
            }

            break;
        }

        case 1: {
            mJntAnm.lookPlayer(0);
            retval = 1;
            break;
        }
    }

    return retval;
}

/* 8053B250-8053B530 0044F0 02E0+00 1/0 0/0 0/0 .text            cutSurprise__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutSurprise(int arg0) {
    daTag_Push_c* tagpush_p = (daTag_Push_c*) field_0xba0.getActorP();
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0:
                mFaceMotionSeqMngr.setNo(0x13, 0.0f, 0, 0);
                mMotionSeqMngr.setNo(6, 0.0f, 0, 0);
                mJntAnm.lookNone(1);
                tagpush_p->pushBackPlayer(1);
                break;

            case 1:
                initTalk(tagpush_p->getFlowNodeNo(), NULL);
                mJntAnm.lookPlayer(1U);
                break;
        }
    }

    switch (prm_val) {
        case 0:
            retval = 1;
            break;

        case 1:
            mJntAnm.lookPlayer(0);
            if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                field_0xba0.remove();
                retval = 1;
            }
            break;
    }

    return retval;
}

/* 8053B530-8053B820 0047D0 02F0+00 1/0 0/0 0/0 .text cutConversationInHotel__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutConversationInHotel(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    int timer_val = 0;
    int timer1_val = 0;
    int timer2_val = 0;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "timer");
    if (param_p != NULL) {
        timer_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "timer1");
    if (param_p != NULL) {
        timer1_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "timer2");
    if (param_p != NULL) {
        timer2_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0:
                field_0x1120 = 1;
                field_0x1124 = 0;
                break;
            case 1:
                mFaceMotionSeqMngr.setNo(0x15, 0.0f, 1, 0);
                mMotionSeqMngr.setNo(0x17, 0.0f, 1, 0);
                break;
            case 2:
                mEventTimer = timer_val;
                break;
            case 3:
                mFaceMotionSeqMngr.setNo(7, 0.0f, 1, 0);
                mMotionSeqMngr.setNo(0xD, 0.0f, 1, 0);
                break;
        }
    }

    switch (prm_val) {
        case 0:
            mop(timer1_val, timer2_val);
            retval = 1;
            break;
        case 1:
            retval = 1;
            break;
        case 2:
            if (mEventTimer != 0) {
                if (cLib_calcTimer(&mEventTimer) == 0) {
                    mFaceMotionSeqMngr.setNo(0x14, 0.0f, 0, 0);
                    mMotionSeqMngr.setNo(0x16, 0.0f, 0, 0);
                    mSound.startCreatureVoice(Z2SE_BESU_V_SHIKARARE, -1);
                } else {
                    mop(timer1_val, timer2_val);
                }
            } else {
                retval = 1;
            }
            break;
        case 3:
            retval = 1;
            break;
    }

    return retval;
}

/* 8053B820-8053BA60 004AC0 0240+00 1/0 0/0 0/0 .text
 * cutConversationAboutDeathMt__12daNpc_Besu_cFi                */
int daNpc_Besu_c::cutConversationAboutDeathMt(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0:
                mFaceMotionSeqMngr.setNo(3, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(4, -1.0f, 0, 0);
                initTalk(mFlowNodeNo, NULL);
                break;
            case 1:
                mFaceMotionSeqMngr.setNo(16, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(19, -1.0f, 0, 0);
                break;
            case 2:
                mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(20, -1.0f, 0, 0);
                break;
        }
    }

    switch (prm_val) {
        case 0: {
            if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                retval = 1;
            }

            break;
        }

        case 1:
        case 2: {
            if (mMotionSeqMngr.checkEndSequence()) {
                retval = 1;
            }

            break;
        }
    }

    return retval;
}

/* 8053BA60-8053BD18 004D00 02B8+00 1/0 0/0 0/0 .text cutConversationAboutGoron__12daNpc_Besu_cFi
 */
int daNpc_Besu_c::cutConversationAboutGoron(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0:
                mFaceMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0xF, -1.0f, 0, 0);
                break;
            case 1:
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0x10, -1.0f, 0, 0);
                field_0x1120 = 0x20;
                break;
            case 2:
                mFaceMotionSeqMngr.setNo(5, 0.0f, 1, 0);
                mMotionSeqMngr.setNo(0xF, 0.0f, 1, 0);
                break;
            case 3:
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0x10, -1.0f, 0, 0);
                field_0x1120 = 0x20;
                break;
        }
    }

    switch (prm_val) {
        case 0:
            action();
            retval = 1;
            break;
        case 1:
            action();
            if (field_0x1120 == 0) {
                retval = 1;
            }
            break;
        case 2:
            retval = 1;
            break;
        case 3:
            if (cLib_calcTimer(&field_0x1120) == 0) {
                retval = 1;
            }
            break;
    }

    return retval;
}

/* 8053BD18-8053BE84 004FB8 016C+00 1/0 0/0 0/0 .text            cutNurse__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutNurse(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0:
                break;
            case 1:
                mFaceMotionSeqMngr.setNo(22, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(24, -1.0f, 0, 0);
                break;
            case 2:
                mFaceMotionSeqMngr.setNo(9, 0.0f, 1, 0);
                mMotionSeqMngr.setNo(5, 0.0f, 1, 0);
                break;
        }
    }

    switch (prm_val) {
        case 0:
        case 1:
        case 2: {
            field_0xe26 = false;
            retval = 1;
            break;
        }
    }

    return retval;
}

/* 8053BE84-8053BF60 005124 00DC+00 1/0 0/0 0/0 .text            cutClothTry__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutClothTry(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0:
                mHide = 1;
                break;
            case 1:
                mHide = 0;
                break;
        }
    }

    switch (prm_val) {
        case 0:
        case 1: {
            action();
            retval = 1;
            break;
        }
    }

    return retval;
}

/* 8053BF60-8053C08C 005200 012C+00 1/0 0/0 0/0 .text            cutThankYou__12daNpc_Besu_cFi */
int daNpc_Besu_c::cutThankYou(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                break;
            }

            case 1: {
                mFaceMotionSeqMngr.setNo(25, 0.0f, 0, 0);
                mMotionSeqMngr.setNo(27, 0.0f, 0, 0);
                break;
            }
        }
    }

    switch (prm_val) {
        case 0:
            action();
            retval = 1;
            break;
        case 1:
            retval = 1;
            break;
    }

    return retval;
}

/* 8053C08C-8053CAA0 00532C 0A14+00 2/0 0/0 0/0 .text            wait__12daNpc_Besu_cFPv */
int daNpc_Besu_c::wait(void* param_0) {
    fopAc_ac_c* actor_p = NULL;
    switch (mMode) {
        case 0:
        case 1: {
            if (mStagger.checkStagger() == 0) {
                switch (mType) {
                    case 2: {
                        if (getBitSW() != 0xFF && dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
                            mFaceMotionSeqMngr.setNo(0x18, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(0x1A, -1.0f, 0, 0);
                        } else {
                            mFaceMotionSeqMngr.setNo(0x17, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(0x19, -1.0f, 0, 0);
                        }

                        break;
                    }

                    case 5: {
                        mFaceMotionSeqMngr.setNo(0x13, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                        break;
                    }

                    default: {
                        if (chkBesu3()) {
                            mFaceMotionSeqMngr.setNo(28, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                        } else {
                            mFaceMotionSeqMngr.setNo(28, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                        }

                        break;
                    }
                }

                field_0x1118 = 0;
                field_0x111c = 0;
                mMode = 2;
            }
        }

        case 2: {
            switch (mType) {
                case 0: {
                    if (daNpcT_chkEvtBit(0x1F) && mHide) {
                        fopAcM_delete(this);
                        return 1;
                    }

                    break;
                }

                case 2: {
                    actor_p = (daNpc_Len_c*) mActorMngr[3].getActorP();
                    if (actor_p != NULL &&
                        ((daNpc_Len_c*) actor_p)->checkStartDemo13StbEvt(
                            this, daNpc_Besu_Param_c::m.common.box_min_x, daNpc_Besu_Param_c::m.common.box_min_y,
                            daNpc_Besu_Param_c::m.common.box_min_z, daNpc_Besu_Param_c::m.common.box_max_x,
                            daNpc_Besu_Param_c::m.common.box_max_y, daNpc_Besu_Param_c::m.common.box_max_z,
                            daNpc_Besu_Param_c::m.common.box_offset))
                    {
                        mEvtNo = 8;
                        field_0x112f = 1;
                    }

                    if (field_0x112f && daNpcT_chkEvtBit(0x3C) && dComIfGp_event_runCheck() == 0) {
                        field_0x112f = 0;
                    }

                    break;
                }

                case 13: {
                    if (daNpcT_chkEvtBit(0x25C)) {
                        fopAcM_delete(this);
                        return 1;
                    }

                    break;
                }
            }

            if (mStagger.checkStagger() == 0) {
                if (mType == 2) {
                    mJntAnm.lookNone(0);
                    if (getBitSW() != 0xFF) {
                        if (dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))
                            && mMotionSeqMngr.getNo() != 26) {
                            mMode = 1;
                        }
                    }

                    attention_info.flags = 0;
                } else {
                    u8 var_r28 = 0;
                    if (daNpcKakashi_chkSwdTutorialStage() & 0xFF) {
                        mPlayerActorMngr.remove();
                    } else {
                        if (mType == 11 || mType == 17) {
                            mPlayerActorMngr.remove();
                        } else if (mType == 12) {
                            var_r28 = dComIfGs_getTmpReg(0xFBFF);
                            if (var_r28 == 2 || var_r28 == 1) {
                                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                            } else if (var_r28 == 0) {
                                mPlayerActorMngr.remove();
                            }
                        }
                    }

                    if (mPlayerActorMngr.getActorP() != NULL && mTwilight == 0) {
                        if (mType == 3 || mType == 4) {
                            dComIfGs_onTmpBit(0xD02);
                        }

                        mJntAnm.lookPlayer(0);
                        if (mType == 0xC) {
                            if (var_r28 == 1) {
                                mJntAnm.lookNone(0);
                            }
                        } else {
                            if (chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y) == 0) {
                                mJntAnm.lookNone(0);
                            }

                            if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                                mMode = 1;
                            }
                        }
                    } else {
                        if (mType == 3 || mType == 4) {
                            dComIfGs_offTmpBit(0xD02);
                        }

                        mJntAnm.lookNone(0);
                        if (home.angle.y != mCurAngle.y) {
                            if (field_0xe34) {
                                if (chkBesu3()) {
                                    if (step(home.angle.y, 0x1C, 0x1D, 0xF, 0)) {
                                        mMode = 1;
                                    }
                                } else if (step(home.angle.y, 0x1C, 0x11, 0xF, 0)) {
                                    mMode = 1;
                                }
                            } else {
                                setAngle(home.angle.y);
                                mMode = 1;
                            }
                            attention_info.flags = 0;
                        } else if (daNpcKakashi_chkSwdTutorialStage() & 0xFF) {
                            mJntAnm.lookPlayer(0);
                        } else if (mTwilight == 0) {
                            srchPlayerActor();
                        }
                    }
                }

                switch (mJntAnm.getMode()) {
                    case 0: {
                        switch (mType) {
                            case 3:
                            case 4: {
                                dComIfGs_offTmpBit(0xE40);
                                break;
                            }

                            case 11: {
                                if (daNpcT_chkTmpBit(0x64)) {
                                    field_0x1130 = 1;
                                }

                                if (field_0x1130) {
                                    mJntAnm.lookCamera(0);
                                } else {
                                    if (cLib_calcTimer(&field_0x1128) == 0) {
                                        ++field_0x112c;
                                        field_0x1128 = cLib_getRndValue(30, 90);
                                    }

                                    if (field_0x112c & 1) {
                                        actor_p = mActorMngr[1].getActorP();
                                    } else {
                                        actor_p = mActorMngr[0].getActorP();
                                    }

                                    if (actor_p != NULL) {
                                        mJntAnm.lookActor((fopAc_ac_c *) actor_p, -40.0f, 0U);
                                    }
                                }

                                break;
                            }

                            case 17: {
                                actor_p = mActorMngr[5].getActorP();
                                if (actor_p != NULL) {
                                    mJntAnm.lookActor(actor_p, -40.0f, 0);
                                }

                                break;
                            }
                        }

                        break;
                    }

                    case 1: {
                        switch (mType) {
                            case 3:
                            case 4: {
                                dComIfGs_onTmpBit(0xE40);
                                break;
                            }
                        }
                        break;
                    }
                }

                switch (mType) {
                    case 12: {
                        attention_info.flags = 0;
                        break;
                    }
                }
            }
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 8053CAA0-8053CBB8 005D40 0118+00 1/0 0/0 0/0 .text            swdTutorial__12daNpc_Besu_cFPv */
int daNpc_Besu_c::swdTutorial(void* param_0) {
    switch (mMode) {
        case 0:
        case 1: {
            if (!mStagger.checkStagger()) {
                mFaceMotionSeqMngr.setNo(28, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                mMode = 2;
            }
        }
        /* fallthrough */
        case 2: {
            if (!mStagger.checkStagger()) {
                mJntAnm.lookPlayer(0);
            }

            attention_info.flags = 0;
            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 8053CBB8-8053CF78 005E58 03C0+00 3/0 0/0 0/0 .text            nurse__12daNpc_Besu_cFPv */
int daNpc_Besu_c::nurse(void* param_0) {
    switch (mMode) {
        case 0:
        case 1: {
            if (mFaceMotionSeqMngr.getNo() != 0x15) {
                mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
            }

            if (mMotionSeqMngr.getNo() != 0x17) {
                mMotionSeqMngr.setNo(0xD, -1.0f, 0, 0);
            }

            mMorfLoops = 0;
            if (mType == 8) {
                field_0x1120 = 1;
                field_0x1124 = 0;
            }

            mMode = 2;
        }
        /* fallthrough */
        case 2: {
            mJntAnm.lookNone(0);
            mAcch.SetWallNone();
            switch (mMotionSeqMngr.getNo()) {
                case 13: {
                    if (0 != strcmp(dComIfGp_getEventManager().getRunEventName(), "EVT_CONVERSATION_IN_HOTEL1_e")) {
                        if (0 != strcmp(dComIfGp_getEventManager().getRunEventName(), "EVT_CONVERSATION_IN_HOTEL2_e")
                            && mType != 8 && mMorfLoops >= 2) {
                            mFaceMotionSeqMngr.setNo(18, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(21, -1.0f, 0, 0);
                        }
                    }

                    break;
                }

                case 21:
                case 23: {
                    if (mMotionSeqMngr.checkEndSequence()) {
                        mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(0xD, -1.0f, 0, 0);
                    }

                    break;
                }
            }

            if (mType == 8) {
                if (field_0x1120) {
                    cLib_calcTimer(&field_0x1120);
                    cLib_calcTimer(&field_0x1124);
                    if (field_0x1120 == 0) {
                        mFaceMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(13, -1.0f, 0, 0);
                        field_0x1124 = 92;
                    }
                } else if (field_0x1124) {
                    cLib_calcTimer(&field_0x1120);
                    cLib_calcTimer(&field_0x1124);
                    if (field_0x1124 == 0) {
                        mFaceMotionSeqMngr.setNo(4, -1.0f, 0, 0);
                        mMotionSeqMngr.setNo(14, -1.0f, 0, 0);
                        field_0x1120 = 92;
                    }
                }
            }
            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 8053CF78-8053D078 006218 0100+00 2/0 0/0 0/0 .text            giveHotWater__12daNpc_Besu_cFPv */
int daNpc_Besu_c::giveHotWater(void* param_0) {
    switch (mMode) {
        case 0:
        case 1: {
            mFaceMotionSeqMngr.setNo(9, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
            mMode = 2;
        }
        /* fallthrough */
        case 2: {
            mJntAnm.lookNone(0);
            mAcch.SetWallNone();
            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 8053D078-8053D29C 006318 0224+00 3/0 0/0 0/0 .text            talk__12daNpc_Besu_cFPv */
int daNpc_Besu_c::talk(void* param_0) {
    switch (mMode) {
        case 0:
        case 1: {
            if (!mStagger.checkStagger()) {
                initTalk(mFlowNodeNo, NULL);
                mMode = 2;
            }
        }
        /* fallthrough */
        case 2: {
            if (!mStagger.checkStagger()) {
                if (mTwilight != 0 || mPlayerAngle == mCurAngle.y || mType == 5 || chkNurse()) {
                    if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                        mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                        dComIfGp_event_reset();
                        mMode = 3;
                    }

                    mJntAnm.lookPlayer(0);
                    if ((mTwilight != 0) || (chkNurse())) {
                        mJntAnm.lookNone(0);
                    }
                } else {
                    mJntAnm.lookPlayer(0);
                    if (chkBesu3()) {
                        step(mPlayerAngle, 0x1C, 0x1D, 0xF, 0);
                    } else {
                        step(mPlayerAngle, 0x1C, 0x11, 0xF, 0);
                    }
                }
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 0;
}

/* 8053D29C-8053D2BC 00653C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Create__FPv */
static int daNpc_Besu_Create(void* i_this) {
    return static_cast<daNpc_Besu_c*>(i_this)->create();
}

/* 8053D2BC-8053D2DC 00655C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Delete__FPv */
static int daNpc_Besu_Delete(void* i_this) {
    return static_cast<daNpc_Besu_c*>(i_this)->Delete();
}

/* 8053D2DC-8053D2FC 00657C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Execute__FPv */
static int daNpc_Besu_Execute(void* i_this) {
    return static_cast<daNpc_Besu_c*>(i_this)->Execute();
}

/* 8053D2FC-8053D31C 00659C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Draw__FPv */
static int daNpc_Besu_Draw(void* i_this) {
    return static_cast<daNpc_Besu_c*>(i_this)->Draw();
}

/* 8053D31C-8053D324 0065BC 0008+00 1/0 0/0 0/0 .text            daNpc_Besu_IsDelete__FPv */
static int daNpc_Besu_IsDelete(void*) {
    return true;
}

/* 8053FE7C-8053FE80 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Besu_Param_c l_HIO;


/* 8053FCAC-8053FCCC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Besu_MethodTable */
static actor_method_class daNpc_Besu_MethodTable = {
    (process_method_func)daNpc_Besu_Create,
    (process_method_func)daNpc_Besu_Delete,
    (process_method_func)daNpc_Besu_Execute,
    (process_method_func)daNpc_Besu_IsDelete,
    (process_method_func)daNpc_Besu_Draw,
};

/* 8053FCCC-8053FCFC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BESU */
extern actor_process_profile_definition g_profile_NPC_BESU = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_BESU,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Besu_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  323,                     // mPriority
  &daNpc_Besu_MethodTable, // sub_method
  0x00040108,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
