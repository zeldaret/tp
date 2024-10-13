#ifndef DVDLOW_H
#define DVDLOW_H

#include "dolphin/types.h"

typedef void (*DVDLowCallback)(u32 intType);
vu32 __DIRegs[16] AT_ADDRESS(0xCC006000);

#endif /* DVDLOW_H */
