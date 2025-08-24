/**
 * @file d_a_npc_midp.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_midp.h"
#include "SSystem/SComponent/c_counter.h"

/* 80A73AD4-80A73ADC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][1] = {
    {9}, {1}
};

/* 80A73ADC-80A73AEC -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0},
};

/* 80A73AEC-80A73AF4 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "midP"
};

/* 80A73AF4-80A73AF8 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[1 + 1 /* padding */] = {
    1,
    -1
};

/* 80A73AF8-80A73B00 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80A73B00-80A73B1C 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData = {
    -1, 0, 0, 15, 2, 1, 1
};

/* 80A73B1C-80A73B38 000068 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData = {
    6, 2, 1, 12, 0, 1, 1, 0
};

/* 80A73B38-80A73B48 000084 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}
};

/* 80A73B48-80A73B58 000094 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}
};

/* 80A73B58-80A73B5C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_midP_c */
char* daNpc_midP_c::mCutNameList = "";

/* 80A73B5C-80A73B68 0000A8 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_midP_c */
daNpc_midP_c::cutFunc daNpc_midP_c::mCutList[1] = { 0 };

/* 80A70C6C-80A70D90 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__12daNpc_midP_cFv */
daNpc_midP_c::~daNpc_midP_c() {
    OS_REPORT("|%06d:%x|daNpc_midP_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (heap != 0) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* 80A739C0-80A73A4C 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_midP_Param_c */
daNpc_midP_Param_c::Data const daNpc_midP_Param_c::m = {
    210.0f, 
    -3.0f,     // mGravity
    1.0f,        // mScale
    500.0f, 
    255.0f,     // mWeight
    190.0f,       // mCylH
    35.0f,       // mWallH
    30.0f,       // mWallR
    0.0f, 
    0.0f, 
    10.0f, 
    -10.0f,
    30.0f, 
    -10.0f, 
    45.0f, 
    -45.0f, 
    0.6f, 
    12.0f,  // mMorfFrames
    3,
    6, 
    5, 
    6, 
    110.0f,   // mAttnFovY
    0.0f, 
    0.0f, 
    0.0f, 
    60,
    8, 
    0, 
    0, 
    4.0f, 
    0.0f, 
    0.0f, 
    0.0f, 
    0.0f, 
    0.0f, 
    0.0f, 
    0.0f,
};

/* 80A70D90-80A71074 000210 02E4+00 1/1 0/0 0/0 .text            create__12daNpc_midP_cFv */
int daNpc_midP_c::create() {
    fopAcM_SetupActor2(this, daNpc_midP_c, &l_faceMotionAnmData, &l_motionAnmData, l_faceMotionSequenceData, 4,
        l_motionSequenceData, 4, l_evtList, l_resNameList);
    
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = 0;

    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0)) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("\n");

        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), mType,
        mFlowNodeNo, fopAcM_GetParam(this));
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        fopAcM_OnStatus(this, 0x8000000);

        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
            fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_midP_Param_c::m.mWeight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }
        
        current.pos = home.pos;
        old.pos = current.pos;
        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return rv;
}

/* 80A71074-80A71300 0004F4 028C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_midP_cFv */
int daNpc_midP_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
        0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        if (mpMorf[0] != NULL) {
            mpMorf[0]->stopZelAnime();
        }
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model->setUserArea((u32)this);
    for (int i = 0; i < 2; i++) {
        mpMatAnm[i] = new daNpcT_MatAnm_c();

        if (mpMatAnm[i] == NULL) {
            return 0;
        }
    }

    if (setFaceMotionAnm(0, false) && setMotionAnm(0, 0.0f, 0) != 0) {
        return 1;
    } else {
        return 0;
    }
}

/* 80A714BC-80A714F0 00093C 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_midP_cFv */
int daNpc_midP_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_midP_c -> Delete\n", g_Counter.mCounter0, this);
    fopAcM_GetID(this);
    this->~daNpc_midP_c();
    return 1;
}

/* 80A714F0-80A71510 000970 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_midP_cFv */
int daNpc_midP_c::Execute() {
    return execute();
}

