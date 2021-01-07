#ifndef __C_REQUEST_H_
#define __C_REQUEST_H_

#include "f/f_pc/f_pc_base.h"
#include "global.h"

struct request_base_class;

int cReq_Is_Done(request_base_class*);
int cReq_Done(request_base_class*);
int cReq_Command(request_base_class*, u8);
int cReq_Create(request_base_class*, u8);

#endif