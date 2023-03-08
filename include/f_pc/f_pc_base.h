
#ifndef F_PC_BASE_H_
#define F_PC_BASE_H_

#include "SSystem/SComponent/c_tag.h"
#include "dolphin/types.h"
// #include "f/f_pc/f_pc_method.h"
#include "f_pc/f_pc_delete_tag.h"
#include "f_pc/f_pc_layer_tag.h"
#include "f_pc/f_pc_line_tag.h"
#include "f_pc/f_pc_priority.h"
#include "f_pc/f_pc_profile.h"

struct create_request;
struct profile_method_class;

typedef struct base_process_class {
    /* 0x00 */ u32 mBsType;
    /* 0x04 */ u32 mBsPcId;
    /* 0x08 */ s16 mProcName;
    /* 0x0A */ s8 mUnk0;
    /* 0x0B */ u8 mPauseFlag;
    /* 0x0C */ s8 mInitState;
    /* 0x0D */ u8 mUnk2;
    /* 0x0E */ s16 mBsTypeId;
    /* 0x10 */ process_profile_definition* mpProf;
    /* 0x14 */ struct create_request* mpCtRq;
    /* 0x18 */ layer_management_tag_class mLyTg;
    /* 0x34 */ line_tag mLnTg;
    /* 0x4C */ delete_tag_class mDtTg;
    /* 0x68 */ process_priority_class mPi;
    /* 0xA8 */ process_method_class* mpPcMtd;
    /* 0xAC */ void* mpUserData;
    /* 0xB0 */ u32 mParameters;
    /* 0xB4 */ u32 mSubType;
} base_process_class;  // Size: 0xB8

s32 fpcBs_Is_JustOfType(int pType1, int pType2);
s32 fpcBs_MakeOfType(int* pType);
s32 fpcBs_MakeOfId(void);
s32 fpcBs_Execute(base_process_class* pProc);
void fpcBs_DeleteAppend(base_process_class* pProc);
s32 fpcBs_IsDelete(base_process_class* pProc);
s32 fpcBs_Delete(base_process_class* pProc);
base_process_class* fpcBs_Create(s16 pProcTypeID, unsigned int pProcID, void* pData);
s32 fpcBs_SubCreate(base_process_class* pProc);

extern "C" {
void fpcBs_MakeOfType__FPi(void);
void fpcBs_Is_JustOfType__Fii(void);
}

#endif
