/**
 * @file d_a_npc_zelR.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_zelR.h"
#include "SSystem/SComponent/c_counter.h"

/* 80B71BF8-80B71C00 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static daNpc_GetParam1 l_bmdData[1] = {
    {10, 1}
};

/* 80B71C00-80B71C10 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0}
};

/* 80B71C10-80B71C18 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "zelRf"
};

/* 80B71C18-80B71C1C 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, 0xFF
};

/* 80B71C1C-80B71C24 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80B71C24-80B71C5C 00004C 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[2] = {
    {-1, 0, 0, 16, 2, 1, 1},
    {6, 0, 1, 16, 2, 1, 1}
};

/* 80B71C5C-80B71C78 000084 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData = {
    7, 2, 1, 13, 0, 1, 1, 0
};

/* 80B71C78-80B71C98 0000A0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[8] = {
    {1, -1, 1}, {-1, 0, 0}, 
    {-1, 0, 0}, {-1, 0, 0}, 
    {0, -1, 0}, {-1, 0, 0}, 
    {-1, 0, 0}, {-1, 0, 0}
};

/* 80B71C98-80B71CA8 0000C0 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, 
    {-1, 0, 0}, {-1, 0, 0}
};

/* 80B71CA8-80B71CAC -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_ZelR_c */
char* daNpc_ZelR_c::mCutNameList = "";

/* 80B71CAC-80B71CB8 0000D4 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_ZelR_c */
daNpc_ZelR_c::EventFn daNpc_ZelR_c::mCutList[1] = {
    NULL
};

