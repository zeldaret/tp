/**
 * @file d_a_npc_maro.cpp
 * 
*/

#include "d/actor/d_a_npc_maro.h"
#include "d/actor/d_a_obj_itamato.h"
#include "d/actor/d_a_tag_push.h"
#include "d/d_com_static.h"
#include "d/d_item.h"
#include "d/d_timer.h"
#include "dol2asm.h"

//
// Declarations:
//

UNK_REL_DATA;

daNpc_Maro_c::actionFunc dummy_lit_4085() {
    return &daNpc_Maro_c::choccai;
}

/* 80564FBC-80564FCC 00002C 0010+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][2] = {
    {11, 1}, {5, 2},
};

/* 80564FCC-80565044 -00001 0078+00 0/1 0/0 0/0 .data            l_evtList */
daNpcT_evtData_c l_evtList[15] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
    {"NO_RESPONSE", 0},
    {"CONVERSATION_ABOUT_WOODSWD1", 9},
    {"CONVERSATION_ABOUT_WOODSWD2", 9},
    {"CONVERSATION_WITH_MARO1", 6},
    {"CONVERSATION_WITH_MARO2", 6},
    {"DEMO13_STB", 0},
    {"SURPRISE", 3},
    {"BREAK_ARROWTUTORIAL", 7},
    {"CONTINUE_ARROWTUTORIAL", 7},
    {"END_ARROWTUTORIAL", 7},
    {"CLEAR_ARROWTUTORIAL", 7},
    {"NOT_GONNA_LET_3", 6},
    {"TALK_TO_KAKASHI", 3},
};

/* 80565044-8056506C -00001 0028+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[10] = {
    "",
    "Maro",
    "Maro_TW",
    "Maro1",
    "Maro2",
    "Maro3",
    "Taro1",
    "Taro2",
    "Len1",
    "Besu1",
};

/* 8056506C-80565070 0000DC 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[3] = {1, 3, -1};

/* 80565070-80565074 0000E0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {1, 2, -1};

/* 80565074-80565078 0000E4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[4] = {1, 3, 4, -1};

/* 80565078-80565080 0000E8 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn3 */
static s8 l_loadResPtrn3[5] = {1, 2, 3, 4, -1};

/* 80565080-805650C4 -00001 0044+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[17] = {
    l_loadResPtrn2, l_loadResPtrn2, l_loadResPtrn0, l_loadResPtrn1,
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn2,
    l_loadResPtrn2, l_loadResPtrn0, l_loadResPtrn2, l_loadResPtrn2,
    l_loadResPtrn2, l_loadResPtrn2, l_loadResPtrn2, l_loadResPtrn2,
    l_loadResPtrn3,
};

/* 805650C4-805651DC 000134 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[10] = {
    {-1, 0, 0, 17, 2, 1, 1},
    {6, 0, 1, 18, 0, 1, 0},
    {7, 0, 3, 22, 0, 3, 0},
    {8, 0, 3, 23, 0, 3, 0},
    {6, 0, 3, 21, 0, 3, 0},
    {6, 0, 4, 10, 0, 4, 0},
    {6, 0, 5, 10, 0, 5, 0},
    {9, 2, 3, 24, 2, 3, 0},
    {7, 2, 4, 11, 2, 4, 0},
    {7, 2, 5, 11, 2, 5, 0},
};

/* 805651DC-805652F4 00024C 0118+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[10] = {
    {8, 2, 1, 14, 0, 1, 1, 0},
    {5, 2, 4, 14, 0, 1, 1, 0},
    {5, 2, 5, 14, 0, 1, 1, 0},
    {12, 0, 3, 14, 0, 1, 1, 0},
    {13, 0, 3, 17, 0, 3, 0, 0},
    {14, 0, 3, 18, 0, 3, 0, 0},
    {4, 0, 5, 14, 0, 1, 1, 0},
    {11, 2, 3, 14, 0, 1, 1, 0},
    {7, 0, 1, 14, 0, 1, 1, 0},
    {10, 2, 3, 14, 0, 1, 1, 0},
};

/* 805652F4-80565394 000364 00A0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[40] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 1}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {9, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80565394-80565424 000404 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[36] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80565424-80565468 -00001 0044+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Maro_c */
char* daNpc_Maro_c::mCutNameList[17] = {
    "",
    "CONVERSATION_ABOUT_PACHINKO",
    "CONVERSATION_ABOUT_WOODSWD",
    "SWDTUTORIAL",
    "HAIL",
    "FIND_MONKEY",
    "GIVEME_WOODSWD",
    "GET_WOODSWD",
    "CONVERSATION_WITH_MARO",
    "CACARICO_CONVERSATION",
    "SURPRISE",
    "ARROWTUTORIAL",
    "BOKIN_TALK",
    "MAROS_WHISPER",
    "TAG_PUSH1",
    "NOT_GONNA_LET",
    "TALK_TO_KAKASHI",
};

/* 80565528-805655F4 000598 00CC+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Maro_c */
daNpc_Maro_c::cutFunc daNpc_Maro_c::mCutList[17] = {
    NULL,
    &daNpc_Maro_c::cutConversationAboutPachinko,
    &daNpc_Maro_c::cutConversationAboutWoodSwd,
    &daNpc_Maro_c::cutSwdTutorial,
    &daNpc_Maro_c::cutHail,
    &daNpc_Maro_c::cutFindMonkey,
    &daNpc_Maro_c::cutGiveMeWoodSwd,
    &daNpc_Maro_c::cutGetWoodSwd,
    &daNpc_Maro_c::cutConversationWithMaro,
    &daNpc_Maro_c::cutCacaricoConversation,
    &daNpc_Maro_c::cutSurprise,
    &daNpc_Maro_c::cutArrowTutorial,
    &daNpc_Maro_c::cutBokinTalk,
    &daNpc_Maro_c::cutMarosWhisper,
    &daNpc_Maro_c::cutTagPush1,
    &daNpc_Maro_c::cutNotGonnaLet,
    &daNpc_Maro_c::cutTalkToKakashi,
};

