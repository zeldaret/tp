#ifndef C_BG_S_GND_CHK_H
#define C_BG_S_GND_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

class cBgS_GndChk : public cBgS_Chk, public cBgS_PolyInfo {
    /* 80267C1C */ cBgS_GndChk();
    /* 80267C94 */ virtual ~cBgS_GndChk();
    /* 80267D28 */ void SetPos(cXyz const*);
    /* 80267D0C */ void SetPos(Vec const*);
    /* 80267D44 */ void PreCheck();

private:
    /* 0x24 */ cXyz mPosition;
    /* 0x30 */ s32 _30;
    /* 0x34 */ f32 mNowY;
    /* 0x38 */ u32 mWallPrecheck;
};

#endif /* C_BG_S_GND_CHK_H */
