/**
 * @file d_a_npc_tkc.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_tkc.h"
#include "d/d_camera.h"

enum Tkc_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_TKC_F_TALK_A = 0x6,
    /* 0x07 */ BCK_TKC_FLY,

    /* BMDR */
    /* 0x0A */ BMDR_TKC = 0xA,

    /* BTK */
    /* 0x0D */ BTK_TKC = 0xD,

    /* BTP */
    /* 0x10 */ BTP_TKC = 0x10,
};

enum RES_Name {
    /* 0x0 */ TKC,
};

enum Joint {
    /* 0x0 */ JNT_CENTER,
    /* 0x1 */ JNT_HEAD,
    /* 0x2 */ JNT_ARML,
    /* 0x3 */ JNT_ARMR,
    /* 0x4 */ JNT_CHIN,
    /* 0x5 */ JNT_MOUTH,
};

enum Animation {
    /* 0x0 */ ANM_NONE,
    /* 0x1 */ ANM_F_TALK_A,
    /* 0x2 */ ANM_FLY,
};

enum Expression_BTP {
    /* 0x0 */ EXPR_BTP_TKC,
};

enum Expression {
    /* 0x0 */ EXPR_TALK_A,
    /* 0x1 */ EXPR_NONE,
};

enum Motion {
    /* 0x0 */ MOT_FLY,
};

enum Event {
    /* 0x0 */ EVT_NONE,
    /* 0x1 */ EVT_TKS_SECRET,
    /* 0x2 */ EVT_TKS_WARP,
    /* 0x3 */ EVT_TKC_WARP,
};

enum Type {
    /* 0x00 */ TYPE_0,
    /* 0x01 */ TYPE_1,
    /* 0x02 */ TYPE_2,
    /* 0x03 */ TYPE_3,
    /* 0x04 */ TYPE_4,
    /* 0xFF */ TYPE_0xFF = 0xFF,
};

#if DEBUG
daNpcTkc_HIO_c::daNpcTkc_HIO_c() {
    m = daNpcTkc_Param_c::m;
}

