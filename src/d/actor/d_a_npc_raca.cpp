/**
 * @file d_a_npc_raca.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_raca.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "d/d_s_play.h"

enum Raca_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_RACA_F_BITTERSMILE = 0x6,
    /* 0x07 */ BCK_RACA_F_SMILE,
    /* 0x08 */ BCK_RACA_F_TALK_A,
    /* 0x09 */ BCK_RACA_F_TALK_B,
    /* 0x0A */ BCK_RACA_FH_BITTERSMILE,
    /* 0x0B */ BCK_RACA_FH_SMILE,
    /* 0x0C */ BCK_RACA_FH_TALK_B,
    /* 0x0D */ BCK_RACA_GIVEME,
    /* 0x0E */ BCK_RACA_HI,
    /* 0x0F */ BCK_RACA_HI_WAIT,
    /* 0x10 */ BCK_RACA_LISTEN,
    /* 0x11 */ BCK_RACA_LISTEN_WAIT,
    /* 0x12 */ BCK_RACA_STEP,
    /* 0x13 */ BCK_RACA_TALK_A,
    /* 0x14 */ BCK_RACA_TALK_B,
    /* 0x15 */ BCK_RACA_WAIT_A,
    /* 0x16 */ BCK_RACA_WALK_A,

    /* BMDR */
    /* 0x19 */ BMDR_RACA = 0x19,

    /* BTK */
    /* 0x1C */ BTK_RACA = 0x1C,
    /* 0x1D */ BTK_RACA_TALK_B,

    /* BTP */
    /* 0x20 */ BTP_RACA = 0x20,
    /* 0x21 */ BTP_RACA_F_BITTERSMILE,
    /* 0x22 */ BTP_RACA_F_SMILE,
    /* 0x23 */ BTP_RACA_F_TALK_B,
    /* 0x24 */ BTP_RACA_FH_BITTERSMILE,
    /* 0x25 */ BTP_RACA_FH_SMILE,
    /* 0x26 */ BTP_RACA_FH_TALK_B,
};

enum RES_Name {
    /* 0x0 */ NONE,
    /* 0x1 */ RACA,
};

enum Face_Motion {
    /* 0x0 */ FACE_TALK_A,
    /* 0x1 */ FACE_TALK_B,
    /* 0x2 */ FACE_SMILE,
    /* 0x3 */ FACE_BITTERSMILE,
    /* 0x4 */ FACE_H_TALK_B,
    /* 0x5 */ FACE_H_SMILE,
    /* 0x6 */ FACE_H_BITTERSMILE,
    /* 0x7 */ FACE_NONE,
};

enum Motion {
    /* 0x0 */ MOT_WAIT_A,
    /* 0x1 */ MOT_TALK_A,
    /* 0x2 */ MOT_TALK_B_GIVEME,
    /* 0x3 */ MOT_HI,
    /* 0x4 */ MOT_HI_WAIT,
    /* 0x5 */ MOT_LISTEN,
    /* 0x6 */ MOT_LISTEN_WAIT,
    /* 0x7 */ MOT_WALK_A,
    /* 0x8 */ MOT_STEP,
};

enum Type {
    /* 0x0 */ TYPE_0,
    /* 0x1 */ TYPE_1,
};