/* 8055B58C-8055B6E0 0000EC 0154+00 1/0 0/0 0/0 .text            __dt__12daNpc_Maro_cFv */
daNpc_Maro_c::~daNpc_Maro_c() {
    deleteObject();
    if (field_0x10bc != 0xFFFFFFFF) {
        dComIfG_TimerDeleteRequest(0);
    }

    if (mpMorf[0] != 0) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* ############################################################################################## */
/* 80564BAC-80564C3C 000000 0090+00 15/15 0/0 0/0 .rodata          m__18daNpc_Maro_Param_c */
daNpc_Maro_Param_c::Data const daNpc_Maro_Param_c::m = {
    100.0f,
    -3.0f,
    1.0f,
    400.0f,
    /* 0x10 */ 255.0f,
    80.0f,
    35.0f,
    30.0f,
    /* 0x20 */ 0.0f,
    0.0f,
    10.0f,
    -10.0f,
    /* 0x30 */ 30.0f,
    -10.0f,
    30.0f,
    -30.0f,
    /* 0x40 */ 0.6f,
    12.0f,
    3, 6,
    5, 6,
    110.0f,
    0x00000000,
    0x00000000,
    0x00000000,
    0x003C0008,
    0x00000000,
    0x00000000,
    4.0f,
    0xC1700000,
    0x00000000,
    0xC1700000,
    0x41700000,
    0x41F00000,
    0x41700000,
    0x41F00000,
    0x00780000,
};

/* 8055B6E0-8055B9A8 000240 02C8+00 1/1 0/0 0/0 .text            create__12daNpc_Maro_cFv */
int daNpc_Maro_c::create() {
    static int const heapSize[17] = {
        13072, 13072, 0, 12896, 13088, 13088, 13088, 13072, 13072, 13088, 13072, 13072,
        13072, 13072, 13072, 13072, 0,
    };
    fopAcM_SetupActor2(this, daNpc_Maro_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4,
                       l_evtList, l_resNameList
    );
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();
    if (mType == 9) {
        mTwilight = 0;
    }

    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (isDelete()) {
            return cPhs_ERROR_e;
        }

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        reset();
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                        &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
                        fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Maro_Param_c::m.field_0x10, 0, this);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mCyl1.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = 1;
        Execute();
        mCreating = 0;
    }

    return rv;
}

/* 8055B9A8-8055BC2C 000508 0284+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Maro_cFv */
int daNpc_Maro_c::CreateHeap() {
    int bmd_get_idx;
    if (mTwilight == 1) {
        bmd_get_idx = 1;
    } else {
        bmd_get_idx = 0;
    }

    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[l_bmdData[bmd_get_idx][1]], l_bmdData[bmd_get_idx][0]));
    if (modelData == NULL) {
        return 0;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
        0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model->setUserArea((u32)this);
    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, 0)) {
        return 1;
    }

    return 0;
}

/* 8055BDE8-8055BE1C 000948 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Maro_cFv */
int daNpc_Maro_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Maro_c();
    return 1;
}

/* 8055BE1C-8055BF0C 00097C 00F0+00 2/2 0/0 0/0 .text            Execute__12daNpc_Maro_cFv */
int daNpc_Maro_c::Execute() {
    if (!mCreating && !checkShopOpen() && mActorMngr[5].getActorP() != NULL && mType == 7 && !field_0x1131) {
        initShopSystem();
        setSellItemMax(getMaxNumItem());
        field_0xf60 = -1;
        setMasterType(2);
        mShopCamAction.setCamDataIdx(NULL);
        mShopCamAction.setCamAction(NULL);
        field_0x1131 = 1;
    }

    daNpcT_c::execute();
    if (field_0x1131 && searchItemActor()) {
        mShopCamAction.move();
    }

    return 1;
}

/* 8055BF0C-8055BFA0 000A6C 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Maro_cFv */
int daNpc_Maro_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    return daNpcT_c::draw(0, 0, field_0xde8, NULL, 100.0f, 0, 0, 0);
}

/* 8055BFA0-8055BFC0 000B00 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Maro_cFP10fopAc_ac_c             */
int daNpc_Maro_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Maro_c*>(i_this)->CreateHeap();
}

/* 8055BFC0-8055C018 000B20 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Maro_cFP8J3DJointi                */
int daNpc_Maro_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Maro_c* i_this = reinterpret_cast<daNpc_Maro_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_0, model);
        }
    }

    return 1;
}

/* 8055C018-8055C0B4 000B78 009C+00 1/1 0/0 0/0 .text            srchArrow__12daNpc_Maro_cFPvPv */
void* daNpc_Maro_c::srchArrow(void* param_1, void* param_2) {
    if (mFindCount < 50 && param_1 != NULL && param_1 != param_2) {
        if (fopAcM_IsExecuting(fopAcM_GetID(param_1)) && fopAcM_GetName(param_1) == PROC_ARROW) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)param_1;
            mFindCount++;
        }
    }
    return NULL;
}

/* 8055C0B4-8055C1AC 000C14 00F8+00 1/1 0/0 0/0 .text            getArrowP__12daNpc_Maro_cFv */
fopAc_ac_c* daNpc_Maro_c::getArrowP() {
    fopAc_ac_c* pActor = NULL;
    f32 minDist = 1e9f;
    mFindCount = 0;
    fopAcM_Search(srchArrow, this);
    for (int i = 0; i < mFindCount; i++) {
        if (cM3d_IsZero(mFindActorPtrs[i]->speedF) == false &&
            fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < minDist)
        {
            minDist = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            pActor = mFindActorPtrs[i];
        }
    }
    return pActor;
}

