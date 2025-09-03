/**
* @file d_a_npc_uri.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_uri.h"
#include "Z2AudioLib/Z2Instances.h"
#include "m_Do/m_Do_graphic.h"

/* 80B2D068-80B2D078 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][2] = {{12, 1}, {33, 2}};

/* 80B2D078-80B2D0D0 -00001 0058+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[11] = {
    {"", 0},
    {"DEFAULT_GETITEM", 2},
    {"NO_RESPONSE", 0},
    {"FIRST_CONVERSATION", 2},
    {"CONVERSATION", 2},
    {"START_CARRY_TUTORIAL", 2},
    {"END_CARRY_TUTORIAL", 2},
    {"FAILURE_CARRY_TUTORIAL", 2},
    {"CONVERSATION_WITH_MOI", 3},
    {"FIND_WOLF", 3},
    {"MEETING_AGAIN", 4},
};

/* 80B2D0D0-80B2D0E8 -00001 0018+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[6] = {
    "", "Uri", "Uri1", "Uri2", "Uri3", "Uri_P1",
};

/* 80B2D0E8-80B2D0EC 0000A0 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {1, -1};

/* 80B2D0EC-80B2D0F0 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    1,
    2,
    -1,
};

/* 80B2D0F0-80B2D0F4 0000A8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[3] = {
    1,
    3,
    -1,
};

/* 80B2D0F4-80B2D0FC 0000AC 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn3 */
static s8 l_loadResPtrn3[5] = {
    1, 2, 3, 4, -1,
};

/* 80B2D0FC-80B2D100 0000B4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn4 */
static s8 l_loadResPtrn4[3] = {
    1,
    5,
    -1,
};

/* 80B2D100-80B2D108 0000B8 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[5] = {
    1, 2, 3, 4, -1,
};

/* 80B2D108-80B2D124 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[7] = {l_loadResPtrn0, l_loadResPtrn1, l_loadResPtrn0, l_loadResPtrn2,
                                   l_loadResPtrn3, l_loadResPtrn4, l_loadResPtrn9};

/* 80B2D124-80B2D338 0000DC 0214+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[19] = {
    {-1, 0, 0, 18, 2, 1, TRUE},  {-1, 0, 0, -1, 0, 0, FALSE}, {6, 0, 1, 18, 2, 1, TRUE},
    {10, 0, 2, 43, 0, 2, FALSE}, {11, 0, 2, 44, 0, 2, FALSE}, {9, 0, 2, 42, 0, 2, FALSE},
    {12, 0, 2, 45, 0, 2, FALSE}, {6, 0, 3, 21, 0, 3, FALSE},  {8, 0, 3, 23, 0, 3, FALSE},
    {15, 2, 2, 18, 2, 1, TRUE},  {7, 2, 2, 18, 2, 1, TRUE},   {14, 2, 2, 47, 2, 2, FALSE},
    {13, 2, 2, 46, 2, 2, FALSE}, {8, 2, 2, 41, 2, 2, FALSE},  {10, 2, 3, 18, 2, 1, TRUE},
    {7, 0, 3, 22, 0, 3, FALSE},  {11, 2, 3, 18, 2, 1, TRUE},  {7, 0, 1, 20, 0, 1, FALSE},
    {8, 2, 1, 21, 2, 1, FALSE},
};

/* 80B2D338-80B2D6F0 0002F0 03B8+00 1/2 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[34] = {
    {9, 2, 1, 15, 0, 1, 1, 0},  {-1, 0, 0, -1, 0, 0, 0, 0}, {9, 2, 3, 18, 2, 3, 0, 0},
    {-1, 0, 0, -1, 0, 0, 0, 0}, {-1, 0, 0, -1, 0, 0, 0, 0}, {-1, 0, 0, -1, 0, 0, 0, 0},
    {-1, 0, 0, -1, 0, 0, 0, 0}, {-1, 0, 0, -1, 0, 0, 0, 0}, {30, 0, 2, 15, 0, 1, 1, 0},
    {27, 2, 2, 15, 0, 1, 1, 0}, {28, 0, 2, 15, 0, 1, 1, 0}, {29, 2, 2, 38, 2, 2, 0, 0},
    {18, 2, 2, 36, 2, 2, 0, 0}, {26, 2, 2, 37, 2, 2, 0, 0}, {22, 2, 2, 15, 0, 1, 1, 0},
    {23, 2, 2, 15, 0, 1, 1, 0}, {24, 2, 2, 15, 0, 1, 1, 0}, {25, 2, 2, 15, 0, 1, 1, 0},
    {20, 0, 2, 15, 0, 1, 1, 0}, {21, 0, 2, 15, 0, 1, 1, 0}, {16, 0, 2, 15, 0, 1, 1, 0},
    {17, 2, 2, 15, 0, 1, 1, 0}, {12, 0, 3, 15, 0, 1, 1, 0}, {13, 2, 3, 15, 0, 1, 1, 0},
    {14, 0, 3, 15, 0, 1, 1, 0}, {15, 0, 3, 15, 0, 1, 1, 0}, {6, 2, 4, 15, 0, 1, 1, 0},
    {7, 0, 4, 15, 0, 1, 1, 0},  {8, 0, 4, 15, 0, 1, 1, 0},  {10, 2, 4, 15, 0, 1, 1, 0},
    {9, 0, 4, 15, 0, 1, 1, 0},  {4, 2, 4, 15, 0, 1, 1, 0},  {5, 0, 4, 15, 0, 1, 1, 0},
    {19, 0, 2, 15, 0, 1, 1, 0},
};

/* 80B2D6F0-80B2D810 0006A8 0120+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[72] = {
    {2, -1, 1},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {7, -1, 1}, {14, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {3, -1, 1},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0}, {4, -1, 1},  {-1, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {5, -1, 1},  {11, 0, 0},  {-1, 0, 0}, {-1, 0, 0},  {12, -1, 0},
    {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0},  {-1, 0, 0},
    {6, -1, 1},  {9, 0, 0},   {-1, 0, 0},  {-1, 0, 0},  {8, -1, 1}, {14, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {17, -1, 0}, {18, 0, 0},  {-1, 0, 0},  {-1, 0, 0}, {14, -1, 0}, {-1, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {15, -1, 1}, {16, 0, 0},  {-1, 0, 0}, {-1, 0, 0},  {16, -1, 0},
    {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0},  {-1, 0, 0},
    {11, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {9, -1, 0}, {-1, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {18, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0}, {0, -1, 0},  {-1, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},
};

/* 80B2D810-80B2D9F0 0007C8 01E0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[120] = {
    {0, -1, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {28, -1, 1}, {29, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {30, -1, 1}, {26, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {31, -1, 0}, {-1, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {32, -1, 1}, {31, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {9, -1, 0},
    {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {29, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},
    {10, -1, 1}, {9, 0, 0},   {-1, 0, 0},  {-1, 0, 0},  {14, -1, 0}, {-1, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {18, -1, 1}, {14, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {19, -1, 1}, {14, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {15, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {11, -1, 0},
    {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {13, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},
    {25, -1, 1}, {24, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {2, -1, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {24, -1, 1}, {2, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {26, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {27, -1, 1},
    {26, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {20, -1, 1}, {21, 0, 0},  {-1, 0, 0},  {-1, 0, 0},
    {21, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {23, -1, 0}, {-1, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},  {22, -1, 1}, {23, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {33, 4, 1},  {-1, 0, 0},
    {-1, 0, 0},  {-1, 0, 0},  {12, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {8, -1, 1},
    {9, 0, 0},   {-1, 0, 0},  {-1, 0, 0},  {3, -1, 0},  {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},
    {16, -1, 0}, {-1, 0, 0},  {-1, 0, 0},  {-1, 0, 0},  {17, -1, 0}, {-1, 0, 0},  {-1, 0, 0},
    {-1, 0, 0},
};

/* 80B2D9F0-80B2DA0C -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Uri_c */
const char* daNpc_Uri_c::mCutNameList[7] = {
    "",
    "CONVERSATION",
    "START_CARRY_TUTORIAL",
    "END_CARRY_TUTORIAL",
    "CONVERSATION_WITH_MOI",
    "FIND_WOLF",
    "MEETING_AGAIN",
};

