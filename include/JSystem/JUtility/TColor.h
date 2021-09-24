#ifndef TCOLOR_H
#define TCOLOR_H

#include "dolphin/gx/GXTexture.h"
#include "dolphin/types.h"

namespace JUtility {
class TColor {
public:
    TColor(u8 r, u8 g, u8 b, u8 a) { set(r, g, b, a); }
    TColor() { set(0xffffffff); }
    TColor(u32 u32Color) { set(u32Color); }
    TColor(_GXColor gxColor) { set(gxColor); }

    TColor(const TColor& other) { *this = other; }
    TColor& operator=(const TColor& other) {
        mColor = other.mColor;
        return *this;
    }

    operator u32() { return toUInt32(); }
    u32 toUInt32() { return *(u32*)&mColor; }

    void set(u8 cR, u8 cG, u8 cB, u8 cA) {
        mColor.r = cR;
        mColor.g = cG;
        mColor.b = cB;
        mColor.a = cA;
    }

    void set(u32 u32Color) { *(u32*)&mColor = u32Color; }
    void set(_GXColor gxColor) { mColor = gxColor; }

private:
    _GXColor mColor;
};
}  // namespace JUtility

#endif