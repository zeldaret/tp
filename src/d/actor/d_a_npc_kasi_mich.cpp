/**
 * @file d_a_npc_kasi_mich.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_kasi_mich.h"
#include "Z2AudioLib/Z2Instances.h"

enum kasi_mich_RES_File_ID {
    /* BMDR */
    /* 0x4 */ BMDR_MICH = 0x4,

    /* BTP */
    /* 0x7 */ BTP_MICH = 0x7,
};

enum girls_RES_File_ID {
    /* BCK */
    /* 0x3 */ BCK_MICH_IYAN_WAIT = 0x3,
    /* 0x4 */ BCK_MICH_KYA_TALK,
    /* 0x5 */ BCK_MICH_OUEN_WAIT_A,
    /* 0x6 */ BCK_MICH_OUEN_WAIT_B,
};

enum Wgeneral_RES_File_ID {
    /* BCK */
    /* 0x03 */ BCK_W_2LADYTALK_A = 0x3,
    /* 0x04 */ BCK_W_2LADYTALK_B,
    /* 0x05 */ BCK_W_2NORMALTALK_A,
    /* 0x06 */ BCK_W_2NORMALTALK_B,
    /* 0x07 */ BCK_W_BROWSE_A,
    /* 0x08 */ BCK_W_BROWSE_B,
    /* 0x09 */ BCK_W_CELLME,
    /* 0x0A */ BCK_W_LOOK_A,
    /* 0x0B */ BCK_W_LOOK_B,
    /* 0x0C */ BCK_W_MARO_DANCE,
    /* 0x0D */ BCK_W_RUN_A,
    /* 0x0E */ BCK_W_RUN_B,
    /* 0x0F */ BCK_W_SING,
    /* 0x10 */ BCK_W_SIT_TO_WOLF_A,
    /* 0x11 */ BCK_W_SIT_TO_WOLF_B,
    /* 0x12 */ BCK_W_SITTALK_A,
    /* 0x13 */ BCK_W_SITTALK_A_B,
    /* 0x14 */ BCK_W_SITTALK_B,
    /* 0x15 */ BCK_W_SITTALK_B_B,
    /* 0x16 */ BCK_W_SITWAIT_A,
    /* 0x17 */ BCK_W_SITWAIT_B,
    /* 0x18 */ BCK_W_SURPRISE,
    /* 0x19 */ BCK_W_TALK_A,
    /* 0x1A */ BCK_W_TALK_B,
    /* 0x1B */ BCK_W_TALK_B_WALL,
    /* 0x1C */ BCK_W_TALK_C,
    /* 0x1D */ BCK_W_TALK_WALL,
    /* 0x1E */ BCK_W_TO_WOLF,
    /* 0x1F */ BCK_W_WAIT_A,
    /* 0x20 */ BCK_W_WAIT_B,
    /* 0x21 */ BCK_W_WAIT_WALL,
    /* 0x22 */ BCK_W_WALK_A,
    /* 0x23 */ BCK_W_WALK_B,
};

enum RES_Name {
    /* 0x0 */ KASI_MICH,
    /* 0x1 */ GIRLS,
    /* 0x2 */ WGENERAL,
};

enum Animation {
    /* 0x0 */ ANM_MICH_IYAN_WAIT,
    /* 0x1 */ ANM_MICH_KYA_TALK,
    /* 0x2 */ ANM_MICH_OUEN_WAIT_A,
    /* 0x3 */ ANM_MICH_OUEN_WAIT_B,
    /* 0x4 */ ANM_W_WAIT_A,
    /* 0x5 */ ANM_W_TALK_B,
    /* 0x6 */ ANM_W_WALK_A,
    /* 0x7 */ ANM_W_LOOK_B,
    /* 0x8 */ ANM_W_RUN_A,
    /* 0x9 */ ANM_W_TO_WOLF,
    /* 0xA */ ANM_W_SURPRISE,
    /* 0xB */ ANM_W_WAIT_A_2,
    /* 0xC */ ANM_W_TALK_A,
    /* 0xD */ ANM_W_2LADYTALK_A,
    /* 0xE */ ANM_W_2NORMALTALK_A,
    /* 0xF */ ANM_W_2NORMALTALK_B,
};

enum Motion {
    /* 0x0 */ MOT_MICH_KYA_TALK,
    /* 0x1 */ MOT_MICH_IYAN_WAIT,
    /* 0x2 */ MOT_MICH_OUEN_WAIT_A,
    /* 0x3 */ MOT_MICH_OUEN_WAIT_B,
    /* 0x4 */ MOT_W_WAIT_A,
    /* 0x5 */ MOT_W_TALK_B,
    /* 0x6 */ MOT_W_WALK_A,
    /* 0x7 */ MOT_W_LOOK_B,
    /* 0x8 */ MOT_W_RUN_A,
    /* 0x9 */ MOT_W_TO_WOLF,
    /* 0xA */ MOT_W_SURPRISE,
    /* 0xB */ MOT_W_TALK_A,
    /* 0xC */ MOT_W_2NORMALTALK_B
};

