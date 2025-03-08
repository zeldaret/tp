/**
 * d_a_npc_jagar.cpp
 * NPC - Jaggle
 */

#include "d/actor/d_a_npc_jagar.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_npc_bou.h"
#include "dol2asm.h"
#include "d/d_meter2_info.h"
#include "d/actor/d_a_tag_push.h"


//
// Declarations:
//

/* ############################################################################################## */

/* 80A1A548-80A1A554 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A1A554-80A1A568 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80A1A568-80A1A570 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {13, 1},
};

/* 80A1A570-80A1A5B8 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
SECTION_DATA static daNpcT_evtData_c l_evtList[9] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"CLIMBUP", 2},
    {"NEED_YOUR_HELP", 2},
    {"ANGER", 2},
    {"CONVERSATION_WITH_BOU", 3},
    {"CONFIDENTIAL_CONVERSATION", 3},
    {"FIND_WOLF", 3},
    {"FIND_WOLF_VER2", 3},
};

/* 80A1A5B8-80A1A5CC -00001 0014+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[5] = {
    "",
    "Jagar",
    "Jagar1",
    "Jagar2",
    "Jagar3",
};

/* 80A1A5CC-80A1A5D0 000084 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
// SECTION_DATA static u32 l_loadResPtrn0 = 0x010204FF;
static s8 l_loadResPtrn0[4] = {
    1, 2, 4, -1,
};

/* 80A1A5D0-80A1A5D4 000088 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    1, 3, -1
};

/* 80A1A5D4-80A1A5DC 00008C 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[5] = {
    1, 2, 3, 4, -1
};

/* 80A1A5DC-80A1A5EC -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[4] = {
    l_loadResPtrn0,
    l_loadResPtrn1,
    l_loadResPtrn9,
    l_loadResPtrn9,
};

/* 80A1A5EC-80A1A704 0000A4 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[10] = {
    {-1, 0, 0, 19, 2, 1, 1},
    {6, 0, 1, 20, 0, 1, 0},
    {6, 0, 2, 19, 2, 1, 1},
    {4, 0, 4, 9, 0, 4, 0},
    {7, 0, 3, 20, 0, 3, 0},
    {5, 2, 4, 10, 2, 4, 0},
    {-1, 0, 0, -1, 0, 0, 0},
    {7, 2, 1, 21, 2, 1, 0},
    {5, 0, 3, 18, 0, 3, 0},
    {6, 2, 3, 19, 2, 3, 0},
};

/* 80A1A704-80A1A8FC 0001BC 01F8+00 0/1 0/0 0/0 .data            l_motionAnmData */
daNpcT_motionAnmData_c l_motionAnmData[18] = {
    {10, 2, 1, 16, 0, 1, 1, 0},
    {4, 2, 2, 16, 0, 1, 1, 0},
    {7, 2, 2, 16, 0, 1, 1, 0},
    {10, 2, 2, 16, 0, 1, 1, 0},
    {8, 0, 2, 16, 0, 1, 1, 0},
    {9, 0, 2, 16, 0, 1, 1, 0},
    {5, 0, 2, 16, 0, 1, 1, 0},
    {11, 0, 2, 16, 0, 1, 1, 0},
    {6, 0, 4, 16, 0, 1, 1, 0},
    {9, 0, 1, 16, 0, 1, 1, 0},
    {8, 0, 1, 16, 0, 1, 1, 0},
    {8, 2, 3, 16, 0, 1, 1, 0},
    {13, 2, 3, 16, 0, 1, 1, 0},
    {12, 0, 3, 16, 0, 1, 1, 0},
    {14, 2, 3, 16, 0, 1, 1, 0},
    {9, 0, 3, 16, 0, 1, 1, 0},
    {11, 0, 3, 16, 0, 1, 1, 0},
    {10, 2, 3, 16, 0, 1, 1, 0},
};

/* 80A1A8FC-80A1A98C 0003B4 0090+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[36] = {
    {1, -1, 1}, {7, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 1}, {9, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 1}, {5, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80A1A98C-80A1AABC 000444 0130+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[76] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 1}, {3, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {15, -1, 1}, {17, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {16, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 1}, {1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {7, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {14, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80A1AABC-80A1AAD8 -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Jagar_c */
SECTION_DATA char* daNpc_Jagar_c::mCutNameList[7] = {
    "",
    "CLIMBUP",
    "NEED_YOUR_HELP",
    "ANGER",
    "CONVERSATION_WITH_BOU",
    "CONFIDENTIAL_CONVERSATION",
    "FIND_WOLF",
};

/* 80A1AB20-80A1AB74 0005D8 0054+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Jagar_c */
daNpc_Jagar_c::cutFunc daNpc_Jagar_c::mCutList[7] = {
    NULL,
    &daNpc_Jagar_c::cutClimbUp,
    &daNpc_Jagar_c::cutNeedYourHelp,
    &daNpc_Jagar_c::cutAnger,
    &daNpc_Jagar_c::cutConversationWithBou,
    &daNpc_Jagar_c::cutConfidentialConversation,
    &daNpc_Jagar_c::cutFindWolf,
};

