
#include "f/f_pc/f_pc_profile.h"

// g_fpcPf_ProfileList_p
extern void ** lbl_80450D50;

extern "C" {

void * fpcPf_Get(s16 profileID)
{
    return lbl_80450D50[profileID];
}

};
