/**
 * @file d_a_npc_yamit.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep

#include "d/actor/d_a_npc_yamit.h"
#include "d/actor/d_a_tag_yami.h"

enum RES_Name {
    /* 0x0 */ NONE,
    /* 0x1 */ YAMIT,
};

enum FaceMotion {
    /* 0x0 */ FACE_TALKE_A,
    /* 0x1 */ FACE_NONE,
};

enum Motion {
    /* 0x0 */ MOT_WAIT_A,
    /* 0x1 */ MOT_STEP,
};

#if DEBUG
daNpc_yamiT_HIO_c::daNpc_yamiT_HIO_c() {
    m = daNpc_yamiT_Param_c::m;
}

void daNpc_yamiT_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    // TODO
}

void daNpc_yamiT_HIO_c::genMessage(JORMContext* ctext) {
    // TODO
}
#endif

/* 80B4CEBC-80B4CEC4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {12, 1},
};

/* 80B4CEC4-80B4CED4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"STOPPER", 1},
};

/* 80B4CED4-80B4CEDC -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "yamiT",
};

/* 80B4CEDC-80B4CEE0 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {1, -1};

/* 80B4CEE0-80B4CEEC -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[3] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80B4CEEC-80B4CF24 000050 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[2] = {
    {-1, 0, 0, 15, 2, 1, 1},
    {6, 0, 1, 15, 2, 1, 1},
};

/* 80B4CF24-80B4CF78 000088 0054+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[3] = {
    {9, 2, 1, -1, 0, 0, 0, 0},
    {8, 0, 1, -1, 0, 0, 0, 0},
    {7, 0, 1, -1, 0, 0, 0, 0},
};

/* 80B4CF78-80B4CF98 0000DC 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[8] = {
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80B4CF98-80B4CFC8 0000FC 0030+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[12] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -1, 1}, {0, -1, 0},
    {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80B4CFC8-80B4CFD0 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_yamiT_c */
char* daNpc_yamiT_c::mCutNameList[2] = {
    "",
    "STOPPER",
};

/* 80B4CFDC-80B4CFF4 000140 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_yamiT_c */
daNpc_yamiT_c::cutFunc daNpc_yamiT_c::mCutList[2] = {
    NULL,
    &daNpc_yamiT_c::cutStopper,
};

/* 80B49BEC-80B49D24 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__13daNpc_yamiT_cFv */
daNpc_yamiT_c::~daNpc_yamiT_c() {
    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80B4CDA4-80B4CE30 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_yamiT_Param_c */
const daNpc_yamiT_HIOParam daNpc_yamiT_Param_c::m = {
    230.0f,  // attention_offset
    -3.0f,   // gravity
    1.0f,    // scale
    400.0f,  // real_shadow_size
    255.0f,  // weight
    220.0f,  // height
    35.0f,   // knee_length
    30.0f,   // width
    0.0f,    // body_angleX_max
    0.0f,    // body_angleX_min
    10.0f,   // body_angleY_max
    -10.0f,  // body_angleY_min
    30.0f,   // head_angleX_max
    -10.0f,  // head_angleX_min
    45.0f,   // head_angleY_max
    -45.0f,  // head_angleY_min
    0.6f,    // neck_rotation_ratio
    12.0f,   // morf_frame
    3,       // talk_distance
    6,       // talk_angle
    5,       // attention_distance
    6,       // attention_angle
    110.0f,  // fov
    0.0f,    // search_distance
    0.0f,    // search_height
    0.0f,    // search_depth
    60,      // attention_time
    8,       // damage_time
    0,       // face_expression
    0,       // motion
    0,       // look_mode
    0,       // debug_mode_ON
    0,       // debug_info_ON
    4.0f,    // expression_morf_frame
    0.0f,    // box_min_x
    0.0f,    // box_min_y
    0.0f,    // box_min_z
    0.0f,    // box_max_x
    0.0f,    // box_max_y
    0.0f,    // box_max_z
    0.0f,    // box_offset
};

/* 80B4D204-80B4D208 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static NPC_YAMIT_HIO_CLASS l_HIO;

/* 80B49D24-80B49FD8 000224 02B4+00 1/1 0/0 0/0 .text            create__13daNpc_yamiT_cFv */
cPhs__Step daNpc_yamiT_c::create() {
    daNpcT_ct(this, daNpc_yamiT_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData,
              4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3850)) {
            return cPhs_ERROR_e;
        }

        if (isDelete()) {
            return cPhs_ERROR_e;
        }

        J3DModelData* model_data = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeFar(this, 3.0f);
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x8000000);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(mpHIO->m.common.weight, 0, this);

        field_0xe44.Set(mCcDCyl);
        field_0xe44.SetStts(&mCcStts);
        field_0xe44.SetTgHitCallback(tgHitCallBack);

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -G_CM3D_F_INF) {
            setEnvTevColor();
            setRoomNo();
        }

        mpTagYami = NULL;
        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80B49FD8-80B4A26C 0004D8 0294+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_yamiT_cFv */
