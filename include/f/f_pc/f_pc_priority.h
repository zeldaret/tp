
#ifndef F_PC_PRIORITY_H
#define F_PC_PRIORITY_H

#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_method_tag.h"
#include "global.h"

struct process_priority_class : public create_tag_class {
    process_method_tag_class mMtdTag;
    struct {
        u32 mLayer;
        u16 mListID;
        u16 mListPrio;
    } a, b;
};

extern "C" {

int fpcPi_IsInQueue(process_priority_class* pProc);
int fpcPi_QueueTo(process_priority_class* pProc);
int fpcPi_ToQueue(process_priority_class* pProc);
process_priority_class* fpcPi_GetFromQueue(void);
int fpcPi_Delete(process_priority_class* pProc);
int fpcPi_IsNormal(process_priority_class* pProc);
int fpcPi_Change(process_priority_class* pProc, unsigned int layer, unsigned short listID,
                 unsigned short priority);
void fpcPi_Handler(void);
int fpcPi_Init(process_priority_class* pProc, void* pUserData, unsigned int layer,
               unsigned short listID, unsigned short priority);
};

#endif
