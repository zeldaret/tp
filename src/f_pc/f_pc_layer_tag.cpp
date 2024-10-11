/**
 * f_pc_layer_tag.cpp
 * Framework - Process Layer Tag
 */

#include "f_pc/f_pc_layer_tag.h"
#include "f_pc/f_pc_layer.h"

/* 80021CD4-80021DCC 00F8+00 s=1 e=1 z=0  None .text
 * fpcLyTg_ToQueue__FP26layer_management_tag_classUiUsUs        */
s32 fpcLyTg_ToQueue(layer_management_tag_class* i_LyTag, fpc_ProcID i_layerID, u16 i_listID,
                    u16 i_listPriority) {
    if (i_LyTag->mpLayer == NULL && i_layerID == -1) {
        return 0;
    } else {
        // ghidra says i_layerID is unsigned?
        if (i_layerID != -1 && i_layerID != -3 && i_LyTag->mpLayer->mLayerID != i_layerID) {
            i_LyTag->mpLayer = fpcLy_Layer(i_layerID);
        }
        if (i_layerID == -1 || i_layerID == -3) {
            s32 tmp = fpcLy_ToQueue(i_LyTag->mpLayer, i_listID, &i_LyTag->mCreateTag);
            if (tmp != 0) {
                i_LyTag->mNodeListID = i_listID;
                i_LyTag->mNodeListIdx = tmp - 1;
                return 1;
            }
        } else if (fpcLy_IntoQueue(i_LyTag->mpLayer, i_listID, &i_LyTag->mCreateTag,
                                   i_listPriority) != 0)
        {
            i_LyTag->mNodeListID = i_listID;
            i_LyTag->mNodeListIdx = i_listPriority;
            return 1;
        }
        return 0;
    }
}

s32 fpcLyTg_QueueTo(layer_management_tag_class* i_LyTag) {
    if (fpcLy_QueueTo(i_LyTag->mpLayer, &i_LyTag->mCreateTag) == 1) {
        i_LyTag->mpLayer = NULL;
        i_LyTag->mNodeListID = 0xFFFF;
        i_LyTag->mNodeListIdx = 0xFFFF;
        return 1;
    } else {
        return 0;
    }
}

/* 80021E2C-80021EB0 0084+00 s=0 e=1 z=0  None .text
 * fpcLyTg_Move__FP26layer_management_tag_classUiUsUs           */
s32 fpcLyTg_Move(layer_management_tag_class* i_LyTag, fpc_ProcID i_layerID, u16 i_listID,
                 u16 i_listPriority) {
    layer_class* layer = fpcLy_Layer(i_layerID);
    if (layer == NULL) {
        return 0;
    } else if (fpcLyTg_QueueTo(i_LyTag) == 0x1) {
        i_LyTag->mpLayer = layer;
        return fpcLyTg_ToQueue(i_LyTag, i_layerID, i_listID, i_listPriority);
    } else {
        return 0;
    }
}

/* 80021EB0-80021F64 00B4+00 s=0 e=1 z=0  None .text
 * fpcLyTg_Init__FP26layer_management_tag_classUiPv             */
s32 fpcLyTg_Init(layer_management_tag_class* i_LyTag, fpc_ProcID i_id, void* i_data) {
    static layer_management_tag_class crear = {
        NULL, NULL, NULL, NULL, 0, NULL, 0xFFFF, 0xFFFF,
    };

    layer_class* layer;
    *i_LyTag = crear;
    cTg_Create(&i_LyTag->mCreateTag, i_data);
    layer = fpcLy_Layer(i_id);
    if (layer != NULL) {
        i_LyTag->mpLayer = layer;
        return 1;
    } else {
        return 0;
    }
}
