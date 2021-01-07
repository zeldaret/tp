#ifndef JSYSTEM_JUTILITY_JUT_RES_FONT
#define JSYSTEM_JUTILITY_JUT_RES_FONT

#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JUtility/JUTFont/JUTFont.h"

// todo: move
inline u8 JSUHiByte(u16 i) {
    return i >> 8;
}
inline u8 JSULoByte(u16 i) {
    return i & 0xff;
}

struct ResFONT {};

class JUTResFont : JUTFont {
public:
    JUTResFont();
    JUTResFont(const ResFONT* font, JKRHeap* heap);
    ~JUTResFont();

    struct Unknown {
        struct Cell {
            u32 filler0;
            u32 filler4;
            u32 filler8;
            u16 width;
            u16 height;
        };
        Cell* cell;
    };

    // virtuals
    /* 0x0c */ virtual void setGX();
    /* 0x10 */ virtual void setGX(JUtility::TColor col1, JUtility::TColor col2);
    /* 0x14 */ virtual f32 drawChar_scale(f32 a1, f32 a2, f32 a3, f32 a4, int a5, bool a6);

    /* 0x2c */ virtual void getWidthEntry(int i_no, TWidth* width) const;
    /* 0x30 */ virtual u32 getCellWidth() const;
    /* 0x34 */ virtual u32 getCellHeight() const;
    /* 0x40 */ virtual bool isLeadByte(int a1) const;
    /* 0x44 */ virtual void loadImage(int a1, GXTexMapID a2);
    /* 0x48 */ virtual void setBlock();

    // inlines
    void delete_and_initialize() {
        deleteMemBlocks_ResFont();
        initialize_state();
    }

    // member functions
    void deleteMemBlocks_ResFont();
    void initialize_state();
    bool initiate(const ResFONT* font, JKRHeap* heap);
    bool protected_initiate(const ResFONT* font, JKRHeap* heap);
    u32 countBlock();
    void loadFont(int a1, GXTexMapID a2, TWidth* a3);
    int getFontCode(int a1) const;
    u32 convertSjis(int a1, u16* a2) const;

    /* 0x20 */ u32 unk20;
    /* 0x24 */ u8 filler24[0x20];
    /* 0x44 */ u32 unk44;
    /* 0x48 */ const ResFONT* pFontFile;
    /* 0x4c */ u32 filler4C;
    /* 0x50 */ JKRHeap* pMemBlocks;
    /* 0x54 */ u32 unk54;
    /* 0x58 */ Unknown* unk58;
    /* 0x5c */ u32 unk5C;
    /* 0x60 */ u16 mBlockCounts[6];
    /* 0x6c */ bool (**unk6C)(int a1);
};

#endif  // JSYSTEM_JUTILITY_JUT_RES_FONT
