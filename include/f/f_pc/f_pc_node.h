
#ifndef F_PC_NODE_H
#define F_PC_NODE_H

#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_layer.h"

struct nodedraw_method_class : public process_method_class {
    process_method_func mNodedrawFunc;
};

struct process_node_class : public base_process_class {
    nodedraw_method_class *mpNodeMtd;
    layer_class mLayer;
    node_list_class mLayerNodeLists[16];
    s8 mUnk0;
};


extern "C" {

s32 fpcNd_DrawMethod(nodedraw_method_class *pNodeMethod, void* pData);
s32 fpcNd_Draw(process_node_class *pProcNode);
s32 fpcNd_Execute(process_node_class *pProcNode);
void* fpcNd_IsCreatingFromUnder(process_node_class* pProcNode);
s32 fpcNd_IsDeleteTiming(process_node_class* pProcNode);
s32 fpcNd_IsDelete(process_node_class* pProcNode);
s32 fpcNd_Delete(process_node_class* pProcNode);
s32 fpcNd_Create(process_node_class* pProcNode);

};

#endif
