
#ifndef F_PC_LAYER_TAG_H_
#define F_PC_LAYER_TAG_H_

#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_layer.h"
#include "global.h"

typedef struct layer_management_tag_class {
    create_tag_class mCreateTag;
    layer_class* mpLayer;
    u16 mNodeListID;
    u16 mNodeListIdx;
} layer_management_tag_class;

s32 fpcLyTg_QueueTo(layer_management_tag_class* pTag);
s32 fpcLyTg_ToQueue(layer_management_tag_class* pTag, unsigned int layerID, u16 listID,
                    u16 listPrio);
s32 fpcLyTg_Move(layer_management_tag_class*, unsigned int, u16, u16);
s32 fpcLyTg_Init(layer_management_tag_class*, unsigned int, void*);

#endif
