/**
 * f_pc_executor.cpp
 * Framework - Process Executor
 */

#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_node.h"
#include "f_pc/f_pc_pause.h"
#include "f_pc/f_pc_searcher.h"
#include "f_pc/f_pc_debug_sv.h"

/* 80021338-80021358 0020+00 s=1 e=9 z=291  None .text      fpcEx_Search__FPFPvPv_PvPv */
base_process_class* fpcEx_Search(fpcLyIt_JudgeFunc i_judgeFunc, void* i_data) {
    return (base_process_class*)fpcLyIt_AllJudge(i_judgeFunc, i_data);
}

/* 80021358-8002139C 0044+00 s=1 e=5 z=30  None .text      fpcEx_SearchByID__FUi */
base_process_class* fpcEx_SearchByID(fpc_ProcID i_id) {
    if (i_id + 2 <= 1)
        return NULL;

    return fpcEx_Search(fpcSch_JudgeByID, &i_id);
}

/* 8002139C-800213C4 0028+00 s=0 e=7 z=42  None .text      fpcEx_IsExist__FUi */
BOOL fpcEx_IsExist(fpc_ProcID i_id) {
    if (fpcEx_SearchByID(i_id) != NULL) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 800213C4-80021418 0054+00 s=0 e=1 z=0  None .text      fpcEx_Execute__FP18base_process_class */
s32 fpcEx_Execute(base_process_class* i_proc) {
    if (i_proc->init_state != 2 || fpcPause_IsEnable(i_proc, 1) == TRUE)
        return 0;

    return fpcBs_Execute(i_proc);
}

/* 80021418-800214C4 00AC+00 s=1 e=0 z=0  None .text      fpcEx_ToLineQ__FP18base_process_class */
s32 fpcEx_ToLineQ(base_process_class* i_proc) {
    base_process_class* process = &i_proc->layer_tag.layer->process_node->base;

    if (i_proc->layer_tag.layer->layer_id == fpcLy_ROOT_e || cTg_IsUse(&process->line_tag_.base) == TRUE) {
        int var_r28 = i_proc->priority.current_info.list_id;
        if (fpcLnTg_ToQueue(&i_proc->line_tag_, var_r28) == 0) {
            fpcLyTg_QueueTo(&i_proc->layer_tag);
            return 0;
        }

#ifdef DEBUG
        if (g_fpcDbSv_service[1] != NULL) {
            g_fpcDbSv_service[1](i_proc);
        }
#endif

        i_proc->init_state = 2;
        if (fpcBs_Is_JustOfType(g_fpcNd_type, i_proc->subtype)) {
            fpcLyIt_OnlyHere(&((process_node_class*)i_proc)->layer, (fpcLyIt_OnlyHereFunc)fpcEx_ToLineQ, i_proc);
        }

        return 1;
    }

    return 0;
}

/* 800214C4-80021510 004C+00 s=0 e=1 z=0  None .text      fpcEx_ExecuteQTo__FP18base_process_class
 */
s32 fpcEx_ExecuteQTo(base_process_class* i_proc) {
    if (fpcLyTg_QueueTo(&i_proc->layer_tag) == 1) {
        i_proc->init_state = 3;
        return 1;
    }
    
    return 0;
}

/* 80021510-80021568 0058+00 s=0 e=1 z=0  None .text      fpcEx_ToExecuteQ__FP18base_process_class
 */
s32 fpcEx_ToExecuteQ(base_process_class* i_proc) {
    process_priority_class* priority = &i_proc->priority;
    if (fpcLyTg_ToQueue(&i_proc->layer_tag, priority->current_info.layer_id, priority->current_info.list_id, priority->current_info.list_priority) == 1) {
        fpcEx_ToLineQ(i_proc);
        return 1;
    }
    
    return 0;
}

/* 80021568-80021588 0020+00 s=0 e=1 z=0  None .text      fpcEx_Handler__FPFPvPv_i */
void fpcEx_Handler(fpcLnIt_QueueFunc i_queueFunc) {
    fpcLnIt_Queue(i_queueFunc);
}
