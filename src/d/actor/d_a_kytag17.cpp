/**
 * d_a_kytag17.cpp
 * Light Mask Tag
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_kytag17.h"
#include "d/d_procname.h"

/* 8046DB58-8046DB60 000078 0008+00 1/0 0/0 0/0 .text            daKytag17_Draw__FP13kytag17_class
 */
static int daKytag17_Draw(kytag17_class* i_this) {
    return 1;
}

/* 8046DB60-8046DB68 000080 0008+00 1/0 0/0 0/0 .text daKytag17_Execute__FP13kytag17_class */
static int daKytag17_Execute(kytag17_class* i_this) {
    return 1;
}

/* 8046DB68-8046DB70 000088 0008+00 1/0 0/0 0/0 .text daKytag17_IsDelete__FP13kytag17_class */
static int daKytag17_IsDelete(kytag17_class* i_this) {
    return 1;
}

/* 8046DB70-8046DB78 000090 0008+00 1/0 0/0 0/0 .text            daKytag17_Delete__FP13kytag17_class
 */
static int daKytag17_Delete(kytag17_class* i_this) {
    return 1;
}

/* 8046DB78-8046DBE0 000098 0068+00 1/0 0/0 0/0 .text            daKytag17_Create__FP10fopAc_ac_c */
static int daKytag17_Create(fopAc_ac_c* i_this) {
    kytag17_class* a_this = (kytag17_class*)i_this;

    fopAcM_SetupActor(a_this, kytag17_class);

    a_this->mParameters = fopAcM_GetParam(a_this);
    g_env_light.light_mask_type = a_this->mParameters;
    return cPhs_COMPLEATE_e;
}

/* 8046DBE8-8046DC08 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag17_Method */
static actor_method_class l_daKytag17_Method = {
    (process_method_func)daKytag17_Create, (process_method_func)daKytag17_Delete,
    (process_method_func)daKytag17_Execute, (process_method_func)daKytag17_IsDelete,
    (process_method_func)daKytag17_Draw};

/* 8046DC08-8046DC38 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG17 */
extern actor_process_profile_definition g_profile_KYTAG17 = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_KYTAG17,           // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(kytag17_class),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    111,                    // mPriority
    &l_daKytag17_Method,    // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_0_e,      // cullType   
};
