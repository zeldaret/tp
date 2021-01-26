#include "global.h"
#include "m_Do/m_Do_printf/m_Do_printf.h"
#include "os/OS.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"

asm void OSSwitchFiberEx(u32, u32, u32, u32, u32, u32){
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006798.s"
}

void my_PutString(const char* message){
    fputs(message, &lbl_803D29B0.stdout);
}

void OSVAttention(const char* fmt, __va_list_struct* va_list) {
    mDoPrintf_vprintf(fmt,va_list);
}

extern "C" {
asm void OSAttention(char* msg, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006814.s"
}

void OSReportDisable(void) {
    lbl_80450B98 = true;
}

void OSReportEnable(void) {
    lbl_80450B98 = false;
}

void OSReportForceEnableOn(void) {
    lbl_80450B9C = true;
}

void OSReportForceEnableOff(void) {
    lbl_80450B9C = false;
}
}; //extern "C"

void OSReportInit(void) {
    if (lbl_80450BB4) {
        return;
    }
    lbl_80450BB4 = true;
    return;
}

void mDoPrintf_vprintf_Interrupt(const char* format, __va_list_struct* list) {
    s32 enable;

    enable = OSDisableInterrupts();
    if (lbl_80450BB5 == false) {
        lbl_80450BB5 = true;
        OSSwitchFiberEx((u32)format,(u32)list,0,0,(u32)&vprintf,(u32)&lbl_803DB740.stack[0x800]);
        lbl_80450BB5 = false;
    }
    OSRestoreInterrupts(enable);
}

void mDoPrintf_vprintf_Thread(const char* format, __va_list_struct* list) {
    vprintf(format, list);
}

void mDoPrintf_vprintf(const char* format, __va_list_struct* list) {
    OSThread *thread;
    u8 *stack_pointer;
  
    thread = mDoExt_GetCurrentRunningThread();
    if (thread == NULL) {
        mDoPrintf_vprintf_Interrupt(format,list);
    }
    else {
        stack_pointer = OSGetStackPointer();
        if ((stack_pointer < thread->stack_end + 0xa00) || (stack_pointer > thread->stack_base)) {
            mDoPrintf_vprintf_Interrupt(format,list);
        }
        else {
            mDoPrintf_vprintf_Thread(format,list);
        }
    }
}

extern "C" {
void mDoPrintf_VReport(const char* format, __va_list_struct* list) {
    OSThread *thread;
  
    if (lbl_80450BB4 == false) {
        OSReportInit();
    }
    if ((lbl_80450B9C) || (lbl_80450B98 == false)) {
        thread = mDoExt_GetCurrentRunningThread();
        if ((lbl_80450BA0 == NULL) || (lbl_80450BA0 == thread)) {
            mDoPrintf_vprintf(format,list);
            lbl_80450BA4 ++; //increment print counts
        }
    }
}

void OSVReport(const char* format, __va_list_struct* list) {
    mDoPrintf_VReport(format,list);
}

asm void OSReport(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006ABC.s"
}

asm void OSReport_FatalError(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006B3C.s"
}

asm void OSReport_Error(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006C0C.s"
}

asm void OSReport_Warning(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006CEC.s"
}

asm void OSReport_System(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006DCC.s"
}

asm void OSPanic(char* file, s32 line, char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006E7C.s"
}
}; //extern "C"