/* 80A71510-80A715D4 000990 00C4+00 1/1 0/0 0/0 .text            Draw__12daNpc_midP_cFv */
int daNpc_midP_c::Draw() {
    J3DModel* model = mpMorf[0]->getModel();
    J3DModelData* modelData = model->getModelData();
    if (mpMatAnm[0]) {
        modelData->getMaterialNodePointer(getEyeballLMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    if (mpMatAnm[1]) {
        modelData->getMaterialNodePointer(getEyeballRMaterialNo())->setMaterialAnm(mpMatAnm[1]);
    }

    return daNpcT_c::draw(0, 0, mRealShadowSize, NULL, 0.0f, 1, 0, 0);
}

/* 80A715D4-80A715F4 000A54 0020+00 1/1 0/0 0/0 .text   createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c */
int daNpc_midP_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_midP_c* i_this = (daNpc_midP_c*)a_this;
    return i_this->CreateHeap();
}

/* 80A715F4-80A7164C 000A74 0058+00 1/1 0/0 0/0 .text   ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi */
int daNpc_midP_c::ctrlJointCallBack(J3DJoint* param_1, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_midP_c* i_this = (daNpc_midP_c*)model->getUserArea();
        if (i_this != 0) {
            i_this->ctrlJoint(param_1, model);
        }
    }

    return 1;
}

/* 80A7164C-80A7166C 000ACC 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_midP_cFv */
u8 daNpc_midP_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        default:
            return TYPE_1;
    }
}

/* 80A7166C-80A7168C 000AEC 0020+00 1/1 0/0 0/0 .text            isDelete__12daNpc_midP_cFv */
int daNpc_midP_c::isDelete() {
    switch (mType) {
        case 0:
            return FALSE;
        default:
            return FALSE;
    }
}

/* 80A7168C-80A717D4 000B0C 0148+00 1/1 0/0 0/0 .text            reset__12daNpc_midP_cFv */
void daNpc_midP_c::reset() {
    int iVar1 = (u8*)&field_0xf9c - (u8*)&field_0xf84;
    for (int i = 0; i < 2; i++) {
        if (mpMatAnm[i]) {
            mpMatAnm[i]->initialize();
        }
    }
    initialize();

    memset(&field_0xf84, 0, iVar1);
    setAngle(home.angle.y);
}

/* 80A717D4-80A71860 000C54 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_midP_cFi */
void daNpc_midP_c::afterJntAnm(int param_1) {
    if (param_1 == 2) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(0));
    }
}

