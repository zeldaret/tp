#include "global.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_layer.h"

extern "C" {
    s32 fpcLyTg_ToQueue(layer_management_tag_class *pTag, u32 layerID, u16 listID, u16 listPrio) {
        if (pTag->mpLayer == NULL && layerID == -1) {
           return 0;
        } else {
            // ghidra says layerID is unsigned?
            if (layerID != -1 && layerID != -3 && pTag->mpLayer->mLayerID != layerID) {
                pTag->mpLayer = fpcLy_Layer(layerID);
            }
            if (layerID == -1 || layerID == -3) {
                int tmp = fpcLy_ToQueue(pTag->mpLayer, listID, &pTag->mCreateTag);
                if (tmp != 0x0) {
                    pTag->mNodeListID = listID;
                    pTag->mNodeListIdx = tmp - 1;
                    return 1;
                }
            } else if (fpcLy_IntoQueue(pTag->mpLayer,listID,&pTag->mCreateTag,listPrio) != 0x0) {
                pTag->mNodeListID = listID;
                pTag->mNodeListIdx = listPrio;
                return 1;
            }
            return 0;
        }
    }

    s32 fpcLyTg_QueueTo(layer_management_tag_class *pTag) {
        if (fpcLy_QueueTo(pTag->mpLayer,&pTag->mCreateTag) == 1) {
            pTag->mpLayer = NULL;
            pTag->mNodeListID = -1; // only matches when unsigned
            pTag->mNodeListIdx = -1;
            return 1;
        } else {
            return 0;
        }
    }

    s32 fpcLyTg_Move(layer_management_tag_class * pTag, u32 layerID, u16 listID, u16 listPrio) {
        layer_class *layer = fpcLy_Layer(layerID);
        if (layer == NULL) {
            return 0;
        }
        else if (fpcLyTg_QueueTo(pTag) == 0x1) {
            pTag->mpLayer = layer;
            return fpcLyTg_ToQueue(pTag,layerID,listID,listPrio);
        } else {
            return 0;
        }
    }

    extern layer_management_tag_class lbl_803A3A00;
    s32 fpcLyTg_Init(layer_management_tag_class * pTag, u32 param2, void * param3) {
        *pTag = lbl_803A3A00;
        cTg_Create(&pTag->mCreateTag, param3); 
        layer_class* layer = fpcLy_Layer(param2);
        if (layer != NULL) {
            pTag->mpLayer = layer;
            return 1;
        } else {
            return 0;
        }
    }
}