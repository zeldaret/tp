
#ifndef F_PC_CREATOR_H_
#define F_PC_CREATOR_H_

#include "global.h"

struct base_process_class;

BOOL fpcCt_IsCreatingByID(unsigned int id);
s32 fpcCt_IsDoing(struct base_process_class* pProc);
BOOL fpcCt_Abort(struct base_process_class* pProc);
void fpcCt_Handler(void);

#endif
