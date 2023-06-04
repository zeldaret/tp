/**
 * d_a_kytag05.cpp
 *
 */

#include "rel/d/a/kytag/d_a_kytag05/d_a_kytag05.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"
#include "f_op/f_op_actor_mng.h"

/* 80528A58-80528A60 000078 0008+00 1/0 0/0 0/0 .text            daKytag05_Draw__FP13kytag05_class
 */
static int daKytag05_Draw(kytag05_class* i_this) {
    return 1;
}

/* 80528A60-80528A68 000080 0008+00 1/0 0/0 0/0 .text daKytag05_Execute__FP13kytag05_class */
static int daKytag05_Execute(kytag05_class* i_this) {
    return 1;
}

/* 80528A68-80528A70 000088 0008+00 1/0 0/0 0/0 .text daKytag05_IsDelete__FP13kytag05_class */
static int daKytag05_IsDelete(kytag05_class* i_this) {
    return 1;
}

/* 80528A70-80528A78 000090 0008+00 1/0 0/0 0/0 .text            daKytag05_Delete__FP13kytag05_class
 */
static int daKytag05_Delete(kytag05_class* i_this) {
    return 1;
}

/* 80528A78-80528B10 000098 0098+00 1/0 0/0 0/0 .text            daKytag05_Create__FP10fopAc_ac_c */
static int daKytag05_Create(fopAc_ac_c* i_this) {
    if (!fopAcM_CheckCondition(i_this, 8)) {
        new (i_this) kytag05_class();
        fopAcM_OnCondition(i_this, 8);
    }
    kytag05_class* tag = static_cast<kytag05_class*>(i_this);

    tag->field_0x56c = fopAcM_GetParam(tag) >> 8;
    tag->mSceneListID = fopAcM_GetParam(tag);
    tag->field_0x568 = 100.0f * tag->mScale.x;

    if (!tag->field_0x56c) {
        tag->mAttentionInfo.field_0x4[3] = 0x21;
        tag->mAttentionInfo.setFlag(0x80);
    }
    return 4;
}

/* ############################################################################################## */
/* 80528B1C-80528B3C -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag05_Method */
static actor_method_class l_daKytag05_Method = {
    (process_method_func)daKytag05_Create,  (process_method_func)daKytag05_Delete,
    (process_method_func)daKytag05_Execute, (process_method_func)daKytag05_IsDelete,
    (process_method_func)daKytag05_Draw,
};

/* 80528B3C-80528B6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG05 */
extern actor_process_profile_definition g_profile_KYTAG05 = {
    -3,
    7,
    0xFFFD,
    PROC_KYTAG05,
    &g_fpcLf_Method.mBase,
    sizeof(kytag05_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x0063,
    &l_daKytag05_Method,
    0x00044000,
    0,
    0,
};