/* 80A2A7EC-80A2A7F0 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpcKasiMich_Param_c l_HIO;

/* 80A2A2D4-80A2A394 000020 00C0+00 1/1 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[16] = {
    {BCK_MICH_IYAN_WAIT, J3DFrameCtrl::EMode_LOOP, GIRLS},
    {BCK_MICH_KYA_TALK, J3DFrameCtrl::EMode_LOOP, GIRLS},
    {BCK_MICH_OUEN_WAIT_A, J3DFrameCtrl::EMode_LOOP, GIRLS},
    {BCK_MICH_OUEN_WAIT_B, J3DFrameCtrl::EMode_LOOP, GIRLS},
    {BCK_W_WAIT_A, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_TALK_B, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_WALK_A, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_LOOK_B, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_RUN_A, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_TO_WOLF, J3DFrameCtrl::EMode_LOOP, WGENERAL},
    {BCK_W_SURPRISE, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_WAIT_A, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_TALK_A, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_2LADYTALK_A, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_2NORMALTALK_A, J3DFrameCtrl::EMode_NONE, WGENERAL},
    {BCK_W_2NORMALTALK_B, J3DFrameCtrl::EMode_NONE, WGENERAL},
};

/* 80A2A394-80A2A3A0 0000E0 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[1] = {
    {BTP_MICH, J3DFrameCtrl::EMode_LOOP, KASI_MICH},
};

/* 80A2A3A0-80A2A3AC -00001 000C+00 5/6 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "kasi_mich",
    "girls",
    "Wgeneral",
};

/* 80A2A3AC-80A2A3B0 0000F8 0004+00 1/2 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[1] = {
    NULL
};

/* 80A2A3B0-80A2A3B4 -00001 0004+00 0/0 0/0 0/0 .data            l_myName */
static char* l_myName = "kasi_mich";

/* 80A2A3B4-80A2A3C0 000100 000C+00 1/1 0/0 0/0 .data            mEvtSeqList__15daNpcKasiMich_c */
daNpcKasiMich_c::EventFn daNpcKasiMich_c::mEvtSeqList[1] = {
    NULL
};

/* 80A261CC-80A26384 0000EC 01B8+00 1/1 0/0 0/0 .text            __ct__15daNpcKasiMich_cFv */
daNpcKasiMich_c::daNpcKasiMich_c() {}

/* 80A26414-80A26624 000334 0210+00 1/0 0/0 0/0 .text            __dt__15daNpcKasiMich_cFv */
daNpcKasiMich_c::~daNpcKasiMich_c() {
    for (int i = 0; i < 3; i ++) {
        dComIfG_resDelete(&mPhases[i], l_arcNames[i]);
    }

    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}

/* 80A2A04C-80A2A0C0 000000 0074+00 17/17 0/0 0/0 .rodata          m__21daNpcKasiMich_Param_c */
daNpcKasiMich_HIOParam const daNpcKasiMich_Param_c::m = {
    55.0f,
    -3.0f,
    1.0f,
    500.0f,
    216.0f,
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
    10,
    16.0f,
};

/* 80A26624-80A268A0 000544 027C+00 1/1 0/0 0/0 .text            Create__15daNpcKasiMich_cFv */
cPhs__Step daNpcKasiMich_c::Create() {
    fopAcM_SetupActor(this, daNpcKasiMich_c);

    mType = getType();
    mMessageNo = getMessageNo();

    cPhs__Step phase = cPhs_ERROR_e;
    for (int i = 0; i < 3; i++) {
        phase = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_arcNames[i]);

        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x1940)) {
            return cPhs_ERROR_e;
        }

        J3DModel* model = mpMorf->getModel();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -60.0f, -10.0f, -60.0f, 60.0f, 220.0f, 60.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpcKasiMich_Param_c::m.common.width, daNpcKasiMich_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init(0xFE, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgType(0);
        mCyl.SetTgSPrm(0);
        mCyl.SetH(daNpcKasiMich_Param_c::m.common.height);
        mCyl.SetR(daNpcKasiMich_Param_c::m.common.width);
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();
    }

    return phase;
}

/* 80A268A0-80A26A24 0007C0 0184+00 1/1 0/0 0/0 .text            CreateHeap__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcNames[0], BMDR_MICH);

    JUT_ASSERT(314, NULL != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020084);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    cXyz i_scale(1.0f, 0.8630768f, 1.0f);
    mpMorf->offTranslate();
    mpMorf->setTranslateScale(i_scale);

    J3DModel* model = mpMorf->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    setMotion(MOT_W_WAIT_A, -1.0f, 0);

    return 1;
}

/* 80A26A24-80A26A58 000944 0034+00 1/1 0/0 0/0 .text            Delete__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::Delete() {
    this->~daNpcKasiMich_c();
    return 1;
}

/* 80A26A58-80A26A84 000978 002C+00 2/2 0/0 0/0 .text            Execute__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::Execute() {
    mFear = false;
    execute();
    return 1;
}

/* 80A26A84-80A26AD0 0009A4 004C+00 1/1 0/0 0/0 .text            Draw__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::Draw() {
    if (!mEscape) {
        draw(FALSE, FALSE, daNpcKasiMich_Param_c::m.common.real_shadow_size, NULL, FALSE);
    }

    return 1;
}

/* 80A26AD0-80A26C5C 0009F0 018C+00 1/1 0/0 0/0 .text            ctrlJoint__15daNpcKasiMich_cFP8J3DJointP8J3DModel */
int daNpcKasiMich_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();
    int i_jointList[3] = {1, 2, 3};

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case 1:
        case 2:
        case 3:
            setLookatMtx(jntNo, i_jointList, daNpcKasiMich_Param_c::m.common.neck_rotation_ratio);
            break;
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 80A26C5C-80A26C7C 000B7C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__15daNpcKasiMich_cFP10fopAc_ac_c */
int daNpcKasiMich_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpcKasiMich_c* i_this = (daNpcKasiMich_c*)a_this;
    return i_this->CreateHeap();
}

