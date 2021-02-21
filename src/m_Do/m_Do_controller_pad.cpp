#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "SComponent/c_lib.h"
#include "global.h"
#include "m_Do/m_Do_Reset/m_Do_Reset.h"
#include "m_Do/m_Do_main/m_Do_main.h"
#include "pad/pad.h"

extern "C" {
void __ct__10JUTGamePadFQ210JUTGamePad8EPadPort(void);
void __nw__FUl(void);
void cLib_memSet__FPviUl(void);
void convert__8mDoCPd_cFP27interface_of_controller_padP10JUTGamePad(void);
void getGamePad__10JUTGamePadFi(void);
void LRlockCheck__8mDoCPd_cFP27interface_of_controller_pad(void);
void mDoRst_resetCallBack__FiPv(void);
void read__10JUTGamePadFv(void);
}

extern JUTGamePad* m_gamePad[4];
extern u8 lbl_80450580;
extern u8 lbl_804514EC;
extern u8 lbl_804514F0;
extern u8 lbl_80451A20;
extern u8 lbl_80451A30;
extern u8 lbl_80451A24;
extern u8 lbl_80451A28;

// TODO: m_cpadInfo uses a bad type in a number of the NONMATCHING functions,
// and references need to be updated to reflect its correct type.

#ifdef NONMATCHING
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
// off on load order, regalloc, const placement (int-to-float conversion magic).
void mDoCPd_c::convert(interface_of_controller_pad* pInterface, JUTGamePad* pPad) {
    pInterface->mButtonFlags = pPad->buttons.mButtonFlags;
    pInterface->mPressedButtonFlags = pPad->buttons.mPressedButtonFlags;
    pInterface->mMainStickPosX = pPad->control_stick.mPosX;
    pInterface->mMainStickPosY = pPad->control_stick.mPosY;
    pInterface->mMainStickValue = pPad->control_stick.mValue;
    pInterface->mMainStickAngle = pPad->control_stick.mAngle;
    pInterface->mCStickPosX = pPad->c_stick.mPosX;
    pInterface->mCStickPosY = pPad->c_stick.mPosY;
    pInterface->mCStickValue = pPad->c_stick.mValue;
    pInterface->mCStickAngle = pPad->c_stick.mAngle;

    pInterface->mAnalogA = lbl_80451A20 * pPad->buttons.mAnalogARaw;
    if (pInterface->mAnalogA > lbl_80451A24 /* 1.0 */) {
        pInterface->mAnalogA = lbl_80451A24;
    }

    pInterface->mAnalogB = lbl_80451A20 * pPad->buttons.mAnalogBRaw;
    if (pInterface->mAnalogB > lbl_80451A24 /* 1.0 */) {
        pInterface->mAnalogB = lbl_80451A24;
    }

    // pInterface->mTriggerLeft = pPad->buttons.mTriggerLeftRaw * (1/140.0f);
    pInterface->mTriggerLeft = lbl_80451A28 * pPad->buttons.mTriggerLeftRaw;
    if (pInterface->mTriggerLeft > lbl_80451A24 /* 1.0 */) {
        pInterface->mTriggerLeft = lbl_80451A24;
    }

    pInterface->mTriggerRight = lbl_80451A28 * pPad->buttons.mTriggerRightRaw;
    if (pInterface->mTriggerRight > lbl_80451A24 /* 1.0 */) {
        pInterface->mTriggerRight = lbl_80451A24;
    }

    pInterface->mGamepadErrorFlags = pPad->error_value;
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