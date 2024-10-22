
#ifndef F_PC_LAYER_H_
#define F_PC_LAYER_H_

#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_node.h"
#include "SSystem/SComponent/c_tree.h"
#include "f_pc/f_pc_base.h"

typedef struct create_tag_class create_tag_class;
typedef struct process_method_tag_class process_method_tag_class;
typedef struct process_node_class process_node_class;

typedef struct layer_class {
    /* 0x00 */ node_class mNode;
    /* 0x0C */ u32 mLayerID;
    /* 0x10 */ node_lists_tree_class mNodeListTree;
    /* 0x18 */ process_node_class* mpPcNode;
    /* 0x1C */ node_list_class mCancelList;
    struct {
        /* 0x28 */ s16 mCreatingCount;
        /* 0x2A */ s16 mDeletingCount;
    } counts;
} layer_class;

void fpcLy_SetCurrentLayer(layer_class* pLayer);
layer_class* fpcLy_CurrentLayer(void);
layer_class* fpcLy_RootLayer(void);
layer_class* fpcLy_Layer(fpc_ProcID id);
layer_class* fpcLy_Search(fpc_ProcID id);
void fpcLy_Regist(layer_class* pLayer);

void fpcLy_CreatedMesg(layer_class* pLayer);
void fpcLy_CreatingMesg(layer_class* pLayer);
void fpcLy_DeletedMesg(layer_class* pLayer);
void fpcLy_DeletingMesg(layer_class* pLayer);
BOOL fpcLy_IsCreatingMesg(layer_class* pLayer);
BOOL fpcLy_IsDeletingMesg(layer_class* pLayer);

s32 fpcLy_IntoQueue(layer_class* pLayer, int treeListIdx, create_tag_class* pTag, int idx);
s32 fpcLy_ToQueue(layer_class* pLayer, int treeListIdx, create_tag_class* pTag);
s32 fpcLy_QueueTo(layer_class* pLayer, create_tag_class* pTag);

void fpcLy_Cancel(layer_class* pLayer);
bool fpcLy_CancelMethod(process_method_tag_class* pLayer);

void fpcLy_CancelQTo(process_method_tag_class* pMthd);
s32 fpcLy_ToCancelQ(layer_class* pLayer, process_method_tag_class* pMthd);

void fpcLy_Create(layer_class* pLayer, void* pPcNode, node_list_class* pLists, int listNum);

s32 fpcLy_Delete(layer_class* pLayer);

#endif
