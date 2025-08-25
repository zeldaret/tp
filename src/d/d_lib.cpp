/**
 * d_lib.cpp
 * Utility Functions
 */

#include "d/dolzel.h"

#include "d/d_lib.h"
#include "d/d_event.h"
#include "d/d_stage.h"
#include "JSystem/JKernel/JKRAramArchive.h"
#include "JSystem/JKernel/JKRAram.h"
#include "JSystem/JKernel/JKRDecomp.h"
#include "f_op/f_op_actor.h"
#include "m_Do/m_Do_controller_pad.h"

/* 803A7240-803A7250 004360 0010+00 0/0 0/0 6/6 .data            ZeroQuat */
Quaternion ZeroQuat = {
    0.0f,
    0.0f,
    0.0f,
    1.0f
};

STControl::STControl(s16 delayY, s16 delayX, s16 param_2, s16 param_3, f32 threshold, f32 param_5,
                     s16 param_6, s16 param_7) {
    setWaitParm(delayY, delayX, param_2, param_3, threshold, param_5, param_6, param_7);
    init();
}

void STControl::setWaitParm(s16 delayY, s16 delayX, s16 param_2, s16 param_3, f32 threshold,
                            f32 param_5, s16 param_6, s16 param_7) {
    mRepeatDelayY = delayY;
    mRepeatDelayX = delayX;
    field_0x16 = param_2;
    field_0x1c = param_3;
    mThreshold = threshold;
    field_0x08 = param_5;
    field_0x24 = param_6;
    field_0x26 = param_7;
}

void STControl::init() {
    field_0x0e = 0;
    field_0x10 = 0;
    field_0x0d = 0;
    mDirectionTrig = 0;
    field_0x22 = 0;
    mXwaitTimer = mRepeatDelayY;
    mYwaitTimer = mRepeatDelayY;
    field_0x1e = field_0x1c;
    field_0x20 = field_0x1c;
    mFirstWaitTime = 0;
    field_0x2a = mFirstWaitTime;
    field_0x2c = mFirstWaitTime;
}

void STControl::Xinit() {
    field_0x0e = 0;
    mDirectionTrig &= ~0x03;
    mXwaitTimer = mRepeatDelayY;
    field_0x1e = field_0x1c;
    field_0x2a = mFirstWaitTime;
}

/* 8003212C-8003215C 02CA6C 0030+00 1/1 0/0 0/0 .text            Yinit__9STControlFv */
void STControl::Yinit() {
    field_0x10 = 0;
    mDirectionTrig &= ~0x0C;
    mYwaitTimer = mRepeatDelayY;
    field_0x20 = field_0x1c;
    field_0x2c = mFirstWaitTime;
}

f32 STControl::getValueStick() {
    return mDoCPd_c::getStickValue(PAD_1);
}

s16 STControl::getAngleStick() {
    return mDoCPd_c::getStickAngle(PAD_1);
}

f32 CSTControl::getValueStick() {
    return mDoCPd_c::getSubStickValue(PAD_1);
}

s16 CSTControl::getAngleStick() {
    return mDoCPd_c::getSubStickAngle(PAD_1);
}