void daNpcTkc_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genSlider("ワープ初期位置", &m.warp_initial_pos, 0.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("下移動速度", &m.down_move_spd, 0.0f, 30.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("上移動速度", &m.up_move_spd, 0.0f, 30.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("回転周期", &m.rotation_interval, 0, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("楕円幅", &m.ellipse_width, 0.0f, 200.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Step", &m.step, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("飛行範囲", &m.flight_range, 0.0f, 200.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("目標高さ", &m.target_height, 0.0f, 2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("振幅", &m.amplitude, -100.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("周期", &m.interval, 0, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Div", &m.div, 0.0f, 1.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Max", &m.max, 0.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Min", &m.min, 0.0f, 300.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("会話距離", &m.conversation_dist, 0.0f, 300.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("X 角度", &m.x_angle, -0x8000, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Z 角度", &m.z_angle, -0x8000, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    daNpcF_commonGenMessage(ctx, &m.common);
}
#endif

/* 80B10A80-80B10A98 000020 0018+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam3 l_bckGetParamList[3] = {
    {-1, J3DFrameCtrl::EMode_LOOP},
    {BCK_TKC_F_TALK_A, J3DFrameCtrl::EMode_NONE},
    {BCK_TKC_FLY, J3DFrameCtrl::EMode_LOOP},
};

/* 80B10A98-80B10AA0 000038 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam3 l_btpGetParamList[1] = {
    {BTP_TKC, J3DFrameCtrl::EMode_LOOP},
};

/* 80B10AA0-80B10AA8 000040 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam3 l_btkGetParamList[1] = {
    {BTK_TKC, J3DFrameCtrl::EMode_LOOP},
};

/* 80B10AA8-80B10AB8 -00001 0010+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    "",
    "TKS_SECRET",
    "TKS_WARP",
    "TKC_WARP",
};

/* 80B10AB8-80B10ABC -00001 0004+00 8/9 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Tkc";

/* 80B10ABC-80B10AC0 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Tkc";

/* 80B10CFC-80B10D00 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static NPC_TKC_HIO_CLASS l_HIO;

/* 80B10AE4-80B10B14 000084 0030+00 0/2 0/0 0/0 .data            mEvtSeqList__10daNpcTkc_c */
daNpcTkc_c::evtFunc daNpcTkc_c::mEvtSeqList[4] = {
    NULL,
    &daNpcTkc_c::EvCut_TksSecretChild,
    &daNpcTkc_c::EvCut_TksWarpExit,
    &daNpcTkc_c::EvCut_TksWarpBack,
};

/* 80B0C7CC-80B0C898 0000EC 00CC+00 1/1 0/0 0/0 .text            __ct__10daNpcTkc_cFv */
daNpcTkc_c::daNpcTkc_c() {}

/* 80B0C964-80B0CA9C 000284 0138+00 1/0 0/0 0/0 .text            __dt__10daNpcTkc_cFv */
daNpcTkc_c::~daNpcTkc_c() {
    dComIfG_resDelete(&mPhase, l_arcName);

    if (heap != NULL) {
        mAnm_p->stopZelAnime();
    }

    #if DEBUG
    if (mpHIO != NULL) {
        mpHIO->removeHIO();
    }
    #endif
}

/* 80B108B4-80B10958 000000 00A4+00 13/13 0/0 0/0 .rodata          m__16daNpcTkc_Param_c */
daNpcTkc_HIOParam const daNpcTkc_Param_c::m = {
    10.0f,
    0.0f,
    1.0f,
    40.0f,
    30.0f,
    20.0f,
    0.0f,
    8.5f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.8f,
    12.0f,
    5,
    6,
    7,
    6,
    80.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    200.0f,
    8.0f,
    8.0f,
    30.0f,
    0.2f,
    10.0f,
    2.0f,
    100.0f,
    60.0f,
    60.0f,
    0.2f,
    5.0f,
    0x400,
    0x3E80,
    0,
    0,
};

/* 80B0CA9C-80B0CD7C 0003BC 02E0+00 1/1 0/0 0/0 .text            Create__10daNpcTkc_cFv */
cPhs__Step daNpcTkc_c::Create() {
    fopAcM_ct(this, daNpcTkc_c);

    if (getType() != TYPE_2) {
        if (
            // D_MN07 - City in the Sky - Entrance
            strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0 &&
            dComIfGp_getStartStageRoomNo() == 16 &&
            // dSv_event_flag_c::F_0268 - City in the Sky - City in the Sky clear
            !daNpcF_chkEvtBit(268) &&
            dComIfGs_isDungeonItemWarp()
        ) {
            return cPhs_ERROR_e;
        }
    }

    cPhs__Step phase = cPhs_ERROR_e;
    phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2030)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* mdlData_p = mAnm_p->getModel()->getModelData();
        fopAcM_SetMtx(this, mAnm_p->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -15.0f, -15.0f, -15.0f, 15.0f, 15.0f, 15.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        #if DEBUG
        mpHIO = &l_HIO;
        // The Stray Child of the Sky
        mpHIO->entryHIO("はぐれ天空人の子供");
        #endif

        mCcStts.Init(mpHIO->m.common.weight, 0, this);
        mSph.Set(mCcDSph);
        mSph.SetStts(&mCcStts);
        mSph.SetTgType(0);
        mSph.SetTgSPrm(0);
        mSph.SetR(mpHIO->m.common.width);
        mAcchCir.SetWall(mpHIO->m.common.width, mpHIO->m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.OffClrSpeedY();
        mAcch.SetGroundUpY(-7.0f);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        mStatus = 1;
        Execute();

        if (getType() == TYPE_2) {
            mStatus = 0;
        }
    }

    return phase;
}

/* 80B0CD7C-80B0CFC4 00069C 0248+00 1/1 0/0 0/0 .text            CreateHeap__10daNpcTkc_cFv */
int daNpcTkc_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, BMDR_TKC);
    JUT_ASSERT(330, NULL != mdlData_p);

    u32 uVar1 = 0x11020284;
    mAnm_p = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, J3DMdlFlag_DifferedDLBuffer, uVar1);
    if (mAnm_p != NULL && mAnm_p->getModel() == NULL) {
        mAnm_p->stopZelAnime();
        mAnm_p = NULL;
    }

    if (mAnm_p == NULL) {
        return 0;
    }

    J3DModel* mdl_p = mAnm_p->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    mdl_p->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(ANM_F_TALK_A, false)) {
        return 0;
    }

    return 1;
}

/* 80B0D180-80B0D1B4 000AA0 0034+00 1/1 0/0 0/0 .text            Delete__10daNpcTkc_cFv */
int daNpcTkc_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpcTkc_c();
    return 1;
}

/* 80B0D1B4-80B0D1EC 000AD4 0038+00 2/2 0/0 0/0 .text            Execute__10daNpcTkc_cFv */
int daNpcTkc_c::Execute() {
    if (mStatus == 0) {
        return 1;
    }

    execute();
    return 1;
}

/* 80B0D1EC-80B0D25C 000B0C 0070+00 1/1 0/0 0/0 .text            Draw__10daNpcTkc_cFv */
int daNpcTkc_c::Draw() {
    if (mStatus == 0) {
        return 1;
    }

    J3DModelData* mdlData_p = mAnm_p->getModel()->getModelData();
    mdlData_p->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    draw(FALSE, FALSE, mpHIO->m.common.real_shadow_size, NULL, FALSE);
    return 1;
}

/* 80B0D25C-80B0D2CC 000B7C 0070+00 1/1 0/0 0/0 .text            ctrlJoint__10daNpcTkc_cFP8J3DJointP8J3DModel */
int daNpcTkc_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    u16 jointNo = jointNo;
    if ((jntNo == JNT_ARMR || jntNo == JNT_MOUTH) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mAnm_p->getAnm());
        mAnm_p->changeAnm(anm);
    }

    return 1;
}

/* 80B0D2CC-80B0D2EC 000BEC 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__10daNpcTkc_cFP10fopAc_ac_c */
int daNpcTkc_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpcTkc_c* actor = (daNpcTkc_c*)i_this;
    return actor->CreateHeap();
}

/* 80B0D2EC-80B0D338 000C0C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__10daNpcTkc_cFP8J3DJointi */
int daNpcTkc_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* mdl_p = j3dSys.getModel();
        daNpcTkc_c* actor = (daNpcTkc_c*)mdl_p->getUserArea();
        if (actor != NULL) {
            actor->ctrlJoint(i_joint, mdl_p);
        }
    }

    return 1;
}

/* 80B0D338-80B0D37C 000C58 0044+00 0/0 0/0 1/1 .text            setActionWait__10daNpcTkc_cFv */
void daNpcTkc_c::setActionWait() {
    setAction(&daNpcTkc_c::wait);
}

