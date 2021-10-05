#ifndef JUTDIRECTPRINT_H
#define JUTDIRECTPRINT_H

#include "JSystem/JUtility/TColor.h"
#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/types.h"

class JUTDirectPrint {
private:
    /* 802E41E8 */ JUTDirectPrint();

public:
    /* 802E4288 */ void erase(int, int, int, int);
    /* 802E431C */ void drawChar(int, int, int);
    /* 802E456C */ void changeFrameBuffer(void*, u16, u16);
    /* -------- */ void print(u16, u16, char const*, ...);
    /* 802E45A4 */ void printSub(u16, u16, char const*, va_list, bool);
    /* 802E46D8 */ void drawString(u16, u16, char*);
    /* 802E4708 */ void drawString_f(u16, u16, char const*, ...);
    /* 802E47C8 */ void setCharColor(u8, u8, u8);
    /* 802E4798 */ void setCharColor(JUtility::TColor);

    /* 802E4240 */ static JUTDirectPrint* start();

    bool isActive() const { return field_0x00 != 0; }
    
    static JUTDirectPrint* getManager() { return sDirectPrint; }

private:
    static u8 sAsciiTable[128];
    static u32 sFontData[64];
    static u32 sFontData2[77];
    static JUTDirectPrint* sDirectPrint;
    static u8 sDirectPrint_padding[4 /* padding */];

private:
    /* 0x00 */ void* field_0x00;
    /* 0x04 */ u16 mFrameBufferWidth;
    /* 0x06 */ u16 mFrameBufferHeight;
    /* 0x08 */ u16 mStride;
    /* 0x0A */ u16 field_0x0A;
    /* 0x0C */ size_t mFrameBufferSize;
    /* 0x10 */ u8 field_0x10[4];
    /* 0x14 */ u16* mFrameBuffer;
    /* 0x18 */ JUtility::TColor mCharColor;
    /* 0x1C */ u16 mCharColor_Y;
    /* 0x1E */ u16 mCharColor_Cb;
    /* 0x20 */ u16 mCharColor_Cb2;
    /* 0x22 */ u16 mCharColor_Cb4;
    /* 0x24 */ u16 mCharColor_Cr;
    /* 0x26 */ u16 mCharColor_Cr2;
    /* 0x28 */ u16 mCharColor_Cr4;
    /* 0x2A */ u16 field_0x2A;
    /* 0x2C */
};

#endif /* JUTDIRECTPRINT_H */
