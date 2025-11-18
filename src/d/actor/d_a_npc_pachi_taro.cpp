/**
 * @file d_a_npc_pachi_taro.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_pachi_taro.h"
#include "JSystem/JHostIO/JORFile.h"
#include "d/actor/d_a_tag_pachi.h"
#include "d/actor/d_a_npc_pachi_maro.h"
#include "d/actor/d_a_npc_pachi_besu.h"

enum RES_Name {
    /* 0x0 */ NONE,
    /* 0x1 */ TARO,
    /* 0x2 */ TARO_TW,
    /* 0x3 */ TARO0,
    /* 0x4 */ TARO1,
    /* 0x5 */ TARO2,
    /* 0x6 */ TARO3,
    /* 0x7 */ TARO4,
    /* 0x8 */ TARO5,
    /* 0x9 */ TAROB,
    /* 0xA */ LEN1,
    /* 0xB */ EVT_PACHI,
};

#if DEBUG
daNpc_Pachi_Taro_HIO_c::daNpc_Pachi_Taro_HIO_c() { m = daNpc_Pachi_Taro_Param_c::m; }

void daNpc_Pachi_Taro_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    JORReflexible::listenPropertyEvent(event);

    char buffer[2000];
    JORFile jorFile;
    int len;

    switch ((u32)event->id) {
        case 0x40000002:
            if (jorFile.open(6, "すべてのファイル(*.*)\0*.*\0", NULL, NULL, NULL)) {
                memset(buffer, 0, sizeof(buffer));
                len = 0;
                daNpcT_cmnListenPropertyEvent(buffer, &len, &m.common);
                jorFile.writeData(buffer, len);
                jorFile.close();
                OS_REPORT("write append success!::%6d\n", len);
            } else {
                OS_REPORT("write append failure!\n");
            }
            break;
    }
}
#endif

