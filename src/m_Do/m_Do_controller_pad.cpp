/**
 * m_Do_controller_pad.cpp
 * JUTGamePad Wrapper and Conversion
 */

#include "m_Do/m_Do_controller_pad.h"
#include "SSystem/SComponent/c_lib.h"
#include "f_ap/f_ap_game.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_main.h"

/* 803DD2D8-803DD2E8 009FF8 0010+00 2/2 6/6 0/0 .bss             m_gamePad__8mDoCPd_c */
JUTGamePad* mDoCPd_c::m_gamePad[4];

/* 803DD2E8-803DD3E8 00A008 0100+00 2/2 84/84 37/37 .bss             m_cpadInfo__8mDoCPd_c */
interface_of_controller_pad mDoCPd_c::m_cpadInfo[4];

/* 80007954-80007A94 002294 0140+00 0/0 1/1 0/0 .text            create__8mDoCPd_cFv */
void mDoCPd_c::create() {
    JUTGamePad* pad = new JUTGamePad(JUTGamePad::EPort1);
    m_gamePad[0] = pad;

    if (mDoMain::developmentMode != 0) {
        m_gamePad[1] = new JUTGamePad(JUTGamePad::EPort2);
        m_gamePad[2] = new JUTGamePad(JUTGamePad::EPort3);
        m_gamePad[3] = new JUTGamePad(JUTGamePad::EPort4);
    } else {
        m_gamePad[1] = NULL;
        m_gamePad[2] = NULL;
        m_gamePad[3] = NULL;
    }

    if (!mDoRst::isReset()) {
        JUTGamePad::clearResetOccurred();
        JUTGamePad::setResetCallback(mDoRst_resetCallBack, NULL);
    }
    JUTGamePad::setAnalogMode(3);

    interface_of_controller_pad* cpad = &m_cpadInfo[0];
    for (int i = 0; i < 4; i++) {
        cpad->mTrigLockL = false;
        cpad->mHoldLockL = false;
        cpad->mTrigLockR = false;
        cpad->mHoldLockR = false;
        cpad++;
    }
}

/* 80007A94-80007B7C 0023D4 00E8+00 0/0 1/1 0/0 .text            read__8mDoCPd_cFv */
void mDoCPd_c::read() {
    JUTGamePad::read();

    if (!mDoRst::isReset() && mDoRst::is3ButtonReset()) {
        JUTGamePad* pad = JUTGamePad::getGamePad(mDoRst::get3ButtonResetPort());

        if (!pad->isPushing3ButtonReset()) {
            mDoRst::off3ButtonReset();
        }
    }

    JUTGamePad** pad = m_gamePad;
    interface_of_controller_pad* interface = m_cpadInfo;

    for (u32 i = 0; i < 4; i++) {
        if (*pad == NULL) {
            cLib_memSet(interface, 0, sizeof(interface_of_controller_pad));
        } else {
            convert(interface, *pad);
            LRlockCheck(interface);
        }

        pad++;
        interface++;
    }
}

/* 80007B7C-80007CD0 0024BC 0154+00 1/1 0/0 0/0 .text
 * convert__8mDoCPd_cFP27interface_of_controller_padP10JUTGamePad */
void mDoCPd_c::convert(interface_of_controller_pad* pInterface, JUTGamePad* pPad) {
    pInterface->mButtonFlags = pPad->getButton();
    pInterface->mPressedButtonFlags = pPad->getTrigger();
    pInterface->mMainStickPosX = pPad->getMainStickX();
    pInterface->mMainStickPosY = pPad->getMainStickY();
    pInterface->mMainStickValue = pPad->getMainStickValue();
    pInterface->mMainStickAngle = pPad->getMainStickAngle();
    pInterface->mCStickPosX = pPad->getSubStickX();
    pInterface->mCStickPosY = pPad->getSubStickY();
    pInterface->mCStickValue = pPad->getSubStickValue();
    pInterface->mCStickAngle = pPad->getSubStickAngle();

    mDoCPd_ANALOG_CONV(pPad->getAnalogA(), pInterface->mAnalogA);
    mDoCPd_ANALOG_CONV(pPad->getAnalogB(), pInterface->mAnalogB);
    mDoCPd_TRIGGER_CONV(pPad->getAnalogL(), pInterface->mTriggerLeft);
    mDoCPd_TRIGGER_CONV(pPad->getAnalogR(), pInterface->mTriggerRight);

    pInterface->mGamepadErrorFlags = pPad->getErrorStatus();
}

/* 80007CD0-80007D74 002610 00A4+00 1/1 0/0 0/0 .text
 * LRlockCheck__8mDoCPd_cFP27interface_of_controller_pad        */
void mDoCPd_c::LRlockCheck(interface_of_controller_pad* interface) {
    f32 trig_left = interface->mTriggerLeft;
    interface->mTrigLockL = false;
    interface->mTrigLockR = false;

    if (trig_left > fapGmHIO_getLROnValue()) {
        if (interface->mHoldLockL != true) {
            interface->mTrigLockL = true;
        }
        interface->mHoldLockL = true;
    } else if (trig_left < fapGmHIO_getLROffValue()) {
        interface->mHoldLockL = false;
    }

    f32 trig_right = interface->mTriggerRight;
    if (trig_right > fapGmHIO_getLROnValue()) {
        if (interface->mHoldLockR != true) {
            interface->mTrigLockR = true;
        }
        interface->mHoldLockR = true;
    } else if (trig_right < fapGmHIO_getLROffValue()) {
        interface->mHoldLockR = false;
    }
}

void mDoCPd_c::recalibrate(void) {
    JUTGamePad::clearForReset();
    JUTGamePad::CRumble::setEnabled(PAD_CHAN3_BIT | PAD_CHAN2_BIT | PAD_CHAN1_BIT | PAD_CHAN0_BIT);
}
