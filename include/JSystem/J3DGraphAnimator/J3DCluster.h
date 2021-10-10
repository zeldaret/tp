#ifndef J3DCLUSTER_H
#define J3DCLUSTER_H

#include "dolphin/types.h"

struct J3DDeformer;

struct J3DCluster {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ int field_0x8;
    /* 0x0C */ int field_0xc;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
    /* 0x18 */ u16 field_0x18[2];
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ J3DDeformer* mDeformer;
};

struct J3DClusterKey {};

#endif /* J3DCLUSTER_H */