void daNpc_Pachi_Taro_HIO_c::genMessage(JORMContext* ctx) {
    daNpcT_cmnGenMessage(ctx, &m.common);
    ctx->genButton("ファイル書き出し", 0x40000002, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
}

/* 80AA194C-80AA1974 000020 0028+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[5][2] = {
    {4, 1},
    {31, 4},
    {32, 4},
    {10, 2},
    {4, 9},
};

/* 80AA1974-80AA19CC -00001 0058+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[11] = {
    {"", 0},
    {"TUTRIAL_BEGIN", 11},
    {"TUTRIAL_BEGIN_SKIP", 11},
    {"TUTRIAL_CLEAR", 11},
    {"TUTRIAL_TALK", 11},
    {"TUTRIAL_TALK2", 11},
    {"HIT_KAKASI_BODY", 11},
    {"TUTRIAL_SELECT_GIVEUP", 11},
    {"TUTRIAL_CONTINUE", 11},
    {"TUTRIAL_GIVEUP", 11},
    {"TUTRIAL_CAUTION", 11},
};

/* 80AA19CC-80AA19FC -00001 0030+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[12] = {
    "",
    "Taro",
    "Taro_TW",
    "Taro0",
    "Taro1",
    "Taro2",
    "Taro3",
    "Taro4",
    "Taro5",
    "TaroB",
    "Len1",
    "evt_pachi",
};

/* 80AA19FC-80AA1A04 0000D0 0007+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[7] = {
    1, 3, 4, 5, 6, 11, -1,
};

/* 80AA1A04-80AA1A0C 0000D8 0008+00 1/0 0/0 0/0 .data            l_loadResPtrn4 */
static s8 l_loadResPtrn4[8] = {
    1, 2, 3, 4, 5, 6, 7, -1,
};

/* 80AA1A0C-80AA1A14 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn4,
};

/* 80AA1A14-80AA1D5C 0000E8 0348+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[30] = {
    {-1, 0, 0, 7, 2, 1, 1},
    {7, 0, 3, 7, 2, 1, 1},
    {11, 0, 4, 43, 0, 4, 0},
    {5, 0, 6, 14, 0, 6, 0},
    {13, 0, 4, 45, 0, 4, 0},
    {9, 0, 4, 41, 0, 4, 0},
    {4, 0, 6, 13, 0, 6, 0},
    {12, 0, 4, 44, 0, 4, 0},
    {15, 2, 4, 47, 2, 4, 0},
    {7, 2, 6, 15, 2, 6, 0},
    {16, 2, 4, 48, 2, 4, 0},
    {14, 2, 4, 46, 2, 4, 0},
    {6, 2, 6, 7, 2, 1, 1},
    {6, 0, 3, 15, 0, 3, 0},
    {10, 0, 4, 42, 0, 4, 0},
    {7, 0, 5, 27, 0, 5, 0},
    {12, 0, 5, 32, 0, 5, 0},
    {11, 0, 5, 31, 0, 5, 0},
    {9, 0, 5, 29, 0, 5, 0},
    {10, 0, 5, 30, 0, 5, 0},
    {8, 0, 5, 28, 0, 5, 0},
    {4, 0, 7, 10, 0, 7, 0},
    {5, 2, 7, 11, 2, 7, 0},
    {7, 2, 2, 16, 2, 2, 0},
    {10, 0, 8, 28, 0, 8, 0},
    {12, 2, 8, 30, 2, 8, 0},
    {8, 0, 8, 26, 0, 8, 0},
    {11, 2, 8, 29, 2, 8, 0},
    {9, 0, 8, 27, 0, 8, 0},
    {7, 2, 8, 25, 2, 8, 0},
};

/* 80AA1D5C-80AA21D8 000430 047C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[41] = {
    {9, 2, 3, 12, 0, 3, 1, 0},
    {25, 2, 4, 12, 0, 3, 1, 0},
    {10, 2, 6, 12, 0, 3, 1, 0},
    {26, 2, 4, 12, 0, 3, 1, 0},
    {27, 2, 4, 12, 0, 3, 1, 0},
    {28, 2, 4, 12, 0, 3, 1, 0},
    {8, 0, 6, 12, 0, 3, 1, 0},
    {-1, 0, 0, -1, 0, 0, 0, 0},
    {17, 2, 4, 12, 0, 3, 1, 0},
    {16, 2, 8, 12, 0, 3, 1, 0},
    {21, 2, 4, 12, 0, 3, 1, 0},
    {23, 0, 4, 12, 0, 3, 1, 0},
    {24, 2, 4, 12, 0, 3, 1, 0},
    {9, 0, 6, 12, 0, 3, 1, 0},
    {7, 0, 4, 12, 0, 3, 1, 0},
    {8, 0, 4, 12, 0, 3, 1, 0},
    {5, 0, 3, 12, 0, 3, 1, 0},
    {20, 0, 4, 35, 0, 4, 0, 0},
    {22, 2, 4, 12, 0, 3, 1, 0},
    {18, 2, 4, 12, 0, 3, 1, 0},
    {19, 2, 4, 12, 0, 3, 1, 0},
    {6, 0, 5, 12, 0, 3, 1, 0},
    {21, 0, 5, 12, 0, 3, 1, 0},
    {19, 0, 5, 12, 0, 3, 1, 0},
    {20, 2, 5, 12, 0, 3, 1, 0},
    {16, 0, 5, 12, 0, 3, 1, 0},
    {17, 0, 5, 12, 0, 3, 1, 0},
    {15, 0, 5, 24, 0, 5, 0, 0},
    {13, 0, 5, 12, 0, 3, 1, 0},
    {14, 2, 5, 12, 0, 3, 1, 0},
    {18, 0, 5, 12, 0, 3, 1, 0},
    {6, 2, 7, 12, 0, 3, 1, 0},
    {7, 0, 7, 12, 0, 3, 1, 0},
    {6, 2, 2, 13, 2, 2, 0, 0},
    {8, 0, 3, 12, 0, 3, 1, 0},
    {19, 2, 8, 12, 0, 3, 1, 0},
    {15, 2, 8, 12, 0, 3, 1, 0},
    {13, 0, 8, 12, 0, 3, 1, 0},
    {14, 2, 8, 12, 0, 3, 1, 0},
    {6, 2, 8, 22, 2, 8, 0, 0},
    {17, 0, 8, 12, 0, 3, 1, 0},
};

/* 80AA21D8-80AA23D8 0008AC 0200+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[128] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {15, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {16, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {18, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {14, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {19, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {20, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {21, -1, 1}, {22, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {24, -1, 1}, {25, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {26, -1, 1}, {27, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {13, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {23, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {25, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {27, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {28, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {24, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {29, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AA23D8-80AA2668 000AAC 0290+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[164] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {21, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {22, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {17, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {24, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {25, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {26, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, 0, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {27, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {28, -1, 1}, {29, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {13, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {29, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {30, 10, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {32, -1, 1}, {31, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {31, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {35, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {36, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {37, -1, 1}, {36, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {38, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {18, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {39, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {14, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {15, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {19, -1, 1}, {18, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {20, -1, 1}, {18, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {16, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {23, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {33, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {34, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {40, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AA2668-80AA2694 -00001 002C+00 1/1 0/0 0/0 .data            mCutNameList__18daNpc_Pachi_Taro_c */
char* daNpc_Pachi_Taro_c::mCutNameList[11] = {
    "",
    "TUTRIAL_BEGIN",
    "TUTRIAL_BEGIN_SKIP",
    "TUTRIAL_CLEAR",
    "TUTRIAL_TALK",
    "TUTRIAL_TALK2",
    "HIT_KAKASI_BODY",
    "TUTRIAL_SELECT_GIVEUP",
    "TUTRIAL_CONTINUE",
    "TUTRIAL_GIVEUP",
    "TUTRIAL_CAUTION",
};

/* 80AA270C-80AA2790 000DE0 0084+00 1/2 0/0 0/0 .data            mCutList__18daNpc_Pachi_Taro_c */
daNpc_Pachi_Taro_c::cutFunc daNpc_Pachi_Taro_c::mCutList[11] = {
    NULL,
    &daNpc_Pachi_Taro_c::cutTutrialBegin,
    &daNpc_Pachi_Taro_c::cutTutrialBegin_Skip,
    &daNpc_Pachi_Taro_c::cutTutrialClear,
    &daNpc_Pachi_Taro_c::cutTalk,
    &daNpc_Pachi_Taro_c::cutTalk2,
    &daNpc_Pachi_Taro_c::cut1stHit_KakasiBody,
    &daNpc_Pachi_Taro_c::cutTutrialSelectGiveUp,
    &daNpc_Pachi_Taro_c::cutTutrialContinue,
    &daNpc_Pachi_Taro_c::cutTutrialGiveUp,
    &daNpc_Pachi_Taro_c::cutTutrialCaution,
};

/* 80AA2B94-80AA2B98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static NPC_PACHI_TARO_HIO_CLASS l_HIO;

/* 80A9C28C-80A9C3C4 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__18daNpc_Pachi_Taro_cFv */
daNpc_Pachi_Taro_c::~daNpc_Pachi_Taro_c() {
    OS_REPORT("|%06d:%x|daNpc_Pachi_Taro_c -> デストラクト\n", g_Counter.mCounter0, this);

    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    #if DEBUG
    if (mpHIO != NULL) {
        mpHIO->removeHIO();
    }
    #endif

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80AA1604-80AA1690 000000 008C+00 11/11 0/0 0/0 .rodata          m__24daNpc_Pachi_Taro_Param_c */
daNpc_Pachi_Taro_HIOParam const daNpc_Pachi_Taro_Param_c::m = {
    140.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    120.0f,
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
    4,
    5,
    4,
    110.0f,
    0.0f,
    0.0f,
    0.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    4.0f,
    -15.0f,
    0.0f,
    -10.0f,
    15.0f,
    30.0f,
    10.0f,
    55.0f,
};

/* 80A9C3C4-80A9C69C 000224 02D8+00 1/1 0/0 0/0 .text            create__18daNpc_Pachi_Taro_cFv */
cPhs__Step daNpc_Pachi_Taro_c::create() {
    daNpcT_ct(this, daNpc_Pachi_Taro_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4,
                       l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x48E0)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x, BitSW:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo, getPathID(), getBitSW(), fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        #if DEBUG
        mpHIO = &l_HIO;
        mpHIO->entryHIO("パチチュー：タロ");
        #endif

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(mpHIO->m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -G_CM3D_F_INF) {
            setEnvTevColor();
            setRoomNo();
        }

        current.pos = home.pos;
        old.pos = current.pos;

        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80A9C69C-80A9CA1C 0004FC 0380+00 1/1 0/0 0/0 .text            CreateHeap__18daNpc_Pachi_Taro_cFv */
int daNpc_Pachi_Taro_c::CreateHeap() {
    J3DModelData* modelData = NULL;
    J3DModel* model = NULL;
    
    int bmdIdx = mTwilight == true ? TARO0 : NONE;
    modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdIdx][1]], l_bmdData[bmdIdx][0]));
    if (modelData == NULL) {
        return 1;
    }

    u32 uVar1 = 0x11020284;
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, uVar1);

    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    static int const bmdTypeList[2] = {
        1, 2,
    };
    
    for (int i = 0; i < 2; i++) {
        if (l_bmdData[bmdTypeList[i]][0] >= 0) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[i]][1]], l_bmdData[bmdTypeList[i]][0]);
        } else {
            modelData = NULL;
        }

        if (modelData != NULL) {
            mpModels[i] = mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer, 0x11000084);
        } else {
            mpModels[i] = NULL;
        }
    }

    if (mTwilight) {
        if (setFaceMotionAnm(0x17, false) && setMotionAnm(0x21, 0.0f, FALSE)) {
            return 1;
        }

        return 0;
    }
    
    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80A9CBD8-80A9CC0C 000A38 0034+00 1/1 0/0 0/0 .text            Delete__18daNpc_Pachi_Taro_cFv */
int daNpc_Pachi_Taro_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_Pachi_Taro_c -> Delete\n", g_Counter.mCounter0, this);
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpc_Pachi_Taro_c();
    return 1;
}

/* 80A9CC0C-80A9CC2C 000A6C 0020+00 2/2 0/0 0/0 .text            Execute__18daNpc_Pachi_Taro_cFv */
int daNpc_Pachi_Taro_c::Execute() {
    return execute();
}

/* 80A9CC2C-80A9CCC0 000A8C 0094+00 1/1 0/0 0/0 .text            Draw__18daNpc_Pachi_Taro_cFv */
int daNpc_Pachi_Taro_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    return draw(
#ifdef DEBUG
        chkAction(&daNpc_Pachi_Taro_c::test),
#else
        FALSE,
#endif
        FALSE,
        mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE
    );
}

/* 80A9CCC0-80A9CCE0 000B20 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__18daNpc_Pachi_Taro_cFP10fopAc_ac_c */
int daNpc_Pachi_Taro_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpc_Pachi_Taro_c* actor = (daNpc_Pachi_Taro_c*)i_this;
    return actor->CreateHeap();
}

