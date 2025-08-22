/**
 * d_a_tag_theB_hint.cpp
 * Tag - Telma B Hint
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_theB_hint.h"

/* 80D63CD8-80D63D4C 000078 0074+00 1/0 0/0 0/0 .text daTagTheBHint_Create__FP10fopAc_ac_c */
static int daTagTheBHint_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagTheBHint_c*>(i_this)->create();
}

/* 80D63D4C-80D63D7C 0000EC 0030+00 1/0 0/0 0/0 .text daTagTheBHint_Delete__FP15daTagTheBHint_c */
static int daTagTheBHint_Delete(daTagTheBHint_c* i_this) {
    i_this->~daTagTheBHint_c();
    return 1;
}

/* 80D63D7C-80D63E4C 00011C 00D0+00 1/0 0/0 0/0 .text daTagTheBHint_Execute__FP15daTagTheBHint_c
 */
static int daTagTheBHint_Execute(daTagTheBHint_c* i_this) {
    return i_this->execute();
}

/* ############################################################################################## */
/* 80D63E64-80D63E84 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagTheBHint_Method */
static actor_method_class l_daTagTheBHint_Method = {
    (process_method_func)daTagTheBHint_Create,
    (process_method_func)daTagTheBHint_Delete,
    (process_method_func)daTagTheBHint_Execute
};

/* 80D63E84-80D63EB4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_TheBHint */
extern actor_process_profile_definition g_profile_Tag_TheBHint = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_Tag_TheBHint,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daTagTheBHint_c),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    265,                      // mPriority
    &l_daTagTheBHint_Method,  // sub_method
    0x40000,                  // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
