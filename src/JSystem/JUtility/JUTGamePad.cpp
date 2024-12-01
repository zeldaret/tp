#include "JSystem/JUtility/JUTGamePad.h"
#include <math.h>

/* 803CC5F0-803CC600 029710 0010+00 3/3 0/0 0/0 .data sChannelMask__Q210JUTGamePad7CRumble */
u32 JUTGamePad::CRumble::sChannelMask[4] = {
    PAD_CHAN0_BIT,
    PAD_CHAN1_BIT,
    PAD_CHAN2_BIT,
    PAD_CHAN3_BIT,
};

/* 803CC600-803CC610 029720 0010+00 2/2 0/0 0/0 .data            channel_mask */
static u32 channel_mask[4] = {PAD_CHAN0_BIT, PAD_CHAN1_BIT, PAD_CHAN2_BIT, PAD_CHAN3_BIT};

/* 804343E4-804343F0 061104 000C+00 4/6 0/0 0/0 .bss             mPadList__10JUTGamePad */
JSUList<JUTGamePad> JUTGamePad::mPadList(false);

/* 804514D0-804514D4 0009D0 0004+00 1/1 0/0 0/0 .sbss            None */
bool JUTGamePad::mListInitialized;

/* 804514D4-804514D8 0009D4 0004+00 3/3 0/0 0/0 .sbss            mPadAssign__10JUTGamePad */
u8 JUTGamePad::mPadAssign[4];

/* 802E06DC-802E07B0 2DB01C 00D4+00 0/0 4/4 0/0 .text __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
 */
JUTGamePad::JUTGamePad(EPadPort port) : mRumble(this), mLink(this) {
    mPortNum = port;
    if (mPortNum >= 0) {
        mPadAssign[port]++;
    }

    initList();
    mPadList.append(&mLink);
    update();
    mPadRecord = 0;
    mPadReplay = 0;
    clear();
}

/* 802E07B0-802E085C 2DB0F0 00AC+00 1/0 2/2 0/0 .text            __dt__10JUTGamePadFv */
JUTGamePad::~JUTGamePad() {
    if (mPortNum >= 0) {
        mPadAssign[mPortNum]--;
        mPortNum = EPortInvalid;
    }

    mPadList.remove(&mLink);
}

/* 802E085C-802E0898 2DB19C 003C+00 1/1 0/0 0/0 .text            initList__10JUTGamePadFv */
void JUTGamePad::initList() {
    if (!mListInitialized) {
        mPadList.initiate();
        mListInitialized = true;
    }
}

/* 804514D8-804514DC 0009D8 0004+00 2/2 0/0 0/0 .sbss            sSuppressPadReset__10JUTGamePad */
u32 JUTGamePad::sSuppressPadReset;

/* 804514DC-804514E0 0009DC 0004+00 1/1 1/1 0/0 .sbss            sAnalogMode__10JUTGamePad */
s32 JUTGamePad::sAnalogMode;

/* 802E0898-802E08D0 2DB1D8 0038+00 0/0 1/1 0/0 .text            init__10JUTGamePadFv */
BOOL JUTGamePad::init() {
    PADSetSpec(PAD_SPEC_5);
    setAnalogMode(3);
    return PADInit();
}

/* 802E08D0-802E08E4 2DB210 0014+00 1/1 0/0 0/0 .text            clear__10JUTGamePadFv */
void JUTGamePad::clear() {
    mButtonReset.mReset = false;
    field_0xa8 = 1;
}

/* 804343F0-80434420 061110 0030+00 1/3 1/1 0/0 .bss             mPadStatus__10JUTGamePad */
PADStatus JUTGamePad::mPadStatus[4];

/* 80434420-804344E0 061140 00C0+00 1/4 0/0 0/0 .bss             mPadButton__10JUTGamePad */
JUTGamePad::CButton JUTGamePad::mPadButton[4];

/* 804344E0-80434520 061200 0040+00 0/3 0/0 0/0 .bss             mPadMStick__10JUTGamePad */
JUTGamePad::CStick JUTGamePad::mPadMStick[4];

