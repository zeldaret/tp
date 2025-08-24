/**
 * @file d_a_npc_kolinb.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kolinb.h"

enum Kolinb_RES_File_ID {
    /* BCK */
    /* 0x07 */ BCK_KOLINB_DISLIKE = 0x7,
    /* 0x08 */ BCK_KOLINB_F_DISLIKE,
    /* 0x09 */ BCK_KOLINB_F_NOD_A,
    /* 0x0A */ BCK_KOLINB_F_NOD_B,
    /* 0x0B */ BCK_KOLINB_F_SUFFER_A,
    /* 0x0C */ BCK_KOLINB_F_SUFFER_B,
    /* 0x0D */ BCK_KOLINB_F_WAIT_A,
    /* 0x0E */ BCK_KOLINB_NOD_A,
    /* 0x0F */ BCK_KOLINB_NOD_B,
    /* 0x10 */ BCK_KOLINB_SUFFER_A,
    /* 0x11 */ BCK_KOLINB_SUFFER_B,
    /* 0x12 */ BCK_KOLINB_WAIT_A,

    /* BMDR */
    /* 0x15 */ BMDR_KOLINB = 0x15,

    /* BTK */
    /* 0x18 */ BTK_KOLINB = 0x18,
    /* 0x19 */ BTK_KOLINB_DISLIKE,
    /* 0x1A */ BTK_KOLINB_NOD_A,
    /* 0x1B */ BTK_KOLINB_NOD_B,

    /* BTP */
    /* 0x1E */ BTP_KOLINB = 0x1E,
    /* 0x1F */ BTP_KOLINB_F_DISLIKE,
    /* 0x20 */ BTP_KOLINB_F_NOD_A,
    /* 0x21 */ BTP_KOLINB_F_NOD_B,
    /* 0x22 */ BTP_KOLINB_F_SUFFER_A,
    /* 0x23 */ BTP_KOLINB_F_SUFFER_B,
    /* 0x24 */ BTP_KOLINB_F_WAIT_A,

    /* DZB */
    /* 0x27 */ DZB_KOLINB = 0x27,
};

enum zrCb_RES_File_ID {
    /* BCK */
    /* 0x05 */ BCK_ZRCB_F_SUFFER_A = 0x5,
    /* 0x06 */ BCK_ZRCB_F_SUFFER_B,
    /* 0x07 */ BCK_ZRCB_F_WAIT_A,
    /* 0x08 */ BCK_ZRCB_SUFFER_A,
    /* 0x09 */ BCK_ZRCB_SUFFER_B,
    /* 0x0A */ BCK_ZRCB_WAIT_A,

    /* BMDR */
    /* 0x0D */ BMDR_SRCB = 0xD,

    /* BTP */
    /* 0x10 */ BTP_ZRCB_F_SUFFER_A = 0x10,
    /* 0x11 */ BTP_ZRCB_F_SUFFER_B,
    /* 0x12 */ BTP_ZRCB_F_WAIT_A,
};

enum RES_Name {
    /* 0x1 */ KOLINB = 0x1,
    /* 0x2 */ ZRCB,
};

enum FaceMotion {
    /* 0x0 */ FACE_KOLINB_WAIT_A,
    /* 0x1 */ FACE_KOLINB_DISLIKE,
    /* 0x2 */ FACE_KOLINB_NOD_A,
    /* 0x3 */ FACE_KOLINB_SUFFER_A,
    /* 0x4 */ FACE_KOLINB_SUFFER_B,
    /* 0x5 */ FACE_ZRCB_WAIT_A,
    /* 0x6 */ FACE_ZRCB_SUFFER_A,
    /* 0x7 */ FACE_ZRCB_SUFFER_B,
    /* 0x8 */ FACE_NONE,
};

enum Motion {
    /* 0x0 */ MOT_KOLINB_WAIT_A,
    /* 0x1 */ MOT_KOLINB_DISLIKE,
    /* 0x2 */ MOT_KOLINB_NOD,
    /* 0x3 */ MOT_KOLINB_SUFFER_A,
    /* 0x4 */ MOT_KOLINB_SUFFER_B,
    /* 0x5 */ MOT_ZRCB_WAIT_A,
    /* 0x6 */ MOT_ZRCB_SUFFER_A,
    /* 0x7 */ MOT_ZRCB_SUFFER_B,
};

