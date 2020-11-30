
#include "SComponent/c_phase.h"
#include "f/f_pc/f_pc_load.h"

extern "C" {

extern int cDyl_IsLinked(short procName);
extern int cDyl_Unlink(short procName);
extern int cDyl_LinkASync(short procName);

bool fpcLd_Use(u16 procName)
{
    if (fpcLd_IsLoaded(procName) == true && fpcLd_Load(procName) == cPhs_COMPLEATE_e)
        return true;
    return false;
}

int fpcLd_IsLoaded(u16 procName)
{
    return cDyl_IsLinked(procName);
}

void fpcLd_Free(u16 procName)
{
    cDyl_Unlink(procName);
}

int fpcLd_Load(u16 procName)
{
    int phase = cDyl_LinkASync(procName);

    switch (phase) {
    case cPhs_COMPLEATE_e:
        return cPhs_COMPLEATE_e;
    case 0:
        return 0;
    default:
        return cPhs_ERROR_e;
    }
}

};