/* 80434520-80434560 061240 0040+00 0/3 0/0 0/0 .bss             mPadSStick__10JUTGamePad */
JUTGamePad::CStick JUTGamePad::mPadSStick[4];

/* 804508D8-804508DC 000358 0004+00 1/1 0/0 0/0 .sdata           sStickMode__10JUTGamePad */
JUTGamePad::EStickMode JUTGamePad::sStickMode = EStickMode1;

/* 804508DC-804508E0 00035C 0004+00 2/2 0/0 0/0 .sdata           sClampMode__10JUTGamePad */
int JUTGamePad::sClampMode = EClampStick;

/* 804514E0-804514E4 0009E0 0004+00 1/1 2/2 0/0 .sbss            sRumbleSupported__10JUTGamePad */
u32 JUTGamePad::sRumbleSupported;

/* 802E08E4-802E0BBC 2DB224 02D8+00 0/0 2/2 0/0 .text            read__10JUTGamePadFv */
u32 JUTGamePad::read() {
    sRumbleSupported = PADRead(mPadStatus);

    switch (sClampMode) {
    case EClampStick:
        PADClamp(mPadStatus);
        break;
    case EClampCircle:
        PADClampCircle(mPadStatus);
        break;
    }

    u32 reset_mask = 0;
    u32 bittest;
    for (int i = 0; i < 4; i++) {
        bittest = PAD_CHAN0_BIT >> i;

        if (mPadStatus[i].error == 0) {
            u32 stick_status;
            stick_status = mPadMStick[i].update(mPadStatus[i].stick_x, mPadStatus[i].stick_y, sStickMode, EMainStick, mPadButton[i].mButton) << 0x18;
            stick_status |= (mPadSStick[i].update(mPadStatus[i].substick_x, mPadStatus[i].substick_y, sStickMode, ESubStick, mPadButton[i].mButton) << 0x10);
            
            mPadButton[i].update(&mPadStatus[i], stick_status);
        } else if (mPadStatus[i].error == -1) {
            mPadMStick[i].update(0, 0, sStickMode, EMainStick, 0);
            mPadSStick[i].update(0, 0, sStickMode, ESubStick, 0);
            mPadButton[i].update(NULL, 0);

            if (!(sSuppressPadReset & bittest)) {
                reset_mask |= bittest;
            }
        } else {
            mPadButton[i].mTrigger = 0;
            mPadButton[i].mRelease = 0;
            mPadButton[i].mRepeat = 0;
        }
    }

    for (JSUListIterator<JUTGamePad> pad(mPadList.getFirst()); pad != mPadList.getEnd(); pad++) {
        if (pad->getPadReplay() != NULL && pad->getPadReplay()->isActive()) {
            PADStatus status;
            pad->getPadReplay()->getStatus(&status);

            u32 stick_status;
            stick_status = pad->mMainStick.update(status.stick_x, status.stick_y, sStickMode,
                                                 EMainStick, pad->mButton.mButton) << 0x18;
            stick_status |= pad->mSubStick.update(status.substick_x, status.substick_y, sStickMode,
                                                ESubStick, pad->mButton.mButton) << 0x10;

            pad->mButton.update(&status, stick_status);
        } else {
            if (pad->mPortNum == EPortInvalid) {
                pad->assign();
            }
            pad->update();
        }

        if (pad->getPadRecord() != NULL && pad->getPadRecord()->isActive()) {
            int port = pad->mPortNum;
            if (port >= 0 && mPadStatus[port].error == 0) {
                pad->getPadRecord()->write(&mPadStatus[port]);
            }
        }
    }

    if (reset_mask != 0) {
        PADReset(reset_mask);
    }

    checkResetSwitch();
    return sRumbleSupported;
}

/* 802E0BBC-802E0C6C 2DB4FC 00B0+00 1/1 0/0 0/0 .text            assign__10JUTGamePadFv */
void JUTGamePad::assign() {
    for (int i = 0; i < 4; i++) {
        if (mPadStatus[i].error == 0 && mPadAssign[i] == 0) {
            mPortNum = i;
            mPadAssign[i] = 1;
            mPadButton[i].setRepeat(mButton.mRepeatMask, mButton.mRepeatDelay, mButton.mRepeatRate);
            mRumble.clear(this);
            break;
        }
    }
}

