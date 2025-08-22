/**
* @file d_a_npc_seib.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_seib.h"

/* 80AC7118-80AC7120 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][1] = {12, 1};

/* 80AC7120-80AC7138 -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[3] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
    {"NO_RESPONSE", 0},
};

/* 80AC7138-80AC7140 -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {"", "seiB"};

/* 80AC7140-80AC7144 000048 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {1, 0xFF};

/* 80AC7144-80AC714C -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80AC714C-80AC7168 000054 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData = {-1, 0, 0, -1, 0, 0, 0};

/* 80AC7168-80AC71D8 000070 0070+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[4] = {
    {9, 2, 1, -1, 0, 0, 0, 0},
    {7, 0, 1, -1, 0, 0, 0, 0},
    {6, 2, 1, -1, 0, 0, 0, 0},
    {8, 0, 1, -1, 0, 0, 0, 0},
};

/* 80AC71D8-80AC71E8 0000E0 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
};

/* 80AC71E8-80AC7228 0000F0 0040+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[16] = {
    {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AC7228-80AC722C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_seiB_c */
char* daNpc_seiB_c::mCutNameList = "";

/* 80AC722C-80AC7238 000134 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_seiB_c */
daNpc_seiB_c::cutFunc daNpc_seiB_c::mCutList[1] = {
    0,
};

/* 80AC50EC-80AC5188 0000EC 009C+00 1/0 0/0 0/0 .text            __dt__12daNpc_seiB_cFv */
daNpc_seiB_c::~daNpc_seiB_c() {
    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80AC7024-80AC70B8 000000 0094+00 4/4 0/0 0/0 .rodata          m__18daNpc_seiB_Param_c */
daNpc_seiB_Param_c::Data const daNpc_seiB_Param_c::m = {
    0.0f,
    0.0f,
    1.0f,
    4000.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    1200.0f,
};

/* 80AC5188-80AC53C8 000188 0240+00 1/1 0/0 0/0 .text            create__12daNpc_seiB_cFv */
int daNpc_seiB_c::create() {
    fopAcM_SetupActor2(this, daNpc_seiB_c, &l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList,
                       l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();

        mCcStts.Init(mpParam->m.mWeight, 0, this);
        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }

    return rv;
}

/* 80AC53C8-80AC5520 0003C8 0158+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_seiB_cFv */
int daNpc_seiB_c::CreateHeap() {
    J3DModelData* mdlData_p =
        (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]);
    JUT_ASSERT(466, 0 != mdlData_p);

    mpMorf[0] =
        new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0, 0x11020284);
    if (mpMorf[0] && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
        return 0;
    }

    mpMorf[0]->getModel()->setUserArea((u32)this);
    if (setFaceMotionAnm(0, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80AC5520-80AC5554 000520 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_seiB_cFv */
int daNpc_seiB_c::Delete() {
    // OS_REPORT("|%06d:%x|daNpc_seiB_c -> Delete\n", g_Counter.mCounter0, this);
    fopAcM_GetID(this);
    this->~daNpc_seiB_c();
    return 1;
}

/* 80AC5554-80AC5574 000554 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_seiB_cFv */
int daNpc_seiB_c::Execute() {
    return execute();
}

/* 80AC5574-80AC5608 000574 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_seiB_cFv */
int daNpc_seiB_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* mdlData_p = mpMorf[0]->getModel()->getModelData();
        mdlData_p->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    return draw(FALSE, TRUE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
}

/* 80AC5608-80AC5628 000608 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_seiB_cFP10fopAc_ac_c */
int daNpc_seiB_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_seiB_c* i_this = (daNpc_seiB_c*)a_this;
    return i_this->CreateHeap();
}

/* 80AC5628-80AC5648 000628 0020+00 1/1 0/0 0/0 .text            getType__12daNpc_seiB_cFv */
u8 daNpc_seiB_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 0:
        return TYPE_0;
    }

    return TYPE_1;
}

