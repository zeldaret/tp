/**
 * @file d_a_npc_prayer.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_prayer.h"
#include "d/d_com_inf_game.h"

/* 80AB5BB4-80AB5BB8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcPray_Param_c l_HIO;

/* 80AB59A4-80AB59EC 000020 0048+00 1/1 0/0 0/0 .data            l_bckGetParamList */
static struct {
    int resIdx;
    int anmMode;
    int arcnameIdx;
} l_bckGetParamList[] = {
    {5, 0, 0},   // pray
    {6, 0, 0},   // pray talk
    {31, 2, 1},  // wait_a
    {25, 0, 1},  // talk a
    {26, 2, 1},  // talk b
    {30, 2, 1},  // to wolf
};

enum daNpcPray_MOTION_e {
    MOTION_WAIT_e,
    MOTION_PRAY_e,
    MOTION_PRAYTALK_e,
    MOTION_WOLF_e,
};

/* 80AB59EC-80AB59F4 -00001 0008+00 4/5 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[2] = {
    "Prayer",
    "Wgeneral",
};

/* 80AB59F4-80AB59FC -00001 0008+00 0/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[2] = {
    NULL,
    "GET_HEART",
};

/* 80AB59FC-80AB5A00 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Prayer";

/* 80AB5A0C-80AB5A24 000088 0018+00 1/2 0/0 0/0 .data            mEvtSeqList__11daNpcPray_c */
daNpcPray_c::EvtSeq daNpcPray_c::mEvtSeqList[] = {
    NULL,
    &daNpcPray_c::_Evt_GetHeart,
};

/* 80AB2DEC-80AB2F70 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcPray_cFv */
daNpcPray_c::daNpcPray_c() {}

/* 80AB3000-80AB3204 000300 0204+00 1/0 0/0 0/0 .text            __dt__11daNpcPray_cFv */
daNpcPray_c::~daNpcPray_c() {
    for (int i = 0; i < 2; i++) {
        dComIfG_resDelete(&mPhase[i], l_arcNames[i]);
    }

    fopAc_ac_c* actor = mActorMngr[1].getActorP();
    if (actor != NULL) {
        fopAcM_delete(actor);
        mActorMngr[1].remove();
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80AB5808-80AB5874 000000 006C+00 14/14 0/0 0/0 .rodata          m__17daNpcPray_Param_c */
const daNpcPray_HIOParam daNpcPray_Param_c::m = {
    55.0f,
    -3.0f,
    1.0f,
    500.0f,
    255.0f,
    140.0f,
    35.0f,
    30.0f,
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
    2,
    6,
    3,
    6,
    60.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    0,
    0,
    0,
    0,
    false,
    false,
};

/* 80AB3204-80AB348C 000504 0288+00 1/1 0/0 0/0 .text            Create__11daNpcPray_cFv */
int daNpcPray_c::Create() {
    fopAcM_SetupActor(this, daNpcPray_c);

    mMessageNo = getMessageNo();

    int phase_state = cPhs_ERROR_e;
    for (int i = 0; i < 2; i++) {
        phase_state = dComIfG_resLoad(&mPhase[i], l_arcNames[i]);
        if (phase_state != cPhs_COMPLEATE_e) {
            return phase_state;
        }
    }

    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x1980)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -60.0f, -10.0f, -60.0f, 60.0f, 220.0f, 60.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setMdlType(25, 0, 0);

        mAcchCir.SetWall(daNpcPray_Param_c::m.common.width, daNpcPray_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());

        mCcStts.Init(daNpcPray_Param_c::m.common.weight, 0, this);
        mCcCyl.Set(mCcDCyl);
        mCcCyl.SetStts(&mCcStts);
        mCcCyl.SetTgType(0);
        mCcCyl.SetTgSPrm(0);
        mCcCyl.SetH(daNpcPray_Param_c::m.common.height);
        mCcCyl.SetR(daNpcPray_Param_c::m.common.width);

        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }

    return phase_state;
}

/* 80AB348C-80AB3610 00078C 0184+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcPray_cFv */
int daNpcPray_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[0], 9);
    JUT_ASSERT(313, 0 != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    cXyz scale(1.0f, 1.0999999f, 1.0f);
    mpMorf->offTranslate();
    mpMorf->setTranslateScale(scale);

    J3DModel* model_p = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model_p->setUserArea((u32)this);
    setMotion(MOTION_WAIT_e, -1.0f, 0);
    return 1;
}

