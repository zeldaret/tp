#ifndef D_BG_S_GND_CHK_H_
#define D_BG_S_GND_CHK_H_

#include "SComponent/c_bg_s_gnd_chk.h"
#include "d/d_bg/d_bg_s/d_bg_s_chk.h"
#include "global.h"

class dBgS_GndChk : cBgS_GndChk {
private:
    /* 0x3C */ dBgS_Chk mChk;
};  // Size = 0x54

class dBgS_LinkGndChk : dBgS_GndChk {};

class dBgS_ObjGndChk : dBgS_GndChk {};

#endif