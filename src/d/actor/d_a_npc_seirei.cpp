/**
 * @file d_a_npc_seirei.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_seirei.h"
#include "d/d_meter2_info.h"

enum Seirei_RES_File_ID {
    /* BCK */
    /* 0x06 */ BCK_SEIA_WAIT_A = 0x6,
    /* 0x07 */ BCK_SEIA_WAIT_B,

    /* BMDE */
    /* 0x0A */ BMDE_SEIA = 0xA,

    /* BRK */
    /* 0x0D */ BRK_SEIA = 0xD,

    /* BTK */
    /* 0x10 */ BTK_SEIA = 0x10,
};

enum Seirei1_RES_File_ID {
    /* EVT */
    /* 0x3 */ EVT_SEIREI1_EVENT_LIST = 0x3,
};

enum RES_Name {
    /* 0x0 */ NONE,
    /* 0x1 */ SEIREI,
    /* 0x2 */ SEIREI1,  
};

enum Joint {
    /* 0x00 */ JNT_CENTER,
    /* 0x01 */ JNT_BACKBONE_1,
    /* 0x02 */ JNT_BACKBONE_2,
    /* 0x03 */ JNT_FL_1,
    /* 0x04 */ JNT_FL_2,
    /* 0x05 */ JNT_FL_FOOT_1,
    /* 0x06 */ JNT_FL_FOOT_2,
    /* 0x07 */ JNT_FR_1,
    /* 0x08 */ JNT_FR_2,
    /* 0x09 */ JNT_FR_FOOT_1,
    /* 0x0A */ JNT_FR_FOOT_2,
    /* 0x0B */ JNT_NECK,
    /* 0x0C */ JNT_HEAD,
    /* 0x0D */ JNT_CHIN_1,
    /* 0x0E */ JNT_SIZUKU,
    /* 0x0F */ JNT_WAIST,
    /* 0x10 */ JNT_BL_1,
    /* 0x11 */ JNT_BL_2,
    /* 0x12 */ JNT_BL_3,
    /* 0x13 */ JNT_BL_FOOT,
    /* 0x14 */ JNT_BR_1,
    /* 0x15 */ JNT_BR_2,
    /* 0x16 */ JNT_BR_3,
    /* 0x17 */ JNT_BR_FOOT,
    /* 0x18 */ JNT_TAIL_1,
    /* 0x19 */ JNT_TAIL_2,
    /* 0x1A */ JNT_TAIL_3,
    /* 0x1B */ JNT_TAIL_4,
};

enum Event {
    /* 0x0 */ EVT_NONE,
    /* 0x1 */ EVT_CONVERSATION_ABOUT_YM,
    /* 0x2 */ EVT_DEFAULT_GETITEM,
    /* 0x3 */ EVT_NO_RESPONSE,
};

enum Face_Motion {
    /* 0x0 */ FACE_MOT_NONE,
};

enum Motion {
    /* 0x0 */ MOT_WAIT_A,
    /* 0x1 */ MOT_WAIT_B,
    /* 0x2 */ MOT_NONE,
};

enum Type {
    /* 0x0 */ TYPE_0,
    /* 0x1 */ TYPE_1,
    /* 0x2 */ TYPE_2,
    /* 0x3 */ TYPE_3,
};

/* 80AD7E04-80AD7E0C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {BMDE_SEIA, SEIREI},
};

/* 80AD7E0C-80AD7E2C -00001 0020+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[4] = {
    {"", 0},
    {"CONVERSATION_ABOUT_YM", 2},
    {"DEFAULT_GETITEM", 0},
    {"NO_RESPONSE", 0},
};

/* 80AD7E2C-80AD7E38 -00001 000C+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[3] = {
    "",
    "Seirei",
    "Seirei1",
};

/* 80AD7E38-80AD7E3C 000054 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    SEIREI, -1,
};

/* 80AD7E3C-80AD7E40 000058 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[2] = {
    SEIREI1, -1,
};

/* 80AD7E40-80AD7E50 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
 static s8* l_loadResPtrnList[4] = {
    l_loadResPtrn1,
    l_loadResPtrn1,
    l_loadResPtrn1,
    l_loadResPtrn0,
};

/* 80AD7E50-80AD7E6C 00006C 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[1] = {
    {-1, J3DFrameCtrl::EMode_NONE, NONE, -1, J3DFrameCtrl::EMode_NONE, NONE, 0},
};

/* 80AD7E6C-80AD7EA4 000088 0038+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[2] = {
    {BCK_SEIA_WAIT_A, J3DFrameCtrl::EMode_LOOP, SEIREI, -1, J3DFrameCtrl::EMode_NONE, NONE, 0, 0},
    {BCK_SEIA_WAIT_B, J3DFrameCtrl::EMode_NONE, SEIREI, -1, J3DFrameCtrl::EMode_NONE, NONE, 0, 0},
};

/* 80AD7EA4-80AD7EB4 0000C0 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AD7EB4-80AD7EE4 0000D0 0030+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[12] = {
    {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, 0, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AD7EE4-80AD7EEC -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_Seirei_c */
