#ifndef D_JNT_COL_H_
#define D_JNT_COL_H_

#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "global.h"

class dJntColData_c {};

class dJntCol_c {
public:
    /* 0x00 */ dJntColData_c* mData;
    /* 0x04 */ J3DModel* mModel;
    /* 0x08 */ int field_0x8;
    /* 0x0C */ int field_0xc;
};

#endif  // D_JNT_COL_H_
