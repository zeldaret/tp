/**
 * @file d_a_npc_post.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_post.h"
#include "d/d_meter2_info.h"
#include "d/actor/d_a_horse.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "Z2AudioLib/Z2Instances.h"

/* 80AAD3CC-80AAD3EC 000020 0020+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[4][2] = {
    {15, 1},
    {16, 1},
    {17, 1},
    {15, 3},
};

/* 80AAD3EC-80AAD414 -00001 0028+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[5] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"DELIVER", 2},
    {"DELIVERTO_PLAYER_ON_HORSE", 2},
    {"DELIVERTO_WOLF", 2},
};

/* 80AAD414-80AAD424 -00001 0010+00 5/6 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[4] = {
    "",
    "post",
    "post1",
    "post2",
};

/* 80AAD424-80AAD428 000078 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[3] = {
    1, 2, -1
};

/* 80AAD428-80AAD42C 00007C 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    1, 3, -1,
};

/* 80AAD42C-80AAD430 000080 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[4] = {
    1, 2, 3, -1,
};

/* 80AAD430-80AAD440 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[4] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn1,
    l_loadResPtrn9,
};

/* 80AAD440-80AAD5E4 000094 01A4+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[15] = {
    {-1, 0, 0, 23, 2, 1, 1},
    {-1, 0, 0, 38, 2, 2, 0},
    {7, 0, 1, 25, 0, 1, 0},
    {11, 0, 2, 34, 0, 2, 0},
    {10, 0, 2, 33, 0, 2, 0},
    {12, 0, 2, 35, 0, 2, 0},
    {13, 0, 2, 36, 0, 2, 0},
    {9, 0, 2, 32, 0, 2, 0},
    {6, 0, 1, 24, 0, 1, 0},
    {7, 0, 3, 24, 0, 3, 0},
    {6, 0, 3, 23, 0, 3, 0},
    {14, 2, 2, 37, 2, 2, 0},
    {8, 2, 1, 26, 2, 1, 0},
    {9, 2, 3, 26, 2, 3, 0},
    {8, 2, 3, 25, 2, 3, 0},
};

/* 80AAD5E4-80AAD750 000238 016C+00 2/3 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[13] = {
    {12, 2, 1, 20, 0, 1, 1, 0},
    {25, 2, 2, 29, 2, 2, 0, 0},
    {11, 0, 1, 20, 0, 1, 1, 0},
    {21, 0, 2, 28, 0, 2, 0, 0},
    {22, 2, 2, 20, 0, 1, 1, 0},
    {8, 0, 2, 20, 0, 1, 1, 0},
    {23, 0, 2, 20, 0, 1, 1, 0},
    {24, 0, 2, 20, 0, 1, 1, 0},
    {6, 0, 2, 20, 0, 1, 1, 0},
    {7, 2, 2, 20, 0, 1, 1, 0},
    {10, 2, 3, 18, 2, 3, 0, 0},
    {12, 0, 3, 20, 0, 3, 0, 0},
    {11, 0, 3, 19, 0, 3, 0, 0},
};

/* 80AAD750-80AAD840 0003A4 00F0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[60] = {
    {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {11, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {7, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {9, -1, 1}, {13, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 1}, {14, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {14, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AAD840-80AAD8F0 000494 00B0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[44] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 1}, {4, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 1}, {9, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 1}, {10, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AAD8F0-80AAD8F8 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Post_c */
char* daNpc_Post_c::mCutNameList[2] = {
    "",
    "DELIVER",
};

/* 80AAD904-80AAD91C 000558 0018+00 2/2 0/0 0/0 .data            mCutList__12daNpc_Post_c */
daNpc_Post_c::cutFunc daNpc_Post_c::mCutList[2] = {
    NULL,
    &daNpc_Post_c::cutDeliver,
};