daNpc_ZelR_c::~daNpc_ZelR_c() {
    OS_REPORT("|%06d:%x|daNpc_ZelR_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (heap) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* 80B71EBC-80B71EC0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_ZelR_Param_c l_HIO;

/* 80B71AE0-80B71B6C 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_ZelR_Param_c */
daNpc_ZelR_Param_c::Data const daNpc_ZelR_Param_c::m = {
    190.0f,
    -3.0f,       // mGravity
    1.0f,
    400.0f,
    255.0f,       // mWeight
    170.0f,         // mCylH
    35.0f,         // mWallH
    30.0f,         // mWallR
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,    // mMorfFrames
    3,
    6,
    5,
    6,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0x3C,
    8,
    0.0f,
    0.0f,
    4.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
};

/* 80B6EF64-80B6F1F8 000224 0294+00 1/1 0/0 0/0 .text            create__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::create() {
    fopAcM_SetupActor2(this, daNpc_ZelR_c, l_faceMotionAnmData,
        &l_motionAnmData, l_faceMotionSequenceData, 4,
        l_motionSequenceData, 4, l_evtList, l_resNameList);
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    int phaseState = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phaseState == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x5cd0)) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), mType,
        mFlowNodeNo, getPath(), fopAcM_GetParam(this));
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        fopAcM_OnStatus(this, 0x8000000);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, &current.angle, &shape_angle);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.m_ground_h;

        setEnvTevColor();
        setRoomNo();

        mCcStts.Init(daNpc_ZelR_Param_c::m.mWeight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        
        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phaseState;
}

/* 80B6F1F8-80B6F4A8 0004B8 02B0+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::CreateHeap() {
    // NONMATCHING
    int bmdIdx = mTwilight;
    if (mTwilight == 1) {
        bmdIdx = 0;   
    }

    J3DModelData* mdlData_p = (J3DModelData*)(dComIfG_getObjectRes(
        l_resNameList[l_bmdData[bmdIdx].arcIdx], l_bmdData[bmdIdx].fileIdx
    ));
    
    
    JUT_ASSERT(0x1b0, 0 != mdlData_p);

    mpMorf[0] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0, 0x11020284);
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
    for (int i = 0; i < 2; i++) {
        mpMatAnm[i] = new daNpcT_MatAnm_c();

        if (mpMatAnm[i] == NULL) {
            return 0;
        }
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, 0) != 0) {
        return 1;
    }
    
    return 0;
}

/* 80B6F664-80B6F698 000924 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_ZelR_c();
    return 1;
}

/* 80B6F698-80B6F6B8 000958 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::Execute() {
    return execute();
}

/* 80B6F6B8-80B6F77C 000978 00C4+00 1/1 0/0 0/0 .text            Draw__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::Draw() {
    J3DModel* model = mpMorf[0]->getModel();
    J3DModelData* modelData = model->getModelData();

    if (mpMatAnm[0]) {
        modelData->getMaterialNodePointer(getEyeballLMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    if (mpMatAnm[1]) {
        modelData->getMaterialNodePointer(getEyeballRMaterialNo())->setMaterialAnm(mpMatAnm[1]);
    }
    
    return daNpcT_c::draw(0, 1, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 80B6F77C-80B6F79C 000A3C 0020+00 1/1 0/0 0/0 .text       createHeapCallBack__12daNpc_ZelR_cFP10fopAc_ac_c */
int daNpc_ZelR_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_ZelR_c* i_this = (daNpc_ZelR_c*)a_this;
    return i_this->CreateHeap();

}

/* 80B6F79C-80B6F7F4 000A5C 0058+00 1/1 0/0 0/0 .text       ctrlJointCallBack__12daNpc_ZelR_cFP8J3DJointi */
int daNpc_ZelR_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (!param_2) {
        daNpc_ZelR_c* i_this = (daNpc_ZelR_c*)j3dSys.getModel()->getUserArea();
        if (i_this) {
            i_this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }

    return 1;
}

/* 80B6F7F4-80B6F814 000AB4 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_ZelR_cFv */
u8 daNpc_ZelR_c::getType() {
    switch (fopAcM_GetParam(this) & 0xff) {
        case 0:
            return TYPE_0;
        default:
            return TYPE_1;
    }
}

/* 80B6F814-80B6F830 000AD4 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_ZelR_cFv */
u32 daNpc_ZelR_c::getFlowNodeNo() {
    u16 nodeNo = home.angle.x;
    if (nodeNo == 0xffff) {
        return -1;
    }
    return nodeNo;
}

/* 80B6F830-80B6F83C 000AF0 000C+00 1/1 0/0 0/0 .text            getPath__12daNpc_ZelR_cFv */
u8 daNpc_ZelR_c::getPath() {
    return (fopAcM_GetParam(this) & 0xff00) >> 8;
}

/* 80B6F83C-80B6F894 000AFC 0058+00 1/1 0/0 0/0 .text            isDelete__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::isDelete() {
    if (mType == TYPE_1) {
        return 0;
    }
    
    switch (mType) {
        case TYPE_0:
            return daNpcT_chkEvtBit(0x2d) != 0;
        default:
            return 1;
    }
}

/* 80B6F894-80B6FA10 000B54 017C+00 1/1 0/0 0/0 .text            reset__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::reset() {
    initialize();
    memset(&field_0xf84, 0, ((u8*)&field_0xfc4 - (u8*)&field_0xf84));
    for (int i = 0; i < 2; i++) {
        if (mpMatAnm[i]) {
            mpMatAnm[i]->initialize();
        }
    }

    if (getPath() != 0xff) {
        mPath.initialize();
        mPath.setPathInfo(getPath(), fopAcM_GetRoomNo(this), 0);
    }

    setAngle(home.angle.y);
}

/* 80B6FA10-80B6FA9C 000CD0 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_ZelR_cFi */
void daNpc_ZelR_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 3) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(0));
    }
}