/* 8003219C-8003242C 02CADC 0290+00 0/0 24/24 0/0 .text            checkTrigger__9STControlFv */
u8 STControl::checkTrigger() {
    field_0x0d = mDirectionTrig;
    f32 stickValue = getValueStick();
    s16 stickAngle = getAngleStick();
    u8 var_r6 = 0;
    s16 temp_r7 = 0x2000 - field_0x26 >> 1;

    if (!cM3d_IsZero(stickValue)) {
        if (stickAngle < field_0x22 - 0x7000 + temp_r7) {
            var_r6 |= TRIG_UP;
        } else if (stickAngle < field_0x22 - 0x5000 - temp_r7) {
            var_r6 |= TRIG_UP_LEFT;
        } else if (stickAngle < field_0x22 - 0x3000 + temp_r7) {
            var_r6 |= TRIG_LEFT;
        } else if (stickAngle < field_0x22 - 0x1000 - temp_r7) {
            var_r6 |= TRIG_DOWN_LEFT;
        } else if (stickAngle < field_0x22 + 0x1000 + temp_r7) {
            var_r6 |= TRIG_DOWN;
        } else if (stickAngle < field_0x22 + 0x3000 - temp_r7) {
            var_r6 |= TRIG_DOWN_RIGHT;
        } else if (stickAngle < field_0x22 + 0x5000 + temp_r7) {
            var_r6 |= TRIG_RIGHT;
        } else if (stickAngle < field_0x22 + 0x7000 - temp_r7) {
            var_r6 |= TRIG_UP_RIGHT;
        } else {
            var_r6 |= TRIG_UP;
        }

        if (stickValue >= mThreshold) {
            mDirectionTrig = var_r6;
        } else if (stickValue < field_0x08) {
            mDirectionTrig = 0;
        } else {
            mDirectionTrig &= ~var_r6;
        }

        if (mDirectionTrig != field_0x0d) {
            if (mDirectionTrig == 0) {
                field_0x22 = 0;
            } else if ((stickAngle & 0x1FFF) > 0x1000) {
                field_0x22 = field_0x24;
            } else {
                field_0x22 = -field_0x24;
            }
        }

        if (!(mDirectionTrig & 3)) {
            Xinit();
        }

        if (!(mDirectionTrig & 0xC)) {
            Yinit();
        }
    } else {
        mDirectionTrig = 0;
        Xinit();
        Yinit();
    }

    if ((field_0x0d & mDirectionTrig & 3) && field_0x0e > 0) {
        field_0x0e--;
    }

    if ((field_0x0d & mDirectionTrig & 0xC) && field_0x10 > 0) {
        field_0x10--;
    }

    return mDirectionTrig;
}

bool STControl::checkLeftTrigger() {
    if (field_0x0e == 0 && mDirectionTrig & TRIG_LEFT) {
        field_0x0e = mXwaitTimer + field_0x2a;
        field_0x2a = 0;
        if ((int)field_0x1e == 0) {
            mXwaitTimer -= field_0x16;
            if (mXwaitTimer < mRepeatDelayX) {
                mXwaitTimer = mRepeatDelayX;
            }
        } else {
            field_0x1e--;
        }
        return true;
    }
    return false;
}

bool STControl::checkRightTrigger() {
    if (field_0x0e == 0 && mDirectionTrig & TRIG_RIGHT) {
        field_0x0e = mXwaitTimer + field_0x2a;
        field_0x2a = 0;
        if ((int)field_0x1e == 0) {
            mXwaitTimer -= field_0x16;
            if (mXwaitTimer < mRepeatDelayX) {
                mXwaitTimer = mRepeatDelayX;
            }
        } else {
            field_0x1e--;
        }
        return true;
    }
    return false;
}

bool STControl::checkUpTrigger() {
    if (field_0x10 == 0 && mDirectionTrig & TRIG_UP) {
        field_0x10 = mYwaitTimer + field_0x2c;
        field_0x2c = 0;
        if ((int)field_0x20 == 0) {
            mYwaitTimer -= field_0x16;
            if (mYwaitTimer < mRepeatDelayX) {
                mYwaitTimer = mRepeatDelayX;
            }
        } else {
            field_0x20--;
        }
        return true;
    }
    return false;
}

bool STControl::checkDownTrigger() {
    if (field_0x10 == 0 && mDirectionTrig & TRIG_DOWN) {
        field_0x10 = mYwaitTimer + field_0x2c;
        field_0x2c = 0;
        if ((int)field_0x20 == 0) {
            mYwaitTimer -= field_0x16;
            if (mYwaitTimer < mRepeatDelayX) {
                mYwaitTimer = mRepeatDelayX;
            }
        } else {
            field_0x20--;
        }
        return true;
    }
    return false;
}

