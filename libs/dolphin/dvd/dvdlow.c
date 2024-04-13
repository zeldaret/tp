#include "dolphin/dvd/dvdlow.h"
#include "dolphin/dvd.h"
#include "dolphin/os/OSAlarm.h"
#include "dolphin/os/OSContext.h"
#include "dolphin/os/OSReset.h"

void __DVDInitWA();
void __DVDInterruptHandler(u32 arg0, OSContext* context);
static void AlarmHandler();
static void AlarmHandlerForTimeout();
static void Read(void* arg0, u32 arg1, u32 arg2, DVDLowCallback cb);
static void SeekTwiceBeforeRead(void* arg0, u32 arg1, u32 arg2, DVDLowCallback cb);
BOOL DVDLowRead(void* arg0, u32 arg1, u32 arg2, DVDLowCallback cb);
BOOL DVDLowSeek(u32 arg0, DVDLowCallback cb);
BOOL DVDLowWaitCoverClose(DVDLowCallback cb);
BOOL DVDLowReadDiskID(u32 arg0, DVDLowCallback cb);
BOOL DVDLowStopMotor(DVDLowCallback cb);
BOOL DVDLowRequestError(DVDLowCallback cb);
BOOL DVDLowInquiry(u32 arg0, DVDLowCallback cb);
BOOL DVDLowAudioStream(u32 arg0, u32 arg1, u32 arg2, DVDLowCallback cb);
BOOL DVDLowRequestAudioStatus(u32 arg0, DVDLowCallback cb);
BOOL DVDLowAudioBufferConfig(s32 arg0, u32 arg1, DVDLowCallback cb);
void DVDLowReset();
BOOL DVDLowBreak();
DVDLowCallback DVDLowClearCallback();
void __DVDLowSetWAType(u32 arg0, u32 arg1);
BOOL __DVDLowTestAlarm(OSAlarm* alarm);

typedef struct DVDBuffer {
    void* addr;
    u32 length;
    u32 offset;
} DVDBuffer;

typedef struct DVDCommand {
    s32 cmd;
    void* addr;
    u32 length;
    u32 offset;
    DVDLowCallback callback;
} DVDCommand;

/* 8044C830-8044C870 079550 003C+04 6/6 0/0 0/0 .bss             CommandList */
static DVDCommand CommandList[3];

/* 80451710-80451714 000C10 0004+00 12/12 0/0 0/0 .sbss            StopAtNextInt */
static volatile BOOL StopAtNextInt;

/* 80451714-80451718 000C14 0004+00 1/1 0/0 0/0 .sbss            LastLength */
static u32 LastLength;

/* 80451718-8045171C 000C18 0004+00 13/13 0/0 0/0 .sbss            Callback */
static DVDLowCallback Callback;

/* 8045171C-80451720 000C1C 0004+00 1/1 0/0 0/0 .sbss            ResetCoverCallback */
static DVDLowCallback ResetCoverCallback;

/* 80451720-80451724 000C20 0004+00 2/2 0/0 0/0 .sbss            LastResetEnd */
static volatile OSTime LastResetEnd;

/* 80451728-8045172C 000C28 0004+00 2/2 0/0 0/0 .sbss            ResetOccurred */
static volatile u32 ResetOccurred;

/* 8045172C-80451730 000C2C 0004+00 3/3 0/0 0/0 .sbss            WaitingCoverClose */
static volatile BOOL WaitingCoverClose;

/* 80451730-80451734 000C30 0004+00 2/2 0/0 0/0 .sbss            Breaking */
static BOOL Breaking;

/* 80451734-80451738 000C34 0004+00 2/2 0/0 0/0 .sbss            WorkAroundType */
static volatile u32 WorkAroundType;

/* 80451738-80451740 000C38 0004+04 2/2 0/0 0/0 .sbss            WorkAroundSeekLocation */
static u32 WorkAroundSeekLocation[2];

/* 80451740-80451744 000C40 0004+00 2/2 0/0 0/0 .sbss            LastReadFinished */
static volatile OSTime LastReadFinished;

