#ifndef M_DO_PRINTF_H_
#define M_DO_PRINTF_H_

#include "global.h"

void my_PutString(const char* string);
void mDoPrintf_vprintf_Interrupt(const char* format, __va_list_struct* list);
void mDoPrintf_vprintf_Thread(const char* format, __va_list_struct* list);
void mDoPrintf_vprintf(const char* format, __va_list_struct* list);

extern u8 lbl_80373CB0;
extern u8 lbl_803D29B0;
extern u8 lbl_803DB740;
extern u8 lbl_80450B98;
extern u8 lbl_80450B99;
extern u8 lbl_80450B9A;
extern u8 lbl_80450B9B;
extern u8 lbl_80450B9C;
extern u8 lbl_80450BA0;
extern u8 lbl_80450BA4;
extern u8 lbl_80450BA8;
extern u8 lbl_80450BAC;
extern u8 lbl_80450BB0;
extern u8 lbl_80450BB4;
extern u8 lbl_80450BB5;

extern "C" {
    void OSGetStackPointer(void);
    void OSVAttention__FPCcP16__va_list_struct(void);
    void PPCHalt(void);
    void __RAS_OSDisableInterrupts_begin(void);
    void _restgpr_29(void);
    void _savegpr_29(void);
    void cr1(void);
    void func_803651D8(void);
    void func_803658C0(void);
    void func_80366704(void);
    void mDoExt_GetCurrentRunningThread(void);
    void mDoPrintf_VReport(const char* format, __va_list_struct* list);
    void mDoPrintf_vprintf_Interrupt__FPCcP16__va_list_struct(void);
    void mDoPrintf_vprintf_Thread__FPCcP16__va_list_struct(void);
    void mDoPrintf_vprintf__FPCcP16__va_list_struct(void);
    void my_PutString(void);
    void OSSwitchFiberEx__FUlUlUlUlUlUl(void);
    void my_PutString__FPCc(void);
    void OSReportInit__Fv(void);
}

#endif