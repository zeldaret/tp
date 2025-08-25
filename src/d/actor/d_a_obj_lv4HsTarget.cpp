/**
 * d_a_obj_lv4HsTarget.cpp
 * Arbiter's Grounds Clawshot Target
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4HsTarget.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C5F62C-80C5F648 0000EC 001C+00 1/1 0/0 0/0 .text            __ct__19daLv4HsTarget_HIO_cFv */
daLv4HsTarget_HIO_c::daLv4HsTarget_HIO_c() {}

/* 80C5F690-80C5F718 000150 0088+00 1/1 0/0 0/0 .text            setBaseMtx__15daLv4HsTarget_cFv */
void daLv4HsTarget_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C5F718-80C5F784 0001D8 006C+00 1/0 0/0 0/0 .text            CreateHeap__15daLv4HsTarget_cFv */
int daLv4HsTarget_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L4HsMato", 4);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C5F784-80C5F85C 000244 00D8+00 1/1 0/0 0/0 .text            create__15daLv4HsTarget_cFv */
int daLv4HsTarget_c::create() {
    fopAcM_SetupActor(this, daLv4HsTarget_c);

    int phase = dComIfG_resLoad(&mPhase, "L4HsMato");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L4HsMato", 7, dBgS_MoveBGProc_TypicalRotY, 0x1200, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        setBaseMtx();
    }

    return phase;
}

/* 80C5F85C-80C5F870 00031C 0014+00 1/0 0/0 0/0 .text Execute__15daLv4HsTarget_cFPPA3_A4_f */
int daLv4HsTarget_c::Execute(Mtx** param_0) {
    *param_0 = &mpModel->getBaseTRMtx();
    return 1;
}

/* 80C5F870-80C5F8D4 000330 0064+00 1/0 0/0 0/0 .text            Draw__15daLv4HsTarget_cFv */
int daLv4HsTarget_c::Draw() {
    g_env_light.settingTevStruct(0x40, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80C5F8D4-80C5F904 000394 0030+00 1/0 0/0 0/0 .text            Delete__15daLv4HsTarget_cFv */
int daLv4HsTarget_c::Delete() {
    dComIfG_resDelete(&mPhase, "L4HsMato");
    return 1;
}

/* 80C5F904-80C5F930 0003C4 002C+00 1/0 0/0 0/0 .text daLv4HsTarget_Draw__FP15daLv4HsTarget_c */
static int daLv4HsTarget_Draw(daLv4HsTarget_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C5F930-80C5F950 0003F0 0020+00 1/0 0/0 0/0 .text daLv4HsTarget_Execute__FP15daLv4HsTarget_c
 */
static int daLv4HsTarget_Execute(daLv4HsTarget_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C5F950-80C5F970 000410 0020+00 1/0 0/0 0/0 .text daLv4HsTarget_Delete__FP15daLv4HsTarget_c */
static int daLv4HsTarget_Delete(daLv4HsTarget_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C5F970-80C5F990 000430 0020+00 1/0 0/0 0/0 .text daLv4HsTarget_Create__FP10fopAc_ac_c */
static int daLv4HsTarget_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv4HsTarget_c*>(i_this)->create();
}

/* 80C5FAEC-80C5FAF0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daLv4HsTarget_HIO_c l_HIO;

/* ############################################################################################## */
/* 80C5FA48-80C5FA68 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv4HsTarget_Method */
static actor_method_class l_daLv4HsTarget_Method = {
    (process_method_func)daLv4HsTarget_Create,  (process_method_func)daLv4HsTarget_Delete,
    (process_method_func)daLv4HsTarget_Execute, (process_method_func)NULL,
    (process_method_func)daLv4HsTarget_Draw,
};

/* 80C5FA68-80C5FA98 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4HsTarget */
extern actor_process_profile_definition g_profile_Obj_Lv4HsTarget = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Lv4HsTarget,
    &g_fpcLf_Method.base,
    sizeof(daLv4HsTarget_c),
    0,
    0,
    &g_fopAc_Method.base,
    640,
    &l_daLv4HsTarget_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
