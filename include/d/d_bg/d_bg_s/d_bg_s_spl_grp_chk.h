#ifndef D_BG_S_SPL_GRP_CHK_H_
#define D_BG_S_SPL_GRP_CHK_H_

#include "SComponent/c_bg_s_chk.h"
#include "SComponent/c_bg_s_poly_info.h"
#include "SComponent/c_xyz.h"
#include "d/d_bg/d_bg_s/d_bg_s_chk.h"
#include "global.h"

class dBgS_SplGrpChk {
private:
    /* 0x00 */ cBgS_PolyInfo field_0x00;
    /* 0x10 */ cBgS_Chk field_0x10;
    /* 0x24 */ dBgS_Chk field_0x24;
    /* 0x3C */ cXyz m_ground;
    /* 0x48 */ float mRoof;
    /* 0x4C */ float mHeight;
    /* 0x50 */ int field_0x50;
};  // Size = 0x54

#endif