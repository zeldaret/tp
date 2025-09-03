/**
 * @file d_a_npc_grr.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_grr.h"
#include "Z2AudioLib/Z2Instances.h"

enum grR_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_GRR_AGURA_GETUP = 0x6,
    /* 0x07 */ BCK_GRR_AGURA_TALK,
    /* 0x08 */ BCK_GRR_AGURA_WAIT,
    /* 0x09 */ BCK_GRR_F_KEEE,
    /* 0x0A */ BCK_GRR_F_KEEETALK,
    /* 0x0B */ BCK_GRR_F_LAUGH,
    /* 0x0C */ BCK_GRR_F_TALK_A,
    /* 0x0D */ BCK_GRR_FH_KEEE,
    /* 0x0E */ BCK_GRR_FH_LAUGH,
    /* 0x0F */ BCK_GRR_STEP,
    /* 0x10 */ BCK_GRR_TALK_A,
    /* 0x11 */ BCK_GRR_TO_AGURA,
    /* 0x12 */ BCK_GRR_WAIT_A,

    /* BMDR */
    /* 0x15 */ BMDR_GRR = 0x15,

    /* BTK */
    /* 0x18 */ BTK_GRR = 0x18,

    /* BTP */
    /* 0x1B */ BTP_GRR = 0x1B,
    /* 0x1C */ BTP_GRR_F_KEEE,
    /* 0x1D */ BTP_GRR_F_KEEETALK,
    /* 0x1E */ BTP_GRR_F_LAUGH,
    /* 0x1F */ BTP_GRR_FH_KEEE,
    /* 0x20 */ BTP_GRR_FH_LAUGH,
};

enum grR1_RES_File_ID {
    /* BCK */
    /* 0x3 */ BCK_GRR_F_SWING = 0x3,
    /* 0x4 */ BCK_GRR_LAUGH,
    /* 0x5 */ BCK_GRR_SWING,
    /* 0x6 */ BCK_GRR_TALK_B,
    /* 0x7 */ BCK_GRR_WAIT_B,
};

enum RES_Name {
    /* 0x0 */ GRR,
    /* 0x1 */ GRR1,
};

enum Animation {
    /* 0x00 */ ANM_NONE,
    /* 0x01 */ ANM_F_TALK_A,
    /* 0x02 */ ANM_F_LAUGH,
    /* 0x03 */ ANM_F_KEEE,
    /* 0x04 */ ANM_F_KEEETALK,
    /* 0x05 */ ANM_FH_KEEE,
    /* 0x06 */ ANM_FH_LAUGH,
    /* 0x07 */ ANM_F_SWING,
    /* 0x08 */ ANM_WAIT_A,
    /* 0x09 */ ANM_TALK_A,
    /* 0x0A */ ANM_STEP,
    /* 0x0B */ ANM_AGURA_WAIT,
    /* 0x0C */ ANM_AGURA_TALK,
    /* 0x0D */ ANM_AGURA_GETUP,
    /* 0x0E */ ANM_TO_AGURA,
    /* 0x0F */ ANM_LAUGH,
    /* 0x10 */ ANM_TALK_B,
    /* 0x11 */ ANM_WAIT_B,
    /* 0x12 */ ANM_SWING,
};

enum Expression_BTP {
    /* 0x0 */ EXPR_BTP_GRR,
    /* 0x1 */ EXPR_BTP_F_LAUGH,
    /* 0x2 */ EXPR_BTP_F_KEEE,
    /* 0x3 */ EXPR_BTP_F_KEEETALK,
    /* 0x4 */ EXPR_BTP_FH_KEEE,
    /* 0x5 */ EXPR_BTP_FH_LAUGH,
};

enum Expression {
    /* 0x0 */ EXPR_F_TALK_A,
    /* 0x1 */ EXPR_F_LAUGH,
    /* 0x2 */ EXPR_F_SWING,
    /* 0x3 */ EXPR_F_KEEE,
    /* 0x4 */ EXPR_F_KEEETALK,
    /* 0x5 */ EXPR_FH_LAUGH,
    /* 0x6 */ EXPR_FH_KEEE,
    /* 0x7 */ EXPR_NONE,
};

enum Motion {
    /* 0x0 */ MOT_WAIT_A,
    /* 0x1 */ MOT_TALK_A,
    /* 0x2 */ MOT_SWING,
    /* 0x3 */ MOT_AGURA_WAIT,
    /* 0x4 */ MOT_AGURA_TALK,
    /* 0x5 */ MOT_TO_AGURA,
    /* 0x6 */ MOT_AGURA_GETUP,
    /* 0x7 */ MOT_LAUGH,
    /* 0x8 */ MOT_TALK_B,
    /* 0x9 */ MOT_WAIT_B,
    /* 0xA */ MOT_STEP,
};

enum Type {
    /* 0x0 */ TYPE_0,
    /* 0x1 */ TYPE_SPAWATER,
    /* 0x2 */ TYPE_MARO,
    /* 0x3 */ TYPE_3
};