/* 80B0D37C-80B0D3C0 000C9C 0044+00 0/0 0/0 2/2 .text            setActionFollow__10daNpcTkc_cFv */
void daNpcTkc_c::setActionFollow() {
    setAction(&daNpcTkc_c::follow);
}

/* 80B0D3C0-80B0D458 000CE0 0098+00 1/0 0/0 0/0 .text            setMtx__10daNpcTkc_cFv */
void daNpcTkc_c::setMtx() {
    J3DModel* mdl_p = mAnm_p->getModel();
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mCurrentPosYOffset, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(mCurAngle);
    mDoMtx_stack_c::scaleM(scale);
    mdl_p->setBaseTRMtx(mDoMtx_stack_c::get());

    if (mAnmFlags & ANM_PLAY_BCK) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
    }

    mAnm_p->modelCalc();
}

/* 80B0D458-80B0D5A4 000D78 014C+00 1/0 0/0 0/0 .text            setExpressionAnm__10daNpcTkc_cFib */
bool daNpcTkc_c::setExpressionAnm(int i_idx, bool i_modify) {
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    J3DAnmTransform* bckAnm;
    
    bckAnm = l_bckGetParamList[i_idx].fileIdx >= 0 ? getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_idx].fileIdx) : NULL;

    s32 i_attr = l_bckGetParamList[i_idx].attr;
    bool res = false;

    switch (i_idx) {
        case ANM_NONE:
            res = setExpressionBtp(EXPR_BTP_TKC);
            break;

        case ANM_F_TALK_A:
            res = setExpressionBtp(EXPR_BTP_TKC);
            break;

        default:
            bckAnm = NULL;
            break;
    }

    if (!res) {
        return false;
    }

    if (bckAnm == NULL) {
        return true;
    }

    if (setBckAnm(bckAnm, 1.0f, i_attr, 0, -1, i_modify)) {
        mAnmFlags |= (ANM_PAUSE_BCK | ANM_PLAY_BCK);
        mExpressionLoops = 0;
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", __FILE__);
    return false;

}

/* 80B0D5A4-80B0D678 000EC4 00D4+00 1/0 0/0 0/0 .text            setExpressionBtp__10daNpcTkc_cFi */
bool daNpcTkc_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* anm = getTexPtrnAnmP(l_arcName, l_btpGetParamList[i_idx].fileIdx);
    int i_attr = l_btpGetParamList[i_idx].attr;

    mAnmFlags &= ~(ANM_PLAY_BTP | ANM_PAUSE_BTP | ANM_FLAG_800);

    switch (i_idx) {
        default:
            break;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBtpAnm(anm, mAnm_p->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;

        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", __FILE__);
    return false;
}

/* 80B0FAD0-80B0FD18 0033F0 0248+00 1/0 0/0 0/0 .text            main__10daNpcTkc_cFv */
inline BOOL daNpcTkc_c::main() {
    if (mAction) {
        (this->*mAction)();
    }
    
    playExpression();
    playMotion();

    cXyz* movePos = mCcStts.GetCCMoveP();
    if (movePos != NULL) {
        *movePos *= 0.2f;
    }
    fopAcM_posMove(this, movePos);

    if (!chkAction(&daNpcTkc_c::demo)) {
        mAcch.CrrPos(dComIfG_Bgsp());
    }
    mGndChk = mAcch.m_gnd;
    mGroundH = mAcch.GetGroundH();

    return FALSE;
}

/* 80B0FD18-80B0FDE4 003638 00CC+00 1/0 0/0 0/0 .text            ctrlBtk__10daNpcTkc_cFv */
inline BOOL daNpcTkc_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btkAnm = NULL;
        btkAnm = getTexSRTKeyAnmP(l_arcName, l_btkGetParamList[0].fileIdx);
        if (btkAnm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

inline void daNpcTkc_c::lookat() {
    daPy_py_c* player = NULL;

    switch (mLookMode) {
        case LOOK_NONE:
            break;
        
        case LOOK_RESET:
        case LOOK_PLAYER:
            player = daPy_getPlayerActorClass();
            break;
        
        case LOOK_PLAYER_TALK:
            player = (daPy_py_c*)fopAcM_SearchByID(parentActorID);
            break;
    }


    s16 target;
    if (player != NULL) {
        mLookPos = player->attention_info.position;
        if (mLookMode != LOOK_RESET && mLookMode != LOOK_PLAYER) {
            mLookPos.y -= 40.0f;
        }

        target = cLib_targetAngleY(&current.pos, &mLookPos);
    } else {
        target = home.angle.y;
    }

    cLib_addCalcAngleS2(&mCurAngle.y, target, 5, 0x400);
}

/* 80B0FDE4-80B0FFD4 003704 01F0+00 1/0 0/0 0/0 .text            setAttnPos__10daNpcTkc_cFv */
inline void daNpcTkc_c::setAttnPos() {
    setMtx();
    lookat();

    cXyz work(0.0f, 10.0f, 0.0f);
    mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(JNT_HEAD));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&work, &eyePos);

    mHeadAngle.x = mCurAngle.x;
    mHeadAngle.y = mCurAngle.y;
    mEyeAngle.y = 0;
    mEyeAngle.x = 0;

    attention_info.position.set(current.pos.x, current.pos.y + mpHIO->m.common.attention_offset, current.pos.z);
    mSph.SetC(current.pos);

    #if DEBUG
    mSph.SetR(mpHIO->m.common.width);
    #endif

    if (!chkAction(&daNpcTkc_c::appear)) {
        dComIfG_Ccsp()->Set(&mSph);
    }
}

