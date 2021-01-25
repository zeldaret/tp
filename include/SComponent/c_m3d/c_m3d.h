#ifndef C_M3D_H_
#define C_M3D_H_

#include "SComponent/c_xyz/c_xyz.h"
#include "global.h"

class cM3dGLin_members {
public:
private:
    cXyz start;
    cXyz end;
};

class cM3dGCps {
public:
private:
    cM3dGLin_members base;
    void* vtable;
    float field_0x1c;
};

class cM3dGAab { /* Axis-aligned bounding box */
public:
private:
    cXyz min;
    cXyz max;
    void* vtable;
};

#endif