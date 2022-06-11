
#ifndef F_PC_NODE_H_
#define F_PC_NODE_H_

#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_method.h"

typedef struct nodedraw_method_class {
    process_method_class mBase;
    process_method_func mNodedrawFunc;
} nodedraw_method_class;

typedef struct process_node_class {
    base_process_class mBase;
    nodedraw_method_class* mpNodeMtd;
    layer_class mLayer;
    node_list_class mLayerNodeLists[16];
    s8 mUnk0;
} process_node_class;

typedef struct node_process_profile_definition {
    process_profile_definition mBase;
    /* nodedraw_method_class* mNDrwMthCls;
    s16 unk20;
    u8 unk22[2];
    s32 unk24; */
} node_process_profile_definition;

s32 fpcNd_DrawMethod(nodedraw_method_class* pNodeMethod, void* pData);
s32 fpcNd_Draw(process_node_class* pProcNode);
s32 fpcNd_Execute(process_node_class* pProcNode);
void* fpcNd_IsCreatingFromUnder(void* pProcNode);
s32 fpcNd_IsDeleteTiming(process_node_class* pProcNode);
s32 fpcNd_IsDelete(process_node_class* pProcNode);
s32 fpcNd_Delete(process_node_class* pProcNode);
s32 fpcNd_Create(process_node_class* pProcNode);

extern int g_fpcNd_type;

#endif
