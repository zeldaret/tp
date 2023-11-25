#ifndef OSEXEC_H
#define OSEXEC_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    /* 0x00 */ BOOL valid;
    /* 0x04 */ u32 restartCode;
    /* 0x08 */ u32 bootDol;
    /* 0x0C */ void* regionStart;
    /* 0x10 */ void* regionEnd;
    /* 0x18 */ BOOL argsUseDefault;
    /* 0x14 */ void* argsAddr;  // valid only when argsUseDefault = FALSE
} OSExecParams;

static s32 PackArgs(void* param_0, u32 param_1, void* param_2);
static void Run(int param_0);
static void ReadDisc(void* param_0, s32 param_1, s32 param_2);
static void Callback(void);
void __OSGetExecParams(OSExecParams* param_0);
void __OSBootDolSimple(u32 param_0, u32 param_1, void* param_2, void* param_3, s32 param_4, u32 param_5, void* param_6);
void __OSBootDol(s32 param_0, u32 param_1, char** param_2);

#ifdef __cplusplus
};
#endif

#endif /* OSEXEC_H */
