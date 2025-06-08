/**
 * c_bg_s_gnd_chk.cpp
 *
 */

#include "SSystem/SComponent/c_bg_s_gnd_chk.h"
#include "f_pc/f_pc_manager.h"

/* 80267C1C-80267C94 26255C 0078+00 0/0 2/2 123/123 .text            __ct__11cBgS_GndChkFv */
cBgS_GndChk::cBgS_GndChk() {
    m_pos = cXyz::Zero;
    SetActorPid(fpcM_ERROR_PROCESS_ID_e);
    mFlags = 2;
}

/* 80267C94-80267D0C 2625D4 0078+00 2/1 4/4 110/110 .text            __dt__11cBgS_GndChkFv */
cBgS_GndChk::~cBgS_GndChk() {}

/* 80267D0C-80267D28 26264C 001C+00 0/0 0/0 62/62 .text            SetPos__11cBgS_GndChkFPC3Vec */
void cBgS_GndChk::SetPos(Vec const* pos) {
    m_pos = *pos;
}

/* 80267D28-80267D44 262668 001C+00 0/0 51/51 185/185 .text            SetPos__11cBgS_GndChkFPC4cXyz
 */
void cBgS_GndChk::SetPos(cXyz const* pos) {
    m_pos = *pos;
}

/* 80267D44-80267D54 262684 0010+00 0/0 1/1 0/0 .text            PreCheck__11cBgS_GndChkFv */
void cBgS_GndChk::PreCheck() {
    mWallPrecheck = mFlags & 2;
}