/* 8055C1AC-8055C248 000D0C 009C+00 1/1 0/0 0/0 .text            srchItaMato__12daNpc_Maro_cFPvPv */
void* daNpc_Maro_c::srchItaMato(void* arg0, void* arg1) {
    fopAc_ac_c* fop1 = (fopAc_ac_c*) arg1;
    if (mFindCount < 50 && arg0 != NULL && arg0 != fop1) {
        if (fopAcM_IsExecuting(fopAcM_GetID(arg0)) && fopAcM_GetName(arg0) == PROC_OBJ_ITAMATO) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)arg0;
            mFindCount++;
        }
    }
    return NULL;
}

/* 8055C248-8055C330 000DA8 00E8+00 1/1 0/0 0/0 .text            getItaMatoP__12daNpc_Maro_cFi */
fopAc_ac_c* daNpc_Maro_c::getItaMatoP(int param_0) {
    fopAc_ac_c* pActor = NULL;
    f32 minDist = 1e9f;
    mFindCount = 0;
    fopAcM_Search(srchItaMato, this);
    for (int i = 0; i < mFindCount; i++) {
        if ( ((daObj_ItaMato_c*) mFindActorPtrs[i])->getNo() != param_0 ) {
            continue;
        }

        if (fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < minDist)
        {
            minDist = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            pActor = mFindActorPtrs[i];
        }
    }

    return pActor;
}

/* 8055C330-8055C3E0 000E90 00B0+00 2/1 0/0 0/0 .text            getType__12daNpc_Maro_cFv */
u8 daNpc_Maro_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        case 1:
            return TYPE_1;
        case 2:
            return TYPE_2;
        case 3:
            return TYPE_3;
        case 4:
            return TYPE_4;
        case 5:
            return TYPE_5;
        case 6:
            return TYPE_6;
        case 7:
            return TYPE_7;
        case 8:
            return TYPE_8;
        case 9:
            return TYPE_9;
        case 0xA:
            return TYPE_10;
        case 0xB:
            return TYPE_11;
        case 0xC:
            return TYPE_12;
        case 0xD:
            return TYPE_13;
        case 0xE:
            return TYPE_14;
        case 0xF:
            return TYPE_15;
        default:
            return TYPE_16;
    }
}

/* 8055C3E0-8055C614 000F40 0234+00 2/1 0/0 0/0 .text            isDelete__12daNpc_Maro_cFv */
int daNpc_Maro_c::isDelete() {
    switch (mType) {
        case 0: {
            return (!daNpcT_chkEvtBit(0x12) || daNpcT_chkEvtBit(0x1F));
        }

        case 1: {
            return !daNpcT_chkEvtBit(0x12);
        }

        case 2: {
            return true;
        }

        case 3: {
            return false;
        }

        case 4: {
            return (!daNpcT_chkEvtBit(0x3D) || daNpcT_chkEvtBit(0xA4));
        }

        case 5: {
            return (!daNpcT_chkEvtBit(0xA4) || daNpcT_chkEvtBit(0x35));
        }

        case 6: {
            return (!daNpcT_chkEvtBit(0x35) || daNpcT_chkEvtBit(0x55));
        }

        case 7: {
            return !daNpcT_chkEvtBit(0x55);
        }

        case 8: {
            return !daNpcT_chkEvtBit(0x40);
        }

        case 9: {
            return false;
        }

        case 0xA: {
            return daNpcT_chkEvtBit(0x13);
        }

        case 0xB: {
            return (!daNpcT_chkEvtBit(0x13) || daNpcT_chkEvtBit(0x12));
        }

        case 0xC: {
            return (!daNpcT_chkEvtBit(0x12) || daNpcT_chkEvtBit(0x25C));
        }

        case 0xD: {
            return false;
        }

        case 0xE: {
            return (!daNpcT_chkEvtBit(0x25C) || daNpcT_chkEvtBit(0x80));
        }

        case 0xF: {
            return (!daNpcT_chkEvtBit(0x80) || daNpcT_chkEvtBit(0x235));
        }

        default: {
            return false;
        }
    }
}

/* 8055C614-8055C834 001174 0220+00 1/1 0/0 0/0 .text            reset__12daNpc_Maro_cFv */
void daNpc_Maro_c::reset() {
    csXyz acStack_20;
    int iVar1 = (u8*)&field_0x113C - (u8*)&field_0x110c;
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    initialize();
    for (int i = 0; i < 9; i++) {
        mActorMngr[i].initialize();
    }

    memset(&field_0x110c, 0, iVar1);
    acStack_20.setall(0);
    acStack_20.y = home.angle.y;
    switch (mType) {
        case 0:{
            eventInfo.setIdx(0);
            break;
        }

        case 1: {
            mHide = !daNpcT_chkEvtBit(0x1F);
            eventInfo.setIdx(1);
            break;
        }

        case 0xB: {
            dComIfGs_setTmpReg(0xfbff, 0);
        }

        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF: {
            break;
        }
    }

    field_0x10bc = -1;
    daNpcT_offTmpBit(0x3C);
    daNpcT_offTmpBit(0x3F);
    daNpcT_offTmpBit(0x40);
    daNpcT_offTmpBit(0x41);
    daNpcT_offTmpBit(0x42);
    daNpcT_offTmpBit(0x64);
    setAngle(acStack_20);
}

/* 8055C834-8055C8B0 001394 007C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Maro_cFi */
void daNpc_Maro_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleX(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleZ(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleX(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleZ(0));
    }
}