/* 80A26C7C-80A26CC8 000B9C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__15daNpcKasiMich_cFP8J3DJointi */
int daNpcKasiMich_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcKasiMich_c* i_this = (daNpcKasiMich_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80A26CC8-80A26D34 000BE8 006C+00 1/0 0/0 0/0 .text            setParam__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::setParam() {
    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(daNpcKasiMich_Param_c::m.common.attention_distance, daNpcKasiMich_Param_c::m.common.attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(daNpcKasiMich_Param_c::m.common.talk_distance, daNpcKasiMich_Param_c::m.common.talk_angle);
    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
}

/* 80A2A7F0-80A2A7F4 000058 0004+00 1/2 0/0 0/0 .bss             mTargetTag__15daNpcKasiMich_c */
daTagEscape_c* daNpcKasiMich_c::mTargetTag;

/* 80A2A7F4-80A2A7F8 00005C 0004+00 0/1 0/0 0/0 .bss             mTargetTagDist__15daNpcKasiMich_c */
f32 daNpcKasiMich_c::mTargetTagDist;

/* 80A2A7F8-80A2A7FC -00001 0004+00 2/3 0/0 0/0 .bss             None */
/* 80A2A7F8 0002+00 data_80A2A7F8 mWolfAngle__15daNpcKasiMich_c */
/* 80A2A7FA 0002+00 data_80A2A7FA None */
s16 daNpcKasiMich_c::mWolfAngle;

/* 80A26D34-80A26FDC 000C54 02A8+00 1/0 0/0 0/0 .text            main__15daNpcKasiMich_cFv */
BOOL daNpcKasiMich_c::main() {
    if (mSygnal >= 0) {
        static daNpcKasiMich_c::actionFunc sSygnalAct[20] = {
            &daNpcKasiMich_c::wait,
            &daNpcKasiMich_c::chace,
            &daNpcKasiMich_c::turn_link,
            &daNpcKasiMich_c::turn_home,
            &daNpcKasiMich_c::talk_dummy,
            &daNpcKasiMich_c::escape,
            &daNpcKasiMich_c::turn_center,
            &daNpcKasiMich_c::wait_dummy,
            &daNpcKasiMich_c::cheer,
            &daNpcKasiMich_c::chace_st,
            &daNpcKasiMich_c::kya,
            &daNpcKasiMich_c::iyan,
            &daNpcKasiMich_c::kya_stop,
            &daNpcKasiMich_c::wait_dummy,
            &daNpcKasiMich_c::iyan_look,
            NULL,
            &daNpcKasiMich_c::turn_hana,
            &daNpcKasiMich_c::wait_dummy,
            &daNpcKasiMich_c::kya2,
            &daNpcKasiMich_c::fear,
        };
        setAction(sSygnalAct[mSygnal]);
    }

    if (mAction) {
        (this->*mAction)(NULL);
    }

    playMotion();

    return TRUE;
}

/* 80A26FDC-80A27184 000EFC 01A8+00 1/0 0/0 0/0 .text            setAttnPos__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::setAttnPos() {
    if (mLookMode == LOOK_RESET) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    daNpcF_c::setMtx();
    lookat();

    cXyz sp1c(10.0f, 15.0f, 0.0f);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp1c, &eyePos);
    sp1c.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp1c, &sp1c);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp1c);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp1c);
    attention_info.position.set(mHeadPos.x, mHeadPos.y + daNpcKasiMich_Param_c::m.common.attention_offset, mHeadPos.z);

    cXyz sp28;

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&sp28);
    sp28.y = current.pos.y;
    mCyl.SetC(sp28);
    #ifdef DEBUG
    mCyl.SetH(daNpcKasiMich_Param_c::m.common.height);
    mCyl.SetR(daNpcKasiMich_Param_c::m.common.width);
    #endif
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80A27184-80A27254 0010A4 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__15daNpcKasiMich_cFif */
void daNpcKasiMich_c::setMotionAnm(int i_index, f32 i_morf) {
    J3DAnmTransformKey* i_anm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    int i_attr = l_bckGetParamList[i_index].attr;
    mAnmFlags &= 0xFFFFFFF6;

    if (i_anm != NULL && setMcaMorfAnm(i_anm, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 80A27254-80A2729C 001174 0048+00 1/0 0/0 0/0 .text            setMotion__15daNpcKasiMich_cFifi */
void daNpcKasiMich_c::setMotion(int i_motion, f32 i_morf, int param_3) {
    s16 motion = i_motion;
    if ((param_3 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 0xD) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
        field_0x143e = 0;
    }
}

/* 80A2729C-80A272A4 0011BC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__15daNpcKasiMich_cFv */
BOOL daNpcKasiMich_c::drawDbgInfo() {
    return FALSE;
}

/* 80A272A4-80A274D8 0011C4 0234+00 1/1 0/0 0/0 .text            reset__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::reset() {
    initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    mPath.initialize();

    if (mType == 0) {
        mPath.setPathInfo(getRailNo(), fopAcM_GetRoomNo(this), 0);
        mPath.setIdx(6);
    } else if (mType == 1) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x4000);
    }

    field_0x1430 = 0;
    field_0x1434 = 0;
    mAction = NULL;
    mLookMode = -1;
    mMode = 0;
    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    speedF = 0.0f;
    speed.setall(0.0f);
    field_0x142c = fpcM_ERROR_PROCESS_ID_e;
    mOrderEvtNo = 0;

    J3DAnmTexPattern* i_btp = getTexPtrnAnmP(l_arcNames[0], 7);
    mAnmFlags &= 0xFFFFF57F;

    if (setBtpAnm(i_btp, mpMorf->getModel()->getModelData(), 1.0f, J3DFrameCtrl::EMode_LOOP)) {
        mAnmFlags |= ANM_FLAG_800 | ANM_PLAY_BTP | ANM_PAUSE_BTP;
    }

    mTalked = false;
    mFear = false;
    mEscape = false;
    field_0x1465 = 0;
    setAction(&daNpcKasiMich_c::wait);
    mMotionMorfOverride = 0.0f;
}

/* 80A274D8-80A2790C 0013F8 0434+00 1/1 0/0 0/0 .text            playMotion__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::playMotion() {
    daNpcF_anmPlayData dat0 = {ANM_MICH_KYA_TALK, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_MICH_IYAN_WAIT, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {ANM_MICH_OUEN_WAIT_A, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {ANM_MICH_OUEN_WAIT_B, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {ANM_W_WAIT_A, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {ANM_W_TALK_B, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {ANM_W_WALK_A, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {ANM_W_LOOK_B, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};
    daNpcF_anmPlayData dat8 = {ANM_W_RUN_A, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat8[1] = {&dat8};
    daNpcF_anmPlayData dat9 = {ANM_W_TO_WOLF, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat9[1] = {&dat9};
    daNpcF_anmPlayData dat10 = {ANM_W_SURPRISE, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat10[1] = {&dat10};
    daNpcF_anmPlayData dat11a = {ANM_W_TALK_A, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11b = {ANM_W_2LADYTALK_A, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11c = {ANM_W_WAIT_A_2, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11d = {ANM_W_TALK_B, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11e = {ANM_W_WAIT_A_2, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat11f = {ANM_W_2NORMALTALK_A, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat11[6] = {&dat11a, &dat11b, &dat11c, &dat11d, &dat11e, &dat11f};
    daNpcF_anmPlayData dat12a = {ANM_W_2NORMALTALK_B, daNpcKasiMich_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat12b = {ANM_W_WAIT_A, daNpcKasiMich_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat12[2] = {&dat12a, &dat12b};

    daNpcF_anmPlayData** ppDat[13] = {
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
        pDat10,
        pDat11,
        pDat12
    };

    if (mMotion >= 0 && mMotion < 0xD) {
        field_0x143e = mMotionPhase;

        if (mMotion == MOT_W_TALK_A) {
            playMotionAnmLoop(ppDat);
        } else {
            playMotionAnm(ppDat);
        }
    }
}

/* 80A2790C-80A27A84 00182C 0178+00 1/1 0/0 0/0 .text            playMotionAnmLoop__15daNpcKasiMich_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
void daNpcKasiMich_c::playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData*** i_data) {
    daNpcF_anmPlayData* playData = NULL;

    if (i_data[mMotion] != NULL) {
        playData = i_data[mMotion][mMotionPhase];
    }

    if (playData != NULL) {
        if (mMotionPrevPhase == mMotionPhase) {
            if (playData->numLoops > 0 && playData->numLoops <= mMotionLoops) {
                mMotionPhase++;
                playData = i_data[mMotion][mMotionPhase];
            } else if (playData->numLoops == 0 && mMotionLoops >= 1) {
                mMotionPhase = 0;
                playData = i_data[mMotion][mMotionPhase];
            }
        }

        if (playData != NULL && mMotionPrevPhase != mMotionPhase) {
            setMotionAnm(playData->idx, 0.0f);
            f32 i_morf = playData->morf;

            if (mMotionPhase == 0) {
                if (mMotion == MOT_W_TALK_A) {
                    i_morf = daNpcKasiMich_Param_c::m.common.morf_frame;
                } else if (0.0f <= mMotionMorfOverride) {
                    i_morf = mMotionMorfOverride;
                }
            }

            mExpressionMorf = 0.0f;
            mpMorf->setMorf(i_morf);
        }
    }

    mMotionPrevPhase = mMotionPhase;
}

/* 80A27A84-80A27B2C 0019A4 00A8+00 10/10 0/0 0/0 .text          setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i */
BOOL daNpcKasiMich_c::setAction(actionFunc action) {
    mMode = -1;

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

/* 80A27B2C-80A27B50 001A4C 0024+00 8/8 0/0 0/0 .text            setLookMode__15daNpcKasiMich_cFi */
void daNpcKasiMich_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 4 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* 80A27B50-80A27D30 001A70 01E0+00 1/1 0/0 0/0 .text            lookat__15daNpcKasiMich_cFv */
void daNpcKasiMich_c::lookat() {
    daPy_py_c* player = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL i_snap = FALSE;
    f32 body_angleX_min = daNpcKasiMich_Param_c::m.common.body_angleX_min;
    f32 body_angleX_max = daNpcKasiMich_Param_c::m.common.body_angleX_max;
    f32 body_angleY_min = daNpcKasiMich_Param_c::m.common.body_angleY_min;
    f32 body_angleY_max = daNpcKasiMich_Param_c::m.common.body_angleY_max;
    f32 head_angleX_min = daNpcKasiMich_Param_c::m.common.head_angleX_min;
    f32 head_angleX_max = daNpcKasiMich_Param_c::m.common.head_angleX_max;
    f32 head_angleY_min = daNpcKasiMich_Param_c::m.common.head_angleY_min;
    f32 head_angleY_max = daNpcKasiMich_Param_c::m.common.head_angleY_max;
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
    mLookat.calc(this, model->getBaseTRMtx(), lookatAngle, i_snap, angle_delta, FALSE);
}

/* 80A27D30-80A27E24 001C50 00F4+00 1/1 0/0 0/0 .text            step__15daNpcKasiMich_cFsi */
BOOL daNpcKasiMich_c::step(s16 i_targetAngle, int param_2) {
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
        if (daNpcF_c::turn(mTurnTargetAngle, 15.0f, 0)) {
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

/* 80A27E24-80A27F08 001D44 00E4+00 1/1 0/0 0/0 .text            chkFindPlayer__15daNpcKasiMich_cFv */
BOOL daNpcKasiMich_c::chkFindPlayer() {
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcKasiMich_Param_c::m.common.fov)) {
        mActorMngr[0].remove();
        return FALSE;
    }

    bool rv;
    if (mActorMngr[0].getActorP() == NULL) {
        rv = chkPlayerInSpeakArea(this);
    } else {
        rv = chkPlayerInTalkArea(this);
    }

    if (rv) {
        mActorMngr[0].entry(daPy_getPlayerActorClass());
    } else {
        mActorMngr[0].remove();
    }

    return rv;
}

/* 80A27F08-80A282B4 001E28 03AC+00 8/0 0/0 0/0 .text            wait__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::wait(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            if (mType == 0 && !field_0x1465) {
                setMotion(MOT_W_TALK_A, -1.0f, 0);
            } else {
                setMotion(MOT_W_WAIT_A, -1.0f, 0);
            }

            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            chkFindPlayer();

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else if (!fopAcM_isSwitch(this, 12) && !dComIfGp_event_runCheck()) {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y && step(home.angle.y, 1)) {
                    if (mType == 0 && !field_0x1465) {
                        setMotion(MOT_W_TALK_A, -1.0f, 0);
                    } else {
                        setMotion(MOT_W_WAIT_A, -1.0f, 0);
                    }

                    mTurnMode = 0;
                }
            }

            /* dSv_event_flag_c::F_290 - Castle Town - Star Game 1 cleared */
            if (daNpcF_chkEvtBit(290) && field_0x1465 && mType == 0 && fopAcM_isSwitch(this, 12)) {
                if (pl_front_check()) {
                    if (fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass()) >= 450.0f) {
                        setAction(&daNpcKasiMich_c::chace);
                        return 1;
                    }
                } else {
                    setAction(&daNpcKasiMich_c::turn_link);
                    return 1;
                }
            }

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        OS_REPORT("------------------mich talk reset!!\n");

                        mTalked = true;
                        dComIfGp_event_reset();
                    }
                }
            } else {
                if (!dKy_darkworld_check()) {
                    if (daPy_py_c::checkNowWolf()) {
                        f32 fVar1 = pow(500.0, 2.0);
                        if (fopAcM_searchPlayerDistanceXZ2(this) < fVar1) {
                            mFear = true;
                            break;
                        }
                    }
                }

                if (mOrderEvtNo != 0) {
                    eventInfo.setArchiveName(l_arcNames[0]);
                }

                orderEvent(field_0x1469, l_evtNames[mOrderEvtNo], 0xFFFF, 40, 0xFF, 1);
            }
            break;

        default:
            JUT_ASSERT(1301, FALSE);
            break;
    }

    return 1;
}

