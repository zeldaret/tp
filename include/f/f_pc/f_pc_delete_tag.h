
#ifndef F_PC_DELETE_TAG_H
#define F_PC_DELETE_TAG_H

#include "global.h"
#include "SComponent/c_tag.h"

struct layer_class;

struct delete_tag_class : public create_tag_class {
    layer_class *mpLayer;
    s16 mUnk0;
};

extern "C" {

};

#endif
