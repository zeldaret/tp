
#ifndef F_PC_NODE_H
#define F_PC_NODE_H

#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_method.h"

struct process_node_class : public base_process_class {
    process_method_class* mpNodeMtd;
    layer_class mLayer;
    node_list_class mLayerNodeLists[16];
    u8 mUnk0;
};

extern "C" {

int fpcNd_Create(process_node_class* pNode);
bool fpcNd_IsDeleteTiming(void);
};

#endif
