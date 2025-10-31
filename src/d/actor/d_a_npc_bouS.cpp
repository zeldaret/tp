/**
 * @file d_a_npc_bouS.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_bouS.h"
#include "JSystem/JHostIO/JORFile.h"
#include "d/actor/d_a_tag_instruction.h"
#include "d/d_item.h"
#include "d/actor/d_a_npc_wrestler.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"
#include "d/d_camera.h"

/* 809787C4-809788D8 000020 0114+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[23] = {
    {-1, J3DFrameCtrl::EMode_LOOP, 0},
    {6, J3DFrameCtrl::EMode_NONE, 0},
    {9, J3DFrameCtrl::EMode_NONE, 1},
    {7, J3DFrameCtrl::EMode_NONE, 1},
    {8, J3DFrameCtrl::EMode_LOOP, 1},
    {0xA, J3DFrameCtrl::EMode_NONE, 1},
    {0xB, J3DFrameCtrl::EMode_LOOP, 1},
    {8, J3DFrameCtrl::EMode_LOOP, 0},
    {-1, J3DFrameCtrl::EMode_LOOP, 0},
    {7, J3DFrameCtrl::EMode_NONE, 0},
    {0xC, J3DFrameCtrl::EMode_NONE, 1},
    {0xD, J3DFrameCtrl::EMode_NONE, 1},
    {0xE, J3DFrameCtrl::EMode_NONE, 1},
    {0xF, J3DFrameCtrl::EMode_NONE, 1},
    {0x10, J3DFrameCtrl::EMode_NONE, 1},
    {0x13, J3DFrameCtrl::EMode_NONE, 1},
    {0x14, J3DFrameCtrl::EMode_LOOP, 1},
    {0x16, J3DFrameCtrl::EMode_LOOP, 1},
    {0x15, J3DFrameCtrl::EMode_LOOP, 1},
    {5, J3DFrameCtrl::EMode_NONE, 1},
    {6, J3DFrameCtrl::EMode_LOOP, 1},
    {0x11, J3DFrameCtrl::EMode_NONE, 1},
    {0x12, J3DFrameCtrl::EMode_LOOP, 1},
};

/* 809788D8-80978914 000134 003C+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[5] = {
    {0x11, 2, 0},
    {0x19, 0, 1},
    {0x1A, 2, 1},
    {0x1B, 0, 1},
    {0x1C, 2, 1},
};

/* 80978914-80978920 000170 000C+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam2 l_btkGetParamList[1] = {
    {0xE, 2, 0},
};

/* 80978920-80978928 -00001 0008+00 6/7 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[2] = {
    "Bou",
    "Bou4",
};

/* 80978928-80978938 -00001 0010+00 3/4 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    NULL,
    "BOUS_INTRO_SUMO1",
    "BOUS_INTRO_SUMO2",
    "BOUS_INTRO_SUMO3",
};

/* 80978938-8097893C -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "BouS";

/* 80978BC4-80978BD0 000054 000C+00 3/4 0/0 0/0 .bss             l_createPos */
static cXyz l_createPos(1000000000.0f, 1000000000.0f, 1000000000.0f);

/* 80978BDC-80978BE0 00006C 0004+00 0/1 0/0 0/0 .bss             l_HIO */
static NPC_BOUS_HIO_CLASS l_HIO;

#if DEBUG
daNpcBouS_HIO_c::daNpcBouS_HIO_c() {
    m = daNpcBouS_Param_c::m;
}

void daNpcBouS_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    char buffer[2000];
    
    JORReflexible::listenPropertyEvent(event);
    JORFile jorFile;
    int length;

    switch ((int)event->id) {
        case 0x40000002:
            if (jorFile.open(6, "", NULL, NULL, NULL)) {
                memset(buffer, 0, sizeof(buffer));
                length = 0;
                daNpcF_commonListenPropertyEvent(buffer, &length, &m.common);
                length = strlen(buffer);
                jorFile.writeData(buffer, length);
                jorFile.close();
                OS_REPORT("write append success!::%6d\n", length);
            } else {
                OS_REPORT("write append failure!\n");
            }
    }
}