/* 80AC5648-80AC5664 000648 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_seiB_cFv */
int daNpc_seiB_c::getFlowNodeNo() {
    u16 nodeNo = home.angle.x;
    if (nodeNo == 0xffff) {
        return -1;
    }
    return nodeNo;
}

/* 80AC5664-80AC566C 000664 0008+00 1/1 0/0 0/0 .text            isDelete__12daNpc_seiB_cFv */
int daNpc_seiB_c::isDelete() {
    return 0;
}

/* 80AC566C-80AC57C4 00066C 0158+00 1/1 0/0 0/0 .text            reset__12daNpc_seiB_cFv */
void daNpc_seiB_c::reset() {
    initialize();
    memset(&mActionFunc1, 0, (u8*)&field_0xe64 - (u8*)&mActionFunc1);
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }
    setAngle(home.angle.y);
    mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
    mAnim = 0;
}

/* 80AC57C4-80AC58DC 0007C4 0118+00 1/0 0/0 0/0 .text            setParam__12daNpc_seiB_cFv */
void daNpc_seiB_c::setParam() {
    selectAction();
    srchActors();

    dComIfGp_getAttention()->getDistTable(0x28).mDistMax = mpParam->m.mDist;
    dComIfGp_getAttention()->getDistTable(0x28).mDistMaxRelease = mpParam->m.mDist;
    dComIfGp_getAttention()->getDistTable(0x27).mDistMax = mpParam->m.mDist;
    dComIfGp_getAttention()->getDistTable(0x27).mDistMaxRelease = mpParam->m.mDist;

    attention_info.distances[0] = 39;
    attention_info.distances[1] = 39;
    attention_info.distances[3] = 39;
    attention_info.flags = 0;

    scale.set(mpParam->m.mScale, mpParam->m.mScale, mpParam->m.mScale);
    mCcStts.SetWeight(mpParam->m.mWeight);
    mCylH = mpParam->m.mCylH;
    mWallR = mpParam->m.mWallR;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(mpParam->m.mWallH);

    mRealShadowSize = mpParam->m.field_0xc;
    gravity = mpParam->m.mGravity;
    mExpressionMorfFrame = mpParam->m.field_0x6c;
    mMorfFrames = mpParam->m.mMorfFrames;
}

/* 80AC58F0-80AC58F4 0008F0 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_seiB_cFv */
void daNpc_seiB_c::srchActors() {
    /* empty function */
}

/* 80AC58F4-80AC59F4 0008F4 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_seiB_cFv */
BOOL daNpc_seiB_c::evtTalk() {
    if (chkAction(&daNpc_seiB_c::talk)) {
        (this->*mActionFunc2)(NULL);
    } else {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return 1;
            }
            mEvtNo = 2;
            evtChange();
            return 1;
        }

        setAction(&daNpc_seiB_c::talk);
    }

    return 1;
}

/* 80AC59F4-80AC5ABC 0009F4 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_seiB_cFv */
BOOL daNpc_seiB_c::evtCutProc() {
    BOOL rv = 0;
    int staffID = dComIfGp_getEventManager().getMyStaffId("Seib", this, -1);
    if (staffID != -1) {
        mStaffId = staffID;
        staffID = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList, 1, 0, 0);
        if ((this->*(mCutList[staffID]))(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        rv = 1;
    }

    return rv;
}

/* 80AC5ABC-80AC5B44 000ABC 0088+00 1/0 0/0 0/0 .text            action__12daNpc_seiB_cFv */
void daNpc_seiB_c::action() {
    if (mActionFunc1) {
        if (mActionFunc2 == mActionFunc1) {
            (this->*mActionFunc2)(NULL);
        } else {
            setAction(mActionFunc1);
        }
    }
}

/* 80AC5B44-80AC5BC4 000B44 0080+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_seiB_cFv */
void daNpc_seiB_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
    ctrlWaitAnm();
}