/* 804514E4-804514E8 0009E4 0004+00 5/5 0/0 0/0 .sbss            mStatus__Q210JUTGamePad7CRumble */
bool JUTGamePad::CRumble::mStatus[4];

/* 804514E8-804514EC 0009E8 0004+00 5/5 0/0 0/0 .sbss            mEnabled__Q210JUTGamePad7CRumble */
u32 JUTGamePad::CRumble::mEnabled;

/* 804514EC-804514F0 0009EC 0004+00 2/2 4/4 0/0 .sbss sCallback__Q210JUTGamePad13C3ButtonReset */
callbackFn JUTGamePad::C3ButtonReset::sCallback;

/* 804514F0-804514F8 0009F0 0004+04 2/2 4/4 0/0 .sbss sCallbackArg__Q210JUTGamePad13C3ButtonReset
 */
void* JUTGamePad::C3ButtonReset::sCallbackArg;

/* 804514F8-80451500 0009F8 0008+00 2/2 0/0 0/0 .sbss sThreshold__Q210JUTGamePad13C3ButtonReset */
OSTime JUTGamePad::C3ButtonReset::sThreshold = (OSTime)(OS_TIMER_CLOCK / 60) * 30;

/* 80451500 0001+00 data_80451500 None */
bool JUTGamePad::C3ButtonReset::sResetSwitchPushing;

/* 80451501 0003+00 data_80451501 None */
bool JUTGamePad::C3ButtonReset::sResetOccurred;

/* 80451504-80451508 000A04 0004+00 2/2 0/0 0/0 .sbss
 * sResetOccurredPort__Q210JUTGamePad13C3ButtonReset            */
s32 JUTGamePad::C3ButtonReset::sResetOccurredPort;

/* 802E0C6C-802E0CD8 2DB5AC 006C+00 1/1 1/1 0/0 .text            checkResetCallback__10JUTGamePadFx
 */
void JUTGamePad::checkResetCallback(OSTime holdTime) {
    if (holdTime >= JUTGamePad::C3ButtonReset::sThreshold) {
        JUTGamePad::C3ButtonReset::sResetOccurred = true;
        JUTGamePad::C3ButtonReset::sResetOccurredPort = mPortNum;

        if (JUTGamePad::C3ButtonReset::sCallback != NULL) {
            JUTGamePad::C3ButtonReset::sCallback(mPortNum, JUTGamePad::C3ButtonReset::sCallbackArg);
        }
    }
}

/* 804508E0-804508E4 000360 0004+00 1/1 0/0 0/0 .sdata           sPressPoint__Q210JUTGamePad6CStick
 */
f32 JUTGamePad::CStick::sPressPoint = 0.5f;

/* 804508E4-804508E8 000364 0004+00 1/1 0/0 0/0 .sdata sReleasePoint__Q210JUTGamePad6CStick */
f32 JUTGamePad::CStick::sReleasePoint = 0.25f;

/* 804508E8-804508EC 000368 0004+00 1/1 0/0 0/0 .sdata
 * sResetPattern__Q210JUTGamePad13C3ButtonReset                 */
u32 JUTGamePad::C3ButtonReset::sResetPattern = PAD_BUTTON_START | PAD_BUTTON_X | PAD_BUTTON_B;

/* 804508EC-804508F0 00036C 0004+00 1/1 0/0 0/0 .sdata
 * sResetMaskPattern__Q210JUTGamePad13C3ButtonReset             */
u32 JUTGamePad::C3ButtonReset::sResetMaskPattern = 0x0000FFFF;

