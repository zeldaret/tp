#ifndef F_PC_MANAGER_H
#define F_PC_MANAGER_H

#include "global.h"
#include "SComponent/c_tag.h"
#include "SComponent/c_node_iter.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_node_req.h"

extern "C" {

typedef int (*FastCreateReqFunc)(void *);

void fpcM_Draw(void* pProc);
int fpcM_DrawIterater(cNdIt_MethodFunc pFunc);
void fpcM_Execute(void* pProc);
void fpcM_Delete(void* pProc);
bool fpcM_IsCreating(u32 pID);
// void fpcM_Management(unk_func pFunc1, unk_func pFunc2);
void fpcM_Init(void);
base_process_class *fpcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void *param_3, void *pData);
int fpcM_IsPause(void *pProc, u8 param_2);
void fpcM_PauseEnable(void *pProc, u8 param_2);
void fpcM_PauseDisable(void *pProc, u8 param_2);
void *fpcM_JudgeInLayer(u32 pLayerID, cNdIt_MethodFunc pFunc, void *pUserData);

}

#endif