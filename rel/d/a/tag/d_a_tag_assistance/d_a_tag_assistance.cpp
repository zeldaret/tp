/**
 * d_a_tag_assistance.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_assistance/d_a_tag_assistance.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "d/d_procname.h"

/* 80D55E38-80D55E98 000078 0060+00 1/0 0/0 0/0 .text            daTagAssist_Create__FP10fopAc_ac_c
 */
static int daTagAssist_Create(fopAc_ac_c* i_this) {
    daTagAssist_c* tag_assist = (daTagAssist_c*)i_this;
    return tag_assist->create();
}

/* 80D55E98-80D55EC8 0000D8 0030+00 1/0 0/0 0/0 .text daTagAssist_Execute__FP13daTagAssist_c */
static int daTagAssist_Execute(daTagAssist_c* i_this) {
    return i_this->execute();
}

/* 80D55EC8-80D55ED0 000108 0008+00 1/0 0/0 0/0 .text daTagAssist_IsDelete__FP13daTagAssist_c */
static int daTagAssist_IsDelete(daTagAssist_c* i_this) {
    return 1;
}

/* 80D55ED0-80D55F00 000110 0030+00 1/0 0/0 0/0 .text daTagAssist_Delete__FP13daTagAssist_c */
static int daTagAssist_Delete(daTagAssist_c* i_this) {
    i_this->~daTagAssist_c();
    return 1;
}

/* ############################################################################################## */
/* 80D55F08-80D55F28 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagAssist_Method */
static actor_method_class l_daTagAssist_Method = {
    (process_method_func)daTagAssist_Create,
    (process_method_func)daTagAssist_Delete,
    (process_method_func)daTagAssist_Execute,
    (process_method_func)daTagAssist_IsDelete
};

/* 80D55F28-80D55F58 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Assist */
extern actor_process_profile_definition g_profile_Tag_Assist = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_Tag_Assist,        // mProcName
    0,                      // padding
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(daTagAssist_c),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters    
    &g_fopAc_Method.base,   // mSubMtd
    0x010A,                 // mPriority
    0,                      // padding
    0,                      // padding
    &l_daTagAssist_Method,  // mSubMtd
    0x00040000,             // mStatus
    0x00,                   // mActorType
    0x0E,                   // mCullType
    0,                      // padding
    0,                      // padding
};
