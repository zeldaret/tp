/**
 * d_a_obj_window.cpp
 * Object - Twilight Hyrule Castle Window Shutter
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_window.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D39284-80D39288 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "J_KazeD";

/* 80D3922C-80D39238 000000 000C+00 3/3 0/0 0/0 .rodata          l_bck */
static int const l_bck[3] = {5, 6, -1};

/* 80D39288-80D392CC 000004 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x11}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        40.0f,               // mRadius
        400.0f               // mHeight
    }                        // mCyl
};

/* 80D38758-80D387B8 000078 0060+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjWindow_cFv */
void daObjWindow_c::initBaseMtx() {
    mpModel->calc();
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D387B8-80D38840 0000D8 0088+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjWindow_cFv */
void daObjWindow_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    if (mpBckAnm != NULL) {
        MTXCopy(mpModel->getAnmMtx(0), mBgMtx);
    } else {
        MTXCopy(mpModel->getBaseTRMtx(), mBgMtx);
    }
}

/* 80D38840-80D388F0 000160 00B0+00 1/0 0/0 0/0 .text            Create__13daObjWindow_cFv */
int daObjWindow_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, -250.0f, 600.0f, -250.0f, 250.0f, 0.0f, 250.0f);
    if (mType == 1) {
        mStts.Init(0xff, 0xff, this);
        mCyl.Set(l_cyl_src);
        mCyl.SetStts(&mStts);
    }
    tevStr.mLightInf.r = getLightInf();
    return 1;
}

/* 80D388F0-80D38A20 000210 0130+00 1/0 0/0 0/0 .text            CreateHeap__13daObjWindow_cFv */
int daObjWindow_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 9);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    if (l_bck[mType] > 0) {
        J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, l_bck[mType]);
        mpBckAnm = new mDoExt_bckAnm();
        if (mpBckAnm == NULL || !mpBckAnm->init(anm, 1, 2, 1.0f, 0, -1, false)) {
            return 0;
        }
    }
    return 1;
}

/* 80D38A68-80D38B04 000388 009C+00 1/1 0/0 0/0 .text            create1st__13daObjWindow_cFv */
cPhs__Step daObjWindow_c::create1st() {
    mType = getType();
    if (mType == 0xff) {
        mType = 0;
    }
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        step = (cPhs__Step)MoveBGCreate(l_arcName, 12, NULL, 0xee0, NULL);
        if (step == cPhs_ERROR_e) {
            return step;
        }
    }
    return step;
}

/* 80D38B04-80D38F28 000424 0424+00 1/0 0/0 0/0 .text            Execute__13daObjWindow_cFPPA3_A4_f
 */
int daObjWindow_c::Execute(Mtx** i_mtx) {
    if (mpBckAnm != NULL) {
        mpBckAnm->play();
        f32 frame = mpBckAnm->getFrame();
        if (frame == 164.0f || frame == 757.0f) {
            fopAcM_seStart(this, Z2SE_OBJ_SPIRALSTEP_DOOR_BOUND, 0);
        }
        if (frame < 125.0f) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_1, 0);
        } else if (frame < 264.0f) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_2, 0);
        } else if (frame < 364.0f) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_3, 0);
        } else if (frame < 464.0f) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_4, 0);
        } else if (frame < 544.0f) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_5, 0);
        } else if (frame < 714.0f) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_6, 0);
        } else if (frame < 829.0f) {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_7, 0);
        } else {
            fopAcM_seStartLevel(this, Z2SE_OBJ_SPIRALSTEP_DOOR_8, 0);
        }
    }
    *i_mtx = &mBgMtx;
    setBaseMtx();
    if (mType == 1) {
        cXyz center(-50.0f, 0.0f, -50.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::multVec(&center, &center);
        mCyl.SetC(center);
        mCyl.SetR(80.0f);
        dComIfG_Ccsp()->Set(&mCyl);
    }
    return 1;
}

/* 80D38F28-80D39000 000848 00D8+00 1/0 0/0 0/0 .text            Draw__13daObjWindow_cFv */
int daObjWindow_c::Draw() {
    g_env_light.settingTevStruct(0x14, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    if (mpBckAnm != NULL) {
        mpBckAnm->entry(mpModel->getModelData());
    }
    mDoExt_modelUpdateDL(mpModel);
    mDoExt_bckAnmRemove(mpModel->getModelData());
    dComIfGd_setList();
    return 1;
}

/* 80D39000-80D39034 000920 0034+00 1/0 0/0 0/0 .text            Delete__13daObjWindow_cFv */
int daObjWindow_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80D39034-80D39128 000954 00F4+00 1/0 0/0 0/0 .text daObjWindow_create1st__FP13daObjWindow_c */
static cPhs__Step daObjWindow_create1st(daObjWindow_c* i_this) {
    fopAcM_SetupActor(i_this, daObjWindow_c);
    return i_this->create1st();
}

/* 80D391B8-80D391D8 000AD8 0020+00 1/0 0/0 0/0 .text daObjWindow_MoveBGDelete__FP13daObjWindow_c
 */
static int daObjWindow_MoveBGDelete(daObjWindow_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D391D8-80D391F8 000AF8 0020+00 1/0 0/0 0/0 .text daObjWindow_MoveBGExecute__FP13daObjWindow_c
 */
static int daObjWindow_MoveBGExecute(daObjWindow_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D391F8-80D39224 000B18 002C+00 1/0 0/0 0/0 .text daObjWindow_MoveBGDraw__FP13daObjWindow_c */
static int daObjWindow_MoveBGDraw(daObjWindow_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D392CC-80D392EC -00001 0020+00 1/0 0/0 0/0 .data            daObjWindow_METHODS */
static actor_method_class daObjWindow_METHODS = {
    (process_method_func)daObjWindow_create1st,
    (process_method_func)daObjWindow_MoveBGDelete,
    (process_method_func)daObjWindow_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daObjWindow_MoveBGDraw,
};

/* 80D392EC-80D3931C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Window */
extern actor_process_profile_definition g_profile_Obj_Window = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Window,
    &g_fpcLf_Method.base,
    sizeof(daObjWindow_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x1EB,
    &daObjWindow_METHODS,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
