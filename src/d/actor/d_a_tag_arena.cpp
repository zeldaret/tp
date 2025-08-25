/**
 * d_a_tag_arena.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_arena.h"

/* 80D55CD8-80D55D28 000078 0050+00 1/0 0/0 0/0 .text            daTagArena_Create__FP10fopAc_ac_c
 */
static int daTagArena_Create(fopAc_ac_c* i_this) {
    daTagArena_c* arena_tag = (daTagArena_c*)i_this;
    return arena_tag->create();
}

/* 80D55D28-80D55D58 0000C8 0030+00 1/0 0/0 0/0 .text            daTagArena_Delete__FP12daTagArena_c
 */
static int daTagArena_Delete(daTagArena_c* i_this) {
    i_this->~daTagArena_c();
    return 1;
}

/* ############################################################################################## */
/* 80D55D60-80D55D80 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagArena_Method */
static actor_method_class l_daTagArena_Method = {
    (process_method_func)daTagArena_Create,
    (process_method_func)daTagArena_Delete,
};

/* 80D55D80-80D55DB0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Arena */
extern actor_process_profile_definition g_profile_Tag_Arena = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Tag_Arena,         // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daTagArena_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    333,                    // mPriority
    &l_daTagArena_Method,   // sub_method
    0x40000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