/* 80AADC3C-80AADC40 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static NPC_POST_HIO_CLASS l_HIO;

/* 80AA8C8C-80AA8DE8 0000EC 015C+00 1/0 0/0 0/0 .text            __dt__12daNpc_Post_cFv */
daNpc_Post_c::~daNpc_Post_c() {
    OS_REPORT("|%06d:%x|daNpc_Post_c -> コンストラクト\n", g_Counter.mCounter0, this);

    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    if (mpModelMorf != NULL) {
        mpModelMorf->stopZelAnime();
    }

    #if DEBUG
    if (mHIO != NULL) {
        mHIO->removeHIO();
    }
    #endif

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80AAD1EC-80AAD280 000000 0094+00 12/12 0/0 0/0 .rodata          m__18daNpc_Post_Param_c */
daNpc_Post_HIOParam const daNpc_Post_Param_c::m = {
    190.0f,
    -3.0f,
    1.0f,
    700.0f,
    255.0f,
    180.0f,
    35.0f,
    30.0f,
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
    16.0f,
    60,
};

/* 80AA8DE8-80AA90B0 000248 02C8+00 1/1 0/0 0/0 .text            create__12daNpc_Post_cFv */
cPhs__Step daNpc_Post_c::create() {
    daNpcT_ct(this, daNpc_Post_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData,
              4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, BitSW:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  getBitSW(), fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");
        
        static int const heapSize[4] = {
            0x0, 0x5060, 0x4EC0, 0x0,
        };

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        J3DModel* model = mpMorf[0]->getModel();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 0.0f, 0.0f);

        #if DEBUG
        mHIO = &l_HIO;
        mHIO->entryHIO("ポストマン");
        #endif

        reset();

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(mHIO->m.common.weight, 0, this);

        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -G_CM3D_F_INF) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80AA90B0-80AA9478 000510 03C8+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Post_cFv */
int daNpc_Post_c::CreateHeap() {
    int bmdIdx = 0;
    int resIdx = l_bmdData[bmdIdx][1];
    int idx = l_bmdData[bmdIdx][0];
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[resIdx], idx));
    if (modelData == NULL) {
        return 0;
    }

    u32 uVar1 = 0x11020284;
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, uVar1);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    bmdIdx = 1;
    resIdx = l_bmdData[bmdIdx][1];
    idx = l_bmdData[bmdIdx][0];
    modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[resIdx], idx);
    if (modelData == NULL) {
        return 0;
    }

    if (mType != 2) {
        u32 uVar2 = 0x11000084;
        mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, NULL, J3DMdlFlag_DifferedDLBuffer, uVar2);
        if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
            return 0;
        }
    }

    static int const bmdTypeList[2] = {
        2, 3,
    };

    for (int i = 0; i < 2; i++) {
        if (l_bmdData[bmdTypeList[i]][0] >= 0) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdTypeList[i]][1]], l_bmdData[bmdTypeList[i]][0]);
        } else {
            modelData = NULL;
        }

        if (modelData != NULL) {
            mpModels[i] = mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer, 0x11000084);
        } else {
            mpModels[i] = NULL;
        }
    }

    if (setFaceMotionAnm(2, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80AA9634-80AA9668 000A94 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Post_cFv */
int daNpc_Post_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_Post_c -> コンストラクト\n", g_Counter.mCounter0, this);
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpc_Post_c();
    return 1;
}

/* 80AA9668-80AA9688 000AC8 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Post_cFv */
int daNpc_Post_c::Execute() {
    return execute();
}

/* 80AA9688-80AA971C 000AE8 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Post_cFv */
int daNpc_Post_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    return draw(
#if DEBUG
        chkAction(&daNpc_Toby_c::test),
#else
        0,
#endif
        0, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 80AA971C-80AA973C 000B7C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__12daNpc_Post_cFP10fopAc_ac_c */
int daNpc_Post_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpc_Post_c* actor = (daNpc_Post_c*)i_this;
    return actor->CreateHeap();
}

/* 80AA973C-80AA9794 000B9C 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__12daNpc_Post_cFP8J3DJointi */
int daNpc_Post_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Post_c* actor = (daNpc_Post_c*)model->getUserArea();
        if (actor != NULL) {
            actor->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80AA9794-80AA97E0 000BF4 004C+00 1/1 0/0 0/0 .text            getType__12daNpc_Post_cFv */
u8 daNpc_Post_c::getType() {
    u8 param = fopAcM_GetParam(this) & 0xFF;
    switch (param) {
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

/* 80AA97E0-80AA9828 000C40 0048+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Post_cFv */
BOOL daNpc_Post_c::isDelete() {
    switch (mType) {
        case 0:
            return FALSE;

        case 1:
            return FALSE;

        case 2:
            return FALSE;

        default:
            return FALSE;
    }
}

/* 80AA9828-80AA99F0 000C88 01C8+00 1/1 0/0 0/0 .text            reset__12daNpc_Post_cFv */
void daNpc_Post_c::reset() {
    csXyz angle;
    int size = (u8*)&field_0x1014 - (u8*)&mNextAction;

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    initialize();

    for (int i = 0; i < 4; i++) {
        mActorMngrs[i].initialize();
    }

    memset(&mNextAction, 0, size);

    if (dMeter2Info_getNewLetterNum()) {
        field_0x1012 = 1;
    }

    angle.setall(0);
    angle.y = home.angle.y;

    switch (mType) {
        case 0:
            break;
        
        case 1:
            mHide = true;
            break;

        case 2:
            field_0x1011 = 1;
            field_0x1012 = 0;
            field_0x1013 = 1;
            break;
    }

    setAngle(angle);
}

/* 80AA99F0-80AA9A7C 000E50 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Post_cFi */
void daNpc_Post_c::afterJntAnm(int i_joint) {
    if (i_joint == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (i_joint == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80AA9A7C-80AA9BA4 000EDC 0128+00 1/0 0/0 0/0 .text            setParam__12daNpc_Post_cFv */
void daNpc_Post_c::setParam() {
    selectAction();
    srchActors();

    u32 flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    s16 talk_distance = mHIO->m.common.talk_distance;
    s16 talk_angle = mHIO->m.common.talk_angle;
    s16 attention_distance = mHIO->m.common.attention_distance;
    s16 attention_angle = mHIO->m.common.attention_angle;

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = flags;

    if (daPy_py_c::checkNowWolf()) {
        attention_info.flags |= fopAc_AttnFlag_UNK_0x800000;
    }

    scale.set(mHIO->m.common.scale, mHIO->m.common.scale, mHIO->m.common.scale);
    mCcStts.SetWeight(mHIO->m.common.weight);

    mCylH = mHIO->m.common.height;
    mWallR = mHIO->m.common.width;
    mAttnFovY = mHIO->m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(mHIO->m.common.knee_length);
    mRealShadowSize = mHIO->m.common.real_shadow_size;
    mExpressionMorfFrame = mHIO->m.common.expression_morf_frame;
    mMorfFrames = mHIO->m.common.morf_frame;
    gravity = mHIO->m.common.gravity;

    pullOutLetter();
}

/* 80AA9BA4-80AA9C58 001004 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Post_cFv */
BOOL daNpc_Post_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Post_c::talk)) {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }

            return TRUE;
        }
    }

    return FALSE;
}

/* 80AA9C58-80AA9D04 0010B8 00AC+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Post_cFv */
void daNpc_Post_c::setAfterTalkMotion() {
    int idx = 0xE;

    switch (mFaceMotionSeqMngr.getNo()) {
        case 4:
            idx = 9;
            break;
        
        case 6:
            idx = 0xB;
            break;

        case 7:
            idx = 0xC;
            break;
            
        case 8:
            idx = 0xD;
            break;
    }

    mFaceMotionSeqMngr.setNo(idx, -1.0f, FALSE, 0);
}

/* 80AA9D04-80AA9D98 001164 0094+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Post_cFv */
void daNpc_Post_c::srchActors() {
    switch (mType) {
        case 0:
            break;
        
        case 1:
            for (int i = 0; i < 4; i++) {
                if (mActorMngrs[i].getActorP() == NULL) {
                    mActorMngrs[i].entry(getEvtAreaTagP(21, i));
                }
            }
            break;

        case 2:
            break;
    }
}

/* 80AA9D98-80AA9E98 0011F8 0100+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Post_cFv */
BOOL daNpc_Post_c::evtTalk() {
    if (chkAction(&daNpc_Post_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return TRUE;
            }

            mEvtNo = 1;
            evtChange();

            return TRUE;
        } else {
            setAction(&daNpc_Post_c::talk);
        }
    }

    return TRUE;
}

/* 80AA9E98-80AA9F60 0012F8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Post_cFv */
BOOL daNpc_Post_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Post", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 2, FALSE, FALSE);

        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return TRUE;
    }

    return FALSE;
}