/* 80A9CCE0-80A9CD38 000B40 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__18daNpc_Pachi_Taro_cFP8J3DJointi */
int daNpc_Pachi_Taro_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Pachi_Taro_c* actor = (daNpc_Pachi_Taro_c*)model->getUserArea();
        if (actor != 0) {
            actor->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A9CD38-80A9CD40 000B98 0008+00 1/1 0/0 0/0 .text            getType__18daNpc_Pachi_Taro_cFv */
u8 daNpc_Pachi_Taro_c::getType() {
    u8 param = fopAcM_GetParam(this) & 0xFF;
    param = 0;

    switch (param) {
        case 0:
            return 0;

        default:
            return 1;
    }
}

/* 80A9CD40-80A9CD60 000BA0 0020+00 1/1 0/0 0/0 .text            isDelete__18daNpc_Pachi_Taro_cFv */
BOOL daNpc_Pachi_Taro_c::isDelete() {
    switch (mType) {
        case 0:
            return FALSE;

        default:
            return FALSE;
    }
}

/* 80A9CD60-80A9CF10 000BC0 01B0+00 1/1 0/0 0/0 .text            reset__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::reset() {
    int size = (u8*)&field_0x1008 - (u8*)&mNextAction;

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    initialize();

    for (int i = 0; i < 6; i++) {
        mActorMngrs[i].initialize();
    }

    memset(&mNextAction, 0, size);

    switch (mType) {
        case 0:
            field_0xfd4 = 2;
            field_0xfde = 0;
            field_0xfdf = 0;
            field_0xfe0 = 0;
            field_0xfe2 = 1;
            field_0xfe3 = 1;
            mMesPat = 0;
            dComIfGs_setTmpReg(0xF4FF, 0);
            mPrevEvtNo = 0;
            field_0x1004 = 0;
            break;
    }

    setAngle(home.angle.y);
}

/* 80A9CF10-80A9CF9C 000D70 008C+00 1/0 0/0 0/0 .text            afterJntAnm__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::afterJntAnm(int i_joint) {
    if (i_joint == 1) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(1));
    } else if (i_joint == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80A9CF9C-80A9D098 000DFC 00FC+00 1/0 0/0 0/0 .text            setParam__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::setParam() {
    selectAction();
    srchActors();

    u32 flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    s16 talk_distance = mpHIO->m.common.talk_distance;
    s16 talk_angle = mpHIO->m.common.talk_angle;

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(mpHIO->m.common.attention_distance, mpHIO->m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = flags;

    scale.set(mpHIO->m.common.scale, mpHIO->m.common.scale, mpHIO->m.common.scale);
    mCcStts.SetWeight(mpHIO->m.common.weight);
    mCylH = mpHIO->m.common.height;
    mWallR = mpHIO->m.common.width;
    mAttnFovY = mpHIO->m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(mpHIO->m.common.knee_length);
    mRealShadowSize = mpHIO->m.common.real_shadow_size;
    mExpressionMorfFrame = mpHIO->m.common.expression_morf_frame;
    mMorfFrames = mpHIO->m.common.morf_frame;
    gravity = mpHIO->m.common.gravity;
}

/* 80A9D098-80A9D0A0 000EF8 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__18daNpc_Pachi_Taro_cFv */
BOOL daNpc_Pachi_Taro_c::checkChangeEvt() {
    switch (mType) {
        case 0:
            break;
    }
    
    return FALSE;
}

/* 80A9D0A0-80A9D164 000F00 00C4+00 2/0 0/0 0/0 .text            setAfterTalkMotion__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::setAfterTalkMotion() {
    int idx = 0x1F;

    switch (mFaceMotionSeqMngr.getNo()) {
        case 1:
            idx = 0x12;
            break;

        case 2:
            idx = 0x13;
            break;

        case 3:
            idx = 0x14;
            break;

        case 4:
            idx = 0x15;
            break;

        case 5:
            idx = 0x16;
            break;

        case 0xC:
            idx = 0x18;
            break;
            
        case 0xD:
            idx = 0x1A;
            break;

        case 0xE:
            idx = 0x1B;
            break;
    }

    mFaceMotionSeqMngr.setNo(idx, -1.0f, FALSE, 0);
}

/* 80A9D164-80A9D27C 000FC4 0118+00 1/1 0/0 0/0 .text            srchActors__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::srchActors() {
    switch (mType) {
        case 0:
            if (mActorMngrs[0].getActorP() == NULL) {
                mActorMngrs[0].entry(getNearestActorP(PROC_NPC_PACHI_MARO));
            }

            if (mActorMngrs[1].getActorP() == NULL) {
                mActorMngrs[1].entry(getNearestActorP(PROC_NPC_PACHI_BESU));
            }

            if (mActorMngrs[2].getActorP() == NULL) {
                mActorMngrs[2].entry(srchDistTag1());
            }

            if (mActorMngrs[3].getActorP() == NULL) {
                mActorMngrs[3].entry(srchDistTag2());
            }

            if (mActorMngrs[4].getActorP() == NULL) {
                mActorMngrs[4].entry(srchEscapeTag1());
            }

            if (mActorMngrs[5].getActorP() == NULL) {
                mActorMngrs[5].entry(srchEscapeTag2());
            }
            break;
    }
}

/* 80A9D27C-80A9D2A8 0010DC 002C+00 1/1 0/0 0/0 .text            srchDistTag1__18daNpc_Pachi_Taro_cFv */
fopAc_ac_c* daNpc_Pachi_Taro_c::srchDistTag1() {
    return (fopAc_ac_c*)fpcM_Search(_srch_DistTag1_main, this);
}

/* 80A9D2A8-80A9D310 001108 0068+00 1/1 0/0 0/0 .text            _srch_DistTag1_main__18daNpc_Pachi_Taro_cFPvPv */
void* daNpc_Pachi_Taro_c::_srch_DistTag1_main(void* i_actor, void* i_data) {
    daTagPati_c* actor = (daTagPati_c*)i_actor;
    
    if (!fopAcM_IsActor(actor)) {
        return NULL;
    } 
    
    if (fopAcM_GetName(actor) != PROC_TAG_PATI) {
        return NULL;
    } 
    
    if (!actor->isDistChkTag1()) {
        return NULL;
    }

    return actor;
}

/* 80A9D310-80A9D33C 001170 002C+00 1/1 0/0 0/0 .text            srchDistTag2__18daNpc_Pachi_Taro_cFv */
fopAc_ac_c* daNpc_Pachi_Taro_c::srchDistTag2() {
    return (fopAc_ac_c*)fpcM_Search(_srch_DistTag2_main, this);
}

/* 80A9D33C-80A9D3A4 00119C 0068+00 1/1 0/0 0/0 .text            _srch_DistTag2_main__18daNpc_Pachi_Taro_cFPvPv */
void* daNpc_Pachi_Taro_c::_srch_DistTag2_main(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    } 
    
    if (fopAcM_GetName(i_actor) != PROC_TAG_PATI) {
        return NULL;
    } 
    
    if (((daTagPati_c*)i_actor)->isDistChkTag2()) {
        return i_actor;
    }

    return NULL;
}

/* 80A9D3A4-80A9D3D0 001204 002C+00 1/1 0/0 0/0 .text            srchEscapeTag1__18daNpc_Pachi_Taro_cFv */
fopAc_ac_c* daNpc_Pachi_Taro_c::srchEscapeTag1() {
    return (fopAc_ac_c*)fpcM_Search(_srch_EscapeTag1_main, this);
}

/* 80A9D3D0-80A9D438 001230 0068+00 1/1 0/0 0/0 .text            _srch_EscapeTag1_main__18daNpc_Pachi_Taro_cFPvPv */
void* daNpc_Pachi_Taro_c::_srch_EscapeTag1_main(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    } 
    
    if (fopAcM_GetName(i_actor) != PROC_TAG_PATI) {
        return NULL;
    } 
    
    if (((daTagPati_c*)i_actor)->isEscapeChkTag1()) {
        return i_actor;
    }

    return NULL;
}

/* 80A9D438-80A9D464 001298 002C+00 1/1 0/0 0/0 .text            srchEscapeTag2__18daNpc_Pachi_Taro_cFv */
fopAc_ac_c* daNpc_Pachi_Taro_c::srchEscapeTag2() {
    return (fopAc_ac_c*)fpcM_Search(_srch_EscapeTag2_main, this);
}

