/**
 * @file d_a_peru.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_peru.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_obj_catdoor.h"

/* 80D4C1FC-80D4C204 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    24, 1,
};

/* 80D4C204-80D4C21C -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[3] = {
    {"", 0},
    {"PERU_APPEAR", 1},
    {"PERU_APPEAR_SKIP", 1},
};

/* 80D4C21C-80D4C224 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "Peru",
};

/* 80D4C224-80D4C228 000048 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    1, -1,
};

/* 80D4C228-80D4C234 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[3] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80D4C234-80D4C2C0 000058 008C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static u8 l_faceMotionAnmData[140] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};

/* 80D4C2C0-80D4C3F4 0000E4 0134+00 0/1 0/0 0/0 .data            l_motionAnmData */
static u8 l_motionAnmData[308] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};

/* 80D4C3F4-80D4C444 000218 0050+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static u8 l_faceMotionSequenceData[80] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};

/* 80D4C444-80D4C4E4 000268 00A0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static u8 l_motionSequenceData[160] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};

/* 80D4C4E4-80D4C4F0 -00001 000C+00 1/1 0/0 0/0 .data            mCutNameList__8daPeru_c */
const char* daPeru_c::mCutNameList[3] = {
    "",
    "PERU_APPEAR",
    "PERU_APPEAR_SKIP",
};

/* 80D4C508-80D4C52C 00032C 0024+00 1/2 0/0 0/0 .data            mCutList__8daPeru_c */
daPeru_c::cutAppearFunc daPeru_c::mCutList[3] = {
    NULL,
    &daPeru_c::cutAppear,
    &daPeru_c::cutAppear_skip,
};

/* 80D46EEC-80D46FCC 0000EC 00E0+00 1/0 0/0 0/0 .text            __dt__8daPeru_cFv */
daPeru_c::~daPeru_c() {
    OS_REPORT("|%06d:%x|daPeru_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (const char**) l_resNameList);
}

/* ############################################################################################## */
/* 80D4C060-80D4C0F8 000000 0098+00 19/19 0/0 0/0 .rodata          m__14daPeru_Param_c */
PeruParams const daPeru_Param_c::m = {
    60.0f,
    -3.0f,
    1.0f,
    230.0f,
    255.0f,
    60.0f,
    30.0f,
    30.0f,
    0.0f,
    0.0f,
    30.0f,
    -30.0f,
    30.0f,
    -30.0f,
    45.0f,
    -45.0f,
    0.6000000238418579,
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
    0.0f,
    0.0f,
    4.0f,
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
};

/* 80D46FCC-80D4720C 0001CC 0240+00 1/1 0/0 0/0 .text            create__8daPeru_cFv */
int daPeru_c::create() {
    fopAcM_SetupActor2(this, daPeru_c, (daNpcT_faceMotionAnmData_c*)l_faceMotionAnmData, (daNpcT_motionAnmData_c*)l_motionAnmData, (daNpcT_MotionSeqMngr_c::sequenceStepData_c*)l_faceMotionSequenceData, 4, (daNpcT_MotionSeqMngr_c::sequenceStepData_c*)l_motionSequenceData, 4, l_evtList, l_resNameList);
    OS_REPORT("------------ ルイーズ生成処理開始\n");
    mType = getType();
    OS_REPORT("type=%d\n", mType);
    if (typeInitialize() == cPhs_ERROR_e) {
        return cPhs_ERROR_e;
    }
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();
    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3200) == 0) {
            return cPhs_ERROR_e;
        }
        OS_REPORT("\t(%s:%d) flowNo:%d<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  fopAcM_GetParam(this));
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("\n");
        mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f,
                                              -300.0f, 300.0f,
                                              450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                         &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daPeru_Param_c::m.field_0x00[4], 0, this);
        for (int i = 0; i < 2; i++) {
            mCyls[i].Set(mCcDCyl);
            mCyls[i].SetStts(&mCcStts);
            mCyls[i].SetTgHitCallback(tgHitCallBack);
        }
        reset();
        mCreating = true;
        Execute();
        mCreating = false;
        OS_REPORT("------------ ルイーズ生成\n");
    }
    OS_REPORT("------------ ルイーズ生成処理終了\n");
    return rv;
}

/* 80D4720C-80D474A0 00040C 0294+00 1/1 0/0 0/0 .text            CreateHeap__8daPeru_cFv */
int daPeru_c::CreateHeap() {
    // Not sure how to force 0 assignment otherwise. 
    enum IdxVal {dummy_zero};
    IdxVal idx;
    if (mTwilight == 1) {
        idx = dummy_zero;
    } else {
        idx = dummy_zero;
    }
    J3DModelData* mdlData_p =
        (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[idx][1]], l_bmdData[idx][0]);
    JUT_ASSERT(660, 0 != mdlData_p);
    mpMorf[0] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000,
                                     0x11020284);
    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }

    if (mpMorf[0] == NULL) {
        return 0;
    }

    J3DModel* model = (J3DModel*)mpMorf[0]->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
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

