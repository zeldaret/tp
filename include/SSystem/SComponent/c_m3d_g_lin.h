#ifndef C_M3D_G_LIN_H
#define C_M3D_G_LIN_H

#include "dolphin/types.h"
#include "SSystem/SComponent/c_xyz.h"
#include "mtx_vec.h"

// Line
class cM3dGLin {
    // private:
public:
    cXyz mStart;
    cXyz mEnd;

    cM3dGLin() {}
    cM3dGLin(const cXyz&, const cXyz&);
    virtual ~cM3dGLin() {}
    void SetStartEnd(const cXyz&, const cXyz&);
    void SetStartEnd(const Vec&, const Vec&);
    void CalcPos(Vec*, f32) const;
    void CalcVec(Vec* pOut) const { PSVECSubtract(&this->mEnd, &this->mStart, pOut); }
    void SetEnd(const cXyz&);
    const cXyz& GetStartP(void) const { return mStart; }
    cXyz& GetStartP(void) { return mStart; }
    const cXyz& GetEndP(void) const { return mEnd; }
    cXyz& GetEndP(void) { return mEnd; }
};

#endif /* C_M3D_G_LIN_H */
