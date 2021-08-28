#ifndef JUTPALETTE_H
#define JUTPALETTE_H

#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

enum JUTTransparency { UNK0, UNK1 };

enum _GXTlut {
    /* 0x00 */ GX_TLUT0,
    /* 0x01 */ GX_TLUT1,
    /* 0x02 */ GX_TLUT2,
    /* 0x03 */ GX_TLUT3,
    /* 0x04 */ GX_TLUT4,
    /* 0x05 */ GX_TLUT5,
    /* 0x06 */ GX_TLUT6,
    /* 0x07 */ GX_TLUT7,
    /* 0x08 */ GX_TLUT8,
    /* 0x09 */ GX_TLUT9,
    /* 0x0A */ GX_TLUT10,
    /* 0x0B */ GX_TLUT11,
    /* 0x0C */ GX_TLUT12,
    /* 0x0D */ GX_TLUT13,
    /* 0x0E */ GX_TLUT14,
    /* 0x0F */ GX_TLUT15,
    /* 0x10 */ GX_BIGTLUT0,
    /* 0x11 */ GX_BIGTLUT1,
    /* 0x12 */ GX_BIGTLUT2,
    /* 0x13 */ GX_BIGTLUT3,
};

enum _GXTlutFmt {
    /* 0x00 */ UNK,
};

struct ResTLUT {
    u8 format;
    u8 transparency;
    u16 numColors;
};

class JUTPalette {
public:
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
