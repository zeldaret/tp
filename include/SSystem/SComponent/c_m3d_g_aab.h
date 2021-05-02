#ifndef C_M3D_G_AAB_H
#define C_M3D_G_AAB_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

// Axis aligned bounding box
class cM3dGAab {
private:
public:
    cXyz mMin;
    cXyz mMax;

    virtual void test();  // temp to build OK, remove later
    virtual ~cM3dGAab();
    void Set(const cXyz*, const cXyz*);
    bool CrossY(const cXyz*) const;
    bool UnderPlaneYUnder(f32) const;
    bool TopPlaneYUnder(f32) const;
    void ClearForMinMax(void);
    void SetMinMax(const cXyz&);
    void SetMinMax(const cM3dGAab&);
    void SetMin(const cXyz&);
    void SetMax(const cXyz&);
    void CalcCenter(cXyz*) const;
    void PlusR(f32);
    const cXyz& getMaxP(void) const { return mMax; }
    const cXyz& getMinP(void) const { return mMin; }
    const f32 GetMaxX(void) const { return mMax.GetX(); }
    const f32 GetMaxY(void) const { return mMax.GetY(); }
    const f32 GetMaxZ(void) const { return mMax.GetZ(); }
    const f32 GetMinX(void) const { return mMin.GetX(); }
    const f32 GetMinY(void) const { return mMin.GetY(); }
    const f32 GetMinZ(void) const { return mMin.GetZ(); }
};

#endif /* C_M3D_G_AAB_H */
