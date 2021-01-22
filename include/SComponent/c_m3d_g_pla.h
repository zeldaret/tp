#ifndef C_M3C_G_PLA_H_
#define C_M3C_G_PLA_H_

#include "SComponent/c_xyz.h"
#include "global.h"

// Plane with a normal
class cM3dGPla {
public:
    cXyz mNormal;
    float mD;
    cM3dGPla(const cXyz*, float);
    virtual ~cM3dGPla();
    bool crossInfLin(const cXyz&, const cXyz&, cXyz&) const;
    void SetupNP0(const Vec&, const Vec&);
    void SetupNP(const Vec&, const Vec&);
    bool getCrossY(const cXyz&, float*) const;
    bool getCrossYLessD(const Vec&, float*) const;
    void Set(const cM3dGPla*);
    float getPlaneFunc(const Vec* pPoint) const { return mD + PSVECDotProduct(&mNormal, pPoint); }
};

#endif