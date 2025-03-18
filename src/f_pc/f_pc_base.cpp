/**
 * f_pc_base.cpp
 * Framework - Process Base
 */

#include "f_pc/f_pc_base.h"
#include "SSystem/SComponent/c_malloc.h"
#include "SSystem/SComponent/c_phase.h"
#include "SSystem/SStandard/s_basic.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_method.h"
#include "f_pc/f_pc_pause.h"
#include "f_pc/f_pc_profile.h"
#include "f_pc/f_pc_debug_sv.h"

#if VERSION == VERSION_SHIELD_DEBUG
#include "Z2AudioLib/Z2AudioMgr.h"
#endif

/* 8002064C-8002065C 0010+00 s=0 e=14 z=0  None .text      fpcBs_Is_JustOfType__Fii */
BOOL fpcBs_Is_JustOfType(int i_typeA, int i_typeB) {
    if (i_typeB == i_typeA) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 80450D00-80450D04 0004+00 s=1 e=0 z=0  None .sbss      g_fpcBs_type */
int g_fpcBs_type;

/* 8002065C-8002069C 0040+00 s=1 e=5 z=0  None .text      fpcBs_MakeOfType__FPi */
int fpcBs_MakeOfType(int* i_type) {
    static int t_type = 0x9130000;
    if (*i_type == 0) {
        *i_type = ++t_type;
    }
    return *i_type;
}

/* 8002069C-800206C4 0028+00 s=0 e=2 z=0  None .text      fpcBs_MakeOfId__Fv */
int fpcBs_MakeOfId() {
    static int process_id = 1;
    return process_id++;
}

/* 800206C4-80020720 005C+00 s=0 e=1 z=0  None .text      fpcBs_Execute__FP18base_process_class */
int fpcBs_Execute(base_process_class* i_proc) {
    int result = 1;

#ifdef DEBUG
    if (!fpcBs_Is_JustOfType(g_fpcBs_type, i_proc->type)) {
        if (g_fpcDbSv_service[10] != NULL) {
            g_fpcDbSv_service[10](i_proc);
        }
        
        return 0;
    }
#endif

    if (result == 1) {
        layer_class* save_layer = fpcLy_CurrentLayer();

        fpcLy_SetCurrentLayer(i_proc->layer_tag.layer);
        result = fpcMtd_Execute(i_proc->methods, i_proc);

        fpcLy_SetCurrentLayer(save_layer);
    }
    
    return result;
}

/* 80020720-80020760 0040+00 s=2 e=0 z=0  None .text      fpcBs_DeleteAppend__FP18base_process_class
 */
void fpcBs_DeleteAppend(base_process_class* i_proc) {
    if (i_proc->append != NULL) {
        cMl::free(i_proc->append);
        i_proc->append = NULL;
    }
}

/* 80020760-800207BC 005C+00 s=0 e=1 z=0  None .text      fpcBs_IsDelete__FP18base_process_class */
int fpcBs_IsDelete(base_process_class* i_proc) {
    int result;
    layer_class* save_layer = fpcLy_CurrentLayer();

    fpcLy_SetCurrentLayer(i_proc->layer_tag.layer);
    result = fpcMtd_IsDelete(i_proc->methods, i_proc);

    fpcLy_SetCurrentLayer(save_layer);
    return result;
}

/* 800207BC-80020820 0064+00 s=0 e=2 z=0  None .text      fpcBs_Delete__FP18base_process_class */
int fpcBs_Delete(base_process_class* i_proc) {
    int result = fpcMtd_Delete(i_proc->methods, i_proc);
    if (result == 1) {
        fpcBs_DeleteAppend(i_proc);
        i_proc->type = 0;
        cMl::free(i_proc);
    }

    return result;
}

/* 80020820-8002091C 00FC+00 s=0 e=2 z=0  None .text      fpcBs_Create__FsUiPv */
base_process_class* fpcBs_Create(s16 i_profname, fpc_ProcID i_procID, void* i_append) {
    process_profile_definition* pprofile;
    base_process_class* pprocess;
    u32 size;

    pprofile = (process_profile_definition*)fpcPf_Get(i_profname);
    size = pprofile->process_size + pprofile->unk_size;

    pprocess = (base_process_class*)cMl::memalignB(-4, size);
    if (pprocess == NULL) {
        return NULL;
    }

    sBs_ClearArea(pprocess, size);
    fpcLyTg_Init(&pprocess->layer_tag, pprofile->layer_id, pprocess);
    fpcLnTg_Init(&pprocess->line_tag_, pprocess);
    fpcDtTg_Init(&pprocess->delete_tag, pprocess);
    fpcPi_Init(&pprocess->priority, pprocess, pprofile->layer_id, pprofile->list_id,
                pprofile->list_priority);

    pprocess->init_state = 0;
    pprocess->unk_0xA = 0;
    pprocess->id = i_procID;
    pprocess->profname = i_profname;
    pprocess->type = fpcBs_MakeOfType(&g_fpcBs_type);
    pprocess->name = pprofile->name;
    fpcPause_Init(pprocess);
    pprocess->methods = pprofile->methods;
    pprocess->profile = pprofile;
    pprocess->append = i_append;
    pprocess->parameters = pprofile->parameters;
    return pprocess;
}

int fpcBs_SubCreate(base_process_class* i_proc) {
    switch (fpcMtd_Create(i_proc->methods, i_proc)) {
    case cPhs_NEXT_e:
    case cPhs_COMPLEATE_e:
        fpcBs_DeleteAppend(i_proc);
        i_proc->create_phase = cPhs_NEXT_e;
        return cPhs_NEXT_e;
    case cPhs_INIT_e:
    case cPhs_LOADING_e:
        i_proc->init_state = 1;
        i_proc->create_phase = cPhs_INIT_e;
        return cPhs_INIT_e;
    case cPhs_UNK3_e:
        i_proc->create_phase = cPhs_UNK3_e;
        return cPhs_UNK3_e;
    case cPhs_ERROR_e:
    default:
        i_proc->create_phase = cPhs_ERROR_e;
        return cPhs_ERROR_e;
    }
}
