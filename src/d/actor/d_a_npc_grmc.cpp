/**
 * @file d_a_npc_grmc.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_grmc.h"

enum grC_RES_File_ID {
    /* BCK */
    /* 0x05 */ BCK_GRC_F_CHEERFUL = 0x5,
    /* 0x06 */ BCK_GRC_F_CHEERFUL_T,
    /* 0x07 */ BCK_GRC_GRUMPY,
    /* 0x08 */ BCK_GRC_GRUMPY_T,
    /* 0x09 */ BCK_GRC_F_SAD_TALK,
    /* 0x0A */ BCK_GRC_F_TALK_A,
    /* 0x0B */ BCK_GRC_F_WAIT_A,
    /* 0x0C */ BCK_GRC_FH_CLOSEEYE,
    /* 0x0D */ BCK_GRC_FH_SAD_TALK,
    /* 0x0E */ BCK_GRC_GET_UP,
    /* 0x0F */ BCK_GRC_SAD_TALK,
    /* 0x10 */ BCK_GRC_SAD_WAIT,
    /* 0x11 */ BCK_GRC_SIT_A,
    /* 0x12 */ BCK_GRC_STEP,
    /* 0x13 */ BCK_GRC_TALK_A,
    /* 0x14 */ BCK_GRC_TALK_B,
    /* 0x15 */ BCK_GRC_TOSIT_A,
    /* 0x16 */ BCK_GRC_WAIT_A,

    /* BTK */
    /* 0x19 */ BTK_GRC_A = 0x19,

    /* BTP */
    /* 0x1C */ BTP_GRC_A = 0x1C,
    /* 0x1D */ BTP_GRC_F_CHEERFUL_T,
    /* 0x1E */ BTP_GRC_F_GRUMPY_T,
    /* 0x1F */ BTP_GRC_F_SAD_TALK,
    /* 0x20 */ BTP_GRC_FH_CLOSEEYE,
    /* 0x21 */ BTP_GRC_FH_SAD_TALK,
};

enum grC_Mdl_RES_File_ID {
    /* BMDR */
    /* 0x3 */ BMDR_GRC_A = 0x3,
};

enum RES_Name {
    /* 0x0 */ NONE,
    /* 0x1 */ GRC,
    /* 0x2 */ GRC_MDL,
};

enum FaceMotion {
    /* 0x0 */ FACE_TALK_A,
    /* 0x1 */ FACE_GRUMPY_T,
    /* 0x2 */ FACE_CHEERFUL_T,
    /* 0x9 */ FACE_SAD_TALK = 0x9,
    /* 0xA */ FACE_GRUMPY,
    /* 0xB */ FACE_CHEERFUL,
    /* 0xC */ FACE_H_SAD_TALK,
    /* 0xD */ FACE_WAIT_A,
};

enum Motion {
    /* 0x0 */ MOT_WAIT_A,
    /* 0x1 */ MOT_GET_UP,
    /* 0x2 */ MOT_TALK_A,
    /* 0x3 */ MOT_TALK_B,
    /* 0x4 */ MOT_TOSIT_A,
    /* 0x5 */ MOT_SIT_A,
    /* 0x6 */ MOT_SAD_TALK,
    /* 0x8 */ MOT_SAD_WAIT = 0x8,
};

