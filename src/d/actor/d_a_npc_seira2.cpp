/**
 * @file d_a_npc_seira2.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_seira2.h"

/* 80AD4BB0-80AD4BC0 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][2] = {
    {4, 3},
    {17, 2},
};

/* 80AD4BC0-80AD4BD0 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
};

/* 80AD4BD0-80AD4BE0 -00001 0010+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[4] = {
    "",
    "Seira",
    "SeraBtl",
    "Sera",
};

/* 80AD4BE0-80AD4BE4 000050 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[4] = {3, 1, 2, -1};

/* 80AD4BE4-80AD4C00 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[7] = {
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0,
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0,
};

/* 80AD4C00-80AD4D88 000070 0188+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[14] = {
    {-1, 0, 0, 67, 2, 1, 1},
    {14, 0, 1, 67, 2, 1, 1},
    {11, 0, 1, 75, 0, 1, 0},
    {7, 0, 1, 69, 0, 1, 0},
    {15, 0, 1, 78, 0, 1, 0},
    {6, 0, 1, 68, 0, 1, 0},
    {16, 2, 1, 79, 2, 1, 0},
    {9, 2, 1, 71, 2, 1, 0},
    {10, 0, 1, 74, 0, 1, 0},
    {12, 2, 1, 76, 2, 1, 0},
    {8, 0, 1, 67, 2, 1, 0},
    {17, 2, 1, 80, 2, 1, 0},
    {13, 0, 1, 77, 0, 1, 0},
    {18, 2, 1, 81, 2, 1, 0},
};

/* 80AD4D88-80AD5044 0001F8 02BC+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[25] = {
    {42, 2, 1, 45, 0, 1, 1, 12},
    {37, 2, 1, 55, 0, 1, 0, 12},
    {41, 2, 1, 45, 0, 1, 1, 12},
    {27, 2, 1, 55, 2, 1, 0, 12},
    {35, 0, 1, 55, 0, 1, 0, 12},
    {35, 0, 1, 62, 0, 1, 0, 12},
    {34, 0, 1, 61, 0, 1, 0, 12},
    {31, 0, 1, 59, 0, 1, 0, 12},
    {21, 2, 1, 49, 2, 1, 0, 12},
    {20, 2, 1, 48, 2, 1, 0, 12},
    {29, 0, 1, 57, 0, 1, 0, 12},
    {30, 2, 1, 58, 2, 1, 0, 12},
    {24, 2, 1, 52, 2, 1, 0, 12},
    {22, 2, 1, 50, 2, 1, 0, 12},
    {5, 0, 1, 46, 0, 1, 0, 12},
    {25, 2, 1, 53, 2, 1, 0, 12},
    {26, 0, 1, 54, 0, 1, 1, 12},
    {19, 0, 1, 47, 0, 1, 1, 12},
    {23, 2, 1, 51, 2, 1, 1, 12},
    {28, 0, 1, 56, 0, 1, 1, 12},
    {32, 0, 1, 60, 0, 1, 1, 12},
    {33, 2, 1, 45, 2, 1, 1, 12},
    {39, 0, 1, 45, 0, 1, 1, 12},
    {40, 2, 1, 64, 2, 1, 1, 12},
    {38, 0, 1, 45, 0, 1, 1, 12},
};

/* 80AD5044-80AD5124 0004B4 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[56] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 1}, {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 1}, {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AD5124-80AD52B4 000594 0190+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[100] = {
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {14, -1, 1}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {16, -1, 1}, {15, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {15, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 1}, {23, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {22, -1, 1}, {23, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {19, -1, 1}, {15, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {23, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {20, -1, 1}, {21, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {21, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {18, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {24, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AD52B4-80AD52B8 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_Seira2_c */
char* daNpc_Seira2_c::mCutNameList[1] = {""};

