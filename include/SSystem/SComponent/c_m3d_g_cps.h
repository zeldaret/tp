#ifndef C_M3D_G_CPS_H
#define C_M3D_G_CPS_H

#include "SSystem/SComponent/c_m3d_g_lin.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

struct cM3dGCpsS {
    Vec mStart;
    Vec mEnd;
    f32 unk_0x1c;
};

class cM3dGCps : public cM3dGLin {
public:
    /* 0x1C */ f32 unk_0x1c;

    cM3dGCps(void);
    virtual ~cM3dGCps(void);
    void Set(const cXyz&, const cXyz&, f32);
    void Set(const cM3dGCpsS&);
    void SetCps(const cM3dGCps&);
};  // Size = 0x20

STATIC_ASSERT(0x20 == sizeof(cM3dGCps));

#endif /* C_M3D_G_CPS_H */
