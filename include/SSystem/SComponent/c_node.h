#ifndef C_NODE_H
#define C_NODE_H


typedef struct node_class {
    struct node_class* mpPrevNode;
    void* mpData;
    struct node_class* mpNextNode;
} node_class;

void cNd_Join(node_class* pA, node_class* pB);
int cNd_LengthOf(node_class* pNode);
node_class* cNd_First(node_class* pNode);
node_class* cNd_Last(node_class* pNode);
node_class* cNd_Order(node_class* pNode, int idx);
void cNd_SingleCut(node_class* pNode);
void cNd_Cut(node_class* pNode);
void cNd_Addition(node_class* pA, node_class* pB);
void cNd_Insert(node_class* pA, node_class* pB);
void cNd_SetObject(node_class* pNode, void* pData);
void cNd_ClearObject(node_class* pNode);
void cNd_ForcedClear(node_class* pNode);
void cNd_Create(node_class* pNode, void* pData);

#define NODE_GET_PREV(pNode) (pNode ? pNode->mpPrevNode : NULL)
#define NODE_GET_NEXT(pNode) (pNode ? pNode->mpNextNode : NULL)

#endif /* C_NODE_H */