/* 80D4765C-80D47750 00085C 00F4+00 1/1 0/0 0/0 .text            typeInitialize__8daPeru_cFv */
int daPeru_c::typeInitialize() {
    if (mType == 0) {
        if (daNpcT_chkEvtBit(0x127)) {
            fopAcM_SetPosition(this, 2885.9f, -880.0f, 5617.3f);
            fopAcM_SetOldPosition(this, 2885.9f, -880.0f, 5617.3f);
            fopAcM_SetHomePosition(this, 2885.9f, -880.0f, 5617.3f);
        }
    } else if (mType == 1) {
        if (!daNpcT_chkEvtBit(0x183)) {
            return cPhs_ERROR_e;
        }
        if (daNpcT_chkEvtBit(0x11f)) {
            return cPhs_ERROR_e;
        }
    } else if (mType == 2 && daNpcT_chkEvtBit(0x183) && !daNpcT_chkEvtBit(0x11f)) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80D47750-80D47784 000950 0034+00 1/1 0/0 0/0 .text            Delete__8daPeru_cFv */
int daPeru_c::Delete() {
    OS_REPORT("|%06d:%x|daPeru_c -> Delete\n", g_Counter.mCounter0, this);
    fopAcM_GetID(this);
    this->~daPeru_c();
    return 1;
}

/* 80D47784-80D477A4 000984 0020+00 2/2 0/0 0/0 .text            Execute__8daPeru_cFv */
int daPeru_c::Execute() {
    return execute();
}

/* 80D477A4-80D47840 0009A4 009C+00 1/1 0/0 0/0 .text            Draw__8daPeru_cFv */
int daPeru_c::Draw() {
    daNpcT_MatAnm_c* matAnm = mpMatAnm[0];
    if (matAnm != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        u16 eyeballMat = getEyeballMaterialNo();
        modelData->getMaterialNodePointer(eyeballMat)->setMaterialAnm(matAnm);
    }
    draw(0, 0, daPeru_Param_c::m.field_0x00[3], NULL, 100.0f, 0, field_0xe80, 0);
}

/* 80D47840-80D47860 000A40 0020+00 1/1 0/0 0/0 .text createHeapCallBack__8daPeru_cFP10fopAc_ac_c
 */
int daPeru_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daPeru_c*>(i_this)->CreateHeap();
}

/* 80D47860-80D478B8 000A60 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__8daPeru_cFP8J3DJointi */
int daPeru_c::ctrlJointCallBack(J3DJoint* joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daPeru_c* peru = (daPeru_c*)model->getUserArea();
        if (peru != NULL) {
            peru->ctrlJoint(joint, model);
        }
    }
    return 1;
}

/* 80D478B8-80D478EC 000AB8 0034+00 1/1 0/0 0/0 .text            isDelete__8daPeru_cFv */
int daPeru_c::isDelete() {
    if (mType == 0) {
        return 0;
    } else if (mType == 1) {
        return 0;
    } else if (mType == 2) {
        return 0;
    } else {
        return 1;
    }
}

/* 80D478EC-80D47B20 000AEC 0234+00 1/1 0/0 0/0 .text            reset__8daPeru_cFv */
void daPeru_c::reset() {
    initialize();
    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(daPeru_Param_c::m.field_0x48[2], daPeru_Param_c::m.field_0x48[3]);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[0];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(daPeru_Param_c::m.field_0x48[0], daPeru_Param_c::m.field_0x48[1]);
    attention_info.flags = 0xa;
    scale.setall(daPeru_Param_c::m.field_0x00[2]);
    mCcStts.SetWeight(daPeru_Param_c::m.field_0x00[4]);
    mCylH = daPeru_Param_c::m.field_0x00[5];
    mWallR = daPeru_Param_c::m.field_0x00[7];
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daPeru_Param_c::m.field_0x00[6]);
    mRealShadowSize = daPeru_Param_c::m.field_0x00[3];
    gravity = daPeru_Param_c::m.field_0x00[1];
    mExpressionMorfFrame = daPeru_Param_c::m.field_0x64[2];
    mMorfFrames = daPeru_Param_c::m.field_0x00[17];
    mActionFunc = NULL;
    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }
    field_0xe80 = 0;
    for (int i = 0; i < 3; i++) {
        mActors[i].initialize();
    }
    setAngle(home.angle.y);
    setAction(&daPeru_c::wait, 0);
}