/* 809E3F44-809E3F48 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_grR_Param_c l_HIO;

/* 809E3C10-809E3C18 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static int l_bmdGetParamList[1][2] = {
    {BMDR_GRR, GRR},
};

/* 809E3C18-809E3CB0 000028 0098+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[19] = {
    {-1, GRR},
    {BCK_GRR_F_TALK_A, GRR},
    {BCK_GRR_F_LAUGH, GRR},
    {BCK_GRR_F_KEEE, GRR},
    {BCK_GRR_F_KEEETALK, GRR},
    {BCK_GRR_FH_KEEE, GRR},
    {BCK_GRR_FH_LAUGH, GRR},
    {BCK_GRR_F_SWING, GRR1},
    {BCK_GRR_WAIT_A, GRR},
    {BCK_GRR_TALK_A, GRR},
    {BCK_GRR_STEP, GRR},
    {BCK_GRR_AGURA_WAIT, GRR},
    {BCK_GRR_AGURA_TALK, GRR},
    {BCK_GRR_AGURA_GETUP, GRR},
    {BCK_GRR_TO_AGURA, GRR},
    {BCK_GRR_LAUGH, GRR1},
    {BCK_GRR_TALK_B, GRR1},
    {BCK_GRR_WAIT_B, GRR1},
    {BCK_GRR_SWING, GRR1},
};

/* 809E3CB0-809E3CE0 0000C0 0030+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam1 l_btpGetParamList[6] = {
    {BTP_GRR, GRR},
    {BTP_GRR_F_LAUGH, GRR},
    {BTP_GRR_F_KEEE, GRR},
    {BTP_GRR_F_KEEETALK, GRR},
    {BTP_GRR_FH_KEEE, GRR},
    {BTP_GRR_FH_LAUGH, GRR},
};

/* 809E3CE0-809E3CE8 0000F0 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {BTK_GRR, GRR},
};

/* 809E3CE8-809E3CF0 0000F8 0008+00 0/1 0/0 0/0 .data            l_evtGetParamList */
static daNpc_GetParam1 l_evtGetParamList[1] = {
    {0, GRR},
};

/* 809E3CF0-809E3CFC 000100 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRRa */
static int l_loadRes_GRRa[3] = {
    GRR, -1, -1,
};

/* 809E3CFC-809E3D08 00010C 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRR_SPAWATER */
static int l_loadRes_GRR_SPAWATER[3] = {
    GRR, GRR1, -1,
};

/* 809E3D08-809E3D14 000118 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRR_MARO */
static int l_loadRes_GRR_MARO[3] = {
    GRR, GRR1, -1,
};

/* 809E3D14-809E3D20 000124 000C+00 1/0 0/0 0/0 .data            l_loadRes_GRR0 */
static int l_loadRes_GRR0[3] = {
    GRR, -1, -1,
};

/* 809E3D20-809E3D30 -00001 0010+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[4] = {
    l_loadRes_GRRa,
    l_loadRes_GRR_SPAWATER,
    l_loadRes_GRR_MARO,
    l_loadRes_GRR0,
};

/* 809E3D30-809E3D38 -00001 0008+00 6/8 0/0 0/0 .data            l_resNames */
static char* l_resNames[2] = {
    "grR",
    "grR1",
};

/* 809E3D38-809E3D3C 000148 0004+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[1] = {NULL};

/* 809E3D3C-809E3D40 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "grR";

/* 809E3D40-809E3D44 -00001 0004+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_grR_c */
char* daNpc_grR_c::mEvtCutNameList = "";

/* 809E3D44-809E3D50 000154 000C+00 1/2 0/0 0/0 .data            mEvtCutList__11daNpc_grR_c */
daNpc_grR_c::cutFunc daNpc_grR_c::mEvtCutList[1] = {
    NULL,
};

/* 809DF8CC-809DFA50 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpc_grR_cFv */
daNpc_grR_c::daNpc_grR_c() {}

/* 809DFAE0-809DFCE0 000300 0200+00 1/0 0/0 0/0 .text            __dt__11daNpc_grR_cFv */
daNpc_grR_c::~daNpc_grR_c() {
    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }

    #ifdef DEBUG
    if (mHIO != NULL) {
        mHIO->removeHIO();
    }
    #endif
}

/* 809E38D8-809E3944 000000 006C+00 12/12 0/0 0/0 .rodata          m__17daNpc_grR_Param_c */
daNpc_grR_HIOParam const daNpc_grR_Param_c::m = {
    60.0f,
    -3.0f,
    1.0f,
    600.0f,
    255.0f,
    240.0f,
    35.0f,
    60.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -30.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    3,
    1,
    5,
    1,
    180.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false
};

/* 809DFCE0-809DFFB8 000500 02D8+00 1/1 0/0 0/0 .text            create__11daNpc_grR_cFv */
cPhs__Step daNpc_grR_c::create() {
    fopAcM_SetupActor(this, daNpc_grR_c);

    mType = getTypeFromParam();

    if (home.angle.x != 0xFFFF) {
        mFlowID = home.angle.x;
    } else {
        mFlowID = -1;
    }

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    int res_count = 0;
    int i = 0;
    for (; l_loadRes_list[mType][i] >= 0; i++) {
        cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_resNames[l_loadRes_list[mType][i]]);
        if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (phase == cPhs_COMPLEATE_e) {
            res_count++;
        }
    }

    if (res_count == i) {
        static u32 const heapSize[4] = {
            0x2D70, 0x2D60, 0x2D70, 0,
        };

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        J3DModel* model = mpMorf->getModel();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpc_grR_Param_c::m.common.width, daNpc_grR_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_grR_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    }

    return cPhs_INIT_e;
}

