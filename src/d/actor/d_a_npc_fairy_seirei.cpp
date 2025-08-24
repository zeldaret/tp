/**
* @file d_a_npc_fairy_seirei.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_fairy_seirei.h"

/* ############################################################################################## */

/* 80541E80-80541E88 -00001 0008+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[1] = {
    {"", 0},
};

/* 80541E88-80541E90 -00001 0008+00 0/1 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    NULL,
};

/* 80541E90-80541E94 000030 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1,
    -1,
};

/* 80541E94-80541EA4 -00001 0010+00 0/0 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[4] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80541EA4-80541EC0 000044 001C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData = {
    -1, 0, 0, -1, 0, 0, 0,
};

/* 80541EC0-80541EDC 000060 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[1] = {
    {-1, 0, 0, -1, 0, 0, 0},
};

/* 80541EDC-80541EEC 00007C 0010+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[4] = {
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
};

/* 80541EEC-80541EFC 00008C 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
};

/* 80541EFC-80541F00 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__19daNpc_FairySeirei_c
 */
char* daNpc_FairySeirei_c::mCutNameList[1] = {
    "",
};

/* 80541F00-80541F0C 0000A0 000C+00 2/2 0/0 0/0 .data            mCutList__19daNpc_FairySeirei_c */
daNpc_FairySeirei_c::cutFunc daNpc_FairySeirei_c::mCutList[1] = {
    NULL,
};

/* 8053FF6C-8054006C 0000EC 0100+00 1/0 0/0 0/0 .text            __dt__19daNpc_FairySeirei_cFv */
daNpc_FairySeirei_c::~daNpc_FairySeirei_c() {
    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }
}

/* ############################################################################################## */

const f32 daNpc_FairySeirei_Param_c::m[37] = {
    600.0f, 0.0f, 1.0f, 4000.0f, 255.0f, 200.0f, 0.0f, 60.0f, 0.0f, 0.0f, 0.0f,   0.0f, 0.0f,
    0.0f,   0.0f, 0.0f, 0.0f,    0.0f,   0.0f,   0.0f, 0.0f,  0.0f, 0.0f, 0.0f,   0.0f, 0.0f,
    0.0f,   0.0f, 0.0f, 0.0f,    0.0f,   0.0f,   0.0f, 0.0f,  0.0f, 0.0f, 600.0f,
};

/* 8054006C-80540298 0001EC 022C+00 1/1 0/0 0/0 .text            create__19daNpc_FairySeirei_cFv */
int daNpc_FairySeirei_c::create() {
    fopAcM_SetupActor2(this, daNpc_FairySeirei_c, &l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList,
                       l_resNameList);
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;
    if (isDelete()) {
        return cPhs_ERROR_e;
    }
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mCcStts.Init(daNpc_FairySeirei_Param_c::m[4], 0, this);
    mCyl.Set(mCcDCyl);
    mCyl.SetStts(&mCcStts);
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    mGroundH = mAcch.GetGroundH();
    if (mGroundH != -1e9f) {
        setEnvTevColor();
        setRoomNo();
    }
    current.pos = home.pos;
    old.pos = home.pos;
    reset();
    mCreating = true;
    Execute();
    mCreating = false;
    return cPhs_COMPLEATE_e;
}

/* 80540298-805402CC 000418 0034+00 1/1 0/0 0/0 .text            Delete__19daNpc_FairySeirei_cFv */
int daNpc_FairySeirei_c::Delete() {
    this->~daNpc_FairySeirei_c();
    return 1;
}

/* 805402CC-805402EC 00044C 0020+00 2/2 0/0 0/0 .text            Execute__19daNpc_FairySeirei_cFv */
int daNpc_FairySeirei_c::Execute() {
    return execute();
}

/* 805402EC-805402F4 00046C 0008+00 1/1 0/0 0/0 .text            Draw__19daNpc_FairySeirei_cFv */
int daNpc_FairySeirei_c::Draw() {
    return 1;
}

/* 805402F4-80540334 000474 0040+00 1/1 0/0 0/0 .text            isDelete__19daNpc_FairySeirei_cFv
 */
