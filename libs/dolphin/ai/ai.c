#include "dolphin/ai/ai.h"
#include "dolphin/dsp/dsp.h"
#include "dolphin/os/OS.h"

/* 80450A40-80450A48 -00001 0004+04 1/1 0/0 0/0 .sdata           __AIVersion */
char* __AIVersion = "<< Dolphin SDK - AI\trelease build: Apr  5 2004 04:15:02 (0x2301) >>";

void __AISHandler(s16 interrupt, OSContext* context);
void __AIDHandler(s16 interrupt, OSContext* context);
void __AICallbackStackSwitch(AIDCallback callback);
void __AI_SRC_INIT(void);

/* ############################################################################################## */
/* 80451878-8045187C 000D78 0004+00 2/2 0/0 0/0 .sbss            __AIS_Callback */
static AISCallback __AIS_Callback;

/* 8045187C-80451880 000D7C 0004+00 3/3 0/0 0/0 .sbss            __AID_Callback */
static AIDCallback __AID_Callback;

/* 8034FC70-8034FCB4 34A5B0 0044+00 0/0 1/1 0/0 .text            AIRegisterDMACallback */
AIDCallback AIRegisterDMACallback(AIDCallback callback) {
    s32 oldInts;
    AIDCallback ret;

    ret = __AID_Callback;
    oldInts = OSDisableInterrupts();
    __AID_Callback = callback;
    OSRestoreInterrupts(oldInts);
    return ret;
}

/* 8034FCB4-8034FD3C 34A5F4 0088+00 0/0 2/2 0/0 .text            AIInitDMA */
void AIInitDMA(u32 addr, u32 length) {
    s32 oldInts;
    oldInts = OSDisableInterrupts();
    __DSPRegs[24] = (u16)((__DSPRegs[24] & ~0x3FF) | (addr >> 16));
    __DSPRegs[25] = (u16)((__DSPRegs[25] & ~0xFFE0) | (0xffff & addr));
    __DSPRegs[27] = (u16)((__DSPRegs[27] & ~0x7FFF) | (u16)((length >> 5) & 0xFFFF));
    OSRestoreInterrupts(oldInts);
}

/* 8034FD3C-8034FD54 34A67C 0018+00 0/0 1/1 0/0 .text            AIStartDMA */
void AIStartDMA(void) {
    __DSPRegs[27] |= 0x8000;
}

/* 8034FD54-8034FD6C 34A694 0018+00 0/0 1/1 0/0 .text            AIStopDMA */

void AIStopDMA(void) {
    __DSPRegs[27] &= ~0x8000;
}

/* 8034FD6C-8034FE44 34A6AC 00D8+00 1/1 1/1 0/0 .text            AISetStreamPlayState */
void AISetStreamPlayState(u32 state) {
    s32 oldInts;
    u8 volRight;
    u8 volLeft;

    if (state == AIGetStreamPlayState()) {
        return;
    }

    if (AIGetStreamSampleRate() == 0 && state == 1) {
        volRight = AIGetStreamVolRight();
        volLeft = AIGetStreamVolLeft();
        AISetStreamVolRight(0);
        AISetStreamVolLeft(0);
        oldInts = OSDisableInterrupts();
        __AI_SRC_INIT();
        __AIRegs[0] = (__AIRegs[0] & ~0x20) | 0x20;
        __AIRegs[0] = (__AIRegs[0] & ~1) | 1;
        OSRestoreInterrupts(oldInts);
        AISetStreamVolLeft(volRight);
        AISetStreamVolRight(volLeft);
    } else {
        __AIRegs[0] = (__AIRegs[0] & ~1) | state;
    }
}

/* 8034FE44-8034FE54 34A784 0010+00 1/1 0/0 0/0 .text            AIGetStreamPlayState */
u32 AIGetStreamPlayState(void) {
    return __AIRegs[0] & 1;
}

/* 8034FE54-8034FF34 34A794 00E0+00 1/1 1/1 0/0 .text            AISetDSPSampleRate */
void AISetDSPSampleRate(u32 rate) {
    u32 state;
    s32 oldInts;
    u8 left;
    u8 right;
    u32 sampleRate;

    if (rate == AIGetDSPSampleRate()) {
        return;
    }

    __AIRegs[0] &= ~0x40;
    if (rate == 0) {
        left = AIGetStreamVolLeft();
        right = AIGetStreamVolRight();
        state = AIGetStreamPlayState();
        sampleRate = AIGetStreamSampleRate();
        AISetStreamVolLeft(0);
        AISetStreamVolRight(0);
        oldInts = OSDisableInterrupts();
        __AI_SRC_INIT();
        __AIRegs[0] = (__AIRegs[0] & ~0x20) | 0x20;
        __AIRegs[0] = (__AIRegs[0] & ~2) | (sampleRate * 2);
        __AIRegs[0] = (__AIRegs[0] & ~1) | state;
        __AIRegs[0] |= 0x40;
        OSRestoreInterrupts(oldInts);
        AISetStreamVolLeft(left);
        AISetStreamVolRight(right);
    }
}

