/**
 * f_pc_profile.cpp
 * Framework - Process Profile
 */

#include "f_pc/f_pc_profile.h"

/* 80450D50-80450D58 0004+04 s=1 e=0 z=2  None .sbss      g_fpcPf_ProfileList_p */
process_profile_definition** g_fpcPf_ProfileList_p;

/* 80023564-80023578 0014+00 s=0 e=1 z=0  None .text      fpcPf_Get__Fs */
process_profile_definition* fpcPf_Get(s16 i_profname) {
    return g_fpcPf_ProfileList_p[i_profname];
}