/* 80D47B20-80D47C4C 000D20 012C+00 1/0 0/0 0/0 .text            setParam__8daPeru_cFv */
void daPeru_c::setParam() {
    srchActors();
    attention_info.flags = 0xa;
    if (!daPy_py_c::checkNowWolf()) {
        attention_info.flags = 0x2000000a;
    }
    if (mType == 0 && !daNpcT_chkEvtBit(0x127)) {
        attention_info.flags = 0;
    }
    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(daPeru_Param_c::m.field_0x48[2], daPeru_Param_c::m.field_0x48[3]);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[0];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(daPeru_Param_c::m.field_0x48[0], daPeru_Param_c::m.field_0x48[1]);
    scale.setall(daPeru_Param_c::m.field_0x00[2]);
    mCcStts.SetWeight(daPeru_Param_c::m.field_0x00[4]);
    mCylH = daPeru_Param_c::m.field_0x00[5];
    mWallR = daPeru_Param_c::m.field_0x00[7];
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daPeru_Param_c::m.field_0x00[6]);
    mRealShadowSize = daPeru_Param_c::m.field_0x00[3];
    gravity = daPeru_Param_c::m.field_0x00[1];
    mExpressionMorfFrame = daPeru_Param_c::m.field_0x64[2];
    mMorfFrames = daPeru_Param_c::m.field_0x00[17];
}

/* 80D47C4C-80D47CAC 000E4C 0060+00 1/0 0/0 0/0 .text            setAfterTalkMotion__8daPeru_cFv */
void daPeru_c::setAfterTalkMotion() {
    mFaceMotionSeqMngr.getNo();
    mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
}

/* 80D47CAC-80D47D5C 000EAC 00B0+00 1/1 0/0 0/0 .text            srchActors__8daPeru_cFv */
void daPeru_c::srchActors() {
    if (mActors[0].getActorP() == NULL) {
        mActors[0].entry(getEvtAreaTagP(16, 0));
    }

    if (mActors[1].getActorP() == NULL) {
        fopAc_ac_c* local_18 = NULL;
        if (fopAcM_SearchByName(PROC_Obj_CatDoor, &local_18) != 0) {
            mActors[1].entry(local_18);
        }
    }

    if (mActors[2].getActorP() == NULL) {
        mActors[2].entry(daPy_getPlayerActorClass());
    }
}

/* 80D47D5C-80D47E48 000F5C 00EC+00 1/0 0/0 0/0 .text            evtTalk__8daPeru_cFv */
int daPeru_c::evtTalk() {
    if (chkAction(&daPeru_c::talk)) {
        (this->*(mActionFunc))(0);
    } else if (!g_dComIfG_gameInfo.play.mEvent.chkTalkXY() || g_dComIfG_gameInfo.play.mEvtManager.ChkPresentEnd()) {
        setAction(&daPeru_c::talk, 0);
    }
    return 1;
}

/* 80D47E48-80D47F10 001048 00C8+00 1/0 0/0 0/0 .text            evtCutProc__8daPeru_cFv */
int daPeru_c::evtCutProc() {
    int rv = 0;
    int staffId = dComIfGp_getEventManager().getMyStaffId("Peru", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 3, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        rv = 1;
    }
    return rv;
}

/* 80D47F10-80D47F5C 001110 004C+00 1/0 0/0 0/0 .text            action__8daPeru_cFv */
void daPeru_c::action() {
    if (mActionFunc != NULL) {
        (this->*(mActionFunc))(0);
    }
}

/* 80D47F5C-80D481A4 00115C 0248+00 1/0 0/0 0/0 .text            setAttnPos__8daPeru_cFv */
void daPeru_c::setAttnPos() {
    cXyz acStack_3c(10.0f, 0.0f, 0.0f);
    mStagger.calc(0);
    f32 dVar9 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.setParam(
        this, mpMorf[0]->getModel(), &acStack_3c, getBackboneJointNo(), getNeckJointNo(),
        getHeadJointNo(), daPeru_Param_c::m.field_0x00[9], daPeru_Param_c::m.field_0x00[8],
        daPeru_Param_c::m.field_0x00[11], daPeru_Param_c::m.field_0x00[10],
        daPeru_Param_c::m.field_0x00[13], daPeru_Param_c::m.field_0x00[12],
        daPeru_Param_c::m.field_0x00[15], daPeru_Param_c::m.field_0x00[14],
        daPeru_Param_c::m.field_0x00[16], dVar9, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, dVar9);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&acStack_3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos,
        mCurAngle.y, 0, 1.0f, 0);
    cXyz cStack_48(0.0f, daPeru_Param_c::m.field_0x00[0], 30.0f);
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getBaseTRMtx());
    mDoMtx_stack_c::multVec(&cStack_48, &attention_info.position);
}

/* 80D481A4-80D4835C 0013A4 01B8+00 1/0 0/0 0/0 .text            setCollision__8daPeru_cFv */
void daPeru_c::setCollision() {
    f32 local_48[2] = { 20.0f, -10.0f};
    if (!mHide) {
        int coSPrm = 0x79;
        int tgType = 0xd8fbfdff;
        int tgSPrm = 0x1f;
        if (dComIfGp_event_runCheck()) {
            tgType = 0;
            tgSPrm = 0;
            coSPrm = 0;
        } else if (mStagger.checkStagger()) {
            tgType = 0;
            tgSPrm = 0;
        }
        cXyz acStack_34;
        cXyz cStack_40;
        for (int i = 0; i < 2; i = i + 1) {
            cStack_40.set(0.0f, 0.0f, local_48[i]);
            mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getBaseTRMtx());
            mDoMtx_stack_c::multVec(&cStack_40, &acStack_34);
            mCyls[i].SetCoSPrm(coSPrm);
            mCyls[i].SetTgType(tgType);
            mCyls[i].SetTgSPrm(tgSPrm);
            mCyls[i].OnTgNoHitMark();
            mCyls[i].SetH(mCylH);
            mCyls[i].SetR(mWallR);
            mCyls[i].SetC(acStack_34);
            dComIfG_Ccsp()->Set(&mCyls[i]);
        }
    }
    for (int i = 0; i < 2; i++) {
        mCyls[i].ClrCoHit();
        mCyls[i].ClrTgHit();
    }
}