/* 80B2DA54-80B2DAA8 000A0C 0054+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Uri_c */
daNpc_Uri_c::cutFunc daNpc_Uri_c::mCutList[7] = {
    NULL,
    &daNpc_Uri_c::cutConversation,
    &daNpc_Uri_c::cutStartCarryTutorial,
    &daNpc_Uri_c::cutEndCarryTutorial,
    &daNpc_Uri_c::cutConversationWithMoi,
    &daNpc_Uri_c::cutFindWolf,
    &daNpc_Uri_c::cutMeetingAgain,
};

/* 80B267AC-80B268F8 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__11daNpc_Uri_cFv */
daNpc_Uri_c::~daNpc_Uri_c() {
    if (mpMorf[0] != 0) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* ############################################################################################## */
/* 80B2CE14-80B2CEC0 000000 00AC+00 14/14 0/0 0/0 .rodata          m__17daNpc_Uri_Param_c */
daNpc_Uri_HIOParam const daNpc_Uri_Param_c::m = {
    200.0f,   // field_0x00
    -3.0f,    // field_0x04
    1.0f,     // field_0x08
    500.0f,   // field_0x0c
    255.0f,   // field_0x10
    180.0f,   // field_0x14
    35.0f,    // field_0x18
    30.0f,    // field_0x1c
    0.0f,     // field_0x20
    0.0f,     // field_0x24
    10.0f,    // field_0x28
    -10.0f,   // field_0x2c
    30.0f,    // field_0x30
    -10.0f,   // field_0x34
    45.0f,    // field_0x38
    -45.0f,   // field_0x3c
    0.6f,     // field_0x40
    20.0f,    // field_0x44
    3,        // field_0x48
    6,        // field_0x4a
    5,        // field_0x4c
    6,        // field_0x4e
    110.0f,   // field_0x50
    400.0f,   // field_0x54
    300.0f,   // field_0x58
    -300.0f,  // field_0x5c
    60,       // field_0x60
    8,        // field_0x62
    0x00,    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    4.0f,  // field_0x6c
    0x00,    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00,    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    120,      // field_0x8c
    120,      // field_0x8e
    60,       // field_0x90
    180,      // field_0x92
    10,       // field_0x94
    0,        // field_0x96
    350.0f,   // field_0x98
    400.0f,   // field_0x9c
    3000.0f,  // field_0xa0
    200.0f,   // field_0xa4
    600.0f,   // field_0xa8
};

/* 80B268F8-80B26BE4 000238 02EC+00 1/1 0/0 0/0 .text            create__11daNpc_Uri_cFv */
int daNpc_Uri_c::create() {
    static const int heapSize[] = {0, 0x3F20, 0, 0, 0x3740, 0x3740, 0};

    fopAcM_SetupActor2(this, daNpc_Uri_c, l_faceMotionAnmData,
                       (const daNpcT_motionAnmData_c*)l_motionAnmData,
                       (const daNpcT_MotionSeqMngr_c::sequenceStepData_c*)l_faceMotionSequenceData,
                       4, (const daNpcT_MotionSeqMngr_c::sequenceStepData_c*)l_motionSequenceData,
                       4, (const daNpcT_evtData_c*)l_evtList, (char**)l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = 0;

    int phase = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 0.0f, 0.0f);
        reset();
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Uri_Param_c::m.field_0x10, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        if (mType == TYPE_4) {
            mAcch.SetGrndNone();
            mAcch.SetWallNone();
        }
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }
        mCreating = 1;
        Execute();
        mCreating = 0;
    }

    return phase;
}

/* 80B26BE4-80B26ED0 000524 02EC+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Uri_cFv */
int daNpc_Uri_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(
        dComIfG_getObjectRes(l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));
    if (modelData == NULL) {
        return 1;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000,
                                     0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();

    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model->setUserArea((u32)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (mType == TYPE_1) {
        J3DModelData* modelData2;
        if (l_bmdData[1][0] >= 0) {
            modelData2 = static_cast<J3DModelData*>(
                dComIfG_getObjectRes(l_resNameList[l_bmdData[1][1]], l_bmdData[1][0]));
        } else {
            modelData2 = NULL;
        }
        if (modelData2 != NULL) {
            mpModel[0] = mDoExt_J3DModel__create(modelData2, 0x80000, 0x11000084);
        }
        if (mpModel[0] == NULL) {
            return 0;
        }
    }

    if (setFaceMotionAnm(2, false) && setMotionAnm(0, 0.0f, 0)) {
        return 1;
    }

    return 0;
}

/* 80B2708C-80B270C0 0009CC 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Uri_cFv */
int daNpc_Uri_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Uri_c();
    return 1;
}

/* 80B270C0-80B270E0 000A00 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Uri_cFv */
int daNpc_Uri_c::Execute() {
    return daNpcT_c::execute();
}

/* 80B270E0-80B27174 000A20 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Uri_cFv */
int daNpc_Uri_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    return daNpcT_c::draw(0, 0, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 80B27174-80B27194 000AB4 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Uri_cFP10fopAc_ac_c              */
int daNpc_Uri_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Uri_c*>(i_this)->CreateHeap();
}

/* 80B27194-80B271EC 000AD4 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Uri_cFP8J3DJointi
 */
int daNpc_Uri_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();

        daNpc_Uri_c* i_this = reinterpret_cast<daNpc_Uri_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_0, model);
        }
    }

    return 1;
}

/* 80B271EC-80B27260 000B2C 0074+00 1/1 0/0 0/0 .text            getType__11daNpc_Uri_cFv */
u8 daNpc_Uri_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 0:
        return TYPE_0;
        break;
    case 1:
        return TYPE_1;
        break;
    case 2:
        return TYPE_2;
        break;
    case 3:
        return TYPE_3;
        break;
    case 4:
        return TYPE_4;
        break;
    case 5:
        return TYPE_5;
    }
    return TYPE_6;
}

/* 80B27260-80B272F0 000BA0 0090+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Uri_cFv */
int daNpc_Uri_c::isDelete() {
    switch (mType) {
    case TYPE_0:
        return FALSE;
    case TYPE_1:
        return FALSE;
    case TYPE_2:
        return FALSE;
    case TYPE_3:
        return (chkPlayerGetWoodShield() == 0);
    case TYPE_4:
        return FALSE;
    case TYPE_5:
        return FALSE;
    default:
        return FALSE;
    }
}

/* 80B272F0-80B27750 000C30 0460+00 1/1 0/0 0/0 .text            reset__11daNpc_Uri_cFv */
void daNpc_Uri_c::reset() {
    csXyz cStack_a0;
    cXyz acStack_38;
    cXyz cStack_44;

    int iVar1 = (u8*)&field_0x1014 - (u8*)&field_0xfc0[0];
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }
    initialize();
    for (int i = 0; i < 2; i++) {
        mActorMngr[i].initialize();
    }
    if (getPathID() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
    }
    memset(&field_0xfc0[0], 0, iVar1);
    cStack_a0.setall(0);
    cStack_a0.y = home.angle.y;

    switch (mType) {
    case TYPE_1:
        mPath.setNextPathInfo(fopAcM_GetRoomNo(this), 0);
        int num = mPath.getNumPnts();
        acStack_38 = mPath.getPntPos(num - 2);
        cStack_44 = mPath.getPntPos(num - 1);
        field_0xfd8 = cStack_44;
        field_0xfe4.setall(0);
        field_0xfe4.y = cLib_targetAngleY(&acStack_38, &field_0xfd8);
            /* dSv_event_flag_c::F_0032 - Ordon Ranch - 3rd day - First convo with fado (before forced goat chase) */
        if (daNpcT_chkEvtBit(0x25)) {
            setPos(cStack_44);
            cStack_a0.y = cLib_targetAngleY(&acStack_38, &cStack_44);
            mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
            field_0x100e = 1;
        } else {
            acStack_38 = mPath.getPntPos(0);
            cStack_44 = mPath.getPntPos(1);
            setPos(acStack_38);
            cStack_a0.y = cLib_targetAngleY(&acStack_38, &cStack_44);
            mPath.setNextIdx(mPath.getNumPnts());
        }
            /* dSv_event_flag_c::F_0027 - Ordon Village - Uli tutorial ends (same whether pass or fail) */
        if (daNpcT_chkEvtBit(0x20)
               /* dSv_event_flag_c::F_0025 - Ordon Village - Pass Uli's pick-up tutorial */
            || daNpcT_chkEvtBit(0x1E)
               /* dSv_event_flag_c::F_0048 - Ordon Village - Uli's pick-up tutorial <fail> */
            || daNpcT_chkEvtBit(0x92) )
        {
            setPos(home.pos);
                /* dSv_event_flag_c::F_0027 - Ordon Village - Uli tutorial ends (same whether pass or fail) */
            if (daNpcT_chkEvtBit(0x20)) {
                field_0x100d = 1;

            } else {
                    /* dSv_event_flag_c::F_0025 - Ordon Village - Pass Uli's pick-up tutorial */
                if (daNpcT_chkEvtBit(0x1E)
                       /* dSv_event_flag_c::F_0048 - Ordon Village - Uli's pick-up tutorial <fail> */
                    || daNpcT_chkEvtBit(0x92)) {
                    field_0x100f = 1;
                }
            }
        }
        break;
    case TYPE_4:
        field_0x100d = 1;
        break;
    case TYPE_0:
    case TYPE_2:
    case TYPE_3:
    case TYPE_5:
        break;
    }

    /* T_0007 - Ordon Village - During Uli's pick-up tutorial */
    daNpcT_offTmpBit(7);
    /* dSv_event_tmp_flag_c::GUARD_URI - Ordon Village - Rusl is guarding Uli, Ordon village night */
    dComIfGs_offTmpBit(0x1308);
    setAngle(cStack_a0);
}

