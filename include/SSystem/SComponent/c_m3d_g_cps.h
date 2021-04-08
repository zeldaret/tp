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
private:
    f32 unk_0x1c;

public:
    cM3dGCps(void);
    virtual ~cM3dGCps(void);
    void Set(const cXyz&, const cXyz&, f32);
    void Set(const cM3dGCpsS&);
    void SetCps(const cM3dGCps&);
    virtual void unk1(void) = 0;
    virtual void unk2(void) = 0;
    virtual void unk3(void) = 0;
    virtual void unk4(void) = 0;
    virtual void unk5(void) = 0;
    virtual void unk6(void) = 0;
};

#endif /* C_M3D_G_CPS_H */