/* 80A1470C-80A14858 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Jagar_cFv */
daNpc_Jagar_c::~daNpc_Jagar_c() {
    if (mpMorf[0] != 0) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* ############################################################################################## */
/* 80A1A330-80A1A3D0 000000 00A0+00 13/13 0/0 1/1 .rodata          m__19daNpc_Jagar_Param_c */
daNpc_Jagar_Param_c::Data const daNpc_Jagar_Param_c::m = {
    170.0f, -3.0f, 1.0f, 400.0f, 255.0f, 160.0f,
    35.0f, 30.0f, 0.0f, 0.0f, 10.0f, -10.0f,
    30.0f, -10.0f, 45.0f, -45.0f, 0.6f, 12.0f,
    3, 6, 5, 6, 110.0f, 500.0f, 300.0f, -300.0f,
    60, 8, 0.0f, 0.0f, 4.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1400.0f,
    200.0f, -800.0f, 16.0f, 1800.0f,
};

/* 80A14858-80A14B20 000238 02C8+00 1/1 0/0 0/0 .text            create__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::create() {
    static int const heapSize[4] = {14416, 14448, 14448, 0};
    fopAcM_SetupActor2(this, daNpc_Jagar_c, l_faceMotionAnmData,
        (const daNpcT_motionAnmData_c *)l_motionAnmData, (const daNpcT_MotionSeqMngr_c::sequenceStepData_c *) l_faceMotionSequenceData, 4,
        (const daNpcT_MotionSeqMngr_c::sequenceStepData_c *)l_motionSequenceData, 4, (const daNpcT_evtData_c *)l_evtList, (char **)l_resNameList
    );
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = 0;
    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
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
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                        &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
                        fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Jagar_Param_c::m.field_0x10, 0, this);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mCyl1.SetTgHitCallback(tgHitCallBack);
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
    return rv;
}

/* 80A14B20-80A14D90 000500 0270+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));
    if (modelData == NULL) {
        return 0;
    }
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
        0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }
    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);
    mpMatAnm = new daNpcT_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, 0))
    {
        return 1;
    }
    return 0;
}

/* 80A14F4C-80A14F80 00092C 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Jagar_c();
    return 1;
}

/* 80A14F80-80A14FA0 000960 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::Execute() {
    return daNpcT_c::execute();
}

/* 80A14FA0-80A15034 000980 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::Draw() {
    if (mpMatAnm != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm);
    }
    return daNpcT_c::draw(0, 0, field_0xde8, NULL, 100.0f, 0, 0, 0);
}

/* 80A15034-80A15054 000A14 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Jagar_cFP10fopAc_ac_c            */
int daNpc_Jagar_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->CreateHeap();
}

/* 80A15054-80A150AC 000A34 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Jagar_cFP8J3DJointi               */
int daNpc_Jagar_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Jagar_c* i_this = reinterpret_cast<daNpc_Jagar_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_0, model);
        }
    }
    return 1;
}

/* 80A150AC-80A150F8 000A8C 004C+00 1/1 0/0 2/2 .text            getType__13daNpc_Jagar_cFv */
u8 daNpc_Jagar_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        case 1:
            return TYPE_1;
        case 2:
            return TYPE_2;
        default:
            return TYPE_3;
    }
}

/* 80A150F8-80A15198 000AD8 00A0+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::isDelete() {
    switch (mType) {
        case TYPE_0:
            return FALSE;
        case TYPE_1: {
            bool rv = true;
            if (!daNpcT_chkEvtBit(0xd3) && !dComIfGs_isCollectShield(0)) {
                rv = false;
            }
            return rv;
        }
        case TYPE_2:
            return FALSE;
        default:
            return FALSE;
        }
}

/* 80A15198-80A15364 000B78 01CC+00 1/1 0/0 0/0 .text            reset__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::reset() {
    csXyz acStack_20;
    int iVar1 = (u8*)&field_0x1008 - (u8*)&field_0xfd4;
    if (mpMatAnm != NULL) {
        mpMatAnm->initialize();
    }

    initialize();
    for (int i = 0; i < 5; i++) {
        mActorMngr[i].initialize();
    }
    
    memset(&field_0xfd4, 0, iVar1);
    acStack_20.setall(0);
    acStack_20.y = home.angle.y;
    switch (mType) {
        case TYPE_0:
            if (daNpcT_chkEvtBit(0x1c) != 0) {
                if (daNpcT_chkEvtBit(0x86) == 0) {
                    daNpcT_onEvtBit(0x86);
                }
                field_0x1001 = 1;
            }
        case TYPE_1:
        case TYPE_2:
        default:
            daNpcT_offTmpBit(0x1b);
            daNpcT_offTmpBit(0x10);
            setAngle(acStack_20);
    }
}

/* 80A15364-80A153E8 000D44 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Jagar_cFi */
void daNpc_Jagar_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80A153E8-80A155E4 000DC8 01FC+00 1/0 0/0 0/0 .text            setParam__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setParam() {
    selectAction();
    srchActors();
    u32 uVar7 = 10;
    s16 sVar10 = daNpc_Jagar_Param_c::m.field_0x48;
    s16 sVar9 = daNpc_Jagar_Param_c::m.field_0x4a;
    s16 sVar8 = daNpc_Jagar_Param_c::m.field_0x4c;
    s16 sVar7 = daNpc_Jagar_Param_c::m.field_0x4e;
    switch (mType) {
        case TYPE_0:
            sVar10 = 4;
            sVar9 = 6;
            sVar8 = 5;
            sVar7 = 6;
            break;
        case TYPE_1:
            field_0xff0 = 3;
            field_0xff4 = 6;
            sVar10 = 19;
            sVar9 = 6;
            sVar8 = 19;
            sVar7 = 6;
            break;
        case TYPE_2:
            sVar10 = 3;
            sVar9 = 6;
            sVar8 = 5;
            sVar7 = 6;
            break;
    }
    attention_info.distances[0] = daNpcT_getDistTableIdx(sVar8, sVar7);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(sVar10, sVar9);
    if (mType == TYPE_1) {
        uVar7 |= (0x80 << 16);
        field_0xfec = getActorDistance(daPy_getPlayerActorClass(), 
                    daNpcT_getDistTableIdx(field_0xff0, field_0xff4), 
                    attention_info.distances[1]);
        if (field_0xfec < 4) {
            g_meter2_info.mBlinkButton |= 1;
        }
    } else {
        if (chkChuMotion() != 0) {
            attention_info.distances[0] = 20;
            attention_info.distances[1] = 20;
            attention_info.distances[3] = 20;
            uVar7 = 2;
        }
    }
    attention_info.flags = uVar7;
    scale.set(daNpc_Jagar_Param_c::m.field_0x08, daNpc_Jagar_Param_c::m.field_0x08,
            daNpc_Jagar_Param_c::m.field_0x08);
    mCcStts.SetWeight(daNpc_Jagar_Param_c::m.field_0x10);
    mCylH = daNpc_Jagar_Param_c::m.field_0x14;
    mWallR = daNpc_Jagar_Param_c::m.field_0x1c;
    mAttnFovY = daNpc_Jagar_Param_c::m.field_0x50;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Jagar_Param_c::m.field_0x18);
    field_0xde8 = daNpc_Jagar_Param_c::m.field_0x0c;
    field_0xa80 = daNpc_Jagar_Param_c::m.field_0x6c;
    mMorfFrames = daNpc_Jagar_Param_c::m.field_0x44;
    gravity = daNpc_Jagar_Param_c::m.field_0x04;
}

