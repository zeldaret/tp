/**
 * d_bg_w_base.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_bg_w_base.h"

/* 8007E5A8-8007E5F8 078EE8 0050+00 0/0 2/2 0/0 .text            __ct__9dBgW_BaseFv */
dBgW_Base::dBgW_Base() {
    ClrDBgWBase();
}

/* 8007E640-8007E69C 078F80 005C+00 1/0 2/2 0/0 .text            __dt__9dBgW_BaseFv */
dBgW_Base::~dBgW_Base() {}

/* 8007E69C-8007E6D0 078FDC 0034+00 1/1 1/1 0/0 .text            ClrDBgWBase__9dBgW_BaseFv */
void dBgW_Base::ClrDBgWBase() {
    m_roomId = 0xFF;
    m_priority = 2;
    field_0xa = 0xFF;
    m_diff_ShapeAngleY = 0;
    m_old_ShapeAngleY = 0;
    m_pushPull_Callback = NULL;
    m_pushPull_Ok = true;
    field_0xb = 0;
}

/* 8007E6D0-8007E6D8 079010 0008+00 1/0 1/0 0/0 .text            ChkMemoryError__9dBgW_BaseFv */
bool dBgW_Base::ChkMemoryError() {
    return false;
}

/* 8007E6D8-8007E6DC 079018 0004+00 1/0 2/0 0/0 .text
 * CallRideCallBack__9dBgW_BaseFP10fopAc_ac_cP10fopAc_ac_c      */
void dBgW_Base::CallRideCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1) {}

/* 8007E6DC-8007E6E0 07901C 0004+00 1/0 2/0 0/0 .text
 * CallArrowStickCallBack__9dBgW_BaseFP10fopAc_ac_cP10fopAc_ac_cR4cXyz */
void dBgW_Base::CallArrowStickCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, cXyz& param_2) {}

/* 8007E6E0-8007E6F4 079020 0014+00 0/0 1/1 0/0 .text            CalcDiffShapeAngleY__9dBgW_BaseFs
 */
void dBgW_Base::CalcDiffShapeAngleY(s16 param_0) {
    m_diff_ShapeAngleY = param_0 - m_old_ShapeAngleY;
    m_old_ShapeAngleY = param_0;
}