/* 80A282B4-80A28490 0021D4 01DC+00 1/0 0/0 0/0 .text            fear__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::fear(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0: {
            daTagEscape_c* tagEscape_p = srchWolfTag();
            if (tagEscape_p != NULL) {
                mPath.initialize();
                mPath.setPathInfo(tagEscape_p->getPathID(), fopAcM_GetRoomNo(this), 0);
                mPath.setIdx(getWolfPathNearIdx());
                mMode = 1;
            }
            break;
        }

        case 1:
            if (_turn_to_link(0x1000)) {
                setMotion(MOT_W_SURPRISE, -1.0f, 0);
                mMode = 3;
            }
            break;

        case 3:
            if (mpMorf->isStop()) {
                setMotion(MOT_W_RUN_A, -1.0f, 0);
                fopAcM_SetSpeedF(this, 15.0f);
                mSound.startCreatureVoice(Z2SE_MICH_V_FEAR, -1);
                mMode = 4;
            }
            break;

        case 4: {
            cXyz sp28;
            mpMorf->setPlaySpeed(1.5f);
            
            if (mPath.getDstPos(current.pos, sp28)) {
                mEscape = true;
                mMode = -1;
            } else {
                _turn_pos(sp28, 800);
            }
            break;
        }
    }

    return 1;
}

/* 80A28490-80A284F8 0023B0 0068+00 1/1 0/0 0/0 .text            srchWolfTag__15daNpcKasiMich_cFv */
daTagEscape_c* daNpcKasiMich_c::srchWolfTag() {
    mTargetTag = NULL;
    mWolfAngle = fopAcM_searchPlayerAngleY(this);
    fpcM_Search(_srch_escape_tag, this);
    return mTargetTag;
}

