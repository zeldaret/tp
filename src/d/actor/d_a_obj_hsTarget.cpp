/**
 * d_a_obj_hsTarget.cpp
 * Object - Hookshot Target
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_hsTarget.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C1F8B0-80C1F8B0 000010 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
static const char* l_resNameIdx[2] = {"hsMato", "L7HsMato"};

/* 80C1F42C-80C1F448 0000EC 001C+00 1/1 0/0 0/0 .text            __ct__16daHsTarget_HIO_cFv */
daHsTarget_HIO_c::daHsTarget_HIO_c() {}

/* 80C1F490-80C1F518 000150 0088+00 1/1 0/0 0/0 .text            setBaseMtx__12daHsTarget_cFv */
void daHsTarget_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C1F8A0-80C1F8A8 000000 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static const u32 l_bmdIdx[2] = {4, 4};

/* 80C1F518-80C1F598 0001D8 0080+00 1/0 0/0 0/0 .text            CreateHeap__12daHsTarget_cFv */
int daHsTarget_c::CreateHeap() {
    mpModel = mDoExt_J3DModel__create(
        (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mIndex], l_bmdIdx[mIndex]),
        0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 80C1F8A8-80C1F8B0 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
static const u32 l_dzbIdx[2] = {7, 7};

/* 80C1F598-80C1F6B0 000258 0118+00 1/1 0/0 0/0 .text            create__12daHsTarget_cFv */
int daHsTarget_c::create() {
    fopAcM_SetupActor(this, daHsTarget_c);

    mIndex = getModelType();
    if (mIndex == 0x0f) {
        mIndex = 0;
    }
    int phase = dComIfG_resLoad(&mPhaseReq, l_resNameIdx[mIndex]);
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_resNameIdx[mIndex], l_dzbIdx[mIndex],
                         dBgS_MoveBGProc_TypicalRotY, 0xac0, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        } else {
            fopAcM_SetMtx(this, mpModel->mBaseTransformMtx);
            fopAcM_setCullSizeBox2(this, mpModel->getModelData());
            setBaseMtx();
        }
    }
    return phase;
}

/* 80C1F6B0-80C1F6C4 000370 0014+00 1/0 0/0 0/0 .text            Execute__12daHsTarget_cFPPA3_A4_f
 */
int daHsTarget_c::Execute(f32 (**param_0)[3][4]) {
    *param_0 = &mpModel->getBaseTRMtx();
    return 1;
}

/* 80C1F6C4-80C1F728 000384 0064+00 1/0 0/0 0/0 .text            Draw__12daHsTarget_cFv */
int daHsTarget_c::Draw() {
    g_env_light.settingTevStruct(0x40, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80C1F728-80C1F768 0003E8 0040+00 1/0 0/0 0/0 .text            Delete__12daHsTarget_cFv */
int daHsTarget_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_resNameIdx[mIndex]);
    return 1;
}

/* 80C1F768-80C1F794 000428 002C+00 1/0 0/0 0/0 .text            daHsTarget_Draw__FP12daHsTarget_c
 */
static int daHsTarget_Draw(daHsTarget_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDraw();
}

/* 80C1F794-80C1F7B4 000454 0020+00 1/0 0/0 0/0 .text daHsTarget_Execute__FP12daHsTarget_c */
static int daHsTarget_Execute(daHsTarget_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGExecute();
}

/* 80C1F7B4-80C1F7D4 000474 0020+00 1/0 0/0 0/0 .text            daHsTarget_Delete__FP12daHsTarget_c
 */
static int daHsTarget_Delete(daHsTarget_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDelete();
}

/* 80C1F7D4-80C1F7F4 000494 0020+00 1/0 0/0 0/0 .text            daHsTarget_Create__FP10fopAc_ac_c
 */
static int daHsTarget_Create(fopAc_ac_c* i_this) {
    return static_cast<daHsTarget_c*>(i_this)->create();
}

/* 80C1F96C-80C1F970 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daHsTarget_HIO_c l_HIO;

/* 80C1F8C8-80C1F8E8 -00001 0020+00 1/0 0/0 0/0 .data            l_daHsTarget_Method */
static actor_method_class l_daHsTarget_Method = {
    (process_method_func)daHsTarget_Create,  (process_method_func)daHsTarget_Delete,
    (process_method_func)daHsTarget_Execute, (process_method_func)NULL,
    (process_method_func)daHsTarget_Draw,
};

/* 80C1F8E8-80C1F918 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_HsTarget */
extern actor_process_profile_definition g_profile_Obj_HsTarget = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_HsTarget,
    &g_fpcLf_Method.base,
    sizeof(daHsTarget_c),
    0,
    0,
    &g_fopAc_Method.base,
    501,
    &l_daHsTarget_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
