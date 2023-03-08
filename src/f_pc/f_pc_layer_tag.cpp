/**
 * f_pc_layer_tag.cpp
 * Framework - Process Layer Tag
 */

#include "f_pc/f_pc_layer_tag.h"

/* 80021CD4-80021DCC 00F8+00 s=1 e=1 z=0  None .text
 * fpcLyTg_ToQueue__FP26layer_management_tag_classUiUsUs        */
s32 fpcLyTg_ToQueue(layer_management_tag_class* pTag, unsigned int layerID, u16 listID,
                    u16 listPrio) {
    if (pTag->mpLayer == NULL && layerID == -1) {
        return 0;
    } else {
        // ghidra says layerID is unsigned?
        if (layerID != -1 && layerID != -3 && pTag->mpLayer->mLayerID != layerID) {
            pTag->mpLayer = fpcLy_Layer(layerID);
        }
        if (layerID == -1 || layerID == -3) {
            s32 tmp = fpcLy_ToQueue(pTag->mpLayer, listID, &pTag->mCreateTag);
            if (tmp != 0x0) {
                pTag->mNodeListID = listID;
                pTag->mNodeListIdx = tmp - 1;
                return 1;
            }
        } else if (fpcLy_IntoQueue(pTag->mpLayer, listID, &pTag->mCreateTag, listPrio) != 0x0) {
            pTag->mNodeListID = listID;
            pTag->mNodeListIdx = listPrio;
            return 1;
        }
        return 0;
    }
}

s32 fpcLyTg_QueueTo(layer_management_tag_class* pTag) {
    if (fpcLy_QueueTo(pTag->mpLayer, &pTag->mCreateTag) == 1) {
        pTag->mpLayer = NULL;
        pTag->mNodeListID = 0xFFFF;
        pTag->mNodeListIdx = 0xFFFF;
        return 1;
    } else {
        return 0;
    }
}

/* 80021E2C-80021EB0 0084+00 s=0 e=1 z=0  None .text
 * fpcLyTg_Move__FP26layer_management_tag_classUiUsUs           */
s32 fpcLyTg_Move(layer_management_tag_class* pTag, unsigned int layerID, u16 listID, u16 listPrio) {
    layer_class* layer = fpcLy_Layer(layerID);
    if (layer == NULL) {
        return 0;
    } else if (fpcLyTg_QueueTo(pTag) == 0x1) {
        pTag->mpLayer = layer;
        return fpcLyTg_ToQueue(pTag, layerID, listID, listPrio);
    } else {
        return 0;
    }
}

/* ############################################################################################## */
/* 803A3A00-803A3A20 001C+04 s=1 e=0 z=0  None .data      crear$2239 */
layer_management_tag_class crear = {
    NULL, NULL, NULL, NULL, 0, NULL, 0xFFFF, 0xFFFF,
};

/* 80021EB0-80021F64 00B4+00 s=0 e=1 z=0  None .text
 * fpcLyTg_Init__FP26layer_management_tag_classUiPv             */
s32 fpcLyTg_Init(layer_management_tag_class* pTag, unsigned int param2, void* param3) {
    layer_class* layer;
    *pTag = crear;
    cTg_Create(&pTag->mCreateTag, param3);
    layer = fpcLy_Layer(param2);
    if (layer != NULL) {
        pTag->mpLayer = layer;
        return 1;
    } else {
        return 0;
    }
}
