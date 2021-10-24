#ifndef C_BG_S_LIN_CHK_H
#define C_BG_S_LIN_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_m3d_g_lin.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

class cBgS_LinChk : public cBgS_Chk, public cBgS_PolyInfo {
private:
    /* 0x024 */ cM3dGLin mLinP;
    /* 0x040 */ cXyz field_0x40;
    /* 0x04C */ u32 field_0x4c;
    /* 0x050 */ bool mPreWallChk;
    /* 0x051 */ bool mPreGroundChk;
    /* 0x052 */ bool mPreRoofChk;
    /* 0x053 */ u8 mFrontFlag;
    /* 0x054 */ u8 mBackFlag;

public:
    cBgS_LinChk();
    void ct();
    void Set2(const cXyz*, const cXyz*, unsigned int);
    void PreCalc();

    virtual ~cBgS_LinChk();
};

#endif /* C_BG_S_LIN_CHK_H */