/* 8034FF34-8034FF48 34A874 0014+00 1/1 0/0 1/1 .text            AIGetDSPSampleRate */
u32 AIGetDSPSampleRate(void) {
    return ((__AIRegs[0] >> 6) & 1) ^ 1;
}

/* 8034FF48-8035001C 34A888 00D4+00 1/1 0/1 0/0 .text            __AI_set_stream_sample_rate */
void __AI_set_stream_sample_rate(u32 rate) {
    s32 oldInts;
    s32 state;
    u8 left;
    u8 right;
    s32 temp_r26;

    if (rate == AIGetStreamSampleRate()) {
        return;
    }

    state = AIGetStreamPlayState();
    left = AIGetStreamVolLeft();
    right = AIGetStreamVolRight();
    AISetStreamVolRight(0);
    AISetStreamVolLeft(0);
    temp_r26 = __AIRegs[0] & 0x40;
    __AIRegs[0] &= ~0x40;
    oldInts = OSDisableInterrupts();
    __AI_SRC_INIT();
    __AIRegs[0] |= temp_r26;
    __AIRegs[0] = (__AIRegs[0] & ~0x20) | 0x20;
    __AIRegs[0] = (__AIRegs[0] & ~2) | (rate * 2);
    OSRestoreInterrupts(oldInts);
    AISetStreamPlayState(state);
    AISetStreamVolLeft(left);
    AISetStreamVolRight(right);
}

/* 8035001C-8035002C 34A95C 0010+00 3/3 0/0 0/0 .text            AIGetStreamSampleRate */
u32 AIGetStreamSampleRate(void) {
    return (__AIRegs[0] >> 1) & 1;
}

/* 8035002C-80350048 34A96C 001C+00 3/3 1/1 0/0 .text            AISetStreamVolLeft */
void AISetStreamVolLeft(u8 vol) {
    __AIRegs[1] = (__AIRegs[1] & ~0xFF) | (vol & 0xFF);
}

/* 80350048-80350058 34A988 0010+00 3/3 0/0 0/0 .text            AIGetStreamVolLeft */
u8 AIGetStreamVolLeft(void) {
    return __AIRegs[1];
}

/* 80350058-80350074 34A998 001C+00 3/3 1/1 0/0 .text            AISetStreamVolRight */
void AISetStreamVolRight(u8 vol) {
    __AIRegs[1] = (__AIRegs[1] & ~0xFF00) | ((vol & 0xFF) << 8);
}

/* 80350074-80350084 34A9B4 0010+00 3/3 0/0 0/0 .text            AIGetStreamVolRight */
u8 AIGetStreamVolRight(void) {
    return __AIRegs[1] >> 8;
}

/* 80451880-80451884 000D80 0004+00 3/3 0/0 0/0 .sbss            __CallbackStack */
static u8* __CallbackStack;

/* 80451884-80451888 000D84 0004+00 1/1 0/0 0/0 .sbss            __OldStack */
static u8* __OldStack;

/* 80451888-8045188C 000D88 0004+00 1/1 0/0 0/0 .sbss            __AI_init_flag */
static volatile s32 __AI_init_flag;

/* 8045188C-80451890 000D8C 0004+00 1/1 0/0 0/0 .sbss            __AID_Active */
static volatile s32 __AID_Active;

/* 80451890-80451894 000D90 0004+00 2/2 0/0 0/0 .sbss            bound_32KHz */
static OSTime bound_32KHz;

/* 80451898-8045189C 000D98 0004+00 2/2 0/0 0/0 .sbss            bound_48KHz */
static OSTime bound_48KHz;

/* 804518A0-804518A4 000DA0 0004+00 2/2 0/0 0/0 .sbss            min_wait */
static OSTime min_wait;

/* 804518A8-804518AC 000DA8 0004+00 2/2 0/0 0/0 .sbss            max_wait */
static OSTime max_wait;

/* 804518B0-804518B4 000DB0 0004+00 2/2 0/0 0/0 .sbss            buffer */
static OSTime buffer;

void AIResetStreamSampleCount(void) {
    __AIRegs[0] = (__AIRegs[0] & ~0x20) | 0x20;
}

void AISetStreamTrigger(u32 trigger) {
    __AIRegs[3] = trigger;
}