/* 809D9EAC-809D9EB4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {BMDR_GRC_A, GRC_MDL},
};  

/* 809D9EB4-809D9EC4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
};

/* 809D9EC4-809D9ED0 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[3] = {
    "",
    "grC",
    "grC_Mdl",
};

/* 809D9ED0-809D9ED4 000044 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[3] = {
    1, 2, -1,
};

/* 809D9ED4-809D9ED8 -00001 0004+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[1] = {l_loadResPtrn0};

/* 809D9ED8-809D9FD4 00004C 00FC+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[9] = {
    {-1, 0, J3DFrameCtrl::EMode_NONE, BTP_GRC_A, J3DFrameCtrl::EMode_LOOP, GRC, 1},
    {BCK_GRC_F_WAIT_A, J3DFrameCtrl::EMode_LOOP, GRC, BTP_GRC_A, J3DFrameCtrl::EMode_LOOP, GRC, 1},
    {BCK_GRC_GRUMPY, J3DFrameCtrl::EMode_LOOP, GRC, BTP_GRC_A, J3DFrameCtrl::EMode_LOOP, GRC, 1},
    {BCK_GRC_F_CHEERFUL, J3DFrameCtrl::EMode_LOOP, GRC, BTP_GRC_A, J3DFrameCtrl::EMode_LOOP, GRC, 1},
    {BCK_GRC_FH_SAD_TALK, J3DFrameCtrl::EMode_LOOP, GRC, BTP_GRC_FH_SAD_TALK, J3DFrameCtrl::EMode_LOOP, GRC, 1},
    {BCK_GRC_F_TALK_A, J3DFrameCtrl::EMode_NONE, GRC, BTP_GRC_A, J3DFrameCtrl::EMode_LOOP, GRC, 1},
    {BCK_GRC_GRUMPY_T, J3DFrameCtrl::EMode_NONE, GRC, BTP_GRC_F_GRUMPY_T, J3DFrameCtrl::EMode_NONE, GRC, 1},
    {BCK_GRC_F_CHEERFUL_T, J3DFrameCtrl::EMode_NONE, GRC, BTP_GRC_F_CHEERFUL_T, J3DFrameCtrl::EMode_NONE, GRC, 1},
    {BCK_GRC_F_SAD_TALK, J3DFrameCtrl::EMode_NONE, GRC, BTP_GRC_F_SAD_TALK, J3DFrameCtrl::EMode_NONE, GRC, 1},
};

/* 809D9FD4-809DA0D0 000148 00FC+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[9] = {
    {BCK_GRC_WAIT_A, J3DFrameCtrl::EMode_LOOP, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_TALK_A, J3DFrameCtrl::EMode_LOOP, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_TALK_B, J3DFrameCtrl::EMode_LOOP, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_SAD_TALK, J3DFrameCtrl::EMode_NONE, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_SIT_A, J3DFrameCtrl::EMode_LOOP, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_TOSIT_A, J3DFrameCtrl::EMode_NONE, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_GET_UP, J3DFrameCtrl::EMode_NONE, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_SAD_WAIT, J3DFrameCtrl::EMode_NONE, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
    {BCK_GRC_STEP, J3DFrameCtrl::EMode_NONE, GRC, BTK_GRC_A, J3DFrameCtrl::EMode_NONE, GRC, 0, 0},
};

/* 809DA0D0-809DA1B0 000244 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[56] = {
    {5, -1, 1}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 1}, {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 809DA1B0-809DA240 000324 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[36] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 809DA240-809DA244 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_grMC_c */
char* daNpc_grMC_c::mCutNameList = "";

/* 809DA244-809DA250 0003B8 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_grMC_c */
daNpc_grMC_c::cutFunc daNpc_grMC_c::mCutList[1] = {
    NULL,
};

/* 809D740C-809D7534 0000EC 0128+00 1/0 0/0 0/0 .text            __dt__12daNpc_grMC_cFv */
daNpc_grMC_c::~daNpc_grMC_c() {
    deleteObject();

    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 809D9D70-809D9DFC 000000 008C+00 8/8 0/0 0/0 .rodata          m__18daNpc_grMC_Param_c */
daNpc_grMC_HIOParam const daNpc_grMC_Param_c::m = {
    140.0f,
    -3.0f,
    1.0f,
    600.0f,
    255.0f,
    140.0f,
    35.0f,
    50.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -46.0f,
    0.6f,
    12.0f,
    5,
    2,
    5,
    2,
    0.0f,
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
    -20.0f,
    0.0f,
    -20.0f,
    20.0f,
    40.0f,
    20.0f,
    110.0f
};

/* 809D7534-809D77BC 000214 0288+00 1/1 0/0 0/0 .text            create__12daNpc_grMC_cFv */
cPhs__Step daNpc_grMC_c::create() {
    fopAcM_SetupActor2(this, daNpc_grMC_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData, 4,
                       l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x35D0)) {
            return cPhs_ERROR_e;
        }

        // OS_REPORT("\t(%s:%d) flowNo:%d, MaxItem:%d, group:%d<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo, getMaxNumItem(), getGroupId(), fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        J3DModel* model = mpMorf[0]->getModel();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        mCcStts.Init(daNpc_grMC_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);

        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 809D77BC-809D79BC 00049C 0200+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_grMC_cFv */
int daNpc_grMC_c::CreateHeap() {
    int bmdIdx = mTwilight == true ? NONE : NONE;
    
    J3DModelData* mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdIdx][1]], l_bmdData[bmdIdx][0]));

    JUT_ASSERT(701, 0 != mdlData_p);

    mpMorf[0] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm[0] = NULL;

    if (setFaceMotionAnm(5, false) && setMotionAnm(0, 0.0f, FALSE)) {
        mFaceMotionSeqMngr.setNo(FACE_WAIT_A, -1.0f, FALSE, 0);
        mMotionSeqMngr.setNo(MOT_SIT_A, -1.0f, FALSE, 0);
        return 1;
    }

    return 0;
}

