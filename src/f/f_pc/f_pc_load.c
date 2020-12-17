
#include "dolphin/types.h"
#include "SComponent/c_phase.h"
#include "f/f_pc/f_pc_load.h"

extern s32 cDyl_IsLinked(s16 procName);
extern s32 cDyl_Unlink(s16 procName);
extern s32 cDyl_LinkASync(s16 procName);

BOOL fpcLd_Use(u16 procName)
{
    if (fpcLd_IsLoaded(procName) == TRUE && fpcLd_Load(procName) == cPhs_COMPLEATE_e)
        return TRUE;
    return FALSE;
}

s32 fpcLd_IsLoaded(u16 procName)
{
    return cDyl_IsLinked(procName);
}

void fpcLd_Free(u16 procName)
{
    cDyl_Unlink(procName);
}

s32 fpcLd_Load(u16 procName)
{
    s32 phase = cDyl_LinkASync(procName);

    switch (phase) {
    case cPhs_COMPLEATE_e:
        return cPhs_COMPLEATE_e;
    case 0:
        return 0;
    default:
        return cPhs_ERROR_e;
    }
}
