
#include "f/f_pc/f_pc_load.h"
#include "SComponent/c_phase.h"
#include "dolphin/types.h"

extern "C" {

extern s32 cDyl_IsLinked__Fs(s16 procName);
extern s32 cDyl_Unlink__Fs(s16 procName);
extern s32 cDyl_LinkASync__Fs(s16 procName);
}

BOOL fpcLd_Use(s16 procName) {
    if (fpcLd_IsLoaded(procName) == TRUE && fpcLd_Load(procName) == cPhs_COMPLEATE_e)
        return TRUE;
    return FALSE;
}

s32 fpcLd_IsLoaded(s16 procName) {
    return cDyl_IsLinked__Fs((int)procName);
}

void fpcLd_Free(s16 procName) {
    cDyl_Unlink__Fs((int)procName);
}

s32 fpcLd_Load(s16 procName) {
    s32 phase = cDyl_LinkASync__Fs((int)procName);

    switch (phase) {
    case cPhs_COMPLEATE_e:
        return cPhs_COMPLEATE_e;
    case 0:
        return 0;
    default:
        return cPhs_ERROR_e;
    }
}