/* 802E0CD8-802E0FA4 2DB618 02CC+00 2/2 0/0 0/0 .text            update__10JUTGamePadFv */
void JUTGamePad::update() {
    if (mPortNum != EPortInvalid) {
        if (mPortNum >= 0 && mPortNum < 4) {
            mButton = mPadButton[mPortNum];
            mMainStick = mPadMStick[mPortNum];
            mSubStick = mPadSStick[mPortNum];
            mErrorStatus = mPadStatus[mPortNum].error;
        }

        if (field_0xa8 == 0 || C3ButtonReset::sResetPattern != (mButton.mButton & C3ButtonReset::sResetMaskPattern)) {
            mButtonReset.mReset = false;
        } else if (!JUTGamePad::C3ButtonReset::sResetOccurred) {
            if (mButtonReset.mReset == true) {
                OSTime hold_time = OSGetTime() - mResetHoldStartTime;
                checkResetCallback(hold_time);
            } else {
                mButtonReset.mReset = true;
                mResetHoldStartTime = OSGetTime();
            }
        }

        for (JSUListIterator<JUTGamePadLongPress> pad(JUTGamePadLongPress::sPatternList.getFirst()); pad != JUTGamePadLongPress::sPatternList.getEnd(); ++pad) {
            if (pad->isValid()) {
                if (mPortNum >= 0 && mPortNum < 4) {
                    if ((mButton.mButton & pad->getMaskPattern()) == pad->getPattern()) {
                        if (pad->mLongPressStatus[mPortNum] == true) {
                            OSTime hold_time = OSGetTime() - pad->mStartHoldTime[mPortNum];
                            pad->checkCallback(mPortNum, hold_time);
                        } else {
                            pad->mLongPressStatus[mPortNum] = true;
                            pad->mStartHoldTime[mPortNum] = OSGetTime();
                        }
                    } else {
                        pad->mLongPressStatus[mPortNum] = false;
                    }
                }
            }
        }

        if (mPortNum >= 0 && mPortNum < 4) {
            mRumble.update(mPortNum);
        }
    }
}

/* 8043456C-80434578 06128C 000C+00 1/2 0/0 0/0 .bss             sPatternList__19JUTGamePadLongPress
 */
JSUList<JUTGamePadLongPress> JUTGamePadLongPress::sPatternList(false);

/* 802E0FA4-802E1024 2DB8E4 0080+00 1/1 0/0 0/0 .text            checkResetSwitch__10JUTGamePadFv */
void JUTGamePad::checkResetSwitch() {
    if (!JUTGamePad::C3ButtonReset::sResetOccurred) {
        if (OSGetResetSwitchState()) {
            C3ButtonReset::sResetSwitchPushing = true;
        } else {
            if (C3ButtonReset::sResetSwitchPushing == true) {
                C3ButtonReset::sResetOccurred = true;
                C3ButtonReset::sResetOccurredPort = EPortInvalid;

                if (C3ButtonReset::sCallback != NULL) {
                    C3ButtonReset::sCallback(EPortInvalid, C3ButtonReset::sCallbackArg);
                }
            }
            C3ButtonReset::sResetSwitchPushing = false;
        }
    }
}

/* 802E1024-802E1050 2DB964 002C+00 0/0 1/1 0/0 .text            clearForReset__10JUTGamePadFv */
void JUTGamePad::clearForReset() {
    CRumble::setEnabled(0);
    recalibrate(PAD_CHAN3_BIT | PAD_CHAN2_BIT | PAD_CHAN1_BIT | PAD_CHAN0_BIT);
}

/* 802E1050-802E108C 2DB990 003C+00 2/2 0/0 0/0 .text            clear__Q210JUTGamePad7CButtonFv */
void JUTGamePad::CButton::clear() {
    mButton = 0;
    mTrigger = 0;
    mRelease = 0;
    mRepeat = 0;
    mAnalogA = 0;
    mAnalogB = 0;
    mAnalogL = 0;
    mAnalogR = 0;
    mRepeatCount = 0;
    mRepeatStart = 0;
    mRepeatMask = 0;
    mRepeatDelay = 0;
    mRepeatRate = 0;
}

/* 802E108C-802E121C 2DB9CC 0190+00 1/1 0/0 0/0 .text
 * update__Q210JUTGamePad7CButtonFPC9PADStatusUl                */
