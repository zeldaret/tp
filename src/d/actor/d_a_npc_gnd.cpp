/**
 * @file d_a_npc_gnd.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_gnd.h"
#include "dol2asm.h"


/* 809BE5BC-809BE5C4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {11, 1},
};

/* 809BE5C4-809BE5D4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0},
};

/* 809BE5D4-809BE5DC -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "Gnd",
};

/* 809BE5DC-809BE5E0 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, -1
};

/* 809BE5E0-809BE5E8 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0, l_loadResPtrn0
};

/* 809BE5E8-809BE604 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[1] = {
    {-1, 0, 0, 23, 2, 1, 1}
};

/* 809BE604-809BE620 000068 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[1] = {
    {8, 2, 1, 20, 0, 1, 1, 0},
};

/* 809BE620-809BE630 000084 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {0, -1, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0}, 
    {-1, 0, 0},
};

/* 809BE630-809BE640 000094 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}
};

/* 809BE640-809BE644 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Gnd_c */
SECTION_DATA char* daNpc_Gnd_c::mCutNameList = "";

/* 809BE644-809BE650 0000A8 000C+00 2/2 0/0 0/0 .data            mCutList__11daNpc_Gnd_c */
daNpc_Gnd_c::cutFunc daNpc_Gnd_c::mCutList[1] = {NULL};

/* ############################################################################################## */
/* 809BE4A0-809BE52C 000000 008C+00 6/6 0/0 0/0 .rodata          m__17daNpc_Gnd_Param_c */
const daNpc_Gnd_HIOParam daNpc_Gnd_Param_c::m = {
    280.0f,
    -3.0f,
    1.0f,
    500.0f,
    255.0f,
    260.0f,
    35.0f,
    50.0f,
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
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
};

NPC_GND_HIO_CLASS l_HIO;

/* 809BB60C-809BB730 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__11daNpc_Gnd_cFv */
daNpc_Gnd_c::~daNpc_Gnd_c() {
    OS_REPORT("|%06d:%x|daNpc_Gnd_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }

#if DEBUG
    if (mpHIO != NULL) {
        mpHIO->removeHIO();
    }
#endif

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 809BB730-809BB9D4 000210 02A4+00 1/1 0/0 0/0 .text            create__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::create() {
    fopAcM_SetupActor2(this, daNpc_Gnd_c, l_faceMotionAnmData,
                       l_motionAnmData, l_faceMotionSequenceData, 4,
                       l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;
    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d<%08x> ", fopAcM_getProcNameString(this),
                  mType, mFlowNodeNo, fopAcM_GetParam(this));
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x8000000);
        mSound.init(&current.pos, &eyePos, 3, 1);
#if DEBUG
        mpHIO = &l_HIO;
        // Ganondorf:
        mpHIO->entryHIO("ガノンドロフ");
#endif
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                        &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
                        fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(mpHIO->m.common.weight, 0, this);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mCyl1.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -G_CM3D_F_INF) {
            setEnvTevColor();
            setRoomNo();
        }

        reset();
        mCreating = 1;
        Execute();
        mCreating = 0;
    }

    return rv;
}

/* 809BE54C-809BE550 0000AC 0004+00 3/5 0/0 0/0 .rodata          @4331 */
SECTION_RODATA static f32 const lit_4331 = 1.0f;
COMPILER_STRIP_GATE(0x809BE54C, &lit_4331);

/* 809BB9D4-809BBC70 0004B4 029C+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::CreateHeap() {
    // NONMATCHING
    return 0;
}

/* 809BBE2C-809BBE60 00090C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Gnd_c();
    return 1;
}

/* 809BBE60-809BBE80 000940 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::Execute() {
    return daNpcT_c::execute();
}

/* 809BBE80-809BBF44 000960 00C4+00 1/1 0/0 0/0 .text            Draw__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::Draw() {
    J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
    if (mpMatAnm[0] != NULL) {
        modelData->getMaterialNodePointer(getEyeballLMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    if (mpMatAnm[1] != NULL) {
        modelData->getMaterialNodePointer(getEyeballRMaterialNo())->setMaterialAnm(mpMatAnm[1]);
    }

    return daNpcT_c::draw(0, 1, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 809BBF44-809BBF64 000A24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Gnd_cFP10fopAc_ac_c              */