/* 809DFFB8-809E0240 0007D8 0288+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_grR_cFv */
int daNpc_grR_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;

    if (l_bmdGetParamList[0][0] >= 0) {
        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[0][1]], l_bmdGetParamList[0][0]);
    }

    JUT_ASSERT(458, 0 != mdlData_p);

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
    model->setUserArea((u32)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(ANM_FH_KEEE, false)) {
        return 0;
    }

    setMotionAnm(ANM_AGURA_WAIT, 0.0f);

    return 1;
}

/* 809E03FC-809E0430 000C1C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_grR_cFv */
int daNpc_grR_c::Delete() {
    this->~daNpc_grR_c();
    return 1;
}

/* 809E0430-809E0450 000C50 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_grR_cFv */
int daNpc_grR_c::Execute() {
    return execute();
}

/* 809E0450-809E04E0 000C70 0090+00 1/1 0/0 0/0 .text            Draw__11daNpc_grR_cFv */
int daNpc_grR_c::Draw() {
    mpMorf->getModel()->getModelData()->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    return draw(chkAction(&daNpc_grR_c::test), FALSE, daNpc_grR_Param_c::m.common.real_shadow_size, NULL, FALSE);
}

/* 809E04E0-809E0714 000D00 0234+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpc_grR_cFP8J3DJointP8J3DModel */
int daNpc_grR_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {1, 3, 4};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 3:
        case 4:
            setLookatMtx(jntNo, i_jointList, daNpc_grR_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    if (jntNo == 1) {
        mDoMtx_stack_c::YrotM(-field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(field_0x908[0].x);
    } else if (jntNo == 4) {
        mDoMtx_stack_c::YrotM(-field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jntNo == 4 || jntNo == 7) && (mAnmFlags & ANM_PLAY_BCK) != 0) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 809E0714-809E0734 000F34 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpc_grR_cFP10fopAc_ac_c */
int daNpc_grR_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_grR_c*>(a_this)->CreateHeap();
}

/* 809E0734-809E0780 000F54 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpc_grR_cFP8J3DJointi */
int daNpc_grR_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_grR_c* i_this = (daNpc_grR_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809E0780-809E08FC 000FA0 017C+00 1/0 0/0 0/0 .text            setParam__11daNpc_grR_cFv */
void daNpc_grR_c::setParam() {
    actionFunc action = mNextAction;
    u32 uVar1 = 10;
    selectAction();

    if (!mTwilight && daPy_py_c::checkNowWolf()) {
        uVar1 = 0;
    }

    if (mNextAction != action) {
        for (int i = 2; i < 2; i++) {
            mActorMngr[i].initialize();
        }
    }

    field_0xdf8 = 0;
    field_0xdfc = 0;

    s16 talk_distance = daNpc_grR_Param_c::m.common.talk_distance;
    s16 attention_distance = daNpc_grR_Param_c::m.common.attention_distance;
    s16 attention_angle;
    s16 talk_angle;
    if (mType == TYPE_MARO) {
        talk_angle = 6;
        attention_angle = 6;
    } else {
        talk_angle = daNpc_grR_Param_c::m.common.talk_angle;
        attention_angle = daNpc_grR_Param_c::m.common.attention_angle;

        if (mAnm != ANM_AGURA_WAIT && !field_0xe18) {
            uVar1 = 0;
        }
    }

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = uVar1;

    scale.set(daNpc_grR_Param_c::m.common.scale, daNpc_grR_Param_c::m.common.scale, daNpc_grR_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpc_grR_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpc_grR_Param_c::m.common.knee_length);
    gravity = daNpc_grR_Param_c::m.common.gravity;
}

/* 809E08FC-809E0A7C 00111C 0180+00 1/0 0/0 0/0 .text            main__11daNpc_grR_cFv */
BOOL daNpc_grR_c::main() {
    if (!doEvent()) {
        doNormalAction(1);
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (!daNpc_grR_Param_c::m.common.debug_mode_ON && (!dComIfGp_event_runCheck() || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK()))) {
        if (mOrderEvtNo != 0) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
        }

        orderEvent(field_0xe18, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 40, 0xFF, 1);
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playExpression();
    playMotion();

    return TRUE;
}

/* 809E0A7C-809E0B5C 00129C 00E0+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_grR_cFv */
BOOL daNpc_grR_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* i_btk = NULL;

        if (l_btkGetParamList[0].fileIdx >= 0) {
            i_btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
        }

        if (i_btk == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.02f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.02f);
            mpMatAnm->onEyeMoveFlag();
            
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 809E0B5C-809E105C 00137C 0500+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_grR_cFv */
void daNpc_grR_c::setAttnPos() {
    static cXyz eyeOffset(24.0f, 30.0f, 0.0f);

    cXyz sp7c, sp88, sp94, spa0;
    f32 attention_offset = daNpc_grR_Param_c::m.common.attention_offset;

    mDoMtx_stack_c::YrotS(field_0x990);
    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        sp94.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&sp94, &spa0);
        field_0x908[i].x = -spa0.z;
        field_0x908[i].z = -spa0.x;
    }

    cLib_chaseS(&field_0x992, 0, 0x555);

    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.x = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &sp94);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp94);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp94);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        sp88 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp88.x, sp88.z);
        mEyeAngle.x = -cM_atan2s(sp88.y, sp88.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    f32 fVar1 = 0.0f;
    f32 fVar2 = 0.0f;

    sp88.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&sp88, &sp7c);

    attention_info.position.set(mHeadPos.x, mHeadPos.y + attention_offset, mHeadPos.z);

    if (!mHide && !mTwilight) {
        if (!mIsDamaged) {
            mCyl.SetTgType(0xD8FBFDFF);
            mCyl.SetTgSPrm(0x1F);
            mCyl.OnTgNoHitMark();
        } else {
            mCyl.SetTgType(0);
            mCyl.SetTgSPrm(0);
        }

        mCyl.SetC(sp7c);
        mCyl.SetH(daNpc_grR_Param_c::m.common.height + fVar1);
        mCyl.SetR(daNpc_grR_Param_c::m.common.width + fVar2);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrTgHit();
}