/* 80B27750-80B27820 001090 00D0+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Uri_cFi */
void daNpc_Uri_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }

    if (0.0f < field_0x1004) {
        if (param_1 == 18) {
            mpMorf[0]->onMorfNone();
        } else if (param_1 == 28) {
            mpMorf[0]->offMorfNone();
        }
    }
}

/* 80B27820-80B27994 001160 0174+00 1/0 0/0 0/0 .text            setParam__11daNpc_Uri_cFv */
void daNpc_Uri_c::setParam() {
    selectAction();
    srchActors();

    s16 sVar7 = daNpc_Uri_Param_c::m.field_0x48;
    s16 sVar6 = daNpc_Uri_Param_c::m.field_0x4a;
    s16 sVar5 = daNpc_Uri_Param_c::m.field_0x4c;
    s16 sVar4 = daNpc_Uri_Param_c::m.field_0x4e;
    if (mType == TYPE_1) {
        sVar6 = 4;
        sVar4 = 4;
    }

    daPy_py_c* player = daPy_getPlayerActorClass();
    if (player->checkHorseRide()) {
        sVar7 = 7;
        sVar5 = 9;
    }

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(sVar5, sVar4);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(sVar7, sVar6);
    attention_info.flags = 0xA;
    scale.set(daNpc_Uri_Param_c::m.field_0x08, daNpc_Uri_Param_c::m.field_0x08,
              daNpc_Uri_Param_c::m.field_0x08);
    mCcStts.SetWeight(daNpc_Uri_Param_c::m.field_0x10);
    mCylH = daNpc_Uri_Param_c::m.field_0x14;
    mWallR = daNpc_Uri_Param_c::m.field_0x1c;
    mAttnFovY = daNpc_Uri_Param_c::m.field_0x50;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Uri_Param_c::m.field_0x18);
    mRealShadowSize = daNpc_Uri_Param_c::m.field_0x0c;
    gravity = daNpc_Uri_Param_c::m.field_0x04;
    mExpressionMorfFrame = daNpc_Uri_Param_c::m.field_0x6c;
    mMorfFrames = daNpc_Uri_Param_c::m.field_0x44;
    if (mType == TYPE_4) {
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        gravity = 0.0f;
    }
}

/* 80B27994-80B27B3C 0012D4 01A8+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Uri_cFv */
BOOL daNpc_Uri_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Uri_c::talk)) {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 2;
                evtChange();
            }
            return TRUE;
        }

        switch (mType) {
        case TYPE_1:
                 /* dSv_event_flag_c::F_0025 - Ordon Village - Pass Uli's pick-up tutorial */
            if (!daNpcT_chkEvtBit(0x1E)
                    /* dSv_event_flag_c::F_0048 - Ordon Village - Uli's pick-up tutorial <fail> */
                && !daNpcT_chkEvtBit(0x92)) {
                     /* T_0007 - Ordon Village - During Uli's pick-up tutorial */
                if (!daNpcT_chkTmpBit(0x7)) {
                        /* dSv_event_flag_c::F_0031 - Ordon Village - 2nd day - Spoke to Uli bfore finding basket */
                    if (daNpcT_chkEvtBit(0x24)) {
                        mEvtNo = 4;
                    } else {
                        mEvtNo = 3;
                    }
                    evtChange();
                    return TRUE;
                }
                        /* dSv_event_flag_c::F_0027 - Ordon Village - Uli tutorial ends (same whether pass or fail) */
            } else if (!daNpcT_chkEvtBit(0x20) && field_0x100b == 0) {
                mEvtNo = 7;
                evtChange();
                return TRUE;
            }
            break;
        case TYPE_4:
                /* dSv_event_flag_c::M_028 - Cutscene - [cutscene: 14] restore mountain spirit - Reuinion with Colin et al. */
            if (daNpcT_chkEvtBit(0x3D)
                    /* dSv_event_flag_c::F_0330 - Ordon Village - Meet again with Uli for the first time (first forced conversation) */
                && !daNpcT_chkEvtBit(0x14A)) {
                mEvtNo = 10;
                evtChange();
                return TRUE;
            }
            break;
        case TYPE_0:
        case TYPE_2:
        case TYPE_3:
        case TYPE_5:
            break;
        }
    }

    return FALSE;
}

/* 80B27B3C-80B27BF0 00147C 00B4+00 2/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Uri_cFv
 */
void daNpc_Uri_c::setAfterTalkMotion() {
    int iVar2 = 17;
    switch (mFaceMotionSeqMngr.getNo()) {
    case 1:
        iVar2 = 10;
        break;
    case 4:
        return;
    case 5:
        return;
    case 7:
        iVar2 = 15;
        break;
    case 8:
        iVar2 = 10;
        break;
    case 11:
        iVar2 = 12;
        break;
    case 9:
        iVar2 = 16;
    }
    mFaceMotionSeqMngr.setNo(iVar2, -1.0f, 0, 0);
}

/* 80B27BF0-80B27C8C 001530 009C+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Uri_cFv */
void daNpc_Uri_c::srchActors() {
    switch (mType) {
    case TYPE_0:
    case TYPE_1:
    case TYPE_2:
        break;
    case TYPE_3:
        if (!mActorMngr[0].getActorP()) {
            mActorMngr[0].entry(getNearestActorP(0x262));
        }
        break;
    case TYPE_4:
        if (!mActorMngr[0].getActorP()) {
            mActorMngr[0].entry(getNearestActorP(0x262));
        }
        break;
    case TYPE_5:
        break;
    }
}

/* 80B27C8C-80B27D2C 0015CC 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Uri_cFv */
BOOL daNpc_Uri_c::evtTalk() {
    if (chkAction(&daNpc_Uri_c::talk)) {
        (this->*field_0xfc0[1])(NULL);
    } else {
        setAction(&daNpc_Uri_c::talk);
    }
    return 1;
}

/* 80B27D2C-80B27DF4 00166C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Uri_cFv */
BOOL daNpc_Uri_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Uri", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx =
            dComIfGp_getEventManager().getMyActIdx(mStaffId, (char**)mCutNameList, 7, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        return true;
    }
    return false;
}

/* 80B27DF4-80B27F14 001734 0120+00 1/0 0/0 0/0 .text            action__11daNpc_Uri_cFv */
void daNpc_Uri_c::action() {
    fopAc_ac_c* hitActor = hitChk(&mCyl, 0xffffffff);

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (field_0xfc0[0] != NULL) {
        if (field_0xfc0[1] == field_0xfc0[0]) {
            (this->*field_0xfc0[1])(NULL);
        } else {
            setAction(field_0xfc0[0]);
        }
    }

    if (!dComIfGp_event_runCheck() && field_0x1012 != 0) {
        fopAcM_delete(this);
    }
}