/* 80B0FFD4-80B0FFDC 0038F4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__10daNpcTkc_cFv */
inline int daNpcTkc_c::drawDbgInfo() {
    return 0;
}

/* 80B0D678-80B0DA94 000F98 041C+00 1/1 0/0 0/0 .text            reset__10daNpcTkc_cFv */
void daNpcTkc_c::reset() {
    initialize();
    mpMatAnm->initialize();
    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    if (getMessageNo() == 0 || getMessageNo() == 0xFF) {
        attention_info.flags = 0;
    }

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(mpHIO->m.common.attention_distance, mpHIO->m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(mpHIO->m.common.talk_distance, mpHIO->m.common.talk_angle);
    gravity = mpHIO->m.common.gravity;

    if (getType() == TYPE_2) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        mDoMtx_stack_c::transS(*fopAcM_GetPosition_p(player));
        mDoMtx_stack_c::YrotM(fopAcM_GetAngle_p(player)->y);
        mDoMtx_stack_c::transM(0.0f, mpHIO->m.target_height * 0.3f + 112.0f, 50.0f);
        mDoMtx_stack_c::multVecZero(&home.pos);
        old.pos = home.pos;
        current.pos = home.pos;
        setAngle(fopAcM_searchPlayerAngleY(this));

        static int const m_cameraItemNum = 1;
        dCam_getBody()->StartEventCamera(18, fopAcM_GetID(this), "Type", 1, &m_cameraItemNum, 0);
    } else if (parentActorID == fpcM_ERROR_PROCESS_ID_e) {
        home.pos.y += mpHIO->m.target_height;
    } else {
        cXyz* pos_p = &fopAcM_GetPosition(fopAcM_SearchByID(parentActorID));
        home.pos.set(pos_p->x, pos_p->y + mpHIO->m.target_height, pos_p->z);
    }

    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;
    mTimer = 0;
    field_0xd60 = 0;
    mAction = NULL;
    mLookMode = -1;
    mMode = 0;
    mUnkID = fpcM_ERROR_PROCESS_ID_e;

    mMsgNo = getMessageNo();
    if (mMsgNo == 0 || mMsgNo == 0xFF) {
        mMsgNo = 0xBC6;
    }

    setAngle(current.angle.y);
    speedF = 0.0f;
    speed.setall(0.0f);
    setMotionAnm(ANM_FLY, 0.0f);

    switch (getType()) {
        case TYPE_0:
        case TYPE_0xFF:
            setAction(&daNpcTkc_c::appear);
            scale.setall(0.75f);
            break;
        
        case TYPE_1:
            setAction(&daNpcTkc_c::wait);
            scale.setall(0.75f);
            break;

        case TYPE_2:
            setAction(&daNpcTkc_c::warpTalk);
            scale.setall(1.0f);
            break;
        
        case TYPE_3:
            setAction(&daNpcTkc_c::follow);
            scale.setall(1.0f);
            break;

        case TYPE_4:
            setAction(&daNpcTkc_c::wait);
            scale.setall(1.0f);
            break;
        
        default:
            JUT_ASSERT(985, FALSE);
    }
}

/* 80B0FA5C-80B0FAD0 00337C 0074+00 1/0 0/0 0/0 .text            setParam__10daNpcTkc_cFv */
inline void daNpcTkc_c::setParam() {
    if (parentActorID != fpcM_ERROR_PROCESS_ID_e) {
        cXyz* pos_p = &fopAcM_GetPosition(fopAcM_SearchByID(parentActorID));
        home.pos.set(pos_p->x, pos_p->y + mpHIO->m.target_height, pos_p->z);

        #if DEBUG
        attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
        if (getMessageNo() == 0 || getMessageNo() == 0xFF) {
            attention_info.flags = 0;
        }

        attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(mpHIO->m.common.attention_distance, mpHIO->m.common.attention_angle);
        attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
        attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(mpHIO->m.common.talk_distance, mpHIO->m.common.talk_angle);
        
        mAcchCir.SetWall(mpHIO->m.common.width, mpHIO->m.common.knee_length);
        gravity = mpHIO->m.common.gravity;
        #endif
    }
}

inline void daNpcTkc_c::playExpression() {
    daNpcF_anmPlayData dat0 = {ANM_F_TALK_A, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_NONE, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    
    daNpcF_anmPlayData** ppDat[2] = {
        pDat0,
        pDat1,
    };

    if (mExpression >= 0 && mExpression < 2) {
        playExpressionAnm(ppDat);
    }
}

inline void daNpcTkc_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_FLY, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};

    daNpcF_anmPlayData** ppDat[2] = {
        pDat0,
        NULL,
    };

    if (mMotion >= 0 && mMotion < 2) {
        playMotionAnm(ppDat);
    }
}

/* 80B0DA94-80B0DBC8 0013B4 0134+00 1/0 0/0 0/0 .text            setMotionAnm__10daNpcTkc_cFif */
void daNpcTkc_c::setMotionAnm(int i_idx, f32 i_morf) {
    if (i_idx < 2 || i_idx >= 3) {
        return;
    }

    J3DAnmTransformKey* anm = getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_idx].fileIdx);
    int attr = l_bckGetParamList[i_idx].attr;

    mAnmFlags &= ~(ANM_PLAY_BTK | ANM_PAUSE_BTK | ANM_PLAY_MORF | ANM_PAUSE_MORF);

    if (anm != NULL && setMcaMorfAnm(anm, 1.0f, i_morf, attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
        mAnm_p->setPlaySpeed(1.0f);
    }

    J3DAnmTextureSRTKey* btk = getTexSRTKeyAnmP(l_arcName, l_btkGetParamList[0].fileIdx);
    int btkAttr = l_btkGetParamList[0].attr;

    if (btk != NULL) {
        if (setBtkAnm(btk, mAnm_p->getModel()->getModelData(), 1.0f, btkAttr)) {
            mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }
}

/* 80B0DBC8-80B0DC68 0014E8 00A0+00 3/3 0/0 0/0 .text            setAction__10daNpcTkc_cFM10daNpcTkc_cFPCvPv_v */
inline BOOL daNpcTkc_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)();
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)();
    }

    return TRUE;
}