void JUTGamePad::CButton::update(const PADStatus* padStatus, u32 stickStatus) {
    u32 buttons;
    if (padStatus != NULL) {
        buttons = padStatus->button;
    } else {
        buttons = 0;
    }

    buttons = stickStatus | buttons;
    mRepeat = 0;

    if (mRepeatDelay != 0 && mRepeatMask != 0) {
        u32 repeatButton = buttons & mRepeatMask;
        mRepeat = 0;

        if (repeatButton == 0) {
            mRepeatStart = 0;
            mRepeatCount = 0;
        } else if (mRepeatStart == repeatButton) {
            mRepeatCount++;

            if (mRepeatCount == mRepeatDelay ||
                (mRepeatCount > mRepeatDelay && (mRepeatCount - mRepeatDelay) % mRepeatRate == 0))
            {
                mRepeat = repeatButton;
            }
        } else {
            mRepeat = repeatButton & (mRepeatStart ^ 0xFFFFFFFF);
            mRepeatStart = repeatButton;
            mRepeatCount = 0;
        }
    }

    mTrigger = buttons & (buttons ^ mButton);
    mRelease = mButton & (buttons ^ mButton);
    mButton = buttons;
    mRepeat |= (mRepeatMask ^ 0xFFFFFFFF) & mTrigger;

    if (padStatus != NULL) {
        mAnalogA = padStatus->analog_a;
        mAnalogB = padStatus->analog_b;
        mAnalogL = padStatus->trigger_left;
        mAnalogR = padStatus->trigger_right;
    } else {
        mAnalogA = 0;
        mAnalogB = 0;
        mAnalogL = 0;
        mAnalogR = 0;
    }

    mAnalogLf = (s32)mAnalogL / 150.0f;
    mAnalogRf = (s32)mAnalogR / 150.0f;
}

/* 802E121C-802E1238 2DBB5C 001C+00 2/2 0/0 0/0 .text            clear__Q210JUTGamePad6CStickFv */
void JUTGamePad::CStick::clear() {
    mPosX = 0.0f;
    mPosY = 0.0f;
    mValue = 0.0f;
    mAngle = 0;
}

/* 802E1238-802E1500 2DBB78 02C8+00 1/1 0/0 0/0 .text
 * update__Q210JUTGamePad6CStickFScScQ210JUTGamePad10EStickModeQ210JUTGamePad11EWhichStickUl */
u32 JUTGamePad::CStick::update(s8 x, s8 y, JUTGamePad::EStickMode mode,
                               JUTGamePad::EWhichStick stick, u32 buttons) {
    s32 clamp;
    switch (sClampMode) {
    case EClampStick:
        clamp = stick == EMainStick ? 54 : 42;
        break;
    case EClampCircle:
        clamp = stick == EMainStick ? 38 : 29;
        break;
    default:
        clamp = stick == EMainStick ? 69 : 57;
        break;
    }

    mRawX = x;
    mRawY = y;
    mPosX = (f32)x / (f32)clamp;
    mPosY = (f32)y / (f32)clamp;
    mValue = sqrtf((mPosX * mPosX) + (mPosY * mPosY));

    if (mValue > 1.0f) {
        if (mode == EStickMode1) {
            mPosX /= mValue;
            mPosY /= mValue;
        }
        mValue = 1.0f;
    }

    if (mValue > 0.0f) {
        if (mPosY == 0.0f) {
            if (mPosX > 0.0f) {
                mAngle = 0x4000;
            } else {
                mAngle = -0x4000;
            }
        } else {
            mAngle = (0x8000 / 3.1415926f) * atan2f(mPosX, -mPosY);
        }
    }

    u32 button_shift = stick == EMainStick ? 0x18 : 0x10;
    return getButton(buttons >> button_shift);
}

/* 802E1500-802E15B4 2DBE40 00B4+00 1/1 0/0 0/0 .text            getButton__Q210JUTGamePad6CStickFUl
 */
u32 JUTGamePad::CStick::getButton(u32 buttons) {
    u32 button = buttons & 0xF;

    if (-sReleasePoint < mPosX && mPosX < sReleasePoint) {
        button = button & ~0x3;
    } else if (mPosX <= -sPressPoint) {
        button = (button & ~0x2) | 1;
    } else if (mPosX >= sPressPoint) {
        button = (button & ~0x1) | 2;
    }

    if (-sReleasePoint < mPosY && mPosY < sReleasePoint) {
        button = button & ~0xC;
    } else if (mPosY <= -sPressPoint) {
        button = (button & ~0x8) | 4;
    } else if (mPosY >= sPressPoint) {
        button = (button & ~0x4) | 8;
    }

    return button;
}

