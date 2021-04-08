#ifndef D_BG_S_LIN_CHK_H_
#define D_BG_S_LIN_CHK_H_

#include "SComponent/c_bg_s_lin_chk.h"
#include "d/d_bg/d_bg_s/d_bg_s_chk.h"
#include "global.h"

class dBgS_LinChk {
private:
    /* 0x00 */ cBgS_LinChk mLinChk;
    /* 0x58 */ dBgS_Chk mChk;
};

class dBgS_LinkLinChk : dBgS_LinChk {

};

class dBgS_RopeLinChk : dBgS_LinChk {

};

class dBgS_BoomerangLinChk : dBgS_LinChk {

};

class dBgS_ArrowLinChk : dBgS_LinChk {

};

class dBgS_ObjLinChk : dBgS_LinChk {

};

#endif