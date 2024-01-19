#include "dolphin/os/OSResetSW.h"
#include "dolphin/os.h"
#include "dolphin/os/OSReset.h"

u8 GameChoice : (OS_BASE_CACHED | 0x30E3);

void __OSResetSWInterruptHandler(__OSInterrupt interrupt, OSContext* context);

/* 804516A0-804516A4 000BA0 0004+00 1/1 0/0 0/0 .sbss            ResetCallback */
static OSResetCallback ResetCallback;

/* 804516A4-804516A8 000BA4 0004+00 2/2 0/0 0/0 .sbss            Down */
static BOOL Down;

/* 804516A8-804516B0 000BA8 0004+04 2/2 0/0 0/0 .sbss            LastState */
static BOOL LastState;

/* 804516B0-804516B4 000BB0 0004+00 1/1 0/0 0/0 .sbss            HoldUp */
static OSTime HoldUp;

/* 804516B8-804516BC 000BB8 0004+00 2/2 0/0 0/0 .sbss            HoldDown */
static OSTime HoldDown;

/* 8033FAE4-8033FBD8 33A424 00F4+00 0/0 1/1 0/0 .text            __OSResetSWInterruptHandler */
void __OSResetSWInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    OSResetCallback callback;

    HoldDown = __OSGetSystemTime();
    while (__OSGetSystemTime() - HoldDown < OSMicrosecondsToTicks(100) &&
           !(__PIRegs[0] & 0x00010000)) {
        ;
    }
    if (!(__PIRegs[0] & 0x00010000)) {
        LastState = Down = TRUE;
        __OSMaskInterrupts(OS_INTERRUPTMASK_PI_RSW);
        if (ResetCallback) {
            callback = ResetCallback;
            ResetCallback = NULL;
            callback();
        }
    }
    __PIRegs[0] = 2;
}

/* 8033FBD8-8033FE70 33A518 0298+00 1/1 0/0 0/0 .text            OSGetResetButtonState */
BOOL OSGetResetButtonState(void) {
    BOOL enabled = OSDisableInterrupts();
    BOOL state;
    OSTime now = __OSGetSystemTime();
    u32 reg = __PIRegs[0];

    if (!(reg & 0x00010000)) {
        if (!Down) {
            Down = TRUE;
            state = HoldUp ? TRUE : FALSE;
            HoldDown = now;
        } else {
            state = HoldUp || (OSMicrosecondsToTicks(100) < now - HoldDown)
                        ? TRUE
                        : FALSE;
        }
    } else if (Down) {
        Down = FALSE;
        state = LastState;
        if (state) {
            HoldUp = now;
        } else {
            HoldUp = 0;
        }
    } else if (HoldUp && (now - HoldUp < OSMillisecondsToTicks(40))) {
        state = TRUE;
    } else {
        state = FALSE;
        HoldUp = 0;
    }

    LastState = state;

    if (GameChoice & 0x1F) {
        OSTime fire = (GameChoice & 0x1F) * 60;
        fire = __OSStartTime + OSSecondsToTicks(fire);
        if (fire < now) {
            now -= fire;
            now = OSTicksToSeconds(now) / 2;
            if ((now & 1) == 0) {
                state = TRUE;
            } else {
                state = FALSE;
            }
        }
    }

    OSRestoreInterrupts(enabled);
    return state;
}

/* 8033FE70-8033FE90 33A7B0 0020+00 0/0 1/1 0/0 .text            OSGetResetSwitchState */
BOOL OSGetResetSwitchState(void) {
    return OSGetResetButtonState();
}
