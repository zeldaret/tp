#ifndef M_DO_PRINTF_H_
#define M_DO_PRINTF_H_

#include "global.h"
#include "os/OS.h"

void my_PutString(const char* message);
void mDoPrintf_vprintf_Interrupt(const char* format, __va_list_struct* list);
void mDoPrintf_vprintf_Thread(const char* format, __va_list_struct* list);
void mDoPrintf_vprintf(const char* format, __va_list_struct* list);

struct FILE {
    u32 handle;
    u32 file_mode;
    u32 file_state;
    u8 flag;
    char char_buffer;
    char char_buffer_2;
    char ungetc_buffer[2];
    u16 ungetc_wide_buffer[2];
    u32 position;
    u8 * buffer;
    u32 buffer_size;
    u8 * buffer_ptr;
    u32 buffer_length;
    u32 buffer_alignment;
    u32 buffer_length2;
    u32 buffer_position;
    void* position_fn;
    void* read_fn;
    void* write_fn;
    void* close_fn;
    void* unknown;
    struct FILE * next_file;
};

struct __files{
    u8 padding[0x50];
    FILE stdout;
};

extern u8 lbl_80373CB0;
extern __files lbl_803D29B0;
extern bool lbl_80450B98;
extern u8 lbl_80450B99;
extern u8 lbl_80450B9A;
extern u8 lbl_80450B9B;
extern bool lbl_80450B9C;
extern OSThread* lbl_80450BA0;
extern u32 lbl_80450BA4;
extern u8 lbl_80450BA8;
extern u8 lbl_80450BAC;
extern u8 lbl_80450BB0;
extern bool lbl_80450BB4;
extern bool lbl_80450BB5;

struct mDoPrintf_FiberStack {
    u8 stack[0x800];
};
extern mDoPrintf_FiberStack lbl_803DB740;

extern "C" {
    void OSVAttention__FPCcP16__va_list_struct(void);
    void PPCHalt(void);
    void __RAS_OSDisableInterrupts_begin(void);
    void _restgpr_29(void);
    void _savegpr_29(void);
    void cr1(void);
    void fputs(const char*, FILE*);
    void func_803658C0(void);
    void vprintf(const char* fmt, __va_list_struct* list);
    void mDoPrintf_VReport(const char* format, __va_list_struct* list);
    void mDoPrintf_vprintf_Interrupt__FPCcP16__va_list_struct(void);
    void mDoPrintf_vprintf_Thread__FPCcP16__va_list_struct(void);
    void mDoPrintf_vprintf__FPCcP16__va_list_struct(void);
    void my_PutString(void);
    void OSSwitchFiberEx__FUlUlUlUlUlUl(void);
    void my_PutString__FPCc(void);
    void OSReportInit__Fv(void);
    void mDoExt_GetCurrentRunningThread__Fv(void);
}

#endif