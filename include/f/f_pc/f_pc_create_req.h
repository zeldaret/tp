
#ifndef F_PC_CREATE_REQ_H
#define F_PC_CREATE_REQ_H

#include "global.h"
#include "SComponent/c_phase.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_create_tag.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_method_tag.h"

struct base_process_class;
struct layer_class;

struct create_request_method_class {
    cPhs__Handler mpHandler;
    process_method_func mpCancel;
    process_method_func mpDelete;
};

struct create_request : public create_tag {
    s8 mbIsCreating;
    s8 mbIsCancelling;
    process_method_tag_class mMtdTg;
    create_request_method_class *mpCtRqMtd;
    void *mpUnk1;
    int mBsPcId;
    base_process_class *mpRes;
    layer_class *mpLayer;
};

extern "C" {

bool fpcCtRq_isCreatingByID(create_tag *pTag, int *pId);
bool fpcCtRq_IsCreatingByID(unsigned int id);
void fpcCtRq_CreateQTo(create_request *pReq);
void fpcCtRq_ToCreateQ(create_request *pReq);
bool fpcCtRq_Delete(create_request *pReq);
bool fpcCtRq_Cancel(create_request *pReq);
int fpcCtRq_IsDoing(create_request *pReq);
void fpcCtRq_Handler(void);
create_request * fpcCtRq_Create(layer_class *pLayer, unsigned long size, create_request_method_class *pCtRqMtd);

};

#endif
