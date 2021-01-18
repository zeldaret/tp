
#ifndef SCOMPONENT_C_PHASE_H_
#define SCOMPONENT_C_PHASE_H_

typedef int (*cPhs__Handler)(void*);

enum cPhs__Step {
    cPhs_ZERO_e = 0x00,
    // names from Wind Waker debug strings
    cPhs_COMPLEATE_e = 0x04,
    cPhs_ERROR_e = 0x05,
    cPhs_NEXT_e = 0x06,
};

typedef struct request_of_phase_process_class {
    cPhs__Handler* mpHandlerTable;
    int mPhaseStep;
} request_of_phase_process_class;

extern "C" {

void cPhs_Reset(request_of_phase_process_class* pPhase);
void cPhs_Set(request_of_phase_process_class* pPhase, cPhs__Handler* pHandlerTable);
void cPhs_UnCompleate(request_of_phase_process_class* pPhase);
int cPhs_Compleate(request_of_phase_process_class* pPhase);
int cPhs_Next(request_of_phase_process_class* pPhase);
int cPhs_Do(request_of_phase_process_class* pPhase, void* pUserData);
int cPhs_Handler(request_of_phase_process_class* pPhase, cPhs__Handler* pHandlerTable,
                 void* pUserData);
};

#endif
