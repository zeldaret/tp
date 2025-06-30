#include "m_Do/m_Re_controller_pad.h"
#include "Z2AudioLib/Z2AudioCS.h"

mReCPd::Pad mReCPd::m_pad[4];
WPADInfo mReCPd::m_pad_info[4];

void mReCPd::Pad::Acc::clean() {

}

void mReCPd::Pad::Acc::changeStts(u32, bool) {

}

void mReCPd::Pad::Acc::calcSwingVec() {

}

void mReCPd::Pad::Acc::calcSttsRem() {

}

void mReCPd::Pad::Acc::calcSttsFs() {

}

void mReCPd::Pad::clean() {

}

void mReCPd::Pad::cleanOneTime() {

}

void mReCPd::Pad::copyRemAcc() {

}

void mReCPd::Pad::copyFSAcc() {

}

void mReCPd::Pad::cleanTrig() {
    m_remAcc.m_swing = 0;
    m_FSAcc.m_swing = 0;

    for (int i = 0; i < 10; i++) {
        field_0x4[i].trig = 0;
    }
}

void mReCPd::Pad::cleanHold() {
    for (int i = 0; i < 10; i++) {
        field_0x4[i].hold = 0;
    }
}

void mReCPd::Pad::cleanRelease() {
    for (int i = 0; i < 10; i++) {
        field_0x4[i].release = 0;
    }
}

void mReCPd::Pad::clearUpDown() {

}

void mReCPd::Pad::calcDpdBox(Vec2*, Vec2*, f32, f32) {

}

void mReCPd::Pad::calcDpdOld() {

}

void mReCPd::enableDpd(u32 param_0) {
    KPADEnableDPD(param_0);
}

void mReCPd::disableDpd(u32 param_0) {
    KPADDisableDPD(param_0);
}

void mReCPd::Pad::calcDpd2DPos() {

}

void mReCPd::Pad::calcDpdRatioPos() {

}

void mReCPd::Pad::calcDpdPlayCirPos() {

}

void mReCPd::Pad::calcDpdPlayBoxPos() {
    
}

void mReCPd::onConnect(u32 i_padNo) {
    m_pad[i_padNo].field_0x1dd4 = 1;
    m_pad[i_padNo].field_0x1e04 = 1;
}

static void l_mReCPd_extensionCallback(s32 i_padNo, s32 param_1) {
    Z2AudioCS::extensionProcess(i_padNo, param_1);
    mReCPd::m_pad[i_padNo].field_0x1dec = param_1;
    mReCPd::m_pad[i_padNo].field_0x1df0 = 1;
}

void mReCPd::setExtensionCallback() {
    WPADSetExtensionCallback(0, l_mReCPd_extensionCallback);
}

void mReCPd::onGetInfoAsync(u32 i_padNo) {
    m_pad[i_padNo].field_0x1ddd = 1;
    m_pad[i_padNo].field_0x1de0 = 1800;
}

void mReCPd::create() {

}

void mReCPd::startMoterWave(motorWave_t*, u8*, bool) {

}

void mReCPd::startMoterWave(int, u8*, bool) {

}

void mReCPd::stopMoterWave(motorWave_t*) {

}

void mReCPd::stopMoterWave(int) {

}

void mReCPd::updateMoterWave() {

}

void mReCPd::stopMoter() {

}

void mReCPd::getLowBat(u32) {

}

void mReCPd::setLowBat(u32, int) {

}

void mReCPd::onLowBatChk(u32) {

}

void mReCPd::procNoData(u32) {

}

void mReCPd::read() {

}

void mReCPd::calibrateDist(int) {

}

void mReCPd::getDpd2DPos(u32) {

}

void mReCPd::getDpdRatioPos(u32) {

}

void mReCPd::getDpdRatioBoxPos(u32) {

}

void mReCPd::chkDpdOk(u32) {

}

void mReCPd::chkDpdValid(u32) {

}

void mReCPd::chkDpdPosIn(u32) {

}

void mReCPd::getKPADAcc(u32, Vec*, int) {

}

void mReCPd::getAngleXy(u32) {

}

void mReCPd::getAngleZy(u32) {

}

void mReCPd::getKPADAccValue(u32, int) {

}

void mReCPd::getKPADAccValueMax(u32) {

}

