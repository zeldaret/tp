#ifndef JSYSTEM_J2DGRAPH_SCREEN_H
#define JSYSTEM_J2DGRAPH_SCREEN_H

#include "dolphin/types.h"

extern u8* lbl_80451590;

class J2DScreen {
    static u8* getDataManage() { return lbl_80451590; }
};

#endif  // JSYSTEM_J2DGRAPH_SCREEN_H
