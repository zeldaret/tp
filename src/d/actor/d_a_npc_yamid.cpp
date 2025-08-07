/**
 * @file d_a_npc_yamid.cpp
 * 
*/

#include "d/actor/d_a_npc_yamid.h"
#include "dol2asm.h"

enum RES_Name {
    /* 0x1 */ YAMID = 0x1,
};

UNK_REL_DATA

/* 80B46164-80B4616C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {12, 1},
};

/* 80B4616C-80B4617C -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"STOPPER", 1},
};

/* 80B4617C-80B46184 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "yamiD",
};

/* 80B46184-80B46188 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, -1
};

/* 80B46188-80B46194 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[3] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80B46194-80B461CC 000050 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[2] = {
    {-1, 0, 0, 18, 2, 1, 1},
    {7, 0, 1, 18, 2, 1, 1},
};

/* 80B461CC-80B46204 000088 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[2] = {
    {9, 2, 1, 15, 0, 1, 1, 0},
    {8, 0, 1, 15, 0, 1, 1, 0},
};

/* 80B46204-80B46224 0000C0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[8] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80B46224-80B46244 0000E0 0020+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[8] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80B46244-80B4624C -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_yamiD_c */
char* daNpc_yamiD_c::mCutNameList[2] = {
    "",
    "STOPPER",
};

/* 80B46258-80B46270 000114 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_yamiD_c */
daNpc_yamiD_c::cutFunc daNpc_yamiD_c::mCutList[2] = {
    NULL,
    &daNpc_yamiD_c::cutStopper,
};

/* 80B42F4C-80B43084 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__13daNpc_yamiD_cFv */
daNpc_yamiD_c::~daNpc_yamiD_c() {
    // NONMATCHING
}

/* 80B4604C-80B460D8 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_yamiD_Param_c */
daNpc_yamiD_HIOParam const daNpc_yamiD_Param_c::m = {
    180.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    160.0f,
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

/* 80B43084-80B43338 000224 02B4+00 1/1 0/0 0/0 .text            create__13daNpc_yamiD_cFv */
cPhs__Step daNpc_yamiD_c::create() {
    fopAcM_SetupActor2(this, daNpc_yamiD_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4,
                       l_evtList, l_resNameList);
    
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3710)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo, (getPathID() >> 32) & 0xFF, fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        J3DModel* model = mpMorf[0]->getModel();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeFar(this, 3.0f);
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_yamiD_Param_c::m.common.weight, 0, this);
        
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

        field_0xfc8 = 0;
        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80B43338-80B435CC 0004D8 0294+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_yamiD_cFv */
int daNpc_yamiD_c::CreateHeap() {
    // NONMATCHING
    int bmdIdx = mTwilight == true ? 1 : 0;

    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdIdx][1]], l_bmdData[bmdIdx][0]);

    JUT_ASSERT(477, 0 != mdlData_p);

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

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80B43788-80B437BC 000928 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_yamiD_cFv */
int daNpc_yamiD_c::Delete() {
    this->~daNpc_yamiD_c();
    return 1;
}

/* 80B437BC-80B437DC 00095C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_yamiD_cFv */
int daNpc_yamiD_c::Execute() {
    return execute();
}

/* 80B437DC-80B43884 00097C 00A8+00 1/1 0/0 0/0 .text            Draw__13daNpc_yamiD_cFv */
int daNpc_yamiD_c::Draw() {
    if (mVanish != 0) {
        return 0;
    }

    if (mpMatAnm[0] != NULL) {
        J3DModelData* mdlData_p = mpMorf[0]->getModel()->getModelData();
        mdlData_p->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    return draw(FALSE, FALSE, mRealShadowSize, NULL, 0.0f, TRUE, FALSE, FALSE);
}

/* 80B43884-80B438A4 000A24 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__13daNpc_yamiD_cFP10fopAc_ac_c */
int daNpc_yamiD_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_yamiD_c* i_this = (daNpc_yamiD_c*)a_this;
    return i_this->CreateHeap();
}

