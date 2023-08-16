#ifndef M_DO_M_DO_PRINTF_H
#define M_DO_M_DO_PRINTF_H

#include "Runtime.PPCEABI.H/__va_arg.h"
#include "m_Do/m_Do_main.h"

void my_PutString(const char*);
void mDoPrintf_vprintf_Interrupt(char const*, va_list);
void mDoPrintf_vprintf_Thread(char const*, va_list);
void mDoPrintf_vprintf(const char*, va_list);
void mDoPrintf_VReport(const char*, va_list);

#endif /* M_DO_M_DO_PRINTF_H */
