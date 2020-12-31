
#ifndef F_PC_CREATOR_H
#define F_PC_CREATOR_H

#include "global.h"

struct base_process_class;

extern "C" {

BOOL fpcCt_IsCreatingByID(u32 id);
s32 fpcCt_IsDoing(struct base_process_class* pProc);
BOOL fpcCt_Abort(struct base_process_class* pProc);
void fpcCt_Handler(void);
};

#endif