/* 80451748-8045174C 000C48 0004+00 1/1 0/0 0/0 .sbss            LastReadIssued */
static OSTime LastReadIssued;

/* 80451750-80451754 000C50 0004+00 2/2 0/0 0/0 .sbss            LastCommandWasRead */
static volatile BOOL LastCommandWasRead;

/* 80451754-80451758 000C54 0004+00 5/5 0/0 0/0 .sbss            NextCommandNumber */
static volatile u32 NextCommandNumber;

/* 80347674-803476B4 341FB4 0040+00 0/0 1/1 0/0 .text            __DVDInitWA */
void __DVDInitWA() {
    NextCommandNumber = 0;
    ((DVDCommand*)CommandList)[0].cmd = -1;
    __DVDLowSetWAType(0, 0);
    OSInitAlarm();
}

/* ############################################################################################## */
/* 8044C870-8044C898 079590 0028+00 0/1 0/0 0/0 .bss             AlarmForWA */
static OSAlarm AlarmForWA;

/* 8044C898-8044C8C0 0795B8 0028+00 9/11 0/0 0/0 .bss             AlarmForTimeout */
static OSAlarm AlarmForTimeout;

/* 8044C8C0-8044C8E8 0795E0 0028+00 1/1 0/0 0/0 .bss             AlarmForBreak */
static OSAlarm AlarmForBreak;

/* 8044C8E8-8044C8F4 079608 000C+00 0/1 0/0 0/0 .bss             Prev */
static DVDBuffer Prev;

/* 8044C8F4-8044C900 079614 000C+00 0/2 0/0 0/0 .bss             Curr */
static DVDBuffer Curr;

/* 804509D8-804509E0 000458 0004+04 2/2 0/0 0/0 .sdata           FirstRead */
static BOOL FirstRead = TRUE;

/* 803476B4-80347994 341FF4 02E0+00 0/0 1/1 0/0 .text            __DVDInterruptHandler */
void __DVDInterruptHandler(u32 arg0, OSContext* context) {
    u32 reg;
    s32 rv;
    u32 val = 0;
    u32 val2;
    u32 val3;
    u32 val4;
    OSContext localContext;
    if (LastCommandWasRead) {
        LastReadFinished = __OSGetSystemTime();
        FirstRead = FALSE;
        Prev.addr = Curr.addr;
        Prev.length = Curr.length;
        Prev.offset = Curr.offset;

        if (StopAtNextInt == TRUE) {
            val |= 8;
        }
    }

    LastCommandWasRead = FALSE;
    StopAtNextInt = FALSE;
    reg = __DIRegs[0];
    val4 = (reg & 0x2a);
    val2 = (reg & 0x54) & (val4 << 1);
    if (val2 & 0x40) {
        val |= 8;
    }
    if (val2 & 0x10) {
        val |= 1;
    }
    if (val2 & 0x4) {
        val |= 2;
    }

    if (val) {
        ResetOccurred = FALSE;
        OSCancelAlarm(&AlarmForTimeout);
    }
    __DIRegs[0] = val2 | (val4);

    if (ResetOccurred && (__OSGetSystemTime() - LastResetEnd) < (OSTime)OSMillisecondsToTicks(200))
    {
        reg = __DIRegs[1];
        val2 = (reg & 0x4) & ((reg & 0x2) << 1);
        if (val2 & 0x4) {
            if (ResetCoverCallback) {
                ResetCoverCallback(4);
            }
            ResetCoverCallback = NULL;
        }

        __DIRegs[1] = __DIRegs[1];
    } else if (WaitingCoverClose) {
        reg = __DIRegs[1];
        val3 = reg & 2;
        val2 = (reg & 0x4) & ((reg & 0x2) << 1);
        if (val2 & 4) {
            val |= 4;
        }
        __DIRegs[1] = val2 | val3;
        WaitingCoverClose = FALSE;
    } else {
        __DIRegs[1] = 0;
    }

    if ((val & 8) && !Breaking) {
        val &= ~0x8;
    }

    if (val & 1) {
        u32 num;
        DVDCommand* command;
        s32 cmd0 = CommandList[num = NextCommandNumber].cmd;
        if (cmd0 == 1) {
            NextCommandNumber++;
            command = &CommandList[num];
            Read(command->addr, command->length, command->offset, command->callback);
            rv = 1;
        } else if (cmd0 == 2) {
            NextCommandNumber++;
            command = &CommandList[num];
            DVDLowSeek(command->offset, command->callback);
            rv = 1;
        } else {
            rv = 0;
        }

        if (rv) {
            return;
        }
    } else {
        CommandList[0].cmd = -1;
        NextCommandNumber = 0;
    }

    OSClearContext(&localContext);
    OSSetCurrentContext(&localContext);
    if (val) {
        DVDLowCallback cb = Callback;
        Callback = NULL;
        if (cb) {
            cb(val);
        }
        Breaking = FALSE;
    }

    OSClearContext(&localContext);
    OSSetCurrentContext(context);
}

