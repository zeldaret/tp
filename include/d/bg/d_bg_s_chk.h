#ifndef D_BG_D_BG_S_CHK_H
#define D_BG_D_BG_S_CHK_H

#include "d/bg/d_bg_s_grp_pass_chk.h"
#include "d/bg/d_bg_s_poly_pass_chk.h"

class dBgS_Chk : public dBgS_PolyPassChk, public dBgS_GrpPassChk {
public:
    /* 8007749C */ dBgS_Chk();
    /* 80077560 */ cBgS_PolyPassChk* GetPolyPassChkInfo();
    /* 80077564 */ cBgS_GrpPassChk* GetGrpPassChkInfo();

    /* 800774E8 */ virtual ~dBgS_Chk();
};  // Size: 0x18

#endif /* D_BG_D_BG_S_CHK_H */