/* 80350084-803501F0 34A9C4 016C+00 0/0 1/1 0/0 .text            AIInit */
void AIInit(u8* stack) {
    if (__AI_init_flag == TRUE) {
        return;
    }

    OSRegisterVersion(__AIVersion);
    bound_32KHz = OSNanosecondsToTicks(31524);
    bound_48KHz = OSNanosecondsToTicks(42024);
    min_wait = OSNanosecondsToTicks(42000);
    max_wait = OSNanosecondsToTicks(63000);
    buffer = OSNanosecondsToTicks(3000);

    AISetStreamVolRight(0);
    AISetStreamVolLeft(0);
    AISetStreamTrigger(0);
    AIResetStreamSampleCount();
    __AI_set_stream_sample_rate(1);
    AISetDSPSampleRate(0);
    __AIS_Callback = 0;
    __AID_Callback = 0;
    __CallbackStack = stack;
    __OSSetInterruptHandler(5, __AIDHandler);
    __OSUnmaskInterrupts(0x04000000);
    __OSSetInterruptHandler(8, __AISHandler);
    __OSUnmaskInterrupts(0x800000);
    __AI_init_flag = TRUE;
}

/* 803501F0-8035026C 34AB30 007C+00 1/1 0/0 0/0 .text            __AISHandler */
void __AISHandler(s16 interrupt, OSContext* context) {
    OSContext tmpContext;
    __AIRegs[0] |= 8;
    OSClearContext(&tmpContext);
    OSSetCurrentContext(&tmpContext);

    if (__AIS_Callback != NULL) {
        __AIS_Callback(__AIRegs[2]);
    }

    OSClearContext(&tmpContext);
    OSSetCurrentContext(context);
}

/* 8035026C-80350318 34ABAC 00AC+00 1/1 0/0 0/0 .text            __AIDHandler */
void __AIDHandler(s16 interrupt, OSContext* context) {
    OSContext tempContext;
    u32 temp = __DSPRegs[5];
    __DSPRegs[5] = (temp & ~0xA0) | 8;
    OSClearContext(&tempContext);
    OSSetCurrentContext(&tempContext);

    if (__AID_Callback && !__AID_Active) {
        __AID_Active = TRUE;

        if (__CallbackStack) {
            __AICallbackStackSwitch(__AID_Callback);
        } else {
            __AID_Callback();
        }

        __AID_Active = FALSE;
    }

    OSClearContext(&tempContext);
    OSSetCurrentContext(context);
}

/* 80350318-80350370 34AC58 0058+00 1/1 0/0 0/0 .text            __AICallbackStackSwitch */
// clang-format off
asm void __AICallbackStackSwitch(register AIDCallback cb) {
  // Allocate stack frame
  fralloc

  // Store current stack
  lis r5, __OldStack@ha
  addi r5, r5, __OldStack@l
  stw r1, 0(r5)

  // Load stack for callback
  lis r5, __CallbackStack@ha 
  addi r5, r5, __CallbackStack@l 
  lwz r1,0(r5)

  // Move stack down 8 bytes
  subi r1, r1, 8
  // Call callback
  mtlr cb 
  blrl

  // Restore old stack
  lis r5, __OldStack @ha 
  addi r5, r5, __OldStack@l 
  lwz r1,0(r5)

  // Free stack frame
  frfree

  blr
}
// clang-format on

/* 80350370-80350554 34ACB0 01E4+00 3/3 0/0 0/0 .text            __AI_SRC_INIT */
void __AI_SRC_INIT(void) {
    OSTime rise32 = 0;
    OSTime rise48 = 0;
    OSTime diff = 0;
    OSTime unused1 = 0;
    OSTime temp = 0;
    u32 temp0 = 0;
    u32 temp1 = 0;
    u32 done = 0;
    u32 walking = 0;
    u32 unused2 = 0;
    u32 initCnt = 0;

    walking = 0;
    initCnt = 0;
    temp = 0;

    while (!done) {
        __AIRegs[0] = (__AIRegs[0] & ~0x20) | 0x20;
        __AIRegs[0] &= ~2;
        __AIRegs[0] = (__AIRegs[0] & ~1) | 1;

        temp0 = __AIRegs[2];

        while (temp0 == __AIRegs[2])
            ;
        rise32 = OSGetTime();

        __AIRegs[0] = (__AIRegs[0] & ~2) | 2;
        __AIRegs[0] = (__AIRegs[0] & ~1) | 1;

        temp1 = __AIRegs[2];
        while (temp1 == __AIRegs[2])
            ;

        rise48 = OSGetTime();

        diff = rise48 - rise32;
        __AIRegs[0] &= ~2;
        __AIRegs[0] &= ~1;

        if (diff < (bound_32KHz - buffer)) {
            temp = min_wait;
            done = 1;
            ++initCnt;
        } else if (diff >= (bound_32KHz + buffer) && diff < (bound_48KHz - buffer)) {
            temp = max_wait;
            done = 1;
            ++initCnt;
        } else {
            done = 0;
            walking = 1;
            ++initCnt;
        }
    }

    while ((rise48 + temp) > OSGetTime())
        ;
}
