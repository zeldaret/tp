#ifndef D_BG_D_BG_S_GND_CHK_H
#define D_BG_D_BG_S_GND_CHK_H

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "d/bg/d_bg_s_chk.h"
#include "dolphin/types.h"

class dBgS_GndChk : public cBgS_GndChk, public dBgS_Chk {
public:
    /* 8007757C */ dBgS_GndChk();
    /* 800775F0 */ virtual ~dBgS_GndChk();
};  // Size: 0x54

class dBgS_LinkGndChk : public dBgS_GndChk {
public:
    /* 80140EB8 */ virtual ~dBgS_LinkGndChk();
};

class dBgS_ObjGndChk : public dBgS_GndChk {
public:
    dBgS_ObjGndChk() { SetObj(); }

    /* 8001E020 */ virtual ~dBgS_ObjGndChk();
};

class dBgS_ObjGndChk_Wtr : public dBgS_ObjGndChk {
public:
    /* 80077678 */ dBgS_ObjGndChk_Wtr();

    /* 80077710 */ virtual ~dBgS_ObjGndChk_Wtr();
};

class dBgS_ObjGndChk_Spl : public dBgS_ObjGndChk {
public:
    /* 800777B0 */ dBgS_ObjGndChk_Spl();

    /* 80077848 */ virtual ~dBgS_ObjGndChk_Spl();
};

class dBgS_ObjGndChk_All : public dBgS_ObjGndChk {
public:
    /* 800778E8 */ virtual ~dBgS_ObjGndChk_All();
};

class dBgS_CamGndChk : public dBgS_GndChk {
public:
    dBgS_CamGndChk() { SetCam(); }

    /* 80077988 */ virtual ~dBgS_CamGndChk();
};

class dBgS_CamGndChk_Wtr : public dBgS_CamGndChk {
public:
    /* 80077A00 */ dBgS_CamGndChk_Wtr();

    /* 80077A98 */ virtual ~dBgS_CamGndChk_Wtr();
};

#endif /* D_BG_D_BG_S_GND_CHK_H */
