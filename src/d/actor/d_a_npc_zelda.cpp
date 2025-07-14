/**
 * @file d_a_npc_zelda.cpp
 * 
*/

#include "d/actor/d_a_npc_zelda.h"
#include "JSystem/JHostIO/JORFile.h"
#include "SSystem/SComponent/c_counter.h"
#include "d/actor/d_a_hozelda.h"
#include "d/d_debug_viewer.h"

UNK_REL_DATA

#if DEBUG
#define HIO_PARAM(i_this) (i_this->mHIO->param)
#else
#define HIO_PARAM(_) (daNpc_Zelda_Param_c::m)
#endif

static u32 l_bmdData[2] = { 11, 1 };

#pragma push
#pragma force_active on
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"NO_RESPONSE", 0},
};
#pragma pop

static char* l_resNameList[2] = {
    "",
    "Zelda"
};

static s8 l_loadResPtrn0[2] = {
    1, -1,
};

static s8* l_loadResPtrnList[2] = {
    &l_loadResPtrn0[0],
    &l_loadResPtrn0[0],
};

static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[3] = {
    {-1, 0, 0, 17, 2, 1, 1},
    {-1, 0, 0, 18, 2, 1, 0},
    {6, 0, 1, 17, 2, 1, 1},
};

static daNpcT_motionAnmData_c l_motionAnmData[2] = {
    {8, 2, 1, 14, 0, 1, 1, 0},
    {7, 2, 1, 14, 0, 1, 0, 0},
};

