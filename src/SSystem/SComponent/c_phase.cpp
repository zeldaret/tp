/**
 * c_phase.cpp
 *
 */

#include "SSystem/SComponent/c_phase.h"

/* 80266624-80266630 000C+00 s=1 e=2 z=0  None .text
 * cPhs_Reset__FP30request_of_phase_process_class               */
void cPhs_Reset(request_of_phase_process_class* phase) {
    phase->id = cPhs_INIT_e;
}

/* 80266630-80266640 0010+00 s=0 e=3 z=0  None .text
 * cPhs_Set__FP30request_of_phase_process_classPPFPv_i          */
void cPhs_Set(request_of_phase_process_class* phase, cPhs__Handler* handlerTbl) {
    phase->mpHandlerTable = handlerTbl;
    phase->id = cPhs_INIT_e;
}

/* 80266640-80266668 0028+00 s=1 e=0 z=0  None .text
 * cPhs_UnCompleate__FP30request_of_phase_process_class         */
void cPhs_UnCompleate(request_of_phase_process_class* phase) {
    phase->mpHandlerTable = NULL;
    cPhs_Reset(phase);
}

/* 80266668-80266678 0010+00 s=2 e=0 z=0  None .text
 * cPhs_Compleate__FP30request_of_phase_process_class           */
int cPhs_Compleate(request_of_phase_process_class* phase) {
    phase->mpHandlerTable = NULL;
    return cPhs_COMPLEATE_e;
}

/* 80266678-802666D8 0060+00 s=1 e=0 z=0  None .text cPhs_Next__FP30request_of_phase_process_class
 */
int cPhs_Next(request_of_phase_process_class* phase) {
    if (const cPhs__Handler* handlerTable = phase->mpHandlerTable) {
        phase->id++;
        cPhs__Handler handler = handlerTable[phase->id];

        // Double null check here actually matters for emitted assembly.
        // Wee old compilers.
        if (handler == NULL || handler == NULL) {
            return cPhs_Compleate(phase);
        } else {
            return cPhs_LOADING_e;
        }
    }

    return cPhs_COMPLEATE_e;
}

/* 802666D8-802667AC 00D4+00 s=1 e=3 z=0  None .text cPhs_Do__FP30request_of_phase_process_classPv
 */
int cPhs_Do(request_of_phase_process_class* phase, void* data) {
    cPhs__Handler* handler = phase->mpHandlerTable;

    if (handler) {
        handler += phase->id;
        int newStep = (*handler)(data);

        switch (newStep) {
        case cPhs_LOADING_e:
            return cPhs_Next(phase);
        case cPhs_NEXT_e:
            return cPhs_Next(phase) == cPhs_LOADING_e ? cPhs_NEXT_e : cPhs_COMPLEATE_e;
        case cPhs_COMPLEATE_e:
            return cPhs_Compleate(phase);
        case cPhs_UNK3_e:
            cPhs_UnCompleate(phase);
            return cPhs_UNK3_e;
        case cPhs_ERROR_e:
            cPhs_UnCompleate(phase);
            return cPhs_ERROR_e;
        case cPhs_INIT_e:
        default:
            return newStep;
        }
    }

    return cPhs_Compleate(phase);
}

/* 802667AC-802667D4 0028+00 s=0 e=2 z=0  None .text
 * cPhs_Handler__FP30request_of_phase_process_classPPFPv_iPv    */
int cPhs_Handler(request_of_phase_process_class* phase, cPhs__Handler* handlerTbl, void* data) {
    phase->mpHandlerTable = handlerTbl;
    return cPhs_Do(phase, data);
}