/* 80B6FA9C-80B6FBA8 000D5C 010C+00 1/0 0/0 0/0 .text            ctrlBtk__12daNpc_ZelR_cFv */
BOOL daNpc_ZelR_c::ctrlBtk() {
    if (mpMatAnm[0] && mpMatAnm[1]) {
        if (field_0xe29 && mBtkAnm.getBtkAnm()) {
            mpMatAnm[0]->setNowOffsetX(cM_ssin(mJntAnm.getEyeAngleY()) * 0.2f * -1.0f);
            mpMatAnm[0]->setNowOffsetY(cM_ssin(mJntAnm.getEyeAngleX()) * 0.2f);

            mpMatAnm[1]->setNowOffsetX(cM_ssin(mJntAnm.getEyeAngleY()) * 0.2f);
            mpMatAnm[1]->setNowOffsetY(cM_ssin(mJntAnm.getEyeAngleX()) * 0.2f);

            mpMatAnm[0]->onEyeMoveFlag();
            mpMatAnm[1]->onEyeMoveFlag();
            return TRUE;
        }

        if (field_0xe2a) {
            mpMatAnm[0]->setMorfFrm(field_0xe2a);
            mpMatAnm[1]->setMorfFrm(field_0xe2a);
            field_0xe2a = 0;
        }

        mpMatAnm[0]->offEyeMoveFlag();
        mpMatAnm[1]->offEyeMoveFlag();

    }

    return FALSE;
}

/* 80B6FBA8-80B6FC9C 000E68 00F4+00 1/0 0/0 0/0 .text            setParam__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::setParam() {
    selectAction();
    srchActors();
    s16 sVar1 = l_HIO.m.field_0x48;
    s16 sVar2 = l_HIO.m.field_0x4a;
    s16 sVar3 = l_HIO.m.field_0x4c;
    s16 sVar4 = l_HIO.m.field_0x4e;
    attention_info.distances[0] = daNpcT_getDistTableIdx(sVar3, sVar4);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(sVar1, sVar2);
    attention_info.flags = 10;
    scale.setall(l_HIO.m.field_0x8);
    mCcStts.SetWeight(l_HIO.m.mWeight);
    mCylH = l_HIO.m.mCylH;
    mWallR = l_HIO.m.mWallR;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(l_HIO.m.mWallH);
    mRealShadowSize = l_HIO.m.field_0xc;
    gravity = l_HIO.m.mGravity;
    mExpressionMorfFrame = l_HIO.m.field_0x6c;
    mMorfFrames = l_HIO.m.mMorfFrames;
}

/* 80B6FC9C-80B6FCFC 000F5C 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::setAfterTalkMotion() {
    mFaceMotionSeqMngr.setNo(1, -1.0f, 0, 0);
}

/* 80B6FCFC-80B6FD00 000FBC 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::srchActors() {
    /* empty function */
}

/* 80B6FD00-80B6FE00 000FC0 0100+00 1/0 0/0 0/0 .text            __12daNpc_ZelR_cFv */
BOOL daNpc_ZelR_c::evtTalk() {
    if (chkAction(&daNpc_ZelR_c::talk)) {
        (this->*field_0xf90)(NULL);
    } else {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return TRUE;
            } else {
                mEvtNo = 1;
                evtChange();
                return TRUE;
            }
        } else {
            setAction(&daNpc_ZelR_c::talk);
        }
    }

    return TRUE;
}

/* 80B6FE00-80B6FEC8 0010C0 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_ZelR_cFv */
BOOL daNpc_ZelR_c::evtCutProc() {
    // NONMATCHING
    BOOL rv = FALSE;
    int staffId = dComIfGp_getEventManager().getMyStaffId("ZelR", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList, 1, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        rv = TRUE;
    }

    return rv;
}