/* 80B27F14-80B27FD8 001854 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Uri_cFv */
void daNpc_Uri_c::beforeMove() {
    fopAcM_OffStatus(this, 0x8000000);
    if (checkHide()) {
        fopAcM_OnStatus(this, 0x8000000);
    }

    if (checkHide() || mNoDraw != 0) {
        attention_info.flags = 0;
    }
}

/* 80B2DD64-80B2DD68 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Uri_Param_c l_HIO;

/* 80B27FD8-80B28318 001918 0340+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Uri_cFv */
void daNpc_Uri_c::setAttnPos() {
    cXyz acStack_3c(-30.0f, 10.0f, 0.0f);

    mStagger.calc(0);

    f32 dVar6 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.setParam(this, mpMorf[0]->getModel(), &acStack_3c, getBackboneJointNo(),
                     getNeckJointNo(), getHeadJointNo(), l_HIO.m.field_0x24, l_HIO.m.field_0x20,
                     l_HIO.m.field_0x2c, l_HIO.m.field_0x28, l_HIO.m.field_0x34, l_HIO.m.field_0x30,
                     l_HIO.m.field_0x3c, l_HIO.m.field_0x38, l_HIO.m.field_0x40, dVar6, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, dVar6);

    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&acStack_3c, &eyePos);

    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y + field_0xd8a.y, 1, 1.0f, 0);

    acStack_3c.set(0.0f, 0.0f, 0.0f);
    acStack_3c.y = l_HIO.m.field_0x00;

    if (field_0x100d != 0) {
        if (mType == TYPE_1) {
            acStack_3c.y -= 10.0f;
            acStack_3c.z = -60.0f;
        } else if (mType == TYPE_4) {
            acStack_3c.y -= 20.0f;
        }
    }

    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&acStack_3c, &acStack_3c);
    attention_info.position = acStack_3c + current.pos;
    static cXyz prtclScl(1.0f, 1.0f, 1.0f);
    setFootPos();
    if (3.0f < speedF) {
        setFootPrtcl(&prtclScl, 11.0f, 0);
    }
}

/* 80B28318-80B284D4 001C58 01BC+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Uri_cFv */
void daNpc_Uri_c::setCollision() {
    cXyz cStack_48;

    if (mHide == 0) {
        u32 tgType = 0xd8fbfdff;
        u32 tgSPrm = 0x1f;

        if (mTwilight != 0) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (mStagger.checkStagger()) {
                tgType = 0;
                tgSPrm = 0;
            }
        }

        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();
        cStack_48.set(0.0f, 0.0f, 10.0f);
        f32 cylHeight = mCylH;
        f32 cylRadius = mWallR;
        if (field_0x100d != 0) {
            switch (mType) {
            case TYPE_1:
                cylHeight = mCylH - 10.0f;
                cylRadius = mWallR;
                cStack_48.set(0.0f, 0.0f, -60.0f);
                break;
            case TYPE_4:
                cylHeight = mCylH - 20.0f;
                cylRadius = mWallR;
                cStack_48.set(0.0f, 0.0f, 0.0f);
                break;
            case TYPE_2:
            case TYPE_3:
            case TYPE_5:
                break;
            }
        }
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&cStack_48, &cStack_48);
        cStack_48 += current.pos;
        mCyl.SetH(cylHeight);
        mCyl.SetR(cylRadius);
        mCyl.SetC(cStack_48);
        dComIfG_Ccsp()->Set(&mCyl);
    }
    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80B284D4-80B284DC 001E14 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Uri_cFv */
int daNpc_Uri_c::drawDbgInfo() {
    return 0;
}

/* 80B284DC-80B285B4 001E1C 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__11daNpc_Uri_cFv */
void daNpc_Uri_c::drawOtherMdl() {
    static int const jointNo[1] = {12};

    Mtx mtx;
    J3DModel* model = mpMorf[0]->getModel();

    for (int i = 0; i < 1; i++) {
        if (mpModel[i] != NULL && i == 0 && field_0x1008 != 0) {
            g_env_light.setLightTevColorType_MAJI(mpModel[i], &tevStr);
            mDoMtx_stack_c::copy(model->getAnmMtx(jointNo[0]));
            cMtx_copy(mDoMtx_stack_c::get(), mtx);
            mpModel[i]->setBaseTRMtx(mtx);
            mDoExt_modelUpdateDL(mpModel[i]);
            dComIfGd_addRealShadow(mShadowKey, mpModel[i]);
        }
    }
}

/* 80B285B4-80B285EC 001EF4 0038+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_Uri_cFiifi */
bool daNpc_Uri_c::afterSetMotionAnm(int param_1, int param_2, f32 param_3, int param_4) {
    field_0x1008 = 0;

    switch (param_1) {
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 33:
        field_0x1008 = 1;
        break;
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
        break;
    }

    return true;
}

/* 80B285EC-80B28618 001F2C 002C+00 1/0 0/0 0/0 .text            changeBck__11daNpc_Uri_cFPiPi */
void daNpc_Uri_c::changeBck(int* param_0, int* param_1) {
    if (mType != TYPE_5) {
        return;
    }
    if (*param_0 != 10) {
        return;
    }
    *param_0 = 4;
    *param_1 = 5;
}

/* 80B28618-80B28644 001F58 002C+00 1/0 0/0 0/0 .text            changeBtp__11daNpc_Uri_cFPiPi */
void daNpc_Uri_c::changeBtp(int* param_0, int* param_1) {
    if (mType != TYPE_5) {
        return;
    }
    if (*param_0 != 43) {
        return;
    }
    *param_0 = 7;
    *param_1 = 5;
}

/* 80B28644-80B28794 001F84 0150+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Uri_cFv */
int daNpc_Uri_c::selectAction() {
    field_0xfc0[0] = NULL;

    switch (mType) {
    case TYPE_1:
        if (field_0x100d != NULL) {
            field_0xfc0[0] = &daNpc_Uri_c::sitWait;
        } else {
            if (field_0x100e != NULL) {
                    /* T_0007 - Ordon Village - During Uli's pick-up tutorial */
                if (daNpcT_chkTmpBit(7) && field_0x100f == NULL) {
                    field_0xfc0[0] = &daNpc_Uri_c::walk;
                } else {
                    field_0xfc0[0] = &daNpc_Uri_c::wait;
                }
            } else {
                field_0xfc0[0] = &daNpc_Uri_c::krun;
            }
        }
        break;
    case TYPE_4:
        field_0xfc0[0] = &daNpc_Uri_c::sitWait;
        break;
    default:
        field_0xfc0[0] = &daNpc_Uri_c::wait;
        break;
    }

    return 1;
}

/* 80B28794-80B287C0 0020D4 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Uri_cFM11daNpc_Uri_cFPCvPvPv_i            */
int daNpc_Uri_c::chkAction(int (daNpc_Uri_c::*action)(void*)) {
    return field_0xfc0[1] == action;
}

/* 80B287C0-80B28868 002100 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Uri_cFM11daNpc_Uri_cFPCvPvPv_i            */
int daNpc_Uri_c::setAction(int (daNpc_Uri_c::*action)(void*)) {
    mMode = 3;
    if (field_0xfc0[1] != NULL) {
        (this->*field_0xfc0[1])(NULL);
    }
    mMode = 0;
    field_0xfc0[1] = action;
    if (field_0xfc0[1] != NULL) {
        (this->*field_0xfc0[1])(NULL);
    }

    return 1;
}

/* 80B28868-80B288DC 0021A8 0074+00 2/2 0/0 0/0 .text chkPlayerCarryBasket__11daNpc_Uri_cFv */
BOOL daNpc_Uri_c::chkPlayerCarryBasket() {
    fopAc_ac_c* actor = NULL;
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (fopAcM_SearchByID(player->getGrabActorID(), &actor) && actor != NULL &&
        fopAcM_GetName(actor) == PROC_OBJ_KAGO)
    {
        return TRUE;
    }
    return FALSE;
}