/* 80A284F8-80A285C8 002418 00D0+00 1/1 0/0 0/0 .text _srch_escape_tag__15daNpcKasiMich_cFPvPv */
void* daNpcKasiMich_c::_srch_escape_tag(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    }
    
    if (fopAcM_GetName(i_actor) != PROC_Tag_Escape) {
        return NULL;
    }

    int iVar1 = cLib_distanceAngleS(mWolfAngle, fopAcM_searchActorAngleY((fopAc_ac_c*)i_data, (fopAc_ac_c*)i_actor));

    if (mTargetTag == NULL) {
        mTargetTagDist = fopAcM_searchActorDistanceXZ2((fopAc_ac_c*)i_data, (fopAc_ac_c*)i_actor);
        mTargetTag = (daTagEscape_c*)i_actor;
        return NULL;
    }
    
    if (iVar1 > 0x4000) {
        f32 fVar1 = fopAcM_searchActorDistanceXZ2((fopAc_ac_c*)i_data, (fopAc_ac_c*)i_actor);
        if (fVar1 < mTargetTagDist) {
            mTargetTagDist = fVar1;
            mTargetTag = (daTagEscape_c*)i_actor;
        }
    }

    return NULL;
}

/* 80A285C8-80A286FC 0024E8 0134+00 1/1 0/0 0/0 .text getWolfPathNearIdx__15daNpcKasiMich_cFv */
int daNpcKasiMich_c::getWolfPathNearIdx() {
    int iVar1 = 0;
    f32 fVar1 = 0.0f;
    u16 numPnts = mPath.getNumPnts();
    cXyz sp44, sp50;

    int rv = 0;
    for (; rv < numPnts; rv++) {
        sp44 = mPath.getPntPos(rv);
        sp50 = sp44 - current.pos;
        f32 fVar2 = sp50.abs2XZ();

        if (rv == 0) {
            fVar1 = fVar2;
            iVar1 = 0;
        } else if (fVar2 < fVar1) {
            fVar1 = fVar2;
            iVar1 = rv;
        }
    }

    rv = iVar1 + 1;

    if (iVar1 == numPnts) {
        rv = iVar1;
    }

    return rv;
}