/* 80A155E4-80A15714 000FC4 0130+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Jagar_c::talk)) {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }
            return true;
        }
        switch (mType) {
            case TYPE_0:
                if (daNpcT_chkEvtBit(0x1c) && chkChuMotion()) {
                    mEvtNo = 2;
                    evtChange();
                    return true;
                }
                break;
            case TYPE_1:
                if (field_0xfec < 4) {
                    mEvtNo = 6;
                    evtChange();
                    return true;
                }
            case TYPE_2:
                break;
        }
    }
    return false;
}

/* 80A15714-80A157B4 0010F4 00A0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setAfterTalkMotion() {
    int iVar2 = 8;
    switch(mFaceMotionSeqMngr.getNo()) {
        case 0:
            iVar2 = 6;
            break;
        case 1:
            break;
        case 2:
            iVar2 = 7;
            break;
        case 3:
            iVar2 = 5;
            break;
    }
    mFaceMotionSeqMngr.setNo(iVar2, -1.0f, 0, 0);
}

/* 80A157B4-80A158A0 001194 00EC+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::srchActors() {
    switch(mType) {
        case TYPE_0:
            if (!mActorMngr[1].getActorP()) {
                mActorMngr[1].entry(getNearestActorP(0x15a));
            }

            if (!mActorMngr[0].getActorP()) {
                mActorMngr[0].entry(getNearestActorP(0x10d));
            }
            break;
        case TYPE_1:
            if (!mActorMngr[1].getActorP()) {
                mActorMngr[1].entry(getNearestActorP(0x15a));
            }

            if (!mActorMngr[2].getActorP()) {
                mActorMngr[2].entry(getNearestActorP(0x246));
            }
        case TYPE_2:
            break;
    }
}

/* 80A158A0-80A15940 001280 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Jagar_cFv */
BOOL daNpc_Jagar_c::evtTalk() {
    if (chkAction(&daNpc_Jagar_c::talk)) {
        (this->*field_0xfe0)(NULL);
    } else {
        setAction(&daNpc_Jagar_c::talk);
    }
    return 1;
}

/* 80A15940-80A15A08 001320 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Jagar_cFv */
BOOL daNpc_Jagar_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Jagar", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, (char**)mCutNameList, 7, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        return true;
    } 
    return false;
}

