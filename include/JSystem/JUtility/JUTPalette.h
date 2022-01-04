#ifndef JUTPALETTE_H
#define JUTPALETTE_H

#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

enum JUTTransparency { UNK0, UNK1 };

struct ResTLUT {
    u8 format;
    u8 transparency;
    u16 numColors;
};

class JUTPalette {
public:
    JUTPalette(_GXTlut p1, _GXTlutFmt p2, JUTTransparency p3, u16 p4, void* p5) {
        this->storeTLUT(p1, p2, p3, p4, p5);
    }
    /* 802DE890 */ void storeTLUT(_GXTlut, ResTLUT*);
    /* 802DE91C */ void storeTLUT(_GXTlut, _GXTlutFmt, JUTTransparency, u16, void*);
    /* 802DE95C */ bool load();

    u8 getTlutName() const { return mTlutName; }

private:
    /* 0x00 */ _GXTlutObj mTlutObj;
    /* 0x0C */ u8 mTlutName;
    /* 0x0D */ u8 mFormat;
    /* 0x10 */ ResTLUT* mColorTable;
    /* 0x14 */ u16 mNumColors;
    /* 0x16 */ u8 mTransparency;
};

#endif /* JUTPALETTE_H */