/* 80AB3610-80AB3644 000910 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcPray_cFv */
int daNpcPray_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpcPray_c();
    return 1;
}

/* 80AB3644-80AB3668 000944 0024+00 2/2 0/0 0/0 .text            Execute__11daNpcPray_cFv */
int daNpcPray_c::Execute() {
    execute();
    return 1;
}

/* 80AB3668-80AB36A8 000968 0040+00 1/1 0/0 0/0 .text            Draw__11daNpcPray_cFv */
int daNpcPray_c::Draw() {
    draw(FALSE, FALSE, daNpcPray_Param_c::m.common.real_shadow_size, NULL, FALSE);
    return 1;
}

/* 80AB36A8-80AB3834 0009A8 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcPray_cFP8J3DJointP8J3DModel                */
int daNpcPray_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jnt_no = i_joint->getJntNo();
    int spC[] = {1, 2, 3};

    if (jnt_no == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);

        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);

        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 1:
    case 2:
    case 3:
        setLookatMtx(jnt_no, spC, daNpcPray_Param_c::m.common.neck_rotation_ratio);
        break;
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 80AB3834-80AB3854 000B34 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcPray_cFP10fopAc_ac_c              */
int daNpcPray_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daNpcPray_c*)i_this)->CreateHeap();
}

/* 80AB3854-80AB38A0 000B54 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcPray_cFP8J3DJointi
 */
int daNpcPray_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model_p = j3dSys.getModel();
        daNpcPray_c* a_this = (daNpcPray_c*)model_p->getUserArea();
        if (a_this != NULL) {
            a_this->ctrlJoint(i_joint, model_p);
        }
    }

    return 1;
}

/* 80AB38A0-80AB390C 000BA0 006C+00 1/0 0/0 0/0 .text            setParam__11daNpcPray_cFv */
void daNpcPray_c::setParam() {
    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcPray_Param_c::m.common.attention_distance, daNpcPray_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcPray_Param_c::m.common.talk_distance, daNpcPray_Param_c::m.common.talk_angle);
    attention_info.flags = 0xA;

#if VERSION == VERSION_SHIELD_DEBUG
    scale.set(daNpcPray_Param_c::m.common.scale, daNpcPray_Param_c::m.common.scale, daNpcPray_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpcPray_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpcPray_Param_c::m.common.knee_length);
    gravity = daNpcPray_Param_c::m.common.gravity;
#endif
}

/* 80AB390C-80AB3964 000C0C 0058+00 1/0 0/0 0/0 .text            main__11daNpcPray_cFv */
BOOL daNpcPray_c::main() {
    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    playMotion();
    return FALSE;
}

/* 80AB3964-80AB3B0C 000C64 01A8+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcPray_cFv */
void daNpcPray_c::setAttnPos() {
    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    daNpcF_c::setMtx();
    lookat();

    cXyz sp14(10.0f, 15.0f, 0.0f);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp14, &eyePos);
    sp14.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp14, &sp14);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp14);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp14);
    attention_info.position.set(mHeadPos.x, mHeadPos.y + daNpcPray_Param_c::m.common.attention_offset, mHeadPos.z);

    cXyz cyl_center;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&cyl_center);
    cyl_center.y = current.pos.y;

    mCcCyl.SetC(cyl_center);
#if VERSION == VERSION_SHIELD_DEBUG
    mCcCyl.SetH(daNpcPray_Param_c::m.common.height);
    mCcCyl.SetR(daNpcPray_Param_c::m.common.width);
#endif
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 80AB3B0C-80AB3BDC 000E0C 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcPray_cFif */
void daNpcPray_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* bck_p = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcnameIdx], l_bckGetParamList[i_idx].resIdx);
    int anmMode = l_bckGetParamList[i_idx].anmMode;
    mAnmFlags &= ~(ANM_PLAY_MORF | ANM_PAUSE_MORF);

    if (bck_p != NULL && setMcaMorfAnm(bck_p, 1.0f, i_morf, anmMode, 0, -1)) {
        mAnmFlags |= (ANM_PLAY_MORF | ANM_PAUSE_MORF);
        mMotionLoops = 0;
    }
}

/* 80AB3BDC-80AB3C24 000EDC 0048+00 1/0 0/0 0/0 .text            setMotion__11daNpcPray_cFifi */
void daNpcPray_c::setMotion(int i_motion, f32 i_morf, int param_2) {
    s16 var_r31 = i_motion;
    if ((param_2 != 0 || mMotion != var_r31) && i_motion >= 0 && i_motion < 4) {
        mMotion = var_r31;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
        field_0xe0a = 0;
    }
}

