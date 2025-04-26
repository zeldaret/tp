/**
 * @file d_a_npc_bou.cpp
 * 
*/

#include "d/actor/d_a_npc_bou.h"
#include "dol2asm.h"

//
// Declarations:
//

UNK_REL_DATA;

/* 80972AB0-80972AB8 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {11, 1},
};

/* 80972AB8-80972B10 -00001 0058+00 0/1 0/0 0/0 .data            l_evtList */
daNpcT_evtData_c l_evtList[11] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"WILDGOAT", 2},
    {"WILDGOAT_SUCCESS", 2},
    {"WILDGOAT_FAILURE", 2},
    {"SPEAKTO", 2},
    {"CONFIDENTIAL_CONVERSATION", 6},
    {"FIND_WOLF", 6},
    {"MEETING_AGAIN", 4},
    {"MEETING_AGAIN_PLAYER_ON_HORSE", 4},
    {"MEETING_AGAIN_NEAR", 4},
};

/* 80972B10-80972B2C -00001 001C+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[7] = {
    "",
    "Bou",
    "Bou1",
    "Bou2",
    "Bou4",
    "Bou_p1",
    "Jagar2"
};

/* 80972B2C-80972B30 00009C 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[4] = {1, 2, 4, -1};

/* 80972B30-80972B34 0000A0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {1, 3, -1};

/* 80972B34-80972B38 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[3] = {1, 4, -1};

/* 80972B38-80972B3C 0000A8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn3 */
static s8 l_loadResPtrn3[3] = {1, 5, -1};

/* 80972B3C-80972B44 0000AC 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[5] = {1, 2, 3, 4, -1};

/* 80972B44-80972B5C -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[6] = {
    l_loadResPtrn0, l_loadResPtrn1, l_loadResPtrn2,
    l_loadResPtrn3, l_loadResPtrn0, l_loadResPtrn9,
};

/* 80972B5C-80972C90 0000CC 0134+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[11] = {
    {-1, 0, 0, 17, 2, 1, 1},
    {6, 0, 1, 17, 2, 1, 1},
    {4, 0, 2, 17, 2, 1, 1},
    {4, 2, 3, 16, 2, 3, 0},
    {5, 0, 3, 17, 0, 3, 0},
    {6, 2, 3, 18, 2, 3, 0},
    {7, 0, 4, 25, 0, 4, 1},
    {8, 2, 4, 26, 2, 4, 1},
    {11, 2, 4, 28, 2, 4, 1},
    {9, 0, 4, 17, 2, 1, 1},
    {10, 0, 4, 27, 0, 4, 1},
};

/* 80972C90-80972F14 000200 0284+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[23] = {
    {8, 2, 1, 14, 0, 1, 1, 0},
    {5, 0, 2, 14, 0, 1, 1, 0},
    {7, 2, 3, 14, 0, 1, 1, 0},
    {7, 0, 1, 14, 0, 1, 1, 0},
    {21, 2, 4, 14, 0, 1, 1, 0},
    {12, 2, 3, 14, 0, 1, 1, 0},
    {11, 0, 3, 14, 0, 1, 1, 0},
    {13, 2, 3, 14, 0, 1, 1, 0},
    {8, 0, 3, 14, 0, 1, 1, 0},
    {10, 0, 3, 14, 0, 1, 1, 0},
    {9, 2, 3, 14, 0, 1, 1, 0},
    {20, 2, 4, 14, 0, 1, 1, 0},
    {22, 2, 4, 14, 0, 1, 1, 0},
    {14, 0, 4, 14, 0, 1, 1, 0},
    {16, 0, 4, 14, 0, 1, 1, 0},
    {19, 0, 4, 14, 0, 1, 1, 0},
    {12, 0, 4, 14, 0, 1, 1, 0},
    {13, 0, 4, 14, 0, 1, 1, 0},
    {15, 0, 4, 14, 0, 1, 1, 0},
    {5, 0, 4, 14, 0, 1, 1, 0},
    {6, 2, 4, 14, 0, 1, 1, 0},
    {17, 0, 4, 14, 0, 1, 1, 0},
    {18, 2, 4, 14, 0, 1, 1, 0}
};

/* 80972F14-80972FC4 000484 00B0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[44] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, 0, 1}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {7, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 1}, {8, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}
};

/* 80972FC4-80973124 000534 0160+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[88] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, 0, 1}, {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 1}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {14, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {15, -1, 1}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {16, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {17, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {18, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {19, -1, 1}, {20, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {20, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {21, -1, 1}, {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {13, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80973124-80973148 -00001 0024+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Bou_c */
char* daNpc_Bou_c::mCutNameList[9] = {
    "",
    "WILDGOAT",
    "WILDGOAT_SUCCESS",
    "WILDGOAT_FAILURE",
    "SPEAKTO",
    "CONVERSATION_WITH_BOU",
    "CONFIDENTIAL_CONVERSATION",
    "FIND_WOLF",
    "MEETING_AGAIN"
};