/* 80AB8FDC-80AB8FE4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {BMDR_RACA, RACA},
};

/* 80AB8FE4-80AB8FF4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0},
};

/* 80AB8FF4-80AB8FFC -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "Raca",
};

/* 80AB8FFC-80AB9000 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, -1,
};

/* 80AB9000-80AB9008 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80AB9008-80AB90E8 00004C 00E0+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[8] = {
    {-1, J3DFrameCtrl::EMode_NONE, NONE, 32, J3DFrameCtrl::EMode_LOOP, RACA, 1},
    {BCK_RACA_F_TALK_A, J3DFrameCtrl::EMode_NONE, RACA, BTP_RACA, J3DFrameCtrl::EMode_LOOP, RACA, 1},
    {BCK_RACA_F_TALK_B, J3DFrameCtrl::EMode_NONE, RACA, BTP_RACA_F_TALK_B, J3DFrameCtrl::EMode_NONE, RACA, 0},
    {BCK_RACA_F_SMILE, J3DFrameCtrl::EMode_NONE, RACA, BTP_RACA_F_SMILE, J3DFrameCtrl::EMode_NONE, RACA, 0},
    {BCK_RACA_F_BITTERSMILE, J3DFrameCtrl::EMode_NONE, RACA, BTP_RACA_F_BITTERSMILE, J3DFrameCtrl::EMode_NONE, RACA, 0},
    {BCK_RACA_FH_TALK_B, J3DFrameCtrl::EMode_LOOP, RACA, BTP_RACA_FH_TALK_B, J3DFrameCtrl::EMode_LOOP, RACA, 0},
    {BCK_RACA_FH_SMILE, J3DFrameCtrl::EMode_LOOP, RACA, BTP_RACA_FH_SMILE, J3DFrameCtrl::EMode_LOOP, RACA, 0},
    {BCK_RACA_FH_BITTERSMILE, J3DFrameCtrl::EMode_LOOP, RACA, BTP_RACA_FH_BITTERSMILE, J3DFrameCtrl::EMode_LOOP, RACA, 0},
};

/* 80AB90E8-80AB9200 00012C 0118+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[10] = {
    {BCK_RACA_WAIT_A, J3DFrameCtrl::EMode_LOOP, RACA, BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_GIVEME, J3DFrameCtrl::EMode_LOOP, RACA, BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_TALK_A, J3DFrameCtrl::EMode_NONE, RACA, BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_TALK_B, J3DFrameCtrl::EMode_NONE, RACA, BTK_RACA_TALK_B, J3DFrameCtrl::EMode_NONE, RACA, 0, 0},
    {BCK_RACA_WALK_A, J3DFrameCtrl::EMode_LOOP, RACA,BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_HI, J3DFrameCtrl::EMode_NONE, RACA,BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_HI_WAIT, J3DFrameCtrl::EMode_LOOP, RACA,BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_LISTEN, J3DFrameCtrl::EMode_NONE, RACA,BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_LISTEN_WAIT, J3DFrameCtrl::EMode_LOOP, RACA,BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
    {BCK_RACA_STEP, J3DFrameCtrl::EMode_NONE, RACA,BTK_RACA, J3DFrameCtrl::EMode_NONE, RACA, 1, 0},
};

/* 80AB9200-80AB9280 000244 0080+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[32] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {5, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {7, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AB9280-80AB9310 0002C4 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[36] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {8, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AB9310-80AB9314 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Raca_c */
char* daNpc_Raca_c::mCutNameList = "";

/* 80AB9314-80AB9320 000358 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_Raca_c */
daNpc_Raca_c::cutFunc daNpc_Raca_c::mCutList[1] = {
    NULL,
};

/* 80AB5CAC-80AB5DFC 0000EC 0150+00 1/0 0/0 0/0 .text            __dt__12daNpc_Raca_cFv */
daNpc_Raca_c::~daNpc_Raca_c() {
    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80AB8EC8-80AB8F54 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_Raca_Param_c */
daNpc_Raca_HIOParam const daNpc_Raca_Param_c::m = {
    230.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    40.0f,
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

/* 80AB5DFC-80AB60B8 00023C 02BC+00 1/1 0/0 0/0 .text            create__12daNpc_Raca_cFv */
cPhs__Step daNpc_Raca_c::create() {
    fopAcM_SetupActor2(this, daNpc_Raca_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData, 4,
                       l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3A10)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x, BitSW:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  (getPathID() >> 32) & 0xFF, getBitSW() & 0xFF, fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 0.0f, 0.0f);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Raca_Param_c::m.common.weight, 0, this);
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

        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80AB60B8-80AB6358 0004F8 02A0+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Raca_cFv */
int daNpc_Raca_c::CreateHeap() {
    int bmdIdx = mTwilight == true ? NONE : NONE;
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdIdx][1]], l_bmdData[bmdIdx][0]);
    if (modelData == NULL) {
        return 0;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
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

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80AB6514-80AB6548 000954 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Raca_cFv */
int daNpc_Raca_c::Delete() {
    this->~daNpc_Raca_c();
    return 1;
}

/* 80AB6548-80AB6568 000988 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Raca_cFv */
int daNpc_Raca_c::Execute() {
    return execute();
}

/* 80AB6568-80AB65FC 0009A8 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Raca_cFv */
int daNpc_Raca_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    draw(
#ifdef DEBUG
        chkAction(mAction),
#else
        0,
#endif
        FALSE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE
    );
}

