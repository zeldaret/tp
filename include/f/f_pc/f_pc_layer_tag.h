
#ifndef F_PC_LAYER_TAG_H
#define F_PC_LAYER_TAG_H

#include "global.h"
#include "SComponent/c_tag.h"

struct layer_class;

struct layer_management_tag_class {
    create_tag_class mCreateTag;
    layer_class *mpLayer;
    u16 mNodeListID;
    u16 mNodeListIdx;
};

extern "C" {
    s32 fpcLyTg_QueueTo(layer_management_tag_class *pTag);
    s32 fpcLyTg_ToQueue(layer_management_tag_class *pTag, u32 layerID, u16 listID, u16 listPrio);
    s32 fpcLyTg_Move(layer_management_tag_class *, u32, u16, u16);
    s32 fpcLyTg_Init(layer_management_tag_class *, u32, void *);
}

#endif