/* 809E105C-809E1260 00187C 0204+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_grR_cFib */
bool daNpc_grR_c::setExpressionAnm(int i_idx, bool i_modify) {
    J3DAnmTransform* anm = NULL;
    int i_attr = J3DFrameCtrl::EMode_NONE;

    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    }

    bool bVar1 = false;
    switch (i_idx) {
        case ANM_NONE:
            bVar1 = setExpressionBtp(EXPR_BTP_GRR);
            break;

        case ANM_F_TALK_A:
            bVar1 = setExpressionBtp(EXPR_BTP_GRR);
            break;

        case ANM_F_SWING:
            bVar1 = setExpressionBtp(EXPR_BTP_GRR);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case ANM_F_LAUGH:
            bVar1 = setExpressionBtp(EXPR_BTP_F_LAUGH);
            break;

        case ANM_F_KEEE:
            bVar1 = setExpressionBtp(EXPR_BTP_F_KEEE);
            break;

        case ANM_F_KEEETALK:
            bVar1 = setExpressionBtp(EXPR_BTP_F_KEEETALK);
            break;

        case ANM_FH_KEEE:
            bVar1 = setExpressionBtp(EXPR_BTP_FH_KEEE);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case ANM_FH_LAUGH:
            bVar1 = setExpressionBtp(EXPR_BTP_FH_LAUGH);
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        default:
            anm = NULL;
            break;
    }

    if (!bVar1) {
        return false;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBckAnm(anm, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PAUSE_BCK | ANM_PLAY_BCK;
        mExpressionLoops = 0;
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", "d_a_npc_grr.cpp");

    return false;
}

/* 809E1260-809E138C 001A80 012C+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpc_grR_cFi */
bool daNpc_grR_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* anm = NULL;
    int i_attr = J3DFrameCtrl::EMode_NONE;

    mAnmFlags &= ~(ANM_PLAY_BTP | ANM_PAUSE_BTP | ANM_FLAG_800);

    if (l_btpGetParamList[i_idx].fileIdx >= 0) {
        anm = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_idx].arcIdx], l_btpGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
        case EXPR_BTP_GRR:
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case EXPR_BTP_F_LAUGH:
        case EXPR_BTP_F_KEEE:
        case EXPR_BTP_F_KEEETALK:
            break;
        
        case EXPR_BTP_FH_KEEE:
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        case EXPR_BTP_FH_LAUGH:
            i_attr = J3DFrameCtrl::EMode_LOOP;
            break;

        default:
            anm = NULL;
            break;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBtpAnm(anm, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;

        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", "d_a_npc_grr.cpp");

    return false;
}

