
#ifndef F_PC_CREATOR_H_
#define F_PC_CREATOR_H_

#include "dolphin/types.h"

typedef struct base_process_class base_process_class;

BOOL fpcCt_IsCreatingByID(unsigned int id);
s32 fpcCt_IsDoing(base_process_class* pProc);
BOOL fpcCt_Abort(base_process_class* pProc);
void fpcCt_Handler(void);

#endif