/* 80A286FC-80A287A0 00261C 00A4+00 2/0 0/0 0/0 .text            chace_st__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::chace_st(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            field_0x1465 = true;
            fopAcM_SetSpeedF(this, 0.0f);
            mMode = 1;
            break;

        case 1:
            if (_turn_to_link(0xC00)) {
                setAction(&daNpcKasiMich_c::wait);
            }
            break;
    }

    return 1;
}

/* 80A287A0-80A28910 0026C0 0170+00 4/0 0/0 0/0 .text            chace__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::chace(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_W_RUN_A, -1.0f, 0);
            setLookMode(LOOK_NONE);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            fopAcM_SetSpeedF(this, 14.0f);
            field_0x1465 = 1;
            mMode = 1;
            break;

        case 1:
            cXyz chacePos = getChacePos();
            _turn_pos(chacePos, 0x800);

            if (pl_front_check()) {
                if (fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass()) < 400.0f) {
                    setAction(&daNpcKasiMich_c::wait);
                }
            } else {
                setAction(&daNpcKasiMich_c::wait);
            }
            break;
    }

    return 1;
}

/* 80A28910-80A289CC 002830 00BC+00 1/1 0/0 0/0 .text            getChacePos__15daNpcKasiMich_cFv */
cXyz daNpcKasiMich_c::getChacePos() {
    int plPoint = mPlPoint;
    int idx = mPath.getIdx();

    if (idx == plPoint) {
        return *fopAcM_GetPosition_p(daPy_getPlayerActorClass());
    }

    if (idx < plPoint) {
        mPath.offReverse();
    } else if (idx > plPoint) {
        mPath.onReverse();
    }

    cXyz chacePos;
    mPath.getDstPos(current.pos, chacePos);
    
    return chacePos;
}