/* 80B6FEC8-80B70018 001188 0150+00 1/0 0/0 0/0 .text            action__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::action() {
    fopAc_ac_c* hitActor = hitChk(&mCyl, 0xffffffff);
    if (hitActor) {
        mStagger.setParam(this, hitActor, mCurAngle.y);
        setDamage(0, 1, 0);
        mStagger.setPower(0.0f);
        mDamageTimerStart = 0;
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (field_0xf84) {
        if (field_0xf90 == field_0xf84) {
            (this->*field_0xf90)(NULL);
        } else {
            setAction(field_0xf84);
        }
    }
}

/* 80B70018-80B70090 0012D8 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80B70090-80B702B0 001350 0220+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::setAttnPos() {
    cXyz sp38(10.0f, -30.0f, 0.0f);

    mStagger.calc(FALSE);

    mJntAnm.setParam(this, mpMorf[0]->getModel(), &sp38, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
        l_HIO.m.field_0x24, l_HIO.m.field_0x20, l_HIO.m.field_0x2c, 
        l_HIO.m.field_0x28, l_HIO.m.field_0x34, l_HIO.m.field_0x30, 
        l_HIO.m.field_0x3c, l_HIO.m.field_0x38, l_HIO.m.field_0x40,
        0.0f, NULL);

    mJntAnm.calcJntRad(0.2f, 1.0f, cM_s2rad(mCurAngle.y - field_0xd7e.y));

    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp38, &eyePos);
    
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 0, 1.0f, 0);

    attention_info.position = current.pos;
    attention_info.position.y += l_HIO.m.field_0x0;
}

/* 80B702B0-80B703E0 001570 0130+00 1/0 0/0 0/0 .text            setCollision__12daNpc_ZelR_cFv */
void daNpc_ZelR_c::setCollision() {
    if (!mHide) {
        if (mTwilight == 1 && !dComIfGp_event_runCheck()) {
            mCyl.SetCoSPrm(0x69);
        } else {
            mCyl.SetCoSPrm(0x79);
        }

        if (mStagger.checkStagger()) {
            mCyl.SetTgType(0);
            mCyl.SetTgSPrm(0);
        } else {
            mCyl.SetTgType(0xd8fbfdff);
            mCyl.SetTgSPrm(0x1f);
            mCyl.OnTgNoHitMark();
        }

        f32 cylH = mCylH;
        f32 wallR = mWallR;
        cXyz sp28 = current.pos;
        mCyl.SetH(cylH);
        mCyl.SetR(wallR);
        mCyl.SetC(sp28);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80B703E0-80B703E8 0016A0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::drawDbgInfo() {
    return 0;
}

/* 80B703E8-80B70430 0016A8 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_ZelR_cFv */
int daNpc_ZelR_c::selectAction() {
    field_0xf84 = NULL;
    field_0xf84 = &daNpc_ZelR_c::talk;
    return 1;
}

/* 80B70430-80B7045C 0016F0 002C+00 1/1 0/0 0/0 .text       chkAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i */
int daNpc_ZelR_c::chkAction(int (daNpc_ZelR_c::*param_1)(void*)) {
    return field_0xf90 == param_1;
}

/* 80B7045C-80B70504 00171C 00A8+00 2/2 0/0 0/0 .text       setAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i */
int daNpc_ZelR_c::setAction(int (daNpc_ZelR_c::*param_1)(void*)) {
    mMode = 3;
    if (field_0xf90) {
        (this->*field_0xf90)(NULL);
    }

    mMode = 0;
    field_0xf90 = param_1;
    if (field_0xf90) {
        (this->*field_0xf90)(NULL);
    }

    return 1;
}

/* 80B70504-80B706B0 0017C4 01AC+00 1/0 0/0 0/0 .text            wait__12daNpc_ZelR_cFPv */
int daNpc_ZelR_c::wait(void* param_1) {
    // NONMATCHING
    s16 sVar1;

    switch (mMode) {
        case 0:
        case 1:
            mFaceMotionSeqMngr.setNo(1, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            mMode = 2;
        case 2:
            if (!mStagger.checkStagger()) {
                if (srchPlayerActor()) {
                    mJntAnm.lookPlayer(0);
                    sVar1 = checkStep();
                } else {
                    mJntAnm.lookNone(0);
                    sVar1 = home.angle.y != mCurAngle.y;
                }

                if ((sVar1 & 0xff) && step(home.angle.y, -1, -1, 15, 0)) {
                    mMode = 1;
                }
            }
        case 3:
        default:
            return 1;
    }
}

/* 80B706B0-80B70814 001970 0164+00 2/0 0/0 0/0 .text            talk__12daNpc_ZelR_cFPv */
BOOL daNpc_ZelR_c::talk(void* param_1) {
    BOOL bVar2 = FALSE;
    switch (mMode) {
        case 0:
        case 1:
            initTalk(mFlowNodeNo, NULL);
            mMode = 2;
        case 2:
            if (mTwilight) {
                bVar2 = TRUE;
            } else {
                mJntAnm.lookPlayer(0);
                if (mCurAngle.y != fopAcM_searchPlayerAngleY(this)) {
                    step(fopAcM_searchPlayerAngleY(this), -1, -1, 15, 0);
                } else {
                    bVar2 = TRUE;
                }
            }

            if (bVar2 && talkProc(NULL, 0, NULL, 0)) {
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                dComIfGp_event_reset();
                mMode = 3;
            }
        case 3:
        default:
            return FALSE;
    }
}

/* 80B70814-80B70834 001AD4 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Create__FPv */
static int daNpc_ZelR_Create(void* param_1) {
    daNpc_ZelR_c* i_this = (daNpc_ZelR_c*)param_1;
    return i_this->create();
}

/* 80B70834-80B70854 001AF4 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Delete__FPv */
static int daNpc_ZelR_Delete(void* param_1) {
    daNpc_ZelR_c* i_this = (daNpc_ZelR_c*)param_1;
    return i_this->Delete();
}

/* 80B70854-80B70874 001B14 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Execute__FPv */
static int daNpc_ZelR_Execute(void* param_1) {
    daNpc_ZelR_c* i_this = (daNpc_ZelR_c*)param_1;
    return i_this->Execute();
}

/* 80B70874-80B70894 001B34 0020+00 1/0 0/0 0/0 .text            daNpc_ZelR_Draw__FPv */
static int daNpc_ZelR_Draw(void* param_1) {
    daNpc_ZelR_c* i_this = (daNpc_ZelR_c*)param_1;
    return i_this->Draw();
}

/* 80B70894-80B7089C 001B54 0008+00 1/0 0/0 0/0 .text            daNpc_ZelR_IsDelete__FPv */
static int daNpc_ZelR_IsDelete(void* param_0) {
    return 1;
}

/* 80B71A34-80B71A3C 002CF4 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__12daNpc_ZelR_cFv */
u16 daNpc_ZelR_c::getEyeballRMaterialNo() {
    return 3;
}

/* 80B71A3C-80B71A44 002CFC 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__12daNpc_ZelR_cFv */
u16 daNpc_ZelR_c::getEyeballLMaterialNo() {
    return 2;
}

/* 80B71A44-80B71A4C 002D04 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_ZelR_cFv */
s32 daNpc_ZelR_c::getHeadJointNo() {
    return 3;
}

/* 80B71A4C-80B71A54 002D0C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_ZelR_cFv */
s32 daNpc_ZelR_c::getBackboneJointNo() {
    return 1;
}

/* 80B71CDC-80B71CFC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_ZelR_MethodTable */
static actor_method_class daNpc_ZelR_MethodTable = {
    (process_method_func)daNpc_ZelR_Create,
    (process_method_func)daNpc_ZelR_Delete,
    (process_method_func)daNpc_ZelR_Execute,
    (process_method_func)daNpc_ZelR_IsDelete,
    (process_method_func)daNpc_ZelR_Draw,
};

/* 80B71CFC-80B71D2C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZELR */
extern actor_process_profile_definition g_profile_NPC_ZELR = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_ZELR,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_ZelR_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  385,                     // mPriority
  &daNpc_ZelR_MethodTable, // sub_method
  0x00044108,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
