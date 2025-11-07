/**
 * @file d_a_npc_seira.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_seira.h"
#include "d/d_meter_HIO.h"


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
    daNpcT_ct(this, daNpc_Seira_c, l_faceMotionAnmData, l_motionAnmData,
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

    if (mType != 5) {
        bmd_get_idx = x1;
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
    // Sera can show up in two places:
    //  1. F_SP103-R00	Ordon Village
    //  2. R_SP01-R01	Ordon Interiors - Sera's Sundries
    // We're essentially checking if Sera is outside with Hanch and Beth at the game's start:
    if (*dComIfGp_getStartStageName() == 'F') {
        return 5;
    }

    if (dComIfGs_isDarkClearLV(0)) {
        return 3;
    }

    if (daNpcT_chkEvtBit(0x3D) || daNpcT_chkEvtBit(0x208)) {
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
    memset(&mNextAction, 0, (u8*)&field_0x1104 - (u8*)&mNextAction);
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
        if (mShopProcess == 2) {
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

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(att_dist, att_ang);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_dist, talk_ang);
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
    if (!chkAction(&daNpc_Seira_c::talk)) {
        switch (mType) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
            break;
        case 5:
            if (daNpcT_chkEvtBit(0x24D)) {
                mEvtNo = 3;
            } else {
                mEvtNo = 2;
            }
            evtChange();
            return TRUE;
        }
    }

    return FALSE;
}

/* 80ACC8C0-80ACC980 0011E0 00C0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Seira_cFv */
void daNpc_Seira_c::setAfterTalkMotion() {
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

/* 80ACC980-80ACCA48 0012A0 00C8+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Seira_cFv */
void daNpc_Seira_c::srchActors() {
    switch (mType) {
        case 1:
        case 2: {
            if (mActorMngr[0].getActorP() == NULL) {
                // NE means Neko, which means Cat in Japanese:
                mActorMngr[0].entry(getNearestActorP(PROC_NPC_NE));
            }

            break;
        }

        case 5: {
            // The beginning of the game when outside with Beth and Hanch:
            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getNearestActorP(PROC_NPC_HANJO));
            }

            if (mActorMngr[2].getActorP() == NULL) {
                mActorMngr[2].entry(getNearestActorP(PROC_NPC_BESU));
            }

            break;
        }

        case 3:
        case 4:
            break;
    }
}

/* 80ACCA48-80ACCBEC 001368 01A4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Seira_cFv */
BOOL daNpc_Seira_c::evtTalk() {
    if (field_0x10fd) {
        if (chkAction(&daNpc_Seira_c::shop)) {
            (this->*(mActFunc_0))(NULL);
        } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
            mShopCamAction.shop_cam_action_init();
            setAction(&daNpc_Seira_c::shop);
        }
    } else {
        if (chkAction(&daNpc_Seira_c::talk)) {
            (this->*(mActFunc_0))(NULL);
        } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
            setAction(&daNpc_Seira_c::talk);
        }
    }

    return 1;
}

/* 80ACCBEC-80ACCCBC 00150C 00D0+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Seira_cFv */
BOOL daNpc_Seira_c::evtCutProc() {
    BOOL retval = FALSE;
    int staff_id = dComIfGp_getEventManager().getMyStaffId("Seira", this, -1);
    if (staff_id != -1) {
        mStaffId = staff_id;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, (char**) &daNpc_Seira_c::mCutNameList, 2, 0, 0);
        if (((this->*(mCutList[actIdx]))(mStaffId))) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        retval = TRUE;
    }

    mShopCamAction.Save();
    return retval;
}