/* 80AB3C24-80AB3C2C 000F24 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcPray_cFv */
BOOL daNpcPray_c::drawDbgInfo() {
    return false;
}

/* 80AB3C2C-80AB3DBC 000F2C 0190+00 1/1 0/0 0/0 .text            reset__11daNpcPray_cFv */
void daNpcPray_c::reset() {
    initialize();
    mLookat.initialize();

    for (int i = 0; i < 2; i++) {
        mActorMngr[i].initialize();
    }

    field_0xdfc = 0;
    field_0xe00 = 0;
    mAction = NULL;
    mLookMode = -1;
    mActionMode = 0;

    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);

    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;

    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xdf8 = -1;
    mOrderEvtNo = 0;

    setAction(&daNpcPray_c::wait);
    mMotionMorfOverride = 0.0f;
}

/* 80AB3DBC-80AB3F54 0010BC 0198+00 1/1 0/0 0/0 .text            playMotion__11daNpcPray_cFv */
void daNpcPray_c::playMotion() {
    daNpcF_anmPlayData wait_phase1 = {2, daNpcPray_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* wait_m[] = {&wait_phase1};
    
    daNpcF_anmPlayData pray_phase1 = {0, daNpcPray_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData pray_phase2 = {2, daNpcPray_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pray_m[] = {&pray_phase1, &pray_phase2};

    daNpcF_anmPlayData praytalk_phase1 = {1, daNpcPray_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData praytalk_phase2 = {2, daNpcPray_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* praytalk_m[] = {&praytalk_phase1, &praytalk_phase2};

    daNpcF_anmPlayData wolf_phase1 = {5, daNpcPray_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* wolf_m[] = {&wolf_phase1};

    daNpcF_anmPlayData** anmData_p[] = {wait_m, pray_m, praytalk_m, wolf_m};

    if (mMotion >= 0 && mMotion < 4) {
        field_0xe0a = mMotionPhase;
        playMotionAnm(anmData_p);
    }
}

/* 80AB3F54-80AB3FFC 001254 00A8+00 4/4 0/0 0/0 .text
 * setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b            */
int daNpcPray_c::setAction(bool (daNpcPray_c::*i_action)(void*)) {
    mActionMode = 3;
    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    mActionMode = 0;
    mAction = i_action;

    if (mAction != NULL) {
        (this->*mAction)(NULL);
    }

    return 1;
}

/* 80AB3FFC-80AB4020 0012FC 0024+00 2/2 0/0 0/0 .text            setLookMode__11daNpcPray_cFi */
void daNpcPray_c::setLookMode(int i_mode) {
    if (i_mode >= 0 && i_mode < 4 && i_mode != mLookMode) {
        mLookMode = i_mode;
    }
}

/* 80AB4020-80AB4200 001320 01E0+00 1/1 0/0 0/0 .text            lookat__11daNpcPray_cFv */
void daNpcPray_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model_p = mpMorf->getModel();

    int var_r28 = 0;
    f32 body_angleX_min = daNpcPray_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpcPray_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpcPray_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpcPray_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpcPray_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpcPray_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpcPray_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpcPray_Param_c::m.common.head_angleY_max;

    s16 temp_r26 = mCurAngle.y - mOldAngle.y;
    cXyz sp30[] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* sp24[] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    cXyz sp18;
    switch (mLookMode) {
    case LOOK_NONE:
        break;
    case LOOK_RESET:
        var_r28 = 1;
        break;
    case LOOK_PLAYER:
    case LOOK_PLAYER_TALK:
        player = daPy_getPlayerActorClass();
        if (mLookMode == LOOK_PLAYER_TALK) {
            head_angleY_min = -80.0f;
            head_angleY_max = 80.0f;
        }
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

    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max,
                     0.0f, 0.0f, 0.0f, 0.0f,
                     head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max,
                     mCurAngle.y, sp30);
    mLookat.calc(this, model_p->getBaseTRMtx(), sp24, var_r28, temp_r26, 0);
}

/* 80AB4200-80AB42F4 001500 00F4+00 2/2 0/0 0/0 .text            step__11daNpcPray_cFsi */
bool daNpcPray_c::step(s16 i_targetAngle, int) {
    if (mTurnMode == 0) {
        mTurnTargetAngle = i_targetAngle;
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

/* 80AB42F4-80AB43D8 0015F4 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__11daNpcPray_cFv */
bool daNpcPray_c::chkFindPlayer() {
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcPray_Param_c::m.common.fov)) {
        mActorMngr[0].remove();
        return 0;
    }

    bool find_player;
    if (mActorMngr[0].getActorP() == NULL) {
        find_player = chkPlayerInSpeakArea(this);
    } else {
        find_player = chkPlayerInTalkArea(this);
    }

    if (find_player) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return find_player;
}

/* 80AB43D8-80AB4674 0016D8 029C+00 3/0 0/0 0/0 .text            wait__11daNpcPray_cFPv */
bool daNpcPray_c::wait(void*) {
    switch (mActionMode) {
    case 0:
        setMotion(MOTION_WAIT_e, -1.0f, 0);
        speedF = 0.0f;
        mActionMode = 2;
        break;
    case 2:
        chkFindPlayer();

        if (mActorMngr[0].getActorP() != NULL) {
            setLookMode(2);
        } else {
            setLookMode(0);
            if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                setMotion(MOTION_WAIT_e, -1.0f, 0);
                mTurnMode = 0;
            }
        }

        if (dComIfGp_event_runCheck()) {
            if (eventInfo.checkCommandTalk()) {
                if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                    setAction(&daNpcPray_c::talk);
                }
            } else if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0) != -1) {
                setAction(&daNpcPray_c::demo);
            }
        } else {
            if (!dKy_darkworld_check() && daPy_py_c::checkNowWolf()) {
                f32 search_range = pow(500.0f, 2.0f);
                if (fopAcM_searchPlayerDistanceXZ2(this) < search_range) {
                    setAction(&daNpcPray_c::fear);
                    break;
                }
            }

            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName(l_arcNames[0]);
            }

            orderEvent(field_0xe0e, l_evtNames[mOrderEvtNo], 0xFFFF, 40, 0xFF, 1);
        }
        break;
    case 1:
    case 3:
        JUT_ASSERT(1076, 0);
        break;
    }

    return 1;
}

