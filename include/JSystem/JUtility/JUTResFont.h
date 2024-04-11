#ifndef JUTRESFONT_H
#define JUTRESFONT_H

#include "JSystem/JUtility/JUTFont.h"

class JKRHeap;

typedef bool (*IsLeadByte_func)(int);

/**
* @ingroup jsystem-jutility
* 
*/
struct BlockHeader {
    const BlockHeader* getNext() const { return reinterpret_cast<const BlockHeader*>(reinterpret_cast<const u8*>(this) + size); }
    u32 magic;
    u32 size;
};

/**
* @ingroup jsystem-jutility
* 
*/
class JUTResFont : public JUTFont {
public:
    /* 802DF000 */ virtual ~JUTResFont();
    /* 802DF48C */ virtual void setGX();
    /* 802DF584 */ virtual void setGX(JUtility::TColor, JUtility::TColor);
    /* 802DF7C4 */ virtual f32 drawChar_scale(f32, f32, f32, f32, int, bool);
    /* 802DDFEC */ virtual int getLeading() const;
    /* 802DE004 */ virtual s32 getAscent() const;
    /* 802DE010 */ virtual s32 getDescent() const;
    /* 802DE01C */ virtual s32 getHeight() const;
    /* 802DDFF8 */ virtual s32 getWidth() const;
    /* 802DFC64 */ virtual void getWidthEntry(int, JUTFont::TWidth*) const;
    /* 802DFD0C */ virtual int getCellWidth() const;
    /* 802DFD58 */ virtual s32 getCellHeight() const;
    /* 802DDFE0 */ virtual int getFontType() const;
    /* 802DDFD8 */ virtual ResFONT* getResFont() const;
    /* 802DFDA4 */ virtual bool isLeadByte(int) const;
    /* 802DFF60 */ virtual void loadImage(int, _GXTexMapID);
    /* 802DF344 */ virtual void setBlock();

    /* 802DEF94 */ JUTResFont(ResFONT const*, JKRHeap*);
    /* 802DEF48 */ JUTResFont();
    /* 802DF08C */ void deleteMemBlocks_ResFont();
    /* 802DF0B0 */ void initialize_state();
    /* 802DF0DC */ bool initiate(ResFONT const*, JKRHeap*);
    /* 802DF13C */ bool protected_initiate(ResFONT const*, JKRHeap*);
    /* 802DF248 */ void countBlock();
    /* 802DFBE8 */ void loadFont(int, _GXTexMapID, JUTFont::TWidth*);
    /* 802DFDD8 */ int getFontCode(int) const;
    /* 802E00C4 */ int convertSjis(int, u16*) const;

    inline void delete_and_initialize() {
        deleteMemBlocks_ResFont();
        initialize_state();
    }

    static IsLeadByte_func const saoAboutEncoding_[3];

    // some types uncertain, may need to be fixed
    /* 0x1C */ int mWidth;
    /* 0x20 */ int mHeight;
    /* 0x24 */ GXTexObj mTexObj;
    /* 0x44 */ int mTexPageIdx;
    /* 0x48 */ const ResFONT* mResFont;
    /* 0x4C */ ResFONT::INF1* mInf1Ptr;
    /* 0x50 */ void** mMemBlocks;
    /* 0x54 */ ResFONT::WID1** mpWidthBlocks;
    /* 0x58 */ ResFONT::GLY1** mpGlyphBlocks;
    /* 0x5C */ ResFONT::MAP1** mpMapBlocks;
    /* 0x60 */ u16 mWid1BlockNum;
    /* 0x62 */ u16 mGly1BlockNum;
    /* 0x64 */ u16 mMap1BlockNum;
    /* 0x66 */ u16 field_0x66;
    /* 0x68 */ u16 mMaxCode;
    /* 0x6C */ const IsLeadByte_func* mIsLeadByte;
};

#endif /* JUTRESFONT_H */
