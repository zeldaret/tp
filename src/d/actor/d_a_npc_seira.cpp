/**
 * @file d_a_npc_seira.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_seira.h"
#include "d/d_meter_HIO.h"
#include "dol2asm.h"

/* 80ACFFB0-80ACFFC0 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[2][2] = {
    {4, 3},
    {17, 2},
};

/* 80ACFFC0-80ACFFE0 -00001 0020+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[4] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
    {"CONVERSATION_ABOUT_SARU01", 3},
    {"CONVERSATION_ABOUT_SARU02", 3},
};

/* 80ACFFE0-80ACFFF4 -00001 0014+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[5] = {
    "",
    "Seira",
    "SeraBtl",
    "Sera",
    "Seira_p1",
};

/* 80ACFFF4-80ACFFF8 000064 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[4] = {3, 1, 2, -1};

/* 80ACFFF8-80ACFFFC 000068 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {3, 4, -1};

/* 80ACFFFC-80AD0018 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[7] = {
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0,
    l_loadResPtrn0, l_loadResPtrn1, l_loadResPtrn0,
};

/* 80AD0018-80AD01A0 000088 0188+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
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

/* 80AD01A0-80AD0478 000210 02D8+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[26] = {
    {42, 2, 1, 45, 0, 1, 1, 12},
    {37, 2, 1, 55, 0, 1, 0, 12},
    {41, 2, 1, 45, 0, 1, 1, 12},
    {27, 2, 1, 55, 2, 1, 0, 12},
    {35, 0, 1, 55, 0, 1, 0, 12},
    {35, 0, 1, 62, 0, 1, 0, 12},
    {34, 0, 1, 61, 0, 1, 0, 12},
    {31, 0, 1, 59, 0, 1, 0, 12},
    {36, 0, 1, 63, 0, 1, 0, 12},
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

/* 80AD0478-80AD0558 0004E8 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[56] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 1}, {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 1}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 1}, {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AD0558-80AD06F8 0005C8 01A0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[104] = {
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {11, -1, 1}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {13, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {14, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {15, -1, 1}, {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 1}, {16, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {16, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {18, -1, 1}, {24, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {23, -1, 1}, {24, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {20, -1, 1}, {16, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {24, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {21, -1, 1}, {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {22, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {19, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {25, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80AD06F8-80AD0700 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Seira_c */
char* daNpc_Seira_c::mCutNameList[2] = {
    "",
    "CONVERSATION_ABOUT_SARU",
};

/* 80AD070C-80AD0724 00077C 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_Seira_c */
daNpc_Seira_c::cutFunc daNpc_Seira_c::mCutList[2] = {
    NULL,
    &daNpc_Seira_c::cutConversationAboutSaru,
};

/* 80AD0B04-80AD0B08 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Seira_Param_c l_HIO;

/* 80ACB7CC-80ACB918 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Seira_cFv */
daNpc_Seira_c::~daNpc_Seira_c() {
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
/* 80ACFDF0-80ACFE7C 000000 008C+00 9/9 0/0 0/0 .rodata          m__19daNpc_Seira_Param_c */
const daNpc_Seira_HIOParam daNpc_Seira_Param_c::m = {
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
    30.0f,
    -10.0f,
    60.0f,
    -60.0f,
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

/* 80ACB918-80ACBBD4 000238 02BC+00 1/1 0/0 0/0 .text            create__13daNpc_Seira_cFv */
int daNpc_Seira_c::create() {
    fopAcM_SetupActor2(this, daNpc_Seira_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4,
                       l_evtList, l_resNameList
    );

    mNpcType = getNpcType();
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mEvtBit = daNpcT_chkEvtBit(0x208);
    mTwilight = 0;
    mChkBottle = checkBottle();

    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, mType != 5 ? 0x6420 : 0x3DE0)) {
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
        mCcStts.Init(daNpc_Seira_Param_c::m.common.weight, 0, this);
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

/* 80ACBBD4-80ACBF40 0004F4 036C+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Seira_cFv */
int daNpc_Seira_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* modelData = NULL;
    J3DModel* model = NULL;
    int bmd_get_idx = mTwilight == 1 ? 0 : 0;
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

    if (mType != 5) {
        bmd_get_idx = 1;
        res_name_idx = l_bmdData[bmd_get_idx][1];
        sp_0x2c = l_bmdData[bmd_get_idx][0];
        modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
            l_resNameList[res_name_idx], sp_0x2c));
        if (modelData == NULL) {
            return 0;
        }

        sp_0x28 = 0x11000084;
        mpSeiraMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, NULL,
                                           0, sp_0x28);
        if (mpSeiraMorf == NULL || mpSeiraMorf->getModel() == NULL) {
            return 0;
        }

    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, 0) && setBottleAnm(26, 2, 0.0f, false)) {
        return 1;
    }

    return 0;
}