/* 80AA9F60-80AAA058 0013C0 00F8+00 1/0 0/0 0/0 .text            action__12daNpc_Post_cFv */
void daNpc_Post_c::action() {
    fopAc_ac_c* actor = NULL;
    actor = hitChk(&mCyl, 0xFFFFFFFF);
    #if DEBUG
    if (actor != NULL) {
        if (mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_THROW_OBJ)) {
            mStagger.setParam(this, actor, mCurAngle.y);
            setDamage(0, 14, 0);
            mDamageTimerStart = 0;
            mJntAnm.lookNone(1);
        }
    }
    #endif

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

/* 80AAA058-80AAA124 0014B8 00CC+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Post_cFv */
void daNpc_Post_c::beforeMove() {
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_0x8000000);

    if (checkHide()) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_0x8000000);
    }

    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }

    mPrevPos = current.pos.y;
}

/* 80AAA124-80AAA1E4 001584 00C0+00 1/0 0/0 0/0 .text            afterMoved__12daNpc_Post_cFv */
void daNpc_Post_c::afterMoved() {
    if (mGroundH == -G_CM3D_F_INF) {
        cXyz pos(current.pos);
        pos.y += 300.0f;
        mGndChk.SetPos(&pos);

        pos.y = dComIfG_Bgsp().GroundCross(&mGndChk);
        if (pos.y != -G_CM3D_F_INF) {
            current.pos.y = pos.y;
        } else {
            current.pos.y = mPrevPos;
        }

        speed.y = 0.0f;
        old.pos.y = current.pos.y;
    }
}

