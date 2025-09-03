/**
 * @file d_a_npc_zant.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_zant.h"
#include "SSystem/SComponent/c_counter.h"
#include "f_op/f_op_actor_mng.h"
#include "SSystem/SComponent/c_counter.h"

/* 80B6EAB4-80B6EABC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2] = {
    7, 1
};

/* 80B6EABC-80B6EACC -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0}
};

/* 80B6EACC-80B6EAD4 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "Zant",
};

/* 80B6EAD4-80B6EAD8 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, -1
};

/* 80B6EAD8-80B6EAE0 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0, l_loadResPtrn0,
};

/* 80B6EAE0-80B6EAFC 00004C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData = {
    -1, 0, 0, -1, 0, 0, 0
};

/* 80B6EAFC-80B6EB18 000068 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData = {
    4, 2, 1, -1, 0, 0, 0
};

/* 80B6EB18-80B6EB28 000084 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, 
    {-1, 0, 0}, {-1, 0, 0}
};

/* 80B6EB28-80B6EB38 000094 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {0, -1, 0}, {-1, 0, 0}, 
    {-1, 0, 0}, {-1, 0, 0}
};

/* 80B6EB38-80B6EB3C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Zant_c */
char* daNpc_Zant_c::mCutNameList = "";

/* 80B6EB3C-80B6EB48 0000A8 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_Zant_c */
daNpc_Zant_c::cutFunc daNpc_Zant_c::mCutList[1] = {
    NULL
};

/* 80B6ED34-80B6ED38 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Zant_Param_c l_HIO;

/* 80B6C1AC-80B6C2D0 0000EC 0124+00 1/0 0/0 0/0 .text            __dt__12daNpc_Zant_cFv */
daNpc_Zant_c::~daNpc_Zant_c() {
    OS_REPORT("|%06d:%x|daNpc_Zant_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char **)l_resNameList);
}

/* ############################################################################################## */
/* 80B6E9A8-80B6EA34 000000 008C+00 6/6 0/0 0/0 .rodata          m__18daNpc_Zant_Param_c */
daNpc_Zant_Param_c::Data const daNpc_Zant_Param_c::m  = {
    270.0f, -3.0f, 1.0f, 500.0f, 255.0f, 250.0f, 35.0f, 50.0f,
    0.0f, 0.0f, 10.0f, -10.0f, 30.0f, -10.0f, 45.0f, -45.0f,
    0.6f, 12.0f, 3, 6, 5, 6, 110.0f, 0.0f, 0.0f, 0.0f, 60, 8,
    0, 0, 4.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f
};

/* 80B6C2D0-80B6C574 000210 02A4+00 1/1 0/0 0/0 .text            create__12daNpc_Zant_cFv */
int daNpc_Zant_c::create() {
    int rv;

    fopAcM_SetupActor2(this, daNpc_Zant_c, &l_faceMotionAnmData, &l_motionAnmData, l_faceMotionSequenceData, 
        4, l_motionSequenceData, 4, l_evtList, l_resNameList);
        
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0)) {
            return cPhs_ERROR_e;
        } else if (isDelete()) {
            return cPhs_ERROR_e;
        } else {
            fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
            fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
            fopAcM_OnStatus(this, 0x8000000);

            mSound.init(&current.pos, &eyePos, 3, 1);
            mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, &speed, &current.angle, &shape_angle);
            mCcStts.Init(daNpc_Zant_Param_c::m.field_0x10, 0, this);
            
            mCyl.Set(mCcDCyl);
            mCyl.SetStts(&mCcStts);
            mCyl.SetTgHitCallback(tgHitCallBack);

            mAcch.CrrPos(dComIfG_Bgsp());
            mGndChk = mAcch.m_gnd;
            mGroundH = mAcch.m_ground_h;
            if (mGroundH != -1000000000.0f) {
                setEnvTevColor();
                setRoomNo();
            }
            
            reset();
            mCreating = true;
            Execute();
            mCreating = false;
        }
    }

    return rv;
}

