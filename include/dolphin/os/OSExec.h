#ifndef OSEXEC_H
#define OSEXEC_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

static s32 PackArgs(void* param_0, u32 param_1, void* param_2);
static void Run(void);
static void ReadDisc(void* param_0, s32 param_1, s32 param_2);
static void Callback(void);
void __OSGetExecParams(void* param_0);
static void GetApploaderPosition(void);
void __OSBootDolSimple(u32 param_0, u32 param_1, void* param_2, void* param_3, s32 param_4, u32 param_5, void* param_6);
void __OSBootDol(s32 param_0, u32 param_1, s32 param_2);

#ifdef __cplusplus
};
#endif

#endif /* OSEXEC_H */
