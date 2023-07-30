#include "dolphin/dsp/dsp.h"
#include "dolphin/dsp/dsp_debug.h"
#include "dolphin/dsp/dsp_task.h"
#include "dolphin/os/OS.h"
#include "JSystem/JAudio2/osdsp_task.h"

/* 80450A58-80450A60 -00001 0004+04 1/1 0/0 0/0 .sdata           __DSPVersion */
static char* __DSPVersion = "<< Dolphin SDK - DSP\trelease build: Apr  5 2004 04:15:32 (0x2301) >>";

/* 80451900-80451908 000E00 0004+04 1/1 0/0 0/0 .sbss            __DSP_init_flag */
static s32 __DSP_init_flag;

//
// External References:
//

//
// Declarations:
//

/* 80352430-80352440 34CD70 0010+00 0/0 5/5 0/0 .text            DSPCheckMailToDSP */
u32 DSPCheckMailToDSP(void) {
    return (__DSPRegs[0] >> 0xF) & 1;
}

/* 80352440-80352450 34CD80 0010+00 0/0 4/4 0/0 .text            DSPCheckMailFromDSP */
u32 DSPCheckMailFromDSP(void) {
    return (__DSPRegs[2] >> 0xF) & 1;
}

/* 80352450-80352468 34CD90 0018+00 0/0 4/4 0/0 .text            DSPReadMailFromDSP */
u32 DSPReadMailFromDSP(void) {
    u16 reg1;
    u16 reg2;
    reg1 = __DSPRegs[2];
    reg2 = __DSPRegs[3];
    return reg1 << 16 | reg2;
}

/* 80352468-8035247C 34CDA8 0014+00 0/0 5/5 0/0 .text            DSPSendMailToDSP */
void DSPSendMailToDSP(u32 mail) {
    __DSPRegs[0] = mail >> 16;
    __DSPRegs[1] = mail;
}

/* 8035247C-803524BC 34CDBC 0040+00 0/0 1/1 0/0 .text            DSPAssertInt */
void DSPAssertInt(void) {
    u32 oldInt;
    u16 reg;

    oldInt = OSDisableInterrupts();

    reg = __DSPRegs[5];
    reg = (reg & ~0xA8) | 0x2;
    __DSPRegs[5] = reg;

    OSRestoreInterrupts(oldInt);
}

/* 803524BC-80352580 34CDFC 00C4+00 0/0 2/2 0/0 .text            DSPInit */
void DSPInit(void) {
    u32 oldInt;
    u16 reg;
    __DSP_debug_printf("DSPInit(): Build Date: %s %s\n", "Apr  5 2004", "04:15:32");

    if (__DSP_init_flag == 1) {
        return;
    }

    OSRegisterVersion(__DSPVersion);
    oldInt = OSDisableInterrupts();

    __OSSetInterruptHandler(7, __DSPHandler);
    __OSUnmaskInterrupts(0x1000000);

    reg = __DSPRegs[5];
    reg = (reg & ~0xA8) | 0x800;
    __DSPRegs[5] = reg;
    reg = __DSPRegs[5];
    reg = reg & ~0xAC;
    __DSPRegs[5] = reg;

    __DSP_tmp_task = NULL;
    __DSP_curr_task = NULL;
    __DSP_last_task = NULL;
    __DSP_first_task = NULL;
    __DSP_init_flag = 1;

    OSRestoreInterrupts(oldInt);
}
