#ifndef JUTFONT_H
#define JUTFONT_H

#include "dolphin/gx/GX.h"
#include "dolphin/gx/GXTexture.h"
#include "dolphin/types.h"

namespace JUtility {

struct TColor : _GXColor {
    TColor() { set(-1); }

    TColor(u32 raw) { *(u32*)&r = raw; }

    void set(u32 col) { *(u32*)&r = col; }

    u32 toUInt32() const { return *(u32*)&r; }

    operator u32() const { return toUInt32(); }
    void operator=(const TColor& rhs) { ((_GXColor*)this)->operator=(rhs); }
};

}  // namespace JUtility

class JUTFont {
public:
    JUTFont();
    virtual ~JUTFont() {}

    struct TWidth {};

    /* 0x0c */ virtual void setGX() = 0;
    /* 0x10 */ virtual void setGX(JUtility::TColor col1, JUtility::TColor col2);
    /* 0x14 */ virtual f32 drawChar_scale(f32 a1, f32 a2, f32 a3, f32 a4, int a5, bool a6) = 0;
    /* 0x18 */ virtual u16 getLeading() const = 0;
    /* 0x1c */ virtual u16 getAscent() const = 0;
    /* 0x20 */ virtual u16 getDescent() const = 0;
    /* 0x24 */ virtual u32 getHeight() const = 0;
    /* 0x28 */ virtual u32 getWidth() const = 0;
    /* 0x2c */ virtual void getWidthEntry(int i_no, TWidth* width) const;
    /* 0x30 */ virtual u32 getCellWidth() const;
    /* 0x34 */ virtual u32 getCellHeight() const;
    /* 0x38 */ virtual u32 getFontType() const = 0;
    /* 0x3c */ virtual void getResFont() const = 0;
    /* 0x40 */ virtual bool isLeadByte(int a1) const = 0;

    static bool isLeadByte_1Byte(int b);
    static bool isLeadByte_2Byte(int b);
    static bool isLeadByte_ShiftJIS(int b);

    void initialize_state();
    void setCharColor(JUtility::TColor col1);
    void setGradColor(JUtility::TColor col1, JUtility::TColor col2);
    f32 drawString_size_scale(f32 a1, f32 a2, f32 a3, f32 a4, const char* a5, u32 usz, bool a7);

    u8 unk4;
    bool unk5;
    int unk8;
    JUtility::TColor mColor1;
    JUtility::TColor mColor2;
    JUtility::TColor mColor3;
    JUtility::TColor mColor4;
    int unk1C;
};

#endif /* JUTFONT_H */
