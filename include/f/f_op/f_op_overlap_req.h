#ifndef F_F_OP_OVERLAP_REQ_H_
#define F_F_OP_OVERLAP_REQ_H_

#include "dolphin/types.h"

class overlap_request_class;
int fopOvlpReq_OverlapClr(overlap_request_class* param_1);
request_base_class* fopOvlpReq_Request(overlap_request_class*, s16, u16);
int fopOvlpReq_Handler(overlap_request_class*);
int fopOvlpReq_Cancel(overlap_request_class*);

#endif