/* 80AB65FC-80AB661C 000A3C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__12daNpc_Raca_cFP10fopAc_ac_c */
int daNpc_Raca_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_Raca_c*>(a_this)->CreateHeap();
}

/* 80AB661C-80AB6674 000A5C 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__12daNpc_Raca_cFP8J3DJointi */
int daNpc_Raca_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Raca_c* i_this = reinterpret_cast<daNpc_Raca_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80AB6674-80AB6700 000AB4 008C+00 1/1 0/0 0/0 .text            srchNi__12daNpc_Raca_cFPvPv */
void* daNpc_Raca_c::srchNi(void* i_actor, void* i_data) {
    if (mFindCount < 50 && fopAcM_IsActor(i_actor) && i_actor != (daNpc_Raca_c*)i_data && fopAcM_GetName(i_actor) == PROC_NI) {
        mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
        mFindCount++;
    }

    return NULL;
}

/* 80AB6700-80AB67CC 000B40 00CC+00 1/1 0/0 0/0 .text            getNiP__12daNpc_Raca_cFv */
fopAc_ac_c* daNpc_Raca_c::getNiP() {
    fopAc_ac_c* actor_p = mActorMngr[0].getActorP();
    mFindCount = 0;
    fpcM_Search(srchNi, this);

    for (int i = 0; i < mFindCount; i++) {
        if (actor_p != NULL) {
            if (((daTag_EvtArea_c*)actor_p)->chkPointInArea(mFindActorPtrs[i]->current.pos)) {
                return mFindActorPtrs[i];
            }
        }
    }

    return NULL;
}

/* 80AB67CC-80AB67EC 000C0C 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_Raca_cFv */
u8 daNpc_Raca_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;

        default:
            return 1;
    }
}

/* 80AB67EC-80AB681C 000C2C 0030+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::isDelete() {
    if (mType == TYPE_1) {
        return FALSE;
    }

    switch (mType) {
        case TYPE_0:
            return FALSE;

        default:
            return TRUE;
    }
}

/* 80AB681C-80AB6984 000C5C 0168+00 1/1 0/0 0/0 .text            reset__12daNpc_Raca_cFv */
void daNpc_Raca_c::reset() {
    initialize();

    memset(&mPrevAction, 0, (u8*)&field_0xfd0 - (u8*)&mPrevAction);

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    if (getPathID() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
    }

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    setAngle(home.angle.y);
}

