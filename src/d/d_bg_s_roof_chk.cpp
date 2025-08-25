/**
 * d_bg_s_roof_chk.cpp
 * BG Collision Roof Check
 */

#include "d/dolzel.h"

#include "d/d_bg_s_roof_chk.h"

/* 80078FF4-80079090 073934 009C+00 0/0 10/10 1/1 .text            __ct__12dBgS_RoofChkFv */
dBgS_RoofChk::dBgS_RoofChk() {
    SetPolyPassChk(GetPolyPassChkInfo());
    SetGrpPassChk(GetGrpPassChkInfo());
    m_pos.x = 0.0f;
    m_pos.y = 0.0f;
    m_pos.z = 0.0f;
    SetActorPid(0xFFFFFFFF);
    field_0x48 = 0;
}

/* 80079090-80079124 0739D0 0094+00 4/3 11/11 1/1 .text            __dt__12dBgS_RoofChkFv */
dBgS_RoofChk::~dBgS_RoofChk() {}

/* 80079124-8007914C 073A64 0028+00 0/0 1/1 0/0 .text            Init__12dBgS_RoofChkFv */
void dBgS_RoofChk::Init() {
    SetNowY(1000000000.0f);
    ClearPi();
}
