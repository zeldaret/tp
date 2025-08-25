/**
 * d_a_izumi_gate.cpp
 * Spring - Gate
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_izumi_gate.h"
#include "d/d_procname.h"

/* 80849098-808490B8 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__13daIzumiGate_cFv */
void daIzumiGate_c::initBaseMtx() {
    setBaseMtx();
}

/* 808490B8-8084910C 000098 0054+00 2/2 0/0 0/0 .text            setBaseMtx__13daIzumiGate_cFv */
void daIzumiGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    MTXCopy(mDoMtx_stack_c::now, mBgMtx);
    MTXCopy(mDoMtx_stack_c::now, mpModel->mBaseTransformMtx);
}

/* 8084910C-80849138 0000EC 002C+00 1/0 0/0 0/0 .text            daIzumiGate_Draw__FP13daIzumiGate_c
 */
static int daIzumiGate_Draw(daIzumiGate_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDraw();
}

/* 80849138-80849158 000118 0020+00 1/0 0/0 0/0 .text daIzumiGate_Execute__FP13daIzumiGate_c */
static int daIzumiGate_Execute(daIzumiGate_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGExecute();
}

/* 80849158-80849160 000138 0008+00 1/0 0/0 0/0 .text daIzumiGate_IsDelete__FP13daIzumiGate_c */
static int daIzumiGate_IsDelete(daIzumiGate_c* i_this) {
    return 1;
}

/* 80849160-80849184 000140 0024+00 1/0 0/0 0/0 .text daIzumiGate_Delete__FP13daIzumiGate_c */
static int daIzumiGate_Delete(daIzumiGate_c* i_this) {
    static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDelete();
    return 1;
}

/* 80849438-8084943C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "M_IzmGate";

/* 80849184-80849260 000164 00DC+00 1/0 0/0 0/0 .text            daIzumiGate_Create__FP10fopAc_ac_c
 */
int daIzumiGate_c::create() {
    fopAcM_SetupActor(this, daIzumiGate_c);
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        int objectName = dComIfG_getObjctResName2Index(l_arcName, "M_IzumiGate_b.dzb");
        phase = MoveBGCreate(l_arcName, objectName, dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
        fopAcM_SetMtx(this, mBgMtx);
    }
    return phase;
}

static int daIzumiGate_Create(fopAc_ac_c* i_this) {
    return static_cast<daIzumiGate_c*>(i_this)->create();
}

/* 80849260-808492D8 000240 0078+00 1/0 0/0 0/0 .text            CreateHeap__13daIzumiGate_cFv */
int daIzumiGate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "M_IzumiGate_b.bmd");
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 808492D8-808492FC 0002B8 0024+00 1/0 0/0 0/0 .text            Create__13daIzumiGate_cFv */
int daIzumiGate_c::Create() {
    initBaseMtx();
    return cPhs_COMPLEATE_e;
}

/* 808492FC-80849328 0002DC 002C+00 1/0 0/0 0/0 .text            Execute__13daIzumiGate_cFPPA3_A4_f
 */
int daIzumiGate_c::Execute(Mtx** i_mtx) {
    *i_mtx = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80849328-808493CC 000308 00A4+00 1/0 0/0 0/0 .text            Draw__13daIzumiGate_cFv */
int daIzumiGate_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 808493CC-80849400 0003AC 0034+00 1/0 0/0 0/0 .text            Delete__13daIzumiGate_cFv */
int daIzumiGate_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 8084943C-8084945C -00001 0020+00 1/0 0/0 0/0 .data            l_daIzumiGate_Method */
static actor_method_class l_daIzumiGate_Method = {
    (process_method_func)daIzumiGate_Create,  (process_method_func)daIzumiGate_Delete,
    (process_method_func)daIzumiGate_Execute, (process_method_func)daIzumiGate_IsDelete,
    (process_method_func)daIzumiGate_Draw,
};

/* 8084945C-8084948C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Izumi_Gate */
extern actor_process_profile_definition g_profile_Izumi_Gate = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Izumi_Gate,
    &g_fpcLf_Method.base,
    sizeof(daIzumiGate_c),
    0,
    0,
    &g_fopAc_Method.base,
    38,
    &l_daIzumiGate_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
