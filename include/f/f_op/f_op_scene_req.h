#ifndef F_F_OP_SCENE_REQ_H_
#define F_F_OP_SCENE_REQ_H_

#include "dolphin/types.h"
#include "f/f_op/f_op_scene_pause.h"
#include "f/f_pc/f_pc_node_req.h"
#include "SComponent/c_phase.h"

extern "C" {
void fopScnRq_Handler__Fv(void);
void fopScnRq_ReRequest(void);
}

class scene_request_class {
    public:
    node_create_request mCrtReq;
    u8 field_0x60[4];
    int mFadeRequest;
    request_of_phase_process_class mReqPhsProcCls;
    u8 field_0x70[4];
};

scene_request_class* fopScnRq_phase_ClearOverlap(scene_request_class* param_1);
u32 fopScnRq_Request(int, scene_class*, s16, void*, s16, u16);
u32 fopScnRq_ReRequest(unsigned int, s16, void*);

#endif