#ifndef F_F_OP_OVERLAP_MNG_H_
#define F_F_OP_OVERLAP_MNG_H_

#include "f_op/f_op_overlap.h"
#include "f_pc/f_pc_manager.h"

struct request_base_class;

int fopOvlpM_SceneIsStop();
int fopOvlpM_SceneIsStart();
void fopOvlpM_Management();
int fopOvlpM_IsOutReq(overlap_task_class* i_this);
void fopOvlpM_Done(overlap_task_class* i_this);
void fopOvlpM_ToldAboutID(unsigned int param_1);
int fopOvlpM_IsPeek();
int fopOvlpM_IsDone();
int fopOvlpM_IsDoingReq();
int fopOvlpM_ClearOfReq();
request_base_class* fopOvlpM_Request(s16 param_1, u16 param_2);
int fopOvlpM_Cancel();
void fopOvlpM_Init();

#endif