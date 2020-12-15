
#ifndef F_PC_PROFILE_H
#define F_PC_PROFILE_H

#include "global.h"
#include "f/f_pc/f_pc_method.h"

struct nodedraw_method_class;

struct process_profile_definition {
    s32 mLayerID;
    u16 mListID;
    u16 mListPrio;
    s16 mProcName;
    s16 unkA; // probably padding
    process_method_class *mpPcMtd;
    s32 mSize;
    s32 mSizeOther;
    s32 mParameters;
};

extern "C" {

process_profile_definition * fpcPf_Get(s16 profileID);

};

#endif