/* 80B6C574-80B6C700 0004B4 018C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Zant_cFv */
int daNpc_Zant_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[1]], l_bmdData[0]);

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
        0x80000, 0x11020284);        
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

    if (setFaceMotionAnm(0, false) && setMotionAnm(0, 0.0f, 0))
    {
        return 1;
    }
    return 0;
}

/* 80B6C700-80B6C734 000640 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Zant_cFv */
int daNpc_Zant_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_Zant_c -> Delete\n", g_Counter.mCounter0, this);
    fopAcM_GetID(this);
    this->~daNpc_Zant_c();
    return 1;
}

/* 80B6C734-80B6C754 000674 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Zant_cFv */
int daNpc_Zant_c::Execute() {
    return execute();
}

/* 80B6C754-80B6C7E8 000694 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Zant_cFv */
int daNpc_Zant_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    return daNpcT_c::draw(0, 0, mRealShadowSize, NULL, 0.0f, 1, 0, 0);
}

/* 80B6C7E8-80B6C808 000728 0020+00 1/1 0/0 0/0 .text createHeapCallBack__12daNpc_Zant_cFP10fopAc_ac_c */
int daNpc_Zant_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Zant_c*>(i_this)->CreateHeap();
}

/* 80B6C808-80B6C860 000748 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__12daNpc_Zant_cFP8J3DJointi */
int daNpc_Zant_c::ctrlJointCallBack(J3DJoint* param_1, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Zant_c* i_this = reinterpret_cast<daNpc_Zant_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_1, model);
        }
    }
    return 1;
}

/* 80B6C860-80B6C880 0007A0 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_Zant_cFv */
u8 daNpc_Zant_c::getType() {
    switch (fopAcM_GetParam(this) & 0xff) {
        case 0:
            return TYPE_0;
        default:
            return TYPE_1;
    }
}

/* 80B6C880-80B6C89C 0007C0 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_Zant_cFv */
u32 daNpc_Zant_c::getFlowNodeNo() {
    u16 nodeNo = home.angle.x;
    if (nodeNo == 0xffff) {
        return -1;
    }
    return nodeNo;
}

/* 80B6C89C-80B6C8CC 0007DC 0030+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Zant_cFv */
int daNpc_Zant_c::isDelete() {
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

/* 80B6C8CC-80B6C9F0 00080C 0124+00 1/1 0/0 0/0 .text            reset__12daNpc_Zant_cFv */
void daNpc_Zant_c::reset() {
    initialize();

    int iVar1 = (u8*)&field_0xf9c - (u8*)&field_0xf84;
    memset(&field_0xf84, 0, iVar1);

    if (mpMatAnm[0]) {
        mpMatAnm[0]->initialize();
    }

    setAngle(home.angle.y);
}

/* 80B6C9F0-80B6C9F4 000930 0004+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Zant_cFi */
void daNpc_Zant_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80B6C9F4-80B6CAF0 000934 00FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_Zant_cFv */
void daNpc_Zant_c::setParam() {
    selectAction();
    srchActors();

    s16 sVar1 = daNpc_Zant_Param_c::m.field_0x48;
    s16 sVar2 = daNpc_Zant_Param_c::m.field_0x4a;
    attention_info.distances[0] = daNpcT_getDistTableIdx(daNpc_Zant_Param_c::m.field_0x4c, daNpc_Zant_Param_c::m.field_0x4e);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(sVar1, sVar2);

    attention_info.flags = 10;

    scale.setall(daNpc_Zant_Param_c::m.field_0x8);

    mCcStts.SetWeight(daNpc_Zant_Param_c::m.field_0x10);

    mCylH = daNpc_Zant_Param_c::m.field_0x14;
    mWallR = daNpc_Zant_Param_c::m.field_0x1c;
    mAttnFovY = daNpc_Zant_Param_c::m.field_0x50;

    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Zant_Param_c::m.field_0x18);

    mRealShadowSize = daNpc_Zant_Param_c::m.field_0xc;
    gravity = daNpc_Zant_Param_c::m.field_0x4;
    mExpressionMorfFrame = daNpc_Zant_Param_c::m.field_0x6c;
    mMorfFrames = daNpc_Zant_Param_c::m.field_0x44;
}

