#ifndef J2DTEXTBOX_H
#define J2DTEXTBOX_H

#include "JSystem/J2DGraph/J2DMaterial.h"
#include "JSystem/J2DGraph/J2DPane.h"

class J2DMaterial;
class JUTFont;

enum J2DTextBoxVBinding {
    /* 0x0 */ VBIND_CENTER,
    /* 0x1 */ VBIND_BOTTOM,
    /* 0x2 */ VBIND_TOP
};

enum J2DTextBoxHBinding {
    /* 0x0 */ HBIND_CENTER,
    /* 0x1 */ HBIND_RIGHT,
    /* 0x2 */ HBIND_LEFT
};

/**
 * @ingroup jsystem-j2d
 * 
 */
struct J2DTbxBlockHeader {
    /* 0x00 */ u32 mTag;
    /* 0x04 */ s32 mSize;
};

/**
 * @ingroup jsystem-j2d
 * 
 */
struct J2DTextBoxInfo {
    /* 0x00 */ u16 field_0x0;
    /* 0x02 */ u16 field_0x2;
    /* 0x04 */ u16 mMaterialNum;
    /* 0x06 */ s16 mCharSpace;
    /* 0x08 */ s16 mLineSpace;
    /* 0x0A */ u16 mFontSizeX;
    /* 0x0C */ u16 mFontSizeY;
    /* 0x0E */ u8 mHBind;
    /* 0x0F */ u8 mVBind;
    /* 0x10 */ u32 mCharColor;
    /* 0x14 */ u32 mGradColor;
    /* 0x18 */ u8 mConnected;
    /* 0x19 */ char field_0x19[3];
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u16 field_0x1e;
};  // Size: 0x20

/**
 * @ingroup jsystem-j2d
 * 
 */
class J2DTextBox : public J2DPane {
public:
    struct TFontSize {
        /* 0x0 */ f32 mSizeX;
        /* 0x4 */ f32 mSizeY;
    };

    /* 803001E0 */ virtual ~J2DTextBox();
    /* 80300C68 */ virtual u16 getTypeID() const;
    /* 80300AF8 */ virtual void resize(f32, f32);
    /* 80300870 */ virtual bool setConnectParent(bool);
    /* 80300950 */ virtual void drawSelf(f32, f32, Mtx*);
    /* 803008E8 */ virtual void drawSelf(f32, f32);
    /* 80300C70 */ virtual bool isUsed(ResTIMG const*);
    /* 80300BFC */ virtual bool isUsed(ResFONT const*);
    /* 80300C90 */ virtual void rewriteAlpha();
    /* 803002E8 */ virtual void draw(f32, f32);
    /* 80300490 */ virtual void draw(f32, f32, f32, J2DTextBoxHBinding);
    /* 80300278 */ virtual void setFont(JUTFont*);
    /* 8021C7F4 */ virtual JUTFont* getFont() const { return mFont; }
    /* 80254408 */ virtual bool setBlack(JUtility::TColor);
    /* 80186C84 */ virtual bool setWhite(JUtility::TColor);
    /* 8019230C */ virtual bool setBlackWhite(JUtility::TColor, JUtility::TColor);
    /* 801DFA34 */ virtual JUtility::TColor getBlack() const;
    /* 801DFA28 */ virtual JUtility::TColor getWhite() const;
    /* 8025602C */ virtual J2DMaterial* getMaterial() const { return NULL; }

    /* 802FFBC4 */ J2DTextBox(u64, JGeometry::TBox2<f32> const&, ResFONT const*, char const*, s16,
                              J2DTextBoxHBinding, J2DTextBoxVBinding);
    /* 802FF6D8 */ J2DTextBox(J2DPane*, JSURandomInputStream*, JKRArchive*);
    /* 802FF75C */ J2DTextBox(J2DPane*, JSURandomInputStream*, u32, J2DMaterial*);
    /* 802FF660 */ J2DTextBox();
    /* 802FFC58 */ void initiate(ResFONT const*, char const*, s16, J2DTextBoxHBinding,
                                 J2DTextBoxVBinding);
    /* 802FFE88 */ void private_readStream(J2DPane*, JSURandomInputStream*, JKRArchive*);
    /* 80300658 */ char* getStringPtr() const;
    /* 8030074C */ s32 setString(s16, char const*, ...);
    /* 80300660 */ s32 setString(char const*, ...);

    void setFontSize(f32 sizeX, f32 sizeY) {
        f32 x;
        if (sizeX > 0.0f) {
            x = sizeX;
        } else {
            x = 0.0f;
        }
        mFontSizeX = x;

        f32 y;
        if (sizeY > 0.0f) {
            y = sizeY;
        } else {
            y = 0.0f;
        }
        mFontSizeY = y;
    }

    void setFontSize(TFontSize size) { setFontSize(size.mSizeX, size.mSizeY); }
    void getFontSize(TFontSize& size) const {
        size.mSizeX = mFontSizeX;
        size.mSizeY = mFontSizeY;
    }

    void setFontColor(JUtility::TColor i_charColor, JUtility::TColor i_GradientColor) {
        mCharColor = i_charColor;
        mGradientColor = i_GradientColor;
    }

    void setCharSpace(f32 space) { mCharSpacing = space; }
    f32 getCharSpace() const { return mCharSpacing; }
    void setLineSpace(f32 space) { mLineSpacing = space; }
    f32 getLineSpace() const { return mLineSpacing; }

    J2DTextBoxVBinding getVBinding() const {
        return (J2DTextBoxVBinding)(mFlags & 3);
    }

    J2DTextBoxHBinding getHBinding() const {
        return (J2DTextBoxHBinding)((mFlags >> 2) & 3);
    }

    JUtility::TColor getCharColor() { return mCharColor; }
    JUtility::TColor getGradColor() { return mGradientColor; }
    u16 getStringAllocByte() const { return mStringLength; }

// private:
    /* 0x0100 */ JUTFont* mFont;
    /* 0x0104 */ JUtility::TColor mCharColor;
    /* 0x0108 */ JUtility::TColor mGradientColor;
    /* 0x010C */ f32 field_0x10c;
    /* 0x0110 */ f32 field_0x110;
    /* 0x0114 */ f32 mCharSpacing;
    /* 0x0118 */ f32 mLineSpacing;
    /* 0x011C */ f32 mFontSizeX;
    /* 0x0120 */ f32 mFontSizeY;
    /* 0x0124 */ char* mStringPtr;
    /* 0x0128 */ JUtility::TColor mWhiteColor;
    /* 0x012C */ JUtility::TColor mBlackColor;
    /* 0x0130 */ u8 mFlags;
    /* 0x0131 */ bool mTextFontOwned;
    /* 0x0132 */ u16 mStringLength;
    /* 0x0134 */ u8 field_0x134[4];
};  // Size: 0x138

#endif /* J2DTEXTBOX_H */