/* 80A9D464-80A9D4CC 0012C4 0068+00 1/1 0/0 0/0 .text            _srch_EscapeTag2_main__18daNpc_Pachi_Taro_cFPvPv */
void* daNpc_Pachi_Taro_c::_srch_EscapeTag2_main(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    } 
    
    if (fopAcM_GetName(i_actor) != PROC_TAG_PATI) {
        return NULL;
    } 
    
    if (((daTagPati_c*)i_actor)->isEscapeChkTag2()) {
        return i_actor;
    }

    return NULL;
}

/* 80A9D4CC-80A9D5D0 00132C 0104+00 1/0 0/0 0/0 .text            evtTalk__18daNpc_Pachi_Taro_cFv */
BOOL daNpc_Pachi_Taro_c::evtTalk() {
    if (chkAction(&daNpc_Pachi_Taro_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return TRUE;
            }

            dComIfGp_event_reset();
            return TRUE;
        }

        setAction(&daNpc_Pachi_Taro_c::talk);
    }

    return TRUE;
}

/* 80A9D5D0-80A9D698 001430 00C8+00 1/0 0/0 0/0 .text            evtCutProc__18daNpc_Pachi_Taro_cFv */
BOOL daNpc_Pachi_Taro_c::evtCutProc() {
    BOOL rv;
    int staffId = dComIfGp_getEventManager().getMyStaffId("PA_Taro", this, -1);

    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 11, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        rv = TRUE;
    } else {
        rv = FALSE;
    }

    return rv;
}

/* 80A9D698-80A9D840 0014F8 01A8+00 1/0 0/0 0/0 .text            action__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::action() {
    fopAc_ac_c* actor_p = NULL;

    if (!mTwilight) {
        actor_p = hitChk(&mCyl, 0xFFFFFFFF);
    }

    if (actor_p != NULL) {
        mStagger.setParam(this, actor_p, mCurAngle.y);
        setDamage(0, 17, 33);
        mStagger.setPower(0.0f);
        mDamageTimerStart = 0;
        mJntAnm.lookNone(1);
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = MODE_INIT;
    }

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 80A9D840-80A9D8B8 0016A0 0078+00 1/0 0/0 0/0 .text            beforeMove__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80A9D8B8-80A9DB0C 001718 0254+00 1/0 0/0 0/0 .text            setAttnPos__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::setAttnPos() {
    cXyz sp38(0.0f, 30.0f, 0.0f);

    BOOL bVar1 = 0;
    if (mMotionSeqMngr.getNo() == 0x21 && !mMotionSeqMngr.checkEndSequence()) {
        bVar1 = TRUE;
    }
    
    mStagger.calc(bVar1);
    f32 fVar1 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();

    mJntAnm.setParam(this, model, &sp38, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     mpHIO->m.common.body_angleX_min, mpHIO->m.common.body_angleX_max,
                     mpHIO->m.common.body_angleY_min, mpHIO->m.common.body_angleY_max,
                     mpHIO->m.common.head_angleX_min, mpHIO->m.common.head_angleX_max,
                     mpHIO->m.common.head_angleY_min, mpHIO->m.common.head_angleY_max,
                     mpHIO->m.common.neck_rotation_ratio, 0.0f, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, fVar1);
    setMtx();

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp38, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);

    attention_info.position = current.pos;
    attention_info.position.y += mpHIO->m.common.attention_offset;
}

/* 80A9DB0C-80A9DC14 00196C 0108+00 1/0 0/0 0/0 .text setCollision__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::setCollision() {
    if (!mHide) {
        u32 tgType = 0xD8FBFDFF;
        u32 tgSPrm = 0x1F;

        if (dComIfGp_event_runCheck()) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mStagger.checkStagger()) {
            tgType = 0;
            tgSPrm = 0;
        }

        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();
        mCyl.SetH(mCylH);
        mCyl.SetR(mWallR);
        mCyl.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80A9DC14-80A9DC1C 001A74 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__18daNpc_Pachi_Taro_cFv */
int daNpc_Pachi_Taro_c::drawDbgInfo() {
    return 0;
}

/* 80A9DC1C-80A9DD24 001A7C 0108+00 1/0 0/0 0/0 .text            drawOtherMdl__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::drawOtherMdl() {
    J3DModel* model = mpMorf[0]->getModel();

    static int const jointNo[2] = {
        0xF, 0xF,
    };

    for (int i = 0; i < 2; i++) {
        if (mpModels[i] != NULL && ((i == 0 && field_0x1005 != 0) || (i == 1 && field_0x1006 != 0))) {
            g_env_light.setLightTevColorType_MAJI(mpModels[i], &tevStr);
            mDoMtx_stack_c::copy(model->getAnmMtx(jointNo[i]));
            Mtx mtx;
            MTXCopy(mDoMtx_stack_c::get(), mtx);
            mpModels[i]->setBaseTRMtx(mtx);
            mDoExt_modelUpdateDL(mpModels[i]);
            dComIfGd_addRealShadow(mShadowKey, mpModels[i]);
        }
    }
}

/* 80A9DD24-80A9DDA0 001B84 007C+00 1/1 0/0 0/0 .text            selectAction__18daNpc_Pachi_Taro_cFv */
BOOL daNpc_Pachi_Taro_c::selectAction() {
    mNextAction = NULL;

    switch (mType) {
        case 0:
            mNextAction = &daNpc_Pachi_Taro_c::wait;
            break;

        default:
            mNextAction = &daNpc_Pachi_Taro_c::wait;
            break;
    }

    return TRUE;
}

/* 80A9DDA0-80A9DDCC 001C00 002C+00 1/1 0/0 0/0 .text            chkAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i */
BOOL daNpc_Pachi_Taro_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80A9DDCC-80A9DE74 001C2C 00A8+00 2/2 0/0 0/0 .text            setAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i */
BOOL daNpc_Pachi_Taro_c::setAction(actionFunc action) {
    mMode = MODE_EXIT;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = MODE_ENTER;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 80A9DE74-80A9E154 001CD4 02E0+00 2/0 0/0 0/0 .text            wait__18daNpc_Pachi_Taro_cFPv */
int daNpc_Pachi_Taro_c::wait(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                mMesPat = -1;
                mFaceMotionSeqMngr.setNo(0x1F, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(0, -1.0f, FALSE, 0);
                mMode = 2;
            }
            // fallthrough
        case 2:
            if (!mStagger.checkStagger()) {
                if (mPlayerActorMngr.getActorP() != NULL) {
                    if (field_0xfe3 != 0) {
                        mJntAnm.lookPlayer(0);

                        if (field_0xfe2 == 0 || !chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                            mJntAnm.lookNone(0);
                        }
                    } else {
                        field_0xfe3 = 1;
                    }

                    if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                        mMode = 1;
                    }
                } else {
                    mJntAnm.lookNone(0);

                    if (home.angle.y != mCurAngle.y) {
                        if (field_0xe34 != 0) {
                            if (field_0xfe2 != 0 && step(home.angle.y, 31, 36, 15, 0)) {
                                mMode = 1;
                            }
                        } else {
                            setAngle(home.angle.y);
                            mMode = 1;
                        }

                        attention_info.flags = 0;
                    } else if (!mTwilight) {
                        srchPlayerActor();
                    }
                }
            
                switch (mJntAnm.getMode()) {
                    default:
                        break;
                }

                if (field_0x1004 == 0) {
                    mEvtNo = 1;
                    mPrevEvtNo = mEvtNo;
                    dComIfGp_getEvent().setSkipProc(this, dEv_defaultSkipProc, 0);
                } else if (field_0x1004 == 1) {
                    watch_tutrial();
                }
            }
            break;

        case 3:
            break;
    }

    return 1;
}