/* 80ACCCBC-80ACCE58 0015DC 019C+00 1/0 0/0 0/0 .text            action__13daNpc_Seira_cFv */
void daNpc_Seira_c::action() {
    if (field_0x10fd == 0) {
        fopAc_ac_c* hit_chk = hitChk(&mCyl1, -1);
        if (hit_chk && mCyl1.GetTgHitObj()->ChkAtType(8)) {
            mStagger.setParam(this, hit_chk, mCurAngle.y);
            setDamage(0, 13, 13);
            mDamageTimerStart = 0;
            mJntAnm.lookNone(1);
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

/* 80ACCE58-80ACCED0 001778 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Seira_cFv */
void daNpc_Seira_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 80ACCED0-80ACD1D0 0017F0 0300+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Seira_cFv */
void daNpc_Seira_c::setAttnPos() {
    cXyz eyeOffset(-30.0f, 10.0f, 0.0f);
    mStagger.calc(0);
    mJntAnm.setParam(
        this, mpMorf[0]->getModel(), &eyeOffset, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
        daNpc_Seira_Param_c::m.common.body_angleX_min, daNpc_Seira_Param_c::m.common.body_angleX_max,
        daNpc_Seira_Param_c::m.common.body_angleY_min, daNpc_Seira_Param_c::m.common.body_angleY_max,
        daNpc_Seira_Param_c::m.common.head_angleX_min, daNpc_Seira_Param_c::m.common.head_angleX_max,
        daNpc_Seira_Param_c::m.common.head_angleY_min, daNpc_Seira_Param_c::m.common.head_angleY_max,
        daNpc_Seira_Param_c::m.common.neck_rotation_ratio, 0.0f, NULL);

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
    if (checkStageIsSeirasShop()) {
        eyeOffset.set(0.0f, 170.0f, 80.0f);
        if (mType == 1 || mType == 1) {
            eyeOffset.y += 20.0f;
        }

        mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getBaseTRMtx());
        mDoMtx_stack_c::multVec(&eyeOffset, &attention_info.position);
    } else {
        attention_info.position = current.pos;
        attention_info.position.y += daNpc_Seira_Param_c::m.common.attention_offset;
    }
}

/* 80ACD1D0-80ACD378 001AF0 01A8+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Seira_cFv */
void daNpc_Seira_c::setCollision() {
    cXyz cStack_48;
    f32 cylH, wallR;
    if (!mHide) {
        if (mTwilight == 1 && dComIfGp_event_runCheck() == FALSE) {
            mCyl1.SetCoSPrm(0x69);
        } else {
            mCyl1.SetCoSPrm(0x79);
        }

        if (&daNpc_Seira_c::sit == mNextAction || &daNpc_Seira_c::happy == mNextAction
            || &daNpc_Seira_c::worry == mNextAction) {
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
bool daNpc_Seira_c::setBottleAnm(int arg0, int arg1, f32 arg2, bool arg3) {
    static int bottlAnmData[28][2] = {
        {-1, 2}, {-1, 2}, {-1, 2}, { 6, 2}, {11, 2}, {11, 2}, {10, 2}, { 9, 2},
        {12, 2}, { 4, 2}, {-1, 2}, { 7, 2}, { 8, 2}, { 5, 2}, {-1, 2}, {-1, 2},
        {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2}, {-1, 2},
        {-1, 2}, {-1, 2}, {13, 2}, {14, 2},
    };

    J3DAnmTransform* trans_p = NULL;
    int var_r30 = arg0;
    if (mpSeiraMorf != NULL) {
        if (arg3 == false) {
            var_r30 = mType == 0 ? 26 : 27;
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

/* 80ACD538-80ACD570 001E58 0038+00 1/0 0/0 0/0 .text afterSetMotionAnm__13daNpc_Seira_cFiifi */
bool daNpc_Seira_c::afterSetMotionAnm(int arg0, int arg1, f32 arg2, int arg3) {
    f32 var_f30 = (mCreating == 1) ? 0.0f : arg2;
    setBottleAnm(arg0, arg1, var_f30, 1);
}

/* 80ACD570-80ACD600 001E90 0090+00 1/0 0/0 0/0 .text            changeAnm__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeAnm(int* arg0, int* arg1) {
    if (mType == 5) {
        switch (*arg0) {
        case 23:
            *arg0 = 0xB;
            *arg1 = 4;
            return;
        case 38:
            *arg0 = 0xC;
            *arg1 = 4;
            return;
        case 41:
            *arg0 = 0xD;
            *arg1 = 4;
            return;
        case 42:
            *arg0 = 0xE;
            *arg1 = 4;
            break;
        }
    }
}

/* 80ACD600-80ACD6AC 001F20 00AC+00 2/0 0/0 0/0 .text            changeBck__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBck(int* arg0, int* arg1) {
    if (mType == 5) {
        switch (*arg0) {
        case 7:
            *arg0 = 5;
            *arg1 = 4;
            return;
        case 8:
            *arg0 = 6;
            *arg1 = 4;
            return;
        case 12:
            *arg0 = 7;
            *arg1 = 4;
            return;
        case 14:
            *arg0 = 8;
            *arg1 = 4;
            return;
        case 15:
            *arg0 = 9;
            *arg1 = 4;
            return;
        case 17:
            *arg0 = 0xA;
            *arg1 = 4;
            break;
        }
    }
}

/* 80ACD6AC-80ACD744 001FCC 0098+00 2/0 0/0 0/0 .text            changeBtp__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBtp(int* arg0, int* arg1) {
    if (mType == 5) {
        switch (*arg0) {
        case 0x43:
            *arg0 = 0x14;
            *arg1 = 4;
            return;
        case 0x45:
            *arg0 = 0x15;
            *arg1 = 4;
            return;
        case 0x4C:
            *arg0 = 0x17;
            *arg1 = 4;
            return;
        case 0x4E:
            *arg0 = 0x18;
            *arg1 = 4;
            return;
        case 0x50:
            *arg0 = 0x19;
            *arg1 = 4;
            break;
        }
    }
}

/* 80ACD744-80ACD770 002064 002C+00 1/0 0/0 0/0 .text            changeBtk__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBtk(int* arg0, int* arg1) {
    if (mType == 5) {
        if (*arg0 != 0x2D) {
            return;
        }
        *arg0 = 0x11;
        *arg1 = 4;
    }
}

/* 80ACD770-80ACD900 002090 0190+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Seira_cFv */
int daNpc_Seira_c::selectAction() {
    mNextAction = NULL;
    // TODO: Debug-only set & return.
    switch (mType) {
    case 0:
        mNextAction = &daNpc_Seira_c::sit;
        break;

    case 1:
        mNextAction = &daNpc_Seira_c::happy;
        break;

    case 2:
        mNextAction = &daNpc_Seira_c::worry;
        break;

    case 3:
        mNextAction = &daNpc_Seira_c::sad;
        break;

    case 4:
        mNextAction = &daNpc_Seira_c::smile;
        break;

    case 5:
        if (fopAcM_searchPlayerDistanceXZ(this) < 200.0f) {
            mNextAction = &daNpc_Seira_c::lookaround_wait;
        } else {
            mNextAction = &daNpc_Seira_c::lookaround;
        }

        break;

    default:
        mNextAction = &daNpc_Seira_c::wait;
        break;
    }

    return 1;
}

/* 80ACD900-80ACD92C 002220 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i        */
int daNpc_Seira_c::chkAction(actionFunc i_action) {
    return mActFunc_0 == i_action;
}

/* 80ACD92C-80ACD9D4 00224C 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i        */
int daNpc_Seira_c::setAction(actionFunc i_action) {
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

/* 80ACD9D4-80ACDC6C 0022F4 0298+00 1/0 0/0 0/0 .text cutConversationAboutSaru__13daNpc_Seira_cFi
 */
int daNpc_Seira_c::cutConversationAboutSaru(int arg0) {
    int retval = 0;
    int* param_p = NULL;
    int prm_val = -1;
    int msgNo_val = 0;
    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "prm");
    if (param_p != NULL) {
        prm_val = *param_p;
    }

    param_p = dComIfGp_evmng_getMyIntegerP(arg0, "msgNo");
    if (param_p != NULL) {
        msgNo_val = *param_p;
    }

    fopAc_ac_c* speakers[3] = {this, mActorMngr[2].getActorP(), mActorMngr[1].getActorP()};
    dComIfGp_setMesgCameraInfoActor(speakers[0], speakers[1], speakers[2],
                                    NULL, NULL, NULL, NULL, NULL, NULL, NULL);
    if (dComIfGp_getEventManager().getIsAddvance(arg0)) {
        switch (prm_val) {
            case 0: {
                daNpcT_offTmpBit(0xA7);
                daNpcT_offTmpBit(0xA8);
                initTalk(mFlowNodeNo, speakers);
                break;
            }

            case 1: {
                break;
            }

            case 2: {
                initTalk(mFlowNodeNo, speakers);
                break;
            }
        }
    }

    int my_vals[3] = {-1, -1, -1};
    switch (prm_val) {
        case 0: {
            mJntAnm.lookPlayer(0);
            if (mPlayerAngle != mCurAngle.y) {
                step(mPlayerAngle, 13, 24, 15, 0);
            } else {
                retval = 1;
            }

            break;
        }

        case 1:
        case 2: {
            mJntAnm.lookPlayer(0);
            my_vals[0] = msgNo_val;
            if (talkProc(my_vals, FALSE, speakers, 0)) {
                if (msgNo_val == 0) {
                    if (mFlow.checkEndFlow()) {
                        retval = 1;
                    }
                } else {
                    retval = 1;
                }
            }

            break;
        }
    }

    return retval;
}

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
int daNpc_Seira_c::wait(void*) {
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
                    checkStep();
                } else {
                    mJntAnm.lookNone(0);
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

/* 80ACDE74-80ACE098 002794 0224+00 2/0 0/0 0/0 .text            sit__13daNpc_Seira_cFPv */
int daNpc_Seira_c::sit(void*) {
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

/* 80ACE098-80ACE220 0029B8 0188+00 2/0 0/0 0/0 .text            happy__13daNpc_Seira_cFPv */
int daNpc_Seira_c::happy(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            if (daNpcT_chkEvtBit(0xA5)) {
                mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(11, -1.0f, 0, 0);
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

/* 80ACE220-80ACE4FC 002B40 02DC+00 2/0 0/0 0/0 .text            worry__13daNpc_Seira_cFPv */
int daNpc_Seira_c::worry(void*) {
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

/* 80ACE4FC-80ACE608 002E1C 010C+00 1/0 0/0 0/0 .text            sad__13daNpc_Seira_cFPv */
int daNpc_Seira_c::sad(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            mFaceMotionSeqMngr.setNo(11, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(16, -1.0f, 0, 0);
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

/* 80ACE608-80ACE714 002F28 010C+00 1/0 0/0 0/0 .text            lookaround__13daNpc_Seira_cFPv */
int daNpc_Seira_c::lookaround(void*) {
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

/* 80ACE714-80ACE828 003034 0114+00 1/0 0/0 0/0 .text            lookaround_wait__13daNpc_Seira_cFPv
 */
int daNpc_Seira_c::lookaround_wait(void*) {
    switch (mMode) {
        case 0:
        case 1: {
            mFaceMotionSeqMngr.setNo(13, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(13, -1.0f, 0, 0);
            mMode = 2;
        }

        case 2: {
            if (!mStagger.checkStagger() && srchPlayerActor()) {
                mJntAnm.lookPlayer(0);
                checkStep();
            }

            break;
        }

        case 3: {
            break;
        }
    }

    return 1;
}

/* 80ACE828-80ACE934 003148 010C+00 1/0 0/0 0/0 .text            smile__13daNpc_Seira_cFPv */
int daNpc_Seira_c::smile(void*) {
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

/* 80ACE934-80ACEAC4 003254 0190+00 3/0 0/0 0/0 .text            talk__13daNpc_Seira_cFPv */
int daNpc_Seira_c::talk(void* param_0) {
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
                    step(fopAcM_searchPlayerAngleY(this), 13, 24, 15, 0);
                    if (daPy_getPlayerActorClass()->checkHorseRide()) {
                        reg_r30 = 1;
                    }
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

/* 80ACEAC4-80ACECE8 0033E4 0224+00 2/0 0/0 0/0 .text            shop__13daNpc_Seira_cFPv */
int daNpc_Seira_c::shop(void* param_0) {
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
                field_0x10fc = 1;
                if (daNpcT_chkEvtBit(0xA5) && mChkBottle) {
                    mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(11, -1.0f, 0, 0);
                    mChkBottle = 0;
                    mJntAnm.lookNone(0);
                }

                if (daNpcT_chkEvtBit(0x208) && mEvtBit != daNpcT_chkEvtBit(0x208)) {
                    mEvtBit = daNpcT_chkEvtBit(0x208);
                    mFaceMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                    mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                    // "●●● operation change\n"
                    OS_REPORT("●●●動作チェンジ\n");
                }

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
