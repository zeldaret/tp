/**
 * d_a_tag_escape.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_escape/d_a_tag_escape.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"

/* 80D587D8-80D58828 000078 0050+00 1/0 0/0 0/0 .text            daTagEscape_Create__FP10fopAc_ac_c
 */
static int daTagEscape_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, daTagEscape_c);
    return cPhs_COMPLEATE_e;
}

/* 80D58828-80D58858 0000C8 0030+00 1/0 0/0 0/0 .text daTagEscape_Delete__FP13daTagEscape_c */
static int daTagEscape_Delete(daTagEscape_c* i_this) {
    i_this->~daTagEscape_c();
    return 1;
}

/* ############################################################################################## */
/* 80D58860-80D58880 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagEscape_Method */
static actor_method_class l_daTagEscape_Method = {
    (process_method_func)daTagEscape_Create,
    (process_method_func)daTagEscape_Delete,
    (process_method_func)NULL,
    (process_method_func)NULL,
    (process_method_func)NULL,
};

/* 80D58880-80D588B0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Escape */
extern actor_process_profile_definition g_profile_Tag_Escape = {
    -3,
    07,
    0xFFFD,
    PROC_Tag_Escape,
    &g_fpcLf_Method.mBase,
    sizeof(daTagEscape_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x018D,
    &l_daTagEscape_Method,
    0x00040000,
    0,
    14,
};
