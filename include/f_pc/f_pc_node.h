
#ifndef F_PC_NODE_H_
#define F_PC_NODE_H_

#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_method.h"
#include "f_pc/f_pc_profile.h"

typedef struct nodedraw_method_class {
    process_method_class mBase;
    process_method_func mpDrawFunc;
} nodedraw_method_class;

typedef struct process_node_class {
    /* 0x00 */ base_process_class mBase;
    /* 0xB8 */ nodedraw_method_class* mpNodeMtd;
    /* 0xBC */ layer_class mLayer;
    /* 0xE8 */ node_list_class mLayerNodeLists[16];
    /* 0x1A8 */ s8 mUnk0;
} process_node_class;

typedef struct node_process_profile_definition {
    /* 0x00 */ process_profile_definition mBase;
    /* 0x1C */ process_method_class* mSubMtd; // Subclass methods
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
extern nodedraw_method_class g_fpcNd_Method;

#endif
