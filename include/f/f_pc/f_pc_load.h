
#ifndef F_PC_LOAD_H
#define F_PC_LOAD_H

#include "compatibility_c_cpp.h"

BEGIN_C_DECLARATIONS

BOOL fpcLd_Use(u16 procName);
int fpcLd_IsLoaded(u16 procName);
void fpcLd_Free(u16 procName);
int fpcLd_Load(u16 procName);

END_C_DECLARATIONS

#endif