void daNpcBouS_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genSlider("興奮度", &m.excitement_level, 0.0f, 1.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("会話距離", &m.talk_dist, 0.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("目線 X", &m.gaze_x, -500.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("目線 Y", &m.gaze_y, -500.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("目線 Z", &m.gaze_z, -500.0f, 500.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Eye 距離", &m.eye_dist, 0.0f, 3000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Eye 角度X", &m.eye_angle_x, -0x8000, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    ctx->genSlider("Eye 角度Y", &m.eye_angle_y, -0x8000, 0x7FFF, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
}
#endif

/* 80978960-80978990 0001BC 0030+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcBouS_c */
daNpcBouS_c::eventFunc daNpcBouS_c::mEvtSeqList[4] = {
    NULL,
    &daNpcBouS_c::EvCut_BousIntroSumo1,
    &daNpcBouS_c::EvCut_BousIntroSumo2,
    &daNpcBouS_c::EvCut_BousIntroSumo3,
};

/* 8097354C-809736D0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcBouS_cFv */
daNpcBouS_c::daNpcBouS_c() {
    // NONMATCHING
}

/* 80973760-80973948 000300 01E8+00 1/0 0/0 0/0 .text            __dt__11daNpcBouS_cFv */
daNpcBouS_c::~daNpcBouS_c() {
    // NONMATCHING
}

/* 80978410-8097849C 000000 008C+00 13/13 0/0 0/0 .rodata          m__17daNpcBouS_Param_c */
daNpcBouS_HIOParam const daNpcBouS_Param_c::m = {
    220.0f,
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
    0x13,
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
    0.0f,
    220.0f,
    0.0f,
    100.0f,
    80.0f,
    654.78497f,
    0xEB51,
    0xA3C6,
    0,
};

/* 80973948-80973B9C 0004E8 0254+00 1/1 0/0 0/0 .text            Create__11daNpcBouS_cFv */
cPhs__Step daNpcBouS_c::Create() {
    fopAcM_ct(this, daNpcBouS_c);

    mMsgNo = getMessageNo();

    cPhs__Step phase = cPhs_ERROR_e;
    for (int i = 0; i < 2; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_arcNames[i]);

        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3D40)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -160.0f, -50.0f, -160.0f, 160.0f, 220.0f, 160.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        #if DEBUG
        mHIO = &l_HIO;
        mHIO->entryHIO("ボウ（着衣）");
        #endif

        mAcchCir.SetWall(mHIO->m.common.width, mHIO->m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(mHIO->m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        
        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }

    return phase;
}

/* 80973B9C-80973E0C 00073C 0270+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcBouS_cFv */
int daNpcBouS_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* mdlData_p = NULL;
    J3DModel* mdl_p = NULL;
    
    mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[0], 0xB);
    JUT_ASSERT(393, NULL != mdlData_p);

    u32 uVar1 = 0x11020284;
    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, J3DMdlFlag_DifferedDLBuffer, uVar1);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    mdl_p = mpMorf->getModel();
    for (u16 i = 0; i <mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    mdl_p->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(1, false)) {
        return 0;
    }

    setMotionAnm(7, 0.0f);
    return 1;
}

/* 80973FC8-80973FFC 000B68 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcBouS_cFv */
int daNpcBouS_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpcBouS_c();
    return 1;
}

/* 80973FFC-80974020 000B9C 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcBouS_cFv */
int daNpcBouS_c::Execute() {
    execute();
    return 1;
}

/* 80974020-80974090 000BC0 0070+00 1/1 0/0 0/0 .text            Draw__11daNpcBouS_cFv */
int daNpcBouS_c::Draw() {
    if (!mDispFlag) {
        return 1;
    }

    J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
    mdlData_p->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    draw(FALSE, FALSE, mHIO->m.common.real_shadow_size, NULL, FALSE);
    return 1;
}

/* 80974090-809742BC 000C30 022C+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpcBouS_cFP8J3DJointP8J3DModel */
int daNpcBouS_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    // NONMATCHING
    int jntNo = i_joint->getJntNo();
    int lookatJoints[3] = {1, 3, 4};

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
            setLookatMtx(jntNo, lookatJoints, mHIO->m.common.neck_rotation_ratio);
            break;
    }

    if (jntNo == 1) {
        mDoMtx_stack_c::YrotM(field_0x908[0].z);
        mDoMtx_stack_c::ZrotM(-field_0x908[0].x);
    } else if (jntNo == 4) {
        mDoMtx_stack_c::YrotM(field_0x908[2].z);
        mDoMtx_stack_c::ZrotM(field_0x908[2].x);
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());

    #if DEBUG
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    #else
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    #endif

    if ((jntNo == 4 || jntNo == 8) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 809742BC-809742DC 000E5C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpcBouS_cFP10fopAc_ac_c */
int daNpcBouS_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpcBouS_c* actor = (daNpcBouS_c*)i_this;
    return actor->CreateHeap();
}

/* 809742DC-80974328 000E7C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpcBouS_cFP8J3DJointi */
int daNpcBouS_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* mdl_p = j3dSys.getModel();
        daNpcBouS_c* actor = (daNpcBouS_c*)mdl_p->getUserArea();
        if (actor != NULL) {
            actor->ctrlJoint(i_joint, mdl_p);
        }
    }

    return 1;
}