/* 8096CF8C-8096D0D8 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__11daNpc_Bou_cFv */
daNpc_Bou_c::~daNpc_Bou_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972860-809728FC 000000 009C+00 13/13 0/0 1/1 .rodata          m__17daNpc_Bou_Param_c */
daNpc_Bou_Param_c::Data const daNpc_Bou_Param_c::m= {
    210.0f, -3.0f, 1.0f, 600.0f, 255.0f, 200.0f, 35.0f, 40.0f,
    0.0f, 0.0f, 10.0f, -10.0f, 30.0f, -10.0f, 45.0f, -45.0f,
    0.6f, 12.0f, 3, 6, 5, 6, 110.0f, 500.0f, 300.0f, -300.0f,
    60, 8, 0.0f, 0.0f, 4.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 16.0f, 1000.0f, 500.0f, -500.0f,
};
COMPILER_STRIP_GATE(0x80972860, &daNpc_Bou_Param_c::m);

/* 809728FC-80972914 00009C 0018+00 0/1 0/0 0/0 .rodata          heapSize$4096 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[24] = {
    0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50,
    0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809728FC, &heapSize);
#pragma pop

/* 80972914-80972918 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4162 = -200.0f;
COMPILER_STRIP_GATE(0x80972914, &lit_4162);
#pragma pop

/* 80972918-8097291C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = -100.0f;
COMPILER_STRIP_GATE(0x80972918, &lit_4163);
#pragma pop

/* 8097291C-80972920 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = 200.0f;
COMPILER_STRIP_GATE(0x8097291C, &lit_4164);
#pragma pop

/* 80972920-80972924 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 300.0f;
COMPILER_STRIP_GATE(0x80972920, &lit_4165);
#pragma pop

/* 80972924-80972928 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80972924, &lit_4166);
#pragma pop

/* 8096D0D8-8096D38C 000238 02B4+00 1/1 0/0 0/0 .text            create__11daNpc_Bou_cFv */
void daNpc_Bou_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972928-8097292C 0000C8 0004+00 7/18 0/0 0/0 .rodata          @4328 */
SECTION_RODATA static u8 const lit_4328[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80972928, &lit_4328);

/* 8097292C-80972930 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = 65536.0f;
COMPILER_STRIP_GATE(0x8097292C, &lit_4329);
#pragma pop

/* 80972930-80972934 0000D0 0004+00 0/3 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80972930, &lit_4330);
#pragma pop

/* 80972934-80972938 0000D4 0004+00 2/4 0/0 0/0 .rodata          @4472 */
SECTION_RODATA static f32 const lit_4472 = 1.0f;
COMPILER_STRIP_GATE(0x80972934, &lit_4472);

/* 8096D38C-8096D5FC 0004EC 0270+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Bou_cFv */
void daNpc_Bou_c::CreateHeap() {
    // NONMATCHING
}

/* 8096D5FC-8096D638 00075C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8096D638-8096D650 000798 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8096D650-8096D68C 0007B0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8096D68C-8096D6A4 0007EC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8096D6A4-8096D6EC 000804 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8096D6EC-8096D710 00084C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8096D710-8096D74C 000870 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8096D74C-8096D764 0008AC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8096D764-8096D7A0 0008C4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8096D7A0-8096D7B8 000900 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8096D7B8-8096D7EC 000918 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Bou_cFv */
void daNpc_Bou_c::Delete() {
    // NONMATCHING
}

