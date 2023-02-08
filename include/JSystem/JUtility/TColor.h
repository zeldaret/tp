#ifndef TCOLOR_H
#define TCOLOR_H

#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

namespace JUtility {
struct TColor : public GXColor {
    TColor(u8 r, u8 g, u8 b, u8 a) { set(r, g, b, a); }
    TColor() { set(0xffffffff); }
    TColor(u32 u32Color) { set(u32Color); }
    TColor(GXColor color) { set(color); }

    // TColor(const TColor& other) { set(other.toUInt32()); }
    TColor& operator=(const TColor& other) {
        ((GXColor*)this)->operator=(other);
        return *this;
    }

    operator u32() const { return toUInt32(); }
    u32 toUInt32() const { return *(u32*)&r; }

    void set(u8 cR, u8 cG, u8 cB, u8 cA) {
        r = cR;
        g = cG;
        b = cB;
        a = cA;
    }

    void set(u32 u32Color) { *(u32*)&r = u32Color; }
    void set(GXColor gxColor) { *(GXColor*)&r = gxColor; }
};
}  // namespace JUtility

#endif