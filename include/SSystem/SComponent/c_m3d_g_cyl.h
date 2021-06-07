#ifndef C_M3D_G_CYL_H
#define C_M3D_G_CYL_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

// Cylinder
struct cM3dGCylS {
    /* 0x00 */ cXyz mCenter;
    /* 0x0C */ f32 mRadius;
    /* 0x10 */ f32 mHeight;
};  // Size = 0x14
class cM3dGSph;

class cM3dGCyl : public cM3dGCylS {
    /* 0x14 vtable */
public:
    cM3dGCyl(const cXyz*, f32, f32);
    virtual void test();  // temp to build OK, remove later
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
};  // Size = 0x18

STATIC_ASSERT(0x18 == sizeof(cM3dGCyl));

#endif /* C_M3D_G_CYL_H */