/* 8096D7EC-8096D80C 00094C 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Bou_cFv */
void daNpc_Bou_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972938-8097293C 0000D8 0004+00 1/1 0/0 0/0 .rodata          @4521 */
SECTION_RODATA static f32 const lit_4521 = 100.0f;
COMPILER_STRIP_GATE(0x80972938, &lit_4521);

/* 8096D80C-8096D8A0 00096C 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Bou_cFv */
void daNpc_Bou_c::Draw() {
    // NONMATCHING
}

/* 8096D8A0-8096D8C0 000A00 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Bou_cFP10fopAc_ac_c              */
void daNpc_Bou_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8096D8C0-8096D918 000A20 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Bou_cFP8J3DJointi
 */
void daNpc_Bou_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8096D918-8096D9B4 000A78 009C+00 1/1 0/0 0/0 .text            srchCow__11daNpc_Bou_cFPvPv */
void daNpc_Bou_c::srchCow(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097293C-80972940 0000DC 0004+00 1/1 0/0 0/0 .rodata          @4568 */
SECTION_RODATA static f32 const lit_4568 = 1000000000.0f;
COMPILER_STRIP_GATE(0x8097293C, &lit_4568);

/* 8096D9B4-8096DA78 000B14 00C4+00 1/1 0/0 0/0 .text            getCowP__11daNpc_Bou_cFv */
void daNpc_Bou_c::getCowP() {
    // NONMATCHING
}

/* 8096DA78-8096DADC 000BD8 0064+00 1/1 0/0 2/2 .text            getType__11daNpc_Bou_cFv */
u8 daNpc_Bou_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        case 1:
            return TYPE_1;
        case 2:
            return TYPE_2;
        case 3:
            return TYPE_3;
        case 4:
            return TYPE_4;
        default:
            return TYPE_5;
    }
}

/* 8096DADC-8096DBBC 000C3C 00E0+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Bou_cFv */
void daNpc_Bou_c::isDelete() {
    // NONMATCHING
}

/* 8096DBBC-8096DD44 000D1C 0188+00 1/1 0/0 0/0 .text            reset__11daNpc_Bou_cFv */
void daNpc_Bou_c::reset() {
    // NONMATCHING
}

/* 8096DD44-8096DDC8 000EA4 0084+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Bou_cFi */
void daNpc_Bou_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 8096DDC8-8096DF9C 000F28 01D4+00 1/0 0/0 0/0 .text            setParam__11daNpc_Bou_cFv */
void daNpc_Bou_c::setParam() {
    // NONMATCHING
}

/* 8096DF9C-8096E0EC 0010FC 0150+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Bou_cFv */
BOOL daNpc_Bou_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972940-80972948 0000E0 0004+04 5/12 0/0 0/0 .rodata          @4758 */
SECTION_RODATA static f32 const lit_4758[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80972940, &lit_4758);

/* 8096E0EC-8096E18C 00124C 00A0+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Bou_cFv
 */
void daNpc_Bou_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 8096E18C-8096E27C 0012EC 00F0+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Bou_cFv */
void daNpc_Bou_c::srchActors() {
    // NONMATCHING
}

/* 8096E27C-8096E31C 0013DC 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Bou_cFv */
BOOL daNpc_Bou_c::evtTalk() {
    // NONMATCHING
}

/* 8096E31C-8096E324 00147C 0008+00 1/0 0/0 0/0 .text            evtEndProc__11daNpc_Bou_cFv */
BOOL daNpc_Bou_c::evtEndProc() {
    return true;
}

/* 8096E324-8096E3EC 001484 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Bou_cFv */
BOOL daNpc_Bou_c::evtCutProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972948-80972950 0000E8 0008+00 0/2 0/0 0/0 .rodata          @4940 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4940[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972948, &lit_4940);
#pragma pop