/* 80B6CAF0-80B6CB50 000A30 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Zant_cFv */
void daNpc_Zant_c::setAfterTalkMotion() {
    mFaceMotionSeqMngr.getNo();
    mFaceMotionSeqMngr.setNo(0, -1.0, 0, 0);
}

/* 80B6CB50-80B6CB54 000A90 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Zant_cFv */
void daNpc_Zant_c::srchActors() {
    /* empty function */
}

/* 80B6CB54-80B6CC54 000A94 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Zant_cFv */
BOOL daNpc_Zant_c::evtTalk() {
    if (chkAction(&daNpc_Zant_c::talk)) {
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
        }
        
        setAction(&daNpc_Zant_c::talk);
    }

    return TRUE;
}

/* 80B6CC54-80B6CD1C 000B94 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Zant_cFv */
BOOL daNpc_Zant_c::evtCutProc() {
    int rv = 0;
    int staffId = dComIfGp_getEventManager().getMyStaffId("Zant", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList, 1, 0, 0);

        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        rv = 1;
    }

    return rv;
}

/* 80B6CD1C-80B6CE08 000C5C 00EC+00 1/0 0/0 0/0 .text            action__12daNpc_Zant_cFv */
void daNpc_Zant_c::action() {
    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (field_0xf84 != 0) {
        if (field_0xf90 == field_0xf84) {
            (this->*(field_0xf90))(NULL);
        } else {
            setAction(field_0xf84);
        }
    }
}

/* 80B6CE08-80B6CE80 000D48 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Zant_cFv */
void daNpc_Zant_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80B6CE80-80B6D074 000DC0 01F4+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Zant_cFv */
void daNpc_Zant_c::setAttnPos() {
    cXyz cStack1(0.0f, 0.0f, 0.0f);
    mStagger.calc(0);

    f32 fVar1 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();
    mJntAnm.setParam(this, model, &cStack1, getBackboneJointNo(),
        getNeckJointNo(), getHeadJointNo(), daNpc_Zant_Param_c::m.field_0x24,
        daNpc_Zant_Param_c::m.field_0x20, daNpc_Zant_Param_c::m.field_0x2c,
        daNpc_Zant_Param_c::m.field_0x28, daNpc_Zant_Param_c::m.field_0x34,
        daNpc_Zant_Param_c::m.field_0x30, daNpc_Zant_Param_c::m.field_0x3c,
        daNpc_Zant_Param_c::m.field_0x38, daNpc_Zant_Param_c::m.field_0x40,
        fVar1, NULL);
    
    mJntAnm.calcJntRad(0.2f, 1.0f, fVar1);
    setMtx();
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 1, 1.0f, 0);

    attention_info.position = current.pos;
    attention_info.position.y += daNpc_Zant_Param_c::m.field_0x0;
    eyePos = attention_info.position;
}

