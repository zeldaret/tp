
#ifndef F_PC_CREATOR_H
#define F_PC_CREATOR_H

#include "global.h"

struct base_process_class;

extern "C" {

bool fpcCt_IsCreatingByID(unsigned int id);
int fpcCt_IsDoing(base_process_class* pProc);
void fpcCt_Abort(base_process_class* pProc);
void fpcCt_Handler(void);
};

#endif