int daNpc_FairySeirei_c::isDelete() {
    int ret = 0;
    if (daNpcT_chkEvtBit(0x1F9) == false) {
        ret = 1;
    }
    return ret;
}

/* ############################################################################################## */

/* 80540334-8054048C 0004B4 0158+00 1/1 0/0 0/0 .text            reset__19daNpc_FairySeirei_cFv */
void daNpc_FairySeirei_c::reset() {
    int iVar1 = (u8*)&field_0xFAC - (u8*)&mInitFunc;
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }
    initialize();
    memset(&mInitFunc, 0, iVar1);
    mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
    setAngle(home.angle.y);
}

/* 8054048C-8054059C 00060C 0110+00 1/0 0/0 0/0 .text            setParam__19daNpc_FairySeirei_cFv
 */
void daNpc_FairySeirei_c::setParam() {
    selectAction();
    srchActors();
    dComIfGp_getAttention()->getDistTable(0x28).mDistMax = daNpc_FairySeirei_Param_c::m[36];
    dComIfGp_getAttention()->getDistTable(0x28).mDistMaxRelease = daNpc_FairySeirei_Param_c::m[36];
    dComIfGp_getAttention()->getDistTable(0x27).mDistMax = daNpc_FairySeirei_Param_c::m[36];
    dComIfGp_getAttention()->getDistTable(0x27).mDistMaxRelease = daNpc_FairySeirei_Param_c::m[36];
    attention_info.distances[fopAc_attn_LOCK_e] = 0x27;
    attention_info.distances[fopAc_attn_TALK_e] = 0x27;
    attention_info.distances[fopAc_attn_SPEAK_e] = 0x27;
    attention_info.flags = 8;
    mCcStts.SetWeight(daNpc_FairySeirei_Param_c::m[4]);
    mCylH = daNpc_FairySeirei_Param_c::m[5];
    mWallR = daNpc_FairySeirei_Param_c::m[7];
    mAttnFovY = daNpc_FairySeirei_Param_c::m[20];
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_FairySeirei_Param_c::m[6]);
    mRealShadowSize = daNpc_FairySeirei_Param_c::m[3];
    mExpressionMorfFrame = daNpc_FairySeirei_Param_c::m[27];
    mMorfFrames = daNpc_FairySeirei_Param_c::m[17];
    gravity = daNpc_FairySeirei_Param_c::m[1];
}

/* 805405B0-805405B4 000730 0004+00 1/1 0/0 0/0 .text            srchActors__19daNpc_FairySeirei_cFv
 */
void daNpc_FairySeirei_c::srchActors() {
    /* empty function */
}

/* 805405B4-805406BC 000734 0108+00 1/0 0/0 0/0 .text            evtTalk__19daNpc_FairySeirei_cFv */
BOOL daNpc_FairySeirei_c::evtTalk() {
    if (chkAction(&daNpc_FairySeirei_c::talk)) {
        (this->*(mExecuteFunc))(0);
    } else {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return true;
            }
            dComIfGp_event_reset();
            return true;
        }
        setAction(&daNpc_FairySeirei_c::talk);
    }
    return true;
}

/* ############################################################################################## */

/* 805406BC-80540784 00083C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__19daNpc_FairySeirei_cFv
 */
BOOL daNpc_FairySeirei_c::evtCutProc() {
    dEvent_manager_c* temp_r31;
    s32 temp_r3;

    int staff_id = dComIfGp_getEventManager().getMyStaffId("Seirei", this, -1);
    if (staff_id != -1) {
        mStaffId = staff_id;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &mCutNameList[0], 1, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        return true;
    }
    return false;
}

/* 80540784-8054080C 000904 0088+00 1/0 0/0 0/0 .text            action__19daNpc_FairySeirei_cFv */
void daNpc_FairySeirei_c::action() {
    if (mInitFunc != NULL) {
        if (mExecuteFunc == mInitFunc) {
            (this->*(mExecuteFunc))(0);
        } else {
            setAction(mInitFunc);
        }
    }
}

/* 8054080C-80540884 00098C 0078+00 1/0 0/0 0/0 .text            beforeMove__19daNpc_FairySeirei_cFv
 */
