#ifndef D_BG_D_BG_S_ROOF_CHK_H
#define D_BG_D_BG_S_ROOF_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/bg/d_bg_s_chk.h"
#include "dolphin/types.h"

class dBgS_RoofChk : public cBgS_PolyInfo, public cBgS_Chk, public dBgS_Chk {
public:
    /* 80078FF4 */ dBgS_RoofChk();
    /* 80079124 */ void Init();
    /* 800B146C */ void SetPos(cXyz const&);

    /* 80079090 */ virtual ~dBgS_RoofChk();

    void SetNowY(f32 y) { mNowY = y; }

private:
    /* 0x3C */ cXyz m_pos;
    /* 0x48 */ int field_0x48;
    /* 0x4C */ f32 mNowY;
};  // Size: 0x50

class dBgS_LinkRoofChk : dBgS_RoofChk {
public:
    /* 80140E40 */ virtual ~dBgS_LinkRoofChk();
};

#endif /* D_BG_D_BG_S_ROOF_CHK_H */
