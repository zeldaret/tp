
#include "f/f_pc/f_pc_profile.h"

// g_fpcPf_ProfileList_p
extern process_profile_definition ** lbl_80450D50;

extern "C" {

process_profile_definition * fpcPf_Get(s16 profileID)
{
    return lbl_80450D50[profileID];
}

};