/* 80AB6984-80AB6A10 000DC4 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Raca_cFi */
void daNpc_Raca_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80AB6A10-80AB6B0C 000E50 00FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_Raca_cFv */
void daNpc_Raca_c::setParam() {
    selectAction();
    srchActors();

    s16 talk_distance = daNpc_Raca_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_Raca_Param_c::m.common.talk_angle;

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(daNpc_Raca_Param_c::m.common.attention_distance, daNpc_Raca_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;

    scale.set(daNpc_Raca_Param_c::m.common.scale, daNpc_Raca_Param_c::m.common.scale, daNpc_Raca_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Raca_Param_c::m.common.weight);
    mCylH = daNpc_Raca_Param_c::m.common.height;
    mWallR = daNpc_Raca_Param_c::m.common.width;
    mAttnFovY = daNpc_Raca_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Raca_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Raca_Param_c::m.common.real_shadow_size;
    gravity = daNpc_Raca_Param_c::m.common.gravity;
    mExpressionMorfFrame = daNpc_Raca_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Raca_Param_c::m.common.morf_frame;
}

/* 80AB6B0C-80AB6BB0 000F4C 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Raca_cFv */
void daNpc_Raca_c::setAfterTalkMotion() {
    int i_index;

    switch (mFaceMotionSeqMngr.getNo()) {
        case FACE_TALK_B:
            i_index = FACE_H_TALK_B;
            break;
        
        case FACE_SMILE:
            i_index = FACE_H_SMILE;
            break;

        case FACE_BITTERSMILE:
            i_index = FACE_H_BITTERSMILE;
            break;

        default:
            i_index = FACE_NONE;
            break;
    }

    mFaceMotionSeqMngr.setNo(i_index, -1.0f, FALSE, 0);
}

/* 80AB6BB0-80AB6C14 000FF0 0064+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Raca_cFv */
void daNpc_Raca_c::srchActors() {
    switch (mType) {
        case TYPE_0:
            fopAc_ac_c* actor_p = mActorMngr[0].getActorP();
            if (actor_p == NULL) {
                mActorMngr[0].entry(getEvtAreaTagP(13, 0));
            }
            break;
    }
}

/* 80AB6C14-80AB6D14 001054 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::evtTalk() {
    if (chkAction(&daNpc_Raca_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return 1;
            }

            mEvtNo = 1;
            evtChange();
            return 1;
        }

        setAction(&daNpc_Raca_c::talk);
    }

    return 1;
}

/* 80AB6D14-80AB6DDC 001154 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::evtCutProc() {
    BOOL rv = FALSE;
    int staffId = dComIfGp_getEventManager().getMyStaffId("Raca", this, -1);

    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList, 1, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        rv = TRUE;
    }

    return rv;
}

/* 80AB6DDC-80AB6EC8 00121C 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_Raca_cFv */
void daNpc_Raca_c::action() {
    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = MODE_INIT;
    }

    if (mPrevAction) {
        if (mAction == mPrevAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mPrevAction);
        }
    }
}

/* 80AB6EC8-80AB6F40 001308 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Raca_cFv */
void daNpc_Raca_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80AB6F40-80AB7180 001380 0240+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Raca_cFv */
void daNpc_Raca_c::setAttnPos() {
    cXyz sp38(0.0f, 30.0f, 0.0f);
    
    mStagger.calc(FALSE);
    f32 fVar1 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();

    mJntAnm.setParam(this, model, &sp38, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     daNpc_Raca_Param_c::m.common.body_angleX_min, daNpc_Raca_Param_c::m.common.body_angleX_max,
                     daNpc_Raca_Param_c::m.common.body_angleY_min, daNpc_Raca_Param_c::m.common.body_angleY_max,
                     daNpc_Raca_Param_c::m.common.head_angleX_min, daNpc_Raca_Param_c::m.common.head_angleX_max,
                     daNpc_Raca_Param_c::m.common.head_angleY_min, daNpc_Raca_Param_c::m.common.head_angleY_max,
                     daNpc_Raca_Param_c::m.common.neck_rotation_ratio, fVar1, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, fVar1);
    setMtx();

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp38, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);

    attention_info.position = current.pos;
    attention_info.position.y += daNpc_Raca_Param_c::m.common.attention_offset;
    setFootPos();
}

