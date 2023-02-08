
#ifndef F_PC_PROFILE_H_
#define F_PC_PROFILE_H_

#include "dolphin/types.h"
#include "f_pc/f_pc_method.h"

struct nodedraw_method_class;
struct leafdraw_method_class;

typedef struct process_profile_definition {
    /* 0x00 */ s32 mLayerID;
    /* 0x04 */ u16 mListID;
    /* 0x06 */ u16 mListPrio;
    /* 0x08 */ s16 mProcName;
    /* 0x0A */ s16 unkA;  // probably padding
    /* 0x0C */ process_method_class* mSubMtd; // Subclass methods
    /* 0x10 */ s32 mSize;
    /* 0x14 */ s32 mSizeOther;
    /* 0x18 */ s32 mParameters;
} process_profile_definition;

#define LAYER_DEFAULT (-2)

struct leaf_process_profile_definition;
process_profile_definition* fpcPf_Get(s16 profileID);
extern process_profile_definition** g_fpcPf_ProfileList_p;

#endif