/* 8055C8B0-8055CB14 001410 0264+00 1/0 0/0 0/0 .text            setParam__12daNpc_Maro_cFv */
void daNpc_Maro_c::setParam() {
    if (field_0x1130) {
        if (field_0x112c == 2) {
            mShopCamAction.Reset();
        } else {
            mShopCamAction.EventRecoverNotime();
        }

        field_0x1130 = 0;
    }

    selectAction();
    if (&daNpc_Maro_c::arrowTutorial == field_0x110c && field_0x10bc == 0xFFFFFFFF) {
        field_0x10bc = dTimer_createTimer(0, 60000, 0, 0, 210.0f, 410.0f, 32.0f, 419.0f);
    }

    srchActors();
    u32 uVar7 = 10;
    s16 sVar10 = daNpc_Maro_Param_c::m.field_0x48;
    s16 sVar9 = daNpc_Maro_Param_c::m.field_0x4a;
    s16 sVar8 = daNpc_Maro_Param_c::m.field_0x4c;
    s16 sVar7 = daNpc_Maro_Param_c::m.field_0x4e;
    if (&daNpc_Maro_c::swdTutorial == field_0x110c) {
        sVar10 = 11;
        sVar9 = 6;
        sVar8 = 15;
        sVar7 = 6;
        uVar7 = 0;
    } else if (mType == 11) {
        sVar10 = 7;
        sVar8 = 9;
    } else if (mType == 6) {
        sVar10 = 4;
        sVar8 = 6;
    } else if (&daNpc_Maro_c::talk_withTaro == field_0x110c) {
        sVar10 = 5;
        sVar9 = 4;
        sVar8 = 7;
        sVar7 = 4;
    }

    if (field_0x1131) {
        sVar10 = 5;
        sVar8 = 5;
    }

    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        if (sVar10 < 7) {
            sVar10 = 7;
        }

        if (sVar8 < 9) {
            sVar8 = 9;
        }
    }

    attention_info.distances[0] = daNpcT_getDistTableIdx(sVar8, sVar7);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(sVar10, sVar9);

    attention_info.flags = uVar7;
    scale.set(daNpc_Maro_Param_c::m.field_0x08, daNpc_Maro_Param_c::m.field_0x08,
            daNpc_Maro_Param_c::m.field_0x08);
    mCcStts.SetWeight(daNpc_Maro_Param_c::m.field_0x10);
    mCylH = daNpc_Maro_Param_c::m.field_0x14;
    mWallR = daNpc_Maro_Param_c::m.field_0x1c;
    mAttnFovY = daNpc_Maro_Param_c::m.field_0x50;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Maro_Param_c::m.field_0x18);
    field_0xde8 = daNpc_Maro_Param_c::m.field_0x0c;
    field_0xa80 = daNpc_Maro_Param_c::m.field_0x6c;
    mMorfFrames = daNpc_Maro_Param_c::m.field_0x44;
    gravity = daNpc_Maro_Param_c::m.field_0x04;
}

/* 8055CB14-8055CC9C 001674 0188+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Maro_c::talk)) {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 2;
                evtChange();
            }

            return true;
        }

        switch (mType) {
            case TYPE_1: {
                if (daNpcT_chkEvtBit(0x269)) {
                    mEvtNo = 6;
                } else {
                    mEvtNo = 5;
                }

                evtChange();
                return true;
            }

            case TYPE_2: {
                mEvtNo = 14;
                evtChange();
                return true;
            }

            case TYPE_11: {
                if (daNpcT_chkEvtBit(0x266) && checkItemGet(0x3F, 1) && !daNpcT_chkEvtBit(0x22)) {
                    mEvtNo = 4;
                } else {
                    mEvtNo = 3;
                }

                evtChange();
                return true;
            }

            case TYPE_0:
            case TYPE_3:
            case TYPE_4:
            case TYPE_5:
            case TYPE_6:
            case TYPE_7:
            case TYPE_8:
            case TYPE_9:
            case TYPE_10:
            case TYPE_12:
            case TYPE_13:
            case TYPE_14:
            case TYPE_15: {
                break;
            }
        }
    }

    return false;
}

/* 8055CC9C-8055CCD8 0017FC 003C+00 1/0 0/0 0/0 .text            evtEndProc__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::evtEndProc() {
    if (field_0x1138) {
        dCam_getBody()->CorrectCenter();
    }

    return 1;
}

/* 8055CCD8-8055CD74 001838 009C+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Maro_cFv */
void daNpc_Maro_c::setAfterTalkMotion() {
    int iVar2 = 9;
    switch(mFaceMotionSeqMngr.getNo()) {
        case 1:
            return;
        case 3:
            iVar2 = 7;
            break;
        case 4:
            iVar2 = 8;
            break;
    }

    mFaceMotionSeqMngr.setNo(iVar2, -1.0f, 0, 0);
}

/* 8055CD74-8055D0D8 0018D4 0364+00 2/1 0/0 0/0 .text            srchActors__12daNpc_Maro_cFv */
void daNpc_Maro_c::srchActors() {
    switch (mType) {
        case TYPE_0: {
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(0x241));
            }

            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(0x26E));
            }

            if (mActorMngr[2].getActorP() == NULL) {
                mActorMngr[2].entry(getNearestActorP(0x245));
            }

            if (mActorMngr[3].getActorP() == NULL) {
                mActorMngr[3].entry(getNearestActorP(0x25D));
            }
            break;
        }

        case TYPE_1: {
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(0x241));
            }

            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(0x26E));
            }
            break;
        }

        case TYPE_3: {
            if (mActorMngr[8].getActorP() == NULL) {
                mActorMngr[8].entry(getNearestActorP(0x250));
            }

            break;
        }

        case TYPE_8:
        case TYPE_7: {
            if (&daNpc_Maro_c::arrowTutorial == field_0x110c) {
                if (mActorMngr[1].getActorP() == NULL) {
                    mActorMngr[1].entry(getNearestActorP(0x26E));
                }

                if (mActorMngr[6].getActorP() == NULL) {
                    mActorMngr[6].entry(getEvtAreaTagP(11, 0));
                }
            }

            if (&daNpc_Maro_c::tend == field_0x110c && mActorMngr[5].getActorP() == NULL) {
                mActorMngr[5].entry(getShopItemTagP());
            }

            break;
        }

        case TYPE_10: {
            if (mActorMngr[2].getActorP() == NULL) {
                mActorMngr[2].entry(getNearestActorP(0x245));
            }

            break;
        }

        case TYPE_12: {
            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(0x26E));
            }

            if (mActorMngr[3].getActorP() == NULL) {
                mActorMngr[3].entry(getNearestActorP(0x25d));
            }

            if (mActorMngr[7].getActorP() == NULL) {
                mActorMngr[7].entry(getNearestActorP(0x264));
            }
            break;
        }

        case TYPE_13: {
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getNearestActorP(0x241));
            }

            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(0x26E));
            }

            if (mActorMngr[2].getActorP() == NULL) {
                mActorMngr[2].entry(getNearestActorP(0x245));
            }

            if (mActorMngr[3].getActorP() == NULL) {
                mActorMngr[3].entry(getNearestActorP(0x25D));
            }
            break;
        }

        case TYPE_4:
        case TYPE_5:
        case TYPE_6:
        case TYPE_9:
        case TYPE_11:
        case TYPE_14:
        case TYPE_15:
        case TYPE_2: {
            break;
        }
    }
}

