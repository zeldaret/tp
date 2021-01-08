#ifndef __C_M3D_G_LIN_H_
#define __C_M3D_G_LIN_H_

#include "SComponent/c_xyz.h"
#include "global.h"

// Line
class cM3dGLin {
private:
    cXyz mStart;
    cXyz mEnd;

public:
    cM3dGLin() {}
    cM3dGLin(const cXyz&, const cXyz&);
    virtual ~cM3dGLin() {}
    void SetStartEnd(const cXyz&, const cXyz&);
    void SetStartEnd(const Vec&, const Vec&);
    void CalcPos(Vec*, float) const;
    void SetEnd(const cXyz&);
    const cXyz& Start(void) const { return mStart; }
    const cXyz& End(void) const { return mEnd; }
};

#endif