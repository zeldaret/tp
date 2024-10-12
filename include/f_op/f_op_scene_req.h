#ifndef F_F_OP_SCENE_REQ_H_
#define F_F_OP_SCENE_REQ_H_

#include "f_pc/f_pc_node_req.h"

class scene_class;

extern "C" {
void fopScnRq_Handler__Fv(void);
void fopScnRq_ReRequest(void);
}

class scene_request_class {
public:
    node_create_request mCrtReq;
    u32 mFadeRequest;  // TODO: type is wrong
    request_of_phase_process_class mReqPhsProcCls;
    u8 field_0x70[4];
};

// cPhs__Step fopScnRq_phase_ClearOverlap(scene_request_class* param_1);
s32 fopScnRq_Request(int, scene_class*, s16, void*, s16, u16);
s32 fopScnRq_ReRequest(fpc_ProcID, s16, void*);
void fopScnRq_Handler(void);

#endif
