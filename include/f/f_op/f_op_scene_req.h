#ifndef F_F_OP_SCENE_REQ_H_
#define F_F_OP_SCENE_REQ_H_

#include "dolphin/types.h"
#include "f/f_op/f_op_scene_pause.h"

extern "C" {
void fopScnRq_Handler__Fv(void);
void fopScnRq_ReRequest(void);
}

class scene_request_class;

scene_request_class* fopScnRq_phase_ClearOverlap(scene_request_class* param_1);
u32 fopScnRq_Request(int, scene_class*, s16, void*, s16, u16);
u32 fopScnRq_ReRequest(unsigned int, s16, void*);

#endif