/* 80B288DC-80B28910 00221C 0034+00 1/1 0/0 0/0 .text chkPlayerGetWoodShield__11daNpc_Uri_cFv */
BOOL daNpc_Uri_c::chkPlayerGetWoodShield() {
    return dComIfGs_isCollectShield(0);
}

/* 80B28910-80B28FB8 002250 06A8+00 2/2 0/0 0/0 .text getTutorialCond__11daNpc_Uri_cF4cXyz */
int daNpc_Uri_c::getTutorialCond(cXyz param_1) {
    cXyz local_44;
    cXyz local_50;
    cXyz cStack_5c;

    local_44 = mPath.getPntPos(mPath.getNumPnts() - 1);
    if (local_44.absXZ(param_1) < daNpc_Uri_Param_c::m.field_0x98) {
        return 9;
    }
    f32 fVar11 = (param_1 - current.pos).absXZ();
    s16 sVar8 = cLib_targetAngleY(&current.pos, &param_1) - mCurAngle.y;
    s16 uVar5 = abs(sVar8);

    if (daNpc_Uri_Param_c::m.field_0xa4 < fVar11 && ((u32)uVar5 & 0xFFFF) > 0x4000) {
        if (daNpc_Uri_Param_c::m.field_0xa8 < fVar11) {
            field_0x1000 = daNpc_Uri_Param_c::m.field_0xa8 - 100.0f;
            return 5;
        }
        if (field_0x1009 != NULL) {
            return 8;
        }
    }

    int i;
    for (i = 0; i < mPath.getNumPnts() - 1; i++) {
        local_44 = mPath.getPntPos(i);
        local_50 = mPath.getPntPos(i + 1);
        if (!((param_1 - local_44).absXZ() < daNpc_Uri_Param_c::m.field_0xa8)) {
            if (!((param_1 - local_50).absXZ() < daNpc_Uri_Param_c::m.field_0xa8)) {
                f32 local_a8;
                if (cM3d_Len2dSqPntAndSegLine(param_1.x, param_1.z, local_44.x, local_44.z,
                                              local_50.x, local_50.z, &cStack_5c.x, &cStack_5c.z,
                                              &local_a8) &&
                    local_a8 < daNpc_Uri_Param_c::m.field_0xa8)
                {
                    break;
                }
            } else {
                break;
            }
        } else {
            break;
        }
    }

    if (mPath.getNumPnts() - 1 <= i) {
        field_0x1000 = daNpc_Uri_Param_c::m.field_0xa8 - 100.0f;
        return 5;
    }

    return 2;
}

/* 80B28FB8-80B29198 0028F8 01E0+00 1/0 0/0 0/0 .text            cutConversation__11daNpc_Uri_cFi */
int daNpc_Uri_c::cutConversation(int param_1) {
    int rv = 0;
    int iVar4 = -1;
    int iVar3 = 0;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar1) {
        iVar4 = *piVar1;
    }
    piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "msgNo");
    if (piVar1) {
        iVar3 = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch (iVar4) {
        case 0:
            initTalk(mFlowNodeNo, NULL);
            break;
        case 3:
            initTalk(mFlowNodeNo, NULL);
            break;
        }
    }

    int local_28[2] = {-1, -1};

    switch (iVar4) {
    case 0:
    case 1:
    case 2:
    case 3:
        mJntAnm.lookPlayer(0);
        if (iVar4 == 0 || iVar4 == 2) {
            mJntAnm.lookNone(0);
        }
        local_28[0] = iVar3;
        if (talkProc(local_28, 0, NULL, 0)) {
            if (iVar3 == 0) {
                if (mFlow.checkEndFlow() != 0) {
                    rv = 1;
                }
            } else {
                rv = 1;
            }
        }
        break;
    }

    return rv;
}

/* 80B29198-80B293C0 002AD8 0228+00 1/0 0/0 0/0 .text cutStartCarryTutorial__11daNpc_Uri_cFi */
int daNpc_Uri_c::cutStartCarryTutorial(int param_1) {
    cXyz acStack_30;
    csXyz cStack_38;
    int uVar7 = 0;
    int iVar6 = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar1) {
        iVar6 = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch (iVar6) {
        case 0:
            break;
        case 1:
            if (daNpcT_getPlayerInfoFromPlayerList(23, fopAcM_GetRoomNo(this), &acStack_30,
                                                   &cStack_38))
            {
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&acStack_30, cStack_38.y, 0);
                dComIfGp_evmng_setGoal(&acStack_30);
            }
            mFaceMotionSeqMngr.setNo(17, 0.0f, 0, 0);
            mMotionSeqMngr.setNo(8, 0.0f, 0, 0);
            mJntAnm.lookPlayer(0);
            setAngle(fopAcM_searchPlayerAngleY(this));
            break;
        case 2:
            initTalk(mFlowNodeNo, NULL);
        }
    }

    switch (iVar6) {
    case 0:
        uVar7 = 1;
        break;
    case 1:
        uVar7 = 1;
        break;
    case 2:
        if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
            uVar7 = 1;
        }
    }

    return uVar7;
}

/* 80B293C0-80B296B8 002D00 02F8+00 1/0 0/0 0/0 .text cutEndCarryTutorial__11daNpc_Uri_cFi */
int daNpc_Uri_c::cutEndCarryTutorial(int param_1) {
    cXyz acStack_30;
    csXyz cStack_44;
    int uVar8 = 0;
    int iVar7 = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar1) {
        iVar7 = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch (iVar7) {
        case 0:
            break;
        case 1:
            if (daNpcT_getPlayerInfoFromPlayerList(21, fopAcM_GetRoomNo(this), &acStack_30,
                                                   &cStack_44))
            {
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&acStack_30, cStack_44.y, 0);
                dComIfGp_evmng_setGoal(&acStack_30);
            }
            mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            mJntAnm.lookPlayer(0);
            setPos(home.pos);
            setAngle(home.angle.y);
            speedF = 0;
            speed.setall(0.0f);
            daNpcT_onEvtBit(0x1e);
            break;
        case 2:
            initTalk(19, NULL);
            mItemPartnerId = fpcM_ERROR_PROCESS_ID_e;
        }
    }

    switch (iVar7) {
    case 0:
        action();
        uVar8 = 1;
        break;
    case 1:
        uVar8 = 1;
        break;
    case 2:
        int local_48;
        if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow() &&
            (s32)mFlow.getEventId(&local_48) == 1)
        {
            if (mItemPartnerId == fpcM_ERROR_PROCESS_ID_e) {
                mItemPartnerId =
                    fopAcM_createItemForPresentDemo(&current.pos, local_48, 0, -1, -1, NULL, NULL);
            }
            if (fopAcM_IsExecuting(mItemPartnerId)) {
                /* T_0007 - Ordon Village - During Uli's pick-up tutorial */
                daNpcT_offTmpBit(7);
                /* dSv_event_tmp_flag_c::T_0009 - Ordon Village - Walked a bit during Uli's pick-up tutorial */
                daNpcT_offTmpBit(10);
                /* dSv_event_tmp_flag_c::T_0031 - Ordon Village - Borrow Rusl's sword */
                daNpcT_offTmpBit(0x20);
                field_0x100b = 1;
                mEvtNo = 1;
                evtChange();
            }
        }
    }

    return uVar8;
}

/* 80B296B8-80B2985C 002FF8 01A4+00 1/0 0/0 0/0 .text cutConversationWithMoi__11daNpc_Uri_cFi */
int daNpc_Uri_c::cutConversationWithMoi(int param_1) {
    int uVar5 = 0;
    int iVar4 = -1;
    int iVar3 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar1) {
        iVar4 = *piVar1;
    }
    piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "msgNo");
    if (piVar1) {
        iVar3 = *piVar1;
    }

    fopAc_ac_c* actors[2] = {mActorMngr[0].getActorP(), (fopAc_ac_c*)this};
    dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], 0, 0, 0, 0, 0, 0, 0, 0);
    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch (iVar4) {
        case 0:
            initTalk(0xce, &actors[0]);
            break;
        case 1:
            break;
        }
    }

    int local_30[2] = {-1, -1};

    switch (iVar4) {
    case 0:
    case 1:
        local_30[0] = iVar3;
        if (talkProc(local_30, 1, &actors[0], 0)) {
            if (iVar3 == 0) {
                if (mFlow.checkEndFlow()) {
                    uVar5 = 1;
                }
            } else {
                uVar5 = 1;
            }
        }
    }

    return uVar5;
}