/* 80D4835C-80D48364 00155C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__8daPeru_cFv */
BOOL daPeru_c::drawDbgInfo() {
    return FALSE;
}

/* 80D48364-80D48414 001564 00B0+00 13/13 0/0 0/0 .text setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
 */
int daPeru_c::setAction(actionFunc a_func, int param_2) {
    mMode = MODE_INVALID;
    if (mActionFunc != NULL) {
        (this->*(mActionFunc))(0);
    }
    mMode = MODE_ENTER;
    mActionFunc = a_func;
    if (mActionFunc != NULL) {
        (this->*(mActionFunc))(param_2);
    }
    return 1;
}

/* 80D48414-80D486A0 001614 028C+00 10/0 0/0 0/0 .text            wait__8daPeru_cFi */
int daPeru_c::wait(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            mMode = MODE_RUN;
        }
        break;
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            if (mPlayerActorMngr.getActorP() != NULL && !mTwilight) {
                mJntAnm.lookNone(0);
                if (chkActorInSight(mPlayerActorMngr.getActorP(), daPeru_Param_c::m.field_0x50[0],
                                    mCurAngle.y))
                {
                    mJntAnm.lookPlayer(0);
                }

                if (!srchPlayerActor() && mCurAngle.y == home.angle.y) {
                    mMode = MODE_INIT;
                }
            } else {
                mJntAnm.lookNone(0);
                if (home.angle.y != mCurAngle.y) {
                    if (field_0xe34 == 0) {
                        setAngle(home.angle.y);
                        mMode = 1;
                    } else if (step(home.angle.y, -1, -1, 0xf, 0) != 0) {
                        mMode = MODE_INIT;
                    }
                    attention_info.flags = 0;
                } else if (!mTwilight) {
                    srchPlayerActor();
                }
            }
        }

        if (mType == 0 && is_AppearDemo_start()) {
            _AppearDemoStart();
            _AppearDemoTag_delete();
        }
        break;
    case MODE_INVALID:
        break;
    }
    return 1;
}

/* 80D486A0-80D48720 0018A0 0080+00 1/1 0/0 0/0 .text            is_AppearDemo_start__8daPeru_cFv */
BOOL daPeru_c::is_AppearDemo_start() {
    if (mActors[0].getActorP() != NULL) {
        daTag_EvtArea_c* evtArea = (daTag_EvtArea_c*)mActors[0].getActorP();
        if (evtArea->chkPointInArea(*fopAcM_GetPosition_p(daPy_getPlayerActorClass()))) {
            return TRUE;
        }
    }
    return FALSE;
}

/* 80D48720-80D48750 001920 0030+00 1/1 0/0 0/0 .text            _AppearDemoTag_delete__8daPeru_cFv
 */
void daPeru_c::_AppearDemoTag_delete() {
    fopAc_ac_c* actor = mActors[0].getActorP();
    if (actor != NULL) {
        fopAcM_delete(actor);
    }
}

/* 80D48750-80D48A7C 001950 032C+00 2/0 0/0 0/0 .text            talk__8daPeru_cFi */
int daPeru_c::talk(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            initTalk(mFlowNodeNo, NULL);
            OS_REPORT("------------MSG FLOW NO = %d\n", mFlowNodeNo);
            if (checkStep()) {
                mStepMode = 0;
            }
            field_0x1129 = 0;
            if (mType != 2 && daPy_getPlayerActorClass()->checkNowWolf()) {
                field_0x1129 = 1;
            } else {
                field_0xe68 = 0x2e;
            }
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            if (mTwilight || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (field_0x1129 != 0) {
                    if (talkProc(NULL, 0, NULL, 0) != 0) {
                        mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                        dComIfGp_event_reset();
                        setAction(&daPeru_c::wait, 0);
                    }
                } else {
                    field_0xe68--;
                    if (field_0xe68 <= 0) {
                        dComIfGp_event_reset();
                        setAction(&daPeru_c::wait, 0);
                    } else if (field_0xe68 == 45) {
                        mMotionSeqMngr.setNo(3, -1.0f, 0, 0);
                        mFaceMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                    }
                }
                if (mTwilight) {
                    mJntAnm.lookNone(0);
                } else {
                    mJntAnm.lookPlayer(0);
                }
            } else {
                mJntAnm.lookPlayer(0);
                step(fopAcM_searchPlayerAngleY(this), -1, -1, 0xf, 0);
            }
        }
        break;
    case MODE_INVALID:
        break;
    }
    
    return 0;
}