/* 80B0DC68-80B0DEF8 001588 0290+00 4/0 0/0 0/0 .text            wait__10daNpcTkc_cFv */
void daNpcTkc_c::wait() {
    switch (mMode) {
        case 0:
            setLookMode(LOOK_RESET);
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            searchPlayer();

            if (getMessageNo() != 0 && getMessageNo() != 0xFF) {
                eventInfo.onCondition(dEvtCnd_CANTALK_e);
            }

            if (
                // D_MN07 - City in the Sky - Entrance
                strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0 &&
                dComIfGp_getStartStageRoomNo() == 16 &&
                // dSv_event_flag_c::F_0268 - City in the Sky - City in the Sky clear
                !daNpcF_chkEvtBit(268) &&
                dComIfGs_isDungeonItemWarp()
            ) {
                fopAcM_delete(this);
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
                        setAction(&daNpcTkc_c::normalTalk);
                    }
                } else {
                    int staffId = dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0);
                    if (staffId != -1) {
                        setAction(&daNpcTkc_c::demo);
                    }
                }
            }

            calcFly();
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1295, FALSE);
    }
}

/* 80B0DEF8-80B0E124 001818 022C+00 4/4 0/0 0/0 .text            calcFly__10daNpcTkc_cFv */
void daNpcTkc_c::calcFly() {
    mCurrentPosYOffset = mpHIO->m.amplitude * cM_ssin(field_0xd78);
    field_0xd78 += (int)mpHIO->m.interval;
    mPrevSpeed = speed;

    if ((home.pos - current.pos).abs2() > std::pow(mpHIO->m.flight_range, 2.0f)) {
        mSpeedTarget = home.pos - current.pos;
        mSpeedTarget.normalizeZP();
        mSpeedTarget *= 2.0f;
        mTimer = cLib_getRndValue(20, 20);
    } else if (cLib_calcTimer(&mTimer) == 0) {
        mSpeedTarget.set(cLib_getRndValue(-0.7f, 1.4f), cLib_getRndValue(-1.0f, 2.0f), cLib_getRndValue(-0.7f, 1.4f));
        mSpeedTarget.normalizeZP();
        mSpeedTarget *= cLib_getRndValue(0.0f, 2.0f);
        mTimer = cLib_getRndValue(30, 90);
    }

    cLib_chasePos(&speed, mSpeedTarget, mpHIO->m.step);

    if (speed.y > 0.2f) {
        mAnm_p->setPlaySpeed(1.6f);
    } else if (speed.y < -0.2f) {
        mAnm_p->setPlaySpeed(0.6f);
    } else {
        mAnm_p->setPlaySpeed(1.0f);
    }

    mPrevSpeed -= speed;
    mCurAngle.x = mpHIO->m.x_angle;
    mCurAngle.z = mpHIO->m.z_angle;
}

inline BOOL daNpcTkc_c::checkFindPlayer() {
    if (!chkActorInSight(daPy_getPlayerActorClass(), mpHIO->m.common.fov)) {
        mActorMngr[0].remove();
        return FALSE;
    }

    BOOL playerInArea = FALSE;
    if (mActorMngr[0].getActorP() == NULL) {
        playerInArea = chkPlayerInSpeakArea(this);
    } else {
        playerInArea = chkPlayerInTalkArea(this);
    }

    if (playerInArea) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return playerInArea;
}

/* 80B0E124-80B0E304 001A44 01E0+00 2/2 0/0 0/0 .text            searchPlayer__10daNpcTkc_cFv */
BOOL daNpcTkc_c::searchPlayer() {
    if (mActorMngr[0].getActorP() != NULL) {
        if (!checkFindPlayer()) {
            mTurnMode = 0;
        }
    } else if (checkFindPlayer()) {
        mTurnMode = 0;
    }

    if (mActorMngr[0].getActorP() != NULL) {
        setLookMode(LOOK_RESET);
        return TRUE;
    }

    setLookMode(LOOK_NONE);
    return FALSE;
}