/* 80AB4674-80AB4740 001974 00CC+00 1/0 0/0 0/0 .text            fear__11daNpcPray_cFPv */
bool daNpcPray_c::fear(void*) {
    switch (mActionMode) {
    case 0:
        setMotion(MOTION_WOLF_e, -1.0f, 0);
        speedF = 0.0f;
        mSound.playVoice(2);
        dComIfGs_onSaveDunSwitch(60);
        mActionMode = 2;
        break;
    case 2:
        OS_REPORT("-------------prayer frame=%f\n", mpMorf->getFrame());
        if (1.0f == mpMorf->getFrame()) {
            OS_REPORT("-------------prayer fear se start!!\n");
            mSound.playVoice(2);
        }
        break;
    case 1:
    case 3:
        JUT_ASSERT(1076, 0);
        break;
    }

    return 1;
}

/* 80AB4740-80AB498C 001A40 024C+00 1/0 0/0 0/0 .text            talk__11daNpcPray_cFPv */
bool daNpcPray_c::talk(void*) {
    int sp20 = 0;
    bool var_r28 = 0;

    switch (mActionMode) {
    case 0:
        initTalk(mMessageNo, NULL);
        mMsgTimer = 0;
        field_0xe0e = 0;
        setLookMode(3);
        mActionMode = 2;
        break;
    case 2:
        if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
            if (talkProc(NULL, TRUE, NULL)) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                int itemNo = 0;
                u16 eventID = mFlow.getEventId(&itemNo);
                // "at talk end  EventID=%d ItemNo=%d\n"
                OS_REPORT("会話終了時 イベントID=%d アイテムNo=%d\n", eventID, itemNo);

                if (eventID == 20) {
                    // "full offering amount reached!\n"
                    OS_REPORT("お布施額が満額になりました！\n");
                    daNpcF_onEvtBit(294);
                    mOrderEvtNo = 1;
                    changeEvent("Prayer", l_evtNames[mOrderEvtNo], 2, 0xFFFF);
                    setAction(&daNpcPray_c::demo);
                    return 1;
                }

                setAction(&daNpcPray_c::wait);
                var_r28 = 1;
                break;
            }

            int expression;
            int motion;
            int timer = mMsgTimer;
            if (ctrlMsgAnm(expression, motion, this, FALSE)) {
                setMotion(motion, -1.0f, 0);
            }
            break;
        }

        if (step(fopAcM_searchPlayerAngleY(this), 1)) {
            setMotion(MOTION_PRAYTALK_e, -1.0f, 0);
            mTurnMode = 0;
        }
        break;
    case 3:
        if (field_0x9ec == 0) {
            dComIfGp_event_reset();
        }
        break;
    default:
        JUT_ASSERT(1209, 0);
    }

    return var_r28;
}