/* 80AB7180-80AB72B4 0015C0 0134+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Raca_cFv */
void daNpc_Raca_c::setCollision() {
    cXyz sp48;
    u32 tgType = 0xD8FBFDFF;
    u32 tgSPrm = 31;

    if (!mHide) {
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

        f32 cylH = mCylH;
        f32 wallR = mWallR;
        sp48 = current.pos;
        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();
        mCyl.SetH(cylH);
        mCyl.SetR(wallR);
        mCyl.SetC(sp48);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80AB72B4-80AB72BC 0016F4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Raca_cFv */
int daNpc_Raca_c::drawDbgInfo() {
    return 0;
}

/* 80AB72BC-80AB73B0 0016FC 00F4+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Raca_cFv */
BOOL daNpc_Raca_c::selectAction() {
    mPrevAction = NULL;

    switch (mType) {
        case TYPE_0:
            if (!field_0xfcc && getBitSW() != 0xFF && dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
                mPrevAction = &daNpc_Raca_c::walk;
            } else {
                mPrevAction = &daNpc_Raca_c::wait;
            }
            break;

        default:
            mPrevAction = &daNpc_Raca_c::wait;
            break;
    }

    return TRUE;
}

/* 80AB73B0-80AB73DC 0017F0 002C+00 1/1 0/0 0/0 .text            chkAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i */
BOOL daNpc_Raca_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80AB73DC-80AB7484 00181C 00A8+00 2/2 0/0 0/0 .text            setAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i */
BOOL daNpc_Raca_c::setAction(actionFunc action) {
    mMode = MODE_EXIT;
    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    mMode = MODE_ENTER;
    mAction = action;
    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    return 1;

}

/* 80AB7484-80AB7710 0018C4 028C+00 2/0 0/0 0/0 .text            wait__12daNpc_Raca_cFPv */
int daNpc_Raca_c::wait(void* param_1) {
    switch (mMode) {
        case MODE_ENTER:
        case MODE_INIT:
            if (!mStagger.checkStagger()) {
                mFaceMotionSeqMngr.setNo(FACE_NONE, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(MOT_WAIT_A, -1.0f, FALSE, 0);
                mMode = MODE_RUN;
            }
            // fallthrough
        case MODE_RUN:
            if (!mStagger.checkStagger()) {
                if (mPlayerActorMngr.getActorP() != NULL) {
                    BOOL bVar1 = FALSE;
                    mJntAnm.lookNone(0);
                    
                    if (chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                        mJntAnm.lookPlayer(0);
                        bVar1 = TRUE;
                    }
                    
                    if (mType == TYPE_0 && !bVar1) {
                        mPlayerActorMngr.remove();

                        if (home.angle.y == mCurAngle.y) {
                            mMode = MODE_INIT;
                        }
                    } else if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                        mMode = MODE_INIT;
                    }
                } else {
                    mJntAnm.lookNone(0);

                    if (home.angle.y != mCurAngle.y) {
                        if (field_0xe34 == 0) {
                            setAngle(home.angle.y);
                            mMode = MODE_INIT;
                        } else if (step(home.angle.y, 7, 8, 15, 0)) {
                            mMode = MODE_INIT;
                        }

                        attention_info.flags = 0;
                    } else {
                        srchPlayerActor();
                    }
                }
            }
            break;

        case MODE_EXIT:
            break;
    }

    return 1;
}

/* 80AB7710-80AB7918 001B50 0208+00 1/0 0/0 0/0 .text            walk__12daNpc_Raca_cFPv */
int daNpc_Raca_c::walk(void* param_1) {
    switch (mMode) {
        case MODE_ENTER:
        case MODE_INIT:
            if (!mStagger.checkStagger()) {
                mFaceMotionSeqMngr.setNo(FACE_NONE, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(MOT_WALK_A, -1.0f, FALSE, 0);
                mAcch.SetWallNone();
                mMode = MODE_RUN;
            }
            // fallthrough
        case MODE_RUN:
            if (!mStagger.checkStagger()) {
                cXyz sp20;

                JUT_ASSERT(1553, NULL != mPath.getPathInfo());

                BOOL bVar1 = mPath.getDstPosH(current.pos, &sp20, mPath.getNumPnts(), 2);
                calcSpeedAndAngle(sp20, bVar1, MREG_S(0) + 4, MREG_S(1) + 0x800);

                if (bVar1) {
                    if (cM3d_IsZero(speedF)) {
                        home.angle.y = -0x4000;

                        if (home.angle.y == mCurAngle.y) {
                            mPlayerActorMngr.remove();
                            field_0xfcc = true;
                        } else {
                            step(home.angle.y, 7, 8, 15, 0);
                        }
                    }
                }

                mJntAnm.lookNone(0);
            }

            attention_info.flags = 0;
            break;

        case MODE_EXIT:
            mAcch.ClrWallNone();
            break;
    }

    return 1;
}

/* 80AB7918-80AB7B40 001D58 0228+00 2/0 0/0 0/0 .text            talk__12daNpc_Raca_cFPv */
int daNpc_Raca_c::talk(void* param_1) {
    switch (mMode) {
        case MODE_ENTER:
        case MODE_INIT:
            if (mType == TYPE_0) {
                /* dSv_event_tmp_flag_c::T_0072 - Lake Hylia - Knocked down all the cucco in Falbi's hut */
                daNpcT_offTmpBit(72);

                if (getNiP() == NULL) {
                    /* dSv_event_tmp_flag_c::T_0072 - Lake Hylia - Knocked down all the cucco in Falbi's hut */
                    daNpcT_onTmpBit(72);
                }
            }

            if (!mStagger.checkStagger()) {
                initTalk(mFlowNodeNo, NULL);

                if (checkStep()) {
                    mStepMode = 0;
                }

                mMode = MODE_RUN;
            }
            // fallthrough
        case MODE_RUN:
            if (!mStagger.checkStagger()) {
                if (mTwilight || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    if (talkProc(NULL, FALSE, NULL, FALSE)) {
                        mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                        dComIfGp_event_reset();
                        mMode = MODE_EXIT;
                    }

                    mJntAnm.lookPlayer(0);

                    if (mTwilight) {
                        mJntAnm.lookNone(0);
                    }
                } else {
                    mJntAnm.lookPlayer(0);
                    step(fopAcM_searchPlayerAngleY(this), 7, 8, 15, 0);
                }
            }
            break;

        case MODE_EXIT:
            break;
    }

    return 0;
}

/* 80AB7B40-80AB7B60 001F80 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Create__FPv */
static int daNpc_Raca_Create(void* a_this) {
    static_cast<daNpc_Raca_c*>(a_this)->create();
}

/* 80AB7B60-80AB7B80 001FA0 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Delete__FPv */
static int daNpc_Raca_Delete(void* a_this) {
    static_cast<daNpc_Raca_c*>(a_this)->Delete();
}

/* 80AB7B80-80AB7BA0 001FC0 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Execute__FPv */
static int daNpc_Raca_Execute(void* a_this) {
    static_cast<daNpc_Raca_c*>(a_this)->Execute();
}

/* 80AB7BA0-80AB7BC0 001FE0 0020+00 1/0 0/0 0/0 .text            daNpc_Raca_Draw__FPv */
static int daNpc_Raca_Draw(void* a_this) {
    static_cast<daNpc_Raca_c*>(a_this)->Draw();
}

/* 80AB7BC0-80AB7BC8 002000 0008+00 1/0 0/0 0/0 .text            daNpc_Raca_IsDelete__FPv */
static int daNpc_Raca_IsDelete(void* a_this) {
    return 1;
}

/* 80AB953C-80AB9540 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Raca_Param_c l_HIO;

/* 80AB935C-80AB937C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Raca_MethodTable */
static actor_method_class daNpc_Raca_MethodTable = {
    (process_method_func)daNpc_Raca_Create,
    (process_method_func)daNpc_Raca_Delete,
    (process_method_func)daNpc_Raca_Execute,
    (process_method_func)daNpc_Raca_IsDelete,
    (process_method_func)daNpc_Raca_Draw,
};

/* 80AB937C-80AB93AC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_RACA */
extern actor_process_profile_definition g_profile_NPC_RACA = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_RACA,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Raca_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  356,                     // mPriority
  &daNpc_Raca_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
