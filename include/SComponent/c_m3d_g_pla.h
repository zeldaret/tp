#ifndef __C_M3C_G_PLA_H_
#define __C_M3C_G_PLA_H_

#include "SComponent/c_xyz.h"
#include "global.h"

class cM3dGPla {
    cM3dGPla(const cXyz*, float);
    void crossInfLin(const cXyz&, const cXyz&, cXyz&) const;
    void SetupNP0(const Vec&, const Vec&);
    void SetupNP(const Vec&, const Vec&);
    bool getCrossY(const cXyz&, float*) const;
    bool getCrossYLessD(const Vec&, float*) const;
    void Set(const cM3dGPla*);
};

#endif