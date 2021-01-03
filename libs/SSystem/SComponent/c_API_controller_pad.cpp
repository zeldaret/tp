#include "SComponent/c_API_controller_pad.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"

void cAPICPad_recalibrate() {
    mDoCPd_c::recalibrate();
}

u32 cAPICPad_ANY_BUTTON(u32 pPadId) {
    interface_of_controller_pad* pad = &m_cpadInfo[pPadId];
    return pad->mPressedButtonFlags & 0x1300;  // TODO: flag
}