/* 80974328-80974514 000EC8 01EC+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcBouS_cFib */
bool daNpcBouS_c::setExpressionAnm(int i_idx, bool i_modify) {
    // NONMATCHING
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    J3DAnmTransform* bckAnm;
    
    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        bckAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    } else {
        bckAnm = NULL;
    }

    s32 i_attr = l_bckGetParamList[i_idx].attr;
    bool res = false;

    switch (i_idx) {
        case 0:
            res = setExpressionBtp(0);
            break;

        case 1:
            res = setExpressionBtp(0);
            break;

        case 2:
            res = setExpressionBtp(0);
            break;

        case 3:
            res = setExpressionBtp(1);
            break;

        case 4:
            res = setExpressionBtp(2);
            break;

        case 5:
            res = setExpressionBtp(3);
            break;

        case 6:
            res = setExpressionBtp(4);
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

/* 80974514-809745F4 0010B4 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcBouS_cFi */
bool daNpcBouS_c::setExpressionBtp(int i_idx) {
    // NONMATCHING
    J3DAnmTexPattern* btp = getTexPtrnAnmP(l_arcNames[l_btpGetParamList[i_idx].arcIdx], l_btpGetParamList[i_idx].fileIdx);
    s32 i_attr = l_btpGetParamList[i_idx].attr;

    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);

    if (btp == NULL) {
        return true;
    }

    if (setBtpAnm(btp, mpMorf->getModel()->getModelData(), 1.0f, i_attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;

        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", __FILE__);
    return false;
}

/* 809745F4-80974730 001194 013C+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcBouS_cFif */
void daNpcBouS_c::setMotionAnm(int i_idx, f32 i_morf) {
    // NONMATCHING
    J3DAnmTextureSRTKey* btk = NULL;

    J3DAnmTransformKey* morfAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    btk = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[i_idx].arcIdx], l_btkGetParamList[i_idx].fileIdx);
    int btkAttr = l_btkGetParamList[i_idx].attr;
    int morfAttr = l_bckGetParamList[i_idx].attr;

    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (morfAnm != NULL && setMcaMorfAnm(morfAnm, 1.0f, i_morf, morfAttr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }

    if (btk != NULL && setBtkAnm(btk, mpMorf->getModel()->getModelData(), 1.0f, btkAttr)) {
        mAnmFlags |= ANM_PAUSE_BTK | ANM_PLAY_BTK;
    }
}

/* 80974730-809748F0 0012D0 01C0+00 1/1 0/0 0/0 .text            reset__11daNpcBouS_cFv */
void daNpcBouS_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();
    for (int i = 0; i < 1; i++) {
        mActorMngrs[i].initialize();
    }

    field_0xde8 = 0;
    field_0xdec = 0;
    mAction = NULL;
    mLookMode = -1;
    mMode = 0;
    mDispFlag = 1;
    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    mItemPartnerId = fpcM_ERROR_PROCESS_ID_e;
    mOrderEvtNo = 0;

    if (checkIntroDemoStart()) {
        setAction(&daNpcBouS_c::demo);
    } else {
        setAction(&daNpcBouS_c::wait);
    }

    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;
}

/* 809748F0-80974998 001490 00A8+00 1/1 0/0 0/0 .text            setAction__11daNpcBouS_cFM11daNpcBouS_cFPCvPvPv_b */
BOOL daNpcBouS_c::setAction(actionFunc action) {
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

/* 80974998-80974A04 001538 006C+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_actor, void* i_data) {
    if (
        fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Tag_Instruction &&
        ((daNpcBouS_c*)i_data)->checkInstructionTag((fopAc_ac_c*)i_actor)
    ) {
        return i_actor;
    }

    return NULL;
}

/* 80974A04-80974A28 0015A4 0024+00 1/1 0/0 0/0 .text            checkInstructionTag__11daNpcBouS_cFP10fopAc_ac_c */
bool daNpcBouS_c::checkInstructionTag(fopAc_ac_c* i_this) {
    daTagInst_c* actor = (daTagInst_c*)i_this;
    if (getArenaNo() == actor->getInstructionNo()) {
        return true;
    }

    return false;
}

/* 80976C00-80976C9C 0037A0 009C+00 1/0 0/0 0/0 .text            setParam__11daNpcBouS_cFv */
void daNpcBouS_c::setParam() {
    s16 attention_distance = 5;
    s16 attention_angle = 6;
    s16 talk_distance = 3;
    s16 talk_angle = 6;

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(talk_distance, talk_angle);
    #if DEBUG
    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    #else
    attention_info.flags = ~((-mMsgNo & ~mMsgNo) >> 31 & 10);
    #endif
    mAcchCir.SetWallR(mHIO->m.common.width);
    mAcchCir.SetWallH(mHIO->m.common.knee_length);
    gravity = mHIO->m.common.gravity;
}

/* 80976C9C-80976EEC 00383C 0250+00 1/0 0/0 0/0 .text            main__11daNpcBouS_cFv */
BOOL daNpcBouS_c::main() {
    if (mAction) {
        (this->*mAction)(NULL);
    }

    if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk() && mItemPartnerId != fpcM_ERROR_PROCESS_ID_e) {
        dComIfGp_event_setItemPartnerId(mItemPartnerId);
        mItemPartnerId = fpcM_ERROR_PROCESS_ID_e;
    }

    playExpression();
    playMotion();
    return TRUE;
}