/* 80AD52B8-80AD52C4 000728 000C+00 2/2 0/0 0/0 .data            mCutList__14daNpc_Seira2_c */
daNpc_Seira2_c::cutFunc daNpc_Seira2_c::mCutList[1] = { NULL };

/* 80AD5624-80AD5628 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Seira2_Param_c l_HIO;

/* 80AD0C0C-80AD0D58 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__14daNpc_Seira2_cFv */
daNpc_Seira2_c::~daNpc_Seira2_c() {
    deleteObject();
    if (mpMorf[0] != 0) {
        mpMorf[0]->stopZelAnime();
    }

    if (mpSeiraMorf != NULL) {
        mpSeiraMorf->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* ############################################################################################## */
/* 80AD4A60-80AD4AEC 000000 008C+00 9/9 0/0 0/0 .rodata          m__20daNpc_Seira2_Param_c */
const daNpc_Seira2_HIOParam daNpc_Seira2_Param_c::m = {
    210.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    200.0f,
    35.0f,
    50.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    60.0f,
    -60.0f,
    0.6f,
    12.0f,
    5,
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

/* 80AD0D58-80AD0FF8 000238 02A0+00 1/1 0/0 0/0 .text            create__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::create() {
    fopAcM_SetupActor2(this, daNpc_Seira2_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4,
                       l_evtList, l_resNameList
    );

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mEvtBit = daNpcT_chkEvtBit(0x316);
    mTwilight = 0;
    mChkBottle = checkBottle();

    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x6430)) {
            return cPhs_ERROR_e;
        }

        if (isDelete()) {
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                        &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
                        fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();
        mCcStts.Init(daNpc_Seira2_Param_c::m.common.weight, 0, this);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mCyl1.SetTgHitCallback(tgHitCallBack);
        reset();
        mCreating = 1;
        Execute();
        mCreating = 0;
    }

    return rv;
}

/* 80AD0FF8-80AD134C 0004D8 0354+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::CreateHeap() {
    enum XXX { x0 = 0, x1=1};
    J3DModelData* modelData = NULL;
    J3DModel* model = NULL;
    int bmd_get_idx = mTwilight == 1 ? x0 : x0;
    int res_name_idx = l_bmdData[bmd_get_idx][1];
    int sp_0x2c = l_bmdData[bmd_get_idx][0];
    modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[res_name_idx], sp_0x2c));
    if (modelData == NULL) {
        return 1;
    }

    u32 sp_0x28 = 0x11020284;
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
        0x80000, sp_0x28);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }

    model->setUserArea((uintptr_t)this);
    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    bmd_get_idx = x1;
    res_name_idx = l_bmdData[bmd_get_idx][1];
    sp_0x2c = l_bmdData[bmd_get_idx][0];
    modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[res_name_idx], sp_0x2c));

    sp_0x28 = 0x11000084;
    mpSeiraMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, NULL,
                                        0, sp_0x28);
    if (mpSeiraMorf == NULL || mpSeiraMorf->getModel() == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, 0) && setBottleAnm(25, 2, 0.0f, false)) {
        return 1;
    }

    return 0;
}

/* 80AD1508-80AD153C 0009E8 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Seira2_c();
    return 1;
}

/* 80AD153C-80AD1610 000A1C 00D4+00 2/2 0/0 0/0 .text            Execute__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::Execute() {
    if (!mCreating && !checkShopOpen() && !field_0x10ED) {
        initShopSystem();
        setSellItemMax(getMaxNumItem());
        field_0xf60 = -1;
        setMasterType(1);
        mShopCamAction.setCamDataIdx(0);
        mShopCamAction.setCamAction(NULL);
        field_0x10ED = 1;
    }

    daNpcT_c::execute();
    if (field_0x10ED && searchItemActor()) {
        mShopCamAction.move();
    }

    return 1;
}

/* 80AD1610-80AD16A4 000AF0 0094+00 1/1 0/0 0/0 .text            Draw__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    return daNpcT_c::draw(0, 0, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 80AD16A4-80AD16C4 000B84 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpc_Seira2_cFP10fopAc_ac_c           */
int daNpc_Seira2_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Seira2_c*>(i_this)->CreateHeap();
}

/* 80AD16C4-80AD171C 000BA4 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpc_Seira2_cFP8J3DJointi              */
int daNpc_Seira2_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Seira2_c* i_this = reinterpret_cast<daNpc_Seira2_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_0, model);
        }
    }

    return 1;
}

