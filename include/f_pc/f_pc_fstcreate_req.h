#ifndef F_PC_FSTCREATE_REQ_H_
#define F_PC_FSTCREATE_REQ_H_

#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_create_req.h"
#include "f_pc/f_pc_layer.h"
#include "dolphin/types.h"

typedef int (*fstCreateFunc)(void*, void*);

typedef struct fast_create_request {
    /* 0x00 */ create_request mBase;
    /* 0x48 */ fstCreateFunc mpFastCreateFunc;
    /* 0x4C */ void* mpFastCreateData;
} fast_create_request;  // Size: 0x50

s32 fpcFCtRq_Do(fast_create_request* pFstCreateReq);
s32 fpcFCtRq_Delete(fast_create_request*);
base_process_class* fpcFCtRq_Request(layer_class* pLayer, s16 pProcTypeID,
                                     fstCreateFunc pFastCreateFunc, void* pFastCreateData,
                                     void* pData);

#endif