/* 809E138C-809E13B8 001BAC 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_grR_cFif */
void daNpc_grR_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 8) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 809E13B8-809E1548 001BD8 0190+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpc_grR_cFif */
void daNpc_grR_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* anm = NULL;
    J3DAnmTextureSRTKey* i_btk = NULL;
    int i_attr = J3DFrameCtrl::EMode_LOOP;

    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    }

    switch (i_idx) {
        case ANM_WAIT_A:
        case ANM_TALK_A:
            break;

        case ANM_STEP:
        case ANM_AGURA_TALK:
        case ANM_AGURA_GETUP:
        case ANM_TO_AGURA:
        case ANM_LAUGH:
        case ANM_TALK_B:
            i_attr = J3DFrameCtrl::EMode_NONE;
            break;

        case ANM_AGURA_WAIT:
        case ANM_WAIT_B:
        case ANM_SWING:
            break;

        default:
            anm = NULL;
            i_btk = NULL;
            break;
    }

    if (l_btkGetParamList[0].fileIdx >= 0) {
        i_btk = getTexSRTKeyAnmP(l_resNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
    }

    if (i_btk != NULL && setBtkAnm(i_btk, mpMorf->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
        mAnmFlags |= ANM_PAUSE_BTK | ANM_PLAY_BTK;
    }

    if (anm != NULL && setMcaMorfAnm(anm, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
        mAnm = i_idx;
    }
}

/* 809E1548-809E158C 001D68 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_grR_cFifi */
void daNpc_grR_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0xB) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 809E158C-809E1594 001DAC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_grR_cFv */
BOOL daNpc_grR_c::drawDbgInfo() {
    return FALSE;
}

/* 809E1594-809E1598 001DB4 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_grR_cFv */
void daNpc_grR_c::drawOtherMdls() {
    /* empty function */
}

/* 809E1598-809E15E4 001DB8 004C+00 1/1 0/0 0/0 .text            getTypeFromParam__11daNpc_grR_cFv */
u8 daNpc_grR_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case TYPE_0:
            return TYPE_0;
        
        case TYPE_SPAWATER:
            return TYPE_SPAWATER;

        case TYPE_MARO:
            return TYPE_MARO;

        default:
            return TYPE_0;
    }
}

/* 809E15E4-809E16CC 001E04 00E8+00 1/1 0/0 0/0 .text            isDelete__11daNpc_grR_cFv */
BOOL daNpc_grR_c::isDelete() {
    if (strcmp(dComIfGp_getStartStageName(), "D_MN04") == 0 &&
        /* dSv_event_flag_c::M_031 - Goron Mines - Goron Mines clear */
        daNpcF_chkEvtBit(64)) {
        return TRUE;
    }

    if (mType == TYPE_3 || mType == TYPE_0 ||
        /* dSv_event_flag_c::F_0264 - Cutscene - Get master sword */
        mType == TYPE_SPAWATER && daNpcF_chkEvtBit(264) &&
        /* dSv_event_flag_c::M_076 - Misc. - First conversation with Castle Town Malo Mart shop clerk */
        (!daNpcF_chkEvtBit(109) ||
        /* dSv_event_flag_c::F_0377 - Castle Town - Goron spring water shop open! */
        !daNpcF_chkEvtBit(377)) ||
        /* dSv_event_flag_c::M_076 - Misc. - First conversation with Castle Town Malo Mart shop clerk */
        mType == TYPE_MARO && daNpcF_chkEvtBit(109) &&
        /* dSv_event_flag_c::F_0377 - Castle Town - Goron spring water shop open! */
        daNpcF_chkEvtBit(377)) {
        return FALSE;
    }

    return TRUE;
}

/* 809E16CC-809E18A4 001EEC 01D8+00 1/1 0/0 0/0 .text            reset__11daNpc_grR_cFv */
void daNpc_grR_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 2; i++) {
        mActorMngr[i].initialize();
    }

    mNextAction = NULL;
    mAction = NULL;
    field_0xdf8 = 0;
    field_0xdfc = 0;
    field_0xe00 = 0;
    field_0xe04 = 0;
    mLookMode = -1;
    mMode = 0;
    mItemID = fpcM_ERROR_PROCESS_ID_e;
    current.pos = home.pos;
    old.pos = current.pos;
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xe18 = false;

    if (mType != TYPE_MARO) {
        setExpression(EXPR_FH_KEEE, -1.0f);
        setMotion(MOT_AGURA_WAIT, -1.0f, 0);
    }

    field_0x9ee = true;
}

