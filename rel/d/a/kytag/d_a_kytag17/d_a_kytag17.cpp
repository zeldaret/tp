/**
 * d_a_kytag17.cpp
 * Environment Tag 17
 */

#include "rel/d/a/kytag/d_a_kytag17/d_a_kytag17.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "d/kankyo/d_kankyo.h"
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
    kytag17_class* kytag17 = (kytag17_class*)i_this;

    if (!fopAcM_CheckCondition(kytag17, 8)) {
        new (kytag17) kytag17_class();
        fopAcM_OnCondition(kytag17, 8);
    }

    kytag17->mParameters = fopAcM_GetParam(kytag17);
    g_env_light.field_0x1308 = kytag17->mParameters;
    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 8046DBE8-8046DC08 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag17_Method */
static actor_method_class l_daKytag17_Method = {
    (process_method_func)daKytag17_Create,
    (process_method_func)daKytag17_Delete,
    (process_method_func)daKytag17_Execute,
    (process_method_func)daKytag17_IsDelete,
    (process_method_func)daKytag17_Draw
};

/* 8046DC08-8046DC38 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG17 */
extern actor_process_profile_definition g_profile_KYTAG17 = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_KYTAG17,           // mProcName
    0,                      // padding
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(kytag17_class),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // mSubMtd
    0x006F,                 // mPriority
    0,                      // padding
    0,                      // padding
    &l_daKytag17_Method,    // mSubMtd
    0x00044000,             // mStatus
    0,                      // mActorType
    0,                      // mCullType
    0,                      // padding
    0                       // padding
};
