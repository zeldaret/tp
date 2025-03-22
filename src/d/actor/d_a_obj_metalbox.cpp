/**
 * @file d_a_obj_metalbox.cpp
 * 
*/

#include "d/actor/d_a_obj_metalbox.h"
#include "dol2asm.h"
#include "d/d_com_inf_game.h"

static char const* l_arcName = "L_mbox_00";

/* 80592E98-80592ED4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjMBox_cFv */
void daObjMBox_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80592ED4-80592F48 0000B4 0074+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjMBox_cFv */
void daObjMBox_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::now, mBgMtx);
}

/* 80592F48-80592FD4 000128 008C+00 1/0 0/0 0/0 .text            Create__11daObjMBox_cFv */
int daObjMBox_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    return 1;
}

/* 80592FD4-80593044 0001B4 0070+00 1/0 0/0 0/0 .text            CreateHeap__11daObjMBox_cFv */
int daObjMBox_c::CreateHeap() {
    J3DModelData* objectRes = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);

    mpModel = mDoExt_J3DModel__create(objectRes, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    
    return 1;
}

/* 80593044-805931C4 000224 0180+00 1/1 0/0 0/0 .text            create__11daObjMBox_cFv */
int daObjMBox_c::create() {
    fopAcM_SetupActor(this, daObjMBox_c);

    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0xc40, 0);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 805932C4-805932F0 0004A4 002C+00 1/0 0/0 0/0 .text            Execute__11daObjMBox_cFPPA3_A4_f */
int daObjMBox_c::Execute(f32 (**param_0)[3][4]) {
    *param_0 = &mBgMtx;
    setBaseMtx();

    return 1;
}

/* 805932F0-80593394 0004D0 00A4+00 1/0 0/0 0/0 .text            Draw__11daObjMBox_cFv */
int daObjMBox_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
}

/* 80593394-805933C8 000574 0034+00 1/0 0/0 0/0 .text            Delete__11daObjMBox_cFv */
int daObjMBox_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    
    return 1;
}

/* 805933C8-805933F4 0005A8 002C+00 1/0 0/0 0/0 .text            daObjMBox_Draw__FP11daObjMBox_c */
static int daObjMBox_Draw(daObjMBox_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 805933F4-80593414 0005D4 0020+00 1/0 0/0 0/0 .text            daObjMBox_Execute__FP11daObjMBox_c
 */
static int daObjMBox_Execute(daObjMBox_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80593414-80593434 0005F4 0020+00 1/0 0/0 0/0 .text            daObjMBox_Delete__FP11daObjMBox_c
 */
static int daObjMBox_Delete(daObjMBox_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80593434-80593454 000614 0020+00 1/0 0/0 0/0 .text            daObjMBox_Create__FP10fopAc_ac_c */
static int daObjMBox_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjMBox_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80593480-805934A0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMBox_Method */
static actor_method_class l_daObjMBox_Method = {
    (process_method_func)daObjMBox_Create,
    (process_method_func)daObjMBox_Delete,
    (process_method_func)daObjMBox_Execute,
    0,
    (process_method_func)daObjMBox_Draw,
};

/* 805934A0-805934D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MetalBox */
extern actor_process_profile_definition g_profile_Obj_MetalBox = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_MetalBox,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjMBox_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  498,                    // mPriority
  &l_daObjMBox_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