/* 8003261C-80032654 02CF5C 0038+00 0/0 0/0 1/1 .text            dLib_getEventSwitchNo__Fi */
u8 dLib_getEventSwitchNo(int param_0) {
    dStage_MapEvent_dt_c* mapEvent = dEvt_control_c::searchMapEventData(param_0);
    if (mapEvent != NULL) {
        return mapEvent->mSwitch;
    }
    return 0xff;
}

/* 80032654-80032738 02CF94 00E4+00 0/0 0/0 8/8 .text
 * dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz */
BOOL dLib_checkActorInRectangle(fopAc_ac_c* param_0, fopAc_ac_c* param_1, cXyz const* param_2,
                                cXyz const* param_3) {
    cXyz local_24 = param_0->current.pos - param_1->current.pos;
    mDoMtx_stack_c::YrotS(-param_1->current.angle.y);
    mDoMtx_stack_c::multVec(&local_24, &local_24);
    if (param_2->x <= local_24.x && local_24.x <= param_3->x && param_2->z <= local_24.z &&
        local_24.z <= param_3->z)
    {
        return TRUE;
    }
    return FALSE;
}

/* 80032738-80032804 02D078 00CC+00 0/0 4/4 0/0 .text
 * dLib_getExpandSizeFromAramArchive__FP14JKRAramArchivePCc     */
u32 dLib_getExpandSizeFromAramArchive(JKRAramArchive* i_aramArchive, char const* param_2) {
    u8 header[32] __attribute__((aligned(32)));
    JUT_ASSERT(1252, i_aramArchive != 0);
    u32 address = i_aramArchive->getAramAddress(param_2);
    if (address == 0) {
        return 0;
    }
    u8* readAddress = JKRAramToMainRam(address, header, 0x20, EXPAND_SWITCH_UNKNOWN0,
                                       0, 0, 0xffffffff, 0);
    JUT_ASSERT(1260, readAddress == header);
    JKRArchive::SDIFileEntry* entry = i_aramArchive->findFsResource(param_2, 0);
    JUT_ASSERT(1263, entry != 0);
    u32 uVar1 = ALIGN_NEXT(JKRDecompExpandSize(header), 32);
    u32 uVar5 = ALIGN_NEXT(entry->data_size, 32);
    if (uVar1 > uVar5) {
        return uVar1;
    }
    return uVar5;
}

/* 80450DD8-80450DDC 0002D8 0004+00 2/2 0/0 0/0 .sbss            m_diffTime__11dLib_time_c */
OSTime dLib_time_c::m_diffTime;

/* 80450DE0-80450DE4 0002E0 0004+00 3/3 0/0 0/0 .sbss            m_stopTime__11dLib_time_c */
OSTime dLib_time_c::m_stopTime;

/* 80450DE8-80450DF0 0002E8 0008+00 3/3 0/0 0/0 .sbss            None */
bool dLib_time_c::m_timeStopped;

/* 80032804-80032880 02D144 007C+00 0/0 8/8 0/0 .text            getTime__11dLib_time_cFv */
OSTime dLib_time_c::getTime() {
    if (!m_timeStopped) {
        return OSGetTime() - m_diffTime;
    }

    OSTime time = OSGetTime();
    m_diffTime += (time - m_stopTime);
    m_stopTime = time;
    return time - m_diffTime;
}

/* 80032880-800328BC 02D1C0 003C+00 0/0 1/1 0/0 .text            stopTime__11dLib_time_cFv */
void dLib_time_c::stopTime() {
    if (!m_timeStopped) {
        m_stopTime = OSGetTime();
        m_timeStopped = true;
    }
}

/* 800328BC-80032918 02D1FC 005C+00 0/0 1/1 0/0 .text            startTime__11dLib_time_cFv */
void dLib_time_c::startTime() {
    if (m_timeStopped) {
        m_diffTime += OSGetTime() - m_stopTime;
        m_timeStopped = false;
    }
}