/* 80A9E154-80A9E224 001FB4 00D0+00 2/2 0/0 0/0 .text            setMesPat__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::setMesPat() {
    mMesPat = 0;

    if (fopAcM_isSwitch(this, getBitSW())) {
        if (!fopAcM_isSwitch(this, getBitSW2())) {
            // dSv_event_flag_c::F_0613 - Ordon Village - Slingshot Tutorial - Spoke before getting 2 scarecrow heards
            if (daNpcT_chkEvtBit(613)) {
                mMesPat = 3;
            } else {
                mMesPat = 2;
            }
        } else {
            mMesPat = 4;
        }
    } else if (
        // dSv_event_flag_c::F_0612 - Ordon Village - Pachinco Tutorial - Spoke before hitting target
        daNpcT_chkEvtBit(612)
    ) {
        mMesPat = 1;
    } else {
        mMesPat = 0;
    }
}

/* 80A9E224-80A9E270 002084 004C+00 3/3 0/0 0/0 .text _turn_to_link__18daNpc_Pachi_Taro_cFs */
BOOL daNpc_Pachi_Taro_c::_turn_to_link(s16 i_step) {
    cXyz pos(*fopAcM_GetPosition_p(daPy_getPlayerActorClass()));
    return _turn_pos(pos, i_step);
}

/* 80A9E270-80A9E2CC 0020D0 005C+00 4/4 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyzs */
BOOL daNpc_Pachi_Taro_c::_turn_pos(cXyz const& i_pos, s16 i_step) {
    BOOL rv = cLib_chaseAngleS(&mCurAngle.y, cLib_targetAngleY(&current.pos, &i_pos), i_step);
    current.angle.y = mCurAngle.y;
    shape_angle.y = mCurAngle.y;
    return rv;
}

/* 80A9E2CC-80A9E30C 00212C 0040+00 1/1 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyz */
BOOL daNpc_Pachi_Taro_c::_turn_pos(cXyz const& i_pos) {
    s16 angleY = cLib_targetAngleY(&current.pos, &i_pos);
    mCurAngle.y = angleY;
    current.angle.y = angleY;
    shape_angle.y = angleY;

    return TRUE;
}

/* 80A9E30C-80A9E364 00216C 0058+00 1/1 0/0 0/0 .text            talk_cancel__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::talk_cancel() {
    fopAc_ac_c* actor_p = mActorMngrs[0].getActorP();
    if (actor_p != NULL) {
        ((daNpc_Pachi_Maro_c*)actor_p)->talkOff();
    }
    
    actor_p = mActorMngrs[1].getActorP();
    if (actor_p != NULL) {
        ((daNpc_Pachi_Besu_c*)actor_p)->talkOff();
    }
}

/* 80A9E364-80A9E3E4 0021C4 0080+00 1/1 0/0 0/0 .text watch_tutrial__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::watch_tutrial() {
    u16 evtNo = chkDistTag();
    if (evtNo) {
        mEvtNo = evtNo;
        mPrevEvtNo = mEvtNo;
    } else {
        evtNo = chkEscapeTag();
        if (evtNo) {
            mEvtNo = evtNo;
            mPrevEvtNo = mEvtNo;
        } else {
            evtNo = chkTarget();
            if (evtNo) {
                mEvtNo = evtNo;
                mPrevEvtNo = mEvtNo;
            }
        }
    }
}

/* 80A9E3E4-80A9E458 002244 0074+00 1/1 0/0 0/0 .text            chkDistTag__18daNpc_Pachi_Taro_cFv */
u16 daNpc_Pachi_Taro_c::chkDistTag() {
    fopAc_ac_c* actor_p = mActorMngrs[2].getActorP();
    if (actor_p != NULL && ((daTagPati_c*)actor_p)->is_CoHit()) {
        OS_REPORT("---- tag hit1!!\n");
        return 10;
    }

    actor_p = mActorMngrs[3].getActorP();
    if (actor_p != NULL && ((daTagPati_c*)actor_p)->is_CoHit()) {
        OS_REPORT("---- tag hit2!!\n");
        return 10;
    }

    return 0;
}

/* 80A9E458-80A9E56C 0022B8 0114+00 1/1 0/0 0/0 .text chkEscapeTag__18daNpc_Pachi_Taro_cFv */
u16 daNpc_Pachi_Taro_c::chkEscapeTag() {
    fopAc_ac_c* actor_p = mActorMngrs[4].getActorP();
    if (actor_p != NULL && ((daTagPati_c*)actor_p)->is_CoHit()) {
        cXyz tagPos(-428.2985f, 800.0f, -1607.351f);
        cXyz lookPos(640.3426f, 900.0f, -1783.4485f);
        allTagPosSet(tagPos);
        allLookPosSet(lookPos);
        return 7;
    }
    
    actor_p = mActorMngrs[5].getActorP();
    if (actor_p != NULL && ((daTagPati_c*)actor_p)->is_CoHit()) {
        cXyz tagPos(780.17f, 800.0f, -2589.7766f);
        cXyz lookPos(781.49524f, 900.0f, -2103.6f);
        allTagPosSet(tagPos);
        allLookPosSet(lookPos);
        return 7;
    }

    return 0;
}

/* 80A9E56C-80A9E700 0023CC 0194+00 1/1 0/0 0/0 .text            chkTarget__18daNpc_Pachi_Taro_cFv */
u16 daNpc_Pachi_Taro_c::chkTarget() {
    s8 sVar1 = -1;
    u8 tmpReg = dComIfGs_getTmpReg(0xF3FF);

    if (tmpReg != 0) {
        if (tmpReg & 1) {
            if (tmpReg & 128) {
                sVar1 = 1;
            } else {
                sVar1 = 2;
            }

            field_0xfd4--;
            if (field_0xfd4 == 0) {
                OS_REPORT("-------- KAKASI W BREAK!!\n");
                fopAcM_onSwitch(this, getBitSW2());
            }
        }

        if (tmpReg & 2) {
            sVar1 = 0;
        }

        if (tmpReg & 4) {
            if (tmpReg & 128) {
                sVar1 = 1;
            } else {
                sVar1 = 2;
            }
        }
    }

    dComIfGs_setTmpReg(0xF3FF, 0);

    u16 rv = 0;

    if (field_0xfdf == 0) {
        switch (sVar1) {
            case 0:
                if (field_0xfe0 == 0) {
                    field_0xfe0 = 1;
                    rv = 6;
                    field_0xfe1 = sVar1;
                }
                break;

            case 1:
            case 2:
                field_0xfdf = 1;
                rv = 6;
                field_0xfe1 = sVar1;
                break;

            default:
                field_0xfdf = 0;
                break;
        }
    }

    field_0xfde = dComIfGs_getTmpReg(0xF4FF);
    if (field_0xfde == 7) {
        rv = 3;
    } else if (field_0xfde != 0) {
        fopAcM_onSwitch(this, getBitSW());
    }

    return rv;
}

/* 80A9E700-80A9E778 002560 0078+00 1/1 0/0 0/0 .text            clr_tagHit__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::clr_tagHit() {
    for (int i = 0; i < 4; i++) {
        fopAc_ac_c* actor_p = mActorMngrs[i + 2].getActorP();
        if (actor_p != NULL) {
            ((daTagPati_c*)actor_p)->clr_CoHit();
        }
    }
}

/* 80A9E778-80A9E80C 0025D8 0094+00 1/1 0/0 0/0 .text            allTagPosSet__18daNpc_Pachi_Taro_cFRC4cXyz */
void daNpc_Pachi_Taro_c::allTagPosSet(cXyz const& i_pos) {
    fopAc_ac_c* pachiMaroP = mActorMngrs[0].getActorP();
    fopAc_ac_c* pachBesuP = mActorMngrs[1].getActorP();
    
    setTagPos(i_pos);

    if (pachiMaroP != NULL) {
        ((daNpc_Pachi_Maro_c*)pachiMaroP)->setTagPos(i_pos);
    }

    if (pachBesuP != NULL) {
        ((daNpc_Pachi_Besu_c*)pachBesuP)->setTagPos(i_pos);
    }
}