/* 80AAA1E4-80AAA570 001644 038C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Post_cFv */
void daNpc_Post_c::setAttnPos() {
    cXyz sp70(-30.0f, 10.0f, 0.0f);
    cXyz sp7c(0.0f, 10.0f, 0.0f);

    mStagger.calc(FALSE);
    f32 rad_val = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.setParam(this, mpMorf[0]->getModel(), &sp70, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     mHIO->m.common.body_angleX_min, mHIO->m.common.body_angleX_max,
                     mHIO->m.common.body_angleY_min, mHIO->m.common.body_angleY_max,
                     mHIO->m.common.head_angleX_min, mHIO->m.common.head_angleX_max,
                     mHIO->m.common.head_angleY_min, mHIO->m.common.head_angleY_max,
                     mHIO->m.common.neck_rotation_ratio, rad_val, &sp7c);
    mJntAnm.calcJntRad(0.2f, 1.0f, rad_val);
    
    setMtx();

    if (mpModelMorf != NULL) {
        mpModelMorf->play(0, 0);
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(2));
        Mtx mtx;
        MTXCopy(mDoMtx_stack_c::get(), mtx);
        mpModelMorf->getModel()->setBaseTRMtx(mtx);
        mpModelMorf->modelCalc();
    }

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp70, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);
    field_0xde4 = 0.3f;

    sp70.set(0.0f, 0.0f, 16.0f);
    sp70.y = mHIO->m.common.attention_offset;
    if (field_0x1013 != 0) {
        sp70.set(0.0f, 110.0f, 40.0f);
    }

    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&sp70, &sp70);
    attention_info.position = sp70 + current.pos;

    static cXyz prtclScl(1.0f, 1.0f, 1.0f);
    setFootPos();
    if (3.0f < speedF) {
        setFootPrtcl(&prtclScl, 11.0f, 0.0f);
    }
}

/* 80AAA570-80AAA714 0019D0 01A4+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Post_cFv */
void daNpc_Post_c::setCollision() {
    cXyz work;

    if (!mHide) {
        u32 coSPrm = 0x79;
        u32 tgType = 0xD8FBFDFF;
        u32 tgSPrm = 0x1F;

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

        mCyl.SetCoSPrm(coSPrm);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();

        work.set(0.0f, 0.0f, 10.0f);
        f32 height = mCylH;
        f32 width = mWallR;

        if (mType == 2) {
            work.set(0.0f, 0.0f, 20.0f);
            height = 80.0f;
            width = 50.0f;
        }

        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&work, &work);
        work += current.pos;
        mCyl.SetH(height);
        mCyl.SetR(width);
        mCyl.SetC(work);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80AAA714-80AAA71C 001B74 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Post_cFv */
int daNpc_Post_c::drawDbgInfo() {
    return 0;
}

/* 80AAA71C-80AAA8A4 001B7C 0188+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Post_cFv */
void daNpc_Post_c::drawOtherMdl() {
    static int const jointNo[2] = {
        0x13, 0x12,
    };

    J3DModel* model = mpMorf[0]->getModel();

    if (mpModelMorf != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpModelMorf->getModel(), &tevStr);

        if (!field_0x1012) {
            mpModelMorf->getModel()->getModelData()->hide();
        } else {
            mpModelMorf->getModel()->getModelData()->show();
        }

        mpModelMorf->entryDL();
        dComIfGd_addRealShadow(mShadowKey, mpModelMorf->getModel());
    }

    for (int i = 0; i < 2; i++) {
        if (mpModels[i] != NULL && ((i == 0 && field_0x1010) || (i == 1 && field_0x1011))) {
            g_env_light.setLightTevColorType_MAJI(mpModels[i], &tevStr);
            mDoMtx_stack_c::copy(model->getAnmMtx(jointNo[i]));

            Mtx mtx;
            MTXCopy(mDoMtx_stack_c::get(), mtx);
            mpModels[i]->setBaseTRMtx(mtx);
            mDoExt_modelUpdateDL(mpModels[i]);
            dComIfGd_addRealShadow(mShadowKey, mpModels[i]);
        }
    }
}

