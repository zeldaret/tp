#include "d/d_lib/d_lib.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "d/d_event/d_event/d_event.h"
#include "global.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "os/OS.h"

STControl::STControl(s16 param_1, s16 param_2, s16 param_3, s16 param_4, f32 param_5, f32 param_6,
                     s16 param_7, s16 param_8) {
    __vt = (STControl_vtable*)0x803a7260;
    setWaitParm(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8);
    init();
}

void STControl::setWaitParm(s16 param_1, s16 param_2, s16 param_3, s16 param_4, f32 param_5,
                            f32 param_6, s16 param_7, s16 param_8) {
    field_0x12 = param_1;
    field_0x14 = param_2;
    field_0x16 = param_3;
    field_0x1c = param_4;
    field_0x4 = param_5;
    field_0x8 = param_6;
    field_0x24 = param_7;
    field_0x26 = param_8;
}

STControl* STControl::init(void) {
    field_0xe = 0;
    field_0x10 = 0;
    field_0xd = 0;
    field_0xc = 0;
    field_0x22 = 0;
    field_0x18 = field_0x12;
    field_0x1a = field_0x12;
    field_0x1e = field_0x1c;
    field_0x20 = field_0x1c;
    field_0x28 = 0;
    field_0x2a = field_0x28;
    field_0x2c = field_0x28;
    return this;
}

void STControl::Xinit(void) {
    field_0xe = 0;
    field_0xc = field_0xc & 0xfc;
    field_0x18 = field_0x12;
    field_0x1e = field_0x1c;
    field_0x2a = field_0x28;
}

#ifdef NONMATCHING
void STControl::Yinit(void) {  // produces andi. instead of rlwinm
    field_0x10 = 0;
    field_0xc = field_0xc & 0xf3;
    field_0x1a = field_0x12;
    field_0x20 = field_0x1c;
    field_0x2c = field_0x28;
}
#else
asm void STControl::Yinit(void) {
    nofralloc
#include "d/d_lib/asm/STControl_NS_Yinit.s"
}
#endif

double STControl::getValueStick() {
    return (double)m_cpadInfo[0].mMainStickValue;
}

s16 STControl::getAngleStick() {
    return m_cpadInfo[0].mMainStickAngle;
}

double CSTControl::getValueStick() {
    return (double)m_cpadInfo[0].mCStickValue;
}

s16 CSTControl::getAngleStick() {
    return m_cpadInfo[0].mCStickAngle;
}

asm u32 STControl::checkTrigger() {
    nofralloc
#include "d/d_lib/asm/STControl_NS_checkTrigger.s"
}

bool STControl::checkLeftTrigger() {
    if ((field_0xe == 0) && ((field_0xc & 1) != 0)) {
        field_0xe = field_0x18 + field_0x2a;
        field_0x2a = 0;
        if ((int)field_0x1e == 0) {
            field_0x18 = field_0x18 - field_0x16;
            if (field_0x18 < field_0x14) {
                field_0x18 = field_0x14;
            }
        } else {
            field_0x1e = field_0x1e + -1;
        }
        return true;
    }
    return false;
}

bool STControl::checkRightTrigger() {
    if ((field_0xe == 0) && ((field_0xc & 2) != 0)) {
        field_0xe = field_0x18 + field_0x2a;
        field_0x2a = 0;
        if ((int)field_0x1e == 0) {
            field_0x18 = field_0x18 - field_0x16;
            if (field_0x18 < field_0x14) {
                field_0x18 = field_0x14;
            }
        } else {
            field_0x1e = field_0x1e + -1;
        }
        return true;
    }
    return false;
}

bool STControl::checkUpTrigger() {
    if ((field_0x10 == 0) && ((field_0xc & 4) != 0)) {
        field_0x10 = field_0x1a + field_0x2c;
        field_0x2c = 0;
        if ((int)field_0x20 == 0) {
            field_0x1a = field_0x1a - field_0x16;
            if (field_0x1a < field_0x14) {
                field_0x1a = field_0x14;
            }
        } else {
            field_0x20 = field_0x20 + -1;
        }
        return true;
    }
    return false;
}

bool STControl::checkDownTrigger() {
    if ((field_0x10 == 0) && ((field_0xc & 8) != 0)) {
        field_0x10 = field_0x1a + field_0x2c;
        field_0x2c = 0;
        if ((int)field_0x20 == 0) {
            field_0x1a = field_0x1a - field_0x16;
            if (field_0x1a < field_0x14) {
                field_0x1a = field_0x14;
            }
        } else {
            field_0x20 = field_0x20 + -1;
        }
        return true;
    }
    return false;
}

asm u32 dLib_getEventSwitchNo(int param_1) {
    nofralloc
#include "d/d_lib/asm/dLib_getEventSwitchNo.s"
}

asm bool dLib_checkActorInRectangle(fopAc_ac_c* param_1, fopAc_ac_c* param_2, cXyz const* param_3,
                                    cXyz const* param_4) {
    nofralloc
#include "d/d_lib/asm/dLib_checkActorInRectangle.s"
}

asm u32 dLib_getExpandSizeFromAramArchive(JKRAramArchive* param_1, char const* param_2) {
    nofralloc
#include "d/d_lib/asm/dLib_getExpandSizeFromAramArchive.s"
}

asm s64 dLib_time_c::getTime(void) {
    nofralloc
#include "d/d_lib/asm/dLib_time_c_NS_getTime.s"
}

#ifdef NONMATCHING
void dLib_time_c::stopTime(void) {  // way off
    if (lbl_80450DE8 == 0) {
        OSTime time = OSGetTime();
        lbl_80450DE4 = time >> 0x20;
        lbl_80450DE8 = 1;
        lbl_80450DE0 = this;
    }
}
#else
asm void dLib_time_c::stopTime(void) {
    nofralloc
#include "d/d_lib/asm/dLib_time_c_NS_stopTime.s"
}
#endif

asm void dLib_time_c::startTime(void) {
    nofralloc
#include "d/d_lib/asm/dLib_time_c_NS_startTime.s"
}