char* daNpc_Seirei_c::mCutNameList[2] = {
    "",
    "CONVERSATION",
};

/* 80AD7EF8-80AD7F10 000114 0018+00 2/2 0/0 0/0 .data            mCutList__14daNpc_Seirei_c */
daNpc_Seirei_c::cutFunc daNpc_Seirei_c::mCutList[2] = {
    NULL,
    &daNpc_Seirei_c::cutConversation,
};

/* 80AD572C-80AD57C4 0000EC 0098+00 1/0 0/0 0/0 .text            __dt__14daNpc_Seirei_cFv */
daNpc_Seirei_c::~daNpc_Seirei_c() {
    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80AD7CA8-80AD7D3C 000000 0094+00 6/6 0/0 0/0 .rodata          m__20daNpc_Seirei_Param_c */
daNpc_Seirei_HIOParam const daNpc_Seirei_Param_c::m = {
    600.0f,
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
    0,
    0,
    0,
    0,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0,
    0,
    0,
    0,
    0,
    false,
    false,
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

/* 80AD57C4-80AD5A7C 000184 02B8+00 1/1 0/0 0/0 .text            create__14daNpc_Seirei_cFv */
cPhs__Step daNpc_Seirei_c::create() {
    daNpcT_ct(this, daNpc_Seirei_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData, 4,
                       l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;
    arg0 = fopAcM_GetParam(this) >> 28;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (arg0 != 0 && !fopAcM_entrySolidHeap(this, createHeapCallBack, 0)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("\t(%s:%d) flowNo:%d, SWBit:%02x, DoBtnToChk:%d<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo, (getBitSW() >> 32) & 0xFF,
                  getDoBtnChkFlag() & 0xFF, fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        if (arg0 != 0) {
            mpMorf[0]->getModel()->getModelData();
            fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
            mSound.init(&current.pos, &eyePos, 3, 1);
        }

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Seirei_Param_c::m.common.weight, 0, this);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -G_CM3D_F_INF) {
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

    return phase;
}

/* 80AD5A7C-80AD5BC4 00043C 0148+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_Seirei_cFv */
int daNpc_Seirei_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]);
    if (modelData == NULL) {
        return 0;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    mpMorf[0]->getModel()->setUserArea((uintptr_t)this);

    if (setFaceMotionAnm(FACE_MOT_NONE, false) && setMotionAnm(MOT_WAIT_A, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80AD5BC4-80AD5BF8 000584 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_Seirei_cFv */
int daNpc_Seirei_c::Delete() {
    this->~daNpc_Seirei_c();
    return 1;
}

/* 80AD5BF8-80AD5C18 0005B8 0020+00 2/2 0/0 0/0 .text            Execute__14daNpc_Seirei_cFv */
int daNpc_Seirei_c::Execute() {
    return execute();
}

/* 80AD5C18-80AD5CC0 0005D8 00A8+00 1/1 0/0 0/0 .text            Draw__14daNpc_Seirei_cFv */
int daNpc_Seirei_c::Draw() {
    if (arg0 != 0) {
        if (mpMatAnm[0] != NULL) {
            J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
            modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
        }

        return draw(FALSE, TRUE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
    }

    return 1;
}

/* 80AD5CC0-80AD5CE0 000680 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__14daNpc_Seirei_cFP10fopAc_ac_c */
int daNpc_Seirei_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_Seirei_c*>(a_this)->CreateHeap();
}

/* 80AD5CE0-80AD5D2C 0006A0 004C+00 1/1 0/0 0/0 .text            getType__14daNpc_Seirei_cFv */
u8 daNpc_Seirei_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;
        
        case 1:
            return 1;

        case 2:
            return 2;

        default:
            return 3;
    }
}

/* 80AD5D2C-80AD5D34 0006EC 0008+00 1/1 0/0 0/0 .text            isDelete__14daNpc_Seirei_cFv */
BOOL daNpc_Seirei_c::isDelete() {
    return FALSE;
}

/* 80AD5D34-80AD5EEC 0006F4 01B8+00 1/1 0/0 0/0 .text            reset__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::reset() {
    int size = (u8*)&field_0xe84 - (u8*)&mNextAction;
    
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    initialize();

    memset(&mNextAction, 0, size);

    switch (mType) {
        case TYPE_0:
            mItemPartnerId = fpcM_ERROR_PROCESS_ID_e;
            break;

        case TYPE_1:
        case TYPE_2:
        case TYPE_3:
            break;
    }

    if (arg0 != 0) {
        mMotionSeqMngr.setNo(MOT_WAIT_A, -1.0f, FALSE, 0);
        field_0xe60 = 3;
    } else {
        mMotionSeqMngr.setNo(MOT_NONE, -1.0f, FALSE, 0);
    }

    setAngle(home.angle.y);
}

/* 80AD5EEC-80AD6034 0008AC 0148+00 1/0 0/0 0/0 .text            setParam__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::setParam() {
    selectAction();
    srchActors();
    dComIfGp_getAttention();

    dComIfGp_getAttention()->getDistTable(0x28).mDistMax = daNpc_Seirei_Param_c::m.talk_dist;
    dComIfGp_getAttention()->getDistTable(0x28).mDistMaxRelease = daNpc_Seirei_Param_c::m.talk_dist;
    dComIfGp_getAttention()->getDistTable(0x27).mDistMax = daNpc_Seirei_Param_c::m.talk_dist;
    dComIfGp_getAttention()->getDistTable(0x27).mDistMaxRelease = daNpc_Seirei_Param_c::m.talk_dist;

    attention_info.distances[fopAc_attn_LOCK_e] = 39;
    attention_info.distances[fopAc_attn_TALK_e] = 39;
    attention_info.distances[fopAc_attn_SPEAK_e] = 39;

    if (getBitSW() != 0xFF && dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
        attention_info.flags = fopAc_AttnFlag_SPEAK_e;
    } else {
        attention_info.flags = 0;
    }

    mCcStts.SetWeight(daNpc_Seirei_Param_c::m.common.weight);
    mCylH = daNpc_Seirei_Param_c::m.common.height;
    mWallR = daNpc_Seirei_Param_c::m.common.width;
    mAttnFovY = daNpc_Seirei_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Seirei_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Seirei_Param_c::m.common.real_shadow_size;
    mExpressionMorfFrame = daNpc_Seirei_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Seirei_Param_c::m.common.morf_frame;
    gravity = daNpc_Seirei_Param_c::m.common.gravity;
}

/* 80AD6048-80AD6050 000A08 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__14daNpc_Seirei_cFv */
BOOL daNpc_Seirei_c::checkChangeEvt() {
    return FALSE;
}

/* 80AD6050-80AD6054 000A10 0004+00 1/1 0/0 0/0 .text            srchActors__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::srchActors() {
    /* empty function */
}

/* 80AD6054-80AD6154 000A14 0100+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_Seirei_cFv */
BOOL daNpc_Seirei_c::evtTalk() {
    if (chkAction(&daNpc_Seirei_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if(!dComIfGp_evmng_ChkPresentEnd()) {
                return TRUE;
            }

            mEvtNo = EVT_NO_RESPONSE;
            evtChange();
            return TRUE;
        }

        setAction(&daNpc_Seirei_c::talk);
    }

    return TRUE;
}

/* 80AD6154-80AD621C 000B14 00C8+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_Seirei_cFv */
BOOL daNpc_Seirei_c::evtCutProc() {
    s32 staffId = dComIfGp_getEventManager().getMyStaffId("Seirei", this, -1);

    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 2, 0, 0);
        
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return TRUE;
    }

    return FALSE;
}

