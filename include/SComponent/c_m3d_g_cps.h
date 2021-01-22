#ifndef C_M3D_G_CPS_H_
#define C_M3D_G_CPS_H_

#include "SComponent/c_xyz.h"
#include "global.h"

struct cM3dGCpsS;

class cM3dGCps {
public:
    cM3dGCps(void);
    ~cM3dGCps(void);
    void Set(const cXyz&, const cXyz&, float);
    void Set(const cM3dGCpsS&);
    void SetCps(const cM3dGCps&);
};

#endif