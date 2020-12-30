
#ifndef F_PC_BASE_H
#define F_PC_BASE_H

#include "global.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_line_tag.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_delete_tag.h"
#include "f/f_pc/f_pc_priority.h"

struct create_request;
struct profile_method_class;

struct base_process_class {
    u32 mBsType;
    u32 mBsPcId;
    s16 mProcName;
    u8 mUnk0;
    u8 mPauseFlag;
    s8 mInitState;
    u8 mUnk2;
    s16 mBsTypeId;
    void *mpProf;
    create_request *mpCtRq;
    layer_management_tag_class mLyTg;
    line_tag mLnTg;
    delete_tag_class mDtTg;
    process_priority_class mPi;
    profile_method_class *mpPcMtd;
    void *mpUserData;
    u32 mParameters;
    u32 mSubType;
};

extern "C" {

int fpcBs_Is_JustOfType(int a, int b);
int fpcBs_Execute(base_process_class *pProc);

};

#endif