/* 80AD171C-80AD179C 000BFC 0080+00 1/1 0/0 0/0 .text            getType__14daNpc_Seira2_cFv */
u8 daNpc_Seira2_c::getType() {
    if (dComIfGs_isDarkClearLV(0)) {
        return 3;
    }

    if (daNpcT_chkEvtBit(0x3D) || daNpcT_chkEvtBit(0x316)) {
        return 3;
    }

    if (daNpcT_chkEvtBit(0x35)) {
        return 4;
    }

    return 0;
}

/* 80AD179C-80AD17B8 000C7C 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__14daNpc_Seira2_cFv
 */
int daNpc_Seira2_c::getFlowNodeNo() {
    u16 nodeNo = home.angle.x;
    if (nodeNo == 0xffff) {
        return -1;
    }

    return nodeNo;
}

/* 80AD17B8-80AD17C4 000C98 000C+00 1/1 0/0 0/0 .text            getMaxNumItem__14daNpc_Seira2_cFv
 */
u8 daNpc_Seira2_c::getMaxNumItem() {
    return (fopAcM_GetParam(this) & 0xf000000) >> 0x18;
}

/* 80AD17C4-80AD182C 000CA4 0068+00 1/1 0/0 0/0 .text            checkBottle__14daNpc_Seira2_cFv */
u8 daNpc_Seira2_c::checkBottle() {
    u8 prm = fopAcM_GetParam(this);
    if (dComIfGs_isDarkClearLV(0)) {
        return false;
    }

    switch (prm) {
        case 0:
            return true;
        default:
            return false;
    }
}

