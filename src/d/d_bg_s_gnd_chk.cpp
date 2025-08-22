/**
 * d_bg_s_gnd_chk.cpp
 * BG Collision Ground Check
 */

#include "d/dolzel.h"

#include "d/d_bg_s_gnd_chk.h"

/* 8007757C-800775F0 071EBC 0074+00 3/3 15/15 289/289 .text            __ct__11dBgS_GndChkFv */
dBgS_GndChk::dBgS_GndChk() {
    SetPolyPassChk(GetPolyPassChkInfo());
    SetGrpPassChk(GetGrpPassChkInfo());
}

/* 800775F0-80077678 071F30 0088+00 8/7 13/13 295/295 .text            __dt__11dBgS_GndChkFv */
dBgS_GndChk::~dBgS_GndChk() {}

/* 80077678-80077710 071FB8 0098+00 0/0 0/0 1/1 .text            __ct__18dBgS_ObjGndChk_WtrFv */
dBgS_ObjGndChk_Wtr::dBgS_ObjGndChk_Wtr() {
    OffNormalGrp();
    OnWaterGrp();
}

/* 80077710-800777B0 072050 00A0+00 4/3 0/0 1/1 .text            __dt__18dBgS_ObjGndChk_WtrFv */
dBgS_ObjGndChk_Wtr::~dBgS_ObjGndChk_Wtr() {}

/* 800777B0-80077848 0720F0 0098+00 0/0 0/0 61/61 .text            __ct__18dBgS_ObjGndChk_SplFv */
dBgS_ObjGndChk_Spl::dBgS_ObjGndChk_Spl() {
    OffNormalGrp();
    OnSpl();
}

/* 80077848-800778E8 072188 00A0+00 4/3 0/0 61/61 .text            __dt__18dBgS_ObjGndChk_SplFv */
dBgS_ObjGndChk_Spl::~dBgS_ObjGndChk_Spl() {}

/* 800778E8-80077988 072228 00A0+00 4/3 3/3 7/7 .text            __dt__18dBgS_ObjGndChk_AllFv */
dBgS_ObjGndChk_All::~dBgS_ObjGndChk_All() {}

/* 80077988-80077A00 0722C8 0078+00 5/4 2/2 0/0 .text            __dt__14dBgS_CamGndChkFv */
dBgS_CamGndChk::~dBgS_CamGndChk() {}

/* 80077A00-80077A98 072340 0098+00 0/0 5/5 1/1 .text            __ct__18dBgS_CamGndChk_WtrFv */
dBgS_CamGndChk_Wtr::dBgS_CamGndChk_Wtr() {
    OffNormalGrp();
    OnWaterGrp();
}

/* 80077A98-80077B10 0723D8 0078+00 4/3 5/5 1/1 .text            __dt__18dBgS_CamGndChk_WtrFv */
dBgS_CamGndChk_Wtr::~dBgS_CamGndChk_Wtr() {}
