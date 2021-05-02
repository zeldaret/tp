#ifndef D_BG_D_BG_S_CHK_H
#define D_BG_D_BG_S_CHK_H

#include "d/bg/d_bg_s_grp_pass_chk.h"
#include "d/bg/d_bg_s_poly_pass_chk.h"
#include "dolphin/types.h"

class dBgS_Chk {
public:
    /* 8007749C */ dBgS_Chk();
    /* 800774E8 */ ~dBgS_Chk();
    /* 80077560 */ void GetPolyPassChkInfo();
    /* 80077564 */ void GetGrpPassChkInfo();

private:
    /* 0x000 */ dBgS_PolyPassChk mPolyPassChkInfo;
    /* 0x010 */ dBgS_GrpPassChk mGrpPassChkInfo;
};  // Size = 0x18

#endif /* D_BG_D_BG_S_CHK_H */