/* 80AC5BC4-80AC5C20 000BC4 005C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_seiB_cFv */
void daNpc_seiB_c::setAttnPos() {
    setMtx();
    eyePos = current.pos;
    attention_info.position = current.pos;
}

/* 80AC5C20-80AC5C28 000C20 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_seiB_cFv */
int daNpc_seiB_c::drawDbgInfo() {
    return false;
}

/* 80AC5C28-80AC5DC0 000C28 0198+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_seiB_cFiifi */
bool daNpc_seiB_c::afterSetMotionAnm(int param_1, int param_2, f32 param_3, int param_4) {
    static struct {
        int field_0x0;
        u32 field_0x4;
    } btkAnmData[4] = {
        {18, 1},
        {18, 1},
        {18, 1},
        {18, 1},
    };

    static struct {
        int field_0x0;
        u32 field_0x4;
    } brkAnmData[4] = {
        {15, 1},
        {15, 1},
        {15, 1},
        {15, 1},
    };

    J3DAnmTextureSRTKey* anm_text = NULL;
    J3DAnmTevRegKey* anm_tev = NULL;
    if (btkAnmData[param_1].field_0x0 != -1) {
        anm_text = getTexSRTKeyAnmP(l_resNameList[btkAnmData[param_1].field_0x4],
                                    btkAnmData[param_1].field_0x0);
    }

    if (anm_text) {
        if (mBtkAnm.getBtkAnm() == anm_text) {
            mAnmFlags |= 0x80;
        } else if (setBtkAnm(anm_text, mpMorf[0]->getModel()->getModelData(), 1.0f, param_2)) {
            mAnmFlags |= 0x82;
        }
    }

    if (anm_text == NULL && btkAnmData[param_1].field_0x0 != -1) {
        return 0;
    }

    if (brkAnmData[param_1].field_0x0 != -1) {
        anm_tev = getTevRegKeyAnmP(l_resNameList[brkAnmData[param_1].field_0x4],
                                   brkAnmData[param_1].field_0x0);
    }

    if (anm_tev) {
        if (mBrkAnm.getBrkAnm() == anm_tev) {
            mAnmFlags |= 0x100;
        } else if (setBrkAnm(anm_tev, mpMorf[0]->getModel()->getModelData(), 1.0f, param_2)) {
            mAnmFlags |= 0x104;
        }
    }

    if (anm_tev == NULL && brkAnmData[param_1].field_0x0 != -1) {
        return 0;
    }

    return 1;
}

/* 80AC5DC0-80AC5E08 000DC0 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_seiB_cFv */
int daNpc_seiB_c::selectAction() {
    mActionFunc1 = NULL;
    mActionFunc1 = &daNpc_seiB_c::wait;
    return 1;
}

/* 80AC5E08-80AC5E34 000E08 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_seiB_cFM12daNpc_seiB_cFPCvPvPv_i */
int daNpc_seiB_c::chkAction(int (daNpc_seiB_c::*action)(void*)) {
    return mActionFunc2 == action;
}

/* 80AC5E34-80AC5EDC 000E34 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_seiB_cFM12daNpc_seiB_cFPCvPvPv_i */
int daNpc_seiB_c::setAction(int (daNpc_seiB_c::*action)(void*)) {
    mMode = 3;
    if (mActionFunc2) {
        (this->*mActionFunc2)(NULL);
    }

    mMode = 0;
    mActionFunc2 = action;
    if (mActionFunc2) {
        (this->*mActionFunc2)(NULL);
    }

    return 1;
}