/* 802E15B4-802E15D8 2DBEF4 0024+00 1/1 0/0 0/0 .text            clear__Q210JUTGamePad7CRumbleFv */
void JUTGamePad::CRumble::clear() {
    mFrame = 0;
    mLength = 0;
    mPattern = NULL;
    mFrameCount = 0;
    field_0x10 = 0;
    mEnabled = (PAD_CHAN3_BIT | PAD_CHAN2_BIT | PAD_CHAN1_BIT | PAD_CHAN0_BIT);
}

/* 802E15D8-802E1634 2DBF18 005C+00 2/2 0/0 0/0 .text clear__Q210JUTGamePad7CRumbleFP10JUTGamePad
 */
void JUTGamePad::CRumble::clear(JUTGamePad* pad) {
    if (pad->getPortNum() >= 0 && pad->getPortNum() < 4) {
        mStatus[pad->getPortNum()] = false;
        pad->stopMotorHard();
    }
    clear();
}

/* 802E1634-802E168C 2DBF74 0058+00 1/1 0/0 0/0 .text startMotor__Q210JUTGamePad7CRumbleFi */
void JUTGamePad::CRumble::startMotor(int port) {
    if (isEnabledPort(port)) {
        PADControlMotor(port, PAD_MOTOR_RUMBLE);
        mStatus[port] = true;
    }
}

/* 802E168C-802E16F8 2DBFCC 006C+00 4/4 3/3 0/0 .text stopMotor__Q210JUTGamePad7CRumbleFib */
void JUTGamePad::CRumble::stopMotor(int port, bool hard_stop) {
    if (isEnabledPort(port)) {
        u8 command = hard_stop ? PAD_MOTOR_STOP_HARD : PAD_MOTOR_STOP;
        PADControlMotor(port, command);
        mStatus[port] = false;
    }
}

/* 802E16F8-802E1720 2DC038 0028+00 1/1 0/0 0/0 .text            getNumBit__FPUci */
static bool getNumBit(u8* pattern, int index) {
    u8 bit = pattern[index >> 3] & (0x80 >> (index & 7));
    return bit != 0;
}

/* 802E1720-802E18A4 2DC060 0184+00 1/1 0/0 0/0 .text            update__Q210JUTGamePad7CRumbleFs */
void JUTGamePad::CRumble::update(s16 port) {
    if (isEnabledPort(port) == false) {
        mFrame = 0;
        mLength = 0;
        mPattern = NULL;
        mFrameCount = 0;
        field_0x10 = NULL;
    }

    if (mLength == 0) {
        return;
    }

    if (mFrame >= mLength) {
        stopMotorHard(port);
        mLength = 0;
    } else if (mFrameCount == 0) {
        if (mStatus[port] == 0) {
            startMotor(port);
        }
        return;
    } else {
        bool enabled = getNumBit(mPattern, mFrame % mFrameCount);
        u8 status = mStatus[port] != false;

        if (enabled && !status) {
            startMotor(port);
        } else if (!enabled) {
            bool hard_stop = false;
            if (field_0x10) {
                hard_stop = getNumBit(field_0x10, mFrame % mFrameCount);
            }

            if (status) {
                stopMotor(port, hard_stop);
            } else if (hard_stop) {
                stopMotorHard(port);
            }
        }
    }

    mFrame++;
}

/* 802E18A4-802E18CC 2DC1E4 0028+00 1/1 0/0 0/0 .text
 * triggerPatternedRumble__Q210JUTGamePad7CRumbleFUl            */
void JUTGamePad::CRumble::triggerPatternedRumble(u32 length) {
    if (mPattern != NULL && mFrameCount != 0) {
        mLength = length;
        mFrame = 0;
    }
}

