#include "f/f_pc/f_pc_manager.h"
#include "SComponent/c_API_graphic.h"
#include "SComponent/c_lib.h"
#include "SComponent/c_tag.h"
#include "Z2AudioLib/Z2SoundMgr/Z2SoundMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_lib/d_lib.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_iter.h"
#include "f/f_pc/f_pc_creator.h"
#include "f/f_pc/f_pc_delete_tag.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_draw.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_fstcreate_req.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_line.h"
#include "f/f_pc/f_pc_line_iter.h"
#include "f/f_pc/f_pc_line_tag.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_node_req.h"
#include "f/f_pc/f_pc_pause.h"
#include "f/f_pc/f_pc_priority.h"
#include "f/f_pc/f_pc_profile.h"
#include "global.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"

extern "C" {
bool execute__14dDvdErrorMsg_cFv(void);
bool execute__19dShutdownErrorMsg_cFv(void);
void peekData__13dDlst_peekZ_cFv(dDlst_peekZ_c*);
}

extern u8 lbl_80450D38;
extern s8 lbl_80450D39;
extern u8 lbl_80450EC4;
extern layer_class lbl_803F4DB0;      // f_pc_manager::rootlayer$3716
extern node_list_class lbl_803F4DDC;  // f_pc_manager::queue$3717'extern u8 lbl_80450B60;
extern JUTGamePad* m_gamePad[4];
extern Z2SoundMgr* lbl_80450B60;  // Z2SoundMgr sInstance

void fpcM_Draw(void* pProc) {
    fpcDw_Execute((base_process_class*)pProc);
}

s32 fpcM_DrawIterater(fpcM_DrawIteraterFunc pFunc) {
    return fpcLyIt_OnlyHere(fpcLy_RootLayer(), (fpcLyIt_OnlyHereFunc)pFunc, NULL);
}

void fpcM_Execute(void* pProc) {
    fpcEx_Execute((base_process_class*)pProc);
}

s32 fpcM_Delete(void* pProc) {
    return fpcDt_Delete((base_process_class*)pProc);
}

BOOL fpcM_IsCreating(unsigned int pID) {
    return fpcCt_IsCreatingByID(pID);
}

void fpcM_Management(fpcM_ManagementFunc pFunc1, fpcM_ManagementFunc pFunc2) {
    MtxInit();
    peekData__13dDlst_peekZ_cFv(&g_dComIfG_gameInfo.getdlstPeekZ());
    if (!execute__19dShutdownErrorMsg_cFv()) {
        if (lbl_80450D39 == 0) {
            lbl_80450D38 = 0;
            lbl_80450D39 = 1;
        }
        if (!execute__14dDvdErrorMsg_cFv()) {
            if (lbl_80450D38 != 0) {
                dLib_time_c::startTime();
                pauseAllGameSound__10Z2SoundMgrFb(lbl_80450B60, false);
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
            if (pFunc1) {
                pFunc1();
            }
            fpcEx_Handler((fpcLnIt_QueueFunc)fpcM_Execute);
            fpcDw_Handler((fpcDw_HandlerFuncFunc)fpcM_DrawIterater, (fpcDw_HandlerFunc)fpcM_Draw);
            if (pFunc2) {
                pFunc2();
            }
            g_dComIfG_gameInfo.getPlay().drawSimpleModel();
        } else if (lbl_80450D38 == 0) {
            dLib_time_c::stopTime();
            pauseAllGameSound__10Z2SoundMgrFb(lbl_80450B60, true);
            m_gamePad[0]->stopPatternedRumble();
            lbl_80450D38 = 1;
        }
    }
}

void fpcM_Init(void) {
    fpcLy_Create(&lbl_803F4DB0, NULL, &lbl_803F4DDC, 10);
    fpcLn_Create();
}

base_process_class* fpcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void* param_3,
                                    void* pData) {
    return fpcFCtRq_Request(fpcLy_CurrentLayer(), pProcTypeID, (fstCreateFunc)param_2, param_3,
                            pData);
}

s32 fpcM_IsPause(void* pProc, u8 param_2) {
    return fpcPause_IsEnable((base_process_class*)pProc, param_2 & 0xFF);
}

void fpcM_PauseEnable(void* pProc, u8 param_2) {
    fpcPause_Enable((process_node_class*)pProc, param_2 & 0xFF);
}

void fpcM_PauseDisable(void* pProc, u8 param_2) {
    fpcPause_Disable((process_node_class*)pProc, param_2 & 0xFF);
}

void* fpcM_JudgeInLayer(unsigned int pLayerID, fpcCtIt_JudgeFunc pFunc, void* pUserData) {
    layer_class* layer = fpcLy_Layer(pLayerID);
    if (layer != NULL) {
        void* ret = fpcCtIt_JudgeInLayer(pLayerID, pFunc, pUserData);
        if (ret == NULL) {
            ret = fpcLyIt_Judge(layer, pFunc, pUserData);
        }
        return ret;
    } else {
        return NULL;
    }
}