/* 80A71860-80A7199C 000CE0 013C+00 1/0 0/0 0/0 .text            ctrlBtk__12daNpc_midP_cFv */
BOOL daNpc_midP_c::ctrlBtk() {
    if (mpMatAnm[0] && mpMatAnm[1]) {
        if (field_0xe29 && mBtkAnm.getBtkAnm()) {
            mpMatAnm[0]->setNowOffsetX(field_0xde4 * cM_ssin(mJntAnm.getEyeAngleY()) * -1.0f);
            mpMatAnm[0]->setNowOffsetY(field_0xde0 * cM_ssin(mJntAnm.getEyeAngleX()));
            mpMatAnm[1]->setNowOffsetX(field_0xde4 * cM_ssin(mJntAnm.getEyeAngleY()));
            mpMatAnm[1]->setNowOffsetY(field_0xde0 * cM_ssin(mJntAnm.getEyeAngleX()));
            
            if (field_0xe2a) {
                mpMatAnm[0]->setMorfFrm(field_0xe2a);
                mpMatAnm[1]->setMorfFrm(field_0xe2a);
                field_0xe2a = 0;
            }

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

/* 80A7199C-80A71A98 000E1C 00FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_midP_cFv */
void daNpc_midP_c::setParam() {
    selectAction();
    srchActors();

    s16 sVar1 = daNpc_midP_Param_c::m.field_0x48;
    s16 sVar2 = daNpc_midP_Param_c::m.field_0x4a;
    s16 sVar3 = daNpc_midP_Param_c::m.field_0x4c;
    s16 sVar4 = daNpc_midP_Param_c::m.field_0x4e;

    attention_info.distances[0] = daNpcT_getDistTableIdx(sVar3, sVar4);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(sVar1, sVar2);
    attention_info.flags = 10;

    scale.setall(daNpc_midP_Param_c::m.mScale);
    mCcStts.SetWeight(daNpc_midP_Param_c::m.mWeight);
    mCylH = daNpc_midP_Param_c::m.mCylH;
    mWallR = daNpc_midP_Param_c::m.mWallR;
    mAttnFovY = daNpc_midP_Param_c::m.mAttnFovY;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_midP_Param_c::m.mWallH);
    mRealShadowSize = daNpc_midP_Param_c::m.field_0x0c;
    mExpressionMorfFrame = daNpc_midP_Param_c::m.field_0x6c;
    mMorfFrames = daNpc_midP_Param_c::m.mMorfFrames;
    gravity = daNpc_midP_Param_c::m.mGravity;
}

/* 80A71A98-80A71AF8 000F18 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_midP_cFv */
void daNpc_midP_c::setAfterTalkMotion() {
    mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
}

/* 80A71AF8-80A71AFC 000F78 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_midP_cFv */
void daNpc_midP_c::srchActors() {
    /* empty function */
}

/* 80A71AFC-80A71BFC 000F7C 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_midP_cFv */
BOOL daNpc_midP_c::evtTalk() {
    if (chkAction(&daNpc_midP_c::talk)) {
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
            setAction(&daNpc_midP_c::talk);
        }
    }

    return TRUE;
}

/* 80A71BFC-80A71CC4 00107C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_midP_cFv */
BOOL daNpc_midP_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("midP", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList, 1, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 80A71CC4-80A71DB0 001144 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_midP_cFv */
void daNpc_midP_c::action() {
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

/* 80A71DB0-80A71E28 001230 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_midP_cFv */
void daNpc_midP_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80A71E28-80A72064 0012A8 023C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_midP_cFv */
void daNpc_midP_c::setAttnPos() {
    // NONMATCHING
    cXyz sp3c(10.0f, -30.0f, 0.0f);
    cXyz sp48(10.0f, 0.0f, 0.0f);

    mStagger.calc(FALSE);
    f32 dVar5 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();
    mJntAnm.setParam(this, model, &sp3c, getBackboneJointNo(), getNeckJointNo(),
        getHeadJointNo(), daNpc_midP_Param_c::m.field_0x24, daNpc_midP_Param_c::m.field_0x20,
        daNpc_midP_Param_c::m.field_0x2c, daNpc_midP_Param_c::m.field_0x28,
        daNpc_midP_Param_c::m.field_0x34, daNpc_midP_Param_c::m.field_0x30,
        daNpc_midP_Param_c::m.field_0x3c, daNpc_midP_Param_c::m.field_0x38,
        daNpc_midP_Param_c::m.field_0x40, dVar5, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, dVar5);
    setMtx();

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 0, 1.0f, 0);

    attention_info.position = current.pos;
    attention_info.position.y += daNpc_midP_Param_c::m.field_0x00;
}

/* 80A72064-80A7216C 0014E4 0108+00 1/0 0/0 0/0 .text            setCollision__12daNpc_midP_cFv */
void daNpc_midP_c::setCollision() {
    if (!mHide) {
        u32 tgType = 0xd8fbfdff;
        u32 tgSPrm = 0x1f;
        if (dComIfGp_event_runCheck()) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (mTwilight) {
                tgType = 0;
                tgSPrm = 0;
            } else {
                if (mStagger.checkStagger()) {
                    tgType = 0;
                    tgSPrm = 0;
                }
            }
        }

        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();
        mCyl.SetH(mCylH);
        mCyl.SetR(mWallR);
        mCyl.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80A7216C-80A72174 0015EC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_midP_cFv */
int daNpc_midP_c::drawDbgInfo() {
    return 0;
}

/* 80A72174-80A721E0 0015F4 006C+00 1/0 0/0 0/0 .text            drawGhost__12daNpc_midP_cFv */
void daNpc_midP_c::drawGhost() {
    J3DModel* model = mpMorf[0]->getModel();
    g_env_light.settingTevStruct(3, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpMorf[0]->entryDL();
}

/* 80A721E0-80A72228 001660 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_midP_cFv */
int daNpc_midP_c::selectAction() {
    field_0xf84 = NULL;
    field_0xf84 = &daNpc_midP_c::talk;
    return 1;
}

/* 80A72228-80A72254 0016A8 002C+00 1/1 0/0 0/0 .text       chkAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i */
int daNpc_midP_c::chkAction(int (daNpc_midP_c::*action)(void*)) {
    return field_0xf90 == action;
}

/* 80A72254-80A722FC 0016D4 00A8+00 2/2 0/0 0/0 .text       setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i */
int daNpc_midP_c::setAction(int (daNpc_midP_c::*action)(void*)) {
    mMode = 3;
    if (field_0xf90) {
        (this->*field_0xf90)(NULL);
    }
    
    mMode = 0;
    field_0xf90 = action;
    if (field_0xf90) {
        (this->*field_0xf90)(NULL);
    }

    return 1;
}

/* 80A722FC-80A72548 00177C 024C+00 1/0 0/0 0/0 .text            wait__12daNpc_midP_cFPv */
int daNpc_midP_c::wait(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                mMode = 2;
            }
        case 2:
            if (!mStagger.checkStagger()) {
                if (mPlayerActorMngr.getActorP()) {
                    mJntAnm.lookPlayer(0);
                    if (!chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                        mJntAnm.lookNone(0);
                    }
                
                    if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                        mMode = 1;
                    }
                } else {
                    mJntAnm.lookNone(0);
                    if (home.angle.y != mCurAngle.y) {
                        if (field_0xe34) {
                            if (step(home.angle.y, -1, -1, 15, 0)) {
                                mMode = 1;
                            }
                        } else {
                            setAngle(home.angle.y);
                            mMode = 1;
                        }
                    
                        attention_info.flags = 0;
                    } else {
                        srchPlayerActor();
                    }
                }
            }
        case 3:
        default:
            return 1;
    }
}

/* 80A72548-80A72754 0019C8 020C+00 2/0 0/0 0/0 .text            talk__12daNpc_midP_cFPv */
int daNpc_midP_c::talk(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                initTalk(mFlowNodeNo, NULL);
                mPlayerAngle = fopAcM_searchPlayerAngleY(this);
                if (checkStep()) {
                    mStepMode = 0;
                }

                speedF = 0.0f;
                speed.setall(0.0f);
                mMode = 2;
            }
        case 2:
            if (!mStagger.checkStagger()) {
                if (mTwilight || mPlayerAngle == mCurAngle.y) {
                    if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
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
                    step(mPlayerAngle, -1, -1, 15, 0);
                }
            }
        case 3:
        default:
            return 0;
    }
}

