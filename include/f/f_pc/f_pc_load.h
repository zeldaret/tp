
#ifndef F_PC_LOAD_H_
#define F_PC_LOAD_H_

#include "global.h"

BOOL fpcLd_Use(s16 procName);
s32 fpcLd_IsLoaded(s16 procName);
void fpcLd_Free(s16 procName);
s32 fpcLd_Load(s16 procName);

#endif
