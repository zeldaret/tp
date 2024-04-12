/**
 * m_Do_printf.cpp
 * OSReport and printf Helper Functions
 */

#include "m_Do/m_Do_printf.h"
#include "stdio.h"
#include "dolphin/base/PPCArch.h"
#include "m_Do/m_Do_ext.h"

/* 80450B98-80450B9C -00001 0004+00 0/0 6/6 0/0 .sbss            None */
u8 __OSReport_disable;

u8 __OSReport_Error_disable;

u8 __OSReport_Warning_disable;

u8 __OSReport_System_disable;

/* 80450B9C-80450BA0 00009C 0004+00 0/0 3/3 0/0 .sbss            None */
u8 __OSReport_enable;

/* 80006798-800067C8 0010D8 0030+00 1/1 0/0 0/0 .text            OSSwitchFiberEx__FUlUlUlUlUlUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void OSSwitchFiberEx(u32 param_0, u32 param_1, u32 param_2, u32 param_3, u32 param_4,
                         u32 param_5) {
    nofralloc
#include "asm/m_Do/m_Do_printf/OSSwitchFiberEx__FUlUlUlUlUlUl.s"
}
#pragma pop

/* 800067C8-800067F4 001108 002C+00 3/3 0/0 0/0 .text            my_PutString__FPCc */
void my_PutString(const char* string) {
    fputs(string, stdout);
}

/* 800067F4-80006814 001134 0020+00 3/3 0/0 0/0 .text OSVAttention__FPCcP16__va_list_struct */
void OSVAttention(const char* fmt, va_list args) {
    mDoPrintf_vprintf(fmt, args);
}

/* 80006814-80006894 001154 0080+00 1/1 1/1 0/0 .text            OSAttention */
void OSAttention(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    mDoPrintf_vprintf(fmt, args);
    va_end(args);
}

/* 80006894-800068A0 0011D4 000C+00 0/0 1/1 0/0 .text            OSReportDisable */
void OSReportDisable() {
    __OSReport_disable = true;
}

/* 800068A0-800068AC 0011E0 000C+00 0/0 1/1 0/0 .text            OSReportEnable */
void OSReportEnable() {
    __OSReport_disable = false;
}

/* 800068AC-800068B8 0011EC 000C+00 4/4 0/0 0/0 .text            OSReportForceEnableOn */
void OSReportForceEnableOn() {
    __OSReport_enable = true;
}

/* 800068B8-800068C4 0011F8 000C+00 4/4 0/0 0/0 .text            OSReportForceEnableOff */
void OSReportForceEnableOff() {
    __OSReport_enable = false;
}

/* ############################################################################################## */
/* 80450BA0-80450BA4 0000A0 0004+00 1/1 0/0 0/0 .sbss            __OSReport_MonopolyThread */
static OSThread* __OSReport_MonopolyThread;

/* 80450BA4-80450BA8 0000A4 0004+00 1/1 0/0 0/0 .sbss            print_counts */
static u32 print_counts;

/* 80450BA8-80450BAC 0000A8 0004+00 2/2 0/0 0/0 .sbss            print_errors */
static u32 print_errors;

/* 80450BAC-80450BB0 0000AC 0004+00 1/1 0/0 0/0 .sbss            print_warings */
static u32 print_warings;

/* 80450BB0-80450BB4 0000B0 0004+00 1/1 0/0 0/0 .sbss            print_systems */
static u32 print_systems;

/* 80450BB4-80450BB8 -00001 0004+00 3/3 0/0 0/0 .sbss            None */
static bool print_initialized;

static bool data_80450BB5;

/* 800068C4-800068DC 001204 0018+00 1/1 1/1 0/0 .text            OSReportInit__Fv */
void OSReportInit() {
    if (print_initialized) {
        return;
    }
    print_initialized = true;
}

/* ############################################################################################## */
/* 803DB740-803DBF40 008460 0800+00 1/1 0/0 0/0 .bss             mDoPrintf_FiberStack */
static u8 mDoPrintf_FiberStack[2048] ALIGN_DECL(32);

/* 800068DC-80006964 00121C 0088+00 1/1 0/0 0/0 .text
 * mDoPrintf_vprintf_Interrupt__FPCcP16__va_list_struct         */
void mDoPrintf_vprintf_Interrupt(char const* fmt, va_list args) {
    s32 interruptStatus = OSDisableInterrupts();
    if (!data_80450BB5) {
        data_80450BB5 = true;
        OSSwitchFiberEx((u32)fmt, (u32)args, 0, 0, (u32)vprintf,
                        (u32)&mDoPrintf_FiberStack + sizeof(mDoPrintf_FiberStack));
        data_80450BB5 = false;
    }
    OSRestoreInterrupts(interruptStatus);
}

/* 80006964-80006984 0012A4 0020+00 1/1 0/0 0/0 .text
 * mDoPrintf_vprintf_Thread__FPCcP16__va_list_struct            */
