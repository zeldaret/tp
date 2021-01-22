#ifndef C_M3D_G_SPH_H_
#define C_M3D_G_SPH_H_

#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_xyz.h"
#include "global.h"

struct cM3dGSphS {
    Vec mCenter;
    float mRadius;
};

class cM3dGSph {
private:
public:
    cXyz mCenter;
    float mRadius;

    void SetC(const cXyz&);
    void Set(const cXyz&, float);
    void Set(const cM3dGSphS&);
    void SetR(float);
    bool cross(const cM3dGSph*, cXyz*) const;
    bool cross(const cM3dGCyl*, cXyz*) const;
    void GetMinMaxCube(cXyz&, cXyz&) const;
    const cXyz& GetC(void) const { return mCenter; }
    const float GetR(void) const { return mRadius; }
    float GetCX(void) const { return mCenter.GetX(); }
    float GetCY(void) const { return mCenter.GetY(); }
    float GetCZ(void) const { return mCenter.GetZ(); }
};

#endif