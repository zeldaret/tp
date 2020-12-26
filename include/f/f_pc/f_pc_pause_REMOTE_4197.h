
#ifndef F_PC_PAUSE_H
#define F_PC_PAUSE_H

#include "global.h"

extern "C" {

bool fpcPause_IsEnable(void* pProcess, u8 flag);
int fpcPause_Enable(void* pProcess, u8 flag);
int fpcPause_Disable(void* pProcess, u32 flag);
void fpcPause_Init(void* pProcess);
};

#endif
