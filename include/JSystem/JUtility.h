#ifndef JUTILITY_H
#define JUTILITY_H

#include "dolphin/gx/GXTexture.h"
#include "dolphin/types.h"

namespace JUtility {

struct TColor : _GXColor {
    TColor() { set(-1); }

    TColor(u32 raw) { *(u32*)&r = raw; }

    void set(u32 col) { *(u32*)&r = col; }
    void set(u8 oR, u8 oG, u8 oB, u8 oA) {
        r = oR;
        g = oG;
        b = oB;
        a = oA;
    }

    u32 toUInt32() const { return *(u32*)&r; }

    operator u32() const { return toUInt32(); }
    void operator=(const TColor& rhs) { ((_GXColor*)this)->operator=(rhs); }
};

}  // namespace JUtility

#endif /* JUTILITY_H */