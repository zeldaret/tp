/**
 * f_pc_stdcreate_req.cpp
 * Framework - Process Standard Create Request
 */

#include "f_pc/f_pc_stdcreate_req.h"
#include "f_pc/f_pc_load.h"
#include "f_pc/f_pc_node.h"
#include "f_pc/f_pc_manager.h"
#include "f_pc/f_pc_debug_sv.h"
#include <dolphin.h>

/* 80023B70-80023BC4 0054+00 s=1 e=0 z=5  None .text
 * fpcSCtRq_phase_Load__FP29standard_create_request_class       */
s32 fpcSCtRq_phase_Load(standard_create_request_class* i_request) {
    int ret = fpcLd_Load(i_request->process_name);

    switch (ret) {
    case cPhs_INIT_e:
        return cPhs_INIT_e;
    case cPhs_COMPLEATE_e:
        return cPhs_NEXT_e;
    case cPhs_ERROR_e:
        OS_REPORT("fpcSCtRq_phase_Load %d\n", i_request->process_name);
    default:
        return cPhs_ERROR_e;
    }
}

/* 80023BC4-80023C2C 0068+00 s=1 e=0 z=9  None .text
 * fpcSCtRq_phase_CreateProcess__FP29standard_create_request_class */
s32 fpcSCtRq_phase_CreateProcess(standard_create_request_class* i_request) {
    fpcLy_SetCurrentLayer(i_request->base.layer);
    i_request->base.process =
        fpcBs_Create(i_request->process_name, i_request->base.id, i_request->process_append);

    if (i_request->base.process == NULL) {
        OS_REPORT("fpcSCtRq_phase_CreateProcess %d\n", i_request->process_name);
        fpcLd_Free(i_request->process_name);
        return cPhs_ERROR_e;
    } else {
        i_request->base.process->create_req = &i_request->base;
        return cPhs_NEXT_e;
    }
}

/* 80023C2C-80023C64 0038+00 s=1 e=0 z=3  None .text
 * fpcSCtRq_phase_SubCreateProcess__FP29standard_create_request_class */
s32 fpcSCtRq_phase_SubCreateProcess(standard_create_request_class* i_request) {
    fpcLy_SetCurrentLayer(i_request->base.layer);
    int ret = fpcBs_SubCreate(i_request->base.process);

#ifdef DEBUG
    if (ret == 0 && i_request->unk_0x60-- <= 0) {
        i_request->unk_0x60 = 0;
        if (g_fpcDbSv_service[0] != NULL) {
            g_fpcDbSv_service[0](i_request->base.process);
        }
    }
#endif

    return ret;
}

/* 80023C64-80023CBC 0058+00 s=1 e=0 z=14  None .text
 * fpcSCtRq_phase_IsComplete__FP29standard_create_request_class */
s32 fpcSCtRq_phase_IsComplete(standard_create_request_class* i_request) {
    process_node_class* procNode = (process_node_class*)i_request->base.process;
    if (fpcBs_Is_JustOfType(g_fpcNd_type, procNode->base.subtype) == TRUE) {
        if (fpcLy_IsCreatingMesg(&procNode->layer) == TRUE) {
            return cPhs_INIT_e;
        }
    }
    return cPhs_NEXT_e;
}

/* 80023CBC-80023D0C 0050+00 s=1 e=0 z=5  None .text
 * fpcSCtRq_phase_PostMethod__FP29standard_create_request_class */
s32 fpcSCtRq_phase_PostMethod(standard_create_request_class* i_request) {
    stdCreateFunc create_func = i_request->create_post_method;

    if (create_func != NULL) {
        int ret = create_func(i_request->base.process, i_request->unk_0x5C);
        if (ret == 0) {
            return cPhs_INIT_e;
        }
    }

    return cPhs_NEXT_e;
}

/* 80023D0C-80023D14 0008+00 s=1 e=0 z=0  None .text
 * fpcSCtRq_phase_Done__FP29standard_create_request_class       */
s32 fpcSCtRq_phase_Done(standard_create_request_class* i_request) {
    return cPhs_NEXT_e;
}

/* 80023D14-80023D84 0070+00 s=1 e=0 z=2  None .text
 * fpcSCtRq_Handler__FP29standard_create_request_class          */
s32 fpcSCtRq_Handler(standard_create_request_class* i_request) {
    s32 phase_state = cPhs_Do(&i_request->phase_request, i_request);

    switch (phase_state) {
    case cPhs_NEXT_e:
        return fpcSCtRq_Handler(i_request);
    case cPhs_COMPLEATE_e:
        return cPhs_COMPLEATE_e;
    case cPhs_LOADING_e:
    case cPhs_ERROR_e:
    default:
        return phase_state;
    }
}

/* 80023D84-80023D8C 0008+00 s=1 e=0 z=0  None .text
 * fpcSCtRq_Delete__FP29standard_create_request_class           */
s32 fpcSCtRq_Delete(standard_create_request_class* i_request) {
    return 1;
}

/* 80023D8C-80023D94 0008+00 s=1 e=0 z=1  None .text
 * fpcSCtRq_Cancel__FP29standard_create_request_class           */
s32 fpcSCtRq_Cancel(standard_create_request_class* i_request) {
    return 1;
}

/* 80023D94-80023E28 0094+00 s=0 e=12 z=1  None .text
 * fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv               */
fpc_ProcID fpcSCtRq_Request(layer_class* i_layer, s16 i_procName, stdCreateFunc i_createFunc,
                     void* param_4, void* i_append) {
    static create_request_method_class submethod = {
        (cPhs__Handler)fpcSCtRq_Handler,
        (process_method_func)fpcSCtRq_Cancel,
        (process_method_func)fpcSCtRq_Delete,
    };

    static cPhs__Handler method[7] = {
        (cPhs__Handler)fpcSCtRq_phase_Load,
        (cPhs__Handler)fpcSCtRq_phase_CreateProcess,
        (cPhs__Handler)fpcSCtRq_phase_SubCreateProcess,
        (cPhs__Handler)fpcSCtRq_phase_IsComplete,
        (cPhs__Handler)fpcSCtRq_phase_PostMethod,
        (cPhs__Handler)fpcSCtRq_phase_Done,
        NULL,
    };

    if (i_procName >= 0x7FFF) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    standard_create_request_class* request =
        (standard_create_request_class*)fpcCtRq_Create(i_layer, sizeof(standard_create_request_class), &submethod);
    if (request == NULL) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    cPhs_Set(&request->phase_request, method);
    request->process_name = i_procName;
    request->create_post_method = i_createFunc;
    request->unk_0x5C = param_4;
    request->process_append = i_append;
#ifdef DEBUG
    request->unk_0x60 = 60;
#endif

    return request->base.id;
}
