
#ifndef F_PC_CREATE_REQ_H
#define F_PC_CREATE_REQ_H

#include "SComponent/c_phase.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_create_tag.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_method_tag.h"
#include "global.h"

struct base_process_class;

typedef struct create_request_method_class {
    cPhs__Handler mpHandler;
    process_method_func mpCancel;
    process_method_func mpDelete;
} create_request_method_class;

typedef struct create_request {
    create_tag mBase;
    s8 mbIsCreating;
    s8 mbIsCancelling;
    process_method_tag_class mMtdTg;
    create_request_method_class* mpCtRqMtd;
    void* mpUnk1;
    s32 mBsPcId;
    struct base_process_class* mpRes;
    layer_class* mpLayer;
} create_request;  // Size: 0x48

extern "C" {

BOOL fpcCtRq_isCreatingByID(create_tag* pTag, s32* pId);
BOOL fpcCtRq_IsCreatingByID(u32 id);
void fpcCtRq_CreateQTo(create_request* pReq);
void fpcCtRq_ToCreateQ(create_request* pReq);
BOOL fpcCtRq_Delete(create_request* pReq);
BOOL fpcCtRq_Cancel(create_request* pReq);
s32 fpcCtRq_IsDoing(create_request* pReq);
void fpcCtRq_Handler(void);
create_request* fpcCtRq_Create(layer_class* pLayer, u32 size,
                               create_request_method_class* pCtRqMtd);
};

#endif