/* 80D48A7C-80D48C58 001C7C 01DC+00 1/0 0/0 0/0 .text            jump_st__8daPeru_cFi */
int daPeru_c::jump_st(int param_1) {
    switch(mMode) {
    case MODE_ENTER:
        field_0xe58 = param_1;
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(6, -1.0f, 0, 0);
        fopAcM_SetSpeedF(this, 0.0f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        fopAcM_SetGravity(this, -9.0f);
        mMode = 2;
        break;
    case MODE_RUN:
        if ((field_0xe58 & 0xf) == 2) {
            mpMorf[0]->setFrame(22.0f);
        }
        mMode = 3;
        break;
    case MODE_EXIT:
        if (mpMorf[0]->getFrame() >= 36.0f) {
            fopAcM_SetSpeedF(this, 14.5f);
            fopAcM_SetSpeed(this, 0, 18.0f, 0);
            fopAcM_SetGravity(this, -9.0f);
            mMode = 4;
        }
        break;
    case MODE_4:
        if (speed.y < 0.0f && mGroundH <= 4.0f) {
            int actionArg = 0;
            if ((field_0xe58 & 0xf) == 1) {
                actionArg = 1;
            }
            setAction(&daPeru_c::jump_ed, actionArg);
        }
        break;
    case MODE_INVALID:
        field_0xe58 = 0;
        break;
    }
    return 0;
}

/* 80D48C58-80D48E34 001E58 01DC+00 1/0 0/0 0/0 .text            jump_ed__8daPeru_cFi */
int daPeru_c::jump_ed(int param_1) {
    switch (mMode) {
    case MODE_ENTER:
        field_0xe58 = param_1;
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(7, -1.0f, 0, 0);
        field_0xe7c = 0;
        mMode = MODE_RUN;
        break;
    case MODE_RUN:
        if (!mAcch.ChkGroundHit()) {
            break;
        }
        fopAcM_SetSpeedF(this, 0.0f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        if (field_0xe58 == 0) {
            if (field_0xe7c == 0) {
                mSound.startCreatureSound(Z2SE_GZ_NE_JUMP, 0, -1);
                field_0xe7c = 1;
            }
            if (!mpMorf[0]->isStop()) {
                break;
            }
            setAction(&daPeru_c::wait, 0);
            return 1;
        }
        if (field_0xe58 == 1 && mpMorf[0]->getFrame() >= 10.0f) {
            return 1;
        }
        break;
    case MODE_INVALID:
        field_0xe58 = 0;
        break;
    }

    return 0;
}

/* 80D48E34-80D48FA8 002034 0174+00 1/0 0/0 0/0 .text            sniff__8daPeru_cFi */
int daPeru_c::sniff(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(3, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(4, -1.0f, 0, 0);
        fopAcM_SetSpeedF(this, 0.0f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        mMode = MODE_RUN;
        break;
    case MODE_RUN:
        if (mpMorf[0]->isStop()) {
            setAction(&daPeru_c::wait, 0);
            return 1;
        }
        if (mpMorf[0]->getFrame() == 23.0f) {
            mSound.startCreatureVoice(Z2SE_GZ_NE_KNKN, -1);
        }
        break;
    case MODE_INVALID:
        break;
    }

    return 0;
}

/* 80D48FA8-80D4910C 0021A8 0164+00 1/0 0/0 0/0 .text            demo_appear__8daPeru_cFi */
int daPeru_c::demo_appear(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(8, -1.0f, 0, 0);
        fopAcM_SetSpeedF(this, 1.2f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        setTimer(5);
        mMode = MODE_RUN;
        break;
    case MODE_RUN:
        if (decTimer()) {
            mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            setTimer(10);
            mMode = MODE_EXIT;
        }
        break;
    case MODE_EXIT:
        if (decTimer()) {
            return 1;
        }
        break;
    case MODE_INVALID:
        break;
    }

    return 0;
}

/* 80D4910C-80D492A8 00230C 019C+00 1/0 0/0 0/0 .text            demo_walk_to_link__8daPeru_cFi */
int daPeru_c::demo_walk_to_link(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(2, -1.0, 0, 0);
        mMotionSeqMngr.setNo(8, -1.0, 0, 0);
        fopAcM_SetSpeedF(this, 4.8f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        mStepMode = 0;
        setTimer(20);
        mMode = MODE_RUN;
        break;
    case MODE_RUN: {
        mpMorf[0]->setPlaySpeed(1.3f);
        fopAc_ac_c* actor = mActors[2].getActorP();
        if (actor == NULL) {
            OS_REPORT("-----there is no player!!\n");
            JUT_PANIC(1948, 0);
        }
        cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchActorAngleY(this, actor), 0x800);
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        f32 dist = fopAcM_searchActorDistanceXZ(this, actor);
        OS_REPORT("distance = %f\n", dist);
        if (dist <= 130.0f) {
            fopAcM_SetSpeedF(this, 0.0f);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            mStepMode = 0;
            setAction(&daPeru_c::wait, 0);
            return 1;
        }
        break;
    }
    case MODE_INVALID:
        break;
    }
    return 0;
}

/* 80D492A8-80D49418 0024A8 0170+00 1/0 0/0 0/0 .text            demo_walk_circle__8daPeru_cFi */
int daPeru_c::demo_walk_circle(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(2, -1.0, 0, 0);
        mMotionSeqMngr.setNo(8, -1.0, 0, 0);
        fopAcM_SetSpeedF(this, 4.2f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        mStepMode = 0;
        field_0xe6e = shape_angle.y + 0x4000;
        setTimer(0x3a);
        mMode = MODE_RUN;
        break;
    case MODE_RUN: {
        step(field_0xe6e, 2, 8, 1, 0);
        if (decTimer()) {
            fopAcM_SetSpeedF(this, 0.0f);
            setAction(&daPeru_c::wait, 0);
            return 1;
        }
        field_0xe6e -= 0x155;
        break;
    }
    case MODE_INVALID:
        break;
    }

    return 0;
}

/* 80D49418-80D4971C 002618 0304+00 1/0 0/0 0/0 .text            demo_walk_to_window__8daPeru_cFi */
int daPeru_c::demo_walk_to_window(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(8, -1.0f, 0, 0);
        fopAcM_SetSpeedF(this, 4.2f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        mStepMode = 0;
        field_0xe6e = shape_angle.y + 0x8000;
        setTimer(0x37);
        mMode = MODE_RUN;
        break;
    case MODE_RUN:
        step(field_0xe6e, 2, 8, 0x14, 0);
        if (decTimer()) {
            field_0xe6e += 0x4000;
            mStepMode = 0;
            mMode = MODE_EXIT;
        }
        break;
    case MODE_EXIT: {
        cXyz acStack_30(3077.724f, -870.02f, 6055.274f);
        cLib_chaseAngleS(&mCurAngle.y, cLib_targetAngleY(fopAcM_GetPosition_p(this), &acStack_30),
                         0x200);
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        if ((acStack_30 - current.pos).absXZ() < 30.0f) {
            fopAcM_SetSpeedF(this, 0.0f);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            setAction(&daPeru_c::wait, 0);
            return 1;
        }
        break;
    }
    case MODE_INVALID:
        break;
    }

    return 0;
}

/* 80D4971C-80D499AC 00291C 0290+00 1/0 0/0 0/0 .text            demo_walk_to_pathway__8daPeru_cFi
 */
 int daPeru_c::demo_walk_to_pathway(int param_0) {
    switch(mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(9, -1.0f, 0, 0);
        fopAcM_SetSpeedF(this, 8.0f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        mStepMode = 0;
        mMode = MODE_RUN;
        break;
    case MODE_RUN: {
        cXyz acStack_30(2864.371f, -841.233f, 5567.597f);
        cLib_chaseAngleS(&mCurAngle.y, cLib_targetAngleY(fopAcM_GetPosition_p(this), &acStack_30),
                         0x800);
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        if ((acStack_30 - current.pos).absXZ() < 60.0f) {
            fopAcM_SetSpeedF(this, 0.0f);
            fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
            setAction(&daPeru_c::wait, 0);
            return 1;
        }
        break;
    }
    case MODE_INVALID:
        break;
    }

     return 0;
}

/* 80D499AC-80D49A40 002BAC 0094+00 1/0 0/0 0/0 .text            cutAppear__8daPeru_cFi */
int daPeru_c::cutAppear(int param_1) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* pCutId = dComIfGp_evmng_getMyIntegerP(param_1, "cut_id");
    if (pCutId == NULL) {
        OS_REPORT("-----CUT FALSE\n");
        return 1;
    }

    if (eventManager.getIsAddvance(param_1) != 0) {
        _cutAppear_Init(*pCutId);
    }
    return _cutAppear_Main(*pCutId);
}

/* 80D4C83C-80D4C840 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daPeru_Param_c l_HIO;

/* 80D49A40-80D4A334 002C40 08F4+00 1/1 0/0 0/0 .text            _cutAppear_Init__8daPeru_cFRCi */
int daPeru_c::_cutAppear_Init(int const& param_1) {
    switch(param_1) {
    case 10:
        fopAcM_SetSpeedF(this, 0.0f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        field_0xe80 = 1;
        mJntAnm.lookNone(0);
        initTalk(mFlowNodeNo, NULL);
        break;
    case 20:
        _catdoor_open();
        break;
    case 30:
        setCnt(3);
        setAction(&daPeru_c::demo_appear, 0);
        break;
    case 40:
        mJntAnm.lookCamera(0);
        setCnt(40);
        break;
    case 50:
        setCnt(10);
        setAction(&daPeru_c::demo_walk_to_link, 0);
        break;
    case 70:
        mJntAnm.lookNone(0);
        setAction(&daPeru_c::sniff, 0);
        break;
    case 80:
        mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        mJntAnm.lookPlayer(0);
        initTalk(mFlowNodeNo, NULL);
        break;
    case 90:
        mJntAnm.lookNone(0);
        setAction(&daPeru_c::demo_walk_circle, 0);
        break;
    case 100:
        mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
        mJntAnm.lookPlayer(0);
        field_0xe26 = false;
        initTalk(mFlowNodeNo, NULL);
        break;
    case 110: 
    {
        mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        fopAc_ac_c* midna = NULL;
        if (fopAcM_SearchByName(PROC_MIDNA, &midna) != 0) {
            if (midna == NULL) {
                OS_REPORT("---- there is no midna!!\n");
                JUT_PANIC(2446, 0);
            } else {
                mJntAnm.lookActor(midna, 0.0, 0);
            }
        }
        setCnt(40);
        break;
    }
    case 120:
        mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        initTalk(mFlowNodeNo, NULL);
        break;
    case 130:
        mFaceMotionSeqMngr.setNo(2, -1.0f, 0, 0);
        initTalk(mFlowNodeNo, NULL);
        break;
    case 140:
        static cXyz see_pos;
        see_pos.set(0.0f, -300.0f, 300.0f);
        mDoMtx_stack_c::ZXYrotS(shape_angle);
        mDoMtx_stack_c::multVec(&see_pos, &see_pos);
        see_pos += current.pos;
        mJntAnm.lookPos(&see_pos, 0);
        setCnt(80);
        break;
    case 150:
        mJntAnm.lookNone(0);
        setAction(&daPeru_c::demo_walk_to_window, 0);
        setCnt(40);
        break;
    case 160:
        mJntAnm.lookPlayer(0);
        mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
        initTalk(mFlowNodeNo, NULL);
        break;
    case 170:
        mJntAnm.lookPlayer(0);
        mFaceMotionSeqMngr.setNo(0, -1.0F, 0, 0);
        mMotionSeqMngr.setNo(1, -1.0F, 0, 0);
        initTalk(mFlowNodeNo, NULL);
        break;
    case 180:
        mJntAnm.lookNone(0);
        setAction(&daPeru_c::demo_walk_to_pathway, 0);
        break;
    }
    
    return 1;
}

/* 80D4A334-80D4A840 003534 050C+00 1/1 0/0 0/0 .text            _cutAppear_Main__8daPeru_cFRCi */
int daPeru_c::_cutAppear_Main(int const& param_1) {
    int rv = FALSE;
    switch (param_1) {
    case 10:
        if (talkProc(NULL, FALSE, NULL, false)) {
            rv = 1;
        }
        break;
    case 20:
        rv = 1;
        break;
    case 30: {
        if ((this->*(mActionFunc))(0) != 0) {
            if (decCnt()) {
                rv = 1;
                break;
            }
            int iVar1 = 1;
            if (getCnt() == 1) {
                field_0xe80 = 0;
                iVar1 = 2;
            }
            setAction(&daPeru_c::jump_st, iVar1);
        }
        break;
    }
    case 40:
        if (getCnt() >= 0) {
            if (!decCnt()) {
                break;
            }
            initTalk(mFlowNodeNo, NULL);
            mFaceMotionSeqMngr.setNo(0, -1.0f, 0, 0);
            setCnt(-1);
        } else {
            if (talkProc(NULL, 0, NULL, 0)) {
                rv = 1;
            }
            break;
        }
        break;
    case 50:
        if (decCnt()) {
            mJntAnm.lookNone(0);
        }
        rv = (this->*(mActionFunc))(0);
        break;
    case 70:
        rv = (this->*(mActionFunc))(0);
        break;
    case 80:
        if (talkProc(NULL, 0, NULL, 0)) {
            rv = 1;
        }
        break;
    case 90:
        rv = (this->*(mActionFunc))(0);
        break;
    case 100:
        if (talkProc(NULL, 0, NULL, 0)) {
            rv = 1;
        }
        break;
    case 110: {
        if (decCnt()) {
            rv = 1;
        }
        break;
    }
    case 120:
        if (talkProc(NULL, 0, NULL, 0)) {
            rv = 1;
        }
        break;
    case 130:
        if (talkProc(NULL, 0, NULL, 0)) {
            rv = 1;
        }
        break;
    case 140:
        if (decCnt()) {
            rv = 1;
            break;
        }
        if (getCnt() != 40) {
            break;
        }
        mJntAnm.lookNone(0);
        break;
    case 150:
        rv = (this->*(mActionFunc))(0);
        break;
    case 160:
        if (talkProc(NULL, 0, NULL, 0)) {
            mJntAnm.lookActor(mActors[1].getActorP(), 0.0f, 0);
            rv = 1;
        }
        break;
    case 170:
        if (talkProc(NULL, 0, NULL, 0)) {
            rv = 1;
        }
        break;
    case 180:
        rv = (this->*(mActionFunc))(0);
        break;
    default:
        rv = 1;
        break;
    }

    return rv;
}

/* 80D4A840-80D4A920 003A40 00E0+00 1/1 0/0 0/0 .text            _catdoor_open__8daPeru_cFv */
void daPeru_c::_catdoor_open() {
    daObjCatDoor_c* pCatDoor = (daObjCatDoor_c*)mActors[1].getActorP();
    if (pCatDoor == NULL) {
        OS_REPORT("---- there is no catdoor!! ----!!\n");
        JUT_PANIC(2799, 0);
    } else {
        pCatDoor->setDoorOpen();
    }
}

/* 80D4A920-80D4A984 003B20 0064+00 1/1 0/0 0/0 .text            _catdoor_open_demoskip__8daPeru_cFv
 */
void daPeru_c::_catdoor_open_demoskip() {
    daObjCatDoor_c* pCatDoor = (daObjCatDoor_c*)mActors[1].getActorP();
    if (pCatDoor == NULL) {
        OS_REPORT("---- there is no catdoor!! ----!!\n");
        JUT_PANIC(2829, 0);
    } else {
        pCatDoor->_toDoorOpened();
    }
}

/* 80D4A984-80D4AA18 003B84 0094+00 1/0 0/0 0/0 .text            cutAppear_skip__8daPeru_cFi */
int daPeru_c::cutAppear_skip(int param_1) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int* pCutId = dComIfGp_evmng_getMyIntegerP(param_1, "cut_id");
    if (pCutId == NULL) {
        OS_REPORT("---------------CUT FALSE\n");
        return 1;
    }

    if (eventManager.getIsAddvance(param_1) != 0) {
        _cutAppear_skip_Init(*pCutId);
    }
    return _cutAppear_skip_Main(*pCutId);
}

/* 80D4AA18-80D4AAF0 003C18 00D8+00 1/1 0/0 0/0 .text            _cutAppear_skip_Init__8daPeru_cFRCi
 */
int daPeru_c::_cutAppear_skip_Init(int const& param_1) {
    switch (param_1) {
    case 10:
        mCurAngle.y = 0;
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        fopAcM_SetSpeedF(this, 0.0f);
        fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
        fopAcM_SetPosition(this, 2885.9f, -880.0f, 5617.3f);
        fopAcM_SetOldPosition(this, 2885.9f, -880.0f, 5617.3f);
        _catdoor_open_demoskip();
        field_0xe80 = 0;
        daNpcT_onEvtBit(0x127);
        setAction(&daPeru_c::wait, 0);
        break;
    }
    return 0;
}

/* 80D4AAF0-80D4AB08 003CF0 0018+00 1/1 0/0 0/0 .text            _cutAppear_skip_Main__8daPeru_cFRCi
 */
int daPeru_c::_cutAppear_skip_Main(int const& param_0) {
    int rv = 0;
    if (param_0 == 10) {
        rv = 1;
    }
    return rv;
}

/* 80D4AB08-80D4AB28 003D08 0020+00 1/0 0/0 0/0 .text            daPeru_Create__FPv */
static int daPeru_Create(void* i_this) {
    return static_cast<daPeru_c*>(i_this)->create();
}

/* 80D4AB28-80D4AB48 003D28 0020+00 1/0 0/0 0/0 .text            daPeru_Delete__FPv */
static int daPeru_Delete(void* i_this) {
    return static_cast<daPeru_c*>(i_this)->Delete();
}

/* 80D4AB48-80D4AB68 003D48 0020+00 1/0 0/0 0/0 .text            daPeru_Execute__FPv */
static int daPeru_Execute(void* i_this) {
    return static_cast<daPeru_c*>(i_this)->Execute();
}

/* 80D4AB68-80D4AB88 003D68 0020+00 1/0 0/0 0/0 .text            daPeru_Draw__FPv */
static int daPeru_Draw(void* i_this) {
    return static_cast<daPeru_c*>(i_this)->Draw();
}

/* 80D4AB88-80D4AB90 003D88 0008+00 1/0 0/0 0/0 .text            daPeru_IsDelete__FPv */
static int daPeru_IsDelete(void* i_this) {
    return 1;
}

AUDIO_INSTANCES


/* 80D4C61C-80D4C63C -00001 0020+00 1/0 0/0 0/0 .data            daPeru_MethodTable */
static actor_method_class daPeru_MethodTable = {
    (process_method_func)daPeru_Create,
    (process_method_func)daPeru_Delete,
    (process_method_func)daPeru_Execute,
    (process_method_func)daPeru_IsDelete,
    (process_method_func)daPeru_Draw,
};

/* 80D4C63C-80D4C66C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_PERU */
extern actor_process_profile_definition g_profile_PERU = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_PERU,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPeru_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  694,                    // mPriority
  &daPeru_MethodTable,    // sub_method
  0x08044108,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D4C1B0-80D4C1B0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