void daNpcBouS_c::playExpression() {
    daNpcF_anmPlayData dat0 = {0x1, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0x2, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2a = {0x3, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat2b = {0x4, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[2] = {&dat2a, &dat2b};
    daNpcF_anmPlayData dat3a = {0x5, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0x6, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4 = {0x0, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};

    daNpcF_anmPlayData** ppDat[6] = {
        NULL,
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
    };

    if (mExpression >= 0 && mExpression < 6) {
        playExpressionAnm(ppDat);
    }
}

/* 80976EEC-80977368 003A8C 047C+00 1/1 0/0 0/0 .text            playMotion__11daNpcBouS_cFv */
void daNpcBouS_c::playMotion() {
    // NONMATCHING
    daNpcF_anmPlayData dat0 = {0x7, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {0x10, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {0x11, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3a = {0xE, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {0x10, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[2] = {&dat3a, &dat3b};
    daNpcF_anmPlayData dat4a = {0xF, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {0x11, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};
    daNpcF_anmPlayData dat5a = {0xA, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5b = {0x10, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};
    daNpcF_anmPlayData dat6a = {0xB, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat6b = {0x10, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[2] = {&dat6a, &dat6b};
    daNpcF_anmPlayData dat7a = {0xD, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat7b = {0x10, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[2] = {&dat7a, &dat7b};
    daNpcF_anmPlayData dat8a = {0x13, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat8b = {0x14, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[2] = {&dat8a, &dat8b};
    daNpcF_anmPlayData dat9 = {0x14, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10a = {0x15, mHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat10b = {0x16, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[2] = {&dat10a, &dat10b};
    daNpcF_anmPlayData dat11 = {0x16, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[1] = {&dat11};
    daNpcF_anmPlayData dat12 = {0x12, mHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[1] = {&dat12};
    daNpcF_anmPlayData dat13 = {0xC, 4.0f, 1};
    daNpcF_anmPlayData* pDat13[1] = {&dat13};

    daNpcF_anmPlayData** ppDat[20] = {
        pDat0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
        pDat8,
        pDat9,
        pDat10,
        pDat11,
        pDat12,
        pDat13,
    };

    if (mMotion >= 0 && mMotion < 0x14) {
        field_0xdfa = mMotionPhase;
        playMotionAnm(ppDat);
    }
}

/* 80977368-80977444 003F08 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcBouS_cFv */
BOOL daNpcBouS_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btk = NULL;
        btk = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);
        if (btk == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

AUDIO_INSTANCES;

/* 80977444-809778D8 003FE4 0494+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcBouS_cFv */
void daNpcBouS_c::setAttnPos() {
    static cXyz eyeOffset(-10.0f, 10.0f, 0.0f);

    cXyz* attnPos = NULL;
    cXyz sp44, sp50, sp5c;

    mDoMtx_stack_c::YrotS(field_0x990);
    cLib_addCalc2(&field_0x984[0], 0.0f, 0.1f, 125.0f);
    cLib_addCalc2(&field_0x984[2], 0.0f, 0.1f, 125.0f);

    for (int i = 0; i < 3; i++) {
        sp50.set(0.0f, 0.0f, field_0x984[i] * cM_ssin(field_0x992));
        mDoMtx_stack_c::multVec(&sp50, &sp5c);
        field_0x908[i].x = -sp5c.z;
        field_0x908[i].z = -sp5c.x;
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
    eyeOffset.y = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &sp50);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp50);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp50);

    attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        sp44 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp44.x, sp44.z);
        mEyeAngle.x = mHeadAngle.x - cM_atan2s(sp44.y, sp44.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    cXyz sp68;
    f32 attnOffset = mHIO->m.common.attention_offset;
    sp44.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&sp44, &sp68);
    attention_info.position.set(sp68.x, sp68.y + attnOffset, sp68.z);
    mCyl.SetTgType(0);
    mCyl.SetTgSPrm(0);
    mCyl.SetC(sp68);
    mCyl.SetH(mHIO->m.common.height);
    mCyl.SetR(mHIO->m.common.width);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 809778D8-80977AB8 004478 01E0+00 1/1 0/0 0/0 .text            lookat__11daNpcBouS_cFv */
void daNpcBouS_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* mdl_p = mpMorf->getModel();
    BOOL i_snap = FALSE;
    f32 body_angleX_min = mHIO->m.common.body_angleX_min;
    f32 body_angleX_max = mHIO->m.common.body_angleX_max;
    f32 body_angleY_min = mHIO->m.common.body_angleY_min;
    f32 body_angleY_max = mHIO->m.common.body_angleY_max;
    f32 head_angleX_min = mHIO->m.common.head_angleX_min;
    f32 head_angleX_max = mHIO->m.common.head_angleX_max;
    f32 head_angleY_min = mHIO->m.common.head_angleY_min;
    f32 head_angleY_max = mHIO->m.common.head_angleY_max;
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
    }

    if (player != NULL) {
        mLookPos = player->attention_info.position;

        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }

        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }
    
    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f, 0.0f, 0.0f, 
                     head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max, mCurAngle.y, lookatPos);
    mLookat.calc(this, mdl_p->getBaseTRMtx(), lookatAngle, i_snap, angle_delta, FALSE);
}

BOOL daNpcBouS_c::step(s16 i_turnTargetAngle, int param_2) {
    if (mTurnMode == 0) {
        if (param_2 != 0) {
            if ((int)fabsf(cM_sht2d((s16)(i_turnTargetAngle - mCurAngle.y))) > 40) {
                setExpression(5, -1.0f);
                setMotion(0x13, -1.0f, 0);
            }
        }

        mTurnTargetAngle = i_turnTargetAngle;
        mTurnAmount = 0;

        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }

        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, 15.0f, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }

    return mTurnMode > 1;
}

/* 80974A28-809750BC 0015C8 0694+00 6/0 0/0 0/0 .text            wait__11daNpcBouS_cFPv */
bool daNpcBouS_c::wait(void* param_1) {
    // NONMATCHING
    switch (mMode) {
        case 0:
            setExpression(5, -1.0f);
            setMotion(6, -1.0f, 0);
            mTurnMode = 0;
            speedF = 0.0f;
            mMode = 2;
            break;
        
        case 2:
            if (mActorMngrs[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else if (chkFindPlayer()) {
                mTurnMode = 0;
            }

            if (mActorMngrs[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                    setExpression(5, -1.0f);
                    setMotion(6, -1.0f, 0);
                    mTurnMode = 0;
                }
            }

            if (!checkItemGet(fpcNm_ITEM_HVY_BOOTS, 1) && dComIfGs_isTbox(2)) {
                mForcibleTalk = 1;
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        if (daNpcF_chkEvtBit(231)) { // dSv_event_flag_c::F_0231 - Ordon Village - Did first wrestle match with Bo
                            setAction(&daNpcBouS_c::talk);
                        } else {
                            mOrderEvtNo = 2;
                            changeEvent("Bou4", l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                            setAction(&daNpcBouS_c::demo);
                        }
                    }
                } else {
                    s32 staffId = dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0);
                    if (staffId != -1) {
                        setAction(&daNpcBouS_c::demo);
                    }
                }
            } else {
                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName("Bou4");
                }

                orderEvent(mForcibleTalk, l_evtNames[mOrderEvtNo], 0xFFFF, 40, 0xFF, 1);
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1527, FALSE);
            break;
    }

    return true;
}

/* 809750BC-80975104 001C5C 0048+00 1/0 0/0 0/0 .text            setMotion__11daNpcBouS_cFifi */
void daNpcBouS_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 20) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
        field_0xdfa = 0;
    }
}

/* 80975104-80975130 001CA4 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcBouS_cFif */
void daNpcBouS_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 6) {
        mExpression = i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80975130-80975748 001CD0 0618+00 1/0 0/0 0/0 .text            talk__11daNpcBouS_cFPv */
bool daNpcBouS_c::talk(void* param_1) {
    int itemNo;
    bool rv = false;

    switch (mMode) {
        case 0:
            initTalk(mMsgNo, NULL);
            mTurnMode = 0;
            mMsgTimer = 0;
            mForcibleTalk = 0;
            speedF = 0.0f;
            setLookMode(3);
            mMode = 2;

            if (mMsgNo != getMessageNo()) {
                mMsgNo = getMessageNo();
            }
            break;
        
        case 2:
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (talkProc(NULL, TRUE, NULL)) {
                    mActorMngrs[0].entry(daPy_getPlayerActorClass());
                    itemNo = 0;
                    u16 eventId = mFlow.getEventId(&itemNo);
                    OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", eventId, itemNo);

                    if (eventId == 6) {
                        if (itemNo == 1) {
                            setAction(&daNpcBouS_c::instruction);
                        } else {
                            parentActorID = fopAcM_createChild(PROC_NPC_WRESTLER, fopAcM_GetID(this),
                                               (itemNo << 24) | (getArenaNo() | 0x700), &l_createPos, fopAcM_GetRoomNo(this),
                                               NULL, NULL, getType(), NULL);
                            setAngle(home.angle.y);
                            setAction(&daNpcBouS_c::wait);
                            mMsgNo = 0;
                            attention_info.flags = 0;
                            eventInfo.offCondition(dEvtCnd_CANTALK_e);
                        }
                    } else {
                        setAction(&daNpcBouS_c::wait);
                    }

                    rv = 1;
                } else {
                    int i_expression, i_motion;
                    int msgTimer = mMsgTimer;

                    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
                        setExpression(i_expression, -1.0f);
                        setMotion(i_motion, -1.0f, 0);
                    } else if (msgTimer != 0 && mMsgTimer == 0) {
                        setExpressionTalkAfter();
                    }
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                setMotion(6, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        case 3:
            setExpression(5, -1.0f);

            if (!field_0x9ec) {
                dComIfGp_event_reset();
            }
            break;

        default:
            JUT_ASSERT(1614, FALSE);
            break;
    }

    return rv;
}

/* 80975748-80975930 0022E8 01E8+00 3/0 0/0 0/0 .text            demo__11daNpcBouS_cFPv */
bool daNpcBouS_c::demo(void* param_1) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    s32 staffId = 0;

    switch (mMode) {
        case 0:
            setExpression(5, -1.0f);
            setMotion(6, -1.0f, 0);
            mMode = 2;
            // fallthrough
        case 2:
            if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
                dEvent_manager_c& eventManager = dComIfGp_getEventManager();
                staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
                if (staffId != -1) {
                    mStaffID = staffId;
                    JUT_ASSERT(1648, NULL != mEvtSeqList[mOrderEvtNo]);
                    if ((this->*mEvtSeqList[mOrderEvtNo])(staffId)) {
                        eventManager.cutEnd(staffId);
                        staffId = 1;
                    }
                }

                if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                    setAction(&daNpcBouS_c::wait);
                }
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1676, FALSE);
            break;
    }

    return 1;
}

fopAc_ac_c* daNpcBouS_c::searchInstructionTag() {
    fopAc_ac_c* instructionTag = (fopAc_ac_c*)fpcM_Search(s_sub, this);
    return instructionTag;
}

/* 80975930-80975ED8 0024D0 05A8+00 2/0 0/0 0/0 .text            instruction__11daNpcBouS_cFPv */
bool daNpcBouS_c::instruction(void* param_1) {
    dCamera_c* camBody = dCam_getBody();

    switch (mMode) {
        case 0:
            setLookMode(2);
            field_0xdec = 0;
            field_0xde8 = 20;
            mDoGph_gInf_c::fadeOut(0.05f);
            camBody->Stop();
            mMode = 2;
            break;
        
        case 2:
            switch (field_0xdec) {
                case 0:
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 1, 0xFFFF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return false;
                    }

                    if (field_0xde8 <= 0) {
                        setInstructionPos();
                        cXyz camCenter(mHIO->m.gaze_x, mHIO->m.gaze_y, mHIO->m.gaze_z);
                        cXyz camEye(0.0f, 0.0f, mHIO->m.eye_dist);
                        mDoMtx_stack_c::transS(fopAcM_GetPosition(daPy_getPlayerActorClass()));
                        mDoMtx_stack_c::YrotM(fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y);
                        mDoMtx_stack_c::multVec(&camCenter, &camCenter);
                        mDoMtx_stack_c::YrotM(mHIO->m.eye_angle_y);
                        mDoMtx_stack_c::XrotM(mHIO->m.eye_angle_x);
                        mDoMtx_stack_c::multVec(&camEye, &camEye);
                        camBody->Set(camCenter, camEye, camBody->Fovy(), 0);
                        field_0xde8 = 16;
                        field_0xdec++;
                    }

                    field_0xde8--;
                    break;

                case 1:
                    if (field_0xde8-- <= 0) {
                        field_0xde8 = abs(20);
                        mDoGph_gInf_c::fadeOut(-0.05f);
                        initTalk(6, NULL);
                        setMotionAnm(7, 0.0f);
                        field_0xdec++;
                    }
                    break;
                
                case 2:
                    if (talkProc(NULL, TRUE, NULL)) {
                        mActorMngrs[0].entry(daPy_getPlayerActorClass());
                        parentActorID = fopAcM_createChild(PROC_NPC_WRESTLER, fopAcM_GetID(this),
                                            getArenaNo() | 0x700 | 0x2000000, &l_createPos, fopAcM_GetRoomNo(this),
                                            NULL, NULL, getType(), NULL);
                        field_0xdec++;
                    } else {
                        int i_expression, i_motion;
                        int msgTimer = mMsgTimer;

                        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
                            setExpression(i_expression, -1.0f);
                            setMotion(i_motion, -1.0f, 0);
                        } else if (msgTimer != 0 && mMsgTimer == 0) {
                            setExpressionTalkAfter();
                        }
                    }
                    break;

                case 3: {
                    daNpcWrestler_c* actor = (daNpcWrestler_c*)fpcM_SearchByID(parentActorID);
                    if (actor != NULL) {
                        if (actor->checkStartUp()) {
                            dComIfGp_event_reset();
                            setAction(&daNpcBouS_c::wait);
                        }
                    }
                    break;
                }

                default:
                    JUT_ASSERT(1798, FALSE);
                    break;
            }
            break;

        case 3:
            break;

        default:
            JUT_ASSERT(1803, FALSE);
            break;
    }

    return true;
}

/* 80975ED8-80975FDC 002A78 0104+00 1/1 0/0 0/0 .text checkIntroDemoStart__11daNpcBouS_cFv */
bool daNpcBouS_c::checkIntroDemoStart() {
    // NONMATCHING
    if (strcmp(dComIfGp_getStartStageName(), "R_SP01") != 0 || dComIfGs_getStartPoint() != 2) {
        return FALSE;
    }

    OS_REPORT("イベント実行中%s 会話イベント%s\n", dComIfGp_event_runCheck() ? "です。" : "じゃないです。", eventInfo.checkCommandTalk() ? "です。" : "じゃないです。");

    mOrderEvtNo = 1;

    if (dComIfGp_event_runCheck()) {
        changeEvent("Bou4", l_evtNames[mOrderEvtNo], 1, 0xFFFF);
    } else {
        eventInfo.setArchiveName("Bou4");
        orderEvent(0, l_evtNames[mOrderEvtNo], 0xFFFF, 4, 0xFF, 1);
    }

    return TRUE;
}

/* 80975FDC-80976284 002B7C 02A8+00 1/0 0/0 0/0 .text EvCut_BousIntroSumo1__11daNpcBouS_cFi */
int daNpcBouS_c::EvCut_BousIntroSumo1(int i_staffId) {
    // NONMATCHING
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutName = (int*)eventManager.getMyNowCutName(i_staffId);

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (*cutName) {
            case '0x0001':
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngrs[0].entry(daPy_getPlayerActorClass());
                break;

            case '0x0002':
            case '0x0003':
            case '0x0005':
            case '0x0006':
            case '0x0007':
            case '0x0008':
            case '0x0009':
                initTalk(9, NULL);
                break;
            
            case '0x0004':
                setExpressionAnm(6, true);
                break;

            default:
                JUT_ASSERT(1870, FALSE);
                break;
        }
    }

    int i_expression, i_motion;
    int msgTimer = mMsgTimer;

    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else if (msgTimer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0x0001':
        case '0x0004':
            return 1;

        case '0x0002':
        case '0x0003':
        case '0x0005':
        case '0x0006':
        case '0x0007':
        case '0x0008':
        case '0x0009':
            if (talkProc(NULL, TRUE, NULL)) {
                s32 choiceNo = mFlow.getChoiceNo();
                OS_REPORT("二択分岐 %s\n", choiceNo == 0 ? "はい" : "いいえ");
                
                if (choiceNo == 0) {
                    mOrderEvtNo = 3;
                    changeEvent("Bou4", l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                }
                
                return 1;
            }
            break;

        default:
            JUT_ASSERT(1911, FALSE);
            break;
    }

    return 0;
}

/* 80976284-80976654 002E24 03D0+00 1/0 0/0 0/0 .text EvCut_BousIntroSumo2__11daNpcBouS_cFi */
int daNpcBouS_c::EvCut_BousIntroSumo2(int i_staffId) {
    // NONMATCHING
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutName = (int*)eventManager.getMyNowCutName(i_staffId);

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (*cutName) {
            case '0x0001':
                initTalk(9, NULL);
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngrs[0].entry(daPy_getPlayerActorClass());
                break;

            default:
                JUT_ASSERT(1939, FALSE);
        }
    }

    int i_expression, i_motion;
    int msgTimer = mMsgTimer;

    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
        setExpression(i_expression, -1.0f);
        setMotion(i_motion, -1.0f, 0);
    } else if (msgTimer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0x0001':
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (talkProc(NULL, TRUE, NULL)) {
                    int choiceNo = mFlow.getChoiceNo();
                    OS_REPORT("二択分岐 %s\n", choiceNo == 0 ? "はい" : "いいえ");

                    if (choiceNo == 0) {
                        mOrderEvtNo = 3;
                        changeEvent("Bou4", l_evtNames[mOrderEvtNo], 1, 0xFFFF);
                    }

                    return 1;
                }
            } else if (step(fopAcM_searchPlayerAngleY(this), 1)) {
                setMotion(6, -1.0f, 0);
                mTurnMode = 0;
            }
            break;

        default:
            JUT_ASSERT(1979, FALSE);
            break;
    }

    return 0;
}

/* 80976654-80976B48 0031F4 04F4+00 1/0 0/0 0/0 .text EvCut_BousIntroSumo3__11daNpcBouS_cFi */
int daNpcBouS_c::EvCut_BousIntroSumo3(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* cutName = (int*)eventManager.getMyNowCutName(i_staffId);

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (*cutName) {
            case '0x0001':
                setLookMode(LOOK_PLAYER_TALK);
                mActorMngrs[0].entry(daPy_getPlayerActorClass());
                break;

            case '0x0003':
                setMotion(0x12, -1.0f, 0);
                // fallthrough
            case '0x0002':
                setAngle(-0x2AAA);
                initTalk(9, NULL);
                break;
            
            default:
                JUT_ASSERT(2012, FALSE);
                break;
        }
    }

    int i_expression, i_motion;
    int msgTimer = mMsgTimer;

    if (ctrlMsgAnm(i_expression, i_motion, this, FALSE)) {
        if (*cutName != 0x30303033) {
            setExpression(i_expression, -1.0f);
            setMotion(i_motion, -1.0f, 0);
        }
    } else if (msgTimer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cutName) {
        case '0x0001':
            return 1;
        
        case '0x0002':
            if (talkProc(NULL, TRUE, NULL)) {
                return 1;
            }
            break;

        case '0x0003': {
            cXyz* pos = dComIfGp_evmng_getMyXyzP(i_staffId, "pos");
            if (pos != NULL) {
                if (cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, pos), 0x100)) {
                    speedF = 1.2f;
                } else {
                    cLib_chasePosXZ(&current.pos, *pos, 2.5f);
                }

                setAngle(shape_angle.y);

                if (speedF > 0.0f) {
                    fopAcM_posMoveF(this, NULL);
                }
            }

            if (talkProc(NULL, TRUE, NULL)) {
                int itemNo = 0;
                u16 eventId = mFlow.getEventId(&itemNo);
                OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", eventId, itemNo);

                if (eventId == 6) {
                    if (itemNo == 1) {
                        setAction((&daNpcBouS_c::instruction));
                    } else {
                        parentActorID = fopAcM_createChild(PROC_NPC_WRESTLER, fopAcM_GetID(this),
                                            (itemNo << 24) | (getArenaNo() | 0x700), &l_createPos, fopAcM_GetRoomNo(this),
                                            NULL, NULL, getType(), NULL);
                        setAngle(home.angle.y);
                        setAction(&daNpcBouS_c::wait);
                    }

                    dComIfGp_event_reset();
                    mOrderEvtNo = 0;
                    mEventIdx = -1;
                }

                return 1;
            }
            break;
        }

        default:
            JUT_ASSERT(2084, FALSE);
            break;
    }

    return 0;
}

/* 80976B48-80976B68 0036E8 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Create__FPv */
static int daNpcBouS_Create(void* i_this) {
    return static_cast<daNpcBouS_c*>(i_this)->Create();
}

/* 80976B68-80976B88 003708 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Delete__FPv */
static int daNpcBouS_Delete(void* i_this) {
    return static_cast<daNpcBouS_c*>(i_this)->Delete();
}

/* 80976B88-80976BA8 003728 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Execute__FPv */
static int daNpcBouS_Execute(void* i_this) {
    return static_cast<daNpcBouS_c*>(i_this)->Execute();
}

/* 80976BA8-80976BC8 003748 0020+00 1/0 0/0 0/0 .text            daNpcBouS_Draw__FPv */
static int daNpcBouS_Draw(void* i_this) {
    return static_cast<daNpcBouS_c*>(i_this)->Draw();
}

/* 80976BC8-80976BD0 003768 0008+00 1/0 0/0 0/0 .text            daNpcBouS_IsDelete__FPv */
static int daNpcBouS_IsDelete(void* i_this) {
    return 1;
}

/* 80977AB8-80977AC0 004658 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcBouS_cFv */
int daNpcBouS_c::drawDbgInfo() {
    #if DEBUG
    if (mHIO->m.common.debug_info_ON) {
        cXyz sp48;

    }
    #endif
    
    return 0;
}

/* 80977AC0-80977AC4 004660 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpcBouS_cFv */
void daNpcBouS_c::drawOtherMdls() {
    /* empty function */
}

/* 809783A0-809783A4 004F40 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpcBouS_cFv */
void daNpcBouS_c::adjustShapeAngle() {
    /* empty function */
}

/* 80978A3C-80978A5C -00001 0020+00 1/0 0/0 0/0 .data            daNpcBouS_MethodTable */
static actor_method_class daNpcBouS_MethodTable = {
    (process_method_func)daNpcBouS_Create,
    (process_method_func)daNpcBouS_Delete,
    (process_method_func)daNpcBouS_Execute,
    (process_method_func)daNpcBouS_IsDelete,
    (process_method_func)daNpcBouS_Draw,
};

/* 80978A5C-80978A8C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BOU_S */
extern actor_process_profile_definition g_profile_NPC_BOU_S = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_BOU_S,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcBouS_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  325,                    // mPriority
  &daNpcBouS_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
