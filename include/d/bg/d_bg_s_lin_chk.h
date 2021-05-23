#ifndef D_BG_D_BG_S_LIN_CHK_H
#define D_BG_D_BG_S_LIN_CHK_H

#include "SSystem/SComponent/c_bg_s_lin_chk.h"
#include "d/bg/d_bg_s_chk.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class dBgS_LinChk {
public:
    /* 80077C68 */ dBgS_LinChk();
    /* 80077CDC */ ~dBgS_LinChk();
    /* 80077D64 */ void Set(cXyz const*, cXyz const*, fopAc_ac_c const*);

private:
    /* 0x00 */ cBgS_LinChk mLinChk;
    /* 0x58 */ dBgS_Chk mChk;
};

class dBgS_LinkLinChk : dBgS_LinChk {
public:
    /* 80078030 */ dBgS_LinkLinChk();
    /* 8007808C */ ~dBgS_LinkLinChk();
};

class dBgS_RopeLinChk : dBgS_LinChk {
    /* 8007838C */ dBgS_RopeLinChk();
    /* 800783E8 */ ~dBgS_RopeLinChk();
};

class dBgS_BoomerangLinChk : dBgS_LinChk {
    /* 800782B8 */ dBgS_BoomerangLinChk();
    /* 80078314 */ ~dBgS_BoomerangLinChk();
};

class dBgS_ArrowLinChk : dBgS_LinChk {
    /* 800781D8 */ dBgS_ArrowLinChk();
    /* 80078240 */ ~dBgS_ArrowLinChk();
};

class dBgS_ObjLinChk : dBgS_LinChk {
    /* 80077F5C */ dBgS_ObjLinChk();
    /* 80077FB8 */ ~dBgS_ObjLinChk();
};

#endif /* D_BG_D_BG_S_LIN_CHK_H */
