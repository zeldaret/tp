#ifndef C_M3D_G_CYL_H_
#define C_M3D_G_CYL_H_

#include "SComponent/c_xyz.h"
#include "global.h"

// Cylinder
struct cM3dGCylS {
    cXyz mCenter;
    f32 mRadius;
    f32 mHeight;
};
class cM3dGSph;

class cM3dGCyl : public cM3dGCylS {
public:
    cM3dGCyl(const cXyz*, f32, f32);
    virtual ~cM3dGCyl();
    void Set(const cM3dGCylS&);
    void Set(const cXyz&, f32, f32);
    void SetC(const cXyz&);
    void SetH(f32);
    void SetR(f32);
    bool cross(const cM3dGSph*, cXyz*) const;
    bool cross(const cM3dGCyl*, cXyz*) const;
    void calcMinMax(cXyz*, cXyz*);
    const cXyz& GetCP(void) const { return mCenter; }
    f32 GetR(void) const { return mRadius; }
    f32 GetH(void) const { return mHeight; }
};

#endif