/* 809D79BC-809D79F0 00069C 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_grMC_cFv */
int daNpc_grMC_c::Delete() {
    this->~daNpc_grMC_c();
    return 1;
}

/* 809D79F0-809D7AD4 0006D0 00E4+00 2/2 0/0 0/0 .text            Execute__12daNpc_grMC_cFv */
int daNpc_grMC_c::Execute() {
    if (!mCreating && !checkShopOpen() && mType == 0 && field_0x10dd == 0) {
        initShopSystem();
        setSellItemMax(getMaxNumItem());
        field_0xf60 = -1;
        setMasterType(5);
        mShopCamAction.setCamDataIdx(0);
        mShopCamAction.setCamAction(NULL);
        field_0x10dd = 1;
    }

    execute();

    if (field_0x10dd != 0 && searchItemActor()) {
        mShopCamAction.move();
    }

    return 1;
}

/* 809D7AD4-809D7B18 0007B4 0044+00 1/1 0/0 0/0 .text            Draw__12daNpc_grMC_cFv */
int daNpc_grMC_c::Draw() {
    return draw(
        #ifdef DEBUG
        chkAction(&daNpc_grMC_c::test),
        #else
        FALSE,
        #endif
        FALSE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE
    );
}

/* 809D7B18-809D7B38 0007F8 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__12daNpc_grMC_cFP10fopAc_ac_c */
int daNpc_grMC_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_grMC_c* i_this = (daNpc_grMC_c*)a_this;
    return i_this->CreateHeap();
}