/* 80B2985C-80B29BA4 00319C 0348+00 1/0 0/0 0/0 .text            cutFindWolf__11daNpc_Uri_cFi */
int daNpc_Uri_c::cutFindWolf(int param_1) {
    cXyz cStack_2c;
    int iVar12 = 0;
    int iVar11 = -1;
    int local_30 = 0;
    int* piVar2 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar2) {
        iVar11 = *piVar2;
    }
    int* puVar3 = dComIfGp_evmng_getMyIntegerP(param_1, "timer");
    if (puVar3) {
        local_30 = *puVar3;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch (iVar11) {
        case 0:
            mFaceMotionSeqMngr.setNo(12, 0.0f, 0, 0);
            mMotionSeqMngr.setNo(23, 0.0f, 0, 0);
            mSound.startCreatureVoice(JAISoundID(Z2SE_URI_V_SCREAM_S), -1);
            mEventTimer = local_30;
            s16 sVar9 = fopAcM_searchPlayerAngleY(this);
            sVar9 -= home.angle.y;
            if (sVar9 > 0x4000) {
                sVar9 = 0x4000;
            } else if (sVar9 < -0x4000) {
                sVar9 = -0x4000;
            }
            sVar9 += home.angle.y;
            cStack_2c.set(0.0f, 300.0f, daNpc_Uri_Param_c::m.field_0x54 + 150.0f);
            mDoMtx_stack_c::YrotS(sVar9);
            mDoMtx_stack_c::multVec(&cStack_2c, &cStack_2c);
            cStack_2c += current.pos;
            mGndChk.SetPos(&cStack_2c);
            cStack_2c.y = dComIfG_Bgsp().GroundCross(&mGndChk);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&cStack_2c, sVar9 - (s16)0x8000, 0);
            /* dSv_event_tmp_flag_c::GUARD_URI - Ordon Village - Rusl is guarding Uli, Ordon village night */
            dComIfGs_onTmpBit(0x1308);
            break;
        case 1:
            fopAc_ac_c* actor = mActorMngr[0].getActorP();
            if (actor) {
                dComIfGp_getEvent().setPt2(actor);
            }
            break;
        }
    }

    switch (iVar11) {
    case 0:
        mJntAnm.lookPlayer(0);
        if (mEventTimer != 0 && cLib_calcTimer(&mEventTimer) == 0) {
            iVar12 = 1;
        }
        if (iVar12 != 0) {
            fopAc_ac_c* actor = mActorMngr[0].getActorP();
            if (actor) {
                s16 angle = cLib_targetAngleY(&daPy_getPlayerActorClass()->current.pos,
                                              &actor->current.pos);
                daPy_getPlayerActorClass()->changeDemoMoveAngle(angle);
            }
        }
        break;
    case 1:
        mJntAnm.lookPlayer(0);
        break;
    }

    return iVar12;
}

/* 80B29BA4-80B29EA0 0034E4 02FC+00 1/0 0/0 0/0 .text            cutMeetingAgain__11daNpc_Uri_cFi */
int daNpc_Uri_c::cutMeetingAgain(int param_1) {
    cXyz acStack_40;
    csXyz cStack_48;
    int uVar9 = 0;
    int iVar10 = -1;
    int uVar8 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar1) {
        iVar10 = *piVar1;
    }
    int* puVar2 = dComIfGp_evmng_getMyIntegerP(param_1, "timer");
    if (puVar2) {
        uVar8 = *puVar2;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch (iVar10) {
        case 0:
            mJntAnm.lookPlayer(0);
            /* dSv_event_tmp_flag_c::T_0010 - General use - General use temporary flag (flow control) A */
            daNpcT_offTmpBit(0xB);
            initTalk(mFlowNodeNo, NULL);
            break;
        case 1:
        case 3:
            acStack_40.set(0.0f, 100.0f, 150.0f);
            cStack_48.y = fopAcM_searchPlayerAngleY(this);
            mDoMtx_stack_c::YrotS(cStack_48.y);
            mDoMtx_stack_c::multVec(&acStack_40, &acStack_40);
            acStack_40 += current.pos;
            mGndChk.SetPos(&acStack_40);
            acStack_40.y = dComIfG_Bgsp().GroundCross(&mGndChk);
            cStack_48.y = cLib_targetAngleY(&acStack_40, &current.pos);
            if (iVar10 == 1) {
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(
                    &daPy_getPlayerActorClass()->current.pos, cStack_48.y, 0);
                dComIfGp_evmng_setGoal(&acStack_40);
                mEventTimer = uVar8;
            }
            if (iVar10 == 3) {
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&acStack_40, cStack_48.y, 0);
                initTalk(mFlowNodeNo, NULL);
                mEventTimer = 0;
            }
        }
    }

    switch (iVar10) {
    case 0:
    case 1:
    case 2:
        if (talkProc(NULL, 0, NULL, 0)) {
            if (mFlow.checkEndFlow() != 0) {
                uVar9 = 1;
            }
        } else {
            switch (iVar10) {
            case 0:
                if (mDoGph_gInf_c::isFade()) {
                    uVar9 = 1;
                }
                break;
            case 1:
                uVar9 = 1;
            }
        }
        break;
    case 3:
        iVar10 = talkProc(NULL, 0, NULL, 0);
        if (iVar10 != 0 && mFlow.checkEndFlow() != 0) {
            uVar9 = 1;
        }
        break;
    }

    return uVar9;
}

/* 80B29EA0-80B2A1B4 0037E0 0314+00 1/0 0/0 0/0 .text            krun__11daNpc_Uri_cFPv */
int daNpc_Uri_c::krun(void* param_0) {
    int iVar7 = daNpc_Uri_Param_c::m.field_0x8c / 2;

    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            mFaceMotionSeqMngr.setNo(13, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(25, -1.0f, 0, 0);
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            mJntAnm.lookNone(0);
            if (field_0xfec == 0) {
                cXyz cStack_58;
                int iVar2 = mPath.getDstPosH(current.pos, &cStack_58, mPath.getNumPnts(), 4);

                calcSpeedAndAngle(cStack_58, iVar2, 6, 0x800);
                if (iVar2 != 0 && cM3d_IsZero(speedF)) {
                    mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(11, -1.0f, 0, 0);
                    field_0xfec = cLib_getRndValue(iVar7 * 0.5f, iVar7 * 1.5f);
                    mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
                    daNpcT_onEvtBit(0x25);
                }
            } else {
                J3DAnmTransform* anm_transform = getTrnsfrmAnmP(
                    l_resNameList[l_motionAnmData[15].mBckArcIdx], l_motionAnmData[15].mBckFileIdx);
                if (anm_transform == mpMorf[0]->getAnm() && mpMorf[0]->checkFrame(14.0f)) {
                    mSound.startCreatureVoice(Z2SE_M036_URI_01, -1);
                }
                iVar7 = cLib_calcTimer(&field_0xfec);
                if (iVar7 == 0) {
                    field_0x100e = 1;
                }
            }
        }
        attention_info.flags = 0;
        break;
    case MODE_EXIT:
    case MODE_4:
        break;
    }

    return 1;
}

