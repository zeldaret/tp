#ifndef D_BG_D_BG_S_SPL_GRP_CHK_H
#define D_BG_D_BG_S_SPL_GRP_CHK_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/bg/d_bg_s_chk.h"
#include "dolphin/types.h"

class dBgS_SplGrpChk {
public:
    /* 80078B90 */ void Set(cXyz&, f32);
    /* 80078BB0 */ dBgS_SplGrpChk();
    /* 80078C78 */ ~dBgS_SplGrpChk();
    /* 80078D0C */ void Init();

private:
    /* 0x00 */ cBgS_PolyInfo field_0x00;
    /* 0x10 */ cBgS_Chk field_0x10;
    /* 0x24 */ dBgS_Chk field_0x24;
    /* 0x3C */ cXyz m_ground;
    /* 0x48 */ float mRoof;
    /* 0x4C */ float mHeight;
    /* 0x50 */ int field_0x50;
};  // Size = 0x54

#endif /* D_BG_D_BG_S_SPL_GRP_CHK_H */
