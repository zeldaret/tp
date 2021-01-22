#ifndef __C_M3D_G_AAB_H_
#define __C_M3D_G_AAB_H_

#include "SComponent/c_xyz.h"
#include "global.h"

// Axis aligned bounding box
class cM3dGAab {
private:
public:
    cXyz mMin;
    cXyz mMax;

    virtual ~cM3dGAab();
    void Set(const cXyz*, const cXyz*);
    bool CrossY(const cXyz*) const;
    bool UnderPlaneYUnder(float) const;
    bool TopPlaneYUnder(float) const;
    void ClearForMinMax(void);
    void SetMinMax(const cXyz&);
    void SetMinMax(const cM3dGAab&);
    void SetMin(const cXyz&);
    void SetMax(const cXyz&);
    void CalcCenter(cXyz*) const;
    void PlusR(float);
    const cXyz& getMaxP(void) const { return mMax; }
    const cXyz& getMinP(void) const { return mMin; }
    const float GetMaxX(void) const { return mMax.GetX(); }
    const float GetMaxY(void) const { return mMax.GetY(); }
    const float GetMaxZ(void) const { return mMax.GetZ(); }
    const float GetMinX(void) const { return mMin.GetX(); }
    const float GetMinY(void) const { return mMin.GetY(); }
    const float GetMinZ(void) const { return mMin.GetZ(); }
};

#endif