enum TYPE {
    /* 0x0 */ TYPE_0,
    /* 0x1 */ TYPE_1,
    /* 0x2 */ TYPE_ZRCB,
    /* 0x3 */ TYPE_3,
};

/* 80A48874-80A48884 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][2] = {
    {BMDR_KOLINB, KOLINB},
    {BMDR_SRCB, ZRCB},
};

/* 80A48884-80A48894 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"", 0},
};

/* 80A48894-80A488A0 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[3] = {
    "",
    "Kolinb",
    "zrCb",
};

/* 80A488A0-80A488A4 00004C 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    KOLINB, -1
};

/* 80A488A4-80A488A8 000050 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    KOLINB, ZRCB, -1,
};

/* 80A488A8-80A488B8 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[4] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn1,
    NULL,
};

/* 80A488B8-80A489D0 000064 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[10] = {
    {-1, J3DFrameCtrl::EMode_NONE, 0, BTP_KOLINB, J3DFrameCtrl::EMode_LOOP, KOLINB, 1},
    {BCK_KOLINB_F_WAIT_A, J3DFrameCtrl::EMode_LOOP, KOLINB, BTP_KOLINB_F_WAIT_A, J3DFrameCtrl::EMode_LOOP, KOLINB, 0},
    {BCK_KOLINB_F_SUFFER_A, J3DFrameCtrl::EMode_LOOP, KOLINB, BTP_KOLINB_F_SUFFER_A, J3DFrameCtrl::EMode_LOOP, KOLINB, 0},
    {BCK_KOLINB_F_SUFFER_B, J3DFrameCtrl::EMode_LOOP, KOLINB, BTP_KOLINB_F_SUFFER_B, J3DFrameCtrl::EMode_LOOP, KOLINB, 0},
    {BCK_KOLINB_F_DISLIKE, J3DFrameCtrl::EMode_LOOP, KOLINB, BTP_KOLINB_F_DISLIKE, J3DFrameCtrl::EMode_LOOP, KOLINB, 0},
    {BCK_KOLINB_F_NOD_A, J3DFrameCtrl::EMode_NONE, KOLINB, BTP_KOLINB_F_NOD_A, J3DFrameCtrl::EMode_NONE, KOLINB, 0},
    {BCK_KOLINB_F_NOD_B, J3DFrameCtrl::EMode_LOOP, KOLINB, BTP_KOLINB_F_NOD_B, J3DFrameCtrl::EMode_LOOP, KOLINB, 0},
    {BCK_ZRCB_F_WAIT_A, J3DFrameCtrl::EMode_LOOP, ZRCB, BTP_ZRCB_F_WAIT_A, J3DFrameCtrl::EMode_LOOP, ZRCB, 0},
    {BCK_ZRCB_F_SUFFER_A, J3DFrameCtrl::EMode_LOOP, ZRCB, BTP_ZRCB_F_SUFFER_A, J3DFrameCtrl::EMode_LOOP, ZRCB, 0},
    {BCK_ZRCB_F_SUFFER_B, J3DFrameCtrl::EMode_LOOP, ZRCB, BTP_ZRCB_F_SUFFER_B, J3DFrameCtrl::EMode_LOOP, ZRCB, 0},
};

/* 80A489D0-80A48ACC 00017C 00FC+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[9] = {
    {BCK_KOLINB_WAIT_A, J3DFrameCtrl::EMode_LOOP, KOLINB, BTK_KOLINB, J3DFrameCtrl::EMode_NONE, KOLINB, 0, 0},
    {BCK_KOLINB_SUFFER_A, J3DFrameCtrl::EMode_LOOP, KOLINB, BTK_KOLINB, J3DFrameCtrl::EMode_NONE, KOLINB, 0, 0},
    {BCK_KOLINB_SUFFER_B, J3DFrameCtrl::EMode_LOOP, KOLINB, BTK_KOLINB, J3DFrameCtrl::EMode_NONE, KOLINB, 0, 0},
    {BCK_KOLINB_DISLIKE, J3DFrameCtrl::EMode_LOOP, KOLINB, BTK_KOLINB_DISLIKE, J3DFrameCtrl::EMode_LOOP, KOLINB, 0, 0},
    {BCK_KOLINB_NOD_A, J3DFrameCtrl::EMode_NONE, KOLINB, BTK_KOLINB_NOD_A, J3DFrameCtrl::EMode_NONE, KOLINB, 0, 0},
    {BCK_KOLINB_NOD_B, J3DFrameCtrl::EMode_LOOP, KOLINB, BTK_KOLINB_NOD_B, J3DFrameCtrl::EMode_LOOP, KOLINB, 0, 0},
    {BCK_ZRCB_WAIT_A, J3DFrameCtrl::EMode_LOOP, ZRCB, -1, J3DFrameCtrl::EMode_NONE, 0, 0, 0},
    {BCK_ZRCB_SUFFER_A, J3DFrameCtrl::EMode_LOOP, ZRCB, -1, J3DFrameCtrl::EMode_NONE, 0, 0, 0},
    {BCK_ZRCB_SUFFER_B, J3DFrameCtrl::EMode_LOOP, ZRCB, -1, J3DFrameCtrl::EMode_NONE, 0, 0, 0},
};

/* 80A48ACC-80A48B5C 000278 0090+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[36] = {
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80A48B5C-80A48BDC 000308 0080+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[32] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {5, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

char* daNpc_Kolinb_c::mCutNameList[7] = {
    "",
    "CONVERSATION_IN_HOTEL",
    "CONVERSATION_ABOUT_DEATHMT",
    "CONVERSATION_ABOUT_GORON",
    "NURSE",
    "CLOTH_TRY",
    "THANK_YOU",
};

/* 80A48C40-80A48C94 0003EC 0054+00 1/2 0/0 0/0 .data            mCutList__14daNpc_Kolinb_c */
daNpc_Kolinb_c::cutFunc daNpc_Kolinb_c::mCutList[7] = {
    NULL,
    &daNpc_Kolinb_c::cutConversationInHotel,
    &daNpc_Kolinb_c::cutConversationAboutDeathMt,
    &daNpc_Kolinb_c::cutConversationAboutGoron,
    &daNpc_Kolinb_c::cutNurse,
    &daNpc_Kolinb_c::cutClothTry,
    &daNpc_Kolinb_c::cutThankYou
};

