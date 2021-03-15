
#include "SComponent/c_tag.h"
#include "SComponent/c_tree.h"

int cTg_IsUse(create_tag_class* pTag) {
    return pTag->mbIsUse;
}

int cTg_SingleCutFromTree(create_tag_class* pTag) {
    if (pTag->mbIsUse == true) {
        pTag->mbIsUse = false;
        cTr_SingleCut(&pTag->mpNode);
        return true;
    } else {
        return false;
    }
}

int cTg_AdditionToTree(node_lists_tree_class* pTree, int listIdx, create_tag_class* pTag) {
    if (!pTag->mbIsUse) {
        int ret = cTr_Addition(pTree, listIdx, &pTag->mpNode);
        if (ret) {
            pTag->mbIsUse = true;
            return ret;
        }
    }

    return 0;
}

int cTg_InsertToTree(node_lists_tree_class* pTree, int listIdx, create_tag_class* pTag, int idx) {
    if (!pTag->mbIsUse) {
        int ret = cTr_Insert(pTree, listIdx, &pTag->mpNode, idx);
        if (ret) {
            pTag->mbIsUse = true;
            return ret;
        }
    }

    return 0;
}

node_class* cTg_GetFirst(node_list_class* pList) {
    create_tag_class* pTag = (create_tag_class*)cLs_GetFirst(pList);
    if (pTag != NULL) {
        pTag->mbIsUse = false;
    } else {
        pTag = NULL;
    }
    return &pTag->mpNode;
}

int cTg_SingleCut(create_tag_class* pTag) {
    if (pTag->mbIsUse == 1) {
        pTag->mbIsUse = false;
        cLs_SingleCut(&pTag->mpNode);
        return 1;
    }

    return 0;
}

int cTg_Addition(node_list_class* pList, create_tag_class* pTag) {
    if (!pTag->mbIsUse) {
        int ret = cLs_Addition(pList, &pTag->mpNode);
        if (ret) {
            pTag->mbIsUse = true;
            return ret;
        }
    }

    return 0;
}

void cTg_Create(create_tag_class* pTag, void* pData) {
    cNd_Create(&pTag->mpNode, NULL);
    pTag->mpTagData = pData;
    pTag->mbIsUse = false;
}