/* 80A15A08-80A15CA4 0013E8 029C+00 1/0 0/0 0/0 .text            action__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::action() {
    fopAc_ac_c* hitActor = hitChk(&mCyl1, 0xffffffff);
    if (hitActor && mCyl1.GetTgHitObj()->ChkAtType(AT_TYPE_THROW_OBJ)) {
        if (mType == TYPE_1) {
            daNpc_Bou_c *bo = (daNpc_Bou_c *)mActorMngr[2].getActorP();
            if (bo && bo->getType() == TYPE_1) {
                if (bo->mStagger.checkStagger() ? 0 : 1) {
                    bo->mFaceMotionSeqMngr.setNo(1, -1, 0, 0);
                    bo->mMotionSeqMngr.setNo(3, -1, 0, 0);
                    field_0xff8 = 0;
                    field_0x1000 = 1;
                }
            }
        }

        if (field_0x1003 != 2 && field_0x1004 != 2) {
            mStagger.setParam(this, hitActor, mCurAngle.y);
            setDamage(0, 8, 0);
            mDamageTimerStart = 0;
            mJntAnm.setMode(0, 0);
            mJntAnm.setDirect(1);
        }
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        field_0x1003 = 0;
        mMode = 1;
    }

    if (field_0xfd4) {
        if (field_0xfe0 == field_0xfd4) {
            (this->*field_0xfe0)(NULL);
        } else {
            setAction(field_0xfd4);
        }
    }
    daTag_Push_c *uVar4 = (daTag_Push_c *)field_0xba0.getActorP();
    if (uVar4) {
        switch ((int)uVar4->getId()) {
            case 2:
                mEvtNo = 5;
                break;
            default:
                break;
        }
    }
}

/* 80A15CA4-80A15D68 001684 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::beforeMove() {
    fopAcM_OffStatus(this, 0x8000000);
    if (checkHide()) {
        fopAcM_OnStatus(this, 0x8000000);
    }
    
    if (checkHide() || mNoDraw != 0) {
        attention_info.flags = 0;
    }
}

UNK_REL_BSS;

/* 80A1AE2C-80A1AE30 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Jagar_Param_c l_HIO;

/* 80A15D68-80A1607C 001748 0314+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setAttnPos() {
    cXyz cStack_3c(-10.0f, 10.0f, 0.0f);
    mStagger.calc(0);
    f32 dVar8 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();
    mJntAnm.setParam(this, model, &cStack_3c, getBackboneJointNo(), getNeckJointNo(),
        getHeadJointNo(), daNpc_Jagar_Param_c::m.field_0x24, daNpc_Jagar_Param_c::m.field_0x20,
        daNpc_Jagar_Param_c::m.field_0x2c, daNpc_Jagar_Param_c::m.field_0x28,
        daNpc_Jagar_Param_c::m.field_0x34, daNpc_Jagar_Param_c::m.field_0x30,
        daNpc_Jagar_Param_c::m.field_0x3c, daNpc_Jagar_Param_c::m.field_0x38,
        daNpc_Jagar_Param_c::m.field_0x40, dVar8, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, dVar8);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&cStack_3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, -0x2800);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 1, 1.0f, 0);
    cStack_3c.set(0.0f, 0.0f, 10.0f);
    cStack_3c.y = daNpc_Jagar_Param_c::m.field_0x00;
    if (field_0x1004 == 2) {
        cStack_3c.set(0.0f, 100.0f, -60.0f);
    }
    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&cStack_3c, &cStack_3c);
    attention_info.position = current.pos + cStack_3c;
    static cXyz prtclScl(1.0f, 1.0f, 1.0f);
    setFootPos();
    if (3.0f < speedF) {
        setFootPrtcl(&prtclScl, 11.0f, 0);
    }
}

/* 80A1607C-80A161EC 001A5C 0170+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setCollision() {
    cXyz cStack_48;
    if (mHide == 0) {
        u32 tgType = -0x27040201;
        u32 tgSPrm = 0x1f;
        if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (mStagger.checkStagger()) {
                tgType = 0;
                tgSPrm = 0;
            }
        }
        mCyl1.SetCoSPrm(0x79);
        mCyl1.SetTgType(tgType);
        mCyl1.SetTgSPrm(tgSPrm);
        mCyl1.OnTgNoHitMark();
        cStack_48.set(0.0f, 0.0f, 0.0f);
        f32 cylHeight = mCylH;
        f32 cylRadius = mWallR;
        if (field_0x1004 == 2) {
            cylHeight = 70.0f;
            cylRadius = 90.0f;
        }
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&cStack_48, &cStack_48);
        cStack_48 += current.pos;
        mCyl1.SetH(cylHeight);
        mCyl1.SetR(cylRadius);
        mCyl1.SetC(cStack_48);
        dComIfG_Ccsp()->Set(&mCyl1);
    }
    mCyl1.ClrCoHit();
    mCyl1.ClrTgHit();
}

/* 80A161EC-80A161F4 001BCC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::drawDbgInfo() {
    return 0;
}

/* 80A161F4-80A16234 001BD4 0040+00 1/0 0/0 0/0 .text            changeBtp__13daNpc_Jagar_cFPiPi */
void daNpc_Jagar_c::changeBtp(int* param_0, int* param_1) {
    if (((mType == TYPE_1 || mType == TYPE_2) && *param_0 == 19) && *param_1 == 1) {
        *param_0 = 17;
        *param_1 = 3;
    }
    return;
}

/* 80A16234-80A162B0 001C14 007C+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::selectAction() {
    field_0xfd4 = NULL;
    switch (mType) {
        case TYPE_1:
            field_0xfd4 = &daNpc_Jagar_c::talkwithBou;
            break;
        default:
            field_0xfd4 = &daNpc_Jagar_c::wait;
            break;
    }
    return 1;
}

/* 80A162B0-80A162DC 001C90 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i        */
int daNpc_Jagar_c::chkAction(int (daNpc_Jagar_c::*action)(void*)) {
    return field_0xfe0 == action;
}

/* 80A162DC-80A16384 001CBC 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i        */
int daNpc_Jagar_c::setAction(int (daNpc_Jagar_c::*action)(void*)) {
    mMode = 3;
    if (field_0xfe0 != NULL) {
        (this->*field_0xfe0)(NULL);
    }
    mMode = 0;
    field_0xfe0 = action;
    if (field_0xfe0 != NULL) {
        (this->*field_0xfe0)(NULL);
    }
    return 1;
}