int daNpc_Gnd_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->CreateHeap();
}

/* 809BBF64-809BBFBC 000A44 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Gnd_cFP8J3DJointi
 */
int daNpc_Gnd_c::ctrlJointCallBack(J3DJoint* i_joint, int arg1) {
    if (arg1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Gnd_c* i_this = reinterpret_cast<daNpc_Gnd_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809BBFBC-809BBFDC 000A9C 0020+00 1/1 0/0 0/0 .text            getType__11daNpc_Gnd_cFv */
u8 daNpc_Gnd_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        default:
            return TYPE_1;
    }
}

/* 809BBFDC-809BBFF8 000ABC 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::getFlowNodeNo() {
    u16 nodeNo = home.angle.x;
    if (nodeNo == 0xffff) {
        return -1;
    }
    return nodeNo;
}

/* 809BBFF8-809BC028 000AD8 0030+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::isDelete() {
    if (mType == TYPE_1) {
        return 0;
    }

    switch (mType) {
        case TYPE_0:
            return 0;
        default: {
            return 1;
        }
    }
}

/* 809BC028-809BC168 000B08 0140+00 1/1 0/0 0/0 .text            reset__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::reset() {
    // NONMATCHING
}

/* 809BC168-809BC1F4 000C48 008C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Gnd_cFi */
void daNpc_Gnd_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* ############################################################################################## */
/* 809BE554-809BE558 0000B4 0004+00 3/3 0/0 0/0 .rodata          @4552 */
SECTION_RODATA static f32 const lit_4552 = -1.0f;
COMPILER_STRIP_GATE(0x809BE554, &lit_4552);

