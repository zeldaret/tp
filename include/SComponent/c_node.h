
#pragma once

struct node_class {
    node_class *mpPrevNode;
    void *mpData;
    node_class *mpNextNode;
};

extern "C" {

void cNd_Join(node_class *pA, node_class *pB);
int cNd_LengthOf(node_class *pNode);
node_class * cNd_First(node_class *pNode);
node_class * cNd_Last(node_class *pNode);
node_class * cNd_Order(node_class *pNode, int idx);
void cNd_SingleCut(node_class *pNode);
void cNd_Cut(node_class *pNode);
void cNd_Addition(node_class *pA, node_class *pB);
void cNd_Insert(node_class *pA, node_class *pB);
void cNd_SetObject(node_class *pNode, void *pData);
void cNd_ClearObject(node_class *pNode);
void cNd_ForcedClear(node_class *pNode);
void cNd_Create(node_class *pNode, void *pData);

};
