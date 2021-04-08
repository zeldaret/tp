#ifndef D_BG_S_ROOF_CHK_H_
#define D_BG_S_ROOF_CHK_H_

#include "d/d_bg/d_bg_s/d_bg_s_chk.h"
#include "SComponent/c_bg_s_gnd_chk.h"
#include "global.h"

class dBgS_RoofChk {
private:
    /* 0x00 */ cBgS_PolyInfo field_0x00;
    /* 0x10 */ cBgS_Chk field_0x10;
    /* 0x24 */ dBgS_Chk field_0x24;
    /* 0x3C */ cXyz m_pos;
    /* 0x48 */ int field_0x48;
    /* 0x4C */ float mNowY;
}; // Size = 0x50

class dBgS_LinkRoofChk : dBgS_RoofChk {

};

#endif