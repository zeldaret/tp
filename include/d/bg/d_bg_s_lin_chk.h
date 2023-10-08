#ifndef D_BG_D_BG_S_LIN_CHK_H
#define D_BG_D_BG_S_LIN_CHK_H

#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "d/bg/d_bg_s_chk.h"

class fopAc_ac_c;

class dBgS_LinChk : public cBgS_LinChk, public dBgS_Chk {
public:
    /* 80077C68 */ dBgS_LinChk();
    /* 80077D64 */ void Set(cXyz const* pi_start, cXyz const* pi_end, fopAc_ac_c const*);

    /* 80077CDC */ virtual ~dBgS_LinChk();

    /* 0x00 cBgS_LinChk */;
    /* 0x58 dBgS_Chk */;
};

class dBgS_LinkLinChk : public dBgS_LinChk {
public:
    /* 80078030 */ dBgS_LinkLinChk();

    /* 8007808C */ virtual ~dBgS_LinkLinChk();
};

class dBgS_RopeLinChk : public dBgS_LinChk {
public:
    /* 8007838C */ dBgS_RopeLinChk();

    /* 800783E8 */ virtual ~dBgS_RopeLinChk();
};

class dBgS_BoomerangLinChk : public dBgS_LinChk {
public:
    /* 800782B8 */ dBgS_BoomerangLinChk();

    /* 80078314 */ virtual ~dBgS_BoomerangLinChk();
};

class dBgS_ArrowLinChk : public dBgS_LinChk {
public:
    /* 800781D8 */ dBgS_ArrowLinChk();

    /* 80078240 */ virtual ~dBgS_ArrowLinChk();
};

class dBgS_ObjLinChk : public dBgS_LinChk {
public:
    /* 80077F5C */ dBgS_ObjLinChk();

    /* 80077FB8 */ virtual ~dBgS_ObjLinChk();
};

class dBgS_BombLinChk : public dBgS_LinChk {
public:
    /* 80078104 */ dBgS_BombLinChk();

    /* 80078160 */ virtual ~dBgS_BombLinChk();
};

class dBgS_HorseLinChk : public dBgS_LinChk {
public:
    /* 80078460 */ dBgS_HorseLinChk();

    /* 800784BC */ virtual ~dBgS_HorseLinChk();
};

class dBgS_CamLinChk : public dBgS_LinChk {
public:
    /* 80077DA4 */ dBgS_CamLinChk();

    /* 80077E00 */ virtual ~dBgS_CamLinChk();
};

class dBgS_CamLinChk_NorWtr : public dBgS_CamLinChk {
public:
    /* 80077E78 */ dBgS_CamLinChk_NorWtr();

    /* 80077EE4 */ virtual ~dBgS_CamLinChk_NorWtr();
};

#endif /* D_BG_D_BG_S_LIN_CHK_H */
