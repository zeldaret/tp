#ifndef D_BG_S_CHK_H_
#define D_BG_S_CHK_H_

#include "d/d_bg/d_bg_s/d_bg_s_poly_pass_chk.h"
#include "d/d_bg/d_bg_s/d_bg_s_grp_pass_chk.h"
#include "global.h"

class dBgS_Chk {
private:
    /* 0x000 */ dBgS_PolyPassChk mPolyPassChkInfo;
    /* 0x010 */ dBgS_GrpPassChk mGrpPassChkInfo;
}; // Size = 0x18


#endif