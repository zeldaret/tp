#include "global.h"
#include "m_Do/m_Do_printf/m_Do_printf.h"
#include "os/OS.h"


// OSSwitchFiberEx__FUlUlUlUlUlUl
// OSSwitchFiberEx(u32, u32, u32, u32, u32, u32)
asm void OSSwitchFiberEx(u32, u32, u32, u32, u32, u32){
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006798.s"
}

// my_PutString__FPCc
// my_PutString(const s8*)
asm void my_PutString(const char* string) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_800067C8.s"
}

// OSVAttention__FPCcP16__va_list_struct
// OSVAttention(const s8*, __va_list_struct*)
asm void OSVAttention(const char* fmt, __va_list_struct* va_list) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_800067F4.s"
}
extern "C" {
asm void OSAttention(char* msg, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006814.s"
}

asm void OSReportDisable(void) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006894.s"
}

asm void OSReportEnable(void) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_800068A0.s"
}

asm void OSReportForceEnableOn(void) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_800068AC.s"
}

asm void OSReportForceEnableOff(void) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_800068B8.s"
}
}; //extern "C"

// OSReportInit__Fv
// OSReportInit(void)
asm void OSReportInit(void) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_800068C4.s"
}

// mDoPrintf_vprintf_Interrupt__FPCcP16__va_list_struct
// mDoPrintf_vprintf_Interrupt(const s8*, __va_list_struct*)
asm void mDoPrintf_vprintf_Interrupt(const char* format, __va_list_struct* list) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_800068DC.s"
}

// mDoPrintf_vprintf_Thread__FPCcP16__va_list_struct
// mDoPrintf_vprintf_Thread(const s8*, __va_list_struct*)
asm void mDoPrintf_vprintf_Thread(const char* format, __va_list_struct* list) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006964.s"
}

// mDoPrintf_vprintf__FPCcP16__va_list_struct
// mDoPrintf_vprintf(const s8*, __va_list_struct*)
asm void mDoPrintf_vprintf(const char* format, __va_list_struct* list) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006984.s"
}
extern "C" {
// mDoPrintf_VReport
// 
asm void mDoPrintf_VReport(const char* format, __va_list_struct* list) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006A10.s"
}

// OSVReport
// 
asm void OSVReport(const char* format, __va_list_struct* list) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006A9C.s"
}

// OSReport
// 
asm void OSReport(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006ABC.s"
}

// OSReport_FatalError
// 
asm void OSReport_FatalError(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006B3C.s"
}

// OSReport_Error
// 
asm void OSReport_Error(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006C0C.s"
}

// OSReport_Warning
// 
asm void OSReport_Warning(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006CEC.s"
}

// OSReport_System
// 
asm void OSReport_System(char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006DCC.s"
}

// OSPanic
// 
asm void OSPanic(char* file, s32 line, char* fmt, ...) {
    nofralloc
    #include "m_Do/m_Do_printf/asm/func_80006E7C.s"
}

};