/* 80347994-80347A18 3422D4 0084+00 1/1 0/0 0/0 .text            AlarmHandler */
static void AlarmHandler(OSAlarm* alarm, OSContext* context) {
    DVDCommand* cmd;
    u32 num;
    s32 cmd0 = CommandList[num = NextCommandNumber].cmd;

    if (cmd0 == 1) {
        ++NextCommandNumber;
        cmd = &CommandList[num];
        Read(cmd->addr, cmd->length, cmd->offset, cmd->callback);
    } else if (cmd0 == 2) {
        ++NextCommandNumber;
        cmd = &CommandList[num];
        DVDLowSeek(cmd->offset, cmd->callback);
    }
}

/* 80347A18-80347A88 342358 0070+00 9/9 0/0 0/0 .text            AlarmHandlerForTimeout */
static void AlarmHandlerForTimeout(OSAlarm* alarm, OSContext* context) {
    OSContext tmpContext;
    DVDLowCallback callback;
    __OSMaskInterrupts(0x400);
    OSClearContext(&tmpContext);
    OSSetCurrentContext(&tmpContext);
    callback = Callback;
    Callback = NULL;
    if (callback != NULL) {
        callback(0x10);
    }
    OSClearContext(&tmpContext);
    OSSetCurrentContext(context);
}

static void __setAlarm(u32 seconds) {
    u32 temp = OSSecondsToTicks(seconds);
    OSCreateAlarm(&AlarmForTimeout);
    OSSetAlarm(&AlarmForTimeout, (OSTime)temp, AlarmHandlerForTimeout);
}

/* 80347A88-80347B98 3423C8 0110+00 3/3 0/0 0/0 .text            Read */
void Read(void* arg0, u32 arg1, u32 arg2, DVDLowCallback cb) {
    StopAtNextInt = FALSE;
    Callback = cb;
    LastCommandWasRead = TRUE;
    LastReadIssued = __OSGetSystemTime();
    __DIRegs[2] = 0xA8000000;
    __DIRegs[3] = arg2 >> 2;
    __DIRegs[4] = arg1;
    __DIRegs[5] = (u32)arg0;
    __DIRegs[6] = arg1;
    LastLength = arg1;
    __DIRegs[7] = 3;
    if (arg1 > 0xa00000) {
        __setAlarm(20);
    } else {
        __setAlarm(10);
    }
}

/* 80347B98-80347C18 3424D8 0080+00 1/1 0/0 0/0 .text            SeekTwiceBeforeRead */
void SeekTwiceBeforeRead(void* arg0, u32 arg1, u32 arg2, DVDLowCallback cb) {
    u32 val;
    u32 temp = arg2 & 0xffff8000;
    if (temp == 0) {
        val = 0;
    } else {
        val = temp + WorkAroundSeekLocation[0];
    }

    CommandList[0].cmd = 2;
    CommandList[0].offset = val;
    CommandList[0].callback = cb;
    CommandList[1].cmd = 1;
    CommandList[1].addr = arg0;
    CommandList[1].length = arg1;
    CommandList[1].offset = arg2;
    CommandList[1].callback = cb;
    CommandList[2].cmd = -1;
    NextCommandNumber = 0;
    DVDLowSeek(val, cb);
}