void daNpc_FairySeirei_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80540884-80540988 000A04 0104+00 1/0 0/0 0/0 .text setCollision__19daNpc_FairySeirei_cFv */
void daNpc_FairySeirei_c::setCollision() {
    u32 var_r5;
    u32 var_r4;

    cXyz center;
    var_r5 = 0xd8fbfdff;
    var_r4 = 0x1f;
    if (mHide == 0) {
        if (dComIfGp_event_runCheck()) {
            var_r5 = 0;
            var_r4 = 0;
        }
        f32 height = mCylH;
        f32 radius = mWallR;
        center = current.pos;
        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(var_r5);
        mCyl.SetTgSPrm(var_r4);
        mCyl.OnTgNoHitMark();
        mCyl.SetH(height);
        mCyl.SetR(radius);
        mCyl.SetC(center);
        dComIfG_Ccsp()->Set(&mCyl);
    }
    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* ############################################################################################## */

/* 80540988-80540A30 000B08 00A8+00 1/0 0/0 0/0 .text            setAttnPos__19daNpc_FairySeirei_cFv
 */
void daNpc_FairySeirei_c::setAttnPos() {
    attention_info.position = current.pos;
    attention_info.position.y += daNpc_FairySeirei_Param_c::m[0] - 350.0f;
    eyePos = attention_info.position;
    setPrtcls();
    ptcl_se();
}

/* 80540A30-80540A38 000BB0 0008+00 1/0 0/0 0/0 .text drawDbgInfo__19daNpc_FairySeirei_cFv */
BOOL daNpc_FairySeirei_c::drawDbgInfo() {
    return false;
}

/* 80540A38-80540A80 000BB8 0048+00 1/1 0/0 0/0 .text selectAction__19daNpc_FairySeirei_cFv */
bool daNpc_FairySeirei_c::selectAction() {
    mInitFunc = NULL;
    mInitFunc = &daNpc_FairySeirei_c::wait;
    return true;
}

/* 80540A80-80540B28 000C00 00A8+00 2/2 0/0 0/0 .text
 * setAction__19daNpc_FairySeirei_cFM19daNpc_FairySeirei_cFPCvPvi_i */
bool daNpc_FairySeirei_c::setAction(actionFunc i_action) {
    mMode = 3;
    if (mExecuteFunc != NULL) {
        (this->*(mExecuteFunc))(0);
    }
    mMode = 0;
    mExecuteFunc = i_action;
    if (mExecuteFunc != NULL) {
        (this->*(mExecuteFunc))(0);
    }
    return true;
}

/* ############################################################################################## */

/* 80540B28-80540C54 000CA8 012C+00 1/1 0/0 0/0 .text            setPrtcls__19daNpc_FairySeirei_cFv
 */
void daNpc_FairySeirei_c::setPrtcls() {
    static u16 const id[3] = {
        0x8AA3,
        0x8AA4,
        0x8AA5,
    };

    cXyz loc;
    cXyz scale(1.0f, 1.0f, 1.0f);
    for (int i = 0; i < 3; i++) {
        loc = attention_info.position;
        loc.y -= 200.0f;
        mpEmitters[i] = dComIfGp_particle_set(mpEmitters[i], id[i], &loc, &mCurAngle, &scale);
        JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(mpEmitters[i]);
        if (emitter_p != NULL) {
            emitter_p->setGlobalTranslation(loc.x, loc.y, loc.z);
        }
    }
}

/* 80540C54-80540CC0 000DD4 006C+00 1/0 0/0 0/0 .text            wait__19daNpc_FairySeirei_cFi */
int daNpc_FairySeirei_c::wait(int param_0) {
    switch (mMode) {
    case 0:
    case 1:
        mMode = 2;
    case 2:
        if (daNpcT_chkDoBtnIsSpeak(this)) {
            dComIfGp_setDoStatus(8, 0);
        }
    case 3:
    default:
        break;
    }
    return 1;
}

/* 80540CC0-80540E10 000E40 0150+00 2/0 0/0 0/0 .text            talk__19daNpc_FairySeirei_cFi */
int daNpc_FairySeirei_c::talk(int param_0) {
    switch (mMode) {
    case 0:
    case 1:
        daNpcF_offTmpBit(0xB);
        initTalk(mFlowNodeNo, NULL);
        mMode = 2;

    case 2:
        if (talkProc(0, 0, NULL, 0)) {
            if (daNpcT_chkTmpBit(0xB)) {
                _to_FairyCave();
                return 0;
            }
            int itemNo;
            if ((int)mFlow.getEventId(&itemNo) == 1) {
                if (mItemPartnerId == fpcM_ERROR_PROCESS_ID_e) {
                    mItemPartnerId = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL,
                                                              NULL);
                }
                if (fopAcM_IsExecuting(mItemPartnerId)) {
                    mTalking = TRUE;
                    evtChange();
                }
            } else {
                if (mFlow.checkEndFlow()) {
                    dComIfGp_event_reset();
                    mTalking = FALSE;
                    mMode = 3;
                }
            }
        }
        field_0xe26 = FALSE;
        break;

    case 3:
    default:
        break;
    }
    return 0;
}

