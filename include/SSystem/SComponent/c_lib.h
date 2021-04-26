#ifndef C_LIB_H
#define C_LIB_H

#include "dolphin/types.h"

inline void cLib_offBit(u8& pVar, u8 pBit) {
    pVar &= ~pBit;
}
inline void cLib_onBit(u8& pVar, u8 pBit) {
    pVar |= pBit;
}
inline u8 cLib_checkBit(u8& pVar, u8 pBit) {
    return pVar & pBit;
}

#endif /* C_LIB_H */
