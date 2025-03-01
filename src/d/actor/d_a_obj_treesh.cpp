/**
 * @file d_a_obj_treesh.cpp
 * 
*/

#include "d/actor/d_a_obj_treesh.h"
#include "d/d_com_inf_game.h"

/* 80D1F8F4-80D1F8F8 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "M_TreeSh";

/* 80D1F0CC-80D1F10C 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__14daTreeSh_HIO_cFv */
daTreeSh_HIO_c::daTreeSh_HIO_c() {
    shake_strength = 800;
    shake_speed = 500;
    field_0x8 = 0;
    field_0xa.z = 0;
    field_0xa.y = 0;
    field_0xa.x = 0;
}

/* 80D1F190-80D1F258 0001B0 00C8+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (!param_1) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model_p = j3dSys.getModel();
        daTreeSh_c* tree_p = (daTreeSh_c*)model_p->getUserArea();

        cMtx_copy(model_p->getAnmMtx(jnt_no), mDoMtx_stack_c::get());
        
        if (jnt_no == 1) {
            mDoMtx_stack_c::YrotM(tree_p->mRot[0].y);
        } else if (jnt_no == 2) {
            mDoMtx_stack_c::YrotM(tree_p->mRot[1].y);
        }

        model_p->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
        mDoMtx_copy(mDoMtx_stack_c::get(), j3dSys.mCurrentMtx);
    }

    return 1;
}

/* 80D1F258-80D1F294 000278 003C+00 1/1 0/0 0/0 .text            initBaseMtx__10daTreeSh_cFv */
void daTreeSh_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D1F294-80D1F2E8 0002B4 0054+00 1/1 0/0 0/0 .text            setBaseMtx__10daTreeSh_cFv */
void daTreeSh_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D1F2E8-80D1F358 000308 0070+00 1/0 0/0 0/0 .text            CreateHeap__10daTreeSh_cFv */
int daTreeSh_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(211, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80D1F358-80D1F414 000378 00BC+00 1/0 0/0 0/0 .text            Create__10daTreeSh_cFv */
int daTreeSh_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    J3DJoint* joint_p = mpModel->getModelData()->getJointNodePointer(0);
    fopAcM_setCullSizeBox(this,
                          joint_p->getMin()->x, joint_p->getMin()->y, joint_p->getMin()->z,
                          joint_p->getMax()->x, joint_p->getMax()->y, joint_p->getMax()->z);

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    modelData->getJointNodePointer(1)->setCallBack(nodeCallBack);
    modelData->getJointNodePointer(2)->setCallBack(nodeCallBack);
    mpModel->setUserArea((u32)this);
    return 1;
}

/* 80D1F99C-80D1F9AC 000014 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static daTreeSh_HIO_c l_HIO;

/* 80D1F414-80D1F49C 000434 0088+00 1/1 0/0 0/0 .text            create1st__10daTreeSh_cFv */
int daTreeSh_c::create1st() {
    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_arcName, 7, NULL, 0x4000, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

#ifdef DEBUG
        l_HIO.entryHIO("針葉樹");
#endif
    }

    return phase_state;
}

/* 80D1F49C-80D1F648 0004BC 01AC+00 1/0 0/0 0/0 .text            Execute__10daTreeSh_cFPPA3_A4_f */
int daTreeSh_c::Execute(Mtx** param_0) {
    for (int i = 0; i < 2; i++) {
        if (mShakeTimer[i] == 0) {
            mShakeTimer[i] = cM_rndF(30.0f) + 15.0f;
            field_0x5b8[i] = cM_rndFX(0.3f) + 1.0f;
            field_0x5c4[i] = field_0x5b8[i] * (l_HIO.shake_speed * (dKyw_get_wind_pow() + 0.2f));
        } else {
            mShakeTimer[i]--;
        }

        field_0x5c0[i] += field_0x5c4[i];
    }

    mRot[0].y = l_HIO.shake_strength * cM_ssin(field_0x5c0[0]);
    mRot[1].y = l_HIO.shake_strength * cM_scos(field_0x5c0[1]);

    *param_0 = &mpModel->getBaseTRMtx();
    return 1;
}

/* 80D1F648-80D1F6EC 000668 00A4+00 1/0 0/0 0/0 .text            Draw__10daTreeSh_cFv */
int daTreeSh_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80D1F6EC-80D1F720 00070C 0034+00 1/0 0/0 0/0 .text            Delete__10daTreeSh_cFv */
int daTreeSh_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
#ifdef DEBUG
    l_HIO.removeHIO();
#endif
    return 1;
}

/* 80D1F720-80D1F7AC 000740 008C+00 1/0 0/0 0/0 .text            daTreeSh_create1st__FP10daTreeSh_c
 */
static int daTreeSh_create1st(daTreeSh_c* i_this) {
    fopAcM_SetupActor(i_this, daTreeSh_c);
    return i_this->create1st();
}

/* 80D1F7B0-80D1F7D0 0007D0 0020+00 1/0 0/0 0/0 .text daTreeSh_MoveBGDelete__FP10daTreeSh_c */
static int daTreeSh_MoveBGDelete(daTreeSh_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D1F7D0-80D1F7F0 0007F0 0020+00 1/0 0/0 0/0 .text daTreeSh_MoveBGExecute__FP10daTreeSh_c */
static int daTreeSh_MoveBGExecute(daTreeSh_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D1F7F0-80D1F81C 000810 002C+00 1/0 0/0 0/0 .text            daTreeSh_MoveBGDraw__FP10daTreeSh_c
 */
static int daTreeSh_MoveBGDraw(daTreeSh_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D1F8F8-80D1F918 -00001 0020+00 1/0 0/0 0/0 .data            daTreeSh_METHODS */
static actor_method_class daTreeSh_METHODS = {
    (process_method_func)daTreeSh_create1st,
    (process_method_func)daTreeSh_MoveBGDelete,
    (process_method_func)daTreeSh_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daTreeSh_MoveBGDraw,
};

/* 80D1F918-80D1F948 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TREESH */
extern actor_process_profile_definition g_profile_TREESH = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_TREESH,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daTreeSh_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  431,                    // mPriority
  &daTreeSh_METHODS,      // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