/* 80AB498C-80AB4B20 001C8C 0194+00 2/0 0/0 0/0 .text            demo__11daNpcPray_cFPv */
bool daNpcPray_c::demo(void*) {
    dEvent_manager_c& evtmgr = dComIfGp_getEventManager();
    int var_r25 = 0;

    switch (mActionMode) {
    case 0:
        setMotion(MOTION_WAIT_e, -1.0f, 0);
        mActionMode = 2;
        break;
    case 2:
        if (dComIfGp_event_runCheck() != 0 && !eventInfo.checkCommandTalk()) {
            dEvent_manager_c& evtmgr = dComIfGp_getEventManager();
            const int staffID = evtmgr.getMyStaffId(l_myName, NULL, 0);
            if (staffID != -1) {
                mStaffID = staffID;
 
                JUT_ASSERT(1243, 0 != mEvtSeqList[mOrderEvtNo]);
                if ((this->*mEvtSeqList[mOrderEvtNo])(staffID)) {
                    evtmgr.cutEnd(staffID);
                    var_r25 = 1;
                }
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && evtmgr.endCheck(mEventIdx)) {
                switch (mOrderEvtNo) {
                case 1:
                    OS_REPORT("------------------heart remove!!\n");
                    fopAc_ac_c* heart_actor_p = mActorMngr[1].getActorP();
                    if (heart_actor_p != NULL) {
                        fopAcM_delete(heart_actor_p);
                        mActorMngr[1].remove();
                    }
                }

                dComIfGp_event_reset();
                mOrderEvtNo = 0;
                mEventIdx = -1;
                setAction(&daNpcPray_c::wait);
            }
        }
        break;
    case 3:
        JUT_ASSERT(1280, 0);
        break;
    }

    return 1;
}

/* 80AB4B20-80AB4BFC 001E20 00DC+00 1/1 0/0 0/0 .text            createHeart__11daNpcPray_cFv */
fpc_ProcID daNpcPray_c::createHeart() {
    cXyz pos(-4142.7036f, 850.0f, -569.3754f);
    csXyz rot(0, 0, 0);
    cXyz size(0.3f, 0.3f, 0.3f);
    cXyz offset(0.0f, 0.0f, 95.0f);

    mDoMtx_stack_c::ZXYrotS(rot);
    mDoMtx_stack_c::multVec(&offset, &offset);
    pos += offset;
    return fopAcM_createItemForBoss(&pos, fpcNm_ITEM_KAKERA_HEART, fopAcM_GetRoomNo(this), &rot, &size, 0.0f, 0.0f, 0);
}

/* 80AB4BFC-80AB4CA4 001EFC 00A8+00 1/0 0/0 0/0 .text            _Evt_GetHeart__11daNpcPray_cFi */
BOOL daNpcPray_c::_Evt_GetHeart(int i_staffID) {
    dEvent_manager_c& evtmgr = dComIfGp_getEventManager();
    int cutId = -1;

    int* cutId_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "cutId");
    if (cutId_p != NULL) {
        cutId = *cutId_p;
    } else {
        return 1;
    }
    
    if (evtmgr.getIsAddvance(i_staffID)) {
        _Evt_GetHeart_CutInit(cutId);
    }

    return _Evt_GetHeart_CutMain(cutId);
}

/* 80AB4CA4-80AB4D34 001FA4 0090+00 1/1 0/0 0/0 .text _Evt_GetHeart_CutInit__11daNpcPray_cFRCi */
BOOL daNpcPray_c::_Evt_GetHeart_CutInit(const int& i_cutId) {
    switch (i_cutId) {
    case 10:
        break;
    case 20: {
        fopAc_ac_c* heart_actor_p = mActorMngr[1].getActorP();
        if (heart_actor_p != NULL) {
            fopAcM_SetSpeedF(heart_actor_p, 0.0f);
            fopAcM_SetSpeed(heart_actor_p, 0.0f, 0.0f, 0.0f);
            fopAcM_SetGravity(heart_actor_p, -3.0f);
            fopAcM_SetAngle(heart_actor_p, 0, 0, 0);
            fopAcM_SetMaxFallSpeed(heart_actor_p, -4.0f);
        }
        break;
    }
    default:
        JUT_ASSERT(1396, 0);
        break;
    }

    return 1;
}

