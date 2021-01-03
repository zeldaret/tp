#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "c/cLib.h"
#include "global.h"
#include "m_Do/m_Do_Reset/m_Do_Reset.h"
#include "pad/pad.h"

#ifdef NONMATCHING
// TODO: change the cpadinfo stuff to use the new type of m_cpadInfo
void mDoCPd_c::create() {
    JUTGamePad* JUTGamePad_ptr;
    cpadInfo* m_cpadInfo_addr;

    JUTGamePad_ptr = new JUTGamePad(JUTGamePad::Port_1);
    m_gamePad[0] = JUTGamePad_ptr;
    if (lbl_80450580 == 0) {
        m_gamePad[1] = NULL;
        m_gamePad[2] = NULL;
        m_gamePad[3] = NULL;
        JUTGamePad_ptr = m_gamePad[3];
    } else {
        m_gamePad[1] = new JUTGamePad(JUTGamePad::Port_2);
        m_gamePad[2] = new JUTGamePad(JUTGamePad::Port_3);
        JUTGamePad_ptr = new JUTGamePad(JUTGamePad::Port_4);
    }
    m_gamePad[3] = JUTGamePad_ptr;
    if (m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x0 == 0) {
        lbl_80451501 = false;
        lbl_804514EC = resetCallBack__6mDoRstFiPv;
        lbl_804514F0 = 0;
    }
    sAnalogMode = 3;
    PADSetAnalogMode(3);
    m_cpadInfo_addr = &m_cpadInfo;
    for (int i = 4; i != 0; i--) {
        m_cpadInfo_addr->interface.field_0x3a = false;
        m_cpadInfo_addr->interface.field_0x39 = false;
        m_cpadInfo_addr->interface.field_0x3c = false;
        m_cpadInfo_addr->interface.field_0x3b = false;
        m_cpadInfo_addr = m_cpadInfo_addr->unk1;
    }
}
#else
asm void mDoCPd_c::create() {
    nofralloc
#include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_create.s"
}
#endif

#ifdef NONMATCHING
void mDoCPd_c::read() {
    //_savegpr_29();
    gamePad->read();
    if (m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x0 == 0 &&
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x8 != 0) {
        JUTGamePad* JUTGamePad_ptr =
            JUTGamePad::getGamePad(m_Do_Reset_NS_mDoRst_NS_mResetData->pad_index);
        bool error = false;
        if (JUTGamePad_ptr->pad_port != 0xffff &&
            JUTGamePad_ptr->rumble.field_0x10 != 0) {  // Make the rumble thing right
            error = true;
        }
        if (error = false) {
            m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x8 = 0;
        }
    }
    JUTGamePad** m_gamePad_ptr = m_gamePad;
    cpadInfo* cpad_ptr = &m_cpadInfo;
    for (int i = 0; i < 4; i++) {
        if (*m_gamePad_ptr == 0) {
            cLib_memSet(cpad_ptr, 0, 0x40);
        } else {
            convert(&cpad_ptr->interface, *m_gamePad_ptr);
            LRlockCheck(&cpad_ptr->interface);
        }
        m_gamePad_ptr = m_gamePad_ptr + 1;  // Shouldn't it be 4 if it's incrementing a pointer???
        cpad_ptr = cpad_ptr->unk1;
    }
}
#else
asm void mDoCPd_c::read() {
    nofralloc
#include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_read.s"
}
#endif

