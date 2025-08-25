/**
 * d_bg_s_chk.cpp
 * BG Collision Check Base
 */

#include "d/dolzel.h"

#include "d/d_bg_s_chk.h"

/* 8007749C-800774E8 071DDC 004C+00 0/0 6/6 0/0 .text            __ct__8dBgS_ChkFv */
dBgS_Chk::dBgS_Chk() {}

/* 800774E8-80077560 071E28 0078+00 2/1 6/6 0/0 .text            __dt__8dBgS_ChkFv */
dBgS_Chk::~dBgS_Chk() {}

/* 80077560-80077564 071EA0 0004+00 0/0 6/6 0/0 .text            GetPolyPassChkInfo__8dBgS_ChkFv */
cBgS_PolyPassChk* dBgS_Chk::GetPolyPassChkInfo() {
    return this;
}

/* 80077564-80077574 071EA4 0010+00 0/0 6/6 0/0 .text            GetGrpPassChkInfo__8dBgS_ChkFv */
cBgS_GrpPassChk* dBgS_Chk::GetGrpPassChkInfo() {
    return this;
}
