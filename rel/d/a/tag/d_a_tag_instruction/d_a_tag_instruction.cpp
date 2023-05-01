/**
 * d_a_tag_instruction.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_instruction/d_a_tag_instruction.h"
#include "d/d_procname.h"

/* 80D59AF8-80D59B48 000078 0050+00 1/0 0/0 0/0 .text            daTagInst_Create__FP10fopAc_ac_c */
static int daTagInst_Create(fopAc_ac_c* i_this) {
    if (!fopAcM_CheckCondition(i_this, 8)) {
        new (i_this) daTagInst_c();
        fopAcM_OnCondition(i_this, 8);
    }

    return cPhs_COMPLEATE_e;
}

/* 80D59B48-80D59B78 0000C8 0030+00 1/0 0/0 0/0 .text            daTagInst_Delete__FP11daTagInst_c
 */
static int daTagInst_Delete(daTagInst_c* i_this) {
    i_this->~daTagInst_c();
    return 1;
}

/* ############################################################################################## */
/* 80D59B80-80D59BA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagInst_Method */
static actor_method_class l_daTagInst_Method = {
    (process_method_func)daTagInst_Create,
    (process_method_func)daTagInst_Delete,
    (process_method_func)NULL,
    (process_method_func)NULL,
    (process_method_func)NULL,
};

/* 80D59BA0-80D59BD0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Instruction */
extern actor_process_profile_definition g_profile_Tag_Instruction = {
    -3,
    7,
    0xFFFD,
    PROC_Tag_Instruction,
    &g_fpcLf_Method.mBase,
    sizeof(daTagInst_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x014E,
    &l_daTagInst_Method,
    0x00040000,
    0,
    14,
};