/* 80A9E80C-80A9E8A0 00266C 0094+00 1/1 0/0 0/0 .text            allLookPosSet__18daNpc_Pachi_Taro_cFRC4cXyz */
void daNpc_Pachi_Taro_c::allLookPosSet(cXyz const& i_pos) {
    fopAc_ac_c* pachiMaroP = mActorMngrs[0].getActorP();
    fopAc_ac_c* pachBesuP = mActorMngrs[1].getActorP();
    
    setLookPos(i_pos);

    if (pachiMaroP != NULL) {
        ((daNpc_Pachi_Maro_c*)pachiMaroP)->setLookPos(i_pos);
    }

    if (pachBesuP != NULL) {
        ((daNpc_Pachi_Besu_c*)pachBesuP)->setLookPos(i_pos);
    }
}

/* 80A9E8A0-80A9E910 002700 0070+00 2/0 0/0 0/0 .text            talk__18daNpc_Pachi_Taro_cFPv */
int daNpc_Pachi_Taro_c::talk(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                clrMesPat();
                mMode = 2;
            }
            // fallthrough
        case 2:
            mEvtNo = 4;
            mPrevEvtNo = mEvtNo;
            evtChange();
            break;

        case 3:
            break;
    }

    return 0;
}

int daNpc_Pachi_Taro_c::test(void* param_1) {

}

/* 80A9E910-80A9E9E8 002770 00D8+00 2/0 0/0 0/0 .text            evtEndProc__18daNpc_Pachi_Taro_cFv */
BOOL daNpc_Pachi_Taro_c::evtEndProc() {
    fopAc_ac_c* actor_p = mActorMngrs[0].getActorP();

    talk_cancel();
    clr_tagHit();

    switch (mPrevEvtNo) {
        case 7:
            field_0xfe2 = 0;
            field_0xfe3 = 0;

            if (mFlow.getChoiceNo() == 0) {
                mEvtNo = 9;
            } else {
                mEvtNo = 8;
            }

            mPrevEvtNo = mEvtNo;
            evtChange();
            break;

        case 4:
        case 6:
        case 9:
            ((daNpc_Pachi_Maro_c*)actor_p)->setFMotion_LookNone();
            break;

        case 1:
            daNpcT_onEvtBit(608);
            // fallthrough
        default:
            field_0xfe2 = 1;
            mPrevEvtNo = 0;
            break;
    }

    return TRUE;
}

/* 80A9E9E8-80A9EAA0 002848 00B8+00 1/0 0/0 0/0 .text cutTutrialBegin__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTutrialBegin(int i_staffId) {
    field_0x1004 = 1;

    dComIfGp_getEvent().setSkipZev(this, "TUTRIAL_BEGIN_SKIP");
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTutrialBegin_Init(*cutId);
    }

    return _cutTutrialBegin_Main(*cutId);
}

/* 80A9EAA0-80A9EB3C 002900 009C+00 1/1 0/0 0/0 .text             _cutTutrialBegin_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialBegin_Init(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};

    switch (i_cutId) {
        case 10:
            field_0xfda = 4;
            initTalk(0x47, actors);
            break;
    }

    return TRUE;
}

/* 80A9EB3C-80A9EC5C 00299C 0120+00 1/1 0/0 0/0 .text            _cutTutrialBegin_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialBegin_Main(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 10:
            if (talkProc(NULL, FALSE, actors, FALSE)) {
                rv = TRUE;
            } else {
                u32 nowMsgNo = mFlow.getNowMsgNo();
                if (nowMsgNo == 0x1688 || nowMsgNo == 0x166B) {
                    if (--field_0xfda == 0) {
                        fopAc_ac_c* actor_p = mActorMngrs[1].getActorP();
                        if (actor_p != NULL) {
                            ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_LookBros();
                        }
                    }
                } else if (nowMsgNo == 0x1689 || nowMsgNo == 0x166C) {
                    fopAc_ac_c* actor_p = mActorMngrs[1].getActorP();
                    if (actor_p != NULL) {
                        ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_LookNone();
                    }
                }
            }
            break;
    }

    return rv;
}

/* 80A9EC5C-80A9ECF0 002ABC 0094+00 1/0 0/0 0/0 .text            cutTutrialBegin_Skip__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTutrialBegin_Skip(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTutrialBegin_Skip_Init(*cutId);
    }

    return _cutTutrialBegin_Skip_Main(*cutId);
}

/* 80A9ECF0-80A9ED28 002B50 0038+00 1/1 0/0 0/0 .text            _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialBegin_Skip_Init(int const& i_cutId) {
    switch (i_cutId) {
        case 10:
            // dSv_event_flag_c::F_0608 - Ordon Village - Began Slingshot tutorial
            daNpcT_onEvtBit(608);
            break;
    }

    return TRUE;
}

/* 80A9ED28-80A9ED40 002B88 0018+00 1/1 0/0 0/0 .text            _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialBegin_Skip_Main(int const& i_cutId) {
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 10:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 80A9ED40-80A9EDD4 002BA0 0094+00 1/0 0/0 0/0 .text cutTutrialClear__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTutrialClear(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTutrialClear_Init(*cutId);
    }

    return _cutTutrialClear_Main(*cutId);
}

/* 80A9EDD4-80A9EEBC 002C34 00E8+00 1/1 0/0 0/0 .text            _cutTutrialClear_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialClear_Init(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};

    switch (i_cutId) {
        case 5:
            mJntAnm.lookNone(0);
            break;
        
        case 10:
            break;

        case 20:
            initTalk(0x4C, actors);
            break;
    }

    return TRUE;
}

/* 80A9EEBC-80A9EFC0 002D1C 0104+00 1/1 0/0 0/0 .text            _cutTutrialClear_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialClear_Main(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 5:
            rv = TRUE;
            break;
        
        case 10: {
            cXyz pos(894.916f, 903.411f, -2040.36f);
            
            if (_turn_pos(pos, 0x1000)) {
                rv = TRUE;
            }
            break;
        }

        case 20:
            if (talkProc(NULL, FALSE, actors, FALSE)) {
                rv = TRUE;
            }
            break;
    }

    return rv;
}

/* 80A9EFC0-80A9F0DC 002E20 011C+00 1/0 0/0 0/0 .text            cutTalk__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTalk(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        return TRUE;
    }

    char* mesNos[5] = {
        "MesNo0",
        "MesNo1",
        "MesNo2",
        "MesNo3",
        "MesNo4",
    };

    if (mMesPat < 0) {
        setMesPat();
    }

    int mesNo = 0;
    int* piVar2 = dComIfGp_evmng_getMyIntegerP(i_staffId, mesNos[mMesPat]);
    if (piVar2 != NULL) {
        mesNo = *piVar2;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTalk_Init(*cutId);
    }

    return _cutTalk_Main(*cutId, mesNo);
}

/* 80A9F0DC-80A9F188 002F3C 00AC+00 2/1 0/0 0/0 .text _cutTalk_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTalk_Init(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};

    switch (i_cutId) {
        case 5:
            break;
        
        case 10:
            initTalk(0x4B, actors);
            break;

        case 20:
            break;

        case 25:
            break;

        case 30:
            break;
    }

    return TRUE;
}

/* 80A9F188-80A9F324 002FE8 019C+00 2/1 0/0 0/0 .text            _cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi */
BOOL daNpc_Pachi_Taro_c::_cutTalk_Main(int const& i_cutId, int const& i_mesNo) {
    // NONMATCHING
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};
    fopAc_ac_c* actor_p = mActorMngrs[0].getActorP();
    fopAc_ac_c* actor_p2 = mActorMngrs[1].getActorP();
    int mesNo[2] = {-1, -1};
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 5:
            if (_turn_to_link(0x800)) {
                rv = TRUE;
            }
            break;

       case 10:
            if (i_mesNo == 0) {
                JUT_ASSERT(3563, FALSE);
            }

            mesNo[0] = i_mesNo;

            if (talkProc(mesNo, FALSE, actors, FALSE)) {
                rv = TRUE;
            }
            break;

        case 20:
            if (i_mesNo == 0) {
                JUT_ASSERT(3574, FALSE);
            }

            mesNo[0] = i_mesNo;

            if (talkProc(mesNo, FALSE, actors, FALSE)) {
                rv = TRUE;
            }
            break;

        case 30:
            if (talkProc(NULL, FALSE, actors, FALSE)) {
                rv = 1;
            } else {
                u32 nowMsgNo = mFlow.getNowMsgNo();
                if (nowMsgNo == 0x1698 || nowMsgNo == 0x167C) {
                    ((daNpc_Pachi_Maro_c*)actor_p)->setFMotion_Niramu_to_Besu();
                }
            }
            break;
        
        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 80A9F324-80A9F440 003184 011C+00 1/0 0/0 0/0 .text            cutTalk2__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTalk2(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = NULL;
    cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        return TRUE;
    }

    char* mesNos[5] = {
        "MesNo0",
        "MesNo1",
        "MesNo2",
        "MesNo3",
        "MesNo4",
    };

    int* piVar2 = NULL;
    int mesNo = 0;
    if (mMesPat < 0) {
        setMesPat();
    }

    piVar2 = dComIfGp_evmng_getMyIntegerP(i_staffId, mesNos[mMesPat]);
    if (piVar2 != NULL) {
        mesNo = *piVar2;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTalk2_Init(*cutId);
    }

    return _cutTalk2_Main(*cutId, mesNo);
}