/* 80ACC0FC-80ACC130 000A1C 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Seira_cFv */
int daNpc_Seira_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Seira_c();
    return 1;
}

/* 80ACC130-80ACC21C 000A50 00EC+00 2/2 0/0 0/0 .text            Execute__13daNpc_Seira_cFv */
int daNpc_Seira_c::Execute() {
    if (!mNpcType && !mCreating && !checkShopOpen() && !field_0x10fd
        && checkStageIsSeirasShop() && (mChkBottle || daNpcT_chkEvtBit(0x95))) {
        initShopSystem();
        setMasterType(0);
        createShopItem(getShopItemType());
        mShopCamAction.setCamDataIdx(0);
        mShopCamAction.setCamAction(NULL);
        field_0x10fd = 1;
    }

    daNpcT_c::execute();
    mShopCamAction.move();

    return 1;
}

/* 80ACC21C-80ACC2B0 000B3C 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Seira_cFv */
int daNpc_Seira_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    return daNpcT_c::draw(0, 0, mRealShadowSize, NULL, 100.0f, 0, 0, 0);
}

/* 80ACC2B0-80ACC2D0 000BD0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Seira_cFP10fopAc_ac_c            */
int daNpc_Seira_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Seira_c*>(i_this)->CreateHeap();
}

/* 80ACC2D0-80ACC328 000BF0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Seira_cFP8J3DJointi               */
int daNpc_Seira_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Seira_c* i_this = reinterpret_cast<daNpc_Seira_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_0, model);
        }
    }

    return 1;
}

/* 80ACC328-80ACC424 000C48 00FC+00 1/1 0/0 0/0 .text            getType__13daNpc_Seira_cFv */
u8 daNpc_Seira_c::getType() {
    if (*dComIfGp_getStartStageName() == 0x46) {
        return 5;
    }

    if (dComIfGs_isDarkClearLV(0)) {
        return 3;
    }

    if (daNpcT_chkEvtBit(0x3DU) || daNpcT_chkEvtBit(0x208)) {
        return 3;
    }

    if (daNpcT_chkEvtBit(0x35)) {
        return 4;
    }

    if (checkStageIsSeirasShop()) {
        if (daNpcT_chkEvtBit(0xA5)) {
            return 1;
        }

        if (daNpcT_chkEvtBit(0x88)) {
            return 1;
        }

        if (daNpcT_chkEvtBit(0x95)) {
            return 1;
        }

        return 0;
    }

    return 6;
}

/* 80ACC424-80ACC440 000D44 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__13daNpc_Seira_cFv */
int daNpc_Seira_c::getFlowNodeNo() {
    u16 nodeNo = home.angle.x;
    if (nodeNo == 0xffff) {
        return -1;
    }

    return nodeNo;
}

