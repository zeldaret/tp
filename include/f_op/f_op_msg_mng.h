#ifndef F_F_OP_MSG_MNG_H_
#define F_F_OP_MSG_MNG_H_

#include "d/msg/d_msg_class.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

typedef int (*fopMsgCreateFunc)(void*);

JKRExpHeap* fopMsgM_createExpHeap(u32, JKRHeap*);
u32 fopMsgM_Create(s16, fopMsgCreateFunc, void*);
void fopMsgM_setMessageID(unsigned int);
void fopMsgM_destroyExpHeap(JKRExpHeap*);
void fopMsgM_setStageLayer(void*);
void fopMsgM_messageSetDemo(u32 param_0);
msg_class* fopMsgM_SearchByID(unsigned int param_0);

#endif