/* 8055D0D8-8055D1F4 001C38 011C+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::evtTalk() {
    if (field_0x1131) {
        if (chkAction(&daNpc_Maro_c::shop)) {
            (this->*(field_0x1118))(NULL);
        } else {
            mShopCamAction.shop_cam_action_init();
            setAction(&daNpc_Maro_c::shop);
        }
    } else {
        if (chkAction(&daNpc_Maro_c::talk)) {
            (this->*(field_0x1118))(NULL);
        } else {
            setAction(&daNpc_Maro_c::talk);
        }
    }
    return 1;
}

/* 8055D1F4-8055D368 001D54 0174+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::evtCutProc() {
    int staff_id = dComIfGp_getEventManager().getMyStaffId("Maro", this, -1);
    if (staff_id != -1) {
        if (mStaffId == -1) {
            if (0 == strcmp(dComIfGp_getEventManager().getRunEventName(), "BREAK_ARROWTUTORIAL")
             || 0 == strcmp(dComIfGp_getEventManager().getRunEventName(), "CONTINUE_ARROWTUTORIAL")
             || 0 == strcmp(dComIfGp_getEventManager().getRunEventName(), "END_ARROWTUTORIAL")
             || 0 == strcmp(dComIfGp_getEventManager().getRunEventName(), "CLEAR_ARROWTUTORIAL")) {
                //
                field_0x1138 = 1;
            }
        }

        mStaffId = staff_id;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 17, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        return 1;
    }

    if (field_0x1131) {
        mShopCamAction.Save();
    }

    return 0;
}

/* 8055D368-8055D5C4 001EC8 025C+00 1/0 0/0 0/0 .text            action__12daNpc_Maro_cFv */
void daNpc_Maro_c::action() {
    fopAc_ac_c* actor_p = NULL;
    if (!mTwilight) {
        actor_p = hitChk(&mCyl1, -1);
    }

    if (actor_p != NULL && mType != 6) {
        mStagger.setParam(this, actor_p, mCurAngle.y);
        setDamage(0, 9, 0);
        mDamageTimerStart = 0;
        mJntAnm.lookNone(1);
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (dComIfGp_event_runCheck() == 0) {
        field_0x1138 = 0;
        if (daNpcT_chkTmpBit(0x3C)) {
            if (dComIfGs_getArrowNum() == 0) {
                if (field_0x1128 && (cLib_calcTimer(&field_0x1128) == 0 || getArrowP() == NULL)) {
                    field_0x1128 = 0;
                    field_0x1137 = 1;
                }
            } else {
                field_0x1128 = 30;
            }
        }
    }

    if (field_0x110c) {
        if (field_0x1118 == field_0x110c) {
            (this->*(field_0x1118))(NULL);
        } else {
            setAction(field_0x110c);
        }
    }

    actor_p = field_0xba0.getActorP();
    if (actor_p != NULL) {
        switch (((daTag_Push_c*) actor_p)->getId()) {
            case 5: {
                mEvtNo = 8;
            }
        }
    }
}

/* 8055D5C4-8055D688 002124 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Maro_cFv */
void daNpc_Maro_c::beforeMove() {
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_8000000);
    if (checkHide()) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_8000000);
    }
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 8055D688-8055D918 0021E8 0290+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Maro_cFv */
void daNpc_Maro_c::setAttnPos() {
    cXyz eyeOffset(0.0f, 0.0f, 30.0f);
    if (field_0x1133) {
        daPy_getPlayerActorClass()->onWolfEyeKeep();
    }

    mStagger.calc(0);
    f32 dVar8 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.setParam(
        this, mpMorf[0]->getModel(), &eyeOffset, getBackboneJointNo(), getNeckJointNo(),
        getHeadJointNo(), daNpc_Maro_Param_c::m.field_0x24, daNpc_Maro_Param_c::m.field_0x20,
        daNpc_Maro_Param_c::m.field_0x2c, daNpc_Maro_Param_c::m.field_0x28,
        daNpc_Maro_Param_c::m.field_0x34, daNpc_Maro_Param_c::m.field_0x30,
        daNpc_Maro_Param_c::m.field_0x3c, daNpc_Maro_Param_c::m.field_0x38,
        daNpc_Maro_Param_c::m.field_0x40, 0.0f, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, (float)dVar8);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 0, 1.0f, 0);
    eyeOffset.set(0.0f, 0.0f, 0.0f);
    eyeOffset.y = daNpc_Maro_Param_c::m.field_0x00;
    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyeOffset);
    attention_info.position = current.pos + eyeOffset;
}

/* 8055D918-8055DA70 002478 0158+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Maro_cFv */
void daNpc_Maro_c::setCollision() {
    cXyz cStack_48;
    if (!mHide) {
        int tgType = 0xd8fbfdff;
        int tgSPrm = 0x1f;
        if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mStagger.checkStagger()) {
            tgType = 0;
            tgSPrm = 0;
        }
        mCyl1.SetCoSPrm(0x79);
        mCyl1.SetTgType(tgType);
        mCyl1.SetTgSPrm(tgSPrm);
        mCyl1.OnTgNoHitMark();
        cStack_48.set(0.0f, 0.0f, 0.0f);
        f32 cylH = mCylH;
        f32 wallR = mWallR;
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&cStack_48, &cStack_48);
        cStack_48 += current.pos;
        mCyl1.SetH(cylH);
        mCyl1.SetR(wallR);
        mCyl1.SetC(cStack_48);
        dComIfG_Ccsp()->Set(&mCyl1);
    }

    mCyl1.ClrCoHit();
    mCyl1.ClrTgHit();
}

