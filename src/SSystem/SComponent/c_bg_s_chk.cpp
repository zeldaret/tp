/**
 * c_bg_s_chk.cpp
 *
 */

#include "SSystem/SComponent/c_bg_s_chk.h"

/* 80267B4C-80267B70 26248C 0024+00 0/0 7/7 0/0 .text            __ct__8cBgS_ChkFv */
cBgS_Chk::cBgS_Chk() {
    mPolyPassChk = NULL;
    mGrpPassChk = NULL;
    mSameActorChk = true;
}

/* 80267B70-80267BB8 2624B0 0048+00 1/0 7/7 0/0 .text            __dt__8cBgS_ChkFv */
cBgS_Chk::~cBgS_Chk() {}

/* 80267BB8-80267BDC 2624F8 0024+00 0/0 4/4 0/0 .text            SetExtChk__8cBgS_ChkFR8cBgS_Chk */
void cBgS_Chk::SetExtChk(cBgS_Chk& other) {
    mPolyPassChk = other.mPolyPassChk;
    mGrpPassChk = other.mGrpPassChk;
    mActorPid = other.mActorPid;
    mSameActorChk = other.mSameActorChk;
}

/* 80267BDC-80267C1C 26251C 0040+00 0/0 7/7 0/0 .text            ChkSameActorPid__8cBgS_ChkCFUi */
bool cBgS_Chk::ChkSameActorPid(unsigned int pid) const {
    if (mActorPid == -1 || pid == UINT32_MAX || !mSameActorChk) {
        return FALSE;
    } else {
        return (mActorPid == pid) ? TRUE : FALSE;
    }
}