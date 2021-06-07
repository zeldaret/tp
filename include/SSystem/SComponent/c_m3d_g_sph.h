#ifndef C_M3D_G_SPH_H_
#define C_M3D_G_SPH_H_

#include "SSystem/SComponent/c_m3d.h"
#include "SSystem/SComponent/c_m3d_g_cyl.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

struct cM3dGSphS {
    Vec mCenter;
    f32 mRadius;
};

class cM3dGSph {
private:
public:
    /* 0x00 */ cXyz mCenter;
    /* 0x0C */ f32 mRadius;
    /* 0x10 vtable */

    virtual void test();  // temp to build OK, remove later
    virtual ~cM3dGSph();
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

    bool Cross(const cM3dGSph* other, f32* f) const { return cM3d_Cross_SphSph(this, other, f); }
    bool Cross(const cM3dGCps* cps, cXyz* xyz) const { return cM3d_Cross_CpsSph(*cps, *this, xyz); }
};  // Size = 0x14

STATIC_ASSERT(0x14 == sizeof(cM3dGSph));

// additional symbols needed for cM3dGSph
extern "C" {
void Set__8cM3dGSphFRC4cXyzf(void);
}

#endif