/* 80AC5EDC-80AC6140 000EDC 0264+00 1/1 0/0 0/0 .text            ctrlWaitAnm__12daNpc_seiB_cFv */
void daNpc_seiB_c::ctrlWaitAnm() {
    switch (mAnim) {
    case 0:
        if (mMotionSeqMngr.getNo() == 0) {
            if (mMorfLoops < 3) {
                return;
            }

            mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
            mAnim++;
            return;
        }

        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        return;

    case 1:
        if (mMotionSeqMngr.getNo() == 1) {
            if (mMotionSeqMngr.checkEndSequence() == 0) {
                return;
            }

            mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
            mAnim++;
            return;
        }

        mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
        return;

    case 2:
        if (mMotionSeqMngr.getNo() == 2) {
            if (mMorfLoops < 2) {
                return;
            }

            mMotionSeqMngr.setNo(3, -1.0f, 0, 0);
            mAnim++;
            return;
        }

        mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        return;

    case 3:
        if (mMotionSeqMngr.getNo() == 3) {
            if (mMotionSeqMngr.checkEndSequence() == 0) {
                return;
            }

            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            mAnim = 0;
            return;
        }

        mMotionSeqMngr.setNo(3, -1.0f, 0, 0);
        return;
    }

    JUT_ASSERT(1068, 0);
}

/* 80AC6140-80AC616C 001140 002C+00 1/0 0/0 0/0 .text            wait__12daNpc_seiB_cFPv */
int daNpc_seiB_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
    case 1:
        mMode = 2;
        break;

    case 2:
    case 3:
        break;
    }

    return 1;
}

/* 80AC616C-80AC620C 00116C 00A0+00 2/0 0/0 0/0 .text            talk__12daNpc_seiB_cFPv */
int daNpc_seiB_c::talk(void* param_0) {
    switch (mMode) {
    case 0:
    case 1:
        initTalk(mFlowNodeNo, NULL);
        field_0xe26 = 0;
        mMode = 2;
        // fallthrough
    case 2:
        if (talkProc(NULL, 0, NULL, 0)) {
            dComIfGp_event_reset();
            mMode = 3;
        }
        // fallthrough
    case 3:
        break;
    }

    return 0;
}

/* 80AC620C-80AC622C 00120C 0020+00 1/0 0/0 0/0 .text            daNpc_seiB_Create__FPv */
static int daNpc_seiB_Create(void* param_1) {
    daNpc_seiB_c* i_this = (daNpc_seiB_c*)param_1;
    return i_this->create();
}

/* 80AC622C-80AC624C 00122C 0020+00 1/0 0/0 0/0 .text            daNpc_seiB_Delete__FPv */
static int daNpc_seiB_Delete(void* param_1) {
    daNpc_seiB_c* i_this = (daNpc_seiB_c*)param_1;
    return i_this->Delete();
}

/* 80AC624C-80AC626C 00124C 0020+00 1/0 0/0 0/0 .text            daNpc_seiB_Execute__FPv */
static int daNpc_seiB_Execute(void* param_1) {
    daNpc_seiB_c* i_this = (daNpc_seiB_c*)param_1;
    return i_this->Execute();
}

/* 80AC626C-80AC628C 00126C 0020+00 1/0 0/0 0/0 .text            daNpc_seiB_Draw__FPv */
static int daNpc_seiB_Draw(void* param_1) {
    daNpc_seiB_c* i_this = (daNpc_seiB_c*)param_1;
    return i_this->Draw();
}

/* 80AC628C-80AC6294 00128C 0008+00 1/0 0/0 0/0 .text            daNpc_seiB_IsDelete__FPv */
static int daNpc_seiB_IsDelete(void* param_1) {
    return 1;
}

/* 80AC744C-80AC7450 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_seiB_Param_c l_HIO;

/* 80AC729C-80AC72BC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_seiB_MethodTable */
static actor_method_class daNpc_seiB_MethodTable = {
    (process_method_func)daNpc_seiB_Create,  (process_method_func)daNpc_seiB_Delete,
    (process_method_func)daNpc_seiB_Execute, (process_method_func)daNpc_seiB_IsDelete,
    (process_method_func)daNpc_seiB_Draw,
};

/* 80AC72BC-80AC72EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SEIB */
extern actor_process_profile_definition g_profile_NPC_SEIB = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_NPC_SEIB,            // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daNpc_seiB_c),     // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    358,                      // mPriority
    &daNpc_seiB_MethodTable,  // sub_method
    0x00044000,               // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
