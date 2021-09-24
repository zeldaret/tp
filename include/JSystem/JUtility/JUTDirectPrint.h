#ifndef JUTDIRECTPRINT_H
#define JUTDIRECTPRINT_H

#include "dolphin/types.h"
#include "JSystem/JUtility/TColor.h"

struct base_process_class {};

struct __va_list_struct {};

class JUTDirectPrint {
public:
    /* 802E41E8 */ JUTDirectPrint();
    /* 802E4240 */ JUTDirectPrint* start();
    /* 802E4288 */ void erase(int, int, int, int);
    /* 802E431C */ void drawChar(int, int, int);
    /* 802E456C */ void changeFrameBuffer(void*, u16, u16);
    /* 802E45A4 */ void printSub(u16, u16, char const*, __va_list_struct*, bool);
    /* 802E46D8 */ void drawString(u16, u16, char*);
    /* 802E4708 */ void drawString_f(u16, u16, char const*, ...);
    /* 802E47C8 */ void setCharColor(u8, u8, u8);
    /* 802E4798 */ void setCharColor(JUtility::TColor);

    static u8 sAsciiTable[128];
    static void* sFontData[64];
    static void* sFontData2[77];
    static JUTDirectPrint* sDirectPrint;
    static u8 sDirectPrint_padding[4 /* padding */];

private:
    /* 0x00 */ void* field_0x00;
    /* 0x04 */ u16 mFrameBufferWidth;
    /* 0x06 */ u16 mFrameBufferHeight;
    /* 0x08 */ u16 field_0x08;
    /* 0x0A */ u16 field_0x0A;
    /* 0x0C */ size_t field_0x0C;
    /* 0x10 */ u8 field_0x10[4];
    /* 0x14 */ void* mFrameBuffer;
    /* 0x18 */ JUtility::TColor mCharColor;
    /* 0x1C */ u16 field_0x1C;
    /* 0x1E */ u16 field_0x1E;
    /* 0x20 */ u16 field_0x20;
    /* 0x22 */ u16 field_0x22;
    /* 0x24 */ u16 field_0x24;
    /* 0x26 */ u16 field_0x26;
    /* 0x28 */ u16 field_0x28;
    /* 0x2A */ u16 field_0x2A;
    /* 0x2C */
};

#endif /* JUTDIRECTPRINT_H */