/* 80B438A4-80B438FC 000A44 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__13daNpc_yamiD_cFP8J3DJointi */
int daNpc_yamiD_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_yamiD_c* i_this = (daNpc_yamiD_c*)model->getUserArea();
        
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80B438FC-80B43934 000A9C 0038+00 1/1 0/0 0/0 .text            getType__13daNpc_yamiD_cFv */
u8 daNpc_yamiD_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;
        
        case 1:
            return 1;

        default:
            return 2;
    }
}

/* 80B43934-80B43998 000AD4 0064+00 1/1 0/0 0/0 .text            getFlowNodeNo__13daNpc_yamiD_cFv */
u32 daNpc_yamiD_c::getFlowNodeNo() {
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

/* 80B43998-80B43A20 000B38 0088+00 1/1 0/0 0/0 .text            isDelete__13daNpc_yamiD_cFv */
BOOL daNpc_yamiD_c::isDelete() {
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

/* 80B43A20-80B43C34 000BC0 0214+00 1/1 0/0 0/0 .text            reset__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::reset() {
    // NONMATCHING
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

    if (mType == 1) {
        fopAcM_offSwitch(this, 3);
    }

    setAngle(home.angle.y);
    setAction(&daNpc_yamiD_c::wait);
}

/* 80B43C34-80B43CC0 000DD4 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_yamiD_cFi */
void daNpc_yamiD_c::afterJntAnm(int param_1) {
    if (param_1 == 2) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80B43CC0-80B43DBC 000E60 00FC+00 1/0 0/0 0/0 .text            setParam__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::setParam() {
    selectAction();
    srchActors();

    s16 talk_distance = daNpc_yamiD_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_yamiD_Param_c::m.common.talk_angle;
    s16 attention_distance = daNpc_yamiD_Param_c::m.common.attention_distance;
    s16 attention_angle = daNpc_yamiD_Param_c::m.common.attention_angle;

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = 0;

    scale.set(daNpc_yamiD_Param_c::m.common.scale, daNpc_yamiD_Param_c::m.common.scale, daNpc_yamiD_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_yamiD_Param_c::m.common.weight);
    mCylH = daNpc_yamiD_Param_c::m.common.height;
    mWallR = daNpc_yamiD_Param_c::m.common.width;
    mAttnFovY = daNpc_yamiD_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_yamiD_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_yamiD_Param_c::m.common.real_shadow_size;
    gravity = daNpc_yamiD_Param_c::m.common.gravity;
    mExpressionMorfFrame = daNpc_yamiD_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_yamiD_Param_c::m.common.morf_frame;
}

/* 80B43DBC-80B43E1C 000F5C 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::setAfterTalkMotion() {
    mFaceMotionSeqMngr.getNo();
    mFaceMotionSeqMngr.setNo(1, -1.0f, FALSE, 0);
}

/* 80B43E1C-80B43E28 000FBC 000C+00 1/1 0/0 0/0 .text            srchActors__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::srchActors() {
    if ((int)mType == 1) {
        return;
    }
}

/* 80B43E28-80B43F0C 000FC8 00E4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_yamiD_cFv */
BOOL daNpc_yamiD_c::evtTalk() {
    if (chkAction(&daNpc_yamiD_c::talk)) {
        (this->*mAction)(NULL);
    } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
        setAction(&daNpc_yamiD_c::talk);
    }

    return TRUE;
}

/* 80B43F0C-80B43FD4 0010AC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_yamiD_cFv */
BOOL daNpc_yamiD_c::evtCutProc() {
    int rv = FALSE;

    int staffId = dComIfGp_getEventManager().getMyStaffId("yamiD", this, -1);
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

/* 80B43FD4-80B440C0 001174 00EC+00 1/0 0/0 0/0 .text            action__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::action() {
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

/* 80B440C0-80B44138 001260 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80B44138-80B44364 0012D8 022C+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::setAttnPos() {
    cXyz work(-30.0f, 0.0f, 0.0f);

    mStagger.calc(FALSE);
    f32 rad = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.setParam(this, mpMorf[0]->getModel(), &work, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     daNpc_yamiD_Param_c::m.common.body_angleX_min, daNpc_yamiD_Param_c::m.common.body_angleX_max,
                     daNpc_yamiD_Param_c::m.common.body_angleY_min, daNpc_yamiD_Param_c::m.common.body_angleY_max,
                     daNpc_yamiD_Param_c::m.common.head_angleX_min, daNpc_yamiD_Param_c::m.common.head_angleX_max,
                     daNpc_yamiD_Param_c::m.common.head_angleY_min, daNpc_yamiD_Param_c::m.common.head_angleY_max,
                     daNpc_yamiD_Param_c::m.common.neck_rotation_ratio, rad, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, rad);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&work, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);
    
    attention_info.position = current.pos;
    attention_info.position.y += daNpc_yamiD_Param_c::m.common.attention_offset;
}

/* 80B44364-80B44498 001504 0134+00 1/0 0/0 0/0 .text            setCollision__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::setCollision() {
    // NONMATCHING
}

/* 80B44498-80B444A0 001638 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_yamiD_cFv */
int daNpc_yamiD_c::drawDbgInfo() {
    return 0;
}

/* 80B444A0-80B4450C 001640 006C+00 1/0 0/0 0/0 .text            drawGhost__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::drawGhost() {
    // NONMATCHING
}

/* 80B4450C-80B44554 0016AC 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_yamiD_cFv */
void daNpc_yamiD_c::selectAction() {
    // NONMATCHING
}

/* 80B44554-80B44580 0016F4 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i        */
BOOL daNpc_yamiD_c::chkAction(actionFunc action) {
    // NONMATCHING
}

/* 80B44580-80B44628 001720 00A8+00 3/3 0/0 0/0 .text
 * setAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i        */
void daNpc_yamiD_c::setAction(actionFunc action) {
    // NONMATCHING
}

/* 80B44628-80B44900 0017C8 02D8+00 2/0 0/0 0/0 .text            wait__13daNpc_yamiD_cFPv */
int daNpc_yamiD_c::wait(void* param_1) {
    // NONMATCHING
}

/* 80B44900-80B44AF8 001AA0 01F8+00 2/0 0/0 0/0 .text            talk__13daNpc_yamiD_cFPv */
int daNpc_yamiD_c::talk(void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B4612C-80B4612C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B4613B = "cutId";
#pragma pop

/* 80B44AF8-80B44B8C 001C98 0094+00 1/0 0/0 0/0 .text            cutStopper__13daNpc_yamiD_cFi */
int daNpc_yamiD_c::cutStopper(int i_cutIndex) {
    // NONMATCHING
}

/* 80B44B8C-80B44BD4 001D2C 0048+00 1/1 0/0 0/0 .text _cutStopper_Init__13daNpc_yamiD_cFRCi */
void daNpc_yamiD_c::_cutStopper_Init(int const& param_0) {
    // NONMATCHING
}

/* 80B44BD4-80B44D00 001D74 012C+00 1/1 0/0 0/0 .text _cutStopper_Main__13daNpc_yamiD_cFRCi */
void daNpc_yamiD_c::_cutStopper_Main(int const& param_0) {
    // NONMATCHING
}

/* 80B44D00-80B44D20 001EA0 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Create__FPv */
static int daNpc_yamiD_Create(void* a_this) {
    // NONMATCHING
}

/* 80B44D20-80B44D40 001EC0 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Delete__FPv */
static int daNpc_yamiD_Delete(void* a_this) {
    // NONMATCHING
}

/* 80B44D40-80B44D60 001EE0 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Execute__FPv */
static int daNpc_yamiD_Execute(void* a_this) {
    // NONMATCHING
}

/* 80B44D60-80B44D80 001F00 0020+00 1/0 0/0 0/0 .text            daNpc_yamiD_Draw__FPv */
static int daNpc_yamiD_Draw(void* a_this) {
    // NONMATCHING
}

/* 80B44D80-80B44D88 001F20 0008+00 1/0 0/0 0/0 .text            daNpc_yamiD_IsDelete__FPv */
static int daNpc_yamiD_IsDelete(void* a_this) {
    return 1;
}

/* 80B44D88-80B44DB8 001F28 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B44DB8-80B44E00 001F58 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B44E00-80B45188 001FA0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B45188-80B451C4 002328 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B451C4-80B45200 002364 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B45200-80B45248 0023A0 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B45248-80B45290 0023E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B45290-80B452D8 002430 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B452D8-80B456DC 002478 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80B456DC-80B456E0 00287C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B456E0-80B457DC 002880 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B457DC-80B457E0 00297C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B457E0-80B45828 002980 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B45828-80B45870 0029C8 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B45870-80B458E0 002A10 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B458E0-80B4593C 002A80 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B4593C-80B459AC 002ADC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B459AC-80B459F4 002B4C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B459F4-80B45B10 002B94 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B46114-80B4611C 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4758[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B46114, &lit_4758);
#pragma pop

/* 80B4611C-80B46124 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4759[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B4611C, &lit_4759);
#pragma pop

/* 80B46124-80B4612C 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4760[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B46124, &lit_4760);
#pragma pop

/* 80B45B10-80B45D18 002CB0 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B45D18-80B45D1C 002EB8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B45D2C-80B45D34 002ECC 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B45D34-80B45D3C 002ED4 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B45D48-80B45D50 002EE8 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B45D50-80B45D68 002EF0 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B45D68-80B45D6C 002F08 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B45D6C-80B45D74 002F0C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B45D74-80B45D7C 002F14 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B45D7C-80B45DAC 002F1C 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B45DAC-80B45DDC 002F4C 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B45DDC-80B45DE0 002F7C 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B45DE0-80B45DE4 002F80 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B45DE4-80B45DE8 002F84 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B45DE8-80B45DEC 002F88 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B4647C-80B46480 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_yamiD_Param_c l_HIO;

/* 80B45F34-80B45F3C 0030D4 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_yamiD_cFv */
u16 daNpc_yamiD_c::getEyeballMaterialNo() {
    return true;
}

/* 80B45F3C-80B45F44 0030DC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_yamiD_cFv
 */
s32 daNpc_yamiD_c::getHeadJointNo() {
    return 4;
}

/* 80B45F44-80B45F4C 0030E4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_yamiD_cFv
 */
s32 daNpc_yamiD_c::getNeckJointNo() {
    return 3;
}

/* 80B45F4C-80B45F54 0030EC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_yamiD_cFv */
s32 daNpc_yamiD_c::getBackboneJointNo() {
    return true;
}

/* 80B45F54-80B45F64 0030F4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_yamiD_cFi
 */
BOOL daNpc_yamiD_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B45F64-80B45F74 003104 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_yamiD_cFi
 */
BOOL daNpc_yamiD_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B45F74-80B45FE0 003114 006C+00 1/0 0/0 0/0 .text            evtEndProc__13daNpc_yamiD_cFv */
BOOL daNpc_yamiD_c::evtEndProc() {
    // NONMATCHING
}

/* 80B46028-80B46030 0031C8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B46028() {
    // NONMATCHING
}

/* 80B46030-80B46038 0031D0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B46030() {
    // NONMATCHING
}

/* 80B4612C-80B4612C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80B462A0-80B462C0 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_yamiD_MethodTable */
static actor_method_class daNpc_yamiD_MethodTable = {
    (process_method_func)daNpc_yamiD_Create,
    (process_method_func)daNpc_yamiD_Delete,
    (process_method_func)daNpc_yamiD_Execute,
    (process_method_func)daNpc_yamiD_IsDelete,
    (process_method_func)daNpc_yamiD_Draw,
};

/* 80B462C0-80B462F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YAMID */
extern actor_process_profile_definition g_profile_NPC_YAMID = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YAMID,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_yamiD_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  315,                      // mPriority
  &daNpc_yamiD_MethodTable, // sub_method
  0x00044107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
