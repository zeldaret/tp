#ifndef F_F_OP_OVERLAP_REQ_H_
#define F_F_OP_OVERLAP_REQ_H_

#include "SSystem/SComponent/c_phase.h"
#include "dolphin/types.h"
#include "f_pc/f_pc_layer.h"

struct request_base_class;

class overlap_request_class {
public:
    s8 field_0x0;
    u8 field_0x1;
    s16 field_0x2;
    u16 field_0x4;
    u16 mPeektime;
    u32 field_0x8;
    u32 field_0xc;
    s16 field_0x10;
    u8 field_0x12;
    u8 field_0x13;
    int field_0x14;
    request_of_phase_process_class field_0x18;
    u8* field_0x20;
    layer_class* pCurrentLayer;
};
int fopOvlpReq_OverlapClr(overlap_request_class* param_1);
request_base_class* fopOvlpReq_Request(overlap_request_class*, s16, u16);
int fopOvlpReq_Handler(overlap_request_class*);
int fopOvlpReq_Cancel(overlap_request_class*);
static int fopOvlpReq_phase_Done(overlap_request_class* param_1);
int fopOvlpReq_Is_PeektimeLimit(overlap_request_class*);

#endif