/* 80B2A1B4-80B2AB60 003AF4 09AC+00 2/0 0/0 0/0 .text            wait__11daNpc_Uri_cFPv */
int daNpc_Uri_c::wait(void* param_0) {
    s16 sVar10 = home.angle.y;

    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            switch (mType) {
            case TYPE_1:
                if (field_0x100b) {
                    mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                } else {
                    if (field_0x100f) {
                             /* dSv_event_flag_c::F_0025 - Ordon Village - Pass Uli's pick-up tutorial */
                        if (!daNpcT_chkEvtBit(0x1E)
                                /* dSv_event_flag_c::F_0048 - Ordon Village - Uli's pick-up tutorial <fail> */
                            && !daNpcT_chkEvtBit(0x92)) {
                            mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                        } else {
                            mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                        }
                    } else {
                            /* dSv_event_flag_c::F_0031 - Ordon Village - 2nd day - Spoke to Uli bfore finding basket */
                        if (daNpcT_chkEvtBit(0x24)) {
                            mFaceMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(12, -1.0f, 0, 0);
                        } else {
                            mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(13, -1.0f, 0, 0);
                        }
                    }
                }
                break;
            case TYPE_3:
                    /* dSv_event_tmp_flag_c::GUARD_URI - Ordon Village - Rusl is guarding Uli, Ordon village night */
                if (dComIfGs_isTmpBit(0x1308)) {
                    mFaceMotionSeqMngr.setNo(12, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(22, -1.0f, 0, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(16, -1.0f, 0, 0);
                }
                break;
            default:
                mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            }
            mMode = 2;
        }
    case MODE_RUN:
        switch (mType) {
        case TYPE_1:
                /* T_0007 - Ordon Village - During Uli's pick-up tutorial */
            if (daNpcT_chkTmpBit(0x7)) {
                if (chkPlayerCarryBasket()) {
                    switch (getTutorialCond(daPy_getPlayerActorClass()->current.pos)) {
                    case 9:
                        field_0x1009 = 0;
                        field_0x100a = 0;
                        mEvtNo = 6;
                        break;
                    default:
                        field_0x1009 = 0;
                        field_0x100a = 0;
                        break;
                    }
                }
            } else {
                     /* dSv_event_flag_c::F_0025 - Ordon Village - Pass Uli's pick-up tutorial */
                if (!daNpcT_chkEvtBit(0x1E)
                        /* dSv_event_flag_c::F_0048 - Ordon Village - Uli's pick-up tutorial <fail> */
                    && !daNpcT_chkEvtBit(0x92)) {
                    cXyz acStack_70 = getAttnPos(daPy_getPlayerActorClass());
                    int dist_index = attention_info.distances[1];
                    f32 fVar2 = dComIfGp_getAttention()->getDistTable(dist_index).mLowerY * -1.0f;
                    f32 fVar3 = dComIfGp_getAttention()->getDistTable(dist_index).mUpperY * -1.0f;
                    if (chkPointInArea(acStack_70, attention_info.position, 200.0f, fVar2, fVar3,
                                       0))
                    {
                        if (daPy_getPlayerActorClass()->eventInfo.chkCondition(dEvtCnd_CANTALK_e) != 0 &&
                            chkPlayerCarryBasket())
                        {
                            mEvtNo = 5;
                        }
                    }
                    sVar10 = field_0xfe4.y;
                }
            }
            break;
        case TYPE_2:
            break;
        case TYPE_3:
                /* dSv_event_flag_c::F_0205 - Ordon Village - Heard Rusl and Uli talking in Ordon village at night */
            if (daNpcT_chkEvtBit(0xCD)) {
                cXyz cStack_7c = getAttnPos(daPy_getPlayerActorClass());
                if (chkPointInArea(cStack_7c, attention_info.position,
                                   daNpc_Uri_Param_c::m.field_0x54, daNpc_Uri_Param_c::m.field_0x58,
                                   daNpc_Uri_Param_c::m.field_0x5c, mCurAngle.y))
                {
                    if (!daPy_getPlayerActorClass()->checkPlayerFly()) {
                        if (daPy_getPlayerActorClass()->eventInfo.chkCondition(dEvtCnd_CANTALK_e) != 0) {
                            if (chkActorInSight(daPy_getPlayerActorClass(), mAttnFovY,
                                                home.angle.y))
                            {
                                mEvtNo = 9;
                            }
                        }
                    }
                }
            } else {
                mEvtNo = 8;
                field_0xe33 = true;
            }
        }

        if (!mStagger.checkStagger()) {
            if (mType == TYPE_1 && field_0x100b != 0) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }
                /* dSv_event_tmp_flag_c::GUARD_URI - Ordon Village - Rusl is guarding Uli, Ordon village night */
            if (dComIfGs_isTmpBit(0x1308)) {
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                mJntAnm.lookPlayer(0);
            } else {
                if (mMotionSeqMngr.getNo() == 22) {
                    mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(16, -1.0f, 0, 0);
                }
                if (mPlayerActorMngr.getActorP() && !mTwilight) {
                    mJntAnm.lookPlayer(0);
                    if (mType == TYPE_1 && !field_0x100b && !field_0x100f) {
                        mJntAnm.lookNone(0);
                    } else if (!chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY,
                                                mCurAngle.y))
                    {
                        mJntAnm.lookNone(0);
                    }
                    if (!srchPlayerActor() && sVar10 == mCurAngle.y) {
                        mMode = 1;
                    }
                } else {
                    mJntAnm.lookNone(0);
                    if (sVar10 != mCurAngle.y) {
                        if (field_0xe34) {
                            if (field_0x1008) {
                                if (step(sVar10, 17, 24, 15, 0)) {
                                    mMode = 1;
                                }
                            } else if (step(sVar10, -1, -1, 15, 0)) {
                                mMode = 1;
                            }
                        } else {
                            setAngle(sVar10);
                            mMode = 1;
                        }
                        attention_info.flags = 0;
                    } else {
                        if (!mTwilight) {
                            srchPlayerActor();
                        }
                    }
                }
            }
        }
        break;
    case MODE_EXIT:
    case MODE_4:
        break;
    }

    return 1;
}

/* 80B2AB60-80B2B24C 0044A0 06EC+00 1/0 0/0 0/0 .text            walk__11daNpc_Uri_cFPv */
int daNpc_Uri_c::walk(void* param_0) {
    BOOL bVar = FALSE;
    int uVar2 = daNpc_Uri_Param_c::m.field_0x8c;
    int uVar3 = daNpc_Uri_Param_c::m.field_0x8e;
    int uVar4 = daNpc_Uri_Param_c::m.field_0x90;

    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            field_0xff4 = 0;
            field_0xff8 = 0;
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (chkPlayerCarryBasket()) {
            fopAcM_searchPlayerAngleY(this);
            switch (getTutorialCond(daPy_getPlayerActorClass()->current.pos)) {
            case 9:
                field_0x1009 = 0;
                field_0x100a = 0;
                mEvtNo = 6;
                break;
            default:
                field_0x1009 = 0;
                field_0x100a = 0;
                break;
            }
        }
        if (!mStagger.checkStagger()) {
            cXyz cStack_84;
            int iVar2 = mPath.getDstPosH(current.pos, &cStack_84, mPath.getNumPnts(), 4);
            if (iVar2) {
                bVar = TRUE;
            }
            calcSpeedAndAngle(cStack_84, bVar, 6, 0x800);

            if (iVar2 && cM3d_IsZero(speedF) && mMotionSeqMngr.getNo() != 8) {
                mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(8, -1.0f, 0, 0);

                int num = mPath.getNumPnts();
                cXyz cStack_54 = mPath.getPntPos((int)num - 1);
                cXyz cStack_60 = mPath.getPntPos((int)num - 2);
                home.angle.y = cLib_targetAngleY(&cStack_54, &cStack_60);
            }
            if (!bVar && field_0x1011 == 0) {
                if (field_0xffc == 0) {
                    bool bVar11 = false;
                    if (mMotionSeqMngr.getNo() != 28 && mMotionSeqMngr.getNo() != 29) {
                        bVar11 = true;
                        field_0xfec = 0;
                    } else {
                        cLib_chaseF(&field_0x1004, 0.0f, 1.0f);
                    }
                    if (field_0xfec == 0) {
                        if (bVar11 || mpMorf[0]->isLoop()) {
                            field_0xfec = cLib_getRndValue((f32)uVar2 * 0.5f, (f32)uVar2 * 1.5f);
                            field_0x1004 = mMorfFrames;
                            if (mMotionSeqMngr.getNo() == 28) {
                                mMotionSeqMngr.setNo(29, -1.0f, 0, 0);
                            } else {
                                mMotionSeqMngr.setNo(28, -1.0f, 0, 0);
                            }
                        }
                    } else {
                        field_0xfec -= 1;
                    }
                } else {
                    field_0xffc -= 1;
                }
            }
            if (field_0xff4 == 0) {
                if (field_0xff8 != 0) {
                    mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                    field_0xff8 -= 1;
                } else {
                    field_0xff4 = cLib_getRndValue((f32)uVar3 * 0.5f, (f32)uVar3 * 1.5f);
                }
            } else {
                field_0xff4 -= 1;
                if (field_0xff4 == 0) {
                    field_0xff8 = cLib_getRndValue((f32)uVar4 * 0.5f, (f32)uVar4 * 1.5f);
                }
            }
            if (iVar2 && home.angle.y != mCurAngle.y) {
                mJntAnm.lookNone(0);
                if (step(home.angle.y, 17, 24, 15, 0)) {
                    mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                    field_0x100f = 1;
                }
                attention_info.flags = 0;
            } else {
                if (mPlayerActorMngr.getActorP() && !mTwilight) {
                    if (field_0xff8 == 0) {
                        field_0x1011 = 0;
                    }
                    mJntAnm.lookPlayer(0);
                    if (!chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y) &&
                        field_0xff8 == 0)
                    {
                        mJntAnm.lookNone(0);
                    }
                    if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                        mMode = MODE_INIT;
                    }
                } else {
                    mJntAnm.lookNone(0);
                    if (!mTwilight) {
                        srchPlayerActor();
                    }
                }
            }
        }
        break;
    case MODE_EXIT:
    case MODE_4:
        break;
    }

    return 1;
}