/* 80B0E304-80B0E784 001C24 0480+00 2/0 0/0 0/0 .text            follow__10daNpcTkc_cFv */
void daNpcTkc_c::follow() {
    switch (mMode) {
        case 0:
            setLookMode(LOOK_PLAYER_TALK);
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2: {
            searchPlayer();
            mCurrentPosYOffset = mpHIO->m.amplitude * cM_ssin(field_0xd78);
            field_0xd78 += (int)mpHIO->m.interval;
            mPrevSpeed = speed;

            f32 absVal = (home.pos - current.pos).abs();
            if (absVal > mpHIO->m.flight_range) {
                mSpeedTarget = home.pos - current.pos;
                mSpeedTarget.normalizeZP();
                mSpeedTarget *= absVal * 0.1f;
                speed = mSpeedTarget;
                mTimer = 3;
            } else if (cLib_calcTimer(&mTimer) == 0) {
                mSpeedTarget.set(cLib_getRndValue(-0.7f, 1.4f), cLib_getRndValue(-1.0f, 2.0f), cLib_getRndValue(-0.7f, 1.4f));
                mSpeedTarget.normalizeZP();
                mSpeedTarget *= cLib_getRndValue(0.0f, 2.0f);
                mTimer = cLib_getRndValue(30, 60);

                if (speed.abs() > 2.0f) {
                    speed.normalizeZP();
                    speed *= 2.0f;
                }

                cLib_chasePos(&speed, mSpeedTarget, mpHIO->m.step);
            }

            if (speed.y > 0.2f) {
                mAnm_p->setPlaySpeed(1.6f);
            } else if (speed.y < -0.2f) {
                mAnm_p->setPlaySpeed(0.6f);
            } else {
                mAnm_p->setPlaySpeed(1.0f);
            }

            mPrevSpeed -= speed;
            mCurAngle.x = mpHIO->m.x_angle;
            mCurAngle.z = mpHIO->m.z_angle;
            break;
        }

        case 3:
            break;

        default:
            JUT_ASSERT(1352, FALSE);
            break;
    }
}

/* 80B0E784-80B0E8EC 0020A4 0168+00 2/0 0/0 0/0 .text            appear__10daNpcTkc_cFv */
void daNpcTkc_c::appear() {
    switch (mMode) {
        case 0:
            setLookMode(LOOK_NONE);
            speedF = 0.0f;
            speed.set(0.0f, 5.5f, -3.7f);
            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&speed, &speed);
            mSpeedTarget.set(0.0f, 0.0f, 0.0f);
            mMode = 2;
            break;
        
        case 2:
            if (cLib_chasePos(&speed, mSpeedTarget, 0.5f)) {
                setAction(&daNpcTkc_c::demo);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1385, FALSE);
            break;
    }
}

inline void daNpcTkc_c::setExpressionTalkAfter() {
    switch (mExpression) {
        default:
            setExpression(EXPR_NONE, -1.0f);
            break;
    }
}

/* 80B0E8EC-80B0EB10 00220C 0224+00 1/0 0/0 0/0 .text            normalTalk__10daNpcTkc_cFv */
void daNpcTkc_c::normalTalk() {
    switch (mMode) {
        case 0:
            initTalk(mMsgNo, NULL);
            mMsgTimer = 0;
            setLookMode(LOOK_PLAYER);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            mMode = 2;
            break;
        
        case 2: {
            if (talkProc(NULL, TRUE, NULL)) {
                setAction(&daNpcTkc_c::wait);
            }

            int msgTimer = mMsgTimer;
            int expression, motion;

            if (ctrlMsgAnm(expression, motion, this, FALSE)) {
                setExpression(expression, -1.0f);
                setMotion(motion, -1.0f, 0);
            } else if (msgTimer != 0 && mMsgTimer == 0) {
                setExpressionTalkAfter();
            }

            calcFly();
            break;
        }

        case 3:
            setExpression(EXPR_NONE, -1.0f);

            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            break;

        default:
            JUT_ASSERT(1447, FALSE);
            break;
    }
}

/* 80B0EB10-80B0EB54 002430 0044+00 1/0 0/0 0/0 .text            setMotion__10daNpcTkc_cFifi */
void daNpcTkc_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 2) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 80B0EB54-80B0EB80 002474 002C+00 1/0 0/0 0/0 .text            setExpression__10daNpcTkc_cFif */
void daNpcTkc_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 2) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80B0EB80-80B0EEE8 0024A0 0368+00 1/0 0/0 0/0 .text            warpTalk__10daNpcTkc_cFv */
void daNpcTkc_c::warpTalk() {
    switch (mMode) {
        case 0: {
            daPy_py_c* player = daPy_getPlayerActorClass();        
            mDoMtx_stack_c::transS(player->eyePos);
            mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(player)->y);
            mDoMtx_stack_c::transM(0.0f, 0.0f, mpHIO->m.conversation_dist);
            mDoMtx_stack_c::multVecZero(&field_0xd44);
            initTalk(mMsgNo, NULL);
            mMsgTimer = 0;
            setLookMode(LOOK_PLAYER);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            mMode = 2;
            break;
        }
        
        case 2: {
            if (talkProc(NULL, TRUE, NULL)) {
                dCam_getBody()->EndEventCamera(fopAcM_GetID(this));

                int choice = mFlow.getChoiceNo();
                OS_REPORT("子供二択分岐 %s\n", choice == 0 ? "はい" : "いいえ");

                if (choice == 0) {
                    dCam_getBody()->EndEventCamera(fopAcM_GetID(this));
                    dComIfGp_getEvent().reset(this);
                    eventInfo.setArchiveName(l_arcName);
                    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
                    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, "TKC_WARP", 0xFF);
                    fopAcM_orderChangeEventId(this, mEventIdx, 1, 0xFFFF);
                    field_0x9ec = true;
                    setAction(&daNpcTkc_c::demo);
                } else {
                    dCam_getBody()->EndEventCamera(fopAcM_GetID(this));
                    dComIfGp_event_reset();
                    fopAcM_delete(this);
                }
            }

            int msgTimer = mMsgTimer;
            int expression, motion;

            if (ctrlMsgAnm(expression, motion, this, FALSE)) {
                setExpression(expression, -1.0f);
                setMotion(motion, -1.0f, 0);
            } else if (msgTimer != 0 && mMsgTimer == 0) {
                setExpressionTalkAfter();
            }

            calcFly();
            break;
        }

        case 3:
            setExpression(EXPR_NONE, -1.0f);
            
            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            break;

        default:
            JUT_ASSERT(1520, FALSE);
            break;
    }
}