/* 80A4598C-80A45ADC 0000EC 0150+00 1/0 0/0 0/0 .text            __dt__14daNpc_Kolinb_cFv */
daNpc_Kolinb_c::~daNpc_Kolinb_c() {
    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    if (mpBgW != NULL) {
        dComIfG_Bgsp().Release(mpBgW);
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80A48710-80A4879C 000000 008C+00 5/5 0/0 0/0 .rodata          m__20daNpc_Kolinb_Param_c */
daNpc_Kolinb_HIOParam const daNpc_Kolinb_Param_c::m = {
    100.0f,
    -3.0f,
    1.0f,
    500.0f,
    255.0f,
    160.0f,
    35.0f,
    50.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
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
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
};

/* 80A45ADC-80A45DC4 00023C 02E8+00 1/1 0/0 0/0 .text            create__14daNpc_Kolinb_cFv */
cPhs__Step daNpc_Kolinb_c::create() {
    fopAcM_SetupActor2(this, daNpc_Kolinb_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, modelType:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo, (getModelType() >> 32) & 0xFF, fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        static int const heapSize[4] = {
            0x47A0, 0x4790, 0x4710, 0x0,
        };
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        if (mpBgW != NULL) {
            if (dComIfG_Bgsp().Regist(mpBgW, this) == true) {
                return cPhs_ERROR_e;
            }
        }

        J3DModel* model = mpMorf[0]->getModel();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 200.0f, 200.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);

        reset();

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Kolinb_Param_c::m.common.weight, 0, this);
        
        field_0xe44.Set(mCcDCyl);
        field_0xe44.SetStts(&mCcStts);
        field_0xe44.SetTgHitCallback(tgHitCallBack);
        
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80A45DC4-80A4603C 000524 0278+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_Kolinb_cFv */
int daNpc_Kolinb_c::CreateHeap() {
    int bmdIdx;
    if (mType == TYPE_ZRCB) {
        bmdIdx = 1;
    } else {
        bmdIdx = 0;
    }

    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdIdx][1]], l_bmdData[bmdIdx][0]));
    if (modelData == NULL) {
        return 0;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpBgW = new dBgW();
    if (mpBgW == NULL) {
        return 0;
    }

    if (mpBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_resNameList[1], 0x27), 1, &mMtx) == true) {
        return 0;
    }

    mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);

    if (mType != TYPE_ZRCB) {
        if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
            return 1;
        } else {
            return 0;
        }
    }

    if (setFaceMotionAnm(7, false) && setMotionAnm(6, 0.0f, FALSE)) {
        return 1;
    } else {
        return 0;
    }
}