/* 80972950-80972958 0000F0 0008+00 0/2 0/0 0/0 .rodata          @4941 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4941[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972950, &lit_4941);
#pragma pop

/* 80972958-80972960 0000F8 0008+00 0/2 0/0 0/0 .rodata          @4942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4942[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972958, &lit_4942);
#pragma pop

/* 8096E3EC-8096E7E0 00154C 03F4+00 1/0 0/0 0/0 .text            action__11daNpc_Bou_cFv */
void daNpc_Bou_c::action() {
    // NONMATCHING
}

/* 8096E7E0-8096E8A4 001940 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Bou_cFv */
void daNpc_Bou_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972960-80972964 000100 0004+00 0/1 0/0 0/0 .rodata          @5018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5018 = -30.0f;
COMPILER_STRIP_GATE(0x80972960, &lit_5018);
#pragma pop

/* 80972964-80972968 000104 0004+00 0/1 0/0 0/0 .rodata          @5019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5019 = 10.0f;
COMPILER_STRIP_GATE(0x80972964, &lit_5019);
#pragma pop

/* 80972968-80972970 000108 0004+04 0/1 0/0 0/0 .rodata          @5020 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5020[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80972968, &lit_5020);
#pragma pop

/* 80972970-80972978 000110 0008+00 1/3 0/0 0/0 .rodata          @5022 */
SECTION_RODATA static u8 const lit_5022[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972970, &lit_5022);

/* 8096E8A4-8096EB14 001A04 0270+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Bou_cFv */
void daNpc_Bou_c::setAttnPos() {
    // NONMATCHING
}

/* 8096EB14-8096EC6C 001C74 0158+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Bou_cFv */
void daNpc_Bou_c::setCollision() {
    // NONMATCHING
}

/* 8096EC6C-8096EC74 001DCC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Bou_cFv */
int daNpc_Bou_c::drawDbgInfo() {
    return false;
}

/* 8096EC74-8096ECC0 001DD4 004C+00 1/0 0/0 0/0 .text            changeAnm__11daNpc_Bou_cFPiPi */
void daNpc_Bou_c::changeAnm(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 8096ECC0-8096ED3C 001E20 007C+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Bou_cFv */
void daNpc_Bou_c::selectAction() {
    // NONMATCHING
}

/* 8096ED3C-8096ED68 001E9C 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i            */
void daNpc_Bou_c::chkAction(int (daNpc_Bou_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8096ED68-8096EE10 001EC8 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i            */
void daNpc_Bou_c::setAction(int (daNpc_Bou_c::*param_0)(void*)) {
    // NONMATCHING
}

extern "C" void cutWildGoat__11daNpc_Bou_cFi();
/* 80973148-80973154 -00001 000C+00 0/1 0/0 0/0 .data            @3934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutWildGoat__11daNpc_Bou_cFi,
};
#pragma pop

extern "C" void cutWildGoatSuccess__11daNpc_Bou_cFi();
/* 80973154-80973160 -00001 000C+00 0/1 0/0 0/0 .data            @3935 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3935[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutWildGoatSuccess__11daNpc_Bou_cFi,
};
#pragma pop

extern "C" void cutWildGoatFailure__11daNpc_Bou_cFi();
/* 80973160-8097316C -00001 000C+00 0/1 0/0 0/0 .data            @3936 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3936[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutWildGoatFailure__11daNpc_Bou_cFi,
};
#pragma pop

extern "C" void cutSpeakTo__11daNpc_Bou_cFi();
/* 8097316C-80973178 -00001 000C+00 0/1 0/0 0/0 .data            @3937 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3937[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSpeakTo__11daNpc_Bou_cFi,
};
#pragma pop

extern "C" void cutConversationWithBou__11daNpc_Bou_cFi();
/* 80973178-80973184 -00001 000C+00 0/1 0/0 0/0 .data            @3938 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3938[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationWithBou__11daNpc_Bou_cFi,
};
#pragma pop

extern "C" void cutConfidentialConversation__11daNpc_Bou_cFi();
/* 80973184-80973190 -00001 000C+00 0/1 0/0 0/0 .data            @3939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConfidentialConversation__11daNpc_Bou_cFi,
};
#pragma pop

extern "C" void cutFindWolf__11daNpc_Bou_cFi();
/* 80973190-8097319C -00001 000C+00 0/1 0/0 0/0 .data            @3940 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3940[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindWolf__11daNpc_Bou_cFi,
};
#pragma pop

extern "C" void cutMeetingAgain__11daNpc_Bou_cFi();
/* 8097319C-809731A8 -00001 000C+00 0/1 0/0 0/0 .data            @3941 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutMeetingAgain__11daNpc_Bou_cFi,
};
#pragma pop

/* 809731A8-80973214 000718 006C+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Bou_c */
SECTION_DATA u8 daNpc_Bou_c::mCutList[108] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

extern "C" void talk__11daNpc_Bou_cFPv();
/* 80973214-80973220 -00001 000C+00 1/1 0/0 0/0 .data            @4712 */
SECTION_DATA static void* lit_4712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Bou_cFPv,
};

/* 80973220-8097322C -00001 000C+00 1/1 0/0 0/0 .data            @4781 */
SECTION_DATA static void* lit_4781[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Bou_cFPv,
};

/* 8097322C-80973238 -00001 000C+00 1/1 0/0 0/0 .data            @4786 */
SECTION_DATA static void* lit_4786[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Bou_cFPv,
};

extern "C" void talkwithJagar__11daNpc_Bou_cFPv();
/* 80973238-80973244 -00001 000C+00 1/1 0/0 0/0 .data            @5136 */
SECTION_DATA static void* lit_5136[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkwithJagar__11daNpc_Bou_cFPv,
};

extern "C" void wait__11daNpc_Bou_cFPv();
/* 80973244-80973250 -00001 000C+00 1/1 0/0 0/0 .data            @5138 */
SECTION_DATA static void* lit_5138[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Bou_cFPv,
};

/* ############################################################################################## */
/* 80972978-80972984 000118 000C+00 1/1 0/0 0/0 .rodata          @5178 */
SECTION_RODATA static u8 const lit_5178[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80972978, &lit_5178);

/* 8097299C-8097299C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80972A76 = "prm";
SECTION_DEAD static char const* const stringBase_80972A7A = "msgNo";
SECTION_DEAD static char const* const stringBase_80972A80 = "msgNo2";
#pragma pop

/* 80973250-80973274 -00001 0024+00 1/1 0/0 0/0 .data            @5286 */
SECTION_DATA static void* lit_5286[9] = {
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0xE0),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x110),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x144),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x15C),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1D8),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
};