/* 80B0EEE8-80B0F00C 002808 0124+00 4/0 0/0 0/0 .text            demo__10daNpcTkc_cFv */
void daNpcTkc_c::demo() {
    switch (mMode) {
        case 0:
            setExpression(EXPR_NONE, -1.0f);
            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                s32 staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
                if (staffId != -1) {
                    mStaffID = staffId;
                    int evtCutNo = eventManager.getMyActIdx(staffId, l_evtNames, 4, FALSE, FALSE);
                    JUT_ASSERT(1551, mEvtSeqList[evtCutNo] != NULL);

                    if ((this->*mEvtSeqList[evtCutNo])(staffId)) {
                        eventManager.cutEnd(staffId);
                    }
                }
            } else {
                mStaffID = -1;
                mEventIdx = -1;
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1565, FALSE);
            break;
    }
}

/* 80B0F00C-80B0F1F8 00292C 01EC+00 1/0 0/0 0/0 .text EvCut_TksSecretChild__10daNpcTkc_cFi */
int daNpcTkc_c::EvCut_TksSecretChild(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* prm = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (prm == NULL) {
        return 0;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (*prm) {
            case 0:
            case 1:
                setLookMode(LOOK_RESET);
                break;
            
            case 2:
                dComIfGp_getEvent().reset(this);
                eventInfo.setArchiveName(l_arcName);
                dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
                mEventIdx = dComIfGp_getEventManager().getEventIdx(this, "TKS_WARP", 0xFF);
                fopAcM_orderChangeEventId(this, mEventIdx, 1, 0xFFFF);
                break;

            default:
                JUT_ASSERT(1603, FALSE);
                break;
        }
    }

    int msgTimer = mMsgTimer;
    int expression, motion;
    if (ctrlMsgAnm(expression, motion, this, FALSE)) {
        setExpression(expression, -1.0f);
        setMotion(motion, -1.0f, 0);
    } else if (msgTimer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*prm) {
        case 0:
        case 2:
            return 1;

        case 1:
            calcFly();
            return 1;

        default:
            JUT_ASSERT(1626, FALSE);
            break;
    }

    return 0;
}

/* 80B0F1F8-80B0F5D4 002B18 03DC+00 1/0 0/0 0/0 .text            EvCut_TksWarpExit__10daNpcTkc_cFi */
int daNpcTkc_c::EvCut_TksWarpExit(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* prm = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (prm == NULL) {
        return 0;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (*prm) {
            case 0:
                speed.setall(0.0f);
                field_0xd78 = 0;
                mColor = 0;
                mSph.OffCoSetBit();
                break;

            case 1:
                field_0xd6c = 0.0f;
                field_0xd70 = 0;
                mSound.startCreatureSound(Z2SE_TKC_WARP_IN, 0, -1);
                break;
            
            case 2:
                field_0xd68 = mpHIO->m.ellipse_width;
                mColor = 0xFF;
                tevStr.TevColor.r = mColor;
                tevStr.TevColor.g = mColor;
                tevStr.TevColor.b = mColor;
                tevStr.TevColor.a = mColor;
                tevStr.TevKColor.r = mColor;
                tevStr.TevKColor.g = mColor;
                tevStr.TevKColor.b = mColor;
                tevStr.TevKColor.a = mColor;
                break;

            case 3:
                break;

            default:
                JUT_ASSERT(1681, FALSE);
                break;
        }
    }

    switch (*prm) {
        case 0:
            field_0xd44 = *fopAcM_GetPosition_p(daPy_getPlayerActorClass());
            field_0xd44.y += mpHIO->m.warp_initial_pos;

            if (cLib_addCalcPos(&current.pos, field_0xd44, mpHIO->m.div, mpHIO->m.max, mpHIO->m.min) == 0.0f) {
                return 1;
            }
            break;

        case 1: {
            cLib_chaseUC(&mColor, 0xFF, 2);
            tevStr.TevKColor.r = mColor;
            tevStr.TevKColor.g = mColor;
            tevStr.TevKColor.b = mColor;
            tevStr.TevKColor.a = mColor;
            cLib_chaseF(&field_0xd6c, mpHIO->m.down_move_spd, 0.1f);
            cLib_chaseS(&field_0xd70, mpHIO->m.rotation_interval, 350);
            current.pos.x = field_0xd44.x + mpHIO->m.ellipse_width * cM_ssin(field_0xd78);
            current.pos.y -= field_0xd6c;
            current.pos.z = field_0xd44.z + mpHIO->m.ellipse_width * cM_scos(field_0xd78);
            field_0xd78 += field_0xd70;
            
            f32 fVar1 = field_0xd44.y - current.pos.y;
            if (fVar1 <= 40.0f) {
                daPy_getPlayerActorClass()->cancelDungeonWarpReadyNeck();
            }

            if (fVar1 >= mpHIO->m.warp_initial_pos - 15.0f) {
                return 1;
            }
            break;
        }
        
        case 2:
            cLib_chaseF(&field_0xd68, 0.0f, 0.8f);
            current.pos.x = field_0xd44.x + field_0xd68 * cM_ssin(field_0xd78);
            current.pos.y += mpHIO->m.up_move_spd;
            current.pos.z = field_0xd44.z + field_0xd68 * cM_scos(field_0xd78);
            field_0xd78 += mpHIO->m.rotation_interval;

            if (field_0xd44.y - current.pos.y <= 40.0f) {
                fopAcM_delete(this);
            }
            break;

        case 3:
            return 1;

        default:
            JUT_ASSERT(1723, FALSE);
            break;
    }

    return 0;
}