/* 80AAA8A4-80AAA968 001D04 00C4+00 1/1 0/0 0/0 .text            setFlagAnm__12daNpc_Post_cFiif */
BOOL daNpc_Post_c::setFlagAnm(int i_idx, int i_attr, f32 i_morf) {
    static daNpc_GetParam1 flagAnmData[13] = {
        {0xA, 1},
        {0x14, 2},
        {9, 1},
        {0x10, 2},
        {0x11, 2},
        {0xF, 2},
        {0x12, 2},
        {0x13, 2},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
    };

    J3DAnmTransform* anm = NULL;
    if (mpModelMorf != NULL) {
        if (flagAnmData[i_idx].fileIdx > 0) {
            anm = getTrnsfrmKeyAnmP(l_resNameList[flagAnmData[i_idx].arcIdx], flagAnmData[i_idx].fileIdx);
        }

        if (anm != NULL) {
            mpModelMorf->setAnm(anm, i_attr, i_morf, 1.0f, 0.0f, -1.0f);
        }
    }

    return TRUE;
}

/* 80AAA968-80AAA99C 001DC8 0034+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_Post_cFiifi */
bool daNpc_Post_c::afterSetMotionAnm(int i_idx, int i_attr, f32 i_morf, int param_4) {
    f32 morf = mCreating == true ? 0.0f : i_morf;
    setFlagAnm(i_idx, i_attr, morf);
}

/* 80AAA99C-80AAA9E4 001DFC 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Post_cFv */
BOOL daNpc_Post_c::selectAction() {
    mNextAction = NULL;

    #if DEBUG
    if (mHIO->m.common.debug_mode_ON) {
        mNextAction = &daNpc_Post_c::test;
        return TRUE;
    }
    #endif

    switch (mType) {
        default:
            break;
    }

    mNextAction = &daNpc_Post_c::wait;
    return TRUE;
}

/* 80AAA9E4-80AAAA10 001E44 002C+00 2/2 0/0 0/0 .text            chkAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i */
BOOL daNpc_Post_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80AAAA10-80AAAAB8 001E70 00A8+00 2/2 0/0 0/0 .text            setAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i */
BOOL daNpc_Post_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 80AAAAB8-80AAAB2C 001F18 0074+00 1/1 0/0 0/0 .text            chkPullOutLetter1__12daNpc_Post_cFv */
BOOL daNpc_Post_c::chkPullOutLetter1() {
    if (mType == 1) {
        J3DAnmTransform* anm = NULL;
        anm = getTrnsfrmAnmP(l_resNameList[l_motionAnmData[3].mBckArcIdx], l_motionAnmData[3].mBckFileIdx);
        return anm == mpMorf[0]->getAnm();
    }

    return false;
}

/* 80AAAB2C-80AAABA0 001F8C 0074+00 1/1 0/0 0/0 .text            chkPullOutLetter2__12daNpc_Post_cFv */
BOOL daNpc_Post_c::chkPullOutLetter2() {
    if (mType == 1) {
        J3DAnmTransform* anm = NULL;
        anm = getTrnsfrmAnmP(l_resNameList[l_motionAnmData[4].mBckArcIdx], l_motionAnmData[4].mBckFileIdx);
        return anm == mpMorf[0]->getAnm();
    }

    return false;
}

