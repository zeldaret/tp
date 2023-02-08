#ifndef OS_DOLPHIN_DOLPHIN_TRK_GLUE_H
#define OS_DOLPHIN_DOLPHIN_TRK_GLUE_H

#include "dolphin/types.h"

void UnreserveEXI2Port();
void ReserveEXI2Port();
s32 TRKWriteUARTN(const void*, u32);

#endif /* OS_DOLPHIN_DOLPHIN_TRK_GLUE_H */
