/**
 * c_tag.cpp
 *
 */

#include "SSystem/SComponent/c_tag.h"
#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_tree.h"

/* 80266880-8026688C 000C+00 s=0 e=3 z=0  None .text      cTg_IsUse__FP16create_tag_class */
int cTg_IsUse(create_tag_class* tag) {
    return tag->mbIsUse;
}

/* 8026688C-802668CC 0040+00 s=0 e=4 z=0  None .text cTg_SingleCutFromTree__FP16create_tag_class
 */
int cTg_SingleCutFromTree(create_tag_class* tag) {
    if (tag->mbIsUse == true) {
        tag->mbIsUse = false;
        cTr_SingleCut(&tag->mpNode);
        return true;
    } else {
        return false;
    }
}

/* 802668CC-8026691C 0050+00 s=0 e=3 z=0  None .text
 * cTg_AdditionToTree__FP21node_lists_tree_classiP16create_tag_class */
int cTg_AdditionToTree(node_lists_tree_class* tree, int listIdx, create_tag_class* tag) {
    if (!tag->mbIsUse) {
        int ret = cTr_Addition(tree, listIdx, &tag->mpNode);
        if (ret) {
            tag->mbIsUse = true;
            return ret;
        }
    }

    return 0;
}

/* 8026691C-8026696C 0050+00 s=0 e=1 z=0  None .text
 * cTg_InsertToTree__FP21node_lists_tree_classiP16create_tag_classi */
int cTg_InsertToTree(node_lists_tree_class* tree, int listIdx, create_tag_class* tag, int idx) {
    if (!tag->mbIsUse) {
        int ret = cTr_Insert(tree, listIdx, &tag->mpNode, idx);
        if (ret) {
            tag->mbIsUse = true;
            return ret;
        }
    }

    return 0;
}

/* 8026696C-802669A4 0038+00 s=0 e=1 z=0  None .text      cTg_GetFirst__FP15node_list_class */
node_class* cTg_GetFirst(node_list_class* list) {
    create_tag_class* tag = (create_tag_class*)cLs_GetFirst(list);
    if (tag != NULL) {
        tag->mbIsUse = false;
    } else {
        tag = NULL;
    }
    return &tag->mpNode;
}

/* 802669A4-802669E4 0040+00 s=0 e=7 z=0  None .text      cTg_SingleCut__FP16create_tag_class */
int cTg_SingleCut(create_tag_class* tag) {
    if (tag->mbIsUse == 1) {
        tag->mbIsUse = false;
        cLs_SingleCut(&tag->mpNode);
        return 1;
    }

    return 0;
}

/* 802669E4-80266A34 0050+00 s=0 e=7 z=0  None .text
 * cTg_Addition__FP15node_list_classP16create_tag_class         */
int cTg_Addition(node_list_class* list, create_tag_class* tag) {
    if (!tag->mbIsUse) {
        int ret = cLs_Addition(list, &tag->mpNode);
        if (ret) {
            tag->mbIsUse = true;
            return ret;
        }
    }

    return 0;
}

/* 80266A34-80266A7C 0048+00 s=0 e=10 z=0  None .text      cTg_Create__FP16create_tag_classPv */
void cTg_Create(create_tag_class* tag, void* data) {
    cNd_Create(&tag->mpNode, NULL);
    tag->mpTagData = data;
    tag->mbIsUse = false;
}
