#ifndef M_DO_M_DO_PRINTF_H
#define M_DO_M_DO_PRINTF_H

#include "MSL_C.PPCEABI.bare.H/MSL_Common/Src/char_io.h"
#include "MSL_C.PPCEABI.bare.H/MSL_Common/Src/printf.h"
#include "Runtime.PPCEABI.H/__va_arg.h"
#include "m_Do/m_Do_main.h"
#include "dolphin/types.h"

void my_PutString(const char*);
void mDoPrintf_vprintf_Interrupt(char const*, __va_list_struct*);
void mDoPrintf_vprintf_Thread(char const*, __va_list_struct*);
void mDoPrintf_vprintf(const char*, __va_list_struct*);
void mDoPrintf_VReport(const char*, __va_list_struct*);

#endif /* M_DO_M_DO_PRINTF_H */
