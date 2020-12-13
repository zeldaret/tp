#ifndef F_PC_FSTCREATE_REQ_H
#define F_PC_FSTCREATE_REQ_H

#include "global.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_req.h"

typedef s32 (*fstCreateFunc)(void*, void*);

struct fast_create_request : public create_request {
    /* 0x48 */ fstCreateFunc mpFastCreateFunc;
    /* 0x4C */ void *mpFastCreateData;
}; // Size: 0x50

extern "C" {

s32 fpcFCtRq_Do(fast_create_request* pFstCreateReq);
s32 fpcFCtRq_Delete(fast_create_request*);
base_process_class *fpcFCtRq_Request(layer_class* pLayer, s16 pProcTypeID, fstCreateFunc pFastCreateFunc, void* pFastCreateData, void* pData);

}

#endif