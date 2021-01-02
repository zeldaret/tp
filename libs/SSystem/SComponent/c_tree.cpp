
#include "SComponent/c_tree.h"
#include "global.h"

extern "C" {

int cTr_SingleCut(node_class* pNode) {
    return cLs_SingleCut(pNode);
}

int cTr_Addition(node_lists_tree_class* pTree, int listIdx, node_class* pNode) {
    if (listIdx >= pTree->mNumLists)
        return 0;

    return cLs_Addition(&pTree->mpLists[listIdx], pNode);
}

int cTr_Insert(node_lists_tree_class* pTree, int listIdx, node_class* pNode, int idx) {
    if (listIdx >= pTree->mNumLists)
        return 0;

    return cLs_Insert(&pTree->mpLists[listIdx], idx, pNode);
}

void cTr_Create(node_lists_tree_class* pTree, node_list_class* pLists, int numLists) {
    pTree->mpLists = pLists;
    pTree->mNumLists = numLists;

    while (numLists-- > 0)
        cLs_Create(pLists++);
}
};