BOOL HitCache() {
    u32 uVar1 = (Prev.offset + Prev.length - 1) >> 15;
    u32 uVar2 = (Curr.offset >> 15);
    u32 iVar3 = (DVDGetCurrentDiskID()->is_streaming ? TRUE : FALSE) ? 5 : 15;

    if ((uVar2 > uVar1 - 2) || (uVar2 < uVar1 + iVar3 + 3)) {
        return TRUE;
    }
    return FALSE;
}

static void DoJustRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
    CommandList[0].cmd = -1;
    NextCommandNumber = 0;
    Read(addr, length, offset, callback);
}

static void WaitBeforeRead(void* addr, u32 length, u32 offset, DVDLowCallback callback,
                           OSTime timeout) {
    CommandList[0].cmd = 1;
    CommandList[0].addr = addr;
    CommandList[0].length = length;
    CommandList[0].offset = offset;
    CommandList[0].callback = callback;
    CommandList[1].cmd = -1;
    NextCommandNumber = 0;
    OSCreateAlarm(&AlarmForWA);
    OSSetAlarm(&AlarmForWA, timeout, AlarmHandler);
}

/* 80347C18-80347EB0 342558 0298+00 0/0 4/4 0/0 .text            DVDLowRead */
BOOL DVDLowRead(void* addr, u32 length, u32 offset, DVDLowCallback cb) {
    OSTime diff;
    u32 prev;

    __DIRegs[6] = length;
    Curr.addr = addr;
    Curr.length = length;
    Curr.offset = offset;

    if (WorkAroundType == 0) {
        DoJustRead(addr, length, offset, cb);
    } else if (WorkAroundType == 1) {
        if (FirstRead) {
            SeekTwiceBeforeRead(addr, length, offset, cb);
        } else {
            if (!HitCache(&Curr, &Prev)) {
                DoJustRead(addr, length, offset, cb);
            } else {
                prev = (Prev.offset + Prev.length - 1) >> 15;
                if (prev == Curr.offset >> 15 || prev + 1 == Curr.offset >> 15) {
                    diff = __OSGetSystemTime() - LastReadFinished;
                    if (OSMillisecondsToTicks(5) < diff) {
                        DoJustRead(addr, length, offset, cb);
                    } else {
                        WaitBeforeRead(addr, length, offset, cb,
                                       OSMillisecondsToTicks(5) - diff +
                                           OSMicrosecondsToTicks(500));
                    }
                } else {
                    SeekTwiceBeforeRead(addr, length, offset, cb);
                }
            }
        }
    }
    return TRUE;
}

/* 80347EB0-80347F44 3427F0 0094+00 3/3 2/2 0/0 .text            DVDLowSeek */
BOOL DVDLowSeek(u32 arg0, DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = 0xAB000000;
    __DIRegs[3] = arg0 >> 2;
    __DIRegs[7] = 1;
    __setAlarm(10);
    return TRUE;
}

/* 80347F44-80347F70 342884 002C+00 0/0 3/3 0/0 .text            DVDLowWaitCoverClose */
BOOL DVDLowWaitCoverClose(DVDLowCallback cb) {
    Callback = cb;
    WaitingCoverClose = TRUE;
    StopAtNextInt = FALSE;
    __DIRegs[1] = 2;
    return TRUE;
}

/* 80347F70-80348014 3428B0 00A4+00 0/0 2/2 0/0 .text            DVDLowReadDiskID */
BOOL DVDLowReadDiskID(u32 arg0, DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = 0xA8000040;
    __DIRegs[3] = 0;
    __DIRegs[4] = 0x20;
    __DIRegs[5] = arg0;
    __DIRegs[6] = 0x20;
    __DIRegs[7] = 3;
    __setAlarm(10);
    return 1;
}

/* 80348014-803480A0 342954 008C+00 0/0 9/9 0/0 .text            DVDLowStopMotor */
BOOL DVDLowStopMotor(DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = 0xE3000000;
    __DIRegs[7] = 1;
    __setAlarm(10);
    return 1;
}

