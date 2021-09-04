#ifndef F_F_OP_OVERLAP_MNG_H_
#define F_F_OP_OVERLAP_MNG_H_

#include "SSystem/SComponent/c_request.h"
#include "dolphin/types.h"

class overlap_task_class {
public:
    /* 0x00 */ u8 field_0x00[0xC4];
    /* 0xC4 */ u8 field_0xc4;
};

int fopOvlpM_SceneIsStop(void);
int fopOvlpM_SceneIsStart(void);
void fopOvlpM_Management(void);
int fopOvlpM_IsOutReq(overlap_task_class* pTaskClass);
void fopOvlpM_Done(overlap_task_class* pTaskClass);
void fopOvlpM_ToldAboutID(unsigned int param_1);
int fopOvlpM_IsPeek(void);
int fopOvlpM_IsDone(void);
int fopOvlpM_IsDoingReq(void);
int fopOvlpM_ClearOfReq(void);
request_base_class* fopOvlpM_Request(s16 param_1, u16 param_2);
int fopOvlpM_Cancel(void);
void fopOvlpM_Init();

#endif