/* 80A16384-80A16544 001D64 01C0+00 1/0 0/0 0/0 .text            cutClimbUp__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutClimbUp(int param_0) {
    int rv = 0;
    int iVar4 = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar1) {
        iVar4 = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (iVar4) {
            case 0:
                mFaceMotionSeqMngr.setNo(8, 0.0f, 0, 0);
                mMotionSeqMngr.setNo(2, 0.0f, 0, 0);
                mJntAnm.lookNone(1);
                field_0x1003 = 1;
                setAngle(home.angle.y);
                initTalk(mFlowNodeNo, NULL);
                break;
            case 2:
                break;
        }
    }
    switch (iVar4) {
        case 0:
            if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;
        case 2:
            rv = 1;
            break;
    }
    return rv;
}

/* 80A16544-80A16CD8 001F24 0794+00 1/0 0/0 0/0 .text            cutNeedYourHelp__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutNeedYourHelp(int param_1) {
    int rv = 0;
    int iVar12 = -1;
    int local_30 = 0;
    int local_34 = 0;
    int local_38 = 0;
    fopAc_ac_c* actor_p;
    int* piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar5) {
        iVar12 = *piVar5;
    }
    piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "msgNo");
    if (piVar5) {
        local_30 = *piVar5;
    }
    piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "msgNo2");
    if (piVar5) {
        local_34 = *piVar5;
    }
    piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "send");
    if (piVar5) {
        local_38 = *piVar5;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch(iVar12) {
            case 0:
                dComIfGp_getEvent().setPt2(mActorMngr[0].getActorP());
                break;
            case 1:
                initTalk(mFlowNodeNo, NULL);
                break;
            case 7: {
                fopAc_ac_c* iVar6 = mActorMngr[1].getActorP();
                if (iVar6) {
                    dComIfGp_getEvent().setPt2(iVar6);
                }
                break;
            }
            case 8:
                field_0x1002 = 0;
                field_0x1003 = 0;
        }
    }   
    int local_2c[3] = {-1, -1, -1};
    switch (iVar12) {
        case 0:
            mJntAnm.lookNone(0);
            if (mMotionSeqMngr.getNo() == 10) {
                if (mMotionSeqMngr.getStepNo() <= 0) {
                    break;
                }
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                rv = 1;
                break;
            }
            if (!mMotionSeqMngr.getNo()) {
                rv = 1;
                break;
            }
            break;
        case 1:
            mJntAnm.lookPlayer(0);
            if (mPlayerAngle == mCurAngle.y) {
                rv = 1;
                break;
            }
            step(mPlayerAngle,8,0xe,0xf,0);
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            switch (iVar12) {
                case 3:
                case 4:
                case 5:
                    actor_p = mActorMngr[0].getActorP();
                    if (actor_p) {
                        field_0xd6c.setall(0.0f);
                        field_0xd6c.z = current.pos.absXZ(actor_p->current.pos);
                        mDoMtx_stack_c::YrotS(mCurAngle.y  + 0x4000);
                        mDoMtx_stack_c::multVec(&field_0xd6c, &field_0xd6c);
                        field_0xd6c += current.pos;
                        mJntAnm.lookPos(&field_0xd6c, 0);
                    }
                    break;
                case 7: {
                    fopAc_ac_c* actor_p = mActorMngr[1].getActorP();
                    if (actor_p) {
                        field_0xd6c.setall(0.0f);
                        field_0xd6c.z = current.pos.absXZ(actor_p->current.pos);
                        mDoMtx_stack_c::YrotS(mCurAngle.y  + -0x4000);
                        mDoMtx_stack_c::multVec(&field_0xd6c, &field_0xd6c);
                        field_0xd6c += current.pos;
                        mJntAnm.lookPos(&field_0xd6c, 0);
                    }
                    break;
                }
                default:
                    mJntAnm.lookPlayer(0);
            }
            local_2c[0] = local_30;
            local_2c[1] = local_34;
            if (talkProc(local_2c, local_38, NULL, 0)) {
                if (!local_30 && !local_34) {
                    if (mFlow.checkEndFlow() == 1) {
                        rv = 1;
                    }
                } else {
                    rv = 1;
                }
            }
            if (iVar12 == 4) {
                rv = 1;
            }
            break;

        case 8:
            rv = 1;
    }

    return rv;
}

/* 80A16CD8-80A16EFC 0026B8 0224+00 1/0 0/0 0/0 .text            cutAnger__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutAnger(int param_0) {
    int rv = 0;
    int local_b4 = -1;
    s16 sVar3;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar1 != NULL) {
        local_b4 = *piVar1;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (local_b4) {
            case 0:
                mFaceMotionSeqMngr.setNo(8, 0.0f, 0, 0);
                mMotionSeqMngr.setNo(0, 0.0, 0, 0);
                field_0x1003 = 0;
                sVar3 = fopAcM_searchActorAngleY(this, dComIfGp_getPlayer(0));
                setAngle(sVar3);
                initTalk(mFlowNodeNo, NULL);
            case 1:
                break;
        }
    }
    switch (local_b4) {
        case 0:
            mJntAnm.lookPlayer(0);
            if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow() == 1) {
                rv = 1;
            }
            break;
        case 1:
            mJntAnm.lookNone(0);
            if (home.angle.y == mCurAngle.y) {
                rv = 1;
            } else {
                step(home.angle.y, 8, 14, 15, 0);
            }
            break;
        default:
            break;
    }
    return rv;
}

/* 80A16EFC-80A1705C 0028DC 0160+00 1/0 0/0 0/0 .text cutConversationWithBou__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutConversationWithBou(int param_0) {
    daTag_Push_c* this_00 = (daTag_Push_c*)field_0xba0.getActorP();
    int rv = 0;
    int iVar5 = -1;
    int* piVar2 = (int*)dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar2) {
        iVar5 = *piVar2;
    }
    fopAc_ac_c* actors[2] = {(fopAc_ac_c *) this, mActorMngr[2].getActorP()};
    dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], 0, 0, 0, 0, 0, 0, 0, 0);
    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (iVar5) {
            case 0:
                initTalk(this_00->getFlowNodeNo(), &actors[0]);
        }
    }
    switch (iVar5) {
        case 0:
            iVar5 = talkProc(NULL, 0, &actors[0], 0);
            if (iVar5 && mFlow.checkEndFlow() == 1) {
                rv = 1;
            }
    }
    return rv;
}

/* 80A1705C-80A173D8 002A3C 037C+00 1/0 0/0 0/0 .text
 * cutConfidentialConversation__13daNpc_Jagar_cFi               */
int daNpc_Jagar_c::cutConfidentialConversation(int param_0) {
    int rv = 0;
    int iVar8 = -1;
    int iVar7 = 0;
    int* piVar2 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if(piVar2) {
        iVar8 = *piVar2;
    }
    piVar2 = dComIfGp_evmng_getMyIntegerP(param_0, "msgNo");
    if(piVar2) {
        iVar7 = *piVar2;
    }
    fopAc_ac_c* actors[2] = {(fopAc_ac_c *) this, mActorMngr[2].getActorP()};
    dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], 0, 0, 0, 0, 0, 0, 0, 0);
    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (iVar8) {
            case 0:
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                initTalk(0xd7, &actors[0]);
                break;
            case 1:
                dComIfGp_getEvent().setPt2(mActorMngr[1].getActorP());
            case 2:
                break;
        }
    }
    int local_30[3] = {-1, -1, -1};
    switch (iVar8) {
        case 0:
        case 1:
        case 2:
        case 3: {
            if (iVar8 == 0 || iVar8 == 2) {
                mJntAnm.lookActor(mActorMngr[2].getActorP(), -40.0f, 0);
            } else if (iVar8 == 1) {
                fopAc_ac_c* pfVar3 = mActorMngr[1].getActorP();
                mJntAnm.lookActor(pfVar3, 0.0f, 0);
            }
            local_30[0] = iVar7;
            if (talkProc(&local_30[0], 0, &actors[0], 0)) {
                if (iVar7 == 0) {
                    if (mFlow.checkEndFlow()) {
                        rv = 1;
                    }
                } else {
                    rv = 1;
                }
            }
            break;
        }

        case 4:
            mEvtNo = 7;
            evtChange();
            break;
    }
    return rv;
}