/* ############################################################################################## */

/* 80540E10-80540E78 000F90 0068+00 1/1 0/0 0/0 .text _to_FairyCave__19daNpc_FairySeirei_cFv */
void daNpc_FairySeirei_c::_to_FairyCave() {
    static const int sTempBit[4] = {
        0x79,
        0x7A,
        0x7B,
        0x7C,
    };

    daNpcT_onTmpBit(sTempBit[mType]);
    dStage_changeScene(getSeneNo(), 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
}

/* 80540E78-80540E98 000FF8 0020+00 1/0 0/0 0/0 .text            daNpc_FairySeirei_Create__FPv */
static int daNpc_FairySeirei_Create(void* i_this) {
    return static_cast<daNpc_FairySeirei_c*>(i_this)->create();
}

/* 80540E98-80540EB8 001018 0020+00 1/0 0/0 0/0 .text            daNpc_FairySeirei_Delete__FPv */
static int daNpc_FairySeirei_Delete(void* i_this) {
    return static_cast<daNpc_FairySeirei_c*>(i_this)->Delete();
}

/* 80540EB8-80540ED8 001038 0020+00 1/0 0/0 0/0 .text            daNpc_FairySeirei_Execute__FPv */
static int daNpc_FairySeirei_Execute(void* i_this) {
    return static_cast<daNpc_FairySeirei_c*>(i_this)->Execute();
}

/* 80540ED8-80540EF8 001058 0020+00 1/0 0/0 0/0 .text            daNpc_FairySeirei_Draw__FPv */
static int daNpc_FairySeirei_Draw(void* i_this) {
    return static_cast<daNpc_FairySeirei_c*>(i_this)->Draw();
}

/* 80540EF8-80540F00 001078 0008+00 1/0 0/0 0/0 .text            daNpc_FairySeirei_IsDelete__FPv */
static int daNpc_FairySeirei_IsDelete(void* i_this) {
    return 1;
}

/* ############################################################################################## */

/* 805420F4-805420F8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_FairySeirei_Param_c l_HIO;

/* 80541F30-80541F50 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_FairySeirei_MethodTable */
static actor_method_class daNpc_FairySeirei_MethodTable = {
    daNpc_FairySeirei_Create,   daNpc_FairySeirei_Delete, daNpc_FairySeirei_Execute,
    daNpc_FairySeirei_IsDelete, daNpc_FairySeirei_Draw,
};

extern actor_process_profile_definition g_profile_NPC_FAIRY_SEIREI = {
    fpcLy_CURRENT_e,                 // mLayerID
    7,                               // mListID
    fpcPi_CURRENT_e,                 // mListPrio
    PROC_NPC_FAIRY_SEIREI,           // mProcName
    &g_fpcLf_Method.base,            // sub_method
    sizeof(daNpc_FairySeirei_c),     // mSize
    0,                               // mSizeOther
    0,                               // mParameters
    &g_fopAc_Method.base,            // sub_method
    339,                             // mPriority
    &daNpc_FairySeirei_MethodTable,  // sub_method
    0x00044000,                      // mStatus
    fopAc_ACTOR_e,                   // mActorType
    fopAc_CULLBOX_CUSTOM_e,          // cullType
};