int daNpc_yamiT_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;
    J3DModel* model = NULL;
    int bmdIdx = mTwilight == true ? NONE : NONE;

    int res_name_idx = l_bmdData[bmdIdx][1];
    int index = l_bmdData[bmdIdx][0];
    mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[res_name_idx], index);

    u32 sp_0x1C = 0x11020284;
    mpMorf[0] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000,
                                     sp_0x1C);
    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
        return 0;
    }

    model = mpMorf[0]->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80B4A428-80B4A45C 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_yamiT_cFv */
int daNpc_yamiT_c::Delete() {
    fpc_ProcID reg_r30 = fopAcM_GetID(this);
    this->~daNpc_yamiT_c();
    return 1;
}

/* 80B4A45C-80B4A47C 00095C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_yamiT_cFv */
int daNpc_yamiT_c::Execute() {
    return execute();
}

/* 80B4A47C-80B4A4E0 00097C 0064+00 1/1 0/0 0/0 .text            _search_Tag__13daNpc_yamiT_cFPvPv
 */
void* daNpc_yamiT_c::_search_Tag(void* i_actor, void* i_data) {
    if (!fopAcM_IsActor(i_actor)) {
        return NULL;
    }

    if (fopAcM_GetName(i_actor) == PROC_TAG_YAMI &&
        ((daNpc_yamiT_c*)i_data)->_chk_TagPrm((fopAc_ac_c*)i_actor))
    {
        return i_actor;
    }

    return NULL;
}

/* 80B4A4E0-80B4A588 0009E0 00A8+00 1/1 0/0 0/0 .text            Draw__13daNpc_yamiT_cFv */
int daNpc_yamiT_c::Draw() {
    if (is_vanish()) {
        return 0;
    }

    if (mpMatAnm[0] != NULL) {
        J3DModelData* mdlData_p = mpMorf[0]->getModel()->getModelData();
        mdlData_p->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    return draw(FALSE, FALSE, mRealShadowSize, NULL, 0.0f, TRUE, FALSE, FALSE);
}

/* 80B4A588-80B4A5A8 000A88 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_yamiT_cFP10fopAc_ac_c            */
int daNpc_yamiT_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpc_yamiT_c* a_this = (daNpc_yamiT_c*)i_this;
    return a_this->CreateHeap();
}

/* 80B4A5A8-80B4A600 000AA8 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_yamiT_cFP8J3DJointi               */
int daNpc_yamiT_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_yamiT_c* i_this = (daNpc_yamiT_c*)model->getUserArea();

        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80B4A600-80B4A638 000B00 0038+00 1/1 0/0 0/0 .text            getType__13daNpc_yamiT_cFv */
u8 daNpc_yamiT_c::getType() {
    u8 prm = fopAcM_GetParam(this);
    switch (prm & 0xFF) {
    case 0:
        return 0;

    case 1:
        return 1;

    default:
        return 2;
    }
}

/* 80B4A638-80B4A69C 000B38 0064+00 2/2 0/0 0/0 .text            getFlowNodeNo__13daNpc_yamiT_cFv */
u32 daNpc_yamiT_c::getFlowNodeNo() {
    u32 rv = -1;

    /* dSv_event_flag_c::F_0570 - Palace of Twilight - Cleared Palace of Twilight */
    if (daNpcT_chkEvtBit(570)) {
        rv = 0x326;
    } else {
        u16 nodeNo = home.angle.x;
        if (nodeNo != 0xFFFF) {
            rv = nodeNo;
        }
    }

    return rv;
}

/* 80B4A69C-80B4A724 000B9C 0088+00 1/1 0/0 0/0 .text            isDelete__13daNpc_yamiT_cFv */
BOOL daNpc_yamiT_c::isDelete() {
    BOOL rv = FALSE;

    switch (mType) {
    case 0:
    case 1:
        /* dSv_event_flag_c::F_0570 - Palace of Twilight - Cleared Palace of Twilight */
        if (!daNpcT_chkEvtBit(570)) {
            if (!fopAcM_isSwitch(this, getSwitchBitNo())) {
                rv = TRUE;
            }
        }
        break;
    }

    return rv;
}

