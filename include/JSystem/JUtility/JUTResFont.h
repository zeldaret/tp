#ifndef JSYSTEM_JUTILITY_JUT_RES_FONT
#define JSYSTEM_JUTILITY_JUT_RES_FONT 

#include "JSystem/JUtility/JUTFont/JUTFont.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

class JUTResFont : JUTFont {
public:
    JUTResFont();
    JUTResFont(ResFONT font, JKRHeap* heap);
    ~JUTResFont();
    
    struct Unknown {
        struct Unknown2 {
            u32 filler0;
            u32 filler4;
            u32 filler8;
            u16 unkC;
            u16 unkE;
        };
        Unknown2* unk0;
    };

    virtual void setGX();
    virtual void setGX(TColor col1, TColor col2);
    virtual void drawChar_scale(float a1, float a2, float a3, float a4, int a5, bool a6);
    virtual void getWidthEntry(s32 i_no, TWidth* width);
    virtual u32 getCellWidth();
    virtual u32 getCellHeight();
    virtual bool isLeadByte(s32 a1);

    virtual void loadImage(s32 a1, u32 a2);
    virtual void setBlock();

    void deleteMemBlocks_ResFont();
    void initialize_state();
    bool initiate(ResFONT font, JKRHeap* heap);
    bool protected_initiate(ResFONT font, JKRHeap* heap);
    u32 countBlock();
    void loadFont(s32 a1, u32 a2, TWidth* a3);
    u32 getFontCode(s32 a1);
    s32 convertSjis(s32 a1, u16* a2);

    u32 unk20;
    u8 filler24[0x20];
    u32 unk44;
    u32 unk48;
    u32 filler4C;
    JKRHeap* unk50;
    u32 unk54;
    Unknown* unk58;
    u32 unk5C;
    u8 filler60[0xC];
    bool (**unk6C)(s32 a1);
};


#endif  // JSYSTEM_JUTILITY_JUT_RES_FONT