/* 80A72754-80A72774 001BD4 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Create__FPv */
static int daNpc_midP_Create(void* i_this) {
    return static_cast<daNpc_midP_c*>(i_this)->create();
}

/* 80A72774-80A72794 001BF4 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Delete__FPv */
static int daNpc_midP_Delete(void* i_this) {
    return static_cast<daNpc_midP_c*>(i_this)->Delete();
}

/* 80A72794-80A727B4 001C14 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Execute__FPv */
static int daNpc_midP_Execute(void* i_this) {
    return static_cast<daNpc_midP_c*>(i_this)->Execute();
}

/* 80A727B4-80A727D4 001C34 0020+00 1/0 0/0 0/0 .text            daNpc_midP_Draw__FPv */
static int daNpc_midP_Draw(void* i_this) {
    return static_cast<daNpc_midP_c*>(i_this)->Draw();
}

/* 80A727D4-80A727DC 001C54 0008+00 1/0 0/0 0/0 .text            daNpc_midP_IsDelete__FPv */
static int daNpc_midP_IsDelete(void* i_this) {
    return 1;
}

/* 80A73D50-80A73D5C 000008 000C+00 1/1 0/0 0/0 .bss             @3811 */
static u8 lit_3811[12];

/* 80A73D5C-80A73D60 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A7390C-80A73914 002D8C 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__12daNpc_midP_cFv */
u16 daNpc_midP_c::getEyeballRMaterialNo() {
    return 3;
}

/* 80A73914-80A7391C 002D94 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__12daNpc_midP_cFv */
u16 daNpc_midP_c::getEyeballLMaterialNo() {
    return 2;
}

/* 80A7391C-80A73924 002D9C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getHeadJointNo() {
    return 4;
}

/* 80A73924-80A7392C 002DA4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getNeckJointNo() {
    return 3;
}

/* 80A7392C-80A73934 002DAC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_midP_cFv */
s32 daNpc_midP_c::getBackboneJointNo() {
    return 2;
}

/* 80A73934-80A73944 002DB4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_midP_cFi */
BOOL daNpc_midP_c::checkChangeJoint(int param_1) {
    // NONMATCHING
    return (4 - param_1) >> 5 & 0xff;
}

/* 80A73944-80A73954 002DC4 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_midP_cFi */
BOOL daNpc_midP_c::checkRemoveJoint(int param_1) {
    // NONMATCHING
    return (8 - param_1) >> 5 & 0xff;
}

/* 80A73954-80A7399C 002DD4 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_midP_Param_cFv */
daNpc_midP_Param_c::~daNpc_midP_Param_c() {
    // NONMATCHING

}

/* 80A73B8C-80A73BAC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_midP_MethodTable */
static actor_method_class daNpc_midP_MethodTable = {
    (process_method_func)daNpc_midP_Create,
    (process_method_func)daNpc_midP_Delete,
    (process_method_func)daNpc_midP_Execute,
    (process_method_func)daNpc_midP_IsDelete,
    (process_method_func)daNpc_midP_Draw,
};

/* 80A73BAC-80A73BDC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MIDP */
extern actor_process_profile_definition g_profile_NPC_MIDP = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_MIDP,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_midP_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  354,                     // mPriority
  &daNpc_midP_MethodTable, // sub_method
  0x00044108,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
