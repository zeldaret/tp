/**
 * c_tree.cpp
 *
 */

#include "SSystem/SComponent/c_tree.h"
#include "SSystem/SComponent/c_list.h"

/* 80266440-80266460 0020+00 s=0 e=1 z=0  None .text      cTr_SingleCut__FP10node_class */
int cTr_SingleCut(node_class* node) {
    return cLs_SingleCut(node);
}

/* 80266460-802664A4 0044+00 s=0 e=1 z=0  None .text
 * cTr_Addition__FP21node_lists_tree_classiP10node_class        */
int cTr_Addition(node_lists_tree_class* tree, int listIdx, node_class* node) {
    if (listIdx >= tree->mNumLists)
        return 0;

    return cLs_Addition(&tree->mpLists[listIdx], node);
}

/* 802664A4-802664E8 0044+00 s=0 e=1 z=0  None .text
 * cTr_Insert__FP21node_lists_tree_classiP10node_classi         */
int cTr_Insert(node_lists_tree_class* tree, int listIdx, node_class* node, int idx) {
    if (listIdx >= tree->mNumLists)
        return 0;

    return cLs_Insert(&tree->mpLists[listIdx], idx, node);
}

/* 802664E8-80266540 0058+00 s=0 e=2 z=0  None .text
 * cTr_Create__FP21node_lists_tree_classP15node_list_classi     */
void cTr_Create(node_lists_tree_class* tree, node_list_class* lists, int numLists) {
    tree->mpLists = lists;
    tree->mNumLists = numLists;

    while (numLists-- > 0)
        cLs_Create(lists++);
}