static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[12] = {
    {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[8] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

const char* daNpc_Zelda_c::mCutNameList = "";
cutFunc daNpc_Zelda_c::mCutList[1] = { 0 };

#if DEBUG
static daNpc_Zelda_HIO_c l_HIO;
#else
static daNpc_Zelda_Param_c l_HIO;
#endif

#if DEBUG
daNpc_Zelda_HIO_c::daNpc_Zelda_HIO_c() {
    param = daNpc_Zelda_Param_c::m;
}

void daNpc_Zelda_HIO_c::genMessage(JORMContext* ctx) {
    daNpcT_cmnGenMessage(ctx, &param.common);
    ctx->genButton
              ("ファイル書き出し",0x40000002,0,NULL,0xffff,0xffff,0x200,0x18);
}

void daNpc_Zelda_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    char auStack_7e0[2004];

    JORReflexible::listenPropertyEvent(event);

    JORFile aJStack_910;
    switch (reinterpret_cast<u32>(event->id)) {
    case 0x40000002:
        if (aJStack_910.open(6, "", NULL, NULL, NULL) != 0) {
            memset(auStack_7e0, 0, 2000);
            int retval = 0;
            daNpcT_cmnListenPropertyEvent(auStack_7e0, &retval, &param.common);
            aJStack_910.writeData(auStack_7e0, retval);
            aJStack_910.close();
            OS_REPORT("write append success!::%6d\n", retval);
        } else {
            OS_REPORT("write append failure!\n");
        }
        break;
    }
}
#endif

/* 80B7512C-80B7524C 0000EC 0120+00 1/0 0/0 0/0 .text            __dt__13daNpc_Zelda_cFv */
daNpc_Zelda_c::~daNpc_Zelda_c() {
    OS_REPORT("|%06d:%x|daNpc_Zelda_c -> デストラクト\n", g_Counter.mCounter0, this);

    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

#if DEBUG
    if (mHIO != NULL) {
        mHIO->removeHIO();
    }
#endif

    deleteRes(l_loadResPtrnList[field_0xf80], (const char**)l_resNameList);
}

/* ############################################################################################## */
/* 80B77FC8-80B78054 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_Zelda_Param_c */
const daNpc_Zelda_HIOParam daNpc_Zelda_Param_c::m = {{
    190.0f, // attention_offset
    -3.0f, // gravity
    1.0f, // scale
    400.0f, // real_shadow_size
    255.0f, // weight
    170.0f, // height
    35.0f, // knee_length
    30.0f, // width
    0.0f, // body_angleX_max
    0.0f, // body_angleX_min
    10.0f, // body_angleY_max
    -10.0f, // body_angleY_min
    30.0f, // head_angleX_max
    -10.0f, // head_angleX_min
    45.0f, // head_angleY_max
    -45.0f, // head_angleY_min
    0.6f, // neck_rotation_ratio
    12.0f, // morf_frame
    3, // talk_distance
    6, // talk_angle
    5, // attention_distance
    6, // attention_angle
    110.0f, // fov
    0.0f, // search_distance
    0.0f, // search_height
    0.0f, // search_depth
    60, // attention_time
    8, // damage_time
    0, // face_expression
    0, // motion
    0, // look_mode
    FALSE, // debug_mode_ON
    FALSE, // debug_info_ON
    4.0f, // expression_morf_frame
    0.0f, // box_min_x
    0.0f, // box_min_y
    0.0f, // box_min_z
    0.0f, // box_max_x
    0.0f, // box_max_y
    0.0f, // box_max_z
    0.0f, // box_offset
}};

/* 80B7524C-80B75530 00020C 02E4+00 1/1 0/0 0/0 .text            create__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::create() {
    static u32 const heapSize[2] = {
        0x8FE0,
        0x8FE0,
    };

    fopAcM_SetupActor2(this, daNpc_Zelda_c, (daNpcT_faceMotionAnmData_c*)l_faceMotionAnmData,
        (daNpcT_motionAnmData_c*)l_motionAnmData,
        (daNpcT_MotionSeqMngr_c::sequenceStepData_c*)l_faceMotionSequenceData, 4,
        (daNpcT_MotionSeqMngr_c::sequenceStepData_c*)l_motionSequenceData, 4,
        l_evtList, l_resNameList);

    field_0xf80 = getType();

    mFlowNodeNo = getFlowNodeNo();

    mTwilight = false;

    s32 loadResult = loadRes(l_loadResPtrnList[field_0xf80], (const char**)l_resNameList);
    if (loadResult == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, PathNo:%02x<%08x> ", fopAcM_getProcNameString(this),
            field_0xf80, mFlowNodeNo, getPathID(), fopAcM_GetParam(this));
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("\n");
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[field_0xf80]) ==
            0)
        {
            return cPhs_ERROR_e;
        }

        J3DModelData* unusedModelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_8000000);
        mSound.init(&current.pos, &eyePos, 3, 1);

#if DEBUG
        mHIO = &l_HIO;
        // Zelda
        mHIO->entryHIO("ゼルダ");
#endif

        reset();

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
            &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
            fopAcM_GetShapeAngle_p(this));

        mCcStts.Init(HIO_PARAM(this).common.weight, 0, this);

        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);

        if (field_0xf80 == 0) {
            mAcch.SetGrndNone();
            mAcch.SetWallNone();
        }
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return loadResult;
}

f32 dummy0() {
    return 0.0f;
}

f32 dummy1() {
    return 65536.0f;
}

f32 dummy2() {
    return 0.2f;
}

/* 80B75530-80B757BC 0004F0 028C+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::CreateHeap() {
    J3DModelData* modelData = NULL;
    J3DModel* model = NULL;

    // probably a fakematch? not quite sure what's going on here with the 0-offset
    s32 unkOffset = 0;
    s32 arcNameIdx = (*(&l_bmdData + unkOffset))[1];
    s32 index = (*(&l_bmdData + unkOffset))[0];

    modelData =
        static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[arcNameIdx], index));

    if (modelData == NULL) {
        return 0;
    }

    s32 temp4 = 0x11020284;
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0, temp4);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model->setUserArea((u32)this);

    for (s32 i = 0; i < 2; i++) {
        mpMatAnm[i] = new daNpcT_MatAnm_c();
        if (mpMatAnm[i] == NULL) {
            return 0;
        }
    }

    if (setFaceMotionAnm(2, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    } else {
        return 0;
    }
}

/* 80B75978-80B759AC 000938 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::Delete() {
    OS_REPORT("|%06d:%x|daNpc_Zelda_c -> Delete\n", g_Counter.mCounter0, this);
    fpc_ProcID unusedId = fopAcM_GetID(this);
    this->~daNpc_Zelda_c();
    return 1;
}

/* 80B759AC-80B759CC 00096C 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::Execute() {
    return execute();
}

/* 80B759CC-80B75A90 00098C 00C4+00 1/1 0/0 0/0 .text            Draw__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::Draw() {
    J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
    if (mpMatAnm[0] != NULL) {
        modelData->getMaterialNodePointer(getEyeballLMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    if (mpMatAnm[1] != NULL) {
        modelData->getMaterialNodePointer(getEyeballRMaterialNo())->setMaterialAnm(mpMatAnm[1]);
    }

#if DEBUG
    return draw(chkAction(NULL), TRUE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
#else
    return draw(NULL, TRUE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
#endif
}

/* 80B75A90-80B75AB0 000A50 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Zelda_cFP10fopAc_ac_c            */
int daNpc_Zelda_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpc_Zelda_c* zelda = ((daNpc_Zelda_c*)i_this);
    return zelda->CreateHeap();
}

