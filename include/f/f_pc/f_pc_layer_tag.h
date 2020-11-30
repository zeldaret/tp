
#ifndef F_PC_LAYER_TAG_H
#define F_PC_LAYER_TAG_H

#include "global.h"
#include "SComponent/c_tag.h"

struct layer_class;

struct layer_management_tag_class : public create_tag_class {
    layer_class *mpLayer;
    s16 mNodeListID;
    s16 mNodeListIdx;
};

#endif