/* 80AB4D34-80AB4E88 002034 0154+00 1/1 0/0 0/0 .text _Evt_GetHeart_CutMain__11daNpcPray_cFRCi */
BOOL daNpcPray_c::_Evt_GetHeart_CutMain(int const& i_cutId) {
    BOOL var_r28 = 0;

    switch (i_cutId) {
    case 10:
        if (mActorMngr[1].getPId() == fpcM_ERROR_PROCESS_ID_e) {
            fpc_ProcID heart_pid = createHeart();
            if (heart_pid != fpcM_ERROR_PROCESS_ID_e) {
                mActorMngr[1].entry(heart_pid);
                
                fopAc_ac_c* heart_actor_p = mActorMngr[1].getActorP();
                if (heart_actor_p != NULL) {
                    fopAcM_SetSpeedF(heart_actor_p, 0.0f);
                    fopAcM_SetSpeed(heart_actor_p, 0.0f, 0.0f, 0.0f);
                    fopAcM_SetGravity(heart_actor_p, 0.0f);
                    fopAcM_SetAngle(heart_actor_p, 0, 0, 0);
                    fopAcM_SetMaxFallSpeed(heart_actor_p, -4.0f);
                    var_r28 = 1;
                }
            }
        } else {
            fopAc_ac_c* heart_actor_p = mActorMngr[1].getActorP();
            if (heart_actor_p != NULL) {
                fopAcM_SetSpeedF(heart_actor_p, 0.0f);
                fopAcM_SetSpeed(heart_actor_p, 0.0f, 0.0f, 0.0f);
                fopAcM_SetGravity(heart_actor_p, 0.0f);
                fopAcM_SetAngle(heart_actor_p, 0, 0, 0);
                fopAcM_SetMaxFallSpeed(heart_actor_p, -4.0f);
                var_r28 = 1;
            }
        }
        break;
    case 20: {
        fopAc_ac_c* heart_actor_p = mActorMngr[1].getActorP();
        if (heart_actor_p != NULL) {
            fopAcM_posMoveF(heart_actor_p, NULL);
            cXyz& heart_pos = fopAcM_GetPosition(heart_actor_p);
            if (heart_pos.y < 110.0f) {
                heart_pos.y = -300.0f;
                var_r28 = 1;
            }
        }
        break;
    }
    default:
        JUT_ASSERT(1474, 0);
        var_r28 = 1;
        break;
    }

    return var_r28;
}

/* 80AB4E88-80AB4EA8 002188 0020+00 1/0 0/0 0/0 .text            daNpcPray_Create__FPv */
static int daNpcPray_Create(void* i_this) {
    return ((daNpcPray_c*)i_this)->Create();
}

/* 80AB4EA8-80AB4EC8 0021A8 0020+00 1/0 0/0 0/0 .text            daNpcPray_Delete__FPv */
static int daNpcPray_Delete(void* i_this) {
    return ((daNpcPray_c*)i_this)->Delete();
}

/* 80AB4EC8-80AB4EE8 0021C8 0020+00 1/0 0/0 0/0 .text            daNpcPray_Execute__FPv */
static int daNpcPray_Execute(void* i_this) {
    return ((daNpcPray_c*)i_this)->Execute();
}

/* 80AB4EE8-80AB4F08 0021E8 0020+00 1/0 0/0 0/0 .text            daNpcPray_Draw__FPv */
static int daNpcPray_Draw(void* i_this) {
    return ((daNpcPray_c*)i_this)->Draw();
}

/* 80AB4F08-80AB4F10 002208 0008+00 1/0 0/0 0/0 .text            daNpcPray_IsDelete__FPv */
static int daNpcPray_IsDelete(void* i_this) {
    return 1;
}

/* 80AB5A78-80AB5A98 -00001 0020+00 1/0 0/0 0/0 .data            daNpcPray_MethodTable */
static actor_method_class daNpcPray_MethodTable = {
    (process_method_func)daNpcPray_Create,
    (process_method_func)daNpcPray_Delete,
    (process_method_func)daNpcPray_Execute,
    (process_method_func)daNpcPray_IsDelete,
    (process_method_func)daNpcPray_Draw,
};

/* 80AB5A98-80AB5AC8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PRAYER */
extern actor_process_profile_definition g_profile_NPC_PRAYER = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_PRAYER,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcPray_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  419,                    // mPriority
  &daNpcPray_MethodTable, // sub_method
  0x00044187,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
