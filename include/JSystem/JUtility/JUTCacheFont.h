#ifndef JUTCACHEFONT_H
#define JUTCACHEFONT_H

#include "dolphin/types.h"
#include "JSystem/JUtility/JUTResFont.h"
#include "JSystem/JKernel/JKRAram.h"
#include "global.h"

class JUTCacheFont : public JUTResFont {
public:
    struct TGlyphCacheInfo {
        /* 0x0 */ TGlyphCacheInfo* mPrev;
        /* 0x4 */ TGlyphCacheInfo* mNext;
    };

    struct TCachePage {
        /* 0x00 */ u8 field_0x0[8];
        /* 0x08 */ s16 field_0x8;
        /* 0x0A */ u16 field_0xa;
        /* 0x0C */ u8 field_0xc[4];
        /* 0x10 */ u8* field_0x10;
        /* 0x14 */ u16 field_0x14;
        /* 0x16 */ u16 field_0x16;
        /* 0x18 */ u16 field_0x18;
        /* 0x1A */ u16 field_0x1a;
        /* 0x1C */ u16 field_0x1c;
        /* 0x1E */ u16 field_0x1e;
    };  // Size: 0x20

    enum EPagingType {
        PAGE_TYPE_0,
        PAGE_TYPE_1,
    };

    /* 802DD188 */ JUTCacheFont(ResFONT const*, u32, JKRHeap*);
    /* 802DD29C */ void deleteMemBlocks_CacheFont();
    /* 802DD320 */ void initialize_state();
    /* 802DD35C */ int getMemorySize(ResFONT const*, u16*, u32*, u16*, u32*, u16*, u32*, u32*);
    /* 802DD4EC */ int initiate(ResFONT const*, void*, u32, JKRHeap*);
    /* 802DD54C */ bool internal_initiate(ResFONT const*, void*, u32, JKRHeap*);
    /* 802DD650 */ bool allocArea(void*, u32, JKRHeap*);
    /* 802DD804 */ bool allocArray(JKRHeap*);
    /* 802DDB0C */ void determineBlankPage();
    /* 802DDBBC */ void getGlyphFromAram(JUTCacheFont::TGlyphCacheInfo*, JUTCacheFont::TCachePage*,
                                         int*, int*);
    /* 802DDD98 */ void loadCache_char_subroutine(int*, bool);
    /* 802DDEE0 */ void invalidiateAllCache();
    /* 802DDF68 */ void unlink(JUTCacheFont::TGlyphCacheInfo*);
    /* 802DDFAC */ void prepend(JUTCacheFont::TGlyphCacheInfo*);

    /* 802DD208 */ virtual ~JUTCacheFont();
    /* 802DDCE4 */ virtual void loadImage(int, _GXTexMapID);
    /* 802DD8EC */ virtual void setBlock();

    void setPagingType(EPagingType type) { mPagingType = type; }

    static u32 calcCacheSize(u32 param_0, int param_1) { return (ALIGN_NEXT(param_0, 0x20) + 0x40) * param_1; }

private:
    /* 0x70 */ u32 mTotalWidSize;
    /* 0x74 */ u32 mTotalGlySize;
    /* 0x78 */ u32 mTotalMapSize;
    /* 0x7C */ void* field_0x7c;
    /* 0x80 */ void* field_0x80;
    /* 0x84 */ void* field_0x84;
    /* 0x88 */ u32 mMaxSheetSize;
    /* 0x8C */ EPagingType mPagingType;
    /* 0x90 */ void* mCacheBuffer;
    /* 0x94 */ int field_0x94;
    /* 0x98 */ u32 mCachePage;
    /* 0x9C */ TGlyphCacheInfo* field_0x9c;
    /* 0xA0 */ TGlyphCacheInfo* field_0xa0;
    /* 0xA4 */ void* field_0xa4;
    /* 0xA8 */ u32 field_0xa8;
    /* 0xAC */ JKRAramBlock* field_0xac;
    /* 0xB0 */ u8 field_0xb0;
    /* 0xB4 */ int field_0xb4;
};  // Size: 0xB8

#endif /* JUTCACHEFONT_H */
