#ifndef C_M3D_G_SPH_H_
#define C_M3D_G_SPH_H_

#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_xyz.h"
#include "global.h"

struct cM3dGSphS {
    Vec mCenter;
    f32 mRadius;
};

class cM3dGSph {
private:
public:
    cXyz mCenter;
    f32 mRadius;

    void SetC(const cXyz&);
    void Set(const cXyz&, f32);
    void Set(const cM3dGSphS&);
    void SetR(f32);
    bool cross(const cM3dGSph*, cXyz*) const;
    bool cross(const cM3dGCyl*, cXyz*) const;
    void GetMinMaxCube(cXyz&, cXyz&) const;
    const cXyz& GetC(void) const { return mCenter; }
    const f32 GetR(void) const { return mRadius; }
    f32 GetCX(void) const { return mCenter.GetX(); }
    f32 GetCY(void) const { return mCenter.GetY(); }
    f32 GetCZ(void) const { return mCenter.GetZ(); }
};

#endif