/* 80B2B24C-80B2B7C0 004B8C 0574+00 2/0 0/0 0/0 .text            sitWait__11daNpc_Uri_cFPv */
int daNpc_Uri_c::sitWait(void* param_0) {
    int sVar2 = daNpc_Uri_Param_c::m.field_0x92;

    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            switch (mType) {
            case TYPE_1:
                if (field_0x100c != 0) {
                    mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(26, 4.0f, 0, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                    field_0xff0 = cLib_getRndValue(sVar2 * 0.5f, sVar2 * 1.5f);
                }
                break;
            case TYPE_4:
                    /* dSv_event_flag_c::M_028 - Cutscene - [cutscene: 14] restore mountain spirit - Reuinion with Colin et al. */
                if (daNpcT_chkEvtBit(0x3D)
                        /* dSv_event_flag_c::F_0330 - Ordon Village - Meet again with Uli for the first time 
                                                                      (first forced conversation) */
                    && (daNpcT_chkEvtBit(0x14A)
                           /* dSv_event_flag_c::F_0516 - Ordon Village - Told Uli directly about having found kids */
                        || daNpcT_chkEvtBit(0x204)))
                {
                    mFaceMotionSeqMngr.setNo(17, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(3, -1.0f, 0, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(18, -1.0f, 0, 0);
                }
                break;
            }
            mMode = MODE_RUN;
        }
    case MODE_RUN:
                                /* dSv_event_flag_c::F_0330 - Ordon Village - Meet again with Uli for the first time 
                                                                              (first forced conversation) */
        if (mType == TYPE_4 && !daNpcT_chkEvtBit(0x14A)) {
            mSpeakEvent = true;
            field_0xe33 = true;
        }
        if (!mStagger.checkStagger()) {
            if (field_0x100c != 0) {
                mJntAnm.lookNone(0);
                if (mMotionSeqMngr.getNo() == 26 && mMotionSeqMngr.checkEndSequence()) {
                    field_0x100c = 0;
                    mMode = MODE_INIT;
                }
                attention_info.flags = 0;
            } else {
                if (mPlayerActorMngr.getActorP() && !mTwilight) {
                    mJntAnm.lookPlayer(0);
                    if (!chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                        mJntAnm.lookNone(0);
                    }
                    if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                        mMode = MODE_INIT;
                    }
                } else {
                    mJntAnm.lookNone(0);
                    if (mType == TYPE_1) {
                        if (field_0xff0 == 0) {
                            if (mMotionSeqMngr.getNo() == 7) {
                                if (mMotionSeqMngr.checkEndSequence()) {
                                    mMode = MODE_INIT;
                                }
                            } else {
                                mMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                            }
                        } else {
                            field_0xff0 -= 1;
                        }
                    }
                    if (!mTwilight && srchPlayerActor()) {
                        mMode = MODE_INIT;
                    }
                }
            }
            switch (mJntAnm.getMode()) {
            case 0:
                if (mType == TYPE_4) {
                    fopAc_ac_c* actor = mActorMngr[0].getActorP();
                    if (actor) {
                        mJntAnm.lookPos(&actor->eyePos, 0);
                    }
                }
                break;
            }
        }
        break;
    case MODE_EXIT:
    case MODE_4:
        break;
    }

    return 1;
}

/* 80B2B7C0-80B2BA08 005100 0248+00 3/0 0/0 0/0 .text            talk__11daNpc_Uri_cFPv */
int daNpc_Uri_c::talk(void* param_0) {
    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            if (field_0x100b != 0) {
                initTalk(0x13, NULL);
            } else {
                initTalk(mFlowNodeNo, NULL);
            }
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            if (mTwilight || mPlayerAngle == mCurAngle.y || field_0x100d != 0 || field_0x100f != 0)
            {
                if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow() != 0) {
                    mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                    dComIfGp_event_reset();
                    if (field_0x100b != 0) {
                        field_0x100b = 0;
                        field_0x100c = 1;
                        field_0x100d = 1;
                    }
                    mMode = MODE_EXIT;
                }
                mJntAnm.lookPlayer(0);
                if (mTwilight != 0) {
                    mJntAnm.lookNone(0);
                }
            } else {
                mJntAnm.lookPlayer(0);
                if (field_0x1008 != 0) {
                    step(mPlayerAngle, 17, 24, 15, 0);
                } else {
                    step(mPlayerAngle, -1, -1, 15, 0);
                }
            }
        }
        break;
    case MODE_EXIT:
    case MODE_4:
        break;
    }

    return 0;
}

/* 80B2BA08-80B2BA28 005348 0020+00 1/0 0/0 0/0 .text            daNpc_Uri_Create__FPv */
static int daNpc_Uri_Create(void* i_this) {
    return static_cast<daNpc_Uri_c*>(i_this)->create();
}

/* 80B2BA28-80B2BA48 005368 0020+00 1/0 0/0 0/0 .text            daNpc_Uri_Delete__FPv */
static int daNpc_Uri_Delete(void* i_this) {
    return static_cast<daNpc_Uri_c*>(i_this)->Delete();
}

/* 80B2BA48-80B2BA68 005388 0020+00 1/0 0/0 0/0 .text            daNpc_Uri_Execute__FPv */
static int daNpc_Uri_Execute(void* i_this) {
    return static_cast<daNpc_Uri_c*>(i_this)->Execute();
}

/* 80B2BA68-80B2BA88 0053A8 0020+00 1/0 0/0 0/0 .text            daNpc_Uri_Draw__FPv */
static int daNpc_Uri_Draw(void* i_this) {
    return static_cast<daNpc_Uri_c*>(i_this)->Draw();
}

/* 80B2BA88-80B2BA90 0053C8 0008+00 1/0 0/0 0/0 .text            daNpc_Uri_IsDelete__FPv */
static int daNpc_Uri_IsDelete(void* i_this) {
    return 1;
}

/* 80B2DB44-80B2DB64 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Uri_MethodTable */
static actor_method_class daNpc_Uri_MethodTable = {
    (process_method_func)daNpc_Uri_Create,  (process_method_func)daNpc_Uri_Delete,
    (process_method_func)daNpc_Uri_Execute, (process_method_func)daNpc_Uri_IsDelete,
    (process_method_func)daNpc_Uri_Draw,
};

/* 80B2DB64-80B2DB94 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_URI */
extern actor_process_profile_definition g_profile_NPC_URI = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_NPC_URI,            // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daNpc_Uri_c),     // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    378,                     // mPriority
    &daNpc_Uri_MethodTable,  // sub_method
    0x00040107,              // mStatus
    fopAc_NPC_e,             // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES;