/* 80A4603C-80A46070 00079C 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_Kolinb_cFv */
int daNpc_Kolinb_c::Delete() {
    this->~daNpc_Kolinb_c();
    return 1;
}

/* 80A46070-80A46090 0007D0 0020+00 2/2 0/0 0/0 .text            Execute__14daNpc_Kolinb_cFv */
int daNpc_Kolinb_c::Execute() {
    return execute();
}

/* 80A46090-80A46124 0007F0 0094+00 1/1 0/0 0/0 .text            Draw__14daNpc_Kolinb_cFv */
int daNpc_Kolinb_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    draw(FALSE, FALSE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
}

/* 80A46124-80A46144 000884 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__14daNpc_Kolinb_cFP10fopAc_ac_c */
int daNpc_Kolinb_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_Kolinb_c* i_this = (daNpc_Kolinb_c*)a_this;
    return i_this->CreateHeap();
}

/* 80A46144-80A4619C 0008A4 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__14daNpc_Kolinb_cFP8J3DJointi */
int daNpc_Kolinb_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        daNpc_Kolinb_c* i_this = (daNpc_Kolinb_c*)j3dSys.getModel()->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }

    return 1;
}

/* 80A4619C-80A461E8 0008FC 004C+00 1/1 0/0 0/0 .text            getType__14daNpc_Kolinb_cFv */
u8 daNpc_Kolinb_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;
        
        case 1:
            return 1;

        case 2:
            return 2;

        default:
            return 3;
    }
}

/* 80A461E8-80A462C8 000948 00E0+00 1/1 0/0 0/0 .text            isDelete__14daNpc_Kolinb_cFv */
BOOL daNpc_Kolinb_c::isDelete() {
    switch (mType) {
        case TYPE_0:
                    /* dSv_event_flag_c::M_052 - Main Event - Horseback battle clear */
            return !daNpcT_chkEvtBit(85) ||
                    /* dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear */
                    daNpcT_chkEvtBit(64);
        case TYPE_1:
                    /* dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear */
            return !daNpcT_chkEvtBit(64) ||
                    /* dSv_event_flag_c::M_035 - Cutscene - [cutscene: 35] after carriage guarding event */
                    daNpcT_chkEvtBit(68);

        case TYPE_ZRCB:
                    /* dSv_event_flag_c::M_035 - Cutscene - [cutscene: 35] after carriage guarding event */
            return !daNpcT_chkEvtBit(68) ||
                    /* dSv_event_flag_c::F_0264 - Cutscene - Get master sword */
                    daNpcT_chkEvtBit(264);

        default:
            return FALSE;
    }
}

/* 80A462C8-80A46420 000A28 0158+00 1/1 0/0 0/0 .text            reset__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::reset() {
    csXyz angle;
    int iVar1 = (u8*)&field_0xff8 - (u8*)&mNextAction;

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    initialize();

    memset(&mNextAction, 0, iVar1);

    angle.setall(0);
    angle.y = home.angle.y;
    setAngle(angle);
}

/* 80A46420-80A4651C 000B80 00FC+00 1/0 0/0 0/0 .text            setParam__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setParam() {
    selectAction();
    srchActors();

    s16 talk_distance = daNpc_Kolinb_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_Kolinb_Param_c::m.common.talk_angle;
    s16 attention_distance = daNpc_Kolinb_Param_c::m.common.attention_distance;
    s16 attention_angle = daNpc_Kolinb_Param_c::m.common.attention_angle;
    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = 10;

    scale.set(daNpc_Kolinb_Param_c::m.common.scale, daNpc_Kolinb_Param_c::m.common.scale, daNpc_Kolinb_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Kolinb_Param_c::m.common.weight);

    mCylH = daNpc_Kolinb_Param_c::m.common.height;
    mWallR = daNpc_Kolinb_Param_c::m.common.width;
    mAttnFovY = daNpc_Kolinb_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Kolinb_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Kolinb_Param_c::m.common.real_shadow_size;
    mExpressionMorfFrame = daNpc_Kolinb_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Kolinb_Param_c::m.common.morf_frame;
    gravity = daNpc_Kolinb_Param_c::m.common.gravity;
}

/* 80A4651C-80A465D0 000C7C 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__14daNpc_Kolinb_cFv */
BOOL daNpc_Kolinb_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Kolinb_c::talk)) {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }

            return TRUE;
        }
    }

    return FALSE;
}

