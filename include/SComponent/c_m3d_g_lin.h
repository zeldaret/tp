#ifndef __C_M3D_G_LIN_H_
#define __C_M3D_G_LIN_H_

#include "SComponent/c_xyz.h"
#include "global.h"

class cM3dGLin {
    cM3dGLin(const cXyz&, const cXyz&);
    void SetStartEnd(const cXyz&, const cXyz&);
    void SetStartEnd(const Vec&, const Vec&);
    void CalcPos(Vec*, float) const;
    void SetEnd(const cXyz&);
};

#endif