/* 802E18CC-802E1948 2DC20C 007C+00 0/0 2/2 0/0 .text
 * startPatternedRumble__Q210JUTGamePad7CRumbleFPvQ310JUTGamePad7CRumble7ERumbleUl */
void JUTGamePad::CRumble::startPatternedRumble(void* data, JUTGamePad::CRumble::ERumble rumble,
                                               u32 length) {
    mFrameCount = ((*(u8*)data) << 8) + *((u8*)data + 1);
    mPattern = (u8*)data + 2;
    
    switch (rumble) {
    case JUTGamePad::CRumble::VAL_0:
        triggerPatternedRumble(mFrameCount);
        break;
    case JUTGamePad::CRumble::VAL_1:
        triggerPatternedRumble(-1);
        break;
    case JUTGamePad::CRumble::VAL_2:
        triggerPatternedRumble(length);
        break;
    }
}

/* 802E1948-802E1978 2DC288 0030+00 1/1 3/3 0/0 .text
 * stopPatternedRumble__Q210JUTGamePad7CRumbleFs                */
void JUTGamePad::CRumble::stopPatternedRumble(s16 port) {
    mLength = 0;
    stopMotorHard(port);
}

/* 802E1978-802E199C 2DC2B8 0024+00 0/0 1/1 0/0 .text
 * stopPatternedRumbleAtThePeriod__Q210JUTGamePad7CRumbleFv     */
void JUTGamePad::CRumble::stopPatternedRumbleAtThePeriod() {
    mLength = (mFrame + mFrameCount - 1) % mFrameCount;
}

/* 802E199C-802E19D8 2DC2DC 003C+00 1/1 1/1 0/0 .text            getGamePad__10JUTGamePadFi */
JUTGamePad* JUTGamePad::getGamePad(int port) {
    JSUListIterator<JUTGamePad> pad(mPadList.getFirst());

    for (; pad != mPadList.getEnd(); pad++) {
        if (port == pad->mPortNum) {
            return pad.getObject();
        }
    }

    return NULL;
}

/* 802E19D8-802E1A7C 2DC318 00A4+00 1/1 1/1 0/0 .text setEnabled__Q210JUTGamePad7CRumbleFUl */
void JUTGamePad::CRumble::setEnabled(u32 mask) {
    for (int i = 0; i < 4; i++) {
        if ((mEnabled & channel_mask[i]) == 0) {
            if (mStatus[i]) {
                stopMotor(i, false);
            }

            JUTGamePad* pad = getGamePad(i);
            if (pad != NULL) {
                pad->mRumble.stopPatternedRumble(pad->mPortNum);
            }
        }
    }

    mEnabled = (mask & (PAD_CHAN3_BIT | PAD_CHAN2_BIT | PAD_CHAN1_BIT | PAD_CHAN0_BIT));
}

/* 802E1A7C-802E1A98 2DC3BC 001C+00 1/1 0/0 0/0 .text setRepeat__Q210JUTGamePad7CButtonFUlUlUl */
void JUTGamePad::CButton::setRepeat(u32 mask, u32 delay, u32 rate) {
    mRepeatStart = 0;
    mRepeatCount = 0;
    mRepeatMask = mask;
    mRepeatDelay = delay;
    mRepeatRate = rate;
}

/* 802E1A98-802E1AFC 2DC3D8 0064+00 1/1 0/0 0/0 .text            recalibrate__10JUTGamePadFUl */
bool JUTGamePad::recalibrate(u32 mask) {
    for (int i = 0; i < 4; i++) {
        if (sSuppressPadReset & channel_mask[i]) {
            mask &= channel_mask[i] ^ 0xFFFFFFFF;
        }
    }

    return PADRecalibrate(mask);
}

/* 802E1AFC-802E1B60 2DC43C 0064+00 1/1 0/0 0/0 .text checkCallback__19JUTGamePadLongPressFiUl */
void JUTGamePadLongPress::checkCallback(int port, u32 hold_time) {
    if (port >= 0 && hold_time >= mThreshold) {
        field_0x11 = true;
        field_0x48[port] = true;

        if (mCallback != NULL) {
            mCallback(port, this, field_0x50);
        }
    }
}
