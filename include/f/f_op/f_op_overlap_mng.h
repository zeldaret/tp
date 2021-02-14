#ifndef F_F_OP_OVERLAP_MNG_H_
#define F_F_OP_OVERLAP_MNG_H_

#include "SComponent/c_request.h"
#include "dolphin/types.h"

class overlap_task_class {
public:
    /* 0x00 */ u8 field_0x00[0xC4];
    /* 0xC4 */ u8 field_0xc4;
};

void fopOvlpM_Management(void);
BOOL fopOvlpM_IsOutReq(overlap_task_class* pTaskClass);
void fopOvlpM_Done(overlap_task_class* pTaskClass);
void fopOvlpM_ToldAboutID(unsigned int param_1);
u32 fopOvlpM_IsPeek(void);
int fopOvlpM_IsDone(void);

#endif