/* 8055DA70-8055DA78 0025D0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::drawDbgInfo() {
    return FALSE;
}

/* 8055DA78-8055DAD8 0025D8 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Maro_cFv */
void daNpc_Maro_c::drawOtherMdl() {
    if (field_0x1131) {
        cXyz my_vec;
        itemRotate();
        my_vec.set(0.0f, 0.0f, 0.0f);
        itemZoom(&my_vec);
        drawCursor();
    }
}

/* 8055DAD8-8055DB64 002638 008C+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__12daNpc_Maro_cF26daNpcT_faceMotionAnmData_c */
 daNpcT_faceMotionAnmData_c daNpc_Maro_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
    daNpcT_faceMotionAnmData_c rv = param_0;
    if (mTwilight != TYPE_0 && rv.mBtpFileIdx == 17) {
        rv.mBtpFileIdx = 11;
        rv.mBtpArcIdx = 2;
    }
    return rv;
}

/* 8055DB64-8055DBF0 0026C4 008C+00 1/0 0/0 0/0 .text
 * getMotionAnm__12daNpc_Maro_cF22daNpcT_motionAnmData_c        */
 daNpcT_motionAnmData_c daNpc_Maro_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
    daNpcT_motionAnmData_c rv = param_0;
    if (mTwilight && rv.mBtkFileIdx == 14) {
        rv.mBtkFileIdx = 8;
        rv.mBtkArcIdx = 2;
    }
    return rv;
}

/* 8055DBF0-8055DD08 002750 0118+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Maro_cFv */
int daNpc_Maro_c::selectAction() {
    field_0x110c = NULL;
    switch (mType) {
        case 7: {
            field_0x110c = &daNpc_Maro_c::tend;
            break;
        }

        case 8: {
            field_0x110c = &daNpc_Maro_c::arrowTutorial;
            break;
        }

        case 13: {
            if ((u8)daNpcKakashi_chkSwdTutorialStage()) {
                field_0x110c = &daNpc_Maro_c::swdTutorial;
            } else {
                field_0x110c = &daNpc_Maro_c::wait;
            }

            break;
        }

        default: {
            field_0x110c = &daNpc_Maro_c::wait;
            break;
        }
    }

    return 1;
}

/* 8055DD08-8055DD34 002868 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i          */
int daNpc_Maro_c::chkAction(int (daNpc_Maro_c::*param_0)(void*)) {
    return field_0x1118 == param_0;
}

/* 8055DD34-8055DDDC 002894 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i          */
int daNpc_Maro_c::setAction(int (daNpc_Maro_c::*action)(void*)) {
    mMode = MODE_EXIT;
    if (field_0x1118 != NULL) {
        (this->*(field_0x1118))(NULL);
    }
    mMode = MODE_ENTER;
    field_0x1118 = action;
    if (field_0x1118 != NULL) {
        (this->*(field_0x1118))(NULL);
    }
    return 1;
}

/* ############################################################################################## */
/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80564F73 = "prm";
#pragma pop

/* 8055DDDC-8055DF7C 00293C 01A0+00 1/0 0/0 0/0 .text
 * cutConversationAboutPachinko__12daNpc_Maro_cFi               */
int daNpc_Maro_c::cutConversationAboutPachinko(int param_0) {
    // NONMATCHING
}

/* 8055DF7C-8055E124 002ADC 01A8+00 1/0 0/0 0/0 .text
 * cutConversationAboutWoodSwd__12daNpc_Maro_cFi                */
int daNpc_Maro_c::cutConversationAboutWoodSwd(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CE4-80564CEC 000138 0008+00 0/3 0/0 0/0 .rodata          @5456 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5456[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CE4, &lit_5456);
#pragma pop

/* 80564CEC-80564CF4 000140 0008+00 0/3 0/0 0/0 .rodata          @5457 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5457[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CEC, &lit_5457);
#pragma pop

/* 80564CF4-80564CFC 000148 0008+00 0/3 0/0 0/0 .rodata          @5458 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5458[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CF4, &lit_5458);
#pragma pop

/* 80564CFC-80564D00 000150 0004+00 1/1 0/0 0/0 .rodata          @5731 */
SECTION_RODATA static f32 const lit_5731 = 30.0f;
COMPILER_STRIP_GATE(0x80564CFC, &lit_5731);

/* 8055E124-8055E414 002C84 02F0+00 1/0 0/0 0/0 .text            cutSwdTutorial__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutSwdTutorial(int param_0) {
    // NONMATCHING
}

/* 8055E414-8055E578 002F74 0164+00 1/0 0/0 0/0 .text            cutHail__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutHail(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D00-80564D04 000154 0004+00 0/1 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5888 = 50.0f;
COMPILER_STRIP_GATE(0x80564D00, &lit_5888);
#pragma pop

/* 80564D04-80564D08 000158 0004+00 0/1 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5889 = 10.0f;
COMPILER_STRIP_GATE(0x80564D04, &lit_5889);
#pragma pop

/* 80564D08-80564D0C 00015C 0004+00 0/1 0/0 0/0 .rodata          @5890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5890 = 0.5f;
COMPILER_STRIP_GATE(0x80564D08, &lit_5890);
#pragma pop

/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80564F77 = "timer";
#pragma pop

/* 8055E578-8055E968 0030D8 03F0+00 1/0 0/0 0/0 .text            cutFindMonkey__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutFindMonkey(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D0C-80564D10 000160 0004+00 0/1 0/0 0/0 .rodata          @5995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5995 = -718.0f;
COMPILER_STRIP_GATE(0x80564D0C, &lit_5995);
#pragma pop

/* 80564D10-80564D14 000164 0004+00 0/1 0/0 0/0 .rodata          @5996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5996 = 1331.0f;
COMPILER_STRIP_GATE(0x80564D10, &lit_5996);
#pragma pop

/* 80564D14-80564D18 000168 0004+00 0/1 0/0 0/0 .rodata          @5997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5997 = -2139.0f;
COMPILER_STRIP_GATE(0x80564D14, &lit_5997);
#pragma pop

/* 80564D18-80564D1C 00016C 0004+00 0/1 0/0 0/0 .rodata          @5998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5998 = -511.0f;
COMPILER_STRIP_GATE(0x80564D18, &lit_5998);
#pragma pop

/* 80564D1C-80564D20 000170 0004+00 0/1 0/0 0/0 .rodata          @5999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5999 = 1370.0f;
COMPILER_STRIP_GATE(0x80564D1C, &lit_5999);
#pragma pop

/* 80564D20-80564D24 000174 0004+00 0/1 0/0 0/0 .rodata          @6000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6000 = -2153.0f;
COMPILER_STRIP_GATE(0x80564D20, &lit_6000);
#pragma pop

/* 80564D24-80564D28 000178 0004+00 1/4 0/0 0/0 .rodata          @6001 */
SECTION_RODATA static f32 const lit_6001 = -40.0f;
COMPILER_STRIP_GATE(0x80564D24, &lit_6001);

/* 8055E968-8055ECF4 0034C8 038C+00 1/0 0/0 0/0 .text            cutGiveMeWoodSwd__12daNpc_Maro_cFi
 */
int daNpc_Maro_c::cutGiveMeWoodSwd(int param_0) {
    // NONMATCHING
}

extern "C" void cutGetWoodSwd__12daNpc_Maro_cFi();
/* 80565768-80565798 -00001 0030+00 1/1 0/0 0/0 .data            @6228 */
SECTION_DATA static void* lit_6228[12] = {
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x368),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x3A8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x448),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x448),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x4E8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7A4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7E0),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7E0),
};