/* 80AD621C-80AD62A4 000BDC 0088+00 1/0 0/0 0/0 .text            action__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::action() {
    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 80AD62A4-80AD6330 000C64 008C+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }

    if (arg0 != 0) {
        ctrlWaitAnm();
    }
}

/* 80AD6330-80AD6464 000CF0 0134+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::setAttnPos() {
    cXyz sp18;

    if (arg0 != 0) {
        setMtx();
        sp18.set(300.0f, 40.0f, 0.0f);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(JNT_HEAD));
        mDoMtx_stack_c::multVec(&sp18, &eyePos);
        sp18.set(0.0f, daNpc_Seirei_Param_c::m.common.attention_offset, 800.0f);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&sp18, &attention_info.position);
        attention_info.position += current.pos;
    } else {
        attention_info.position = current.pos;
        attention_info.position.y += daNpc_Seirei_Param_c::m.common.attention_offset - 350.0f;
        eyePos = attention_info.position;
    }

    setPrtcls();
}

/* 80AD6464-80AD646C 000E24 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_Seirei_cFv */
int daNpc_Seirei_c::drawDbgInfo() {
    return 0;
}

/* 80AD646C-80AD6604 000E2C 0198+00 1/0 0/0 0/0 .text afterSetMotionAnm__14daNpc_Seirei_cFiifi */
bool daNpc_Seirei_c::afterSetMotionAnm(int i_index, int i_mode, f32 param_3, int param_4) {
    static struct {
        int fileIdx;
        int arcIdx;
    } btkAnmData[2] = {
        {BTK_SEIA, SEIREI},
        {BTK_SEIA, SEIREI},
    };

    static struct {
        int fileIdx;
        int arcIdx;
    } brkAnmData[2] = {
        {BRK_SEIA, SEIREI},
        {BRK_SEIA, SEIREI},
    };

    J3DAnmTextureSRTKey* i_btk = NULL;
    J3DAnmTevRegKey* i_brk = NULL;

    if (btkAnmData[i_index].fileIdx != -1) {
        i_btk = getTexSRTKeyAnmP(l_resNameList[btkAnmData[i_index].arcIdx], btkAnmData[i_index].fileIdx);
    }

    if (i_btk != NULL) {
        if (mBtkAnm.getBtkAnm() == i_btk) {
            mAnmFlags |= ANM_PLAY_BTK;
        } else {
            if (setBtkAnm(i_btk, mpMorf[0]->getModel()->getModelData(), 1.0f, i_mode)) {
                mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
            }
        }
    }

    if (i_btk == NULL && btkAnmData[i_index].fileIdx != -1) {
        return false;
    }

    if (brkAnmData[i_index].fileIdx != -1) {
        i_brk = getTevRegKeyAnmP(l_resNameList[brkAnmData[i_index].arcIdx], brkAnmData[i_index].fileIdx);
    }

    if (i_brk != NULL) {
        if (mBrkAnm.getBrkAnm() == i_brk) {
            mAnmFlags |= ANM_PLAY_BRK;
        } else {
            if (setBrkAnm(i_brk, mpMorf[0]->getModel()->getModelData(), 1.0f, i_mode)) {
                mAnmFlags |= ANM_PLAY_BRK | ANM_PAUSE_BRK;
            }
        }
    }

    if (i_brk == NULL && brkAnmData[i_index].fileIdx != -1) {
        return false;
    }

    return true;
}

