/**
 * d_a_tag_instruction.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_instruction.h"
#include "d/d_procname.h"

/* 80D59AF8-80D59B48 000078 0050+00 1/0 0/0 0/0 .text            daTagInst_Create__FP10fopAc_ac_c */
static int daTagInst_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, daTagInst_c);
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
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_Instruction,
    &g_fpcLf_Method.base,
    sizeof(daTagInst_c),
    0,
    0,
    &g_fopAc_Method.base,
    334,
    &l_daTagInst_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
