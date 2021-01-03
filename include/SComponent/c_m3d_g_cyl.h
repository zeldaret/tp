#ifndef __C_M3D_G_CYL_H_
#define __C_M3D_G_CYL_H_

#include "SComponent/c_xyz.h"
#include "global.h"

struct cM3dGCylS;
struct cM3dGSph;

class cM3dGCyl {
public:
    cM3dGCyl(const cXyz*, float, float);
    void Set(const cM3dGCylS&);
    void Set(const cXyz&, float, float);
    void SetC(const cXyz&);
    void SetH(float);
    void SetR(float);
    bool cross(const cM3dGSph*, cXyz*) const;
    bool cross(const cM3dGCyl*, cXyz*) const;
    void calcMinMax(cXyz*, cXyz*);
};

#endif