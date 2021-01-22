#ifndef C_M3D_G_CYL_H_
#define C_M3D_G_CYL_H_

#include "SComponent/c_xyz.h"
#include "global.h"

// Cylinder
struct cM3dGCylS {
    cXyz mCenter;
    float mRadius;
    float mHeight;
};
class cM3dGSph;

class cM3dGCyl : public cM3dGCylS {
public:
    cM3dGCyl(const cXyz*, float, float);
    virtual ~cM3dGCyl();
    void Set(const cM3dGCylS&);
    void Set(const cXyz&, float, float);
    void SetC(const cXyz&);
    void SetH(float);
    void SetR(float);
    bool cross(const cM3dGSph*, cXyz*) const;
    bool cross(const cM3dGCyl*, cXyz*) const;
    void calcMinMax(cXyz*, cXyz*);
    const cXyz& GetCP(void) const { return mCenter; }
    float GetR(void) const { return mRadius; }
    float GetH(void) const { return mHeight; }
};

#endif