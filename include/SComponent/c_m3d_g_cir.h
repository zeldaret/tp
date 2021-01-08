#ifndef __C_M3D_G_CIR_H_
#define __C_M3D_G_CIR_H_

#include "global.h"

class cM2dGCir {
public:
    float mPosX;
    float mPosY;
    float mRadius;
    cM2dGCir() {}
    virtual ~cM2dGCir() {}
};

class cM3dGCir : public cM2dGCir {
    float mPosZ;

public:
    cM3dGCir(void);
    virtual ~cM3dGCir(void);
    void Set(float, float, float, float);
};

#endif