/* 80B75AB0-80B75B08 000A70 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Zelda_cFP8J3DJointi               */
int daNpc_Zelda_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Zelda_c* zelda = (daNpc_Zelda_c*)model->getUserArea();
        if (zelda != NULL) {
            zelda->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 80B75B08-80B75B28 000AC8 0020+00 1/1 0/0 0/0 .text            getType__13daNpc_Zelda_cFv */
u8 daNpc_Zelda_c::getType() {
    u8 param = fopAcM_GetParam(this);
    switch (param & 0xff) {
    case 0:
        return 0;
    default:
        return 0;
    }
}

/* 80B75B28-80B75B30 000AE8 0008+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::isDelete() {
    return 0;
}

/* 80B75B30-80B75C9C 000AF0 016C+00 1/1 0/0 0/0 .text            reset__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::reset() {
    csXyz acStack_20;
    u32 clearSize = (u32)&field_0xf9c - (u32)&mAction1;

    for (s32 i = 0; i < 2; i++) {
        if (mpMatAnm[i] != NULL) {
            mpMatAnm[i]->initialize();
        }
    }

    initialize();

    memset(&mAction1, 0, clearSize);

    acStack_20.setall(0);
    acStack_20.y = home.angle.y;
    switch (field_0xf80) {
    case 0:
    default:
        setAngle(acStack_20);
        break;
    }
}

/* 80B75C9C-80B75D28 000C5C 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Zelda_cFi */
void daNpc_Zelda_c::afterJntAnm(int param_0) {
    if (param_0 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_0 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(0));
    }
}

/* 80B75D28-80B75E34 000CE8 010C+00 1/0 0/0 0/0 .text            ctrlBtk__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::ctrlBtk() {
    if ((mpMatAnm[0] != NULL) && (mpMatAnm[1] != NULL)) {
        if (field_0xe29 != 0) {
            J3DAnmTextureSRTKey* btkAnm = mBtkAnm.getBtkAnm();
            if (btkAnm != 0) {
                mpMatAnm[0]->setNowOffsetX(cM_ssin(mJntAnm.getEyeAngleY()) * 0.2f * -1.0f);
                mpMatAnm[0]->setNowOffsetY(cM_ssin(mJntAnm.getEyeAngleX()) * 0.2f);
                mpMatAnm[1]->setNowOffsetX(cM_ssin(mJntAnm.getEyeAngleY()) * 0.2f);
                mpMatAnm[1]->setNowOffsetY(cM_ssin(mJntAnm.getEyeAngleX()) * 0.2f);
                mpMatAnm[0]->onEyeMoveFlag();
                mpMatAnm[1]->onEyeMoveFlag();
                return 1;
            }
        }
        if (field_0xe2a != 0) {
            mpMatAnm[0]->setMorfFrm(field_0xe2a);
            mpMatAnm[1]->setMorfFrm(field_0xe2a);
            field_0xe2a = 0;
        }
        mpMatAnm[0]->offEyeMoveFlag();
        mpMatAnm[1]->offEyeMoveFlag();
    }
    return 0;
}

/* 80B75E34-80B75EE8 000DF4 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Zelda_cFv
 */
