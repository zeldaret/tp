#ifndef C_M3D_G_CPS_H_
#define C_M3D_G_CPS_H_

#include "SComponent/c_m3d_g_lin.h"
#include "SComponent/c_xyz.h"
#include "global.h"

struct cM3dGCpsS {
    Vec mStart;
    Vec mEnd;
    float unk_0x1c;
};

class cM3dGCps : public cM3dGLin {
private:
    float unk_0x1c;

public:
    cM3dGCps(void);
    virtual ~cM3dGCps(void);
    void Set(const cXyz&, const cXyz&, float);
    void Set(const cM3dGCpsS&);
    void SetCps(const cM3dGCps&);
};

#endif