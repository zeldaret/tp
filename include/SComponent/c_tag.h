
#ifndef SCOMPONENT_C_TAG_H
#define SCOMPONENT_C_TAG_H

#include "global.h"
#include "SComponent/c_list.h"
#include "SComponent/c_node.h"

struct create_tag_class : public node_class {
    void *mpTagData;
    s8 pad     : 7;
    s8 mbAdded : 1;
};

extern "C" {

void cTg_Addition(node_list_class *pList, create_tag_class *pTag);
void cTg_Create(create_tag_class *pTag, void *pData);

};

#endif