/* 809D7B38-809D7B90 000818 0058+00 2/2 0/0 0/0 .text            ctrlJointCallBack__12daNpc_grMC_cFP8J3DJointi */
int daNpc_grMC_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_grMC_c* i_this = (daNpc_grMC_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809D7B90-809D7B98 000870 0008+00 1/1 0/0 0/0 .text            getType__12daNpc_grMC_cFv */
u8 daNpc_grMC_c::getType() {
    return 0;
}

/* 809D7B98-809D7BB4 000878 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_grMC_cFv */
int daNpc_grMC_c::getFlowNodeNo() {
    u16 rv = home.angle.x;

    if (rv == 0xFFFF) {
        return -1;
    }

    return rv;
}

/* 809D7BB4-809D7BC0 000894 000C+00 1/1 0/0 0/0 .text            getMaxNumItem__12daNpc_grMC_cFv */
u8 daNpc_grMC_c::getMaxNumItem() {
    return (fopAcM_GetParam(this) & 0xF000000) >> 24;
}

/* 809D7BC0-809D7C34 0008A0 0074+00 1/1 0/0 0/0 .text            isDelete__12daNpc_grMC_cFv */
BOOL daNpc_grMC_c::isDelete() {
    if (mType == 0 && 
        /* dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear */
        daNpcF_chkEvtBit(64) &&
        (!(dComIfGs_getTime() >= 90.0f) || !(dComIfGs_getTime() < 270.0f))) {
        return FALSE;
    }

    return TRUE;
}

/* 809D7C34-809D7D48 000914 0114+00 1/1 0/0 0/0 .text            reset__12daNpc_grMC_cFv */
void daNpc_grMC_c::reset() {
    initialize();
    int size = (u8*)&field_0x10e0 - (u8*)&mNextAction;
    memset(&mNextAction, 0, size);
    setAngle(home.angle.y);
}

/* 809D7D48-809D7DD4 000A28 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_grMC_cFi */
void daNpc_grMC_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 809D7DD4-809D7F28 000AB4 0154+00 1/0 0/0 0/0 .text            setParam__12daNpc_grMC_cFv */
void daNpc_grMC_c::setParam() {
    u32 uVar1 = 10;

    if (field_0x10dc != 0) {
        if (field_0x10d8 == 2) {
            mShopCamAction.Reset();
        } else {
            mShopCamAction.EventRecoverNotime();
        }

        field_0x10dc = 0;
    }

    selectAction();

    if (!mTwilight && daPy_py_c::checkNowWolf()) {
        uVar1 = 0;
    }

    srchActors();
    s16 talk_distance = daNpc_grMC_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_grMC_Param_c::m.common.talk_angle;
    s16 attention_distance = daNpc_grMC_Param_c::m.common.attention_distance;
    s16 attention_angle = daNpc_grMC_Param_c::m.common.attention_angle;

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = uVar1;

    scale.set(daNpc_grMC_Param_c::m.common.scale, daNpc_grMC_Param_c::m.common.scale, daNpc_grMC_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_grMC_Param_c::m.common.weight);
    mCylH = daNpc_grMC_Param_c::m.common.height;
    mWallR = daNpc_grMC_Param_c::m.common.width;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_grMC_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_grMC_Param_c::m.common.real_shadow_size;
    gravity = daNpc_grMC_Param_c::m.common.gravity;
    mExpressionMorfFrame = daNpc_grMC_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_grMC_Param_c::m.common.morf_frame;
}

/* 809D7F28-809D7FCC 000C08 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_grMC_cFv */
void daNpc_grMC_c::setAfterTalkMotion() {
    int i_index;

    switch (mFaceMotionSeqMngr.getNo()) {
        case FACE_GRUMPY_T:
            i_index = FACE_GRUMPY;
            break;

        case FACE_CHEERFUL_T:
            i_index = FACE_CHEERFUL;
            break;

        case FACE_SAD_TALK:
            i_index = FACE_H_SAD_TALK;
            break;

        default:
            i_index = FACE_WAIT_A;
            break;
    }

    mFaceMotionSeqMngr.setNo(i_index, -1.0f, FALSE, 0);
}

/* 809D7FCC-809D7FD0 000CAC 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_grMC_cFv */
void daNpc_grMC_c::srchActors() {
    /* empty function */
}

/* 809D7FD0-809D8174 000CB0 01A4+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_grMC_cFv */
BOOL daNpc_grMC_c::evtTalk() {
    if (field_0x10dd != 0) {
        if (chkAction(&daNpc_grMC_c::shop)) {
            (this->*mAction)(NULL);
        } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
            mShopCamAction.shop_cam_action_init();
            setAction(&daNpc_grMC_c::shop);
        }
    } else if (chkAction(&daNpc_grMC_c::talk)) {
        (this->*mAction)(NULL);
    } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
        setAction(&daNpc_grMC_c::talk);
    }

    return TRUE;
}

/* 809D8174-809D823C 000E54 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_grMC_cFv */
BOOL daNpc_grMC_c::evtCutProc() {
    BOOL rv = FALSE;
    int staffId = dComIfGp_getEventManager().getMyStaffId("grMC", this, -1);

    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList, 1, 0, 0);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        rv = TRUE;
    }

    return rv;
}

