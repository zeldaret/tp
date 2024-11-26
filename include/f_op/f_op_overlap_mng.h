#ifndef F_F_OP_OVERLAP_MNG_H_
#define F_F_OP_OVERLAP_MNG_H_

#include "f_op/f_op_overlap.h"
#include "f_op/f_op_overlap_req.h"

struct request_base_class;

int fopOvlpM_SceneIsStop();
int fopOvlpM_SceneIsStart();
void fopOvlpM_Management();
int fopOvlpM_IsOutReq(overlap_task_class* i_overlap_task);
void fopOvlpM_Done(overlap_task_class* i_overlap_task);
void fopOvlpM_ToldAboutID(fpc_ProcID i_sceneId);
int fopOvlpM_IsPeek();
int fopOvlpM_IsDone();
int fopOvlpM_IsDoingReq();
int fopOvlpM_ClearOfReq();
overlap_request_class* fopOvlpM_Request(s16 i_procname, u16 i_peektime);
int fopOvlpM_Cancel();
void fopOvlpM_Init();

#endif