/* 80AD6604-80AD664C 000FC4 0048+00 1/1 0/0 0/0 .text            selectAction__14daNpc_Seirei_cFv */
BOOL daNpc_Seirei_c::selectAction() {
    mNextAction = NULL;
    mNextAction = &daNpc_Seirei_c::wait;
    return TRUE;
}

/* 80AD664C-80AD6678 00100C 002C+00 1/1 0/0 0/0 .text            chkAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i */
BOOL daNpc_Seirei_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80AD6678-80AD6720 001038 00A8+00 2/2 0/0 0/0 .text            setAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i */
BOOL daNpc_Seirei_c::setAction(actionFunc action) {
    mMode = MODE_EXIT;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = MODE_ENTER;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 80AD6720-80AD6808 0010E0 00E8+00 1/1 0/0 0/0 .text            ctrlWaitAnm__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::ctrlWaitAnm() {
    if (field_0xe60 != 0 && mMotionSeqMngr.getNo() == MOT_WAIT_A && field_0xe60 <= mMorfLoops) {
        field_0xe60 = 0;
    }

    if (field_0xe60 == 0) {
        if (mMotionSeqMngr.getNo() == MOT_WAIT_B) {
            if (mMotionSeqMngr.checkEndSequence()) {
                mMotionSeqMngr.setNo(MOT_WAIT_A, -1.0f, FALSE, 0);
                field_0xe60 = 3;
            }
        } else {
            mMotionSeqMngr.setNo(MOT_WAIT_B, -1.0f, FALSE, 0);
        }
    }
}

/* ############################################################################################## */
/* 80AD7D68-80AD7D78 0000C0 000E+02 0/1 0/0 0/0 .rodata          id1$4627 */
static u16 const id1[7] = {
    dPa_RM(ID_ZI_S_SEIA_SHIZUKU_A),
    dPa_RM(ID_ZI_S_SEIA_SHIZUKU_B),
    dPa_RM(ID_ZI_S_SEIA_SHIZUKU_C),
    dPa_RM(ID_ZI_S_SEIA_SHIZUKU_D),
    dPa_RM(ID_ZI_S_SEIA_SHIZUKU_E),
    dPa_RM(ID_ZI_S_SEIA_SHIZUKU_F),
    dPa_RM(ID_ZI_S_SEIA_SHIZUKU_G),
};

/* 80AD7D78-80AD7D88 0000D0 000E+02 0/1 0/0 0/0 .rodata          id2$4628 */
static u16 const id2[7] = {
    dPa_RM(ID_ZF_S_SEIREI00_SPRIT),
    dPa_RM(ID_ZF_S_SEIREI01_CIR),
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
    0xFFFF,
};

/* 80AD6808-80AD6A38 0011C8 0230+00 1/1 0/0 0/0 .text            setPrtcls__14daNpc_Seirei_cFv */
void daNpc_Seirei_c::setPrtcls() {
    cXyz i_pos;
    cXyz i_scale(1.0f, 1.0f, 1.0f);

    int i = 0;
    int j = 0;
    for (; i < 7; i++, j++) {
        if (arg0 != 0) {
            mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(JNT_SIZUKU));
            mDoMtx_stack_c::multVecZero(&i_pos);
            mPrtcls[j] = dComIfGp_particle_set(mPrtcls[j], id1[i], &i_pos, NULL, &i_scale);
        } else if (getBitSW() != 0xFF) {
            if (dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this)) && id2[i] != 0xFFFF) {
                i_pos = attention_info.position;
                mPrtcls[j] = dComIfGp_particle_set(mPrtcls[j], id2[i], &i_pos, &mCurAngle, &i_scale);
                mDoAud_seStartLevel(Z2SE_FAIRY_STAY, &i_pos, 0, 0);
            }
        }

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mPrtcls[j]);
        if (emitter != NULL) {
            emitter->setGlobalTranslation(i_pos.x, i_pos.y, i_pos.z);
        }
    }
}

