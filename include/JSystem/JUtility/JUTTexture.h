#ifndef JUTTEXTURE_H
#define JUTTEXTURE_H

#include "JSystem/JUtility/JUTPalette.h"
#include "dolphin/types.h"

struct ResTIMG { /* Acts as the header to image data. Usually texture data immediately follows it,
                    so any pointer arithmetic to go past the end of this structure is so that a
                    variable sized allocated buffer can be accessed. */
    u8 format;
    bool alphaEnabled;
    u16 width;
    u16 height;
    u8 wrapS;
    u8 wrapT;
    bool palettesEnabled;
    u8 paletteFormat;
    u16 paletteCount;
    u32 paletteOffset;
    bool mipmapEnabled;
    bool doEdgeLOD;
    bool biasClamp;
    u8 maxAnisotropy;
    u8 minFilter;
    u8 magFilter;
    s8 minLOD;
    s8 maxLOD;
    u8 mipmapCount;
    u8 unknown;
    s16 LODBias;
    u32 texDataOffset;
};

class JUTTexture {
public:
    JUTTexture() {
        setCaptureFlag(false);
        mEmbPalette = NULL;
        mTexInfo = NULL;
    }
    ~JUTTexture();
    void storeTIMG(ResTIMG const*, JUTPalette*, _GXTlut);
    void storeTIMG(ResTIMG const*, u8);
    void storeTIMG(ResTIMG const*, JUTPalette*);
    void attachPalette(JUTPalette*);
    void init();
    void initTexObj(_GXTlut);
    void initTexObj();
    void load(_GXTexMapID);

    const ResTIMG* getTexInfo() const { return mTexInfo; }
    void setCaptureFlag(bool flag) { mFlags &= 2 | flag; }
    u8 getCaptureFlag() const { return mFlags & 1; }
    u8 getEmbPaletteDelFlag() const { return mFlags & 2; }

private:
    /* 0x00 */ _GXTexObj mTexObj;
    /* 0x20 */ const ResTIMG* mTexInfo;
    /* 0x24 */ void* mTexData;
    /* 0x28 */ JUTPalette* mEmbPalette;
    /* 0x2C */ JUTPalette* field_0x2c;
    /* 0x30 */ u8 mWrapS;
    /* 0x31 */ u8 mWrapT;
    /* 0x32 */ u8 mMinFilter;
    /* 0x33 */ u8 mMagFilter;
    /* 0x34 */ s16 mMinLOD;
    /* 0x36 */ s16 mMaxLOD;
    /* 0x38 */ s16 mLODBias;
    /* 0x3A */ u8 mTlutName;
    /* 0x3B */ u8 mFlags;
    /* 0x3C */ void* field_0x3c;
};

#endif /* JUTTEXTURE_H */