/* 80A9F440-80A9F4EC 0032A0 00AC+00 2/1 0/0 0/0 .text _cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTalk2_Init(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};

    switch (i_cutId) {
        case 5:
            break;
        
        case 10:
            initTalk(0x4B, actors);
            break;

        case 20:
            break;

        case 25:
            break;

        case 30:
            break;
    }

    return TRUE;
}

/* 80A9F4EC-80A9F688 00334C 019C+00 2/1 0/0 0/0 .text            _cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi */
BOOL daNpc_Pachi_Taro_c::_cutTalk2_Main(int const& i_cutId, int const& i_mesNo) {
    // NONMATCHING
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};
    fopAc_ac_c* actor_p = mActorMngrs[0].getActorP();
    fopAc_ac_c* actor_p2 = mActorMngrs[1].getActorP();
    int mesNo[2] = {-1, -1};
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 5:
            if (_turn_to_link(0x800)) {
                rv = TRUE;
            }
            break;

       case 10:
            if (i_mesNo == 0) {
                JUT_ASSERT(3749, FALSE);
            }

            mesNo[0] = i_mesNo;

            if (talkProc(mesNo, FALSE, actors, FALSE)) {
                rv = TRUE;
            }
            break;

        case 20:
            if (i_mesNo == 0) {
                JUT_ASSERT(3760, FALSE);
            }

            mesNo[0] = i_mesNo;

            if (talkProc(mesNo, FALSE, actors, FALSE)) {
                rv = TRUE;
            }
            break;

        case 30:
            if (talkProc(NULL, FALSE, actors, FALSE)) {
                rv = 1;
            } else {
                u32 nowMsgNo = mFlow.getNowMsgNo();
                if (nowMsgNo == 0x1698 || nowMsgNo == 0x167C) {
                    ((daNpc_Pachi_Maro_c*)actor_p)->setFMotion_Niramu_to_Besu();
                }
            }
            break;
        
        default:
            rv = TRUE;
            break;
    }

    return rv;
}

/* 80A9F688-80A9F71C 0034E8 0094+00 1/0 0/0 0/0 .text            cut1stHit_KakasiBody__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cut1stHit_KakasiBody(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = NULL;
    cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cut1stHit_KakasiBody_Init(*cutId);
    }

    return _cut1stHit_KakasiBody_Main(*cutId);
}

/* 80A9F71C-80A9F83C 00357C 0120+00 1/1 0/0 0/0 .text            _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cut1stHit_KakasiBody_Init(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};

    static int const sHitMsg[3] = {
        0x48, 0x4A, 0x49,
    };
    
    switch (i_cutId) {
        case 5:
            mJntAnm.lookNone(0);
            break;

        case 10:
            break;

        case 20:
            if (sHitMsg[field_0xfe1] != 0x48) {
                fopAc_ac_c* actor_p = mActorMngrs[1].getActorP();
                ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_Hit();
            }

            field_0xfda = 30;
            initTalk(sHitMsg[field_0xfe1], actors);
            break;
    }

    return TRUE;
}

/* 80A9F83C-80A9F9C4 00369C 0188+00 1/1 0/0 0/0 .text            _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cut1stHit_KakasiBody_Main(int const& i_cutId) {
    // NONMATCHING
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};
    fopAc_ac_c* actor_p = mActorMngrs[1].getActorP();
    fopAc_ac_c* actor_p2 = mActorMngrs[0].getActorP();
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 5:
            rv = TRUE;
            break;
        
        case 10: {
            cXyz pos(894.916f, 903.411, -2040.36);
            if (_turn_pos(pos, 0x1000)) {
                rv = TRUE;
            }
            break;
        }

        case 20:
            if (talkProc(NULL, FALSE, actors, FALSE)) {
                rv = TRUE;
            } else {
                u32 nowMsgNo = mFlow.getNowMsgNo();
                if (nowMsgNo == 0x168F) {
                    if (--field_0xfda <= 0 && actor_p != NULL) {
                        ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_Mad();
                    }
                } else if ((nowMsgNo == 0x1675 || nowMsgNo == 0x168C || nowMsgNo == 0x166F || nowMsgNo == 0x1672) && actor_p2 != NULL) {
                    ((daNpc_Pachi_Maro_c*)actor_p2)->setFMotion_Niramu_to_Besu();
                }
            }
    }
}

/* 80A9F9C4-80A9FA58 003824 0094+00 1/0 0/0 0/0 .text            cutTutrialSelectGiveUp__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTutrialSelectGiveUp(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = NULL;
    cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTutrialSelectGiveUp_Init(*cutId);
    }

    return _cutTutrialSelectGiveUp_Main(*cutId);
}

/* 80A9FA58-80A9FB08 0038B8 00B0+00 1/1 0/0 0/0 .text            _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialSelectGiveUp_Init(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};

    switch (i_cutId) {        
        case 10:
        case 11:
            break;
        
        case 20:
            field_0xfda = 4;
            daNpcF_offTmpBit(11);
            OS_REPORT("------------------------off tmp bit : 11!!\n");
            initTalk(0x4D, actors);
            break;
    }

    return TRUE;
}

/* 80A9FB08-80A9FCEC 003968 01E4+00 1/1 0/0 0/0 .text            _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialSelectGiveUp_Main(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};
    fopAc_ac_c* actor_p = mActorMngrs[1].getActorP();
    fopAc_ac_c* actor_p2 = mActorMngrs[0].getActorP();
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 10:
            if (_turn_pos(mTagPos)) {
                mJntAnm.lookPos(&mLookPos, 1);
                rv = TRUE;
            }
            break;
        
        case 11:
            rv = TRUE;
            break;

        case 20:
            if (talkProc(NULL, FALSE, actors, FALSE)) {
                rv = TRUE;
            } else {
                u32 nowMsgNo = mFlow.getNowMsgNo();
                if (nowMsgNo == 0x1682) {
                    if (--field_0xfda == 0 && actor_p != NULL) {
                        ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_LookBros();
                    }
                } else if (nowMsgNo == 0x1683) {
                    if (actor_p != NULL) {
                        ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_LookNone();
                    }

                    if (actor_p2 != NULL) {
                        ((daNpc_Pachi_Maro_c*)actor_p2)->setFMotion_Niramu_to_Besu();
                    }
                }
            }
            break;
    }

    return rv;
}

/* 80A9FCEC-80A9FD80 003B4C 0094+00 1/0 0/0 0/0 .text cutTutrialGiveUp__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTutrialGiveUp(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = NULL;
    cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTutrialGiveUp_Init(*cutId);
    }

    return _cutTutrialGiveUp_Main(*cutId);
}

/* 80A9FD80-80A9FE34 003BE0 00B4+00 1/1 0/0 0/0 .text            _cutTutrialGiveUp_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialGiveUp_Init(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};

    switch (i_cutId) {
        case 5:
        case 10:
            break;
        
        case 20:
            field_0xfda = -1;
            initTalk(0x4D, actors);
            break;
    }

    return TRUE;
}

/* 80A9FE34-80A9FFAC 003C94 0178+00 1/1 0/0 0/0 .text            _cutTutrialGiveUp_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialGiveUp_Main(int const& i_cutId) {
    fopAc_ac_c* actors[3] = {this, mActorMngrs[0].getActorP(), mActorMngrs[1].getActorP()};
    fopAc_ac_c* actor_p = mActorMngrs[1].getActorP();
    fopAc_ac_c* actor_p2 = mActorMngrs[0].getActorP();
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 5:
            rv = TRUE;
            break;
        
        case 10:
            rv = TRUE;
            break;

        case 20:
            if (talkProc(NULL, FALSE, actors, FALSE)) {
                rv = TRUE;
            } else {
                u32 nowMsgNo = mFlow.getNowMsgNo();
                if (nowMsgNo == 0x169A) {
                    if (field_0xfda < 0) {
                        field_0xfda = 4;
                    } else if (field_0xfda > 0 && --field_0xfda == 0 && actor_p != NULL) {
                        ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_LookBros();
                    }
                } else if (nowMsgNo == 0x169B) {
                    if (actor_p != NULL) {
                        ((daNpc_Pachi_Besu_c*)actor_p)->setFMotion_LookNone();
                    }
                } else if (nowMsgNo == 0x1685 && actor_p2 != NULL) {
                    ((daNpc_Pachi_Maro_c*)actor_p2)->setFMotion_Niramu_to_Besu();
                }
            }
            break;
    }

    return rv;
}

/* 80A9FFAC-80AA0040 003E0C 0094+00 1/0 0/0 0/0 .text            cutTutrialCaution__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTutrialCaution(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = NULL;
    cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTutrialCaution_Init(*cutId);
    }

    return _cutTutrialCaution_Main(*cutId);
}

/* 80AA0040-80AA0088 003EA0 0048+00 1/1 0/0 0/0 .text            _cutTutrialCaution_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialCaution_Init(int const& i_cutId) {
    switch (i_cutId) {
        case 5:
            break;
        
        case 10:
            initTalk(0x4E, NULL);
            break;
    }

    return TRUE;
}

/* 80AA0088-80AA0108 003EE8 0080+00 1/1 0/0 0/0 .text            _cutTutrialCaution_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialCaution_Main(int const& i_cutId) {
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 5:
            if (_turn_to_link(0xC00)) {
                rv = TRUE;
            }
            break;

        case 10:
            if (talkProc(NULL, FALSE, NULL, FALSE)) {
                rv = TRUE;
            }
            break;
    }

    return rv;
}

/* 80AA0108-80AA019C 003F68 0094+00 1/0 0/0 0/0 .text            cutTutrialContinue__18daNpc_Pachi_Taro_cFi */
BOOL daNpc_Pachi_Taro_c::cutTutrialContinue(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutId = NULL;
    cutId = dComIfGp_evmng_getMyIntegerP(i_staffId, "cutId");
    if (cutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return TRUE;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        _cutTutrialContinue_Init(*cutId);
    }

    return _cutTutrialContinue_Main(*cutId);
}