/* 80AD6A38-80AD6ABC 0013F8 0084+00 1/1 0/0 0/0 .text            chkFirstMeeting__14daNpc_Seirei_cFv */
BOOL daNpc_Seirei_c::chkFirstMeeting() {
    switch (mType) {
        case TYPE_0:
            return daNpcT_chkEvtBit(153) == FALSE; // dSv_event_flag_c::F_0055 - Faron Woods - Received Vessel of Light from Faron spirit
        
        case TYPE_1:
            return daNpcT_chkEvtBit(221) == FALSE; // dSv_event_flag_c::F_0221 - Kakariko Village - Received vessel of light from spirit

        case TYPE_2:
            return daNpcT_chkEvtBit(67) == FALSE; // dSv_event_flag_c::M_034 - Cutscene - [cutscene: 19] Reunion with Ilia (After Lakebed Temple?)
    }

    return FALSE;
}

/* 80AD6ABC-80AD6C58 00147C 019C+00 1/0 0/0 0/0 .text            cutConversation__14daNpc_Seirei_cFi */
int daNpc_Seirei_c::cutConversation(int i_staffId) {
    BOOL rv = FALSE;
    int prm = -1;
    int timer = 0;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    piVar1 = dComIfGp_evmng_getMyIntegerP(i_staffId, "timer");
    if (piVar1 != NULL) {
        timer = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_staffId)) {
        switch (prm) {
            case 0:
                daNpcT_onTmpBit(11);
                dMeter2Info_setPauseStatus(3);
                mEventTimer = timer;
                break;
            
            case 1:
                initTalk(mFlowNodeNo, NULL);
                break;
        }
    }

    switch (prm) {
        case 0:
            if (mEventTimer != 0) {
                if (cLib_calcTimer(&mEventTimer) == 0) {
                    field_0xe80 = false;
                }
            } else {
                if (dComIfGp_getEventManager().getIsAddvance(i_staffId)) {
                    field_0xe80 = false;
                }
            }

            rv = field_0xe80 == false;
            break;
        
        case 1:
            field_0xe26 = false;

            if (talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;
    }

    return rv;
}

