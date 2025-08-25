/**
 * d_a_obj_kkanban.cpp
 * Object - Kakariko Sign
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kkanban.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_procname.h"

/* 80C46698-80C46768 000078 00D0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        s32 jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        daObjKKanban_c* userArea = (daObjKKanban_c*)model->getUserArea();
        if (jointNo == userArea->mJointIdx) {
            cMtx_copy(model->getAnmMtx(jointNo), mDoMtx_stack_c::get());
            mDoMtx_stack_c::XrotM(userArea->mRotX);
            mDoMtx_stack_c::ZrotM(userArea->mRotZ);
            model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
            mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
            MTXCopy(mDoMtx_stack_c::get(), userArea->getMoveBgMtx());
        }
    }
    return 1;
}

/* 80C46768-80C467A4 000148 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjKKanban_cFv */
void daObjKKanban_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C467A4-80C46808 000184 0064+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjKKanban_cFv */
void daObjKKanban_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C46F98-80C46F9C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "H_KKanban";

/* 80C46F9C-80C46FF0 000004 0054+00 1/1 0/0 0/0 .data            l_tri_src */
static dCcD_SrcTri l_tri_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x20, 0x11}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},           // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},           // mGObjTg
        {0x0},                                        // mGObjCo
    },                                                // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}}  // mTri
    }                                                                 // mTriAttr
};

/* 80C46808-80C46928 0001E8 0120+00 1/0 0/0 0/0 .text            Create__14daObjKKanban_cFv */
int daObjKKanban_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    JUTNameTab* jointName = mpModel->getModelData()->getJointTree().getJointName();
    mJointIdx = -1;
    for (u16 i = 0; i < mpModel->getModelData()->getJointNum(); i++) {
        if (!strcmp(jointName->getName(i), "move")) {
            mJointIdx = i;
        }
    }
    mpModel->getModelData()->getJointNodePointer(mJointIdx)->setCallBack(nodeCallBack);
    mpModel->setUserArea((u32)this);
    fopAcM_setCullSizeBox(this, -950.0f, -2150.0f, -2000.0f, 100.0f, 50.0f, 800.0f);
    mStts.Init(0xff, 0xff, this);
    mTri.Set(l_tri_src);
    mTri.SetStts(&mStts);
    return 1;
}

/* 80C46928-80C469F4 000308 00CC+00 1/1 0/0 0/0 .text            setTG__14daObjKKanban_cFv */
void daObjKKanban_c::setTG() {
    cXyz tg[3];

    tg[0].set(0.0f, 0.0f, 0.0f);
    tg[1].set(0.0f, -500.0f, -500.0f);
    tg[2].set(0.0f, -1200.0f, 760.0f);
    mDoMtx_stack_c::copy(mBgMtx);
    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::multVec(&tg[i], &tg[i]);
    }
    mTri.setPos(&tg[0], &tg[1], &tg[2]);
}

/* 80C469F4-80C46A64 0003D4 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjKKanban_cFv */
int daObjKKanban_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 80C46A64-80C46AE4 000444 0080+00 1/1 0/0 0/0 .text            create1st__14daObjKKanban_cFv */
int daObjKKanban_c::create1st() {
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName, 7, NULL, 0x1950, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* 80C46AE4-80C46C1C 0004C4 0138+00 1/0 0/0 0/0 .text            Execute__14daObjKKanban_cFPPA3_A4_f
 */
int daObjKKanban_c::Execute(Mtx** i_mtx) {
    field_0x750++;
    mRotX = (field_0x74c + 50.0f) * cM_scos((field_0x74a + 1000) * field_0x750);
    mRotZ = (field_0x74c + 100.0f) * cM_ssin((field_0x74a + 1000) * field_0x750);
    cLib_addCalc0(&field_0x74c, 0.05f, 10.0f);
    cLib_addCalcAngleS2(&field_0x74a, 0, 0x14, 100);
    if (mTri.ChkTgHit() != 0) {
        field_0x74c = 2000.0f;
        field_0x74a = 0;
    }
    *i_mtx = &mBgMtx;
    setBaseMtx();
    setTG();
    dComIfG_Ccsp()->Set(&mTri);
    return 1;
}

/* 80C46C1C-80C46CC0 0005FC 00A4+00 1/0 0/0 0/0 .text            Draw__14daObjKKanban_cFv */
int daObjKKanban_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C46CC0-80C46CF4 0006A0 0034+00 1/0 0/0 0/0 .text            Delete__14daObjKKanban_cFv */
int daObjKKanban_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80C46CF4-80C46DF4 0006D4 0100+00 1/0 0/0 0/0 .text daObjKKanban_create1st__FP14daObjKKanban_c
 */
static int daObjKKanban_create1st(daObjKKanban_c* i_this) {
    fopAcM_SetupActor(i_this, daObjKKanban_c);
    return i_this->create1st();
}

/* 80C46EE0-80C46F00 0008C0 0020+00 1/0 0/0 0/0 .text
 * daObjKKanban_MoveBGDelete__FP14daObjKKanban_c                */
static int daObjKKanban_MoveBGDelete(daObjKKanban_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C46F00-80C46F20 0008E0 0020+00 1/0 0/0 0/0 .text
 * daObjKKanban_MoveBGExecute__FP14daObjKKanban_c               */
static int daObjKKanban_MoveBGExecute(daObjKKanban_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C46F20-80C46F4C 000900 002C+00 1/0 0/0 0/0 .text daObjKKanban_MoveBGDraw__FP14daObjKKanban_c
 */
static int daObjKKanban_MoveBGDraw(daObjKKanban_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C46FF0-80C47010 -00001 0020+00 1/0 0/0 0/0 .data            daObjKKanban_METHODS */
static actor_method_class daObjKKanban_METHODS = {
    (process_method_func)daObjKKanban_create1st,     (process_method_func)daObjKKanban_MoveBGDelete,
    (process_method_func)daObjKKanban_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjKKanban_MoveBGDraw,
};

/* 80C47010-80C47040 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KKanban */
extern actor_process_profile_definition g_profile_Obj_KKanban = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_KKanban,        // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daObjKKanban_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    548,                     // mPriority
    &daObjKKanban_METHODS,   // sub_method
    0x40100,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
