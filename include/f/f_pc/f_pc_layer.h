
#ifndef F_PC_LAYER_H
#define F_PC_LAYER_H

#include "global.h"
#include "SComponent/c_node.h"
#include "SComponent/c_tree.h"
#include "SComponent/c_tag.h"

struct process_node_class;

struct layer_class : public node_class {
    u32 mLayerID;
    node_lists_tree_class mNodeListTree;
    process_node_class *mpPcNode;
    node_lists_tree_class mCancelListTree;
    void *mpUnk0;
    short mCreatingCount;
    short mDeletingCount;
};

extern "C" {

void fpcLy_SetCurrentLayer(layer_class *pLayer);
layer_class * fpcLy_CurrentLayer(void);
layer_class * fpcLy_RootLayer(void);
layer_class * fpcLy_Layer(unsigned int id);
layer_class * fpcLy_Search(unsigned int id);
void fpcLy_Regist(layer_class *pLayer);

void fpcLy_CreatedMesg(layer_class *pLayer);
void fpcLy_CreatingMesg(layer_class *pLayer);
void fpcLy_DeletedMesg(layer_class *pLayer);
void fpcLy_DeletingMesg(layer_class *pLayer);
int fpcLy_IsCreatingMesg(layer_class *pLayer);
int fpcLy_IsDeletingMesg(layer_class *pLayer);

void fpcLy_IntoQueue(layer_class *pLayer, int treeListIdx, create_tag_class *pTag, int idx);
void fpcLy_ToQueue(layer_class *pLayer, int treeListIdx, create_tag_class *pTag);
void fpcLy_QueueTo(layer_class *pLayer, create_tag_class *pTag);

void fpcLy_Cancel(layer_class *pLayer);
int fpcLy_CancelMethod(layer_class *pLayer);

void fpcLy_Create(layer_class *pLayer, void *pPcNode, node_list_class *pLists, int listNum);
void fpcLy_Delete(layer_class *pLayer);

};

#endif
