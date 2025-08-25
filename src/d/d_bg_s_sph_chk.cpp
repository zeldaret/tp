/**
 * d_bg_s_sph_chk.cpp
 * BG Collision Sphere Check
 */

#include "d/dolzel.h"

#include "d/d_bg_s_sph_chk.h"

/* 80078A14-80078AC0 073354 00AC+00 0/0 1/1 1/1 .text            __ct__11dBgS_SphChkFv */
dBgS_SphChk::dBgS_SphChk() {
    SetPolyPassChk(GetPolyPassChkInfo());
    SetGrpPassChk(GetGrpPassChkInfo());
    SetActorPid(0xFFFFFFFF);
    ClearPi();
    mCallback = NULL;
}

/* 80078AC0-80078B70 073400 00B0+00 5/4 2/2 0/0 .text            __dt__11dBgS_SphChkFv */
dBgS_SphChk::~dBgS_SphChk() {}