/* 809D823C-809D8398 000F1C 015C+00 1/0 0/0 0/0 .text            action__12daNpc_grMC_cFv */
void daNpc_grMC_c::action() {
    if (field_0x10dd == 0) {
        fopAc_ac_c* actor_p = hitChk(&mCyl, -1);
        if (actor_p != NULL) {
            mStagger.setParam(this, actor_p, mCurAngle.y);
            setDamage(0, 13, 0);
            mStagger.setPower(0.0f);
            mDamageTimerStart = 0;
        }
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 809D8398-809D8410 001078 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_grMC_cFv */
void daNpc_grMC_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 809D8410-809D8670 0010F0 0260+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_grMC_cFv */
void daNpc_grMC_c::setAttnPos() {
    cXyz sp48(18.0f, 30.0f, 0.0f);
    
    mStagger.calc(FALSE);
    mJntAnm.setParam(this, mpMorf[0]->getModel(), &sp48, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     daNpc_grMC_Param_c::m.common.body_angleX_min, daNpc_grMC_Param_c::m.common.body_angleX_max,
                     daNpc_grMC_Param_c::m.common.body_angleY_min, daNpc_grMC_Param_c::m.common.body_angleY_max,
                     daNpc_grMC_Param_c::m.common.head_angleX_min, daNpc_grMC_Param_c::m.common.head_angleX_max,
                     daNpc_grMC_Param_c::m.common.head_angleY_min, daNpc_grMC_Param_c::m.common.head_angleY_max,
                     daNpc_grMC_Param_c::m.common.neck_rotation_ratio, 0.0f, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, cM_s2rad((s16)(mCurAngle.y - field_0xd7e.y)));

    J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp48, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, FALSE, 1.0f, 0);
    attention_info.position = current.pos;
    attention_info.position.y += daNpc_grMC_Param_c::m.common.attention_offset;
}

/* 809D8670-809D87A0 001350 0130+00 1/0 0/0 0/0 .text            setCollision__12daNpc_grMC_cFv */
void daNpc_grMC_c::setCollision() {
    cXyz pos;

    if (!mHide) {
        if (mTwilight == true && !dComIfGp_event_runCheck()) {
            mCyl.SetCoSPrm(105);
        } else {
            mCyl.SetCoSPrm(121);
        }

        if (mStagger.checkStagger()) {
            mCyl.SetTgType(0);
            mCyl.SetTgSPrm(0);
        } else {
            mCyl.SetTgType(0xD8FBFDFF);
            mCyl.SetTgSPrm(0x1F);
            mCyl.OnTgNoHitMark();
        }

        f32 height = mCylH;
        f32 width = mWallR;
        pos = current.pos;
        mCyl.SetH(height);
        mCyl.SetR(width);
        mCyl.SetC(pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 809D87A0-809D87A8 001480 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_grMC_cFv */
int daNpc_grMC_c::drawDbgInfo() {
    return 0;
}

/* 809D87A8-809D8808 001488 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_grMC_cFv */
void daNpc_grMC_c::drawOtherMdl() {
    if (field_0x10dd != 0) {
        cXyz sp18;
        itemRotate();
        sp18.set(0.0f, 0.0f, 0.0f);
        itemZoom(&sp18);
        drawCursor();
    }
}

/* 809D8808-809D8850 0014E8 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_grMC_cFv */
BOOL daNpc_grMC_c::selectAction() {
    mNextAction = NULL;
    mNextAction = &daNpc_grMC_c::tend;
    return TRUE;
}

/* 809D8850-809D887C 001530 002C+00 1/1 0/0 0/0 .text            chkAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i */
BOOL daNpc_grMC_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 809D887C-809D8924 00155C 00A8+00 2/2 0/0 0/0 .text            setAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i */
BOOL daNpc_grMC_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 809D8924-809D8AE8 001604 01C4+00 2/0 0/0 0/0 .text            tend__12daNpc_grMC_cFPv */
int daNpc_grMC_c::tend(void* param_1) {
    BOOL bVar1;

    switch (mMode) {
        case 0:
        case 1:
            if (mMotionSeqMngr.getNo() != MOT_SIT_A) {
                mFaceMotionSeqMngr.setNo(FACE_WAIT_A, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(MOT_TOSIT_A, -1.0f, FALSE, 0);
            }

            mMode = 2;
            // fallthrough
        case 2:
            if (field_0x10d8 == 2) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }

            if (srchPlayerActor()) {
                mJntAnm.lookPlayer(0);
                bVar1 = checkStep();
            } else {
                mJntAnm.lookNone(0);
                bVar1 = home.angle.y != mCurAngle.y;
            }

            if (bVar1 && step(home.angle.y, -1, -1, 15, 0)) {
                mMode = 1;
            }
            break;

        case 3:
            break;
    }

    return 1;
}

/* 809D8AE8-809D8C6C 0017C8 0184+00 2/0 0/0 0/0 .text            talk__12daNpc_grMC_cFPv */
int daNpc_grMC_c::talk(void* param_1) {
    BOOL bVar1 = FALSE;

    switch (mMode) {
        case 0:
        case 1:
            initTalk(mFlowNodeNo, NULL);
            mMode = 2;
            // fallthrough
        case 2:
            if (mTwilight) {
                bVar1 = TRUE;
            } else {
                mJntAnm.lookPlayer(0);

                if (&daNpc_grMC_c::tend == mNextAction) {
                    bVar1 = TRUE;
                } else if (mCurAngle.y != fopAcM_searchPlayerAngleY(this)) {
                    step(fopAcM_searchPlayerAngleY(this), -1, -1, 15, 0);
                } else {
                    bVar1 = TRUE;
                }
            }

            if (bVar1 && talkProc(NULL, FALSE, NULL, FALSE)) {
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                dComIfGp_event_reset();
                mMode = 3;
            }
            break;

        case 3:
            break;
    }

    return 0;
}

/* 809D8C6C-809D8D8C 00194C 0120+00 2/0 0/0 0/0 .text            shop__12daNpc_grMC_cFPv */
int daNpc_grMC_c::shop(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (field_0x10d8 == 2) {
                shop_init(true);
            } else {
                mShopCamAction.Save();
                initTalk(mFlowNodeNo, NULL);
                shop_init(false);
            }

            mJntAnm.lookCamera(0);
            mMode = 2;
            // fallthrough
        case 2:
            field_0x10d8 = shop_process(this, &mFlow);

            if (field_0x10d8 != 0) {
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                dComIfGp_event_reset();
                field_0x10dc = 1;
                mMode = 3;
            }
            break;

        case 3:
            break;
    }

    return 0;
}

#ifdef DEBUG
int daNpc_grMC_c::test(void* param_1) {
    int rv = 0;

    switch (mMode) {
        case 0:
        case 1:
            speedF = 0.0f;
            speed.setall(0.0f);
            mMode = 2;
            // fallthrough
        case 2:
            mFaceMotionSeqMngr.setNo(mHIO->param.common.face_expression, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(mHIO->param.common.motion, -1.0f, FALSE, 0);
            mJntAnm.lookNone(0);
            attention_info.flags = 0;
            break;

        case 3:
            break;
    }

    return rv;
}
#endif

/* 809D8D8C-809D8DAC 001A6C 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Create__FPv */
static int daNpc_grMC_Create(void* a_this) {
    return static_cast<daNpc_grMC_c*>(a_this)->create();
}

/* 809D8DAC-809D8DCC 001A8C 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Delete__FPv */
static int daNpc_grMC_Delete(void* a_this) {
    return static_cast<daNpc_grMC_c*>(a_this)->Delete();
}

/* 809D8DCC-809D8DEC 001AAC 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Execute__FPv */
static int daNpc_grMC_Execute(void* a_this) {
    return static_cast<daNpc_grMC_c*>(a_this)->Execute();
}

/* 809D8DEC-809D8E0C 001ACC 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Draw__FPv */
static int daNpc_grMC_Draw(void* a_this) {
    return static_cast<daNpc_grMC_c*>(a_this)->Draw();
}

/* 809D8E0C-809D8E14 001AEC 0008+00 1/0 0/0 0/0 .text            daNpc_grMC_IsDelete__FPv */
static int daNpc_grMC_IsDelete(void* a_this) {
    return 1;
}

/* 809DA46C-809DA470 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_grMC_Param_c l_HIO;

/* 809DA298-809DA2B8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grMC_MethodTable */
static actor_method_class daNpc_grMC_MethodTable = {
    (process_method_func)daNpc_grMC_Create,
    (process_method_func)daNpc_grMC_Delete,
    (process_method_func)daNpc_grMC_Execute,
    (process_method_func)daNpc_grMC_IsDelete,
    (process_method_func)daNpc_grMC_Draw,
};

/* 809DA2B8-809DA2E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRMC */
extern actor_process_profile_definition g_profile_NPC_GRMC = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_GRMC,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_grMC_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  310,                     // mPriority
  &daNpc_grMC_MethodTable, // sub_method
  0x00044107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
