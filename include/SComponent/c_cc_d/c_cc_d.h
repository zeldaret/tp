#ifndef C_CC_D_H_
#define C_CC_D_H_

#include "SComponent/c_m3d.h"
#include "global.h"

class cCcD_ShapeAttr {
public:
private:
    /* 0x00 */ cM3dGAab cm3dgaab;
    /* 0x1C */ void* vtable;
};

class cCcD_CpsAttr {
public:
private:
    /* 0x00 */ cCcD_ShapeAttr cccd_shapeattr;
    /* 0x20 */ cM3dGCps cm3dgcps;
};

class cCcD_CylAttr {
public:
private:
    cCcD_ShapeAttr cccd_shapeattr;
    cM3dGCyl cm3dgcyl;
};

class cCcD_DivideInfo {
public:
private:
    u8 field_0x0[12];
    void* vtable;
};

class cCcD_DivideArea {
public:
private:
    cM3dGAab cM3dGAab;
    void* vtable;
};

#endif