void mReCPd::getKPADAccSpeed(u32, int) {

}

void mReCPd::getKPADAccSpeedMax(u32) {

}

void mReCPd::getKPADFsAccValue(u32, int) {

}

void mReCPd::getKPADFsAccValueMax(u32) {

}

s16 mReCPd::getFSStickAngle3DRev(u32) {

}

void mReCPd::calcUnderVec(Pad::Acc*, f32) {

}

u32 mReCPd::getHoldB(u32 i_padNo) {
    return m_pad[i_padNo].field_0x4[0].hold & WPAD_BUTTON_B;
}

u32 mReCPd::getHoldMinus(u32 i_padNo) {
    if (chkSwingBlock(i_padNo)) {
        return 0;
    } else {
        return m_pad[i_padNo].field_0x4[0].hold & WPAD_BUTTON_MINUS;
    }
}

u32 mReCPd::getHoldPlus(u32 i_padNo) {
    if (chkSwingBlock(i_padNo)) {
        return 0;
    } else {
        return m_pad[i_padNo].field_0x4[0].hold & WPAD_BUTTON_PLUS;
    }
}

u32 mReCPd::getHoldZ1(u32 i_padNo) {
    return m_pad[i_padNo].field_0x4[0].hold & WPAD_BUTTON_Z;
}

u32 mReCPd::getTrigB(u32 i_padNo) {
    return m_pad[i_padNo].field_0x4[0].trig & WPAD_BUTTON_B;
}

u32 mReCPd::getTrigMinus(u32 i_padNo) {
    if (chkSwingBlock(i_padNo)) {
        return 0;
    } else {
        return m_pad[i_padNo].field_0x4[0].trig & WPAD_BUTTON_MINUS;
    }
}

u32 mReCPd::getTrigHome(u32 i_padNo) {
    if (chkSwingBlock(i_padNo)) {
        return 0;
    } else {
        return m_pad[i_padNo].field_0x4[0].trig & WPAD_BUTTON_HOME;
    }
}

u32 mReCPd::getTrigPlus(u32 i_padNo) {
    if (chkSwingBlock(i_padNo)) {
        return 0;
    } else {
        return m_pad[i_padNo].field_0x4[0].trig & WPAD_BUTTON_PLUS;
    }
}

u32 mReCPd::getTrigZ1(u32 i_padNo) {
    return m_pad[i_padNo].field_0x4[0].trig & WPAD_BUTTON_Z;
}

u32 mReCPd::chkSwingBlock(u32 i_padNo) {
    return m_pad[i_padNo].m_swingBlock > 0;
}

u32 mReCPd::getTrigSwing(u32 i_padNo) {
    return m_pad[i_padNo].m_remAcc.m_swing;
}

Vec2& mReCPd::getSwingVec(u32 i_padNo) {
    return m_pad[i_padNo].m_remAcc.m_swingVec;
}

u32 mReCPd::chkSimpleProbe(u32 i_padNo) {
    if (m_pad[i_padNo].field_0x1dd4 == 0) {
        return 0;
    } else if (m_pad[i_padNo].field_0x1dfc + 3 <= 2) {
        return 0;
    } else if (m_pad[i_padNo].field_0x1df8 == 0xFD || m_pad[i_padNo].field_0x1df8 == 0xFF) {
        return 0;
    } else {
        return 1;
    }
}

BOOL mReCPd::chkDevTypeValid(u32 i_padNo) {
    if (!chkSimpleProbe(i_padNo)) {
        return FALSE;
    }

    if (m_pad[i_padNo].field_0x1df4 < 20 && m_pad[i_padNo].field_0x1de4 == 0xFF && m_pad[i_padNo].field_0x1de8 != 0) {
        return FALSE;
    }

    return TRUE;
}

u32 mReCPd::getFSTrigSwing(u32 i_padNo) {
    return m_pad[i_padNo].m_FSAcc.m_swing;
}

int mReCPd::m_cal_value;

void mReCPd::plusCalValue() {
    m_cal_value++;
    if (m_cal_value >= 2) {
        m_cal_value = 2;
    }
}

void mReCPd::minusCalValue() {
    m_cal_value--;
    if (m_cal_value <= -2) {
        m_cal_value = -2;
    }
}
