#include "global.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_create_req.h"

typedef s32 (*stdCreateFunc)(void*, void*);

struct standard_create_request_class : public create_request {
    /* 0x48 */ request_of_phase_process_class unk_0x48;
    /* 0x50 */ s16 mLoadID;
    /* 0x54 */ void *unk_0x54;
    /* 0x58 */ stdCreateFunc unk_0x58;
    /* 0x5C */ void *unk_0x5C;
};

extern "C" {

s32 fpcSCtRq_phase_CreateProcess(standard_create_request_class* pStdCreateReq);
s32 fpcSCtRq_phase_SubCreateProcess(standard_create_request_class* pStdCreateReq);
s32 fpcSCtRq_phase_IsComplete(standard_create_request_class* pStdCreateReq);
s32 fpcSCtRq_phase_PostMethod(standard_create_request_class* pStdCreateReq);
s32 fpcSCtRq_phase_Done(standard_create_request_class*);
s32 fpcSCtRq_Handler(standard_create_request_class* pStdCreateReq);
s32 fpcSCtRq_Delete(standard_create_request_class*);
s32 fpcSCtRq_Cancel(standard_create_request_class*);
s32 fpcSCtRq_Request(layer_class* param_1, s16 param_2, stdCreateFunc param_3, void* param_4, void* param_5);

}