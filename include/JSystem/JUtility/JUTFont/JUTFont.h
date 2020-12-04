#ifndef JSYSTEM_JUTILITY_JUTFONT_H
#define JSYSTEM_JUTILITY_JUTFONT_H

#include "global.h"

static const unsigned int CLR_WHITE = 0xFFFFFFFF;
static const unsigned int CLR_BLACK = 0;

typedef const char* ResFONT;

struct TColor {
    TColor() {
        *(u32*)&r = 0xFFFFFFFF;
    }

    TColor(u32 raw) { 
        *(u32*)&r = raw;
    }

    u32 Raw() { return *(u32*)&r; }

    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

class JUTFont {
public:
    JUTFont();
    virtual ~JUTFont();
    
    struct TWidth {};

    virtual void setGX() = 0;
    virtual void setGX(TColor col1, TColor col2);

    virtual void drawChar_scale(float a1, float a2, float a3, float a4, int a5, bool a6);
    virtual u16 getLeading() = 0;
    virtual u16 getAscent() = 0;
    virtual u16 getDescent() = 0;
    virtual u32 getHeight() = 0;
    virtual u32 getWidth() = 0;
    virtual void getWidthEntry(s32 i_no, TWidth* width);
    virtual u32 getCellWidth();
    virtual u32 getCellHeight();
    virtual u32 getFontType() = 0;
    virtual TColor getResFont() = 0;
    virtual bool isLeadByte(s32 a1) = 0;

    void initialize_state();
    void setCharColor(TColor col1);
    void setGradColor(TColor col1, TColor col2);
    float drawString_size_scale(float a1, float a2, float a3, float a4, char* a5, unsigned long usz, bool a7);

    bool unk4;
    bool unk5;
    int unk8;
    TColor mColor1;
    TColor mColor2;
    TColor mColor3;
    TColor mColor4;
    int unk1C;
};

#endif  // JSYSTEM_JUTILITY_JUTFONT_H