/* 80AAABA0-80AAAC64 002000 00C4+00 1/1 0/0 0/0 .text            pullOutLetter__12daNpc_Post_cFv */
void daNpc_Post_c::pullOutLetter() {
    u8 uVar1 = field_0x1010;

    if (!mStagger.checkStagger()) {
        field_0x1010 = 0;

        if (chkPullOutLetter1()) {
            if (37.0f < mpMorf[0]->getFrame()) {
                field_0x1010 = 1;
                if (uVar1 != field_0x1010) {
                    mSound.startCreatureVoice(Z2SE_POST_V_FANFARE, -1);
                }
            }
        } else if (chkPullOutLetter2()) {
            field_0x1010 = 1;
        }
    }
}

/* 80AAD324-80AAD32C 000138 0008+00 0/0 0/0 0/0 .rodata          @5155 */
static int const dummy[2] = {
    -1, -1,
};

/* 80AAAC64-80AAB61C 0020C4 09B8+00 3/0 0/0 0/0 .text            cutDeliver__12daNpc_Post_cFi */
int daNpc_Post_c::cutDeliver(int i_staffId) {
    cXyz work;
    csXyz angle;
    int rv = 0;
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
                work = field_0xff0;
                work.y += 300.0f;
                mGndChk.SetPos(&work);
                current.pos.x = work.x;
                current.pos.z = work.z;
                work.y = dComIfG_Bgsp().GroundCross(&mGndChk);
                
                if (work.y != -1e9f) {
                    current.pos.y = work.y;
                }

                old.pos = current.pos;
                setAngle(fopAcM_searchPlayerAngleY(this));
                mAcch.SetWallNone();
                mEventTimer = timer;
                break;

            case 1:
            case 2:
                if (prm == 2) {
                    mHide = false;
                }

                mEventTimer = timer;
                break;

            case 3:
                mFaceMotionSeqMngr.setNo(0xA, 0.0f, TRUE, 0);
                mMotionSeqMngr.setNo(8, 0.0f, TRUE, 0);
                mHide = false;
                mEventTimer = timer;
                mAcch.ClrGrndNone();
                mDoAud_subBgmStart(Z2BGM_POSTMAN);
                Z2GetAudioMgr()->bgmAllUnMute(0);
                break;

            case 4:
                mFaceMotionSeqMngr.setNo(0xA, 0.0f, TRUE, 0);
                mMotionSeqMngr.setNo(8, 0.0f, TRUE, 0);
                work.set(0.0f, 0.0f, 1000.0f);
                mDoMtx_stack_c::YrotS(fopAcM_searchActorAngleY(daPy_getPlayerActorClass(), this));
                mDoMtx_stack_c::multVec(&work, &work);
                work += daPy_getPlayerActorClass()->current.pos;
                work.y += 300.0f;
                mGndChk.SetPos(&work);
                current.pos.x = work.x;
                current.pos.z = work.z;
                work.y = dComIfG_Bgsp().GroundCross(&mGndChk);

                if (work.y != -1e9f) {
                    current.pos.y = work.y;
                } else {
                    current.pos.y = daPy_getPlayerActorClass()->current.pos.y;
                    if (daPy_getPlayerActorClass()->checkHorseRide()) {
                        current.pos.y = dComIfGp_getHorseActor()->current.pos.y;
                    }
                }

                old.pos = current.pos;
                speedF = 0.0f;
                speed.setall(0.0f);
                break;

            case 5:
                mFaceMotionSeqMngr.setNo(0xE, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(0, 5.0f, FALSE, 0);
                speedF = 0.0f;
                speed.setall(0.0f);
                initTalk(0x14, NULL);
                break;

            case 6:
                if (getBitSW() != 0xFF) {
                    dComIfGs_onSwitch(getBitSW(), fopAcM_GetRoomNo(this));
                }

                home.pos = current.pos;
                home.angle.y = current.angle.y;
                break;

            case 7:
                angle.y = fopAcM_searchActorAngleY(daPy_getPlayerActorClass(), this);
                work = daPy_getPlayerActorClass()->current.pos;
                work.y += 100.0f;
                mGndChk.SetPos(&work);
                work.y = dComIfG_Bgsp().GroundCross(&mGndChk);

                JUT_ASSERT(2046, -(1000000000.0f) != work.y);

                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&work, angle.y, 0);
                break;

            case 8:
                mFlow.init(NULL, 0x13, 0, NULL);
                mDoAud_bgmAllMute(0x5A);
                break;

            case 9:
                mFaceMotionSeqMngr.setNo(0xA, -1.0f, FALSE, 0);
                mMotionSeqMngr.setNo(8, -1.0f, FALSE, 0);
                mEventTimer = timer;
                break;

            case 10:
                mFaceMotionSeqMngr.setNo(0xE, 0.0f, TRUE, 0);
                mMotionSeqMngr.setNo(0, 0.0f, TRUE, 0);

                if (getBitSW() != 0xFF) {
                    dComIfGs_onSwitch(getBitSW(), fopAcM_GetRoomNo(this));
                }

                speedF = 0.0f;
                speed.setall(0.0f);
                work = home.pos;
                work.y += 300.0f;
                mGndChk.SetPos(&work);
                current.pos.x = work.x;
                current.pos.z = work.z;
                work.y = dComIfG_Bgsp().GroundCross(&mGndChk);

                if (work.y != -1e9f) {
                    current.pos.y = work.y;
                }

                old.pos = current.pos;
                setAngle(home.angle.y);
                mHide = true;
                mEventTimer = timer;
                mDoAud_subBgmStop();
                break;

            case 11:
            case 12:
                break;
        }
    }

    switch (prm) {
        case 0:
            mJntAnm.lookPlayer(0);
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
            break;

        case 1:
        case 2:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }

            mAcch.SetGrndNone();
            mAcch.SetWallNone();
            gravity = 0.0f;
            break;

        case 3:
            if (cLib_calcTimer(&mEventTimer) != 0) {
                speedF = mHIO->m.field_0x8c;

                if (fopAcM_searchPlayerDistanceXZ(this) < 200.0f) {
                    rv = 1;
                }
            } else {
                rv = 1;
            }
            break;

        case 4:
            if (!dComIfGp_getEventManager().getIsAddvance(i_staffId)) {
                speedF = mHIO->m.field_0x8c;

                if (daPy_getPlayerActorClass()->checkHorseRide()) {
                    if (fopAcM_searchPlayerDistanceXZ(this) < 400.0f) {
                        rv = 1;
                    }
                } else {
                    if (fopAcM_searchPlayerDistanceXZ(this) < 200.0f) {
                        rv = 1;
                    }
                }
            }
            break;

        case 5:
            if (talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;

        case 6:
            rv = 1;
            break;

        case 7:
            speedF = mHIO->m.field_0x8c;
            rv = 1;
            break;

        case 8:
            field_0xe26 = 0;
            if (mFlow.doFlow(NULL, NULL, 0)) {
                rv = 1;
            }
            break;

        case 9:
            mJntAnm.lookNone(0);
            current.angle.y = cLib_targetAngleY(&current.pos, &field_0xff0);
            cLib_addCalcAngleS2(&shape_angle.y, current.angle.y, 4, 0x800);
            mCurAngle.y = shape_angle.y;
            cLib_chaseF(&speedF, mHIO->m.field_0x8c, 1.5f);

            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
            break;

        case 10:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
            break;

        case 11:
            angle.y = cLib_targetAngleY(&current.pos, &field_0xff0);
            if (angle.y != mCurAngle.y) {
                if (step(angle.y, 14, 10, 15, 0)) {
                    rv = 1;
                }
            } else {
                rv = 1;
            }
            break;

        case 12:
            rv = 1;
            break;
    }

    return rv;
}

