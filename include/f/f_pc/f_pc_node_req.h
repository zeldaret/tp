#include "global.h"
#include "f/f_pc/f_pc_method_tag.h"
#include "f/f_pc/f_pc_node.h"
#include "SComponent/c_phase.h"

struct node_create_request_method_class {
    process_method_func mpExecuteFunc;
    process_method_func mpCancelFunc;
    process_method_func mpUnkFunc;
    process_method_func mpPostMethodFunc;
};

// needed to match struct copy
struct unk_process_node_class {
    process_node_class *mpNodeProc;
    u32 mProcId;
};

struct node_create_request {
    create_tag_class mCreateTag;
    process_method_tag_class mProcMthCls;
    request_of_phase_process_class mReqPhsProc;
    cPhs__Handler *mpPhsHandler;
    node_create_request_method_class *mpNodeCrReqMthCls;
    s32 unk_0x40;
    s32 mRequestId;
    unk_process_node_class mNodeProc;
    layer_class *mpLayerClass;
    u32 mCreatingID;
    s16 unk_0x58;
    void *unk_0x5C;
    s16 unk_0x60;
    
}; // Size: 0x64

struct request_node_class : public node_class {
    node_create_request *mNodeCrReq; 
};

extern "C" {

void fpcNdRq_RequestQTo(node_create_request *pNodeCreateReq);
void fpcNdRq_ToRequestQ(node_create_request *pNodeCreateReq);
s32 fpcNdRq_phase_IsCreated(node_create_request *pNodeCreateReq);
s32 fpcNdRq_phase_Create(node_create_request *pNodeCreateReq);
s32 fpcNdRq_phase_IsDeleteTiming(node_create_request *pNodeCreateReq);
s32 fpcNdRq_phase_IsDeleted(node_create_request *pNodeCreateReq);
s32 fpcNdRq_phase_Delete(node_create_request *pNodeCreateReq);
s32 fpcNdRq_DoPhase(node_create_request *pNodeCreateReq);
s32 fpcNdRq_Execute(node_create_request *pNodeCreateReq);
s32 fpcNdRq_Delete(node_create_request *pNodeCreateReq);
s32 fpcNdRq_Cancel(node_create_request *pNodeCreateReq);
s32 fpcNdRq_Handler(void);
s32 fpcNdRq_IsPossibleTarget(process_node_class *pProcNode);
s32 fpcNdRq_IsIng(process_node_class *pProcNode);
node_create_request *fpcNdRq_Create(s32 pRequestSize);
node_create_request *fpcNdRq_ChangeNode(u32 pRequestSize, process_node_class *pProcNode, s16 param_3, void *param_4);
node_create_request *fpcNdRq_DeleteNode(u32 pRequestSize, process_node_class *pProcNode);
node_create_request *fpcNdRq_CreateNode(u32 pRequestSize, s16 param_2, void *param_3);
node_create_request *fpcNdRq_Request(u32 param_1, s32 param_2, process_node_class *param_3, s16 param_4, void *param_5, node_create_request_method_class *pNodeCreateRequestMethodClass);
s32 fpcNdRq_ReChangeNode(u32 pRequestId, s16 param_2, void *param_3);
s32 fpcNdRq_ReRequest(u32 pRequestId, s16 param_2, void *param_3);

}