/* 80ACC440-80ACC4A8 000D60 0068+00 1/1 0/0 0/0 .text            checkBottle__13daNpc_Seira_cFv */
u8 daNpc_Seira_c::checkBottle() {
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

/* 80ACC4A8-80ACC4C8 000DC8 0020+00 1/1 0/0 0/0 .text            getNpcType__13daNpc_Seira_cFv */
u8 daNpc_Seira_c::getNpcType() {
    u8 prm = (fopAcM_GetParam(this) & 0xF0000) >> 8;
    if (prm == 1) {
        return prm;
    }

    return 0;
}

/* 80ACC4C8-80ACC4D0 000DE8 0008+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Seira_cFv */
int daNpc_Seira_c::isDelete() {
    return FALSE;
}

/* 80ACC4D0-80ACC618 000DF0 0148+00 1/1 0/0 0/0 .text            reset__13daNpc_Seira_cFv */
void daNpc_Seira_c::reset() {
    initialize();
    memset(&field_0x10DC, 0, (u8*)&field_0x1104 - (u8*)&field_0x10DC);
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    for (int i = 0; i < 3; i++) {
        mActorMngr[i].initialize();
    }

    setAngle(home.angle.y);
}

/* 80ACC618-80ACC69C 000F38 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Seira_cFi */
void daNpc_Seira_c::afterJntAnm(int arg0) {
    if (arg0 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (arg0 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80ACC69C-80ACC818 000FBC 017C+00 1/0 0/0 0/0 .text            setParam__13daNpc_Seira_cFv */
void daNpc_Seira_c::setParam() {
    if (field_0x10fc == 1) {
        if (field_0x10f8 == 2) {
            mShopCamAction.Reset();
        } else {
            mShopCamAction.EventRecoverNotime();
        }

        field_0x10fc = 0;
    }

    selectAction();
    srchActors();

    u32 att_flags = (fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e);
    s16 talk_dist = daNpc_Seira_Param_c::m.common.talk_distance;
    s16 talk_ang = daNpc_Seira_Param_c::m.common.talk_angle;
    s16 att_dist = daNpc_Seira_Param_c::m.common.attention_distance;
    s16 att_ang = daNpc_Seira_Param_c::m.common.attention_angle;

    if (checkStageIsSeirasShop()) {
        talk_dist = 4;
        att_dist = 4;
    } else if (daPy_getPlayerActorClass()->checkHorseRide()) {
        talk_dist = 7;
        att_dist = 9;
    }

    attention_info.distances[0] = daNpcT_getDistTableIdx(att_dist, att_ang);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(talk_dist, talk_ang);
    attention_info.flags = att_flags;

    scale.set(daNpc_Seira_Param_c::m.common.scale, daNpc_Seira_Param_c::m.common.scale,
            daNpc_Seira_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Seira_Param_c::m.common.weight);
    mCylH = daNpc_Seira_Param_c::m.common.height;
    mWallR = daNpc_Seira_Param_c::m.common.width;

    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Seira_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Seira_Param_c::m.common.real_shadow_size;

    gravity = daNpc_Seira_Param_c::m.common.gravity;
    mExpressionMorfFrame = daNpc_Seira_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Seira_Param_c::m.common.morf_frame;
}

/* 80ACC818-80ACC8C0 001138 00A8+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Seira_cFv
 */
BOOL daNpc_Seira_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFEB0-80ACFEB4 0000C0 0004+00 10/11 0/0 0/0 .rodata          @4716 */
SECTION_RODATA static f32 const lit_4716 = -1.0f;
COMPILER_STRIP_GATE(0x80ACFEB0, &lit_4716);

/* 80ACC8C0-80ACC980 0011E0 00C0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Seira_cFv */
void daNpc_Seira_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80ACC980-80ACCA48 0012A0 00C8+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Seira_cFv */
void daNpc_Seira_c::srchActors() {
    // NONMATCHING
}

/* 80ACCA48-80ACCBEC 001368 01A4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Seira_cFv */
BOOL daNpc_Seira_c::evtTalk() {
    // NONMATCHING
}

/* 80ACCBEC-80ACCCBC 00150C 00D0+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Seira_cFv */
BOOL daNpc_Seira_c::evtCutProc() {
    // NONMATCHING
}

/* 80ACCCBC-80ACCE58 0015DC 019C+00 1/0 0/0 0/0 .text            action__13daNpc_Seira_cFv */
void daNpc_Seira_c::action() {
    // NONMATCHING
}

/* 80ACCE58-80ACCED0 001778 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Seira_cFv */
void daNpc_Seira_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFEB4-80ACFEB8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4920 = -30.0f;
COMPILER_STRIP_GATE(0x80ACFEB4, &lit_4920);
#pragma pop

/* 80ACFEB8-80ACFEBC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4921 = 10.0f;
COMPILER_STRIP_GATE(0x80ACFEB8, &lit_4921);
#pragma pop

/* 80ACFEBC-80ACFEC0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4922 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4922 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80ACFEBC, &lit_4922);
#pragma pop

/* 80ACFEC0-80ACFEC4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4923 = 170.0f;
COMPILER_STRIP_GATE(0x80ACFEC0, &lit_4923);
#pragma pop

/* 80ACFEC4-80ACFEC8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4924 = 80.0f;
COMPILER_STRIP_GATE(0x80ACFEC4, &lit_4924);
#pragma pop

/* 80ACFEC8-80ACFED0 0000D8 0008+00 2/4 0/0 0/0 .rodata          @4926 */
SECTION_RODATA static u8 const lit_4926[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFEC8, &lit_4926);

/* 80ACCED0-80ACD1D0 0017F0 0300+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Seira_cFv */
void daNpc_Seira_c::setAttnPos() {
    // NONMATCHING
}

/* 80ACD1D0-80ACD378 001AF0 01A8+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Seira_cFv */
void daNpc_Seira_c::setCollision() {
    // NONMATCHING
}

/* 80ACD378-80ACD380 001C98 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Seira_cFv */
BOOL daNpc_Seira_c::drawDbgInfo() {
    return false;
}

/* 80ACD380-80ACD458 001CA0 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Seira_cFv */
void daNpc_Seira_c::drawOtherMdl() {
    cXyz sp8;
    itemRotate();
    sp8.set(g_cursorHIO.mSeraShopObjZoom);
    itemZoom(&sp8);
    drawCursor();
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

/* 80ACD458-80ACD538 001D78 00E0+00 2/2 0/0 0/0 .text            setBottleAnm__13daNpc_Seira_cFiifb
 */
bool daNpc_Seira_c::setBottleAnm(int param_0, int param_1, f32 param_2, bool param_3) {
    // NONMATCHING
    return true;
}

/* 80ACD538-80ACD570 001E58 0038+00 1/0 0/0 0/0 .text afterSetMotionAnm__13daNpc_Seira_cFiifi */
bool daNpc_Seira_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80ACD570-80ACD600 001E90 0090+00 1/0 0/0 0/0 .text            changeAnm__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeAnm(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80ACD600-80ACD6AC 001F20 00AC+00 2/0 0/0 0/0 .text            changeBck__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBck(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80ACD6AC-80ACD744 001FCC 0098+00 2/0 0/0 0/0 .text            changeBtp__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBtp(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80ACD744-80ACD770 002064 002C+00 1/0 0/0 0/0 .text            changeBtk__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBtk(int* param_0, int* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFED0-80ACFED8 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4984 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4984[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFED0, &lit_4984);
#pragma pop

/* 80ACFED8-80ACFEE0 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4985 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4985[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFED8, &lit_4985);
#pragma pop

/* 80ACFEE0-80ACFEE8 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4986 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4986[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFEE0, &lit_4986);
#pragma pop

/* 80ACFEE8-80ACFEEC 0000F8 0004+00 1/1 0/0 0/0 .rodata          @5182 */
SECTION_RODATA static f32 const lit_5182 = 200.0f;
COMPILER_STRIP_GATE(0x80ACFEE8, &lit_5182);

/* 80ACD770-80ACD900 002090 0190+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Seira_cFv */
void daNpc_Seira_c::selectAction() {
    // NONMATCHING
}

/* 80ACD900-80ACD92C 002220 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i        */
void daNpc_Seira_c::chkAction(int (daNpc_Seira_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80ACD92C-80ACD9D4 00224C 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i        */
void daNpc_Seira_c::setAction(int (daNpc_Seira_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFEEC-80ACFEF8 0000FC 000C+00 0/1 0/0 0/0 .rodata          @5204 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5204[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFEEC, &lit_5204);
#pragma pop

/* 80ACFEF8-80ACFF04 000108 000C+00 0/1 0/0 0/0 .rodata          @5212 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5212[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80ACFEF8, &lit_5212);
#pragma pop

/* 80ACFF04-80ACFF04 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ACFF7D = "prm";
SECTION_DEAD static char const* const stringBase_80ACFF81 = "msgNo";
#pragma pop

/* 80ACD9D4-80ACDC6C 0022F4 0298+00 1/0 0/0 0/0 .text cutConversationAboutSaru__13daNpc_Seira_cFi
 */
int daNpc_Seira_c::cutConversationAboutSaru(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFF04-80ACFF04 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ACFF87 = "R_SP01";
#pragma pop

/* 80ACDC6C-80ACDCE4 00258C 0078+00 4/4 0/0 0/0 .text checkStageIsSeirasShop__13daNpc_Seira_cFv */
BOOL daNpc_Seira_c::checkStageIsSeirasShop() {
    return 0 == strcmp("R_SP01", dComIfGp_getStartStageName())
           && dComIfGp_getStartStageRoomNo() == 1 && !dComIfG_play_c::getLayerNo(0);
}

/* 80ACDCE4-80ACDD24 002604 0040+00 1/1 0/0 0/0 .text            getShopItemType__13daNpc_Seira_cFv
 */
int daNpc_Seira_c::getShopItemType() {
    int item_type = 0;
    if (daNpcT_chkEvtBit(0x258)) {
        item_type = 1;
    }

    return item_type;
}

/* 80ACDD24-80ACDE74 002644 0150+00 1/0 0/0 0/0 .text            wait__13daNpc_Seira_cFPv */
void daNpc_Seira_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80ACDE74-80ACE098 002794 0224+00 2/0 0/0 0/0 .text            sit__13daNpc_Seira_cFPv */
void daNpc_Seira_c::sit(void* param_0) {
    // NONMATCHING
}

/* 80ACE098-80ACE220 0029B8 0188+00 2/0 0/0 0/0 .text            happy__13daNpc_Seira_cFPv */
void daNpc_Seira_c::happy(void* param_0) {
    // NONMATCHING
}

/* 80ACE220-80ACE4FC 002B40 02DC+00 2/0 0/0 0/0 .text            worry__13daNpc_Seira_cFPv */
void daNpc_Seira_c::worry(void* param_0) {
    // NONMATCHING
}

/* 80ACE4FC-80ACE608 002E1C 010C+00 1/0 0/0 0/0 .text            sad__13daNpc_Seira_cFPv */
void daNpc_Seira_c::sad(void* param_0) {
    // NONMATCHING
}

/* 80ACE608-80ACE714 002F28 010C+00 1/0 0/0 0/0 .text            lookaround__13daNpc_Seira_cFPv */
void daNpc_Seira_c::lookaround(void* param_0) {
    // NONMATCHING
}

/* 80ACE714-80ACE828 003034 0114+00 1/0 0/0 0/0 .text            lookaround_wait__13daNpc_Seira_cFPv
 */
void daNpc_Seira_c::lookaround_wait(void* param_0) {
    // NONMATCHING
}

/* 80ACE828-80ACE934 003148 010C+00 1/0 0/0 0/0 .text            smile__13daNpc_Seira_cFPv */
void daNpc_Seira_c::smile(void* param_0) {
    // NONMATCHING
}

/* 80ACE934-80ACEAC4 003254 0190+00 3/0 0/0 0/0 .text            talk__13daNpc_Seira_cFPv */
void daNpc_Seira_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80ACEAC4-80ACECE8 0033E4 0224+00 2/0 0/0 0/0 .text            shop__13daNpc_Seira_cFPv */
void daNpc_Seira_c::shop(void* param_0) {
    // NONMATCHING
}

/* 80ACECE8-80ACED08 003608 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Create__FPv */
static int daNpc_Seira_Create(void* i_this) {
    return static_cast<daNpc_Seira_c*>(i_this)->create();
}

/* 80ACED08-80ACED28 003628 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Delete__FPv */
static int daNpc_Seira_Delete(void* i_this) {
    return static_cast<daNpc_Seira_c*>(i_this)->Delete();
}

/* 80ACED28-80ACED48 003648 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Execute__FPv */
static int daNpc_Seira_Execute(void* i_this) {
    return static_cast<daNpc_Seira_c*>(i_this)->Execute();
}

/* 80ACED48-80ACED68 003668 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Draw__FPv */
static int daNpc_Seira_Draw(void* i_this) {
    return static_cast<daNpc_Seira_c*>(i_this)->Draw();
}

/* 80ACED68-80ACED70 003688 0008+00 1/0 0/0 0/0 .text            daNpc_Seira_IsDelete__FPv */
static int daNpc_Seira_IsDelete(void* param_0) {
    return 1;
}

extern "C" void talk__13daNpc_Seira_cFPv();
/* 80AD0724-80AD0730 -00001 000C+00 1/1 0/0 0/0 .data            @4679 */
SECTION_DATA static void* lit_4679[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Seira_cFPv,
};

extern "C" void shop__13daNpc_Seira_cFPv();
/* 80AD0730-80AD073C -00001 000C+00 0/1 0/0 0/0 .data            @4737 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4737[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD073C-80AD0748 -00001 000C+00 0/1 0/0 0/0 .data            @4745 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4745[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0748-80AD0754 -00001 000C+00 0/1 0/0 0/0 .data            @4748 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4748[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0754-80AD0760 -00001 000C+00 0/1 0/0 0/0 .data            @4756 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4756[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void sit__13daNpc_Seira_cFPv();
/* 80AD0760-80AD076C -00001 000C+00 0/1 0/0 0/0 .data            @5003 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5003[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sit__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void happy__13daNpc_Seira_cFPv();
/* 80AD076C-80AD0778 -00001 000C+00 0/1 0/0 0/0 .data            @5004 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5004[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)happy__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void worry__13daNpc_Seira_cFPv();
/* 80AD0778-80AD0784 -00001 000C+00 0/1 0/0 0/0 .data            @5005 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5005[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)worry__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0784-80AD0864 0007F4 00E0+00 1/1 0/0 0/0 .data            bottlAnmData$5085 */
SECTION_DATA static u8 bottlAnmData[224] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
};

extern "C" void changeBck__13daNpc_Seira_cFPiPi();
/* 80AD0864-80AD0890 -00001 002C+00 1/1 0/0 0/0 .data            @5133 */
SECTION_DATA static void* lit_5133[11] = {
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x34),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x48),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x5C),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x70),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x84),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x98),
};

extern "C" void changeBtp__13daNpc_Seira_cFPiPi();
/* 80AD0890-80AD08C8 -00001 0038+00 1/1 0/0 0/0 .data            @5147 */
SECTION_DATA static void* lit_5147[14] = {
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x34),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x48),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x5C),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x70),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x84),
};

/* 80AD08C8-80AD08D4 -00001 000C+00 0/1 0/0 0/0 .data            @5162 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5162[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sit__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD08D4-80AD08E0 -00001 000C+00 0/1 0/0 0/0 .data            @5164 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5164[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)happy__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD08E0-80AD08EC -00001 000C+00 0/1 0/0 0/0 .data            @5166 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5166[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)worry__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void sad__13daNpc_Seira_cFPv();
/* 80AD08EC-80AD08F8 -00001 000C+00 0/1 0/0 0/0 .data            @5168 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5168[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sad__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void smile__13daNpc_Seira_cFPv();
/* 80AD08F8-80AD0904 -00001 000C+00 0/1 0/0 0/0 .data            @5170 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5170[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)smile__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void lookaround_wait__13daNpc_Seira_cFPv();
/* 80AD0904-80AD0910 -00001 000C+00 0/1 0/0 0/0 .data            @5174 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5174[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookaround_wait__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void lookaround__13daNpc_Seira_cFPv();
/* 80AD0910-80AD091C -00001 000C+00 0/1 0/0 0/0 .data            @5176 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5176[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookaround__13daNpc_Seira_cFPv,
};
#pragma pop

extern "C" void wait__13daNpc_Seira_cFPv();
/* 80AD091C-80AD0928 -00001 000C+00 0/1 0/0 0/0 .data            @5178 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5178[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0928-80AD0948 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Seira_MethodTable */
static actor_method_class daNpc_Seira_MethodTable = {
    (process_method_func)daNpc_Seira_Create,
    (process_method_func)daNpc_Seira_Delete,
    (process_method_func)daNpc_Seira_Execute,
    (process_method_func)daNpc_Seira_IsDelete,
    (process_method_func)daNpc_Seira_Draw,
};

/* 80AD0948-80AD0978 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SEIRA */
extern actor_process_profile_definition g_profile_NPC_SEIRA = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_SEIRA,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Seira_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  361,                      // mPriority
  &daNpc_Seira_MethodTable, // sub_method
  0x00044108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
