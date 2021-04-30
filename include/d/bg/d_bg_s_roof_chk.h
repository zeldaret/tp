#ifndef D_BG_D_BG_S_ROOF_CHK_H
#define D_BG_D_BG_S_ROOF_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/bg/d_bg_s_chk.h"
#include "dolphin/types.h"

class dBgS_RoofChk {
public:
    /* 80078FF4 */ dBgS_RoofChk();
    /* 80079090 */ ~dBgS_RoofChk();
    /* 80079124 */ void Init();

private:
    /* 0x00 */ cBgS_PolyInfo field_0x00;
    /* 0x10 */ cBgS_Chk field_0x10;
    /* 0x24 */ dBgS_Chk field_0x24;
    /* 0x3C */ cXyz m_pos;
    /* 0x48 */ int field_0x48;
    /* 0x4C */ float mNowY;
};  // Size = 0x50

class dBgS_LinkRoofChk : dBgS_RoofChk {};

#endif /* D_BG_D_BG_S_ROOF_CHK_H */
