#ifndef __C_M3D_G_AAB_H_
#define __C_M3D_G_AAB_H_

#include "SComponent/c_xyz.h"
#include "global.h"

// Axis aligned bounding box
class cM3dGAab {
private:
    cXyz mMin;
    cXyz mMax;

public:
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
};

#endif