/* 80B4A724-80B4A914 000C24 01F0+00 1/1 0/0 0/0 .text            reset__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::reset() {
    initialize();

    memset(&mNextAction, 0, (u8*)&field_0xfc4 - (u8*)&mNextAction);

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    if (getPathID() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
    }

    if (_is_vanish_prm()) {
        vanish_on();
        off_CoHit();
    } else {
        vanish_off();
        on_CoHit();
    }

    setAngle(home.angle.y);
    setAction(&daNpc_yamiT_c::wait);
}

/* 80B4A914-80B4A9A0 000E14 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_yamiT_cFi */
void daNpc_yamiT_c::afterJntAnm(int param_1) {
    if (param_1 == 2) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80B4A9A0-80B4AAD0 000EA0 0130+00 1/0 0/0 0/0 .text            setParam__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setParam() {
    selectAction();
    srchActors();

    s16 talk_distance = mpHIO->m.common.talk_distance;
    s16 talk_angle = mpHIO->m.common.talk_angle;
    s16 attention_distance = mpHIO->m.common.attention_distance;
    s16 attention_angle = mpHIO->m.common.attention_angle;

    if (mType == 1 && mpTagYami != NULL && mpTagYami->is_CoHit() != 0) {
        talk_distance = 0;
        attention_distance = 0;
    }

    attention_info.distances[fopAc_attn_LOCK_e] =
        daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] =
        daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = 0;

    scale.set(mpHIO->m.common.scale, mpHIO->m.common.scale, mpHIO->m.common.scale);
    mCcStts.SetWeight(mpHIO->m.common.weight);
    mCylH = mpHIO->m.common.height;
    mWallR = mpHIO->m.common.width;
    mAttnFovY = mpHIO->m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(mpHIO->m.common.knee_length);
    mRealShadowSize = mpHIO->m.common.real_shadow_size;
    gravity = mpHIO->m.common.gravity;
    mExpressionMorfFrame = mpHIO->m.common.expression_morf_frame;
    mMorfFrames = mpHIO->m.common.morf_frame;
}

/* 80B4AAD0-80B4AB30 000FD0 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setAfterTalkMotion() {
    int face = FACE_TALKE_A;
    mFaceMotionSeqMngr.getNo();
    face = FACE_NONE;
    mFaceMotionSeqMngr.setNo(face, -1.0f, FALSE, 0);
}

/* 80B4AB30-80B4ABA0 001030 0070+00 1/1 0/0 0/0 .text            srchActors__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::srchActors() {
    switch (mType) {
    case 1:
        if (mVanish == 0) {
            if (!mpTagYami) {
                mpTagYami = (daTagYami_c*)fpcM_Search(_search_Tag, this);
            }
        } else {
            mpTagYami = NULL;
        }
        break;
    }
}

/* 80B4ABA0-80B4AC84 0010A0 00E4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_yamiT_cFv */
BOOL daNpc_yamiT_c::evtTalk() {
    if (chkAction(&daNpc_yamiT_c::talk)) {
        (this->*mAction)(NULL);
    } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
        setAction(&daNpc_yamiT_c::talk);
    }

    return TRUE;
}

/* 80B4AC84-80B4AD4C 001184 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_yamiT_cFv */
BOOL daNpc_yamiT_c::evtCutProc() {
    int rv = FALSE;

    int staffId = dComIfGp_getEventManager().getMyStaffId("yamiT", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 2, 0, 0);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        rv = TRUE;
    }

    return rv;
}

/* 80B4AD4C-80B4AE38 00124C 00EC+00 1/0 0/0 0/0 .text            action__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::action() {
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

/* 80B4AE38-80B4AEB0 001338 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80B4AEB0-80B4B0DC 0013B0 022C+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setAttnPos() {
    cXyz work(-30.0f, 0.0f, 0.0f);

    mStagger.calc(FALSE);
    f32 rad = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.setParam(this, mpMorf[0]->getModel(), &work, getBackboneJointNo(), getNeckJointNo(),
                     getHeadJointNo(), mpHIO->m.common.body_angleX_min,
                     mpHIO->m.common.body_angleX_max, mpHIO->m.common.body_angleY_min,
                     mpHIO->m.common.body_angleY_max, mpHIO->m.common.head_angleX_min,
                     mpHIO->m.common.head_angleX_max, mpHIO->m.common.head_angleY_min,
                     mpHIO->m.common.head_angleY_max, mpHIO->m.common.neck_rotation_ratio, rad,
                     NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, rad);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&work, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);

    attention_info.position = current.pos;
    attention_info.position.y += mpHIO->m.common.attention_offset;
}

/* 80B4B0DC-80B4B210 0015DC 0134+00 1/0 0/0 0/0 .text            setCollision__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::setCollision() {
    cXyz work;
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

        f32 cyl_h = mCylH;
        f32 wall_r = mWallR;
        work = current.pos;

        field_0xe44.SetCoSPrm(0x79);
        field_0xe44.SetTgType(tgType);
        field_0xe44.SetTgSPrm(tgSPrm);
        field_0xe44.OnTgNoHitMark();
        field_0xe44.SetH(cyl_h);
        field_0xe44.SetR(wall_r);
        field_0xe44.SetC(work);
        dComIfG_Ccsp()->Set(&field_0xe44);
    }

    field_0xe44.ClrCoHit();
    field_0xe44.ClrTgHit();
}

/* 80B4B210-80B4B218 001710 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_yamiT_cFv */
int daNpc_yamiT_c::drawDbgInfo() {
    return 0;
}