/* 80A465D0-80A46630 000D30 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setAfterTalkMotion() {
    mFaceMotionSeqMngr.getNo();
    mFaceMotionSeqMngr.setNo(FACE_NONE, -1.0f, FALSE, 0);
}

/* 80A46630-80A46634 000D90 0004+00 1/1 0/0 0/0 .text            srchActors__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::srchActors() {
    /* empty function */
}

/* 80A46634-80A466D4 000D94 00A0+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_Kolinb_cFv */
BOOL daNpc_Kolinb_c::evtTalk() {
    if (chkAction(&daNpc_Kolinb_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        setAction(&daNpc_Kolinb_c::talk);
    }

    return TRUE;
}

/* 80A466D4-80A4679C 000E34 00C8+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_Kolinb_cFv */
BOOL daNpc_Kolinb_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Kolinb", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 7, 0, 0);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return TRUE;
    }

    return FALSE;
}

/* 80A4679C-80A46824 000EFC 0088+00 1/0 0/0 0/0 .text            action__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::action() {
    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 80A46824-80A468E8 000F84 00C4+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::beforeMove() {
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_80000000);

    if (checkHide()) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
    }

    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80A468E8-80A46A4C 001048 0164+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setAttnPos() {
    cXyz work(10.0f, 30.0f, 0.0f);
    setMtx();

    if (mpBgW != NULL) {
        MTXCopy(mpMorf[0]->getModel()->getBaseTRMtx(), mMtx);
        mpBgW->Move();
    }

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&work, &eyePos);
    work.set(100.0f, 0.0f, 0.0f);
    work.y = daNpc_Kolinb_Param_c::m.common.attention_offset;
    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&work, &work);
    attention_info.position = current.pos + work;

    if (mType == TYPE_ZRCB) {
        mSound.startCreatureVoiceLevel(Z2SE_ZRC_V_UNASARE, -1);
    }
}

/* 80A46A4C-80A46A9C 0011AC 0050+00 1/0 0/0 0/0 .text            setCollision__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setCollision() {
    field_0xe44.ClrCoHit();
    field_0xe44.ClrTgHit();
}

/* 80A46A9C-80A46AA4 0011FC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_Kolinb_cFv */
int daNpc_Kolinb_c::drawDbgInfo() {
    return 0;
}

/* 80A46AA4-80A46AEC 001204 0048+00 1/1 0/0 0/0 .text            selectAction__14daNpc_Kolinb_cFv */
int daNpc_Kolinb_c::selectAction() {
    mNextAction = NULL;

#ifdef DEBUG
    if (daNpc_Kolinb_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_Kolinb_c::test;
        return 1;
    }
#endif

    mNextAction = &daNpc_Kolinb_c::wait;

    return 1;
}

/* 80A46AEC-80A46B18 00124C 002C+00 2/2 0/0 0/0 .text            chkAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i */
BOOL daNpc_Kolinb_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80A46B18-80A46BC0 001278 00A8+00 2/2 0/0 0/0 .text            setAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i */
int daNpc_Kolinb_c::setAction(actionFunc action) {
    mMode = 3;
    
    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;

    mAction = action;
    if (mAction) {
        (this->*mAction)(NULL);
    }

    return 1;
}

