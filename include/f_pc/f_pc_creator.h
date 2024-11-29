
#ifndef F_PC_CREATOR_H_
#define F_PC_CREATOR_H_

#include "f_pc/f_pc_base.h"

typedef struct base_process_class base_process_class;

BOOL fpcCt_IsCreatingByID(fpc_ProcID id);
BOOL fpcCt_IsDoing(base_process_class* pProc);
BOOL fpcCt_Abort(base_process_class* pProc);
void fpcCt_Handler();

#endif
