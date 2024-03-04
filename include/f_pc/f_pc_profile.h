
#ifndef F_PC_PROFILE_H_
#define F_PC_PROFILE_H_

#include "dolphin/types.h"

typedef struct nodedraw_method_class nodedraw_method_class;
typedef struct leafdraw_method_class leafdraw_method_class;
typedef struct process_method_class process_method_class;

typedef struct process_profile_definition {
    /* 0x00 */ s32 mLayerID;
    /* 0x04 */ u16 mListID;
    /* 0x06 */ u16 mListPrio;
    /* 0x08 */ s16 mProcName;
    /* 0x0C */ process_method_class* sub_method; // Subclass methods
    /* 0x10 */ s32 mSize;
    /* 0x14 */ s32 mSizeOther;
    /* 0x18 */ s32 mParameters;
} process_profile_definition;

#define LAYER_DEFAULT (-2)

struct leaf_process_profile_definition;
process_profile_definition* fpcPf_Get(s16 profileID);
extern process_profile_definition** g_fpcPf_ProfileList_p;

#endif
