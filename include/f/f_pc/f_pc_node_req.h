#include "global.h"
#include "f/f_pc/f_pc_method_tag.h"
#include "f/f_pc/f_pc_node.h"

struct node_create_request_method_class {
    int (*mpExecuteFunc)(void *);
    int (*mpCancelFunc)(void *);
    int (*mpUnkFunc)(void *);
    int (*mpPostMethodFunc)(void *);
};

struct node_create_request : public create_tag_class {
    process_method_tag_class mProcMthCls;
    u8 unk_0x30[0xC];
    node_create_request_method_class *mpNodeCrReqMthCls;
    u8 unk_0x40[0x8];
    process_node_class *mpNodeProc;
    u8 unk_0x4C[0x4];
    layer_class *mpLayerClass;
    u32 mCreatingID;
    u16 unk_0x58;
    u8 unk_0x5A[2];
    void *unk_5C;
}; // Size: 0x60