/* 809BC1F4-809BC328 000CD4 0134+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_Gnd_cFv */
BOOL daNpc_Gnd_c::ctrlBtk() {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BC328-809BC448 000E08 0120+00 1/0 0/0 0/0 .text            setParam__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::setParam() {
    // NONMATCHING
}

/* 809BC448-809BC4A8 000F28 0060+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Gnd_cFv
 */
void daNpc_Gnd_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 809BC4A8-809BC4AC 000F88 0004+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::srchActors() {
    /* empty function */
}

/* 809BC4AC-809BC5AC 000F8C 0100+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Gnd_cFv */
BOOL daNpc_Gnd_c::evtTalk() {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BC5AC-809BC674 00108C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Gnd_cFv */
BOOL daNpc_Gnd_c::evtCutProc() {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BC674-809BC760 001154 00EC+00 1/0 0/0 0/0 .text            action__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::action() {
    // NONMATCHING
}

/* 809BC760-809BC7D8 001240 0078+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809BE558-809BE55C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4723 = 10.0f;
COMPILER_STRIP_GATE(0x809BE558, &lit_4723);
#pragma pop

/* 809BE55C-809BE560 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4724 = 30.0f;
COMPILER_STRIP_GATE(0x809BE55C, &lit_4724);
#pragma pop

/* 809BE560-809BE568 0000C0 0004+04 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4725[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x809BE560, &lit_4725);
#pragma pop

/* 809BE568-809BE570 0000C8 0008+00 1/3 0/0 0/0 .rodata          @4727 */
SECTION_RODATA static u8 const lit_4727[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE568, &lit_4727);

/* 809BC7D8-809BCA14 0012B8 023C+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::setAttnPos() {
    // NONMATCHING
}

/* 809BCA14-809BCB48 0014F4 0134+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::setCollision() {
    // NONMATCHING
}

/* 809BCB48-809BCB50 001628 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Gnd_cFv */
int daNpc_Gnd_c::drawDbgInfo() {
    return 0;
}

/* 809BCB50-809BCCE8 001630 0198+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_Gnd_cFiifi */
bool daNpc_Gnd_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
    return false; // Placeholder
}

/* 809BCCE8-809BCD30 0017C8 0048+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Gnd_cFv */
void daNpc_Gnd_c::selectAction() {
    // NONMATCHING
}

/* 809BCD30-809BCD5C 001810 002C+00 1/1 0/0 0/0 .text
 * chkAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i            */
void daNpc_Gnd_c::chkAction(int (daNpc_Gnd_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809BCD5C-809BCE04 00183C 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i            */
void daNpc_Gnd_c::setAction(int (daNpc_Gnd_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809BCE04-809BD050 0018E4 024C+00 1/0 0/0 0/0 .text            wait__11daNpc_Gnd_cFPv */
void daNpc_Gnd_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809BD050-809BD248 001B30 01F8+00 2/0 0/0 0/0 .text            talk__11daNpc_Gnd_cFPv */
void daNpc_Gnd_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809BD248-809BD268 001D28 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Create__FPv */
static int daNpc_Gnd_Create(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->create();
}

/* 809BD268-809BD288 001D48 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Delete__FPv */
static int daNpc_Gnd_Delete(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->Delete();
}

/* 809BD288-809BD2A8 001D68 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Execute__FPv */
static int daNpc_Gnd_Execute(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->Execute();
}

/* 809BD2A8-809BD2C8 001D88 0020+00 1/0 0/0 0/0 .text            daNpc_Gnd_Draw__FPv */
static int daNpc_Gnd_Draw(void* i_this) {
    return static_cast<daNpc_Gnd_c*>(i_this)->Draw();
}

/* 809BD2C8-809BD2D0 001DA8 0008+00 1/0 0/0 0/0 .text            daNpc_Gnd_IsDelete__FPv */
static int daNpc_Gnd_IsDelete(void* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 809BE570-809BE578 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4785 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4785[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE570, &lit_4785);
#pragma pop

/* 809BE578-809BE580 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4786 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4786[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE578, &lit_4786);
#pragma pop

/* 809BE580-809BE588 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4787 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4787[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809BE580, &lit_4787);
#pragma pop

extern "C" void talk__11daNpc_Gnd_cFPv();
/* 809BE650-809BE65C -00001 000C+00 1/1 0/0 0/0 .data            @4607 */
SECTION_DATA static void* lit_4607[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Gnd_cFPv,
};

/* 809BE65C-809BE668 -00001 000C+00 1/1 0/0 0/0 .data            @4617 */
SECTION_DATA static void* lit_4617[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Gnd_cFPv,
};

/* 809BE668-809BE670 0000CC 0008+00 0/1 0/0 0/0 .data            brkAnmData$4830 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brkAnmData[8] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809BE670-809BE678 0000D4 0008+00 0/1 0/0 0/0 .data            bpkAnmData$4831 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bpkAnmData[8] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

extern "C" void wait__11daNpc_Gnd_cFPv();
/* 809BE678-809BE684 -00001 000C+00 1/1 0/0 0/0 .data            @4881 */
SECTION_DATA static void* lit_4881[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Gnd_cFPv,
};

/* 809BE684-809BE6A4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Gnd_MethodTable */
static actor_method_class daNpc_Gnd_MethodTable = {
    (process_method_func)daNpc_Gnd_Create,
    (process_method_func)daNpc_Gnd_Delete,
    (process_method_func)daNpc_Gnd_Execute,
    (process_method_func)daNpc_Gnd_IsDelete,
    (process_method_func)daNpc_Gnd_Draw,
};

/* 809BE6A4-809BE6D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GND */
extern actor_process_profile_definition g_profile_NPC_GND = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GND,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Gnd_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  305,                    // mPriority
  &daNpc_Gnd_MethodTable, // sub_method
  0x00044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
