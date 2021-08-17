#ifndef C_M3C_G_PLA_H_
#define C_M3C_G_PLA_H_

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

// Plane with a normal
class cM3dGPla {
public:
    cXyz mNormal;
    f32 mD;
    cM3dGPla() {}
    cM3dGPla(const cXyz*, f32);
    virtual ~cM3dGPla() {}
    bool crossInfLin(const cXyz&, const cXyz&, cXyz&) const;
    void SetupNP0(const Vec&, const Vec&);
    void SetupNP(const Vec&, const Vec&);
    bool getCrossY(const cXyz&, f32*) const;
    bool getCrossYLessD(const Vec&, f32*) const;
    void Set(const cM3dGPla*);
    f32 getPlaneFunc(const Vec* pPoint) const { return mD + PSVECDotProduct(&mNormal, pPoint); }
    const cXyz& GetNP() const { return mNormal; }
    f32 GetD() const { return mD; }
};

#endif