#ifdef NONMATCHING
void mDoCPd_c::convert(interface_of_controller_pad* controllerInterface, JUTGamePad* gamePad) {
    controllerInterface->button_flags = gamePad->buttons.button_flags;
    controllerInterface->field_0x34 = gamePad->buttons.field_0x4;
    controllerInterface->stick_x = gamePad->control_stick.stick_x;
    controllerInterface->stick_y = gamePad->control_stick.stick_y;
    controllerInterface->length_from_neutral = gamePad->control_stick.length_from_neutral;
    controllerInterface->controlStick_angle = gamePad->control_stick.angle;
    controllerInterface->cStick_x = gamePad->c_stick.stick_x;
    controllerInterface->cStick_y = gamePad->c_stick.stick_y;
    controllerInterface->cStick_length_from_neutral = gamePad->c_stick.length_from_neutral;
    controllerInterface->cStick_angle = gamePad->c_stick.angle;
    controllerInterface->analog_a =
        (gamePad->buttons.analog_a - lbl_80451A30) *
        lbl_80451A20;  //@3709 *
                       //(float)((double)CONCAT44(0x43300000,(uint)(gamePad->buttons).analog_a)
                       //- @3713);
    if (controllerInterface->analog_a > lbl_80451A24) {
        controllerInterface->analog_a = lbl_80451A24;
    }
    controllerInterface->analog_b =
        (gamePad->buttons.analog_b - lbl_80451A30) *
        lbl_80451A20;  //@3709 *
                       //(float)((double)CONCAT44(0x43300000,(uint)(gamePad->buttons).analog_b)
                       //- @3713);
    if (controllerInterface->analog_b > lbl_80451A24) {
        controllerInterface->analog_b = lbl_80451A24;
    }
    controllerInterface->trigger_left =
        (gamePad->buttons.trigger_left - lbl_80451A30) *
        lbl_80451A28;  //@3711 *
                       //(float)((double)CONCAT44(0x43300000,(uint)(gamePad->buttons).trigger_left)
                       //- @3713);
    if (controllerInterface->trigger_left > lbl_80451A24) {
        controllerInterface->trigger_left = lbl_80451A24;
    }
    controllerInterface->trigger_right =
        (gamePad->buttons.trigger_right - lbl_80451A30) *
        lbl_80451A28;  //@3711 *
                       //(float)((double)CONCAT44(0x43300000,(uint)(gamePad->buttons).trigger_right)
                       //- @3713);
    if (controllerInterface->trigger_right > lbl_80451A24) {
        controllerInterface->trigger_right = lbl_80451A24;
    }
    controllerInterface->error_value = gamePad->error_value;
}
#else
asm void mDoCPd_c::convert(interface_of_controller_pad* controllerInteface, JUTGamePad* gamePad) {
    nofralloc
#include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_convert.s"
}
#endif

#ifdef NONMATCHING
void mDoCPd_c::LRlockCheck(interface_of_controller_pad* controllerInterface) {
    float temp_1 = controllerInterface->trigger_left;  // not sure if temp is left or right
    controllerInterface->field_0x3a = false;
    controllerInterface->field_0x3c = false;
    if (temp_1 <= g_HIO.float_global_1) {  // controllerInterface->trigger_left) {
        if (temp_1 < g_HIO.float_global_2) {
            controllerInterface->field_0x39 = false;
        }
    } else {
        if (controllerInterface->field_0x39 == false) {
            controllerInterface->field_0x3a = true;
        }
        controllerInterface->field_0x39 = true;
    }
    if (controllerInterface->trigger_right > g_HIO.float_global_1) {
        if (controllerInterface->field_0x3b == false) {
            controllerInterface->field_0x3c = true;
        }
        controllerInterface->field_0x3b = true;
        return;
    }
    if (controllerInterface->trigger_right >= g_HIO.float_global_2) {
        return;
    }
    controllerInterface->field_0x3b = false;
    return;
}
#else
asm void mDoCPd_c::LRlockCheck(interface_of_controller_pad* controllerInterface) {
    nofralloc
#include "m_Do/m_Do_controller_pad/asm/mDoCPd_c_NS_LRlockCheck.s"
}
#endif

void mDoCPd_c::recalibrate(void) {
    JUTGamePad::clearForReset();
    JUTGamePad::CRumble::setEnabled(
        PADMask(PAD_CHAN3_BIT | PAD_CHAN2_BIT | PAD_CHAN1_BIT | PAD_CHAN0_BIT));
}