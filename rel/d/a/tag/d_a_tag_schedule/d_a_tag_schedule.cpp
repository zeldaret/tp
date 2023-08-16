/**
 * d_a_tag_schedule.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_schedule/d_a_tag_schedule.h"
#include "d/d_procname.h"

/* 80D60098-80D600E8 000078 0050+00 1/0 0/0 0/0 .text daTagSchedule_Create__FP10fopAc_ac_c */
static int daTagSchedule_Create(fopAc_ac_c* i_this) {
    daTagSchedule_c* schedule_tag = (daTagSchedule_c*)i_this;
    return schedule_tag->create();
}

/* 80D600E8-80D60118 0000C8 0030+00 1/0 0/0 0/0 .text daTagSchedule_Delete__FP15daTagSchedule_c */
static int daTagSchedule_Delete(daTagSchedule_c* i_this) {
    i_this->~daTagSchedule_c();
    return 1;
}

/* ############################################################################################## */
/* 80D60120-80D60140 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagSchedule_Method */
static actor_method_class l_daTagSchedule_Method = {
    (process_method_func)daTagSchedule_Create,
    (process_method_func)daTagSchedule_Delete
};

/* 80D60140-80D60170 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Schedule */
extern actor_process_profile_definition g_profile_Tag_Schedule = {
    0xFFFFFFFD,                 // mLayerID
    0x0007,                     // mListID
    0xFFFD,                     // mListPrio
    PROC_Tag_Schedule,          // mProcName
    &g_fpcLf_Method.mBase,      // mSubMtd
    sizeof(daTagSchedule_c),    // mSize
    0,                          // mSizeOther
    0,                          // mParameters
    &g_fopAc_Method.base,       // mSubMtd
    0x018C,                     // mPriority
    &l_daTagSchedule_Method,    // mSubMtd
    0x00040000,                 // mStatus
    0x00,                       // mActorType
    0x0E,                       // mCullType
};
