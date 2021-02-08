#ifndef JSYSTEM_JUTILITY_JUTCONSOLE_H_
#define JSYSTEM_JUTILITY_JUTCONSOLE_H_

#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "JSystem/JUtility/JUTResFont.h"
#include "dolphin/types.h"

struct JKRDisposer_members {
    struct JKRHeap* heap;
    struct JSUPtrLink link;
};

struct TColor {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

struct JUTResFont_vtable {
    void* field_0x0;
    void* field_0x4;
    void* dtor;
    void* setGX1;
    void* setGX2;
    void* drawChar_scale;
    void* getLeading;
    void* getAscent;
    void* getDescent;
    void* getHeight;
    void* getWidth;
    void* getWidthEntry;
    void* getCellWidth;
    void* getCellHeight;
    void* getFontType;
    void* getResFont;
    void* isLeadByte;
    void* loadImage;
    void* setBlock;
};

class JUTConsole {
public:
    void clear(void);
    void scroll(int);
    void dumpToTerminal(unsigned int);
    int getLineOffset(void) const;
    struct JUTConsole_vtable* vtable;
    struct JKRDisposer_members base;
    u8 field_0x18;
    u8 field_0x19;
    u8 field_0x1a;
    u8 field_0x1b;
    u8 field_0x1c;
    u8 field_0x1d;
    u8 field_0x1e;
    u8 field_0x1f;
    u32 field_0x20;
    s32 field_0x24;
    u8 field_0x28;
    u8 field_0x29;
    u8 field_0x2a;
    u8 field_0x2b;
    bool field_0x2c;
    u8 field_0x2d;
    u8 field_0x2e;
    u8 field_0x2f;
    s32 field_0x30;
    s32 field_0x34;
    s32 field_0x38;
    u8 field_0x3c;
    u8 field_0x3d;
    u8 field_0x3e;
    u8 field_0x3f;
    s32 field_0x40;
    s32 field_0x44;
    s32 field_0x48;
    struct JUTResFont* font;
    float field_0x50;
    float field_0x54;
    u32 field_0x58;
    struct TColor field_0x5c;
    struct TColor field_0x60;
    u32 field_0x64;
    bool field_0x68;
    bool field_0x69;
    bool field_0x6a;
    bool field_0x6b;
};

#endif