int daNpc_Zelda_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Zelda_c::talk)) {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }
            return 1;
        }
    }
    return 0;
}

/* 80B75EE8-80B76014 000EA8 012C+00 1/0 0/0 0/0 .text            setParam__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::setParam() {
    selectAction();
    srchActors();

#if DEBUG
    s32 attnFlag = 0x2 | 0x40;
#define NPC_ZELDA_SETPARAM_DIST_IDX fopAc_attn_JUEL_e
#else
    s32 attnFlag = 0x2 | 0x8;
#define NPC_ZELDA_SETPARAM_DIST_IDX fopAc_attn_SPEAK_e
#endif

    s16 talkDist = HIO_PARAM(this).common.talk_distance;
    s16 talkAngle = HIO_PARAM(this).common.talk_angle;
    s16 attnDist = HIO_PARAM(this).common.attention_distance;
    s16 attnAngle = HIO_PARAM(this).common.attention_angle;
    attention_info.distances[fopAc_attn_LOCK_e] =
        daNpcT_getDistTableIdx(attnDist, attnAngle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[NPC_ZELDA_SETPARAM_DIST_IDX] = daNpcT_getDistTableIdx(talkDist, talkAngle);
    attention_info.flags = attnFlag;
    scale.set(HIO_PARAM(this).common.scale, HIO_PARAM(this).common.scale, HIO_PARAM(this).common.scale);
    mCcStts.SetWeight(HIO_PARAM(this).common.weight);
    mCylH = HIO_PARAM(this).common.height;
    mWallR = HIO_PARAM(this).common.width;
    mAttnFovY = HIO_PARAM(this).common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(HIO_PARAM(this).common.knee_length);
    mRealShadowSize = HIO_PARAM(this).common.real_shadow_size;
    mExpressionMorfFrame = HIO_PARAM(this).common.expression_morf_frame;
    mMorfFrames = HIO_PARAM(this).common.morf_frame;
    gravity = HIO_PARAM(this).common.gravity;
    if (field_0xf80 == 0) {
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        gravity = 0.0f;
    }
    return;
}

/* 80B76014-80B76074 000FD4 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::setAfterTalkMotion() {
    s32 index = 2;
    mFaceMotionSeqMngr.getNo();
    mFaceMotionSeqMngr.setNo(index, -1.0f, 0, 0);
}

/* 80B76074-80B76078 001034 0004+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::srchActors() {
#if DEBUG
    switch (field_0xf80) {
    case 0:
    default:
    }
#endif
}

/* 80B76078-80B76118 001038 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::evtTalk() {
    if (chkAction(&daNpc_Zelda_c::talk)) {
        (this->*mAction2)(NULL);
    } else {
        setAction(&daNpc_Zelda_c::talk);
    }

    return 1;
}

/* 80B76118-80B761E0 0010D8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::evtCutProc() {
    s32 staff_id = dComIfGp_getEventManager().getMyStaffId("Zelda", this, -1);
    if (staff_id != -1) {
        mStaffId = staff_id;
        s32 actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, &daNpc_Zelda_c::mCutNameList, 1, 0, 0);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return 1;
    }

    return 0;
}

/* 80B761E0-80B762CC 0011A0 00EC+00 1/0 0/0 0/0 .text            action__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::action() {
    if (mStagger.checkRebirth() != 0) {
        mStagger.initialize();
        mMode = 1;
    }
    if (mAction1 != NULL) {
        if (mAction2 == mAction1) {
            (this->*mAction2)(0);
        }
        else {
            setAction(mAction1);
        }
    }
}

/* 80B762CC-80B76344 00128C 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::beforeMove() {
    if (checkHide() != 0 || mNoDraw != 0) {
        attention_info.flags = 0;
    }
}

/* 80B76344-80B765D4 001304 0290+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::setAttnPos() {
    s32 iVar2;
    s32 iVar3;
    s32 iVar4;
    J3DModel* pJVar5;
    Mtx* src;
    f32 dVar6;

    cXyz acStack_3c(10.0f, -30.0f, 0.0f);
    mStagger.calc(0);
    dVar6 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    pJVar5 = mpMorf[0]->getModel();
    mJntAnm.setParam((fopAc_ac_c*)this, pJVar5, &acStack_3c,
        getBackboneJointNo(),
        getNeckJointNo(),
        getHeadJointNo(),
        HIO_PARAM(this).common.body_angleX_min,
        HIO_PARAM(this).common.body_angleX_max,
        HIO_PARAM(this).common.body_angleY_min,
        HIO_PARAM(this).common.body_angleY_max,
        HIO_PARAM(this).common.head_angleX_min,
        HIO_PARAM(this).common.head_angleX_max,
        HIO_PARAM(this).common.head_angleY_min,
        HIO_PARAM(this).common.head_angleY_max,
        HIO_PARAM(this).common.neck_rotation_ratio,
        0.0f,
        NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, dVar6);
    setMtx();
    s32 headJointNo = getHeadJointNo();
    pJVar5 = mpMorf[0]->getModel();
    mDoMtx_stack_c::copy(pJVar5->getAnmMtx(headJointNo));
    mDoMtx_stack_c::multVec(&acStack_3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 0, 1.0f, 0);
    acStack_3c.set(0.0f, 0.0f, 0.0f);
    acStack_3c.y = HIO_PARAM(this).common.attention_offset;
    if (field_0xf80 == 0) {
        acStack_3c.set(0.0f, 170.0f, 10.0f);
    }
    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&acStack_3c, &acStack_3c);
    attention_info.position = acStack_3c + current.pos;
}

/* 80B765D4-80B76774 001594 01A0+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Zelda_cFv */
void daNpc_Zelda_c::setCollision() {
    cXyz newCenter;
    if (!mHide) {
        u32 unused = 0x79;

        u32 type = 0xd8fbfdff;
        u32 uVar4 = 0x1f;

        if (dComIfGp_event_runCheck()) {
            type = 0;
            uVar4 = 0;
        } else {
            if (mTwilight) {
                type = 0;
                uVar4 = 0;
            } else {
                if (mStagger.checkStagger()) {
                    type = 0;
                    uVar4 = 0;
                }
            }
        }
        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(type);
        mCyl.SetTgSPrm(uVar4);
        mCyl.OnTgNoHitMark();

        newCenter.set(0.0f,0.0f,0.0f);
        f32 cylH = mCylH;
        f32 wallR = mWallR;
        if (field_0xf80 == 0) {
            newCenter.set(0.0f,0.0f,20.0f);
            cylH = 160.0f;
            wallR = 44.0f;
        }
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&newCenter,&newCenter);
        newCenter += current.pos;

        mCyl.SetH(cylH);
        mCyl.SetR(wallR);
        mCyl.SetC(newCenter);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 80B76774-80B7677C 001734 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::drawDbgInfo() {
#if DEBUG
    const daNpc_Zelda_HIOParam* m = &daNpc_Zelda_Param_c::m;
    if (HIO_PARAM(this).common.debug_info_ON != 0) {
        f32 distMax1 = dComIfGp_getAttention()->getDistTable(
            attention_info.distances[fopAc_attn_JUEL_e]).mDistMax;
        f32 distMax2 = dComIfGp_getAttention()->getDistTable(
            attention_info.distances[fopAc_attn_TALK_e]).mDistMax;
        GXColor circle1Color = { 0xc8, 0x00, 0xff };
        dDbVw_drawCircleOpa(attention_info.position, distMax1, circle1Color, 1, 0xc);
        GXColor circle2Color = { 0xc8, 0x00, 0x00, 0xff };
        dDbVw_drawCircleOpa(attention_info.position, distMax2, circle2Color, 1, 0xc);
        GXColor sphere1Color = { 0x80, 0x80, 0x80, 0xa0 };
        dDbVw_drawSphereXlu(eyePos, 18.0f, sphere1Color, 1);
        GXColor sphere2Color = { 0x80, 0x80, 0x80, 0xa0 };
        dDbVw_drawSphereXlu(attention_info.position, 9.0f, sphere2Color, 1);
    }
#endif
    return 0;
}

/* 80B7677C-80B767C4 00173C 0048+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Zelda_cFv */
int daNpc_Zelda_c::selectAction() {
    mAction1 = NULL;
    mAction1 = &daNpc_Zelda_c::wait;
    return 1;
}

/* 80B767C4-80B767F0 001784 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i        */
BOOL daNpc_Zelda_c::chkAction(actionFunc action) {
    return mAction2 == action;
}

/* 80B767F0-80B76898 0017B0 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i        */
BOOL daNpc_Zelda_c::setAction(int (daNpc_Zelda_c::*action)(void*)) {
    mMode = 3;
    if (mAction2) {
        (this->*mAction2)(NULL);
    }

    mMode = 0;
    mAction2 = action;
    if (mAction2) {
        (this->*mAction2)(NULL);
    }

    return TRUE;
}

/* 80B76898-80B76B74 001858 02DC+00 1/0 0/0 0/0 .text            wait__13daNpc_Zelda_cFPv */
int daNpc_Zelda_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
    case 1:
        if (!mStagger.checkStagger()) {
            if (field_0xf80 == 0) {
                mFaceMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
            } else {
                mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            }
            mMode = 2;
        }
    case 2:
        if (!mStagger.checkStagger()) {
            if (field_0xf80 == 0) {
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
                    if (field_0xe34) {
                        if (step(home.angle.y, -1, -1, 0xf, 0)) {
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

            switch (mJntAnm.getMode()) {
            case 0:
            default:
                break;
            }
        }
    case 3:
    default:
        break;
    }
    return 1;
}

/* 80B76B74-80B76D60 001B34 01EC+00 3/0 0/0 0/0 .text            talk__13daNpc_Zelda_cFPv */
int daNpc_Zelda_c::talk(void* param_0) {
    switch (mMode) {
    case 0:
    case 1:
        if (!mStagger.checkStagger()) {
            initTalk(mFlowNodeNo, NULL);
            mMode = 2;
        }
    case 2:
        if (!mStagger.checkStagger()) {
            if (mTwilight || mPlayerAngle == mCurAngle.y || field_0xf80 == 0) {
                if (talkProc(NULL, 0, NULL, 0)) {
                    int retVal;
                    u32 unused = mFlow.getEventId(&retVal);
                    if (mFlow.checkEndFlow()) {
                        mPlayerActorMngr.entry(daPy_getPlayerActorClass());

                        dComIfGp_event_reset();

                        mMode = 3;
                    }
                }

                mJntAnm.lookPlayer(0);
                if (mTwilight || field_0xf80 == 0) {
                    mJntAnm.lookNone(0);
                }
            } else {
                mJntAnm.lookPlayer(0);
                step(mPlayerAngle, -1, -1, 15, 0);
            }
        }
    case 3:
    default:
        break;
    }

    return 0;
}

/* 80B76D60-80B76D80 001D20 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Create__FPv */
static int daNpc_Zelda_Create(void* param_0) {
    return ((daNpc_Zelda_c*)param_0)->create();
}

/* 80B76D80-80B76DA0 001D40 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Delete__FPv */
static int daNpc_Zelda_Delete(void* param_0) {
    return ((daNpc_Zelda_c*)param_0)->Delete();
}

/* 80B76DA0-80B76DC0 001D60 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Execute__FPv */
static int daNpc_Zelda_Execute(void* param_0) {
    return ((daNpc_Zelda_c*)param_0)->Execute();
}

/* 80B76DC0-80B76DE0 001D80 0020+00 1/0 0/0 0/0 .text            daNpc_Zelda_Draw__FPv */
static int daNpc_Zelda_Draw(void* param_0) {
    return ((daNpc_Zelda_c*)param_0)->Draw();
}

/* 80B76DE0-80B76DE8 001DA0 0008+00 1/0 0/0 0/0 .text            daNpc_Zelda_IsDelete__FPv */
static int daNpc_Zelda_IsDelete(void* param_0) {
    return 1;
}

/* 80B77DD8-80B77E84 002D98 00AC+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Zelda_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Zelda_c::daNpc_Zelda_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) :
    daNpcT_c(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7) {
    OS_REPORT("|%06d:%x|daNpc_Zelda_c -> コンストラクト\n", g_Counter.mCounter0, this);
}

/* 80B77F14-80B77F1C 002ED4 0008+00 1/0 0/0 0/0 .text getEyeballRMaterialNo__13daNpc_Zelda_cFv */
u16 daNpc_Zelda_c::getEyeballRMaterialNo() {
    return 5;
}

/* 80B77F1C-80B77F24 002EDC 0008+00 1/0 0/0 0/0 .text getEyeballLMaterialNo__13daNpc_Zelda_cFv */
u16 daNpc_Zelda_c::getEyeballLMaterialNo() {
    return 4;
}

/* 80B77F24-80B77F2C 002EE4 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Zelda_cFv
 */
s32 daNpc_Zelda_c::getHeadJointNo() {
    return 4;
}

/* 80B77F2C-80B77F34 002EEC 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Zelda_cFv
 */
s32 daNpc_Zelda_c::getNeckJointNo() {
    return 3;
}

/* 80B77F34-80B77F3C 002EF4 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Zelda_cFv */
s32 daNpc_Zelda_c::getBackboneJointNo() {
    return 1;
}

/* 80B77F3C-80B77F4C 002EFC 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Zelda_cFi
 */
int daNpc_Zelda_c::checkChangeJoint(int param_0) {
    return param_0 == 4;
}

/* 80B77F4C-80B77F5C 002F0C 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Zelda_cFi
 */
int daNpc_Zelda_c::checkRemoveJoint(int param_0) {
    return param_0 == 17;
}

/* 80B77F5C-80B77FA4 002F1C 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Zelda_Param_cFv */
daNpc_Zelda_Param_c::~daNpc_Zelda_Param_c() {
}

/* 80B78240-80B78260 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Zelda_MethodTable */
static actor_method_class daNpc_Zelda_MethodTable = {
    (process_method_func)daNpc_Zelda_Create,
    (process_method_func)daNpc_Zelda_Delete,
    (process_method_func)daNpc_Zelda_Execute,
    (process_method_func)daNpc_Zelda_IsDelete,
    (process_method_func)daNpc_Zelda_Draw,
};

/* 80B78260-80B78290 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ZELDA */
extern actor_process_profile_definition g_profile_NPC_ZELDA = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_NPC_ZELDA,           // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daNpc_Zelda_c),    // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    384,                      // mPriority
    &daNpc_Zelda_MethodTable, // sub_method
    0x00040108,               // mStatus
    fopAc_NPC_e,              // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