/* 80565798-805657C8 -00001 0030+00 1/1 0/0 0/0 .data            @6227 */
SECTION_DATA static void* lit_6227[12] = {
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0xB8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x114),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x1BC),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x1C8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x268),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x2C8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x340),
};

/* 8055ECF4-8055F508 003854 0814+00 3/0 0/0 0/0 .text            cutGetWoodSwd__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutGetWoodSwd(int param_0) {
    // NONMATCHING
}

/* 8055F508-8055F634 004068 012C+00 1/0 0/0 0/0 .text cutConversationWithMaro__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutConversationWithMaro(int param_0) {
    // NONMATCHING
}

/* 8055F634-8055F82C 004194 01F8+00 1/0 0/0 0/0 .text cutCacaricoConversation__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutCacaricoConversation(int param_0) {
    // NONMATCHING
}

/* 8055F82C-8055FAF0 00438C 02C4+00 1/0 0/0 0/0 .text            cutSurprise__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutSurprise(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D28-80564D2C 00017C 0004+00 0/0 0/0 0/0 .rodata          @6226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6226 = 1600.0f;
COMPILER_STRIP_GATE(0x80564D28, &lit_6226);
#pragma pop

/* 80564D2C-80564D34 000180 0008+00 0/0 0/0 0/0 .rodata          @6272 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6272[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80564D2C, &lit_6272);
#pragma pop

/* 80564D34-80564D3C 000188 0008+00 0/1 0/0 0/0 .rodata          @6425 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6425[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564D34, &lit_6425);
#pragma pop

/* 80564D3C-80564D48 000190 000C+00 0/1 0/0 0/0 .rodata          @6485 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6485[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80564D3C, &lit_6485);
#pragma pop

/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80564F7D = "msgNo";
SECTION_DEAD static char const* const stringBase_80564F83 = "msgNo2";
SECTION_DEAD static char const* const stringBase_80564F8A = "send";
#pragma pop

extern "C" void cutArrowTutorial__12daNpc_Maro_cFi();
/* 805657C8-80565940 -00001 0178+00 1/1 0/0 0/0 .data            @7029 */
SECTION_DATA static void* lit_7029[94] = {
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB7C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB98),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xC58),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xD7C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xC58),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xC58),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xD98),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x14B0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1530),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xDCC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE0C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE14),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE2C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB98),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE60),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xEF4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x154C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x15E0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xEFC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xF30),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xFB0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xFB0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x15E8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x107C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1530),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16B0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x12F8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1300),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1334),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x13A0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1468),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x14A8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE60),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xFB0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB7C),
};

/* 80565940-80565AB8 -00001 0178+00 1/1 0/0 0/0 .data            @7028 */
SECTION_DATA static void* lit_7028[94] = {
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x19C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1CC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1EC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x234),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x9D8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x9E8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x27C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x2EC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x3A8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x3B0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x44C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x4DC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x51C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xA94),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xAD4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x564),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x604),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB1C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x618),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x664),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x700),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB34),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x714),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x72C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x740),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x7C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x7DC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x938),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
};

/* 8055FAF0-805611E0 004650 16F0+00 3/0 0/0 0/0 .text            cutArrowTutorial__12daNpc_Maro_cFi
 */
int daNpc_Maro_c::cutArrowTutorial(int param_0) {
    // NONMATCHING
}

/* 805611E0-80561328 005D40 0148+00 1/0 0/0 0/0 .text            cutBokinTalk__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutBokinTalk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D48-80564D4C 00019C 0004+00 1/1 0/0 0/0 .rodata          @7191 */
SECTION_RODATA static f32 const lit_7191 = 40.0f;
COMPILER_STRIP_GATE(0x80564D48, &lit_7191);

/* 80561328-80561614 005E88 02EC+00 1/0 0/0 0/0 .text            cutMarosWhisper__12daNpc_Maro_cFi
 */
int daNpc_Maro_c::cutMarosWhisper(int param_0) {
    // NONMATCHING
}

