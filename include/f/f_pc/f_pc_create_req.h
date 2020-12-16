
#ifndef F_PC_CREATE_REQ_H
#define F_PC_CREATE_REQ_H

#include "compatibility_c_cpp.h"
#include "dolphin/types.h"
#include "SComponent/c_phase.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_create_tag.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_method_tag.h"
#include "f/f_pc/f_pc_layer.h"

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
    create_request_method_class *mpCtRqMtd;
    void *mpUnk1;
    int mBsPcId;
    struct base_process_class *mpRes;
    layer_class *mpLayer;
} create_request; // Size: 0x48

BEGIN_C_DECLARATIONS

BOOL fpcCtRq_isCreatingByID(create_tag *pTag, int *pId);
BOOL fpcCtRq_IsCreatingByID(unsigned int id);
void fpcCtRq_CreateQTo(create_request *pReq);
void fpcCtRq_ToCreateQ(create_request *pReq);
BOOL fpcCtRq_Delete(create_request *pReq);
BOOL fpcCtRq_Cancel(create_request *pReq);
int fpcCtRq_IsDoing(create_request *pReq);
void fpcCtRq_Handler(void);
create_request * fpcCtRq_Create(layer_class *pLayer, unsigned long size, create_request_method_class *pCtRqMtd);

END_C_DECLARATIONS

#endif