/* 80A173D8-80A17898 002DB8 04C0+00 3/0 0/0 0/0 .text            cutFindWolf__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutFindWolf(int param_0) {
    int rv = 0;
    int uVar6 = -1;
    int iVar4 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar1 != NULL) {
        uVar6 = *piVar1;
    }
    int* puVar2 = dComIfGp_evmng_getMyIntegerP(param_0, "timer");
    if (puVar2 != NULL) {
        iVar4 = *puVar2;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (uVar6) {
            case 0:
                mFaceMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                mSound.startCreatureVoice(Z2SE_JAGA_V_SURPRISE, -1);
                mPlayerAngle = fopAcM_searchActorAngleY(this, daPy_getPlayerActorClass());
                if (checkStep()) {
                    mStepMode = 0;
                }
                dComIfGp_getVibration().StartShock(9, 15, cXyz(0.0f, 1.0f, 0.0f));
                break;
            case 2:
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(15, -1.0f, 0, 0);
                current.angle.y = home.angle.y;
                if ((s16)(mPlayerAngle - home.angle.y) > 0) {
                    current.angle.y = current.angle.y + -0x4000;
                } else {
                    current.angle.y = current.angle.y + 0x4000;
                    
                }
                mEventTimer = iVar4;
                break;
            case 3:
                mFaceMotionSeqMngr.setNo(8, 0.0f, 0, 0);
                mMotionSeqMngr.setNo(5, 0.0f, 0, 0);
                setPos(home.pos);
                setAngle(home.angle.y);
                speedF = 0;
                speed.setall(0.0f);
                mAcch.ClrWallNone();
                mHide = 1;
                break;
            case 11:
                mEventTimer = iVar4;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 1:
                break;
        }
    }
    switch (uVar6) {
        case 0:
            mJntAnm.lookPlayer(0);
            if (mPlayerAngle == mCurAngle.y) {
                rv = 1;
            } else {
                step(mPlayerAngle, -1, -1, 15, 0);
            }
            break;
        case 1:
            mJntAnm.lookPlayer(0);
            rv = 1;
            break;
        case 2:
            mJntAnm.lookPlayer(0);
            cLib_chaseS(&shape_angle.y, current.angle.y, 0x800);
            mCurAngle.y = shape_angle.y;
            field_0xd7e.y = mCurAngle.y;
            cLib_chaseF(&speedF, daNpc_Jagar_Param_c::m.field_0x98, 0.5f);
            mAcch.SetWallNone();
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
            break;
        case 3:
            mJntAnm.lookNone(0);
            rv = 1;
            break;
        case 10:
            if (mMotionSeqMngr.getStepNo() > 0) {
                rv = 1;
            }
            break;
        case 11:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
    }
    return rv;
}

/* 80A17898-80A17924 003278 008C+00 1/1 0/0 0/0 .text            chkSitMotion__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkSitMotion() {
    if ((daNpcT_chkEvtBit(0x235) != 0)) {
        if (field_0x1002) {
            return 0;
        }
    } else if (daNpcT_chkEvtBit(0x1c) != 0) {
        if (daNpcT_chkEvtBit(0x87) != 0) {
            return 0;
        } else if (field_0x1002) {
            return 0;
        }
    }
    return 1;
}

/* 80A17924-80A17984 003304 0060+00 1/1 0/0 0/0 .text            chkSitMotion2__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkSitMotion2() {
    if (daNpcT_chkEvtBit(0x235) != 0) {
        if (daNpcT_chkEvtBit(0x224) != 0) {
            return 1;
        }
    } else {
        if (daNpcT_chkEvtBit(0x8a) != 0) {
            return 1;
        }
    }
    return 0;
}

/* 80A17984-80A179F8 003364 0074+00 3/3 0/0 0/0 .text            chkChuMotion__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkChuMotion() {
    if (daNpcT_chkEvtBit(0x235) == 0 && daNpcT_chkEvtBit(0x1c) != 0) {
        if (daNpcT_chkEvtBit(0x87) != 0) {
            return false;
        } else {
            return field_0x1001 == 0 ? 1 : 0;
        }
    }
    return false;
}

/* 80A179F8-80A17A2C 0033D8 0034+00 1/1 0/0 0/0 .text            chkToMotion__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkToMotion() {
    // NONMATCHING
    u8 rv = 0;
    if (mMotionSeqMngr.getNo() == 10 || mMotionSeqMngr.getNo() == 11 || mMotionSeqMngr.getNo() == 12 || mMotionSeqMngr.getNo() == 13) {
        rv = 1;
    }
    return rv;
}

/* 80A17A2C-80A1856C 00340C 0B40+00 1/0 0/0 0/0 .text            wait__13daNpc_Jagar_cFPv */
int daNpc_Jagar_c::wait(void* param_0) {
    cXyz cStack_24;
    field_0x1004 = 0;
    if (mType == TYPE_0) {
        if(chkSitMotion2()) {
            field_0x1004 = 2;
        } else if (chkSitMotion()) {
            if (chkChuMotion()) {
                field_0x1004 = 1;
            }else {
                field_0x1004 = 2;
            }
        }
    }

    if (field_0x1004 != field_0x1003) {
        mMode = 1;
    }

    switch(mMode) {
        case 0:
        case 1:
            if (mCreating) {
                    switch (field_0x1004) {
                        case 0:
                            if (mType == TYPE_2) {
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(17, -1.0, 0, 0);
                            } else {
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(0, -1.0, 0, 0);
                            }
                            field_0x1003 = 0;
                            break;
                        case 1:
                            mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(2, -1.0, 0, 0);
                            field_0x1003 = 1;
                            break;
                        case 2:
                            mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(3, -1.0, 0, 0);
                            field_0x1003 = 2;
                    }
                    mMode = 2;
                
            } else {
                if (!mStagger.checkStagger()) {
                    switch (field_0x1004) {
                        case 0:
                            switch (field_0x1003) {
                                case 2:
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(10, -1.0, 0, 0);
                                    break;
                                default:
                                    if (mType == TYPE_2) {
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(17, -1.0, 0, 0);
                                    } else {
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(0, -1.0, 0, 0);
                                    }
                                    field_0x1003 = 0;
                            }
                            break;
                        case 1:
                            switch (field_0x1003) {
                                case 2:
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(11, -1.0, 0, 0);
                                    break;
                                default:
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(2, -1.0, 0, 0);
                                    field_0x1003 = 1;
                            }
                            break;
                        case 2:
                            if (home.angle.y == mCurAngle.y) {
                                switch (field_0x1003) {
                                    case 0:
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(13, -1.0, 0, 0);
                                        break;
                                    case 1:
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(12, -1.0, 0, 0);
                                }
                            }
                    }
                    mMode = 2;
                }
            }
        case 2:
            switch (mType) {
                case TYPE_0:
                    daNpcT_offTmpBit(0x10);
                    cStack_24.set(daNpc_Jagar_Param_c::m.field_0x54, 10.0f, daNpc_Jagar_Param_c::m.field_0x54);
                    if (chkPointInArea(daPy_getPlayerActorClass()->current.pos, current.pos,
                        cStack_24, 0)) {
                        if (daPy_getPlayerActorClass()->checkPlayerFly()) {
                            if (daPy_getPlayerActorClass()->checkClimbEndHang()) {
                                field_0x1002 = 1;
                            }
                        }
                        daNpcT_onTmpBit(0x10);
                    }
                    if (!daNpcT_chkEvtBit(0x235)) {
                        if (!daNpcT_chkEvtBit(0xae) && daNpcT_chkTmpBit(0x1b)) {
                            mEvtNo = 4;
                        } else {
                            if (chkSitMotion() || field_0x1002 != 0) {
                                if (!daNpcT_chkEvtBit(0x235) && !daNpcT_chkEvtBit(0x87) &&
                                daNpcT_chkTmpBit(0x10)) {
                                    if (daPy_getPlayerActorClass()->eventInfo.chkCondition(1) != 0 ? 1 : 0) {
                                        mEvtNo = 3;
                                    }
                                }
                            }
                        }
                    }
                    break;
                case TYPE_2:
                    if (!mHide) {
                        if (daNpcT_c::chkFindWolf(mCurAngle.y, daNpcT_getDistTableIdx(field_0xff0, field_0xff4),
                                                  field_0xfec, daNpc_Jagar_Param_c::m.field_0x54, 180.0f,
                                                  daNpc_Jagar_Param_c::m.field_0x58,
                                                  daNpc_Jagar_Param_c::m.field_0x5c, 1)) {
                            mEvtNo = 8;
                        }
                    }
            }

            if (!mStagger.checkStagger()) {
                if (chkToMotion()) {
                    if (mMotionSeqMngr.getStepNo() > 0) {
                        switch (field_0x1004) {
                            case 0:
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                                field_0x1003 = 0;
                                break;
                            case 1:
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                                field_0x1003 = 1;
                                break;
                            case 2:
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(3, -1.0f, 0, 0);
                                field_0x1003 = 2;
                        }
                    } else {
                        if (mMotionSeqMngr.getNo() != 11) {
                            attention_info.flags = 0;
                        }
                    }
                    mJntAnm.lookNone(0);
                    break;
                }
                if (field_0x1004 == 2) {
                    mPlayerActorMngr.remove();
                } else if (field_0x1004 == 1) {
                    mPlayerActorMngr.entry((fopAc_ac_c*)daPy_getPlayerActorClass());
                }

                if (mPlayerActorMngr.getActorP()) {
                    mJntAnm.lookPlayer(0);
                    if (!chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                        mJntAnm.lookNone(0);
                    }

                    if (!srchPlayerActor()) {
                        if (home.angle.y == mCurAngle.y) {
                            mMode = 1;
                        }

                        if (field_0x1003 == 1) {
                            if (!daNpcT_chkEvtBit(0x86)) {
                                daNpcT_onEvtBit(0x86);
                            }
                            field_0x1001 = 1;
                        }
                    }
                } else {
                    mJntAnm.lookNone(0);
                    if (home.angle.y != mCurAngle.y) {
                        if (field_0xe34) {
                            if (step(home.angle.y, 8, 14, 15, 0)) {
                                mMode = 1;
                            } 
                        } else {
                            setAngle(home.angle.y);
                            mMode = 1;
                        }
                        attention_info.flags = 0;
                    } else {
                        srchPlayerActor();
                    }
                }
            }
            break;
        case 3:
            break;
    }
    return 1;
}