/* 80A46BC0-80A46C48 001320 0088+00 1/0 0/0 0/0 .text cutConversationInHotel__14daNpc_Kolinb_cFi */
int daNpc_Kolinb_c::cutConversationInHotel(int i_cutIndex) {
    int rv = 0;
    int prm = -1;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    dComIfGp_getEventManager().getIsAddvance(i_cutIndex);

    switch (prm) {
        case 0:
            rv = 1;
            break;
    }

    return rv;
}

/* 80A46C48-80A46EE4 0013A8 029C+00 1/0 0/0 0/0 .text            cutConversationAboutDeathMt__14daNpc_Kolinb_cFi */
int daNpc_Kolinb_c::cutConversationAboutDeathMt(int i_cutIndex) {
    int rv = 0;
    int prm = -1;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_cutIndex)) {
        switch (prm) {
            case 0:
                mEventTimer = 61;
                break;

            case 1:
                if (mType == TYPE_ZRCB) {
                    mFaceMotionSeqMngr.setNo(FACE_ZRCB_WAIT_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_ZRCB_WAIT_A, -1.0f, FALSE, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(FACE_KOLINB_WAIT_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_KOLINB_WAIT_A, -1.0f, FALSE, 0);
                }
                break;
        }
    }

    switch (prm) {
        case 0:
            action();

            if (mEventTimer != 0 && cLib_calcTimer<int>(&mEventTimer) == 0) {
                if (mType == TYPE_ZRCB) {
                    mFaceMotionSeqMngr.setNo(FACE_ZRCB_SUFFER_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_ZRCB_SUFFER_A, -1.0f, FALSE, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(FACE_KOLINB_SUFFER_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_KOLINB_SUFFER_A, -1.0f, FALSE, 0);
                }
            }

            rv = 1;
            break;

        case 1:
            rv = 1;
            break;
    }

    return rv;
}

/* 80A46EE4-80A47180 001644 029C+00 1/0 0/0 0/0 .text            cutConversationAboutGoron__14daNpc_Kolinb_cFi */
int daNpc_Kolinb_c::cutConversationAboutGoron(int i_cutIndex) {
    int rv = 0;
    int prm = -1;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_cutIndex)) {
        switch (prm) {
            case 0:
                mEventTimer = 61;
                break;

            case 1:
                if (mType == TYPE_ZRCB) {
                    mFaceMotionSeqMngr.setNo(FACE_ZRCB_WAIT_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_ZRCB_WAIT_A, -1.0f, FALSE, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(MOT_KOLINB_WAIT_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_KOLINB_WAIT_A, -1.0f, FALSE, 0);
                }
                break;
        }
    }

    switch (prm) {
        case 0:
            action();

            if (mEventTimer != 0 && cLib_calcTimer<int>(&mEventTimer) == 0) {
                if (mType == TYPE_ZRCB) {
                    mFaceMotionSeqMngr.setNo(FACE_ZRCB_SUFFER_B, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_ZRCB_SUFFER_B, -1.0f, FALSE, 0);
                } else {
                    mFaceMotionSeqMngr.setNo(FACE_KOLINB_SUFFER_B, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_KOLINB_SUFFER_B, -1.0f, FALSE, 0);
                }
            }

            rv = 1;
            break;

        case 1:
            rv = 1;
            break;
    }

    return rv;
}

/* 80A47180-80A472EC 0018E0 016C+00 1/0 0/0 0/0 .text            cutNurse__14daNpc_Kolinb_cFi */
int daNpc_Kolinb_c::cutNurse(int i_cutIndex) {
    int rv = 0;
    int prm = -1;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_cutIndex)) {
        switch (prm) {
            case 0:
                break;

            case 1:
                mFaceMotionSeqMngr.setNo(FACE_KOLINB_NOD_A, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(MOT_KOLINB_NOD, -1.0f, FALSE, 0);
                break;

            case 2:
                mFaceMotionSeqMngr.setNo(FACE_KOLINB_DISLIKE, 0.0f, TRUE, 0);
                mMotionSeqMngr.setNo(MOT_KOLINB_DISLIKE, 0.0f, TRUE, 0);
                break;
        }
    }

    switch (prm) {
        case 0:
        case 1:
        case 2:
            field_0xe26 = false;
            rv = 1;
            break;
    }

    return rv;
}

