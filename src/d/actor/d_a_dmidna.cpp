/**
 * d_a_dmidna.cpp
 * Dying Midna Actor
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_dmidna.h"
#include "f_op/f_op_actor_mng.h"

/* 8045D290-8045D298 000000 0007+01 3/3 0/0 0/0 .rodata          l_arcName */
static const char l_arcName[] = "Dmidna";

/* 8045CED8-8045CFC4 000078 00EC+00 1/1 0/0 0/0 .text            createHeap__10daDmidna_cFv */
int daDmidna_c::createHeap() {
    mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes(l_arcName, 8), NULL,
                                       NULL, (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 4),
                                       2, 1.0f, 0, -1, NULL, 0, 0);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 8045CFC4-8045CFE4 000164 0020+00 1/1 0/0 0/0 .text            daDmidna_createHeap__FP10fopAc_ac_c
 */
static int daDmidna_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daDmidna_c*>(i_this)->createHeap();
}

/* 8045CFE4-8045D094 000184 00B0+00 1/1 0/0 0/0 .text            create__10daDmidna_cFv */
int daDmidna_c::create() {
    fopAcM_SetupActor(this, daDmidna_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daDmidna_createHeap, 0xAEE0)) {
            return cPhs_ERROR_e;
        }

        model = mpModelMorf->getModel();
        setMatrix();
    }

    return phase;
}

/* 8045D094-8045D0B4 000234 0020+00 1/0 0/0 0/0 .text            daDmidna_Create__FP10fopAc_ac_c */
static int daDmidna_Create(fopAc_ac_c* i_this) {
    return static_cast<daDmidna_c*>(i_this)->create();
}

/* 8045D0B4-8045D11C 000254 0068+00 1/1 0/0 0/0 .text            __dt__10daDmidna_cFv */
daDmidna_c::~daDmidna_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}

/* 8045D11C-8045D144 0002BC 0028+00 1/0 0/0 0/0 .text            daDmidna_Delete__FP10daDmidna_c */
static int daDmidna_Delete(daDmidna_c* i_this) {
    i_this->~daDmidna_c();
    return 1;
}

/* 8045D144-8045D1A0 0002E4 005C+00 2/2 0/0 0/0 .text            setMatrix__10daDmidna_cFv */
void daDmidna_c::setMatrix() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();
}

/* 8045D1A0-8045D1E4 000340 0044+00 1/1 0/0 0/0 .text            execute__10daDmidna_cFv */
int daDmidna_c::execute() {
    mpModelMorf->play(0, 0);
    setMatrix();
    return 1;
}

/* 8045D1E4-8045D204 000384 0020+00 1/0 0/0 0/0 .text            daDmidna_Execute__FP10daDmidna_c */
static int daDmidna_Execute(daDmidna_c* i_this) {
    return i_this->execute();
}

/* 8045D204-8045D268 0003A4 0064+00 1/1 0/0 0/0 .text            draw__10daDmidna_cFv */
int daDmidna_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mDoExt_modelEntryDL(model);
    return 1;
}

/* 8045D268-8045D288 000408 0020+00 1/0 0/0 0/0 .text            daDmidna_Draw__FP10daDmidna_c */
static int daDmidna_Draw(daDmidna_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 8045D29C-8045D2BC -00001 0020+00 1/0 0/0 0/0 .data            l_daDmidna_Method */
static actor_method_class l_daDmidna_Method = {
    (process_method_func)daDmidna_Create,  (process_method_func)daDmidna_Delete,
    (process_method_func)daDmidna_Execute, (process_method_func)NULL,
    (process_method_func)daDmidna_Draw,
};

/* 8045D2BC-8045D2EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_DMIDNA */
extern actor_process_profile_definition g_profile_DMIDNA = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_DMIDNA,
    &g_fpcLf_Method.base,
    sizeof(daDmidna_c),
    0,
    0,
    &g_fopAc_Method.base,
    93,
    &l_daDmidna_Method,
    0x60000,
    fopAc_ENV_e,
    fopAc_CULLBOX_0_e,
};