/* 80A1856C-80A18B74 003F4C 0608+00 1/0 0/0 0/0 .text            talkwithBou__13daNpc_Jagar_cFPv */
int daNpc_Jagar_c::talkwithBou(void* param_0) {
    daNpc_Bou_c* bo = (daNpc_Bou_c *)mActorMngr[2].getActorP();
    switch (mMode) {
        case 0:
        case 1:
            if (mStagger.checkStagger() == 0) {
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                mMode = 2;
            }

        case 2:
            if (mHide != 0 && daNpcT_chkEvtBit(0xd3) == 0) {
                f32 actor_dist = fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass());
                if (daNpc_Jagar_Param_c::m.field_0x9c < actor_dist && field_0xe34 == 0) {
                    if (bo) {
                        bo->mHide = 0;
                    }
        
                    mHide = 0;
                }
            }

            if (mHide != 0) {
                fopAcM_setCullSizeBox((fopAc_ac_c *)this, -300.0f, -50.0f, -200.0f, 300.0f, 300.0f, 400.0f);
            } else {
                if (chkFindWolf() || (bo && bo->chkFindWolf())) {
                    mEvtNo = 7;
                }
                if (bo) {
                    if (field_0x1005 == 0) {
                        if (cLib_calcTimer(&field_0xff8) == 0) {
                            if (chkCondition(0) && bo->chkCondition(0)) {
                                field_0xff8 = cLib_getRndValue(45.0f, 135.0f);
                                field_0x1000 ^= 1;
                                if ((field_0x1000 & 0x1) == 0) {
                                    bo->mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                                    f32 zero_f_val = 0.0f;
                                    if (0.0f < zero_f_val + (cM_rnd() - 0.5f)) {
                                        bo->mMotionSeqMngr.setNo(4, -1.0f, 0, 0);
                                    } else {
                                        bo->mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                                    }
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                                } else {
                                    bo->mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                                    bo->mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    f32 val = 0.0f;
                                    if (0.0f < val + (cM_rnd() - 0.5f)) {
                                        mMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    } else {
                                        mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                                    }
                                }
                            }
                        }
                    } else {
                        field_0xff8 = 0;
                    }
                }
                fopAcM_setCullSizeBox((fopAc_ac_c *)this,-300.0f,-50.0f,-300.0f,300.0f,450.0f,300.0f);
            }

            if (bo) {
                mJntAnm.lookActor((fopAc_ac_c *)bo, -40.0f, 0);
            } else {
                mJntAnm.lookNone(0);
            }

            break;

        case 3:
            break;

        default:
            break;
    }

    return 1;
}

