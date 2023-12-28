/**
 * c_API_controller_pad.cpp
 * Controller Pad API utilities
 */

#include "SSystem/SComponent/c_API_controller_pad.h"
#include "m_Do/m_Do_controller_pad.h"

/* 8026328C-802632AC 25DBCC 0020+00 0/0 3/3 0/0 .text            cAPICPad_recalibrate__Fv */
void cAPICPad_recalibrate() {
    mDoCPd_c::recalibrate();
}

/* 802632AC-802632C8 25DBEC 001C+00 0/0 3/3 1/1 .text            cAPICPad_ANY_BUTTON__FUl */
u32 cAPICPad_ANY_BUTTON(u32 portNo) {
    return mDoCPd_c::getTrig(portNo) & (CButton::A | CButton::B | CButton::START);
}
