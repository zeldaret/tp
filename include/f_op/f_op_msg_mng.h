#ifndef F_F_OP_MSG_MNG_H_
#define F_F_OP_MSG_MNG_H_

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

typedef int (*fopMsgCreateFunc)(void*);

JKRExpHeap* fopMsgM_createExpHeap(u32, JKRHeap*);
void fopMsgM_setStageLayer(void*);

#endif