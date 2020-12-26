#ifndef F_PC_PAUSE
#define F_PC_PAUSE

#include "global.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_node.h"

extern "C" {

<<<<<<< HEAD
s32 fpcPause_IsEnable(void *pProc, u8 expected);
s32 fpcPause_Enable(void *pProc, u8 pauseMask);
s32 fpcPause_Disable(void *pProc, u32 pauseMask);
void fpcPause_Init(void *pProc);

}
=======
bool fpcPause_IsEnable(void* pProcess, u8 flag);
int fpcPause_Enable(void* pProcess, u8 flag);
int fpcPause_Disable(void* pProcess, u32 flag);
void fpcPause_Init(void* pProcess);
};
>>>>>>> origin/master

#endif
