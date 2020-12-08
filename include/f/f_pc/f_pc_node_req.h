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

int fpcNdRq_DoPhase(node_create_request *param_1);

}