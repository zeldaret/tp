/**
 * d_bg_s_spl_grp_chk.cpp
 * BG Collision Special Group Check
 */

#include "d/dolzel.h"

#include "d/d_bg_s_spl_grp_chk.h"

/* 80078B90-80078BB0 0734D0 0020+00 0/0 2/2 3/3 .text            Set__14dBgS_SplGrpChkFR4cXyzf */
void dBgS_SplGrpChk::Set(cXyz& ground, f32 roof) {
    m_ground = ground;
    m_roof = roof;
}

/* 80078BB0-80078C78 0734F0 00C8+00 0/0 1/1 0/0 .text            __ct__14dBgS_SplGrpChkFv */
dBgS_SplGrpChk::dBgS_SplGrpChk() {
    SetPolyPassChk(GetPolyPassChkInfo());
    SetGrpPassChk(GetGrpPassChkInfo());
    OffNormalGrp();

    m_ground.x = 0.0f;
    m_ground.y = 0.0f;
    m_ground.z = 0.0f;
    m_roof = 1000000000.0f;
    m_height = 0.0f;

    OffMoveBGOnly();
    OffIn();
    OffFind();
}

/* 80078C78-80078D0C 0735B8 0094+00 4/3 2/2 4/4 .text            __dt__14dBgS_SplGrpChkFv */
dBgS_SplGrpChk::~dBgS_SplGrpChk() {}

/* 80078D0C-80078D4C 07364C 0040+00 0/0 1/1 0/0 .text            Init__14dBgS_SplGrpChkFv */
void dBgS_SplGrpChk::Init() {
    OffIn();
    OffFind();
    SetHeight(GetPosP().y);
    ClearPi();
}
