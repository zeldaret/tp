/**
 * @file d_a_npc_maro.cpp
 * 
*/

#include "d/actor/d_a_npc_maro.h"
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
    0xC0400000,
    0x3F800000,
    400.0f,
    /* 0x10 */ 255.0f,
    0x42A00000,
    0x420C0000,
    0x41F00000,
    0x00000000,
    0x00000000,
    0x41200000,
    0xC1200000,
    0x41F00000,
    0xC1200000,
    0x41F00000,
    0xC1F00000,
    0x3F19999A,
    0x41400000,
    0x00030006,
    0x00050006,
    0x42DC0000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x003C0008,
    0x00000000,
    0x00000000,
    0x40800000,
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
void daNpc_Maro_c::srchItaMato(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8055C248-8055C330 000DA8 00E8+00 1/1 0/0 0/0 .text            getItaMatoP__12daNpc_Maro_cFi */
void daNpc_Maro_c::getItaMatoP(int param_0) {
    // NONMATCHING
}

extern "C" void getType__12daNpc_Maro_cFv();
/* 805655F4-80565634 -00001 0040+00 1/1 0/0 0/0 .data            @4874 */
SECTION_DATA static void* lit_4874[16] = {
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x28),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x30),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x38),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x40),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x48),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x50),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x58),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x60),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x68),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x70),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x78),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x80),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x88),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x90),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x98),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0xA0),
};

/* 8055C330-8055C3E0 000E90 00B0+00 2/1 0/0 0/0 .text            getType__12daNpc_Maro_cFv */
u8 daNpc_Maro_c::getType() {
    // NONMATCHING
}

extern "C" void isDelete__12daNpc_Maro_cFv();
/* 80565634-80565674 -00001 0040+00 1/1 0/0 0/0 .data            @4915 */
SECTION_DATA static void* lit_4915[16] = {
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x34),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x64),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x78),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x80),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x88),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0xB8),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0xE8),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x118),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x12C),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x140),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x148),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x154),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x184),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x1B4),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x1BC),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x1EC),
};

/* 8055C3E0-8055C614 000F40 0234+00 2/1 0/0 0/0 .text            isDelete__12daNpc_Maro_cFv */
int daNpc_Maro_c::isDelete() {
    // NONMATCHING
}

/* 8055C614-8055C834 001174 0220+00 1/1 0/0 0/0 .text            reset__12daNpc_Maro_cFv */
void daNpc_Maro_c::reset() {
    // NONMATCHING
}

/* 8055C834-8055C8B0 001394 007C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Maro_cFi */
void daNpc_Maro_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CBC-80564CC0 000110 0004+00 0/1 0/0 0/0 .rodata          @5050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5050 = 210.0f;
COMPILER_STRIP_GATE(0x80564CBC, &lit_5050);
#pragma pop

/* 80564CC0-80564CC4 000114 0004+00 0/1 0/0 0/0 .rodata          @5051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5051 = 410.0f;
COMPILER_STRIP_GATE(0x80564CC0, &lit_5051);
#pragma pop

/* 80564CC4-80564CC8 000118 0004+00 0/1 0/0 0/0 .rodata          @5052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5052 = 32.0f;
COMPILER_STRIP_GATE(0x80564CC4, &lit_5052);
#pragma pop

/* 80564CC8-80564CCC 00011C 0004+00 0/1 0/0 0/0 .rodata          @5053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5053 = 419.0f;
COMPILER_STRIP_GATE(0x80564CC8, &lit_5053);
#pragma pop

/* 8055C8B0-8055CB14 001410 0264+00 1/0 0/0 0/0 .text            setParam__12daNpc_Maro_cFv */
void daNpc_Maro_c::setParam() {
    // NONMATCHING
}

/* 8055CB14-8055CC9C 001674 0188+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::checkChangeEvt() {
    // NONMATCHING
}

/* 8055CC9C-8055CCD8 0017FC 003C+00 1/0 0/0 0/0 .text            evtEndProc__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::evtEndProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CCC-80564CD0 000120 0004+00 10/14 0/0 0/0 .rodata          @5128 */
SECTION_RODATA static f32 const lit_5128 = -1.0f;
COMPILER_STRIP_GATE(0x80564CCC, &lit_5128);

/* 8055CCD8-8055CD74 001838 009C+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Maro_cFv */
void daNpc_Maro_c::setAfterTalkMotion() {
    // NONMATCHING
}

extern "C" void arrowTutorial__12daNpc_Maro_cFPv();
/* 80565674-80565680 -00001 000C+00 0/1 0/0 0/0 .data            @4995 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4995[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)arrowTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

extern "C" void swdTutorial__12daNpc_Maro_cFPv();
/* 80565680-8056568C -00001 000C+00 0/1 0/0 0/0 .data            @5000 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5000[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

extern "C" void talk_withTaro__12daNpc_Maro_cFPv();
/* 8056568C-80565698 -00001 000C+00 0/1 0/0 0/0 .data            @5010 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5010[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk_withTaro__12daNpc_Maro_cFPv,
};
#pragma pop

extern "C" void talk__12daNpc_Maro_cFPv();
/* 80565698-805656A4 -00001 000C+00 1/1 0/0 0/0 .data            @5060 */
SECTION_DATA static void* lit_5060[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Maro_cFPv,
};