/* 80B0F5D4-80B0F9A4 002EF4 03D0+00 1/0 0/0 0/0 .text            EvCut_TksWarpBack__10daNpcTkc_cFi */
int daNpcTkc_c::EvCut_TksWarpBack(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* prm = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (prm == NULL) {
        return 0;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (*prm) {
            case 1:
                speed.setall(0.0f);
                field_0xd78 = 0;
                mColor = 0;
                mSph.OffCoSetBit();
                break;
            
            case 2:
                field_0xd6c = 0.0f;
                field_0xd70 = 0;
                mSound.startCreatureSound(Z2SE_TKC_WARP_IN, 0, -1);
                break;

            case 3:
                field_0xd68 = mpHIO->m.ellipse_width;
                mColor = 0xFF;
                tevStr.TevColor.r = mColor;
                tevStr.TevColor.g = mColor;
                tevStr.TevColor.b = mColor;
                tevStr.TevColor.a = mColor;
                tevStr.TevKColor.r = mColor;
                tevStr.TevKColor.g = mColor;
                tevStr.TevKColor.b = mColor;
                tevStr.TevKColor.a = mColor;
                break;

            default:
                JUT_ASSERT(1775, FALSE);
                break;
        }
    }

    switch (*prm) {
        case 1: {
            cXyz* pos_p = fopAcM_GetPosition_p(daPy_getPlayerActorClass());
            field_0xd44 = *pos_p;
            field_0xd44.y += mpHIO->m.warp_initial_pos;

            if (cLib_addCalcPos(&current.pos, field_0xd44, mpHIO->m.div, mpHIO->m.max, mpHIO->m.min) == 0.0f) {
                return 1;
            }
            break;
        }
        
        case 2: {
            cLib_chaseUC(&mColor, 0xFF, 2);
            tevStr.TevKColor.r = mColor;
            tevStr.TevKColor.g = mColor;
            tevStr.TevKColor.b = mColor;
            tevStr.TevKColor.a = mColor;
            cLib_chaseF(&field_0xd6c, mpHIO->m.down_move_spd, 0.1f);
            cLib_chaseS(&field_0xd70, mpHIO->m.rotation_interval, 350);
            current.pos.x = field_0xd44.x + mpHIO->m.ellipse_width * cM_ssin(field_0xd78);
            current.pos.y -= field_0xd6c;
            current.pos.z = field_0xd44.z + mpHIO->m.ellipse_width * cM_scos(field_0xd78);
            field_0xd78 += field_0xd70;

            f32 posDelta = field_0xd44.y - current.pos.y;
            if (posDelta <= 40.0f) {
                daPy_getPlayerActorClass()->cancelDungeonWarpReadyNeck();
            }

            if (posDelta >= mpHIO->m.warp_initial_pos - 15.0f) {
                return 1;
            }
            break;
        }

        case 3:
            cLib_chaseF(&field_0xd68, 0.0f, 0.8f);
            current.pos.x = field_0xd44.x + field_0xd68 * cM_ssin(field_0xd78);
            current.pos.y += mpHIO->m.up_move_spd;
            current.pos.z = field_0xd44.z + field_0xd68 * cM_scos(field_0xd78);
            field_0xd78 += mpHIO->m.rotation_interval;

            if (field_0xd44.y - current.pos.y <= 40.0f) {
                fopAcM_delete(this);
            }
            break;
        
        default:
            JUT_ASSERT(1815, FALSE);
            break;
    }

    return 0;
}

/* 80B0F9A4-80B0F9C4 0032C4 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Create__FPv */
static int daNpcTkc_Create(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Create();
}

/* 80B0F9C4-80B0F9E4 0032E4 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Delete__FPv */
static int daNpcTkc_Delete(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Delete();
}

/* 80B0F9E4-80B0FA04 003304 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Execute__FPv */
static int daNpcTkc_Execute(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Execute();
}

/* 80B0FA04-80B0FA24 003324 0020+00 1/0 0/0 0/0 .text            daNpcTkc_Draw__FPv */
static int daNpcTkc_Draw(void* i_this) {
    return static_cast<daNpcTkc_c*>(i_this)->Draw();
}

/* 80B0FA24-80B0FA2C 003344 0008+00 1/0 0/0 0/0 .text            daNpcTkc_IsDelete__FPv */
static int daNpcTkc_IsDelete(void* i_this) {
    return 1;
}

/* 80B10BBC-80B10BDC -00001 0020+00 1/0 0/0 0/0 .data            daNpcTkc_MethodTable */
static actor_method_class daNpcTkc_MethodTable = {
    (process_method_func)daNpcTkc_Create,
    (process_method_func)daNpcTkc_Delete,
    (process_method_func)daNpcTkc_Execute,
    (process_method_func)daNpcTkc_IsDelete,
    (process_method_func)daNpcTkc_Draw,
};

/* 80B10BDC-80B10C0C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_TKC */
extern actor_process_profile_definition g_profile_NPC_TKC = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_TKC,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcTkc_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  375,                    // mPriority
  &daNpcTkc_MethodTable,  // sub_method
  0x08044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
