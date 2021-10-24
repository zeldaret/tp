#ifndef D_BG_D_BG_S_GND_CHK_H
#define D_BG_D_BG_S_GND_CHK_H

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "d/bg/d_bg_s_chk.h"
#include "dolphin/types.h"

class dBgS_GndChk : public cBgS_GndChk {
public:
    /* 8007757C */ dBgS_GndChk();
    /* 800775F0 */ virtual ~dBgS_GndChk();

private:
    /* 0x3C */ dBgS_Chk mChk;
};  // Size = 0x54

class dBgS_LinkGndChk : dBgS_GndChk {
    /* 80140EB8 */ virtual ~dBgS_LinkGndChk();
};

class dBgS_ObjGndChk : dBgS_GndChk {};

#endif /* D_BG_D_BG_S_GND_CHK_H */
