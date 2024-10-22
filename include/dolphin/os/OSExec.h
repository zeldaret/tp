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

typedef int (*appGetNextCallback)(void*, u32*, u32*);
typedef void (*appInitCallback)(void (*)(char*));
typedef void* (*appGetEntryCallback)();
typedef void (*AppLoaderCallback)(appInitCallback*, appGetNextCallback*, appGetEntryCallback*);

void __OSGetExecParams(OSExecParams* param_0);
void __OSBootDolSimple(u32 doloffset, u32 restartCode, void* regionStart, void* regionEnd, BOOL argsUseDefault, s32 argc, char** argv);
void __OSBootDol(u32 doloffset, u32 restartCode, const char** argv);

#ifdef __cplusplus
};
#endif

#endif /* OSEXEC_H */
