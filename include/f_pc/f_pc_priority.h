
#ifndef F_PC_PRIORITY_H_
#define F_PC_PRIORITY_H_

#include "SSystem/SComponent/c_tag.h"
#include "f_pc/f_pc_method_tag.h"

typedef struct process_priority_queue_info {
    u32 mLayer;
    u16 mListID;
    u16 mListPrio;
} process_priority_queue_info;

typedef struct process_priority_class {
    /* 0x00 */ create_tag_class mBase;
    /* 0x14 */ process_method_tag_class mMtdTag;
    /* 0x30 */ process_priority_queue_info mInfoQ;
    /* 0x38 */ process_priority_queue_info mInfoCurr;
} process_priority_class;

s32 fpcPi_IsInQueue(process_priority_class* pPi);
s32 fpcPi_QueueTo(process_priority_class* pPi);
s32 fpcPi_ToQueue(process_priority_class* pPi);
process_priority_class* fpcPi_GetFromQueue(void);
s32 fpcPi_Delete(process_priority_class* pPi);
s32 fpcPi_IsNormal(unsigned int layer, u16 listID, u16 priority);
s32 fpcPi_Change(process_priority_class* pPi, unsigned int layer, u16 listID, u16 priority);
s32 fpcPi_Handler(void);
s32 fpcPi_Init(process_priority_class* pPi, void* pUserData, unsigned int layer, u16 listID,
               u16 priority);

#endif
