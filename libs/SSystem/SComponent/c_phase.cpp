
#include "SComponent/c_phase.h"
#include "global.h"

void cPhs_Reset(request_of_phase_process_class* pPhase) {
    pPhase->mPhaseStep = 0;
}

void cPhs_Set(request_of_phase_process_class* pPhase, cPhs__Handler* pHandlerTable) {
    pPhase->mpHandlerTable = pHandlerTable;
    pPhase->mPhaseStep = 0;
}

void cPhs_UnCompleate(request_of_phase_process_class* pPhase) {
    pPhase->mpHandlerTable = NULL;
    cPhs_Reset(pPhase);
}

int cPhs_Compleate(request_of_phase_process_class* pPhase) {
    pPhase->mpHandlerTable = NULL;
    return cPhs_COMPLEATE_e;
}

#if NON_MATCHING
int cPhs_Next(request_of_phase_process_class* pPhase) {
    // flow control

    if (pPhase->mpHandlerTable != NULL) {
        pPhase->mPhaseStep++;
        cPhs__Handler pHandler = pPhase->mpHandlerTable[pPhase->mPhaseStep];
        if (pHandler == NULL)
            return cPhs_Compleate(pPhase);
        else if (pHandler != NULL)
            return 1;
    }

    return cPhs_COMPLEATE_e;
}
#else
asm int cPhs_Next(request_of_phase_process_class* pPhase) {
    nofralloc
#include "SComponent/c_phase/asm/func_80266678.s"
}
#endif

#if NON_MATCHING
int cPhs_Do(request_of_phase_process_class* pPhase, void* pUserData) {
    if (const cPhs__Handler* pHandlerTable = pPhase->mpHandlerTable) {
        // the load of pUserData seems to be slightly scrambled..
        const cPhs__Handler pHandler = pHandlerTable[pPhase->mPhaseStep];
        const int newStep = pHandler(pUserData);

        switch (newStep) {
        case 1:
            return cPhs_Next(pPhase);
        case 2: {
            const int step2 = cPhs_Next(pPhase);
            return step2 == 1 ? 2 : cPhs_COMPLEATE_e;
        }
        case cPhs_COMPLEATE_e:
            return cPhs_Compleate(pPhase);
        case 3: {
            cPhs_UnCompleate(pPhase);
            return 3;
        }
        case cPhs_ERROR_e:
            cPhs_UnCompleate(pPhase);
            return cPhs_ERROR_e;
        }

        return newStep;
    } else {
        return cPhs_Compleate(pPhase);
    }
}
#else
asm int cPhs_Do(request_of_phase_process_class* pPhase, void* pUserData) {
    nofralloc
#include "SComponent/c_phase/asm/func_802666D8.s"
}
#endif

int cPhs_Handler(request_of_phase_process_class* pPhase, cPhs__Handler* pHandlerTable,
                 void* pUserData) {
    pPhase->mpHandlerTable = pHandlerTable;
    return cPhs_Do(pPhase, pUserData);
}