/* 80A289CC-80A28A8C 0028EC 00C0+00 2/0 0/0 0/0 .text            turn_link__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_link(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_W_WAIT_A, -1.0f, 0);
            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            if (_turn_to_link(0x1000)) {
                setAction(&daNpcKasiMich_c::chace);
                break;
            }
    }

    return 1;
}

/* 80A28A8C-80A28B70 0029AC 00E4+00 1/0 0/0 0/0 .text            turn_home__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_home(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            setLookMode(LOOK_NONE);
            setMotion(MOT_W_WAIT_A, -1.0f, 0);
            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            BOOL bVar1 = cLib_chaseAngleS(&mCurAngle.y, home.angle.y, 0x1000);
            current.angle.y = mCurAngle.y;
            shape_angle.y = current.angle.y;

            if (bVar1) {
                setAction(&daNpcKasiMich_c::wait);
            }
            break;
    }

    return 1;
}

/* 80A28B70-80A28C40 002A90 00D0+00 1/0 0/0 0/0 .text            turn_center__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_center(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            setLookMode(LOOK_NONE);
            setMotion(MOT_W_WAIT_A, -1.0f, 0);
            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            if (_turn_pos(mCenterPos, 0x1000)) {
                setAction(&daNpcKasiMich_c::chace_st);
            }
            break;
    }

    return 1;
}

/* 80A28C40-80A28CB8 002B60 0078+00 1/0 0/0 0/0 .text            talk_dummy__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::talk_dummy(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_MICH_KYA_TALK, -1.0f, 0);
            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            break;
    }

    return 1;
}

/* 80A28CB8-80A28D90 002BD8 00D8+00 1/0 0/0 0/0 .text            kya__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::kya(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_MICH_KYA_TALK, -1.0f, 0);
            speedF = 0.0f;
            mpMorf->setPlaySpeed(0.0f);
            field_0x1440 = 16;
            mMode = 1;
            break;

        case 1:
            if (field_0x1440 > 0) {
                field_0x1440--;

                if (field_0x1440 == 0) {
                    mpMorf->setPlaySpeed(1.0f);
                } else {
                    mpMorf->setPlaySpeed(0.0f);
                }
            }
            break;
    }

    return 1;
}

/* 80A28D90-80A28E28 002CB0 0098+00 1/0 0/0 0/0 .text            kya2__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::kya2(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_MICH_KYA_TALK, -1.0f, 0);
            setLookMode(LOOK_NONE);
            speedF = 0.0f;
            mpMorf->setPlaySpeed(1.0f);
            mMode = 1;
            break;

        case 1:
            break;
    }

    return 1;
}

/* 80A28E28-80A28EFC 002D48 00D4+00 1/0 0/0 0/0 .text            kya_stop__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::kya_stop(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;
        
        case 0:
            if (mMotion != MOT_MICH_KYA_TALK) {
                setAction(&daNpcKasiMich_c::chace);
            } else {
                mMode = 1;
            }
            break;

        case 1:
            if (mpMorf->getFrame() == 19.0f || mpMorf->getFrame() == 1.0f) {
                setAction(&daNpcKasiMich_c::wait);
            }
            break;
    }

    return 1;
}

/* 80A28EFC-80A28F74 002E1C 0078+00 1/0 0/0 0/0 .text            iyan__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::iyan(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_MICH_IYAN_WAIT, -1.0f, 0);
            speedF = 0.0f;
            mMode = 1;
            break;

        case 1:
            break;
    }

    return 1;
}

/* 80A28F74-80A2908C 002E94 0118+00 1/0 0/0 0/0 .text            escape__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::escape(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_W_RUN_A, -1.0f, 0);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            fopAcM_SetSpeedF(this, 0.0f);
            field_0x1430 = daNpcKasiMich_Param_c::m.escape_time;
            mMode = 1;
            break;

        case 1:
            if (--field_0x1430 <= 0) {
                fopAcM_SetSpeedF(this, daNpcKasiMich_Param_c::m.escape_spd);
                mSound.startCreatureVoice(Z2SE_MICH_V_FEAR, -1);
                mMode = 2;
            }
            break;

        case 2:
            _turn_pos(mChacePos, 0x1000);
            mpMorf->setPlaySpeed(1.75f);
            break;
    }

    return 1;
}

/* 80A2908C-80A29164 002FAC 00D8+00 1/0 0/0 0/0 .text            iyan_look__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::iyan_look(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_MICH_IYAN_WAIT, -1.0f, 0);
            speedF = 0.0f;
            field_0x1440 = 86;
            setLookMode(LOOK_NONE);
            mMode = 1;
            break;

        case 1:
            field_0x1440--;
            if (field_0x1440 == 0) {
                setAction(&daNpcKasiMich_c::wait_dummy);
            }
            break;
    }

    return 1;
}

void daNpcKasiMich_c::dummy() {
    setAction(&daNpcKasiMich_c::wait_dummy);
    setAction(&daNpcKasiMich_c::wait);
    setAction(&daNpcKasiMich_c::wait_dummy);
    setAction(&daNpcKasiMich_c::wait_dummy);
}

/* 80A29164-80A291E8 003084 0084+00 1/0 0/0 0/0 .text            turn_hana__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::turn_hana(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            speedF = 0.0f;
            setLookMode(LOOK_NONE);
            setMotion(MOT_W_2NORMALTALK_B, -1.0f, 0);
            mMode = 1;
            break;

        case 1:
            break;
    }

    return 1;
}

/* 80A291E8-80A2926C 003108 0084+00 7/0 0/0 0/0 .text            wait_dummy__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::wait_dummy(int param_1) {
    switch (mMode) {
        case -1:
            break;

        case 0:
            setMotion(MOT_W_WAIT_A, -1.0f, 0);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            fopAcM_SetSpeedF(this, 0.0f);
            mMode = 1;
            break;

        case 1:
            break;
    }

    return 1;
}

/* 80A2926C-80A29458 00318C 01EC+00 1/0 0/0 0/0 .text            cheer__15daNpcKasiMich_cFi */
int daNpcKasiMich_c::cheer(int param_1) {
    // NONMATCHING
    switch (mMode) {
        case -1:
            break;

        case 0:
            /* dSv_event_flag_c::F_290 - Castle Town - Star Game 1 cleared */
            if (daNpcF_chkEvtBit(290)) {
                setMotion(MOT_MICH_OUEN_WAIT_B, -1.0f, 0);
            } else {
                setMotion(MOT_MICH_OUEN_WAIT_A, -1.0f, 0);
            }

            setLookMode(LOOK_PLAYER);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            fopAcM_SetSpeedF(this, 0.0f);
            mpMorf->setPlaySpeed(0.0f);
            mTalked = false;
            field_0x1440 = 20;
            mMode = 1;
            break;

        case 1:
            if (field_0x1440 > 0) {
                field_0x1440--;

                if (field_0x1440 == 0) {
                    mpMorf->setPlaySpeed(1.0f);
                } else {
                    mpMorf->setPlaySpeed(0.0f);
                }
            }

            cLib_chaseAngleS(&mCurAngle.y, home.angle.y, 0x400);
            current.angle.y = mCurAngle.y;
            shape_angle.y = mCurAngle.y;

            if (dComIfGp_event_runCheck()) {
                if (eventInfo.checkCommandTalk()) {
                    if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                        mTalked = true;
                        dComIfGp_event_reset();
                    }
                }
            } else {
                orderEvent(field_0x1469, l_evtNames[mOrderEvtNo], 0xFFFF, 4, 0xFF, 2);
            }
            break;
    }

    return 1;
}

