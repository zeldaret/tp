#ifndef J3DGD_H
#define J3DGD_H

#include "dolphin/types.h"
#include "dolphin/gx/GX.h"

static inline void J3DFifoLoadIndx(u8 cmd, u16 indx, u16 addr) {
    GFX_FIFO(u8) = cmd;
    GFX_FIFO(u16) = indx;
    GFX_FIFO(u16) = addr;
}

#endif /* J3DGD_H */
