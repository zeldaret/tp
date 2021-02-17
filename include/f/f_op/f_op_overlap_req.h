#ifndef F_F_OP_OVERLAP_REQ_H_
#define F_F_OP_OVERLAP_REQ_H_

#include "SComponent/c_request.h"
#include "dolphin/types.h"

class overlap_request_class {
public:
    s8 field_0x0;
    u8 field_0x1;
    s16 field_0x2;
    u16 field_0x4;
    u16 field_0x6;
    u32 field_0x8;
    u32 field_0xc;
    u8 field_0x10;
    u8 field_0x11;
    u8 field_0x12;
    u8 field_0x13;
    int field_0x14;
    u8 field_0x18;
    u8 field_0x19;
    u8 field_0x1a;
    u8 field_0x1b;
    u8 field_0x1c;
    u8 field_0x1d;
    u8 field_0x1e;
    u8 field_0x1f;
    u8* field_0x20;
};
int fopOvlpReq_OverlapClr(overlap_request_class* param_1);
request_base_class* fopOvlpReq_Request(overlap_request_class*, s16, u16);
int fopOvlpReq_Handler(overlap_request_class*);
int fopOvlpReq_Cancel(overlap_request_class*);
int fopOvlpReq_phase_Done(overlap_request_class* param_1);

#endif