/**
 * c_bg_s_chk.cpp
 *
 */

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "f_pc/f_pc_manager.h"

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
bool cBgS_Chk::ChkSameActorPid(fpc_ProcID pid) const {
    if (mActorPid == fpcM_ERROR_PROCESS_ID_e || pid == fpcM_ERROR_PROCESS_ID_e || !mSameActorChk) {
        return FALSE;
    } else if (mActorPid == pid) {
        return TRUE;
    } else {
        return FALSE;
    }
}
