/**
 * f_pc_manager.cpp
 * Framework - Process Manager
 */

#include "d/d_error_msg.h"
#include "f_pc/f_pc_manager.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_create_iter.h"
#include "f_pc/f_pc_creator.h"
#include "f_pc/f_pc_delete_tag.h"
#include "f_pc/f_pc_deletor.h"
#include "f_pc/f_pc_draw.h"
#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_fstcreate_req.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_layer_iter.h"
#include "f_pc/f_pc_layer_tag.h"
#include "f_pc/f_pc_line.h"
#include "f_pc/f_pc_line_iter.h"
#include "f_pc/f_pc_line_tag.h"
#include "f_pc/f_pc_method.h"
#include "f_pc/f_pc_node_req.h"
#include "f_pc/f_pc_pause.h"
#include "f_pc/f_pc_priority.h"
#include "f_pc/f_pc_profile.h"
#include "SSystem/SComponent/c_API_graphic.h"

/* 800220A0-800220C0 0020+00 s=1 e=1 z=0  None .text      fpcM_Draw__FPv */
void fpcM_Draw(void* pProc) {
    fpcDw_Execute((base_process_class*)pProc);
}

/* 800220C0-800220F8 0038+00 s=1 e=0 z=0  None .text      fpcM_DrawIterater__FPFPvPv_i */
s32 fpcM_DrawIterater(fpcM_DrawIteraterFunc pFunc) {
    return fpcLyIt_OnlyHere(fpcLy_RootLayer(), (fpcLyIt_OnlyHereFunc)pFunc, NULL);
}

/* 800220F8-80022118 0020+00 s=1 e=0 z=1  None .text      fpcM_Execute__FPv */
s32 fpcM_Execute(void* pProc) {
    return fpcEx_Execute((base_process_class*)pProc);
}

/* 80022118-80022138 0020+00 s=0 e=7 z=0  None .text      fpcM_Delete__FPv */
s32 fpcM_Delete(void* pProc) {
    return fpcDt_Delete((base_process_class*)pProc);
}

/* 80022138-80022158 0020+00 s=0 e=6 z=43  None .text      fpcM_IsCreating__FUi */
BOOL fpcM_IsCreating(unsigned int pID) {
    return fpcCt_IsCreatingByID(pID);
}

/* 80022158-800222B8 0160+00 s=0 e=1 z=0  None .text      fpcM_Management__FPFv_vPFv_v */
void fpcM_Management(fpcM_ManagementFunc func1, fpcM_ManagementFunc func2) {
    MtxInit();
    dComIfGd_peekZdata();

    if (!dShutdownErrorMsg_c::execute()) {
        static bool l_dvdError = false;

        if (!dDvdErrorMsg_c::execute()) {
            if (l_dvdError) {
                dLib_time_c::startTime();
                Z2GetSoundMgr()->pauseAllGameSound(false);
                l_dvdError = false;
            }

            cAPIGph_Painter();

            if (!dPa_control_c::isStatus(1)) {
                fpcDt_Handler();
            } else {
                dPa_control_c::offStatus(1);
            }

            fpcPi_Handler();
            fpcCt_Handler();

            if (func1 != NULL) {
                func1();
            }

            fpcEx_Handler((fpcLnIt_QueueFunc)fpcM_Execute);
            fpcDw_Handler((fpcDw_HandlerFuncFunc)fpcM_DrawIterater, (fpcDw_HandlerFunc)fpcM_Draw);

            if (func2 != NULL) {
                func2();
            }

            dComIfGp_drawSimpleModel();
        } else if (!l_dvdError) {
            dLib_time_c::stopTime();
            Z2GetSoundMgr()->pauseAllGameSound(true);
            mDoCPd_c::stopMotorWaveHard(0);
            l_dvdError = true;
        }
    }
}

/* ############################################################################################## */
/* 803F4DB0-803F4DDC 002C+00 s=1 e=0 z=0  None .bss       rootlayer$3716 */
static layer_class rootlayer;

/* 803F4DDC-803F4E58 0078+04 s=1 e=0 z=0  None .bss       queue$3717 */
static node_list_class queue[10];

/* 800222B8-800222F4 003C+00 s=0 e=1 z=0  None .text      fpcM_Init__Fv */
void fpcM_Init(void) {
    fpcLy_Create(&rootlayer, NULL, queue, 10);
    fpcLn_Create();
}

/* 800222F4-80022348 0054+00 s=0 e=3 z=0  None .text      fpcM_FastCreate__FsPFPv_iPvPv */
base_process_class* fpcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void* param_3,
                                    void* pData) {
    return fpcFCtRq_Request(fpcLy_CurrentLayer(), pProcTypeID, (fstCreateFunc)param_2, param_3,
                            pData);
}

/* 80022348-8002236C 0024+00 s=0 e=1 z=0  None .text      fpcM_IsPause__FPvUc */
s32 fpcM_IsPause(void* pProc, u8 param_2) {
    return fpcPause_IsEnable((base_process_class*)pProc, param_2 & 0xFF);
}

/* 8002236C-80022390 0024+00 s=0 e=1 z=0  None .text      fpcM_PauseEnable__FPvUc */
void fpcM_PauseEnable(void* pProc, u8 param_2) {
    fpcPause_Enable((process_node_class*)pProc, param_2 & 0xFF);
}

/* 80022390-800223B4 0024+00 s=0 e=1 z=0  None .text      fpcM_PauseDisable__FPvUc */
void fpcM_PauseDisable(void* pProc, u8 param_2) {
    fpcPause_Disable((process_node_class*)pProc, param_2 & 0xFF);
}

/* 800223B4-80022428 0074+00 s=0 e=1 z=0  None .text      fpcM_JudgeInLayer__FUiPFPvPv_PvPv */
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
