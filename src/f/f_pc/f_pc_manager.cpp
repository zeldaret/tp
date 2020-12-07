#include "global.h"
#include "SComponent/c_tag.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_profile.h"
#include "f/f_pc/f_pc_line.h"
#include "f/f_pc/f_pc_line_iter.h"
#include "f/f_pc/f_pc_line_tag.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_delete_tag.h"
#include "f/f_pc/f_pc_priority.h"

extern "C" {

extern u8 lbl_80450D38;
extern s32 lbl_80450D39;
extern s32 lbl_80450EC4;
extern layer_class lbl_803F4DB0; // f_pc_manager::rootlayer$3716
extern node_list_class lbl_803F4DDC; // f_pc_manager::queue$3717

extern void fpcDw_Execute(base_process_class *pProc);
extern void fpcDw_Handler(void);
typedef int (*FastCreateReqFunc)(void *);
extern base_process_class *fpcFCtRq_Request(layer_class *pLayer,s16 pProcTypeID, FastCreateReqFunc param_3,void *param_4,void *pData);
extern int fpcPause_IsEnable(base_process_class *pProc, int);
extern void fpcPause_Enable(base_process_class *pProc, int);
extern void fpcPause_Disable(base_process_class *pProc, int);
extern void *fpcCtIt_JudgeInLayer(u32 pLayerID, cNdIt_MethodFunc pFunc, void *pUserData);

void fpcM_Draw(void* pProc) {
    fpcDw_Execute((base_process_class *) pProc);
}

int fpcM_DrawIterater(cNdIt_MethodFunc pFunc) {
    return fpcLyIt_OnlyHere(fpcLy_RootLayer(), pFunc, NULL);
}

void fpcM_Execute(void* pProc) {
    fpcEx_Execute((base_process_class *) pProc);
}

void fpcM_Delete(void* pProc) {
    fpcDt_Delete((base_process_class *) pProc);
}

bool fpcM_IsCreating(u32 pID) {
    return fpcCt_IsCreatingByID(pID);
}

#ifdef NON_MATCHING
void fpcM_Management(unk_func pFunc1, unk_func pFunc2) {

}
#else
asm void fpcM_Management(void) {
nofralloc
#include "asm/80022158.s"
}
#endif

void fpcM_Init(void) {
    fpcLy_Create(&lbl_803F4DB0, NULL, &lbl_803F4DDC, 10);
    fpcLn_Create();
}

base_process_class *fpcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void *param_3, void *pData) {
    return fpcFCtRq_Request(fpcLy_CurrentLayer(), pProcTypeID, param_2, param_3, pData);
}

int fpcM_IsPause(base_process_class *pProc, u8 param_2) {
    return fpcPause_IsEnable(pProc, param_2);
}

void fpcM_PauseEnable(base_process_class *pProc, u8 param_2) {
    fpcPause_Enable(pProc, param_2);
}

void fpcM_PauseDisable(base_process_class *pProc, u8 param_2) {
    fpcPause_Disable(pProc, param_2);
}

void *fpcM_JudgeInLayer(u32 pLayerID, cNdIt_MethodFunc pFunc, void *pUserData) {
    layer_class* layer = fpcLy_Layer(pLayerID);
    if (layer != NULL) {
        void *ret = fpcCtIt_JudgeInLayer(pLayerID, pFunc, pUserData);
        if (ret == NULL) {
            ret = fpcLyIt_Judge(layer, pFunc, pUserData);
        }
        return ret;
    } else {
        return NULL;
    }
}

}