/**
 * f_pc_manager.cpp
 * Framework - Process Manager
 */

#include "f_pc/f_pc_manager.h"
#include "SSystem/SComponent/c_API_graphic.h"
#include "d/d_error_msg.h"
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

/* 800220A0-800220C0 0020+00 s=1 e=1 z=0  None .text      fpcM_Draw__FPv */
void fpcM_Draw(void* i_proc) {
    fpcDw_Execute((base_process_class*)i_proc);
}

/* 800220C0-800220F8 0038+00 s=1 e=0 z=0  None .text      fpcM_DrawIterater__FPFPvPv_i */
s32 fpcM_DrawIterater(fpcM_DrawIteraterFunc i_drawIterFunc) {
    return fpcLyIt_OnlyHere(fpcLy_RootLayer(), (fpcLyIt_OnlyHereFunc)i_drawIterFunc, NULL);
}

/* 800220F8-80022118 0020+00 s=1 e=0 z=1  None .text      fpcM_Execute__FPv */
s32 fpcM_Execute(void* i_proc) {
    return fpcEx_Execute((base_process_class*)i_proc);
}

/* 80022118-80022138 0020+00 s=0 e=7 z=0  None .text      fpcM_Delete__FPv */
s32 fpcM_Delete(void* i_proc) {
    return fpcDt_Delete((base_process_class*)i_proc);
}

/* 80022138-80022158 0020+00 s=0 e=6 z=43  None .text      fpcM_IsCreating__FUi */
BOOL fpcM_IsCreating(unsigned int pID) {
    return fpcCt_IsCreatingByID(pID);
}

/* 80022158-800222B8 0160+00 s=0 e=1 z=0  None .text      fpcM_Management__FPFv_vPFv_v */
void fpcM_Management(fpcM_ManagementFunc i_mngFunc1, fpcM_ManagementFunc i_mngFunc2) {
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

            if (i_mngFunc1 != NULL) {
                i_mngFunc1();
            }

            fpcEx_Handler((fpcLnIt_QueueFunc)fpcM_Execute);
            fpcDw_Handler((fpcDw_HandlerFuncFunc)fpcM_DrawIterater, (fpcDw_HandlerFunc)fpcM_Draw);

            if (i_mngFunc2 != NULL) {
                i_mngFunc2();
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

/* 800222B8-800222F4 003C+00 s=0 e=1 z=0  None .text      fpcM_Init__Fv */
void fpcM_Init() {
    static layer_class rootlayer;
    static node_list_class queue[10];

    fpcLy_Create(&rootlayer, NULL, queue, 10);
    fpcLn_Create();
}

/* 800222F4-80022348 0054+00 s=0 e=3 z=0  None .text      fpcM_FastCreate__FsPFPv_iPvPv */
base_process_class* fpcM_FastCreate(s16 i_procTypeID, FastCreateReqFunc i_createReqFunc,
                                    void* i_createData, void* i_data) {
    return fpcFCtRq_Request(fpcLy_CurrentLayer(), i_procTypeID, (fstCreateFunc)i_createReqFunc,
                            i_createData, i_data);
}

/* 80022348-8002236C 0024+00 s=0 e=1 z=0  None .text      fpcM_IsPause__FPvUc */
s32 fpcM_IsPause(void* i_proc, u8 i_flag) {
    return fpcPause_IsEnable((base_process_class*)i_proc, i_flag & 0xFF);
}

/* 8002236C-80022390 0024+00 s=0 e=1 z=0  None .text      fpcM_PauseEnable__FPvUc */
void fpcM_PauseEnable(void* i_proc, u8 i_flag) {
    fpcPause_Enable((process_node_class*)i_proc, i_flag & 0xFF);
}

/* 80022390-800223B4 0024+00 s=0 e=1 z=0  None .text      fpcM_PauseDisable__FPvUc */
void fpcM_PauseDisable(void* i_proc, u8 i_flag) {
    fpcPause_Disable((process_node_class*)i_proc, i_flag & 0xFF);
}

/* 800223B4-80022428 0074+00 s=0 e=1 z=0  None .text      fpcM_JudgeInLayer__FUiPFPvPv_PvPv */
void* fpcM_JudgeInLayer(unsigned int i_layerID, fpcCtIt_JudgeFunc i_judgeFunc, void* i_data) {
    layer_class* layer = fpcLy_Layer(i_layerID);
    if (layer != NULL) {
        void* ret = fpcCtIt_JudgeInLayer(i_layerID, i_judgeFunc, i_data);
        if (ret == NULL) {
            ret = fpcLyIt_Judge(layer, i_judgeFunc, i_data);
        }
        return ret;
    } else {
        return NULL;
    }
}
