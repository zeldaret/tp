#ifndef F_F_OP_OVERLAP_REQ_H_
#define F_F_OP_OVERLAP_REQ_H_

#include "SSystem/SComponent/c_phase.h"
#include "f_pc/f_pc_manager.h"
#include "f_op/f_op_overlap.h"
#include "SSystem/SComponent/c_request.h"

typedef struct layer_class layer_class;
struct request_base_class;

class overlap_request_class {
public:
    /* 0x00 */ request_base_class base;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ u16 field_0x4;
    /* 0x06 */ u16 peektime;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ u32 field_0xc;
    /* 0x10 */ s16 procname;
    /* 0x12 */ u8 field_0x12;
    /* 0x13 */ u8 field_0x13;
    /* 0x14 */ fpc_ProcID request_id;
    /* 0x18 */ request_of_phase_process_class phase_req;
    /* 0x20 */ overlap_task_class* overlap_task;
    /* 0x24 */ layer_class* layer;
};

int fopOvlpReq_OverlapClr(overlap_request_class* i_overlapReq);
overlap_request_class* fopOvlpReq_Request(overlap_request_class* i_overlapReq, s16 i_procname, u16 i_peektime);
int fopOvlpReq_Handler(overlap_request_class* i_overlapReq);
int fopOvlpReq_Cancel(overlap_request_class* i_overlapReq);
static int fopOvlpReq_phase_Done(overlap_request_class* i_overlapReq);
int fopOvlpReq_Is_PeektimeLimit(overlap_request_class* i_overlapReq);

#endif
