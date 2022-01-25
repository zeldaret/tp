#ifndef J2DTEXTBOX_H
#define J2DTEXTBOX_H

#include "JSystem/J2DGraph/J2DMaterial.h"
#include "JSystem/J2DGraph/J2DPane.h"
#include "dolphin/types.h"

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

class J2DTextBox : public J2DPane {
public:
    struct TFontSize {
        /* 0x0 */ f32 mSizeX;
        /* 0x4 */ f32 mSizeY;
    };

    /* 803001E0 */ virtual ~J2DTextBox();
    /* 80300C68 */ virtual s32 getTypeID() const;
    /* 80300AF8 */ virtual void resize(f32, f32);
    /* 80300870 */ virtual bool setConnectParent(bool);
    /* 80300950 */ virtual void drawSelf(f32, f32, Mtx*);
    /* 803008E8 */ virtual void drawSelf(f32, f32);
    /* 80300C70 */ virtual bool isUsed(ResTIMG const*);
    /* 80300BFC */ virtual bool isUsed(ResFONT const*);
    /* 80300C90 */ virtual void rewriteAlpha();
    /* 80300490 */ virtual void draw(f32, f32, f32, J2DTextBoxHBinding);
    /* 803002E8 */ virtual void draw(f32, f32);
    /* 80300278 */ virtual void setFont(JUTFont*);
    /* 8021C7F4 */ virtual void getFont() const;
    /* 80254408 */ virtual bool setBlack(JUtility::TColor);
    /* 80186C84 */ virtual void setWhite(JUtility::TColor);
    /* 8019230C */ virtual void setBlackWhite(JUtility::TColor, JUtility::TColor);
    /* 801DFA34 */ virtual void getBlack() const;
    /* 801DFA28 */ virtual void getWhite() const;
    /* 8025602C */ virtual bool getMaterial() const;

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
        if (sizeX > 0.0f) {
            sizeX = 0.0f;
        }
        field_0x11c = sizeX;

        if (sizeY > 0.0f) {
            sizeY = 0.0f;
        }
        field_0x120 = sizeY;
    }

    void setFontSize(TFontSize size) { setFontSize(size.mSizeX, size.mSizeY); }

    void setCharSpace(f32 space) { mCharSpacing = space; }

private:
    /* 0x0100 */ JUTFont* mFont;
    /* 0x0104 */ JUtility::TColor mCharColor;
    /* 0x0108 */ JUtility::TColor mGradientColor;
    /* 0x010C */ f32 field_0x10c;
    /* 0x0110 */ f32 field_0x110;
    /* 0x0114 */ f32 mCharSpacing;
    /* 0x0118 */ f32 mLineSpacing;
    /* 0x011C */ f32 field_0x11c;
    /* 0x0120 */ f32 field_0x120;
    /* 0x0124 */ char* mStringPtr;
    /* 0x0128 */ JUtility::TColor mWhiteColor;
    /* 0x012C */ JUtility::TColor mBlackColor;
    /* 0x0130 */ u8 mFlags;
    /* 0x0131 */ bool mTextFontOwned;
    /* 0x0132 */ s16 mStringLength;
};

#endif /* J2DTEXTBOX_H */