/* 80AD182C-80AD1834 000D0C 0008+00 1/1 0/0 0/0 .text            isDelete__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::isDelete() {
    return FALSE;
}

/* 80AD1834-80AD1968 000D14 0134+00 1/1 0/0 0/0 .text            reset__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::reset() {
    initialize();
    memset(&mNextAction, 0, (u8*)&field_0x10F0 - (u8*)&mNextAction);
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    for (int idx = 0; idx < 1; ++idx) {
        mActorMngr[idx].initialize();
    }

    setAngle(home.angle.y);
}

/* 80AD1968-80AD19EC 000E48 0084+00 1/0 0/0 0/0 .text            afterJntAnm__14daNpc_Seira2_cFi */
void daNpc_Seira2_c::afterJntAnm(int arg0) {
    if (arg0 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (arg0 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80AD19EC-80AD1B38 000ECC 014C+00 1/0 0/0 0/0 .text            setParam__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setParam() {
    if (field_0x10EC == 1) {
        if (mShopProcess == 2) {
            mShopCamAction.Reset();
        } else {
            mShopCamAction.EventRecoverNotime();
        }

        field_0x10EC = 0;
    }

    selectAction();
    srchActors();

    u32 att_flags = (fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e);
    s16 talk_dist = daNpc_Seira2_Param_c::m.common.talk_distance;
    s16 talk_ang = daNpc_Seira2_Param_c::m.common.talk_angle;
    s16 att_dist = daNpc_Seira2_Param_c::m.common.attention_distance;
    s16 att_ang = daNpc_Seira2_Param_c::m.common.attention_angle;

    if (checkStageIsSeira2sShop()) {
        talk_dist = 4;
        att_dist = 4;
    }

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(att_dist, att_ang);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_dist, talk_ang);
    attention_info.flags = att_flags;

    scale.set(daNpc_Seira2_Param_c::m.common.scale, daNpc_Seira2_Param_c::m.common.scale,
            daNpc_Seira2_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Seira2_Param_c::m.common.weight);
    mCylH = daNpc_Seira2_Param_c::m.common.height;
    mWallR = daNpc_Seira2_Param_c::m.common.width;

    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Seira2_Param_c::m.common.knee_length);

    mRealShadowSize = daNpc_Seira2_Param_c::m.common.real_shadow_size;
    gravity = daNpc_Seira2_Param_c::m.common.gravity;
    mExpressionMorfFrame = daNpc_Seira2_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Seira2_Param_c::m.common.morf_frame;
}

/* 80AD1B38-80AD1BF8 001018 00C0+00 1/0 0/0 0/0 .text setAfterTalkMotion__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setAfterTalkMotion() {
    int iVar2 = 0;
    switch(mFaceMotionSeqMngr.getNo()) {
        case 4:
            iVar2 = 6;
            break;
        case 7:
            iVar2 = 10;
            break;
        case 8:
            iVar2 = 11;
            break;
        case 9:
            iVar2 = 12;
            break;
        case 3:
            return;
        default:
            iVar2 = 13;
            break;
    }

    mFaceMotionSeqMngr.setNo(iVar2, -1.0f, 0, 0);
}

/* 80AD1BF8-80AD1C60 0010D8 0068+00 1/1 0/0 0/0 .text            srchActors__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::srchActors() {
    switch (mType) {
        case 1:
        case 2: {
            if (mActorMngr[0].getActorP() == NULL) {
                // NE means Neko, which means Cat in Japanese:
                mActorMngr[0].entry(getNearestActorP(PROC_NPC_NE));
            }

            break;
        }
    }
}

/* 80AD1C60-80AD1E04 001140 01A4+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::evtTalk() {
    if (field_0x10ED) {
        if (chkAction(&daNpc_Seira2_c::shop)) {
            (this->*(mActFunc_0))(NULL);
        } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
            mShopCamAction.shop_cam_action_init();
            setAction(&daNpc_Seira2_c::shop);
        }
    } else {
        if (chkAction(&daNpc_Seira2_c::talk)) {
            (this->*(mActFunc_0))(NULL);
        } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
            setAction(&daNpc_Seira2_c::talk);
        }
    }

    return 1;
}

/* 80AD1E04-80AD1ED4 0012E4 00D0+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::evtCutProc() {
    BOOL retval = FALSE;
    int staff_id = dComIfGp_getEventManager().getMyStaffId("Seira2", this, -1);
    if (staff_id != -1) {
        mStaffId = staff_id;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, (char**) &daNpc_Seira2_c::mCutNameList, 1, 0, 0);
        if (((this->*(mCutList[actIdx]))(mStaffId))) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        retval = TRUE;
    }

    mShopCamAction.Save();
    return retval;
}

/* 80AD1ED4-80AD2030 0013B4 015C+00 1/0 0/0 0/0 .text            action__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::action() {
    if (field_0x10ED == 0) {
        fopAc_ac_c* hit_chk = hitChk(&mCyl1, -1);
        if (hit_chk) {
            mStagger.setParam(this, hit_chk, mCurAngle.y);
            setDamage(0, 13, 13);
            mStagger.setPower(0.0f);
            mDamageTimerStart = 0;
        }
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (mNextAction) {
        if (mActFunc_0 == mNextAction) {
            (this->*(mActFunc_0))(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 80AD2030-80AD20A8 001510 0078+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80AD20A8-80AD23A8 001588 0300+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setAttnPos() {
    cXyz eyeOffset(-30.0f, 10.0f, 0.0f);
    mStagger.calc(0);
    mJntAnm.setParam(
        this, mpMorf[0]->getModel(), &eyeOffset, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
        daNpc_Seira2_Param_c::m.common.body_angleX_min, daNpc_Seira2_Param_c::m.common.body_angleX_max,
        daNpc_Seira2_Param_c::m.common.body_angleY_min, daNpc_Seira2_Param_c::m.common.body_angleY_max,
        daNpc_Seira2_Param_c::m.common.head_angleX_min, daNpc_Seira2_Param_c::m.common.head_angleX_max,
        daNpc_Seira2_Param_c::m.common.head_angleY_min, daNpc_Seira2_Param_c::m.common.head_angleY_max,
        daNpc_Seira2_Param_c::m.common.neck_rotation_ratio, 0.0f, NULL);

    f32 rad_val = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.calcJntRad(0.2f, 1.0f, rad_val);
    setMtx();
    if (mpSeiraMorf) {
        Mtx jointAnmMtx;
        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(18));
        cMtx_copy(mDoMtx_stack_c::get(), jointAnmMtx);
        mpSeiraMorf->getModel()->setBaseTRMtx(jointAnmMtx);
        mpSeiraMorf->play(0, 0);
        mpSeiraMorf->modelCalc();
    }

    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 1, 1.0f, 0);
    if (checkStageIsSeira2sShop()) {
        eyeOffset.set(0.0f, 170.0f, 80.0f);
        if (mType == 1 || mType == 1) {
            eyeOffset.y += 20.0f;
        }

        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getBaseTRMtx());
        mDoMtx_stack_c::multVec(&eyeOffset, &attention_info.position);
    } else {
        attention_info.position = current.pos;
        attention_info.position.y += daNpc_Seira2_Param_c::m.common.attention_offset;
    }
}

/* 80AD23A8-80AD2550 001888 01A8+00 1/0 0/0 0/0 .text            setCollision__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setCollision() {
    cXyz cStack_48;
    f32 cylH, wallR;
    if (!mHide) {
        if (mTwilight == 1 && dComIfGp_event_runCheck() == FALSE) {
            mCyl1.SetCoSPrm(0x69);
        } else {
            mCyl1.SetCoSPrm(0x79);
        }

        if (&daNpc_Seira2_c::sit == mNextAction || &daNpc_Seira2_c::happy == mNextAction
            || &daNpc_Seira2_c::worry == mNextAction) {
            mCyl1.ClrCoHit();
            mCyl1.ClrTgHit();
            return;
        }

        if (mStagger.checkStagger()) {
            mCyl1.SetTgType(0);
            mCyl1.SetTgSPrm(0);
        } else {
            mCyl1.SetTgType(0xD8FBFDFF);
            mCyl1.SetTgSPrm(0x1F);
            mCyl1.OnTgNoHitMark();
        }

        cylH = mCylH;
        wallR = mWallR;
        cStack_48 = current.pos;
        mCyl1.SetH(cylH);
        mCyl1.SetR(wallR);
        mCyl1.SetC(cStack_48);
        dComIfG_Ccsp()->Set(&mCyl1);
    }

    mCyl1.ClrCoHit();
    mCyl1.ClrTgHit();
}

/* 80AD2550-80AD2558 001A30 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::drawDbgInfo() {
    return FALSE;
}

/* 80AD2558-80AD2630 001A38 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::drawOtherMdl() {
    if (field_0x10ED) {
        cXyz sp8;
        itemRotate();
        sp8.set(0.0f, 0.0f, 0.0f);
        itemZoom(&sp8);
        drawCursor();
    }

    if (mpSeiraMorf != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpSeiraMorf->getModel(), &tevStr);
        fopAcM_setEffectMtx(this, mpSeiraMorf->getModel()->getModelData());
        if (mChkBottle == 0) {
            mpSeiraMorf->getModel()->getModelData()->hide();
        } else {
            mpSeiraMorf->getModel()->getModelData()->show();
        }

        mpSeiraMorf->entryDL();
    }
}

/* 80AD2630-80AD2710 001B10 00E0+00 2/2 0/0 0/0 .text            setBottleAnm__14daNpc_Seira2_cFiifb
 */
bool daNpc_Seira2_c::setBottleAnm(int arg0, int arg1, f32 arg2, bool arg3) {
    static int bottlAnmData[27][2] = {
        {-1, 2}, {-1, 2}, {-1, 2}, { 6, 2}, {11, 2}, {11, 2}, {10, 2}, { 9, 2},
        { 4, 2}, {-1, 2}, { 7, 2}, { 8, 2}, { 5, 2}, {-1, 2}, {-1, 2},
        {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2},
        {-1, 2}, {-1, 2}, {13, 2}, {14, 2},
    };

    J3DAnmTransform* trans_p = NULL;
    int var_r30 = arg0;
    if (mpSeiraMorf != NULL) {
        if (arg3 == false) {
            var_r30 = mType == 0 ? 25 : 26;
        }

        if (bottlAnmData[var_r30][0] > 0) {
            trans_p = getTrnsfrmKeyAnmP(l_resNameList[bottlAnmData[var_r30][1]], bottlAnmData[var_r30][0]);
        }

        if (trans_p != NULL) {
            mpSeiraMorf->setAnm(trans_p, arg1, arg2, 1.0f, 0.0f, -1.0f);
        }
    }

    return true;
}

/* 80AD2710-80AD2748 001BF0 0038+00 1/0 0/0 0/0 .text afterSetMotionAnm__14daNpc_Seira2_cFiifi */
bool daNpc_Seira2_c::afterSetMotionAnm(int arg0, int arg1, f32 arg2, int) {
    f32 var_f30 = (mCreating == 1) ? 0.0f : arg2;
    setBottleAnm(arg0, arg1, var_f30, 1);
}

/* 80AD2748-80AD2870 001C28 0128+00 1/1 0/0 0/0 .text            selectAction__14daNpc_Seira2_cFv */
int daNpc_Seira2_c::selectAction() {
    mNextAction = NULL;
    // TODO: Debug-only set & return.
    switch (mType) {
    case 0:
        mNextAction = &daNpc_Seira2_c::sit;
        break;

    case 1:
        mNextAction = &daNpc_Seira2_c::happy;
        break;

    case 2:
        mNextAction = &daNpc_Seira2_c::worry;
        break;

    case 3:
        mNextAction = &daNpc_Seira2_c::sad;
        break;

    case 4:
        mNextAction = &daNpc_Seira2_c::smile;
        break;

    case 5:
        mNextAction = &daNpc_Seira2_c::lookaround;
        break;

    default:
        mNextAction = &daNpc_Seira2_c::wait;
        break;
    }

    return 1;
}

/* 80AD2870-80AD289C 001D50 002C+00 1/1 0/0 0/0 .text
 * chkAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i      */
int daNpc_Seira2_c::chkAction(actionFunc i_action) {
    return mActFunc_0 == i_action;
}

/* 80AD289C-80AD2944 001D7C 00A8+00 2/2 0/0 0/0 .text
 * setAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i      */
int daNpc_Seira2_c::setAction(actionFunc i_action) {
    mMode = MODE_EXIT;
    if (mActFunc_0 != NULL) {
        (this->*(mActFunc_0))(NULL);
    }

    mMode = MODE_ENTER;
    mActFunc_0 = i_action;
    if (mActFunc_0 != NULL) {
        (this->*(mActFunc_0))(NULL);
    }

    return 1;
}

/* 80AD2944-80AD29BC 001E24 0078+00 2/2 0/0 0/0 .text checkStageIsSeira2sShop__14daNpc_Seira2_cFv
 */
BOOL daNpc_Seira2_c::checkStageIsSeira2sShop() {
    return 0 == strcmp("R_SP01", dComIfGp_getStartStageName())
           && dComIfGp_getStartStageRoomNo() == 1 && !dComIfG_play_c::getLayerNo(0);
}

/* 80AD29BC-80AD2B68 001E9C 01AC+00 1/0 0/0 0/0 .text            wait__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::wait(void*) {
    int var_r30;
    switch (mMode) {
        case 0:
        case 1: {
            mFaceMotionSeqMngr.setNo(13, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(13, -1.0f, 0, 0);
            mMode = 2;
        }

        case 2: {
            if (!mStagger.checkStagger()) {
                if (srchPlayerActor()) {
                    mJntAnm.lookPlayer(0);
                    var_r30 = checkStep();
                } else {
                    mJntAnm.lookNone(0);
                    var_r30 = home.angle.y != mCurAngle.y;
                }

                if (var_r30 && step(home.angle.y, -1, -1, 15, 0)) {
                    mMode = 1;
                }
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80AD2B68-80AD2D8C 002048 0224+00 2/0 0/0 0/0 .text            sit__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::sit(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
            mJntAnm.lookNone(0);
            mEventTimer = cLib_getRndValue(90, 90);
            mMode = 2;
        }

        case 2: {
            if (mShopProcess == 2) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }

            if (mEventTimer == 0) {
                if (mMotionSeqMngr.getNo() == 2) {
                    mFaceMotionSeqMngr.setNo(3, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(14, -1.0f, 0, 0);
                } else if (mMotionSeqMngr.checkEndSequence()) {
                    mEventTimer = cLib_getRndValue(90, 90);
                    mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                }
            } else {
                cLib_calcTimer(&mEventTimer);
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80AD2D8C-80AD2F14 00226C 0188+00 2/0 0/0 0/0 .text            happy__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::happy(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            if (daNpcT_chkEvtBit(0xA5)) {
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                mChkBottle = 0;
            } else {
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(7, -1.0f, 0, 0);
            }

            mJntAnm.lookNone(0);
            mMode = 2;
        }

        case 2: {
            if (mShopProcess == 2) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80AD2F14-80AD31F0 0023F4 02DC+00 2/0 0/0 0/0 .text            worry__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::worry(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            if (daNpcT_chkEvtBit(0x90)) {
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
            } else {
                mFaceMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
            }

            mChkBottle = 0;
            mJntAnm.lookPlayer(0);
            mEventTimer = 0;
            mMode = 2;
        }

        case 2: {
            if (mShopProcess == 2) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }

            if (mEventTimer == 0) {
                mEventTimer = cLib_getRndValue(90, 90);
                if (mJntAnm.getMode() != 1) {
                    mJntAnm.lookPlayer(0);
                } else {
                    fopAc_ac_c* actor_p = mActorMngr[0].getActorP();
                    if (actor_p != NULL) {
                        mJntAnm.lookActor(actor_p, 0.0f, 0);
                    } else {
                        mJntAnm.lookNone(0);
                    }
                }
            } else {
                cLib_calcTimer(&mEventTimer);
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80AD31F0-80AD3508 0026D0 0318+00 1/0 0/0 0/0 .text            sad__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::sad(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            if (daNpcT_chkEvtBit(0x316)) {
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(11, -1.0f, 0, 0);
                mJntAnm.lookNone(0);
            } else if (daNpcT_chkEvtBit(0x208)) {
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(22, -1.0f, 0, 0);
                mJntAnm.lookPlayer(0);
            } else {
                mFaceMotionSeqMngr.setNo(11, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(16, -1.0f, 0, 0);
                mJntAnm.lookNone(0);
            }

            mMode = 2;
        }

        case 2: {
            if (mShopProcess == 2) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }

            if (daNpcT_chkEvtBit(0x208) && !daNpcT_chkEvtBit(0x316)
                && fopAcM_searchPlayerDistanceXZ(this) > 350.0f) {
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(11, -1.0f, 0, 0);
                mJntAnm.lookNone(0);
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80AD3508-80AD3614 0029E8 010C+00 1/0 0/0 0/0 .text            lookaround__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::lookaround(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            mFaceMotionSeqMngr.setNo(13, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(23, -1.0f, 0, 0);
            mJntAnm.lookNone(0);
            mMode = 2;
        }

        case 2: {
            if (mShopProcess == 2) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80AD3614-80AD3720 002AF4 010C+00 1/0 0/0 0/0 .text            smile__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::smile(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
            mJntAnm.lookNone(0);
            mMode = 2;
        }

        case 2: {
            if (mShopProcess == 2) {
                mSpeakEvent = true;
                field_0xe33 = true;
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80AD3720-80AD3890 002C00 0170+00 2/0 0/0 0/0 .text            talk__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::talk(void*) {
    int reg_r30 = 0;
    switch (mMode) {
        case 0:
        case 1: {
            if (mStagger.checkStagger()) {
                break;
            }

            initTalk(mFlowNodeNo, NULL);
            mMode = 2;
        }

        case 2: {
            if (mTwilight) {
                reg_r30 = 1;
            } else {
                mJntAnm.lookPlayer(0);
                if (mCurAngle.y != fopAcM_searchPlayerAngleY(this)) {
                    step(fopAcM_searchPlayerAngleY(this), -1, -1, 15, 0);
                } else {
                    reg_r30 = 1;
                }
            }

            if (reg_r30 && talkProc(NULL, FALSE, NULL, 0)) {
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                dComIfGp_event_reset();
                mMode = 3;
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 0;
}

/* 80AD3890-80AD3960 002D70 00D0+00 2/0 0/0 0/0 .text            shop__14daNpc_Seira2_cFPv */
int daNpc_Seira2_c::shop(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            if (mShopProcess == 2) {
                shop_init(true);
            } else {
                mShopCamAction.Save();
                initTalk(mFlowNodeNo, NULL);
                shop_init(false);
            }

            mMode = 2;
        }
        // fallthrough intentional
        case 2: {
            mShopProcess = shop_process(this, &mFlow);
            if (mShopProcess) {
                dComIfGp_event_reset();
                field_0x10EC = 1;
                mMode = 3;
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 0;
}

/* 80AD3960-80AD3980 002E40 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Create__FPv */
static int daNpc_Seira2_Create(void* i_this) {
    return static_cast<daNpc_Seira2_c*>(i_this)->create();
}

/* 80AD3980-80AD39A0 002E60 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Delete__FPv */
static int daNpc_Seira2_Delete(void* i_this) {
    return static_cast<daNpc_Seira2_c*>(i_this)->Delete();
}

/* 80AD39A0-80AD39C0 002E80 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Execute__FPv */
static int daNpc_Seira2_Execute(void* i_this) {
    return static_cast<daNpc_Seira2_c*>(i_this)->Execute();
}

/* 80AD39C0-80AD39E0 002EA0 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Draw__FPv */
static int daNpc_Seira2_Draw(void* i_this) {
    return static_cast<daNpc_Seira2_c*>(i_this)->Draw();
}

/* 80AD39E0-80AD39E8 002EC0 0008+00 1/0 0/0 0/0 .text            daNpc_Seira2_IsDelete__FPv */
static int daNpc_Seira2_IsDelete(void*) {
    return 1;
}

/* 80AD5444-80AD5464 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Seira2_MethodTable */
static actor_method_class daNpc_Seira2_MethodTable = {
    (process_method_func)daNpc_Seira2_Create,
    (process_method_func)daNpc_Seira2_Delete,
    (process_method_func)daNpc_Seira2_Execute,
    (process_method_func)daNpc_Seira2_IsDelete,
    (process_method_func)daNpc_Seira2_Draw,
};

/* 80AD5464-80AD5494 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SERA2 */
extern actor_process_profile_definition g_profile_NPC_SERA2 = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_SERA2,            // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_Seira2_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  362,                       // mPriority
  &daNpc_Seira2_MethodTable, // sub_method
  0x00044108,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};