/* 80AD6C58-80AD6D30 001618 00D8+00 1/0 0/0 0/0 .text            wait__14daNpc_Seirei_cFPv */
int daNpc_Seirei_c::wait(void* param_1) {
    switch (mMode) {
        case MODE_ENTER:
        case MODE_INIT:
            mMode = MODE_RUN;
            // fallthrough
        case MODE_RUN:
            if (field_0xe80) {
                if (mType == TYPE_0) {
                    mEvtNo = EVT_CONVERSATION_ABOUT_YM;
                    field_0xe33 = true;
                } else {
                    mSpeakEvent = true;
                    field_0xe33 = true;
                }
            }

            if (arg0 == 0 && chkFirstMeeting() && getDoBtnChkFlag() && daNpcT_chkDoBtnIsSpeak(this)) {
                dComIfGp_setDoStatus(8, 0);
            }
            break;

        case MODE_EXIT:
            break;
    }

    return 1;
}

/* 80AD6D30-80AD6E5C 0016F0 012C+00 2/0 0/0 0/0 .text            talk__14daNpc_Seirei_cFPv */
int daNpc_Seirei_c::talk(void* param_1) {
    switch (mMode) {
        case MODE_ENTER:
        case MODE_INIT:
            initTalk(mFlowNodeNo, NULL);
            mMode = MODE_RUN;
            // fallthrough
        case MODE_RUN:
            if (talkProc(NULL, FALSE, NULL, FALSE)) {
                int i_itemNo;
                if ((mFlow.getEventId(&i_itemNo) & 0xFFFF) == 1) {
                    if (mItemPartnerId == fpcM_ERROR_PROCESS_ID_e) {
                        mItemPartnerId = fopAcM_createItemForPresentDemo(&current.pos, i_itemNo, 0, -1, -1, NULL, NULL);
                    }

                    if (fopAcM_IsExecuting(mItemPartnerId)) {
                        field_0xe80 = true;
                        mEvtNo = EVT_DEFAULT_GETITEM;
                        evtChange();
                    }
                } else if (mFlow.checkEndFlow()) {
                    dComIfGp_event_reset();
                    field_0xe80 = false;
                    mMode = MODE_EXIT;
                }
            }

            field_0xe26 = false;
            break;

        case MODE_EXIT:
            break;
    }

    return 0;
}

/* 80AD6E5C-80AD6E7C 00181C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Create__FPv */
static int daNpc_Seirei_Create(void* a_this) {
    return static_cast<daNpc_Seirei_c*>(a_this)->create();
}

/* 80AD6E7C-80AD6E9C 00183C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Delete__FPv */
static int daNpc_Seirei_Delete(void* a_this) {
    return static_cast<daNpc_Seirei_c*>(a_this)->Delete();
}

/* 80AD6E9C-80AD6EBC 00185C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Execute__FPv */
static int daNpc_Seirei_Execute(void* a_this) {
    return static_cast<daNpc_Seirei_c*>(a_this)->Execute();
}

/* 80AD6EBC-80AD6EDC 00187C 0020+00 1/0 0/0 0/0 .text            daNpc_Seirei_Draw__FPv */
static int daNpc_Seirei_Draw(void* a_this) {
    return static_cast<daNpc_Seirei_c*>(a_this)->Draw();
}

/* 80AD6EDC-80AD6EE4 00189C 0008+00 1/0 0/0 0/0 .text            daNpc_Seirei_IsDelete__FPv */
static int daNpc_Seirei_IsDelete(void* a_this) {
    return 1;
}

/* 80AD8104-80AD8108 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Seirei_Param_c l_HIO;

/* 80AD7F54-80AD7F74 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Seirei_MethodTable */
static actor_method_class daNpc_Seirei_MethodTable = {
    (process_method_func)daNpc_Seirei_Create,
    (process_method_func)daNpc_Seirei_Delete,
    (process_method_func)daNpc_Seirei_Execute,
    (process_method_func)daNpc_Seirei_IsDelete,
    (process_method_func)daNpc_Seirei_Draw,
};

/* 80AD7F74-80AD7FA4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SEIREI */
extern actor_process_profile_definition g_profile_NPC_SEIREI = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_SEIREI,           // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_Seirei_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  363,                       // mPriority
  &daNpc_Seirei_MethodTable, // sub_method
  0x00044000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};
