#ifndef AMCEXI2STUBS_H
#define AMCEXI2STUBS_H

#include "dolphin/types.h"

void EXI2_Init(void);
void EXI2_EnableInterrupts(void);
u8 EXI2_Poll(void);
u8 EXI2_ReadN(void*, u32);
u8 EXI2_WriteN(void*, u32);
void EXI2_Reserve(void);
void EXI2_Unreserve(void);
u8 AMC_IsStub(void);

#endif /* AMCEXI2STUBS_H */
