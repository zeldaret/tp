
#ifndef F_PC_PROFILE_H
#define F_PC_PROFILE_H

#include "global.h"
#include "f/f_pc/f_pc_method.h"

struct process_profile_definition {
    s32 unk0;
    u16 unk4;
    u16 unk6;
    s16 mProcName;
    s16 unkA; // probably padding
    process_method_class *mpPcMtd;
    s32 unk10;
    s32 unk14;
    s32 mParameters;
    s32 unk1C;
    u8 unk20[4];
    s32 unk24;
};

extern "C" {

process_profile_definition * fpcPf_Get(s16 profileID);

};

#endif