/* 8096EE10-8096F2E4 001F70 04D4+00 2/0 0/0 0/0 .text            cutWildGoat__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutWildGoat(int param_0) {
    // NONMATCHING
}

/* 8096F2E4-8096F510 002444 022C+00 1/0 0/0 0/0 .text            cutWildGoatSuccess__11daNpc_Bou_cFi
 */
void daNpc_Bou_c::cutWildGoatSuccess(int param_0) {
    // NONMATCHING
}

/* 8096F510-8096F758 002670 0248+00 1/0 0/0 0/0 .text            cutWildGoatFailure__11daNpc_Bou_cFi
 */
void daNpc_Bou_c::cutWildGoatFailure(int param_0) {
    // NONMATCHING
}

/* 8096F758-8096F9A4 0028B8 024C+00 1/0 0/0 0/0 .text            cutSpeakTo__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutSpeakTo(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972984-80972988 000124 0004+00 0/4 0/0 0/0 .rodata          @5515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5515 = -40.0f;
COMPILER_STRIP_GATE(0x80972984, &lit_5515);
#pragma pop

/* 8096F9A4-8096FB78 002B04 01D4+00 1/0 0/0 0/0 .text cutConversationWithBou__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutConversationWithBou(int param_0) {
    // NONMATCHING
}

/* 8096FB78-8096FE40 002CD8 02C8+00 1/0 0/0 0/0 .text cutConfidentialConversation__11daNpc_Bou_cFi
 */
