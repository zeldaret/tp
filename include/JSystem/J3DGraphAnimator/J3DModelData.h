#ifndef J3DMODELDATA_H
#define J3DMODELDATA_H

#include "dolphin/types.h"

class J3DModelData {
    /* 80325D88 */ void clear();
    /* 80325DA0 */ J3DModelData();
    /* 80325E14 */ void newSharedDisplayList(u32);
    /* 80325EC8 */ void indexToPtr();
    /* 80325F94 */ void makeSharedDL();
    /* 8032600C */ void simpleCalcMaterial(u16, f32 (*)[4]);
    /* 803260CC */ void syncJ3DSysPointers() const;
    /* 803260F8 */ void syncJ3DSysFlags() const;
    /* 8032617C */ ~J3DModelData();
};

#endif /* J3DMODELDATA_H */