/* 805656A4-805656B0 -00001 000C+00 1/1 0/0 0/0 .data            @5156 */
SECTION_DATA static void* lit_5156[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)arrowTutorial__12daNpc_Maro_cFPv,
};

extern "C" void tend__12daNpc_Maro_cFPv();
/* 805656B0-805656BC -00001 000C+00 1/1 0/0 0/0 .data            @5163 */
SECTION_DATA static void* lit_5163[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_Maro_cFPv,
};

extern "C" void srchActors__12daNpc_Maro_cFv();
/* 805656BC-805656FC -00001 0040+00 1/1 0/0 0/0 .data            @5193 */
SECTION_DATA static void* lit_5193[16] = {
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x38),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0xDC),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x130),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x15C),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x15C),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x208),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x234),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x2B0),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
};

/* 8055CD74-8055D0D8 0018D4 0364+00 2/1 0/0 0/0 .text            srchActors__12daNpc_Maro_cFv */
void daNpc_Maro_c::srchActors() {
    // NONMATCHING
}

extern "C" void shop__12daNpc_Maro_cFPv();
/* 805656FC-80565708 -00001 000C+00 0/1 0/0 0/0 .data            @5199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565708-80565714 -00001 000C+00 0/1 0/0 0/0 .data            @5204 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5204[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565714-80565720 -00001 000C+00 0/1 0/0 0/0 .data            @5207 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5207[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565720-8056572C -00001 000C+00 0/1 0/0 0/0 .data            @5212 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5212[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Maro_cFPv,
};
#pragma pop

/* 8056572C-80565738 -00001 000C+00 0/1 0/0 0/0 .data            @5535 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5535[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565738-80565744 -00001 000C+00 0/1 0/0 0/0 .data            @5537 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5537[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)arrowTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565744-80565750 -00001 000C+00 0/1 0/0 0/0 .data            @5541 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5541[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

extern "C" void wait__12daNpc_Maro_cFPv();
/* 80565750-8056575C -00001 000C+00 0/1 0/0 0/0 .data            @5543 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5543[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Maro_cFPv,
};
#pragma pop

/* 8056575C-80565768 -00001 000C+00 0/1 0/0 0/0 .data            @5545 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5545[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Maro_cFPv,
};
#pragma pop

/* 8055D0D8-8055D1F4 001C38 011C+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::evtTalk() {
    // NONMATCHING
}

/* 8055D1F4-8055D368 001D54 0174+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::evtCutProc() {
    // NONMATCHING
}

/* 8055D368-8055D5C4 001EC8 025C+00 1/0 0/0 0/0 .text            action__12daNpc_Maro_cFv */
void daNpc_Maro_c::action() {
    // NONMATCHING
}

/* 8055D5C4-8055D688 002124 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Maro_cFv */
void daNpc_Maro_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CD0-80564CD4 000124 0004+00 0/1 0/0 0/0 .rodata          @5395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5395 = -30.0f;
COMPILER_STRIP_GATE(0x80564CD0, &lit_5395);
#pragma pop

/* 80564CD4-80564CDC 000128 0004+04 0/1 0/0 0/0 .rodata          @5396 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5396[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80564CD4, &lit_5396);
#pragma pop

/* 80564CDC-80564CE4 000130 0008+00 1/3 0/0 0/0 .rodata          @5398 */
SECTION_RODATA static u8 const lit_5398[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CDC, &lit_5398);

/* 8055D688-8055D918 0021E8 0290+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Maro_cFv */
void daNpc_Maro_c::setAttnPos() {
    // NONMATCHING
}

/* 8055D918-8055DA70 002478 0158+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Maro_cFv */
void daNpc_Maro_c::setCollision() {
    // NONMATCHING
}

/* 8055DA70-8055DA78 0025D0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Maro_cFv */
BOOL daNpc_Maro_c::drawDbgInfo() {
    return FALSE;
}

/* 8055DA78-8055DAD8 0025D8 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Maro_cFv */
void daNpc_Maro_c::drawOtherMdl() {
    // NONMATCHING
}

/* 8055DAD8-8055DB64 002638 008C+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__12daNpc_Maro_cF26daNpcT_faceMotionAnmData_c */
 daNpcT_faceMotionAnmData_c daNpc_Maro_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
    // NONMATCHING
}

/* 8055DB64-8055DBF0 0026C4 008C+00 1/0 0/0 0/0 .text
 * getMotionAnm__12daNpc_Maro_cF22daNpcT_motionAnmData_c        */
 daNpcT_motionAnmData_c daNpc_Maro_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
    // NONMATCHING
}

/* 8055DBF0-8055DD08 002750 0118+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Maro_cFv */
int daNpc_Maro_c::selectAction() {
    // NONMATCHING
}

/* 8055DD08-8055DD34 002868 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i          */
int daNpc_Maro_c::chkAction(int (daNpc_Maro_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8055DD34-8055DDDC 002894 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i          */
int daNpc_Maro_c::setAction(int (daNpc_Maro_c::*param_0)(void*)) {
    // NONMATCHING
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
