
#ifndef F_PC_PRIORITY_H
#define F_PC_PRIORITY_H

#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_method_tag.h"

typedef struct process_priority_queue_info {
    u32 mLayer;
    u16 mListID;
    u16 mListPrio;
} process_priority_queue_info;

typedef struct process_priority_class {
    create_tag_class mBase;
    process_method_tag_class mMtdTag;
    process_priority_queue_info mInfoQ;
    process_priority_queue_info mInfoCurr;
} process_priority_class;

BEGIN_C_DECLARATIONS

s32 fpcPi_IsInQueue(process_priority_class* pPi);
s32 fpcPi_QueueTo(process_priority_class* pPi);
s32 fpcPi_ToQueue(process_priority_class* pPi);
process_priority_class* fpcPi_GetFromQueue(void);
s32 fpcPi_Delete(process_priority_class* pPi);
s32 fpcPi_IsNormal(u32 layer, u16 listID, u16 priority);
s32 fpcPi_Change(process_priority_class* pPi, u32 layer, u16 listID, u16 priority);
s32 fpcPi_Handler(void);
s32 fpcPi_Init(process_priority_class* pPi, void* pUserData, u32 layer, u16 listID, u16 priority);

END_C_DECLARATIONS

#endif