/* 80A472EC-80A4738C 001A4C 00A0+00 1/0 0/0 0/0 .text            cutClothTry__14daNpc_Kolinb_cFi */
int daNpc_Kolinb_c::cutClothTry(int i_cutIndex) {
    int rv = 0;
    int prm = -1;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    dComIfGp_getEventManager().getIsAddvance(i_cutIndex);

    switch (prm) {
        case 0:
            action();
            rv = 1;
            break;
    }

    return rv;
}

/* 80A4738C-80A4742C 001AEC 00A0+00 1/0 0/0 0/0 .text            cutThankYou__14daNpc_Kolinb_cFi */
int daNpc_Kolinb_c::cutThankYou(int i_cutIndex) {
    int rv = 0;
    int prm = -1;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    dComIfGp_getEventManager().getIsAddvance(i_cutIndex);

    switch (prm) {
        case 0:
            action();
            rv = 1;
            break;
    }

    return rv;
}

/* 80A4742C-80A475D4 001B8C 01A8+00 1/0 0/0 0/0 .text            wait__14daNpc_Kolinb_cFPv */
int daNpc_Kolinb_c::wait(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            switch (mType) {
                case TYPE_1:
                    mFaceMotionSeqMngr.setNo(FACE_KOLINB_DISLIKE, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_KOLINB_DISLIKE, -1.0f, FALSE, 0);
                    break;

                case TYPE_ZRCB:
                    mFaceMotionSeqMngr.setNo(FACE_ZRCB_WAIT_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_ZRCB_WAIT_A, -1.0f, FALSE, 0);
                    break;

                default:
                    mFaceMotionSeqMngr.setNo(FACE_KOLINB_WAIT_A, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_KOLINB_WAIT_A, -1.0f, FALSE, 0);
                    break;
            }

            mMode = 2;
            // fallthrough
        case 2:
            attention_info.flags = 0;
            break;

        case 3:
            break;
    }

    return 1;
}

/* 80A475D4-80A4768C 001D34 00B8+00 3/0 0/0 0/0 .text            talk__14daNpc_Kolinb_cFPv */
int daNpc_Kolinb_c::talk(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            initTalk(mFlowNodeNo, NULL);
            mMode = 2;
            // fallthrough
        case 2:
            if (talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
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

/* 80A4768C-80A476AC 001DEC 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Create__FPv */
static int daNpc_Kolinb_Create(void* a_this) {
    daNpc_Kolinb_c* i_this = (daNpc_Kolinb_c*)a_this;
    return i_this->create();
}

/* 80A476AC-80A476CC 001E0C 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Delete__FPv */
static int daNpc_Kolinb_Delete(void* a_this) {
    daNpc_Kolinb_c* i_this = (daNpc_Kolinb_c*)a_this;
    return i_this->Delete();
}

/* 80A476CC-80A476EC 001E2C 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Execute__FPv */
static int daNpc_Kolinb_Execute(void* a_this) {
    daNpc_Kolinb_c* i_this = (daNpc_Kolinb_c*)a_this;
    return i_this->Execute();
}

/* 80A476EC-80A4770C 001E4C 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Draw__FPv */
static int daNpc_Kolinb_Draw(void* a_this) {
    daNpc_Kolinb_c* i_this = (daNpc_Kolinb_c*)a_this;
    return i_this->Draw();
}

/* 80A4770C-80A47714 001E6C 0008+00 1/0 0/0 0/0 .text            daNpc_Kolinb_IsDelete__FPv */
static int daNpc_Kolinb_IsDelete(void* a_this) {
    return 1;
}

/* 80A48E94-80A48E98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Kolinb_Param_c l_HIO;

/* 80A48CC4-80A48CE4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kolinb_MethodTable */
static actor_method_class daNpc_Kolinb_MethodTable = {
    (process_method_func)daNpc_Kolinb_Create,
    (process_method_func)daNpc_Kolinb_Delete,
    (process_method_func)daNpc_Kolinb_Execute,
    (process_method_func)daNpc_Kolinb_IsDelete,
    (process_method_func)daNpc_Kolinb_Draw,
};

/* 80A48CE4-80A48D14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KOLINB */
extern actor_process_profile_definition g_profile_NPC_KOLINB = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_KOLINB,           // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_Kolinb_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  351,                       // mPriority
  &daNpc_Kolinb_MethodTable, // sub_method
  0x00040107,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};
