/**
 * d_a_tag_gra.cpp
 * Tag - Goron A
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_gra.h"

/* 80D59658-80D596E8 000078 0090+00 1/0 0/0 0/0 .text            daTagGra_Create__FP10fopAc_ac_c */
static int daTagGra_Create(fopAc_ac_c* i_this) {
    daTagGra_c* gra_tag = (daTagGra_c*)i_this;
    return gra_tag->create();
}

/* 80D596E8-80D59718 000108 0030+00 1/0 0/0 0/0 .text            daTagGra_Delete__FP10daTagGra_c */
static int daTagGra_Delete(daTagGra_c* i_this) {
    i_this->~daTagGra_c();
    return 1;
}

/* ############################################################################################## */
/* 80D59720-80D59740 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagGra_Method */
static actor_method_class l_daTagGra_Method = {
    (process_method_func)daTagGra_Create,
    (process_method_func)daTagGra_Delete
};

/* 80D59740-80D59770 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_GRA */
extern actor_process_profile_definition g_profile_TAG_GRA = {
    fpcLy_CURRENT_e,        // mLayerID
    3,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_TAG_GRA,           // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daTagGra_c),     // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    20,                     // mPriority
    &l_daTagGra_Method,     // sub_method
    0x40000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
