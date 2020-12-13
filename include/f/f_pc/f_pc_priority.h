
#ifndef F_PC_PRIORITY_H
#define F_PC_PRIORITY_H

#include "global.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_method_tag.h"

struct process_priority_queue_info {
    u32 mLayer;
    u16 mListID;
    u16 mListPrio;
};

struct process_priority_class : public create_tag_class {
    process_method_tag_class mMtdTag;
    process_priority_queue_info mInfoQ;
    process_priority_queue_info mInfoCurr;
};

extern "C" {

int fpcPi_IsInQueue(process_priority_class *pPi);
int fpcPi_QueueTo(process_priority_class *pPi);
int fpcPi_ToQueue(process_priority_class *pPi);
process_priority_class * fpcPi_GetFromQueue(void);
int fpcPi_Delete(process_priority_class *pPi);
int fpcPi_IsNormal(unsigned int layer, unsigned short listID, unsigned short priority);
int fpcPi_Change(process_priority_class *pPi, unsigned int layer, unsigned short listID, unsigned short priority);
int fpcPi_Handler(void);
int fpcPi_Init(process_priority_class *pPi, void *pUserData, unsigned int layer, unsigned short listID, unsigned short priority);

};

#endif
