#ifndef C_M3D_G_TRI_H_
#define C_M3D_G_TRI_H_

#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_m3d_g_pla.h"
#include "SComponent/c_xyz.h"
#include "global.h"

class cM3dGTri {
    // private:
public:
    cM3dGPla mPlane;
    cXyz mA;
    cXyz mB;
    cXyz mC;

    bool cross(const cM3dGCyl*, Vec*) const;
    void setPos(const Vec*, const Vec*, const Vec*);
    void setBg(const Vec*, const Vec*, const Vec*, const cM3dGPla*);
    void set(const Vec*, const Vec*, const Vec*, const Vec*);
};

#endif