void mDoPrintf_vprintf_Thread(char const* fmt, va_list args) {
    vprintf(fmt, args);
}

/* 80006984-80006A10 0012C4 008C+00 4/4 0/0 0/0 .text mDoPrintf_vprintf__FPCcP16__va_list_struct
 */
void mDoPrintf_vprintf(char const* fmt, va_list args) {
    OSThread* currentThread = mDoExt_GetCurrentRunningThread();
    if (currentThread == NULL) {
        mDoPrintf_vprintf_Interrupt(fmt, args);
    } else {
        u8* stackPtr = OSGetStackPointer();
        if (stackPtr < (u8*)currentThread->stack_end + 0xA00 || stackPtr > currentThread->stack_base) {
            mDoPrintf_vprintf_Interrupt(fmt, args);
        } else {
            mDoPrintf_vprintf_Thread(fmt, args);
        }
    }
}

/* 80006A10-80006A9C 001350 008C+00 1/1 0/0 0/0 .text            mDoPrintf_VReport */
void mDoPrintf_VReport(const char* fmt, va_list args) {
    if (!print_initialized) {
        OSReportInit();
    }
    if (__OSReport_enable || !__OSReport_disable) {
        OSThread* currentThread = mDoExt_GetCurrentRunningThread();
        if (__OSReport_MonopolyThread == NULL || __OSReport_MonopolyThread == currentThread) {
            mDoPrintf_vprintf(fmt, args);
            print_counts++;
        }
    }
}

/* 80006A9C-80006ABC 0013DC 0020+00 2/2 0/0 0/0 .text            OSVReport */
void OSVReport(const char* fmt, va_list args) {
    mDoPrintf_VReport(fmt, args);
}

/* 80006ABC-80006B3C 0013FC 0080+00 0/0 97/97 10/10 .text            OSReport */
void OSReport(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    OSVReport(fmt, args);
    va_end(args);
}

/* 80006B3C-80006C0C 00147C 00D0+00 0/0 2/2 0/0 .text            OSReport_FatalError */
void OSReport_FatalError(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);

    OSReportForceEnableOn();
    my_PutString("\x1B[41;37m***** FATAL ERROR *****\n");
    OSVAttention(fmt, args);
    my_PutString("***** FATAL ERROR *****\n\x1B[m");
    OSReportForceEnableOff();
    fflush(stdout);
    print_errors++;

    va_end(args);
}

/* 80006C0C-80006CEC 00154C 00E0+00 0/0 31/31 10/10 .text            OSReport_Error */
void OSReport_Error(const char* fmt, ...) {
    print_errors++;
    if (!__OSReport_Error_disable) {
        va_list args;
        va_start(args, fmt);
        OSReportForceEnableOn();
        my_PutString("\x1B[41;37m[ERROR]");
        OSVReport(fmt, args);
        my_PutString("\x1B[m");
        OSReportForceEnableOff();
        fflush(stdout);
        va_end(args);
    }
}

/* 80006CEC-80006DCC 00162C 00E0+00 0/0 6/6 0/0 .text            OSReport_Warning */
void OSReport_Warning(const char* fmt, ...) {
    print_warings++;
    if (!__OSReport_Warning_disable) {
        va_list args;
        va_start(args, fmt);
        OSReportForceEnableOn();
        my_PutString("\x1B[43;30m[WARN]");
        OSVAttention(fmt, args);
        my_PutString("\x1B[m");
        OSReportForceEnableOff();
        fflush(stdout);
        va_end(args);
    }
}

/* 80006DCC-80006E7C 00170C 00B0+00 0/0 1/1 0/0 .text            OSReport_System */
void OSReport_System(const char* fmt, ...) {
    print_systems++;
    if (!__OSReport_System_disable) {
        va_list args;
        va_start(args, fmt);
        OSReportForceEnableOn();
        OSVAttention(fmt, args);
        OSReportForceEnableOff();
        va_end(args);
    }
}

/* 80006E7C-80006FB4 0017BC 0138+00 0/0 9/9 0/0 .text            OSPanic */
void OSPanic(const char* file, s32 line, const char* fmt, ...) {
    va_list args;
    u32 i;
    u32* p;
    u32* tmp;

    OSDisableInterrupts();
    va_start(args, fmt);
    mDoPrintf_vprintf(fmt, args);
    va_end(args);
    OSAttention(" in \"%s\" on line %d.\n", file, line);

    OSAttention("\nAddress:      Back Chain    LR Save\n");
    for (i = 0, p = (u32*)OSGetStackPointer(); p && (u32)p != 0xFFFFFFFF && i++ < 16; p = (u32*)*p) {
        OSAttention("0x%08x:   0x%08x    0x%08x\n", p, p[0], p[1]);
    }

    tmp = (u32*)0x1234567;  // ??????
    *tmp = 0x1234567;
    PPCHalt();
}