/* 80B4B218-80B4B294 001718 007C+00 1/0 0/0 0/0 .text            evtEndProc__13daNpc_yamiT_cFv */
BOOL daNpc_yamiT_c::evtEndProc() {
    if (mpTagYami) {
        mpTagYami->onMidnaTagSw();
    }
    mJntAnm.lookNone(0);
    eventInfo.setIdx(0);
    mEvtNo = 0;
    return TRUE;
}

/* 80B4B294-80B4B300 001794 006C+00 1/0 0/0 0/0 .text            drawGhost__13daNpc_yamiT_cFv */
void daNpc_yamiT_c::drawGhost() {
    J3DModel* model = mpMorf[0]->getModel();
    g_env_light.settingTevStruct(3, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpMorf[0]->entryDL();
}

/* 80B4B300-80B4B348 001800 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_yamiT_cFv */
int daNpc_yamiT_c::selectAction() {
    mNextAction = NULL;
    mNextAction = &daNpc_yamiT_c::wait;
    return 1;
}

/* 80B4B348-80B4B374 001848 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i        */
BOOL daNpc_yamiT_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80B4B374-80B4B41C 001874 00A8+00 3/3 0/0 0/0 .text
 * setAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i        */
int daNpc_yamiT_c::setAction(actionFunc action) {
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

/* 80B4B41C-80B4B7D4 00191C 03B8+00 2/0 0/0 0/0 .text            wait__13daNpc_yamiT_cFPv */
int daNpc_yamiT_c::wait(void* param_1) {
    switch (mMode) {
    case 0:
    case 1:
        if (!mStagger.checkStagger()) {
            mFaceMotionSeqMngr.setNo(FACE_NONE, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(MOT_WAIT_A, -1.0f, FALSE, 0);
            field_0xf83 = 0;
            mMode = 2;
        }
        // fallthrough
    case 2:
        if (!mStagger.checkStagger()) {
            if (mPlayerActorMngr.getActorP() != NULL && !mTwilight) {
                mJntAnm.lookNone(0);

                if (chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                    mJntAnm.lookPlayer(0);

                    if (field_0xf83 == 0 && !is_vanish()) {
                        cXyz pos(current.pos);
                        Z2GetAudioMgr()->seStart(Z2SE_YAMI_MURMUR_T, &pos, 0, 0, 1.0f, 1.0f, -1.0f,
                                                 -1.0f, 0);
                        field_0xf83 = 1;
                    }
                }

                if (!srchPlayerActor()) {
                    field_0xf83 = 0;

                    if (home.angle.y == mCurAngle.y) {
                        mMode = 1;
                    }
                }
            } else {
                mJntAnm.lookNone(0);
                field_0xf83 = 0;

                if (home.angle.y != mCurAngle.y) {
                    if (field_0xe34 == 0) {
                        setAngle(home.angle.y);
                        mMode = 1;
                    } else if (step(home.angle.y, 1, 2, 15, 0)) {
                        mMode = 1;
                    }

                    attention_info.flags = 0;
                } else {
                    srchPlayerActor();
                }
            }
            if (mType == 1 &&
                daPy_getPlayerActorClass()->eventInfo.chkCondition(dEvtCnd_CANTALK_e) && mpTagYami)
            {
                if (_is_stopper_off()) {
                    mpTagYami->off_CoHit();
                } else {
                    mpTagYami->on_CoHit();
                    if (mpTagYami->is_CoHit()) {
                        eventInfo.setIdx(1);
                        mpTagYami->off_CoHit();
                        mEvtNo = 1;
                    }
                }
            }
        }
        break;
    case 3:
        break;
    }

    return 1;
}

/* 80B4B7D4-80B4B9E0 001CD4 020C+00 2/0 0/0 0/0 .text            talk__13daNpc_yamiT_cFPv */
int daNpc_yamiT_c::talk(void* param_1) {
    switch (mMode) {
    case 0:
    case 1:
        if (!mStagger.checkStagger()) {
            initTalk(mFlowNodeNo, NULL);

            if (checkStep()) {
                mStepMode = 0;
            }

            mMode = 2;
        }
        // fallthrough
    case 2:
        if (!mStagger.checkStagger()) {
            if (mTwilight || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (talkProc(NULL, FALSE, NULL, FALSE)) {
                    mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                    dComIfGp_event_reset();
                    mMode = 3;
                }

                mJntAnm.lookPlayer(0);

                if (mTwilight) {
                    mJntAnm.lookNone(0);
                }
            } else {
                mJntAnm.lookPlayer(0);
                step(fopAcM_searchPlayerAngleY(this), 1, 2, 15, 0);
            }
        }
        break;
    case 3:
        mFlowNodeNo = getFlowNodeNo();
        break;
    }

    return 0;
}

/* 80B4B9E0-80B4BA74 001EE0 0094+00 1/0 0/0 0/0 .text            cutStopper__13daNpc_yamiT_cFi */
BOOL daNpc_yamiT_c::cutStopper(int i_cutIndex) {
    int* cutId = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "cutId");
    if (cutId == NULL) {
        return TRUE;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_cutIndex)) {
        _cutStopper_Init(*cutId);
    }

    return _cutStopper_Main(*cutId);
}

/* 80B4BA74-80B4BAAC 001F74 0038+00 1/1 0/0 0/0 .text _cutStopper_Init__13daNpc_yamiT_cFRCi */
BOOL daNpc_yamiT_c::_cutStopper_Init(int const& i_cutId) {
    switch (i_cutId) {
    case 10:
        mpTagYami->offMidnaTagSw2();
        break;
    }
    return TRUE;
}

/* 80B4BAAC-80B4BAC4 001FAC 0018+00 1/1 0/0 0/0 .text _cutStopper_Main__13daNpc_yamiT_cFRCi */
BOOL daNpc_yamiT_c::_cutStopper_Main(int const& i_cutId) {
    BOOL rv = FALSE;
    if (i_cutId == 10) {
        rv = TRUE;
    }
    return rv;
}

/* 80B4BAC4-80B4BAE4 001FC4 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Create__FPv */
static int daNpc_yamiT_Create(void* i_this) {
    return ((daNpc_yamiT_c*)i_this)->create();
}

/* 80B4BAE4-80B4BB04 001FE4 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Delete__FPv */
static int daNpc_yamiT_Delete(void* i_this) {
    return ((daNpc_yamiT_c*)i_this)->Delete();
}

/* 80B4BB04-80B4BB24 002004 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Execute__FPv */
static int daNpc_yamiT_Execute(void* i_this) {
    return ((daNpc_yamiT_c*)i_this)->Execute();
}

/* 80B4BB24-80B4BB44 002024 0020+00 1/0 0/0 0/0 .text            daNpc_yamiT_Draw__FPv */
static int daNpc_yamiT_Draw(void* i_this) {
    return ((daNpc_yamiT_c*)i_this)->Draw();
}

/* 80B4BB44-80B4BB4C 002044 0008+00 1/0 0/0 0/0 .text            daNpc_yamiT_IsDelete__FPv */
static int daNpc_yamiT_IsDelete(void* i_this) {
    return 1;
}

/* 80B4D024-80B4D044 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_yamiT_MethodTable */
static actor_method_class daNpc_yamiT_MethodTable = {
    (process_method_func)daNpc_yamiT_Create,  (process_method_func)daNpc_yamiT_Delete,
    (process_method_func)daNpc_yamiT_Execute, (process_method_func)daNpc_yamiT_IsDelete,
    (process_method_func)daNpc_yamiT_Draw,
};

/* 80B4D044-80B4D074 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YAMIT */
extern actor_process_profile_definition g_profile_NPC_YAMIT = {
    fpcLy_CURRENT_e,           // mLayerID
    7,                         // mListID
    fpcPi_CURRENT_e,           // mListPrio
    PROC_NPC_YAMIT,            // mProcName
    &g_fpcLf_Method.base,      // sub_method
    sizeof(daNpc_yamiT_c),     // mSize
    0,                         // mSizeOther
    0,                         // mParameters
    &g_fopAc_Method.base,      // sub_method
    316,                       // mPriority
    &daNpc_yamiT_MethodTable,  // sub_method
    0x00044107,                // mStatus
    fopAc_NPC_e,               // mActorType
    fopAc_CULLBOX_CUSTOM_e,    // cullType
};
