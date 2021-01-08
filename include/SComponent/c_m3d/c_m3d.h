#ifndef __C_M3D_H_
#define __C_M3D_H_

#include "SComponent/c_xyz/c_xyz.h"
#include "global.h"

class cM3dGLin {
private:
    cXyz start;
    cXyz end;

public:
    cM3dGLin(const cXyz&, const cXyz&);
    void SetStartEnd(const cXyz&, const cXyz&);
    void SetStartEnd(const Vec&, const Vec&);
    void CalcPos(Vec*, float) const;
    void SetEnd(const cXyz&);
};

class cM3dGCps {
    // public:
private:
    cM3dGLin base;
    void* vtable;
    float field_0x1c;
};

class cM3dGCyl { /* Cylinder class */
    // public:
private:
    cXyz center;
    float radius;
    float height;
    void* vtable;
};

class cM3dGAab { /* Axis-aligned bounding box */
    // public:
private:
    cXyz min;
    cXyz max;
    void* vtable;
};

#endif