/* 80AAB61C-80AABC24 002A7C 0608+00 1/0 0/0 0/0 .text            wait__12daNpc_Post_cFPv */
int daNpc_Post_c::wait(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 fVar1 = mHIO->m.field_0x90;

    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                if (field_0x1013) {
                    mFaceMotionSeqMngr.setNo(0xE, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(6, -1.0f, FALSE, 0);
                    mTimer = cLib_getRndValue(fVar1 * 0.5f, fVar1 * 1.5f);
                } else {
                    mFaceMotionSeqMngr.setNo(0xE, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(0, -1.0f, FALSE, 0);
                }

                mMode = 2;
            }
            // fallthrough
        case 2:
            if (
                mType == 1 &&
                (
                    !daPy_py_c::checkNowWolf() ||
                    daNpcT_chkEvtBit(110) // dSv_event_flag_c::M_077 - Main Event - Get shadow crystal (can now transform)
                )
            ) {
                for (int i = 0; i < 4; i++) {
                    daTag_EvtArea_c* actor_p = (daTag_EvtArea_c*)mActorMngrs[i].getActorP();
                    if (actor_p != NULL) {
                        if (actor_p->chkPointInArea(player->current.pos)) {
                            if (daPy_getPlayerActorClass()->checkBoarRide()) {
                                actor_p->noEffect();
                            } else if (daPy_getPlayerActorClass()->eventInfo.chkCondition(1) != FALSE && dMeter2Info_getNewLetterNum()) {
                                field_0xff0 = actor_p->current.pos;
                                
                                if (actor_p->scale.x - 700.0f <= player->current.pos.absXZ(actor_p->current.pos)) {
                                    if (daPy_getPlayerActorClass()->checkHorseRide()) {
                                        mEvtNo = 3;
                                    } else if (daPy_py_c::checkNowWolf()) {
                                        mEvtNo = 4;
                                    } else {
                                        mEvtNo = 2;
                                    }
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            if (!mStagger.checkStagger()) {
                if (field_0x1013 != 0) {
                    mPlayerActorMngr.remove();
                }

                if (mPlayerActorMngr.getActorP() != NULL && !mTwilight) {
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
                        if (field_0xe34 == 0) {
                            setAngle(home.angle.y);
                            mMode = 1;
                        } else if (step(home.angle.y, 14, 10, 15, 0)) {
                            mMode = 1;
                        }

                        attention_info.flags = 0;
                    } else if (field_0x1013) {
                        if (mTimer != 0) {
                            if (cLib_calcTimer(&mTimer) == 0) {
                                mMotionSeqMngr.setNo(9, -1.0f, FALSE, 0);
                            }
                        } else if (mMotionSeqMngr.checkEndSequence()) {
                            mMode = 1;
                        }
                    } else {
                        srchPlayerActor();
                    }
                }

                mJntAnm.getMode();
            }
            break;

        case 3:
            break;
    }

    return 1;
}

/* 80AABC24-80AABE04 003084 01E0+00 3/0 0/0 0/0 .text            talk__12daNpc_Post_cFPv */
int daNpc_Post_c::talk(void* param_1) {
    switch (mMode) {
        case 0:
        case 1:
            if (!mStagger.checkStagger()) {
                initTalk(mFlowNodeNo, NULL);
                mMode = 2;
            }
            // fallthrough
        case 2:
            if (!mStagger.checkStagger()) {
                if (mTwilight || mPlayerAngle == mCurAngle.y || field_0x1013) {
                    if (talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
                        mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                        dComIfGp_event_reset();
                        mMode = 3;
                    }

                    mJntAnm.lookPlayer(0);

                    if (mTwilight || field_0x1013) {
                        mJntAnm.lookNone(0);
                    }
                } else {
                    mJntAnm.lookPlayer(0);
                    step(mPlayerAngle, 14, 10, 15, 0);
                }
            }
            break;

        case 3: 
            break;
    }

    return 0;
}

int daNpc_Post_c::test(void* param_1) {

}

/* 80AABE04-80AABE24 003264 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Create__FPv */
static int daNpc_Post_Create(void* i_this) {
    return static_cast<daNpc_Post_c*>(i_this)->create();
}

/* 80AABE24-80AABE44 003284 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Delete__FPv */
static int daNpc_Post_Delete(void* i_this) {
    return static_cast<daNpc_Post_c*>(i_this)->Delete();
}

/* 80AABE44-80AABE64 0032A4 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Execute__FPv */
static int daNpc_Post_Execute(void* i_this) {
    return static_cast<daNpc_Post_c*>(i_this)->Execute();
}

/* 80AABE64-80AABE84 0032C4 0020+00 1/0 0/0 0/0 .text            daNpc_Post_Draw__FPv */
static int daNpc_Post_Draw(void* i_this) {
    return static_cast<daNpc_Post_c*>(i_this)->Draw();
}

/* 80AABE84-80AABE8C 0032E4 0008+00 1/0 0/0 0/0 .text            daNpc_Post_IsDelete__FPv */
static int daNpc_Post_IsDelete(void* i_this) {
    return 1;
}

AUDIO_INSTANCES;

/* 80AADA1C-80AADA3C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Post_MethodTable */
static actor_method_class daNpc_Post_MethodTable = {
    (process_method_func)daNpc_Post_Create,
    (process_method_func)daNpc_Post_Delete,
    (process_method_func)daNpc_Post_Execute,
    (process_method_func)daNpc_Post_IsDelete,
    (process_method_func)daNpc_Post_Draw,
};

/* 80AADA3C-80AADA6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_POST */
extern actor_process_profile_definition g_profile_NPC_POST = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_POST,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Post_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  403,                     // mPriority
  &daNpc_Post_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
