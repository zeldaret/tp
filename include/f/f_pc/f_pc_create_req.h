
#ifndef F_PC_CREATE_REQ_H
#define F_PC_CREATE_REQ_H

#include "global.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_create_tag.h"
#include "f/f_pc/f_pc_method_tag.h"

struct create_request_method_class;
struct layer_class;

struct create_request : public create_tag {
    u8 mbIsCreating;
    u8 mbUnk0;
    process_method_tag_class mMtdTg;
    create_request_method_class *mpCtRqMtd;
    void *mpUnk1;
    int mBsPcId;
    void *mpRes;
    layer_class *mpLayer;
};

extern "C" {

int fpcCtRq_isCreatingByID(create_tag *pTag, unsigned int id);
int fpcCtRq_IsCreatingByID(unsigned int id);
void fpcCtRq_CreateQTo(create_request *pReq);
void fpcCtRq_ToCreateQ(create_request *pReq);
int fpcCtRq_Delete(create_request *pReq);
int fpcCtRq_Cancel(create_request *pReq);
int fpcCtRq_IsDoing(create_request *pReq);
int fpcCtRq_Do(create_request_method_class *pReq);
void fpcCtRq_Handler(void);
int fpcCtRq_Create(layer_class *pLayer, unsigned long size, create_request_method_class *pCtRqMtd);

};

#endif