/* 80561614-8056178C 006174 0178+00 1/0 0/0 0/0 .text            cutTagPush1__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutTagPush1(int param_0) {
    // NONMATCHING
}

extern "C" void cutNotGonnaLet__12daNpc_Maro_cFi();
/* 80565AB8-80565B38 -00001 0080+00 1/1 0/0 0/0 .data            @7426 */
SECTION_DATA static void* lit_7426[32] = {
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x5BC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x5D8),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x5E0),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6A0),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6BC),
};

/* 80565B38-80565BB8 -00001 0080+00 1/1 0/0 0/0 .data            @7425 */
SECTION_DATA static void* lit_7425[32] = {
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x90),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0xA4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x1DC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x218),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x2EC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x424),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x4E0),
};

/* 8056178C-80561E70 0062EC 06E4+00 3/0 0/0 0/0 .text            cutNotGonnaLet__12daNpc_Maro_cFi */
int daNpc_Maro_c::cutNotGonnaLet(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D4C-80564D50 0001A0 0004+00 0/1 0/0 0/0 .rodata          @7496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7496 = 70.0f;
COMPILER_STRIP_GATE(0x80564D4C, &lit_7496);
#pragma pop

/* 80564D50-80564D54 0001A4 0004+00 0/1 0/0 0/0 .rodata          @7497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7497 = 500.0f;
COMPILER_STRIP_GATE(0x80564D50, &lit_7497);
#pragma pop

/* 80564D54-80564D58 0001A8 0004+00 0/1 0/0 0/0 .rodata          @7498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7498 = 150.0f;
COMPILER_STRIP_GATE(0x80564D54, &lit_7498);
#pragma pop

/* 80561E70-80562174 0069D0 0304+00 1/0 0/0 0/0 .text            cutTalkToKakashi__12daNpc_Maro_cFi
 */
int daNpc_Maro_c::cutTalkToKakashi(int param_0) {
    // NONMATCHING
}

/* 80562174-805629A4 006CD4 0830+00 2/0 0/0 0/0 .text            wait__12daNpc_Maro_cFPv */
int daNpc_Maro_c::wait(void* param_0) {
    // NONMATCHING
}

/* 805629A4-80562B14 007504 0170+00 2/0 0/0 0/0 .text            swdTutorial__12daNpc_Maro_cFPv */
int daNpc_Maro_c::swdTutorial(void* param_0) {
    // NONMATCHING
}

/* 80562B14-80562CA4 007674 0190+00 1/0 0/0 0/0 .text            talk_withTaro__12daNpc_Maro_cFPv */
int daNpc_Maro_c::talk_withTaro(void* param_0) {
    // NONMATCHING
}

/* 80562CA4-80562EC8 007804 0224+00 1/0 0/0 2/0 .text            choccai__12daNpc_Maro_cFPv */
int daNpc_Maro_c::choccai(void* param_0) {
    // NONMATCHING
}

/* 80562EC8-8056319C 007A28 02D4+00 2/0 0/0 0/0 .text            tend__12daNpc_Maro_cFPv */
int daNpc_Maro_c::tend(void* param_0) {
    // NONMATCHING
}

/* 8056319C-8056342C 007CFC 0290+00 3/0 0/0 0/0 .text            arrowTutorial__12daNpc_Maro_cFPv */
int daNpc_Maro_c::arrowTutorial(void* param_0) {
    // NONMATCHING
}

/* 8056342C-80563660 007F8C 0234+00 3/0 0/0 0/0 .text            talk__12daNpc_Maro_cFPv */
int daNpc_Maro_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80563660-80563780 0081C0 0120+00 2/0 0/0 0/0 .text            shop__12daNpc_Maro_cFPv */
int daNpc_Maro_c::shop(void* param_0) {
    // NONMATCHING
}

/* 80563780-805637A0 0082E0 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Create__FPv */
static int daNpc_Maro_Create(void* param_0) {
    // NONMATCHING
}

/* 805637A0-805637C0 008300 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Delete__FPv */
static int daNpc_Maro_Delete(void* param_0) {
    // NONMATCHING
}

/* 805637C0-805637E0 008320 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Execute__FPv */
static int daNpc_Maro_Execute(void* param_0) {
    // NONMATCHING
}

/* 805637E0-80563800 008340 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Draw__FPv */
static int daNpc_Maro_Draw(void* param_0) {
    // NONMATCHING
}

/* 80563800-80563808 008360 0008+00 1/0 0/0 0/0 .text            daNpc_Maro_IsDelete__FPv */
static bool daNpc_Maro_IsDelete(void* param_0) {
    return true;
}

/* 80565D94-80565D98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Maro_Param_c l_HIO;

/* 80564970-80564978 0094D0 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Maro_cFv */
s32 daNpc_Maro_c::getEyeballMaterialNo() {
    return 1;
}

/* 80564978-80564980 0094D8 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Maro_cFv */
s32 daNpc_Maro_c::getHeadJointNo() {
    return 4;
}

/* 80564980-80564988 0094E0 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Maro_cFv */
s32 daNpc_Maro_c::getNeckJointNo() {
    return 3;
}

/* 80564988-80564990 0094E8 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Maro_cFv */
s32 daNpc_Maro_c::getBackboneJointNo() {
    return 1;
}

/* 80564990-805649A0 0094F0 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Maro_cFi
 */
BOOL daNpc_Maro_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 805649A0-805649B0 009500 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Maro_cFi
 */
BOOL daNpc_Maro_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80565BB8-80565BD8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Maro_MethodTable */
static actor_method_class daNpc_Maro_MethodTable = {
    (process_method_func)daNpc_Maro_Create,
    (process_method_func)daNpc_Maro_Delete,
    (process_method_func)daNpc_Maro_Execute,
    (process_method_func)daNpc_Maro_IsDelete,
    (process_method_func)daNpc_Maro_Draw,
};

/* 80565BD8-80565C08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MARO */
extern actor_process_profile_definition g_profile_NPC_MARO = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_MARO,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Maro_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  353,                     // mPriority
  &daNpc_Maro_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