/* 80AA019C-80AA01A4 003FFC 0008+00 1/1 0/0 0/0 .text            _cutTutrialContinue_Init__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialContinue_Init(int const& i_cutId) {
    switch (i_cutId) {
        case 10:
            break;
        
        case 20:
            break;
    }
    
    return TRUE;
}

/* 80AA01A4-80AA0258 004004 00B4+00 1/1 0/0 0/0 .text            _cutTutrialContinue_Main__18daNpc_Pachi_Taro_cFRCi */
BOOL daNpc_Pachi_Taro_c::_cutTutrialContinue_Main(int const& i_cutId) {
    // NONMATCHING
    BOOL rv = FALSE;

    switch (i_cutId) {
        case 10:
            if (_turn_pos(mTagPos, 0x1000)) {
                field_0xfe2 = 1;
                rv = TRUE;
            }
            break;
        
        case 20:
            BOOL chaseAngleFlag = cLib_chaseAngleS(&mCurAngle.y, (s16)home.angle.y, 0x800);
            current.angle.y = mCurAngle.y;
            shape_angle.y = mCurAngle.y;

            if (chaseAngleFlag) {
                fopAc_ac_c* actor_p = mActorMngrs[0].getActorP();
                ((daNpc_Pachi_Maro_c*)actor_p)->setFMotion_LookNone();
                rv = TRUE;
            }
            break;
    }

    return rv;
}

/* 80AA0258-80AA0278 0040B8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Create__FPv */
static int daNpc_Pachi_Taro_Create(void* i_this) {
    return static_cast<daNpc_Pachi_Taro_c*>(i_this)->create();
}

/* 80AA0278-80AA0298 0040D8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Delete__FPv */
static int daNpc_Pachi_Taro_Delete(void* i_this) {
    return static_cast<daNpc_Pachi_Taro_c*>(i_this)->Delete();
}

/* 80AA0298-80AA02B8 0040F8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Execute__FPv */
static int daNpc_Pachi_Taro_Execute(void* i_this) {
    return static_cast<daNpc_Pachi_Taro_c*>(i_this)->Execute();
}

/* 80AA02B8-80AA02D8 004118 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Draw__FPv */
static int daNpc_Pachi_Taro_Draw(void* i_this) {
    return static_cast<daNpc_Pachi_Taro_c*>(i_this)->Draw();
}

/* 80AA02D8-80AA02E0 004138 0008+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_IsDelete__FPv */
static int daNpc_Pachi_Taro_IsDelete(void* i_this) {
    return 1;
}

/* 80AA29C4-80AA29E4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Pachi_Taro_MethodTable */
static actor_method_class daNpc_Pachi_Taro_MethodTable = {
    (process_method_func)daNpc_Pachi_Taro_Create,
    (process_method_func)daNpc_Pachi_Taro_Delete,
    (process_method_func)daNpc_Pachi_Taro_Execute,
    (process_method_func)daNpc_Pachi_Taro_IsDelete,
    (process_method_func)daNpc_Pachi_Taro_Draw,
};

/* 80AA29E4-80AA2A14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PACHI_TARO */
extern actor_process_profile_definition g_profile_NPC_PACHI_TARO = {
  fpcLy_CURRENT_e,               // mLayerID
  7,                             // mListID
  fpcPi_CURRENT_e,               // mListPrio
  PROC_NPC_PACHI_TARO,           // mProcName
  &g_fpcLf_Method.base,         // sub_method
  sizeof(daNpc_Pachi_Taro_c),    // mSize
  0,                             // mSizeOther
  0,                             // mParameters
  &g_fopAc_Method.base,          // sub_method
  369,                           // mPriority
  &daNpc_Pachi_Taro_MethodTable, // sub_method
  0x00044107,                    // mStatus
  fopAc_NPC_e,                   // mActorType
  fopAc_CULLBOX_CUSTOM_e,        // cullType
};
