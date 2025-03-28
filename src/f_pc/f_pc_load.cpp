/**
 * f_pc_load.cpp
 * Framework - Process Loader
 */

#include "f_pc/f_pc_load.h"
#include "c/c_dylink.h"
#include "SSystem/SComponent/c_phase.h"

/* 80021FB8-80022008 0050+00 s=0 e=1 z=0  None .text      fpcLd_Use__Fs */
BOOL fpcLd_Use(s16 i_procName) {
    if (fpcLd_IsLoaded(i_procName) == TRUE && fpcLd_Load(i_procName) == cPhs_COMPLEATE_e)
        return TRUE;
    return FALSE;
}

/* 80022008-8002202C 0024+00 s=1 e=0 z=0  None .text      fpcLd_IsLoaded__Fs */
BOOL fpcLd_IsLoaded(s16 i_procName) {
    return cDyl_IsLinked((s16)i_procName);
}

/* 8002202C-80022050 0024+00 s=0 e=2 z=0  None .text      fpcLd_Free__Fs */
void fpcLd_Free(s16 i_procName) {
    cDyl_Unlink((s16)i_procName);
}

/* 80022050-800220A0 0050+00 s=1 e=1 z=0  None .text      fpcLd_Load__Fs */
s32 fpcLd_Load(s16 i_procName) {
    switch (cDyl_LinkASync((s16)i_procName)) {
    case cPhs_COMPLEATE_e:
        return cPhs_COMPLEATE_e;
    case cPhs_INIT_e:
        return cPhs_INIT_e;
    default:
        return cPhs_ERROR_e;
    }
}