/* 80A29458-80A294A4 003378 004C+00 3/3 0/0 0/0 .text            _turn_to_link__15daNpcKasiMich_cFs */
BOOL daNpcKasiMich_c::_turn_to_link(s16 param_1) {
    cXyz pos(*fopAcM_GetPosition_p(daPy_getPlayerActorClass()));
    return _turn_pos(pos, param_1);
    
}

/* 80A294A4-80A29500 0033C4 005C+00 5/5 0/0 0/0 .text            _turn_pos__15daNpcKasiMich_cFRC4cXyzs */
BOOL daNpcKasiMich_c::_turn_pos(cXyz const& param_1, s16 param_2) {
    BOOL rv = cLib_chaseAngleS(&mCurAngle.y, cLib_targetAngleY(&current.pos, &param_1), param_2);
    current.angle.y = mCurAngle.y;
    shape_angle.y = mCurAngle.y;
    return rv;
}

/* 80A29500-80A295D8 003420 00D8+00 2/2 0/0 0/0 .text            actor_front_check__15daNpcKasiMich_cFP10fopAc_ac_c */
BOOL daNpcKasiMich_c::actor_front_check(fopAc_ac_c* actor_p) {
    if (actor_p == NULL) {
        return TRUE;
    }

    cXyz sp24(*fopAcM_GetPosition_p(actor_p));
    cXyz sp30(sp24 - current.pos);
    cXyz sp3c(0.0f, 0.0f, 1.0f);
    cXyz sp48;
    _getOffset(sp3c, sp48);

    return (sp30.x * sp48.x + sp30.z * sp48.z) >= 0.0f;
}

/* 80A295D8-80A29644 0034F8 006C+00 1/1 0/0 0/0 .text            _getOffset__15daNpcKasiMich_cFRC4cXyzR4cXyz */
void daNpcKasiMich_c::_getOffset(cXyz const& param_1, cXyz& param_2) {
    param_2 = param_1;
    csXyz angle(*fopAcM_GetShapeAngle_p(this));
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&param_2, &param_2);
}

/* 80A29644-80A29664 003564 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Create__FPv */
static int daNpcKasiMich_Create(void* a_this) {
    return static_cast<daNpcKasiMich_c*>(a_this)->Create();
}

/* 80A29664-80A29684 003584 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Delete__FPv */
static int daNpcKasiMich_Delete(void* a_this) {
    return static_cast<daNpcKasiMich_c*>(a_this)->Delete();
}

/* 80A29684-80A296A4 0035A4 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Execute__FPv */
static int daNpcKasiMich_Execute(void* a_this) {
    return static_cast<daNpcKasiMich_c*>(a_this)->Execute();
}

/* 80A296A4-80A296C4 0035C4 0020+00 1/0 0/0 0/0 .text            daNpcKasiMich_Draw__FPv */
static int daNpcKasiMich_Draw(void* a_this) {
    return static_cast<daNpcKasiMich_c*>(a_this)->Draw();
}

/* 80A296C4-80A296CC 0035E4 0008+00 1/0 0/0 0/0 .text            daNpcKasiMich_IsDelete__FPv */
static int daNpcKasiMich_IsDelete(void* a_this) {
    return 1;
}

AUDIO_INSTANCES;

/* 80A2A654-80A2A674 -00001 0020+00 1/0 0/0 0/0 .data            daNpcKasiMich_MethodTable */
static actor_method_class daNpcKasiMich_MethodTable = {
    (process_method_func)daNpcKasiMich_Create,
    (process_method_func)daNpcKasiMich_Delete,
    (process_method_func)daNpcKasiMich_Execute,
    (process_method_func)daNpcKasiMich_IsDelete,
    (process_method_func)daNpcKasiMich_Draw,
};

/* 80A2A674-80A2A6A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KASIMICH */
extern actor_process_profile_definition g_profile_NPC_KASIMICH = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_KASIMICH,          // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daNpcKasiMich_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  422,                        // mPriority
  &daNpcKasiMich_MethodTable, // sub_method
  0x00040108,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};