void daNpc_Bou_c::cutConfidentialConversation(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972988-8097298C 000128 0004+00 0/2 0/0 0/0 .rodata          @5708 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5708 = 0.5f;
COMPILER_STRIP_GATE(0x80972988, &lit_5708);
#pragma pop

/* 8097299C-8097299C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80972A87 = "timer";
#pragma pop

/* 8096FE40-80970278 002FA0 0438+00 1/0 0/0 0/0 .text            cutFindWolf__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutFindWolf(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097298C-80972990 00012C 0004+00 0/1 0/0 0/0 .rodata          @5897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5897 = 250.0f;
COMPILER_STRIP_GATE(0x8097298C, &lit_5897);
#pragma pop

/* 80972990-80972994 000130 0004+00 0/1 0/0 0/0 .rodata          @5898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5898 = -250.0f;
COMPILER_STRIP_GATE(0x80972990, &lit_5898);
#pragma pop

/* 80972994-80972998 000134 0004+00 0/1 0/0 0/0 .rodata          @5899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5899 = 150.0f;
COMPILER_STRIP_GATE(0x80972994, &lit_5899);
#pragma pop

/* 80970278-809709EC 0033D8 0774+00 1/0 0/0 0/0 .text            cutMeetingAgain__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutMeetingAgain(int param_0) {
    // NONMATCHING
}

/* 809709EC-80970DFC 003B4C 0410+00 1/0 0/0 0/0 .text            wait__11daNpc_Bou_cFPv */
void daNpc_Bou_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80970DFC-80970F9C 003F5C 01A0+00 1/0 0/0 0/0 .text            talkwithJagar__11daNpc_Bou_cFPv */
void daNpc_Bou_c::talkwithJagar(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972998-8097299C 000138 0004+00 0/1 0/0 0/0 .rodata          @6218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6218 = -10.0f;
COMPILER_STRIP_GATE(0x80972998, &lit_6218);
#pragma pop

/* 80970F9C-8097146C 0040FC 04D0+00 3/0 0/0 0/0 .text            talk__11daNpc_Bou_cFPv */
void daNpc_Bou_c::talk(void* param_0) {
    // NONMATCHING
}

/* 8097146C-8097148C 0045CC 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Create__FPv */
static void daNpc_Bou_Create(void* param_0) {
    // NONMATCHING
}

/* 8097148C-809714AC 0045EC 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Delete__FPv */
static void daNpc_Bou_Delete(void* param_0) {
    // NONMATCHING
}

/* 809714AC-809714CC 00460C 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Execute__FPv */
static void daNpc_Bou_Execute(void* param_0) {
    // NONMATCHING
}

/* 809714CC-809714EC 00462C 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Draw__FPv */
static void daNpc_Bou_Draw(void* param_0) {
    // NONMATCHING
}

/* 809714EC-809714F4 00464C 0008+00 1/0 0/0 0/0 .text            daNpc_Bou_IsDelete__FPv */
static bool daNpc_Bou_IsDelete(void* param_0) {
    return true;
}

/* 80973274-80973294 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Bou_MethodTable */
static actor_method_class daNpc_Bou_MethodTable = {
    (process_method_func)daNpc_Bou_Create,
    (process_method_func)daNpc_Bou_Delete,
    (process_method_func)daNpc_Bou_Execute,
    (process_method_func)daNpc_Bou_IsDelete,
    (process_method_func)daNpc_Bou_Draw,
};

/* 80973294-809732C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BOU */
extern actor_process_profile_definition g_profile_NPC_BOU = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_BOU,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Bou_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  324,                    // mPriority
  &daNpc_Bou_MethodTable, // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80973454-80973458 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Bou_Param_c l_HIO;

/* 809727B4-809727BC 005914 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Bou_cFv */
s32 daNpc_Bou_c::getEyeballMaterialNo() {
    return true;
}

/* 809727BC-809727C4 00591C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Bou_cFv */
s32 daNpc_Bou_c::getHeadJointNo() {
    return 4;
}

/* 809727C4-809727CC 005924 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Bou_cFv */
s32 daNpc_Bou_c::getNeckJointNo() {
    return 3;
}

/* 809727CC-809727D4 00592C 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Bou_cFv
 */
s32 daNpc_Bou_c::getBackboneJointNo() {
    return true;
}

/* 809727D4-809727E4 005934 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Bou_cFi
 */
int daNpc_Bou_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809727E4-809727F4 005944 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Bou_cFi
 */
int daNpc_Bou_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}