/* REGALLOC ISSUE */
/* 80A18B74-80A18F28 004554 03B4+00 3/0 0/0 0/0 .text            talk__13daNpc_Jagar_cFPv */
int daNpc_Jagar_c::talk(void* param_0) {
    switch(mMode) {
        case 0:
        case 1:
        if (!mStagger.checkStagger()) {
            if (mType == TYPE_1) {
                daNpc_Bou_c *bo = (daNpc_Bou_c *)mActorMngr[2].getActorP();
                if (bo && bo->getType() == TYPE_1 && ((bo->mStagger.checkStagger()) ? 0 : 1)) {
                    bo->mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                    if (0.0f < -10.0f + (cM_rnd() - 0.5f)) {
                        bo->mMotionSeqMngr.setNo(4, -1.0f, 0, 0);
                    } else {
                        bo->mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                    }
                }
                switch (field_0xfec) {
                    case 4:
                        initTalk(0xd6, NULL); 
                        break;
                    default:
                        initTalk(0xd5, NULL);
                }
            } else {
                initTalk(mFlowNodeNo, NULL);
            }
            mMode = 2;
        }
        case 2:
            if (!mStagger.checkStagger()) {
                if (mTwilight != 0 || mPlayerAngle == mCurAngle.y || mType == TYPE_1 || field_0x1003 != 0) {
                    if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                        mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                        dComIfGp_event_reset();
                        mMode = 3;
                    }

                    if (mType == TYPE_1) {
                        mJntAnm.lookActor(mActorMngr[2].getActorP(), -40.0f, 0);
                    } else {
                        mJntAnm.lookPlayer(0);
                        if (mTwilight != 0 || field_0x1003 == 2) {
                            mJntAnm.lookNone(0);
                        }
                    }
                } else {
                    mJntAnm.lookPlayer(0);
                    step(mPlayerAngle, 8, 14, 15, 0);
                }
            }
            break;
        case 3:
        default:
            break;
    }
    return 0;
}

/* 80A18F28-80A18F48 004908 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Create__FPv */
static int daNpc_Jagar_Create(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->create();
}

/* 80A18F48-80A18F68 004928 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Delete__FPv */
static int daNpc_Jagar_Delete(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->Delete();
}

/* 80A18F68-80A18F88 004948 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Execute__FPv */
static int daNpc_Jagar_Execute(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->Execute();
}

/* 80A18F88-80A18FA8 004968 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Draw__FPv */
static int daNpc_Jagar_Draw(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->Draw();
}

/* 80A18FA8-80A18FB0 004988 0008+00 1/0 0/0 0/0 .text            daNpc_Jagar_IsDelete__FPv */
static int daNpc_Jagar_IsDelete(void* i_this) {
    return 1;
}

/* 80A1A274-80A1A27C 005C54 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Jagar_cFv */
s32 daNpc_Jagar_c::getEyeballMaterialNo() {
    return true;
}

/* 80A1A27C-80A1A284 005C5C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getHeadJointNo() {
    return 4;
}

/* 80A1A284-80A1A28C 005C64 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getNeckJointNo() {
    return 3;
}

/* 80A1A28C-80A1A294 005C6C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Jagar_cFv */
long daNpc_Jagar_c::getBackboneJointNo() {
    return 1;
}

/* 80A1A2B4-80A1A2BC 005C94 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getFootLJointNo() {
    return 22;
}

/* 80A1A2BC-80A1A2C4 005C9C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getFootRJointNo() {
    return 26;
}

/* 80A1AC10-80A1AC30 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Jagar_MethodTable */
static actor_method_class daNpc_Jagar_MethodTable = {
    (process_method_func)daNpc_Jagar_Create,
    (process_method_func)daNpc_Jagar_Delete,
    (process_method_func)daNpc_Jagar_Execute,
    (process_method_func)daNpc_Jagar_IsDelete,
    (process_method_func)daNpc_Jagar_Draw,
};

/* 80A1AC30-80A1AC60 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_JAGAR */
extern actor_process_profile_definition g_profile_NPC_JAGAR = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_JAGAR,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Jagar_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  345,                      // mPriority
  &daNpc_Jagar_MethodTable, // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

AUDIO_INSTANCES;
