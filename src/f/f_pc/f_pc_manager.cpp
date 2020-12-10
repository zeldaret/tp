#include "global.h"
#include "f/f_pc/f_pc_manager.h"
#include "SComponent/c_tag.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_profile.h"
#include "f/f_pc/f_pc_pause.h"
#include "f/f_pc/f_pc_line.h"
#include "f/f_pc/f_pc_line_iter.h"
#include "f/f_pc/f_pc_line_tag.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_node_req.h"
#include "f/f_pc/f_pc_delete_tag.h"
#include "f/f_pc/f_pc_priority.h"

extern "C" {

extern u8 lbl_80450D38;
extern s8 lbl_80450D39;
extern u8 lbl_80450EC4;
extern layer_class lbl_803F4DB0; // f_pc_manager::rootlayer$3716
extern node_list_class lbl_803F4DDC; // f_pc_manager::queue$3717

extern void fpcDw_Execute(base_process_class *pProc);
extern void fpcDw_Handler(void*, void*);
extern base_process_class *fpcFCtRq_Request(layer_class *pLayer,s16 pProcTypeID, FastCreateReqFunc param_3,void *param_4,void *pData);
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

typedef void (*fpcM_ManagementFunc)(void);
void fpcM_Management(fpcM_ManagementFunc pFunc1, fpcM_ManagementFunc pFunc2) {
    MtxInit();
    dDlst_peekZ_c_NS_peekData(&g_dComIfG_gameInfo.draw_list_list.dlstPeekZ);
    if (!dShutdownErrorMsg_c_NS_execute()) {
        if (lbl_80450D39 == 0) {
            lbl_80450D38 = 0;
            lbl_80450D39 = 1;
        }
        if (!dDvdErrorMsg_c_NS_execute()) {
            if (lbl_80450D38 != 0) {
                dLib_time_c_NS_startTime();
                Z2SoundMgr_NS_pauseAllGameSound(lbl_80450B60, false);
                lbl_80450D38 = 0;
            }
            cAPIGph_Painter();
            if ((lbl_80450EC4 & 1) == 0) {
                fpcDt_Handler();
            } else {
                lbl_80450EC4 &= ~1;
            }
            fpcPi_Handler();
            fpcCt_Handler();
            if (pFunc1 != NULL) {
                pFunc1();
            }
            fpcEx_Handler((cNdIt_MethodFunc)fpcM_Execute);
            fpcDw_Handler(fpcM_DrawIterater, fpcM_Draw);
            if (pFunc2 != NULL) {
                pFunc2();
            }
            dComIfG_play_c_NS_drawSimpleModel(&g_dComIfG_gameInfo.play);
        } else if(lbl_80450D38 == 0) {
            dLib_time_c_NS_stopTime();
            Z2SoundMgr_NS_pauseAllGameSound(lbl_80450B60, true);
            JUTGamePad_NS_CRumble_NS_stopPatternedRumble(&lbl_803DD2D8[0]->rumble, lbl_803DD2D8[0]->pad_port); 
            lbl_80450D38 = 1;
        }
    }
}

void fpcM_Init(void) {
    fpcLy_Create(&lbl_803F4DB0, NULL, &lbl_803F4DDC, 10);
    fpcLn_Create();
}

base_process_class *fpcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void *param_3, void *pData) {
    return fpcFCtRq_Request(fpcLy_CurrentLayer(), pProcTypeID, param_2, param_3, pData);
}

int fpcM_IsPause(void *pProc, u8 param_2) {
    return fpcPause_IsEnable((base_process_class*)pProc, param_2 & 0xFF);
}

void fpcM_PauseEnable(void *pProc, u8 param_2) {
    fpcPause_Enable((process_node_class*)pProc, param_2 & 0xFF);
}

void fpcM_PauseDisable(void *pProc, u8 param_2) {
    fpcPause_Disable((process_node_class*)pProc, param_2 & 0xFF);
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