/* 803480A0-8034812C 3429E0 008C+00 0/0 7/7 0/0 .text            DVDLowRequestError */
BOOL DVDLowRequestError(DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = 0xE0000000;
    __DIRegs[7] = 1;
    __setAlarm(10);
    return 1;
}

/* 8034812C-803481C8 342A6C 009C+00 0/0 1/1 0/0 .text            DVDLowInquiry */
BOOL DVDLowInquiry(u32 arg0, DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = 0x12000000;
    __DIRegs[4] = 0x20;
    __DIRegs[5] = arg0;
    __DIRegs[6] = 0x20;
    __DIRegs[7] = 3;
    __setAlarm(10);
    return 1;
}

/* 803481C8-80348260 342B08 0098+00 0/0 2/2 0/0 .text            DVDLowAudioStream */
BOOL DVDLowAudioStream(u32 arg0, u32 arg1, u32 arg2, DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = arg0 | 0xe1000000;
    __DIRegs[3] = arg2 >> 2;
    __DIRegs[4] = arg1;
    __DIRegs[7] = 1;
    __setAlarm(10);
    return 1;
}

/* 80348260-803482EC 342BA0 008C+00 0/0 1/1 0/0 .text            DVDLowRequestAudioStatus */
BOOL DVDLowRequestAudioStatus(u32 arg0, DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = arg0 | 0xe2000000;
    __DIRegs[7] = 1;
    __setAlarm(10);
    return 1;
}

/* 803482EC-80348388 342C2C 009C+00 0/0 3/3 0/0 .text            DVDLowAudioBufferConfig */
BOOL DVDLowAudioBufferConfig(s32 arg0, u32 arg1, DVDLowCallback cb) {
    Callback = cb;
    StopAtNextInt = FALSE;
    __DIRegs[2] = arg1 | ((arg0 ? 0x10000 : 0) | 0xe4000000);
    __DIRegs[7] = 1;
    __setAlarm(10);
    return 1;
}

/* 80348388-80348444 342CC8 00BC+00 0/0 1/1 0/0 .text            DVDLowReset */
void DVDLowReset() {
    u32 reg;
    OSTime startTime;
    __DIRegs[1] = 2;
    reg = __PIRegs[9];
    __PIRegs[9] = (reg & ~4) | 1;
    startTime = __OSGetSystemTime();

    while (__OSGetSystemTime() - startTime < OSMicrosecondsToTicks(12))
        ;

    __PIRegs[9] = reg | 5;
    ResetOccurred = TRUE;
    LastResetEnd = __OSGetSystemTime();
}

/* 80348444-80348458 342D84 0014+00 0/0 1/1 0/0 .text            DVDLowBreak */
BOOL DVDLowBreak() {
    StopAtNextInt = TRUE;
    Breaking = TRUE;
    return TRUE;
}

/* 80348458-80348474 342D98 001C+00 0/0 1/1 0/0 .text            DVDLowClearCallback */
DVDLowCallback DVDLowClearCallback() {
    DVDLowCallback rv;
    __DIRegs[1] = 0;
    rv = Callback;
    WaitingCoverClose = FALSE;
    Callback = NULL;
    return rv;
}

/* 80348474-803484B8 342DB4 0044+00 1/1 0/0 0/0 .text            __DVDLowSetWAType */
void __DVDLowSetWAType(u32 arg0, u32 arg1) {
    BOOL enabled = OSDisableInterrupts();
    WorkAroundType = arg0;
    WorkAroundSeekLocation[0] = arg1;
    OSRestoreInterrupts(enabled);
}

/* 803484B8-803484F0 342DF8 0038+00 0/0 1/1 0/0 .text            __DVDLowTestAlarm */
BOOL __DVDLowTestAlarm(OSAlarm* alarm) {
    if (alarm == &AlarmForBreak) {
        return TRUE;
    }

    if (alarm == &AlarmForTimeout) {
        return TRUE;
    }

    return FALSE;
}