/* 80B6D074-80B6D1A8 000FB4 0134+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Zant_cFv */
void daNpc_Zant_c::setCollision() {
    u32 tgType = 0xd8fbfdff;
    u32 tgSPrm = 0x1f;

    if (!mHide) {
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

        f32 height = mCylH;
        f32 radius = mWallR;
        cXyz pos = current.pos;

        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();
        mCyl.SetH(height);
        mCyl.SetR(radius);
        mCyl.SetC(pos);

        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80B6D1A8-80B6D1B0 0010E8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Zant_cFv */
int daNpc_Zant_c::drawDbgInfo() {
    return 0;
}

/* 80B6D1B0-80B6D21C 0010F0 006C+00 1/0 0/0 0/0 .text            drawGhost__12daNpc_Zant_cFv */
void daNpc_Zant_c::drawGhost() {
    J3DModel* model = mpMorf[0]->getModel();
    g_env_light.settingTevStruct(3, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpMorf[0]->entryDL();
}

/* 80B6D21C-80B6D264 00115C 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Zant_cFv */
int daNpc_Zant_c::selectAction() {
    field_0xf84 = NULL;
    field_0xf84 = &daNpc_Zant_c::wait;
    return 1;
}

/* 80B6D264-80B6D290 0011A4 002C+00 1/1 0/0 0/0 .text chkAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i */
int daNpc_Zant_c::chkAction(int (daNpc_Zant_c::*action)(void*)) {
    return field_0xf90 == action;
}

/* 80B6D290-80B6D338 0011D0 00A8+00 2/2 0/0 0/0 .text setAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i */
int daNpc_Zant_c::setAction(int (daNpc_Zant_c::*action)(void*)) {
    mMode = 3;
    if (field_0xf90) {
        (this->*(field_0xf90))(NULL);
    }

    mMode = 0;
    field_0xf90 = action;
    if (field_0xf90) {
        (this->*(field_0xf90))(NULL);
    }

    return 1;
}

/* 80B6D338-80B6D584 001278 024C+00 1/0 0/0 0/0 .text            wait__12daNpc_Zant_cFPv */
int daNpc_Zant_c::wait(void* param_1) {
    int rv;
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
                    mJntAnm.lookNone(0);
                    if (chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                        mJntAnm.lookPlayer(0);
                    }

                    if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                        mMode = 1;
                    }
                } else {
                    mJntAnm.lookNone(0);
                    if (home.angle.y != mCurAngle.y) {
                        if (field_0xe34 == 0) {
                            setAngle(home.angle.y);
                            mMode = 1;
                        } else {
                            if (step(home.angle.y, -1, -1, 15, 0)) {
                                mMode = 1;
                            }
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

/* 80B6D584-80B6D77C 0014C4 01F8+00 2/0 0/0 0/0 .text            talk__12daNpc_Zant_cFPv */
int daNpc_Zant_c::talk(void* param_1) {
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
        case 2:
            if (!mStagger.checkStagger()) {
                if (mTwilight || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    if (talkProc(NULL, 0, NULL, 0)) {
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
                    step(fopAcM_searchPlayerAngleY(this), -1, -1, 15, 0);
                }
            }
        case 3:
        default:
            return 0;
    }
}

/* 80B6D77C-80B6D79C 0016BC 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Create__FPv */
static int daNpc_Zant_Create(void* i_this) {
    return static_cast<daNpc_Zant_c*>(i_this)->create();
}

/* 80B6D79C-80B6D7BC 0016DC 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Delete__FPv */
static int daNpc_Zant_Delete(void* i_this) {
    return static_cast<daNpc_Zant_c*>(i_this)->Delete();
}

/* 80B6D7BC-80B6D7DC 0016FC 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Execute__FPv */
static int daNpc_Zant_Execute(void* i_this) {
    return static_cast<daNpc_Zant_c*>(i_this)->Execute();
}

/* 80B6D7DC-80B6D7FC 00171C 0020+00 1/0 0/0 0/0 .text            daNpc_Zant_Draw__FPv */
static int daNpc_Zant_Draw(void* i_this) {
    return static_cast<daNpc_Zant_c*>(i_this)->Draw();
}

/* 80B6D7FC-80B6D804 00173C 0008+00 1/0 0/0 0/0 .text            daNpc_Zant_IsDelete__FPv */
static int daNpc_Zant_IsDelete(void* i_this) {
    return 1;
}

/* 80B6EB6C-80B6EB8C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Zant_MethodTable */
static actor_method_class daNpc_Zant_MethodTable = {
    (process_method_func)daNpc_Zant_Create,
    (process_method_func)daNpc_Zant_Delete,
    (process_method_func)daNpc_Zant_Execute,
    (process_method_func)daNpc_Zant_IsDelete,
    (process_method_func)daNpc_Zant_Draw,
};

/* 80B6EB8C-80B6EBBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZANT */
extern actor_process_profile_definition g_profile_NPC_ZANT = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_ZANT,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Zant_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  383,                     // mPriority
  &daNpc_Zant_MethodTable, // sub_method
  0x00044107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
