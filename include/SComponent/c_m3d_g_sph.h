#ifndef __C_M3D_G_SPH_H_
#define __C_M3D_G_SPH_H_

#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_xyz.h"
#include "global.h"

struct cM3dGSphS;

class cM3dGSph {
public:
    void SetC(const cXyz&);
    void Set(const cXyz&, float);
    void Set(const cM3dGSphS&);
    void SetR(float);
    bool cross(const cM3dGSph*, cXyz*) const;
    bool cross(const cM3dGCyl*, cXyz*) const;
    void GetMinMaxCube(cXyz&, cXyz&) const;
};

#endif