/* 809E18A4-809E1B28 0020C4 0284+00 1/1 0/0 0/0 .text            playExpression__11daNpc_grR_cFv */
void daNpc_grR_c::playExpression() {
    daNpcF_anmPlayData dat0 = {ANM_F_TALK_A, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {ANM_F_LAUGH, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {ANM_FH_LAUGH, 0.0f, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2 = {ANM_F_SWING, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3a = {ANM_F_KEEE, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {ANM_FH_KEEE, 0.0f, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4a = {ANM_F_KEEETALK, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {ANM_FH_KEEE, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5 = {ANM_FH_LAUGH, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {ANM_FH_KEEE, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {ANM_NONE, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};

    daNpcF_anmPlayData** ppDat[8] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
    };

    if (mExpression >= 0 && mExpression < 8) {
        playExpressionAnm(ppDat);
    }
}

/* 809E1B28-809E1F10 002348 03E8+00 1/1 0/0 0/0 .text            playMotion__11daNpc_grR_cFv */
void daNpc_grR_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_WAIT_A, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1a = {ANM_TALK_A, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {ANM_WAIT_A, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};
    daNpcF_anmPlayData dat2 = {ANM_SWING, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {ANM_AGURA_WAIT, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4a = {ANM_AGURA_TALK, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {ANM_AGURA_WAIT, 0.0f, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5a = {ANM_TO_AGURA, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5b = {ANM_AGURA_WAIT, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};
    daNpcF_anmPlayData dat6a = {ANM_AGURA_GETUP, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat6b = {ANM_WAIT_A, 0.0f, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7a = {ANM_LAUGH, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat7b = {ANM_WAIT_A, 0.0f, 0};
    daNpcF_anmPlayData* pDat7[2] = {&dat7a, &dat7b};
    daNpcF_anmPlayData dat8a = {ANM_TALK_B, daNpc_grR_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8b = {ANM_WAIT_B, 0.0f, 0};
    daNpcF_anmPlayData* pDat8[2] = {&dat8a, &dat8b};
    daNpcF_anmPlayData dat9 = {ANM_WAIT_B, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {ANM_STEP, daNpc_grR_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};

    daNpcF_anmPlayData** ppDat[11] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10
    };

    if (mMotion >= 0 && mMotion < 0xB) {
        playMotionAnm(ppDat);

        if (mMotion == 2) {
            mSound.startCreatureVoiceLevel(Z2SE_GRR_MV_SINGING, -1);
        }
    }
}

/* 809E1F10-809E1F3C 002730 002C+00 2/2 0/0 0/0 .text            chkAction__11daNpc_grR_cFM11daNpc_grR_cFPCvPvPv_i */
BOOL daNpc_grR_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 809E1F3C-809E1FE4 00275C 00A8+00 2/2 0/0 0/0 .text            setAction__11daNpc_grR_cFM11daNpc_grR_cFPCvPvPv_i */
BOOL daNpc_grR_c::setAction(actionFunc action) {
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

/* 809E1FE4-809E2088 002804 00A4+00 1/1 0/0 0/0 .text            selectAction__11daNpc_grR_cFv */
BOOL daNpc_grR_c::selectAction() {
    mNextAction = NULL;

    if (daNpc_grR_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_grR_c::test;
    } else {
        switch (mType) {
            case TYPE_MARO:
                mNextAction = &daNpc_grR_c::waitMaro;
                break;

            default:
                mNextAction = &daNpc_grR_c::wait;
                break;
        }
        
    }

    return TRUE;
}

/* 809E2088-809E219C 0028A8 0114+00 1/1 0/0 0/0 .text            doNormalAction__11daNpc_grR_cFi */
void daNpc_grR_c::doNormalAction(int param_1) {
    if (param_1 != 0 && hitChk2(&mCyl, TRUE, FALSE)) {
        int i_timer;
        if (mCutType == daPy_py_c::CUT_TYPE_TURN_RIGHT) {
            i_timer = 20;
        } else {
            i_timer = daNpc_grR_Param_c::m.common.damage_time;
        }

        setDamage(i_timer, 7, 0);
        setLookMode(LOOK_RESET);
    } else if (mIsDamaged && mDamageTimer == 0) {
        mMode = 0;
        mIsDamaged = false;
    }

    mOrderEvtNo = 0;

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 809E219C-809E2480 0029BC 02E4+00 1/1 0/0 0/0 .text            doEvent__11daNpc_grR_cFv */
BOOL daNpc_grR_c::doEvent() {
    BOOL rv = FALSE;

    if (dComIfGp_event_runCheck() != 0) {
        dEvent_manager_c& eventManager = dComIfGp_getEventManager();

        if ((eventInfo.checkCommandTalk() || eventInfo.checkCommandDemoAccrpt()) && !field_0xe18) {
            mOrderNewEvt = false;
        }

        if (eventInfo.checkCommandTalk()) {
            if (chkAction(&daNpc_grR_c::talk)) {
                (this->*mAction)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
                setAction(&daNpc_grR_c::talk);
            }

            rv = TRUE;
        } else {
            if (mItemID != fpcM_ERROR_PROCESS_ID_e) {
                dComIfGp_event_setItemPartnerId(mItemID);
                mItemID = fpcM_ERROR_PROCESS_ID_e;
            }

            int staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
            if (staffId != -1) {
                mStaffID = staffId;
                int evtCutNo = eventManager.getMyActIdx(staffId, &mEvtCutNameList, 1, 0, 0);

                JUT_ASSERT(1771, (0 <= evtCutNo) && (evtCutNo < dEvent_manager_c::NUM_EVT_CUTS_e));
                JUT_ASSERT(1772, 0 != mEvtCutList[evtCutNo]);

                if ((this->*mEvtCutList[evtCutNo])(staffId)) {
                    eventManager.cutEnd(staffId);
                }

                rv = TRUE;
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx) != 0) {
                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
            }
        }

        int i_msgTimer, i_expression, i_motion;
        i_msgTimer = mMsgTimer;

        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) != 0) {
            if (!field_0x9eb) {
                setExpression(i_expression, -1.0f);
                setMotion(i_motion, -1.0f, 0);
            }
        } else if (i_msgTimer != 0 && !field_0x9eb) {
            setExpressionTalkAfter();
        }
    } else {
        mMsgTimer = 0;

        if (mStaffID != -1) {
            mAction = NULL;
            mStaffID = -1;
        }
    }

    return rv;
}

/* 809E2480-809E24A4 002CA0 0024+00 5/5 0/0 0/0 .text            setLookMode__11daNpc_grR_cFi */
void daNpc_grR_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 5 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* 809E24A4-809E272C 002CC4 0288+00 1/1 0/0 0/0 .text            lookat__11daNpc_grR_cFv */
void daNpc_grR_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL i_snap = FALSE;
    f32 body_angleX_min = daNpc_grR_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpc_grR_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpc_grR_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpc_grR_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpc_grR_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpc_grR_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpc_grR_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpc_grR_Param_c::m.common.head_angleY_max;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookatPos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookatAngle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};
    cXyz spe8;

    switch (mLookMode) {
        case LOOK_NONE:
            break;

        case LOOK_RESET:
            i_snap = TRUE;
            break;

        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            player = daPy_getPlayerActorClass();

            if (mLookMode != LOOK_PLAYER_TALK) {
                break;
            }

            head_angleY_min = -80.0f;
            head_angleY_max = 80.0f;
            break;

        case LOOK_ACTOR:
            player = (daPy_py_c*)mActorMngr[1].getActorP();
            break;
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK && mLookMode != LOOK_ACTOR) {
            mLookPos.y -= 40.0f;
        }

        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }
    
    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f, 0.0f, 0.0f, 
                     head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max, mCurAngle.y, lookatPos);
    mLookat.calc(this, model->getBaseTRMtx(), lookatAngle, i_snap, angle_delta, FALSE);
}

/* 809E272C-809E27CC 002F4C 00A0+00 1/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_grR_cFv */
void daNpc_grR_c::setExpressionTalkAfter() {
    switch (mExpression) {
        case EXPR_F_LAUGH:
            setExpression(EXPR_FH_LAUGH, -1.0f);
            break;

        case EXPR_F_SWING:
            break;

        case EXPR_F_KEEE:
            setExpression(EXPR_FH_KEEE, -1.0f);
            break;
        
        default:
            setExpression(EXPR_NONE, -1.0f);
            break;
    }
}

/* 809E27CC-809E29B8 002FEC 01EC+00 1/0 0/0 0/0 .text            wait__11daNpc_grR_cFPv */
int daNpc_grR_c::wait(void* param_1) {
    switch (mMode) {
        case 0:
            if (!field_0xe18 && mMotion != MOT_TO_AGURA && mMotion != MOT_AGURA_WAIT && mMotion != MOT_AGURA_TALK) {
                setExpression(EXPR_FH_KEEE, -1.0f);
                setMotion(MOT_TO_AGURA, -1.0f, 0);
            }

            setLookMode(LOOK_NONE);
            mTurnMode = 0;
            field_0x9ea = true;
            mMode = 2;
            // fallthrough
        case 2:
            if (!mIsDamaged) {
                BOOL bVar1 = mActorMngr[0].getActorP() != NULL;
                if (chkFindPlayer2(bVar1, shape_angle.y)) {
                    if (!bVar1) {
                        mActorMngr[0].entry(daPy_getPlayerActorClass());
                        mTurnMode = 0;
                    }
                } else if (bVar1) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }

                if (mActorMngr[0].getActorP() == NULL) {
                    setLookMode(LOOK_NONE);

                    if (home.angle.y != mCurAngle.y && step(home.angle.y, 7, 10, 15)) {
                        setExpression(EXPR_FH_KEEE, -1.0f);
                        setMotion(MOT_TO_AGURA, -1.0f, 0);
                        mMode = 0;
                    }
                }
            }
            break;

        case 3:
            break;
    }

    return 1;
}

/* 809E29B8-809E2B48 0031D8 0190+00 1/0 0/0 0/0 .text            waitMaro__11daNpc_grR_cFPv */
int daNpc_grR_c::waitMaro(void* param_1) {
    switch (mMode) {
        case 0:
            setExpression(EXPR_F_SWING, -1.0f);
            setMotion(MOT_SWING, -1.0f, 0);
            setLookMode(LOOK_NONE);
            mTurnMode = 0;
            field_0x9ea = true;
            mMode = 2;
            // fallthrough
        case 2:
            if (!mIsDamaged) {
                BOOL bVar1 = mActorMngr[0].getActorP() != NULL;

                if (chkFindPlayer2(bVar1, shape_angle.y)) {
                    if (!bVar1) {
                        mActorMngr[0].entry(daPy_getPlayerActorClass());
                        mTurnMode = 0;
                    }
                } else if (bVar1) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }

                if (mActorMngr[0].getActorP() != NULL) {
                    setLookMode(LOOK_PLAYER);
                } else {
                    setLookMode(LOOK_NONE);

                    if (home.angle.y != mCurAngle.y && step(home.angle.y, 7, 10, 15)) {
                        mMode = 0;
                    }
                }
            }
            break;

        case 3:
            break;
    }

    return 1;
}

/* 809E2B48-809E2E84 003368 033C+00 2/0 0/0 0/0 .text            talk__11daNpc_grR_cFPv */
int daNpc_grR_c::talk(void* param_1) {
    BOOL rv = FALSE;
    BOOL bVar1 = FALSE;
    int i_itemNo = 0;

    switch (mMode) {
        case 0: {
            if (mIsDamaged) {
                break;
            }

            if (strcmp(dComIfGp_getStartStageName(), "D_MN04") == 0 && !field_0xe18) {
                daNpcF_offTmpBit(0xB);
            }

            int flow_id = mFlowID;
            field_0xe18 = false;
            initTalk(flow_id, NULL);
            mTurnMode = 0;
            mMode = 2;
        }
            // fallthrough
        case 2:
            if (field_0x9ea) {
                bVar1 = TRUE;
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngr[0].entry(daPy_getPlayerActorClass());
            } else {
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngr[0].entry(daPy_getPlayerActorClass());

                if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    bVar1 = TRUE;
                } else if (step(fopAcM_searchPlayerAngleY(this), 7, 10, 15)) {
                    setExpression(EXPR_NONE, -1.0f);
                    setMotion(MOT_WAIT_A, -1.0f, 0);
                    mTurnMode = 0;
                }
            }

            if (bVar1 && talkProc(NULL, TRUE, NULL)) {
                if (mType == TYPE_0) {
                    if (mFlow.getEventId(&i_itemNo) == 1) {
                        mItemID = fopAcM_createItemForPresentDemo(&current.pos, i_itemNo, 0, -1, -1, NULL, NULL);

                        if (mItemID != fpcM_ERROR_PROCESS_ID_e) {
                            s16 i_eventID = dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xFF);
                            dComIfGp_getEvent().reset(this);
                            fopAcM_orderChangeEventId(this, i_eventID, 1, 0xFFFF);
                            field_0xe18 = true;
                            field_0x9ec = true;
                            rv = TRUE;
                            mOrderNewEvt = true;
                        }
                    } else {
                        rv = TRUE;
                    }
                } else if (mType == TYPE_SPAWATER) {
                    /* dSv_event_flag_c::F_0399 - Kakariko Village - Conversation with Gor Liggs - hot spring game available */
                    if (daNpcF_chkEvtBit(399)) {
                        if (mFlow.getChoiceNo() == 0) {
                            dStage_changeScene(0x24, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
                        } else {
                            rv = TRUE;
                        }
                    } else {
                        rv = TRUE;
                    }
                } else {
                    rv = TRUE;
                }
        }

            if (rv) {
                mMode = 3;

                if (!field_0x9ec) {
                    dComIfGp_event_reset();
                }

                field_0x9ec = false;
            }
            break;
            
        case 3:
            break;
    }

    return rv;
}

/* 809E2E84-809E2F68 0036A4 00E4+00 2/0 0/0 0/0 .text            test__11daNpc_grR_cFPv */
int daNpc_grR_c::test(void* param_1) {
    switch (mMode) {
        case 0:
            speedF = 0.0f;
            speed.setall(0.0f);
            mMode = 2;
            // fallthrough
        case 2:
            if (daNpc_grR_Param_c::m.common.face_expression != mExpression) {
                setExpression(daNpc_grR_Param_c::m.common.face_expression, daNpc_grR_Param_c::m.common.morf_frame);
            }

            setMotion(daNpc_grR_Param_c::m.common.motion, daNpc_grR_Param_c::m.common.morf_frame, 0);
            setLookMode(daNpc_grR_Param_c::m.common.look_mode);
            mOrderEvtNo = 0;
            attention_info.flags = 0;
            break;

        case 3:
            break;
    }

    return 1;
}

/* 809E2F68-809E2F88 003788 0020+00 1/0 0/0 0/0 .text            daNpc_grR_Create__FPv */
static int daNpc_grR_Create(void* a_this) {
    return static_cast<daNpc_grR_c*>(a_this)->create();
}

/* 809E2F88-809E2FA8 0037A8 0020+00 1/0 0/0 0/0 .text            daNpc_grR_Delete__FPv */
static int daNpc_grR_Delete(void* a_this) {
    return static_cast<daNpc_grR_c*>(a_this)->Delete();
}

/* 809E2FA8-809E2FC8 0037C8 0020+00 1/0 0/0 0/0 .text            daNpc_grR_Execute__FPv */
static int daNpc_grR_Execute(void* a_this) {
    return static_cast<daNpc_grR_c*>(a_this)->Execute();
}

/* 809E2FC8-809E2FE8 0037E8 0020+00 1/0 0/0 0/0 .text            daNpc_grR_Draw__FPv */
static int daNpc_grR_Draw(void* a_this) {
    return static_cast<daNpc_grR_c*>(a_this)->Draw();
}

/* 809E2FE8-809E2FF0 003808 0008+00 1/0 0/0 0/0 .text            daNpc_grR_IsDelete__FPv */
static int daNpc_grR_IsDelete(void* a_this) {
    return 1;
}

AUDIO_INSTANCES;

/* 809E3DB8-809E3DD8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grR_MethodTable */
static actor_method_class daNpc_grR_MethodTable = {
    (process_method_func)daNpc_grR_Create,
    (process_method_func)daNpc_grR_Delete,
    (process_method_func)daNpc_grR_Execute,
    (process_method_func)daNpc_grR_IsDelete,
    (process_method_func)daNpc_grR_Draw,
};

/* 809E3DD8-809E3E08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRR */
extern actor_process_profile_definition g_profile_NPC_GRR = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRR,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_grR_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  312,                    // mPriority
  &daNpc_grR_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
