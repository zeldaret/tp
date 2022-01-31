#ifndef J2DPICTURE_H
#define J2DPICTURE_H

#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/types.h"

enum J2DMirror {
    /* 0x0 */ MIRROR0,  // temp, figure out later
};

enum J2DBinding {
    /* 0xF */ BIND15 = 15,  // temp, figure out later
};

class J2DPicture : public J2DPane {
public:
    /* 802FCFF0 */ virtual ~J2DPicture();
    /* 802FF2E8 */ virtual s32 getTypeID() const;
    /* 802FDB28 */ virtual void drawSelf(f32, f32);
    /* 802FDB90 */ virtual void drawSelf(f32, f32, Mtx*);
    /* 802FF09C */ virtual bool isUsed(ResTIMG const*);
    /* 802FF63C */ virtual bool isUsed(ResFONT const*);
    /* 802FF65C */ virtual void rewriteAlpha();
    /* 802FCCDC */ virtual void initiate(ResTIMG const*, ResTLUT const*);
    /* 802FD098 */ virtual bool prepareTexture(u8);
    /* 801BDD40 */ virtual void append(ResTIMG const*, f32);
    /* 802FF238 */ virtual void append(ResTIMG const*, JUTPalette*, f32);
    /* 80020338 */ virtual void append(char const*, f32);
    /* 802FF2F0 */ virtual void append(char const*, JUTPalette*, f32);
    /* 802FF208 */ virtual void append(JUTTexture*, f32);
    /* 802FF3E0 */ virtual void prepend(ResTIMG const*, f32);
    /* 802FF3B0 */ virtual void prepend(ResTIMG const*, JUTPalette*, f32);
    /* 802FF380 */ virtual void prepend(char const*, f32);
    /* 802FF350 */ virtual void prepend(char const*, JUTPalette*, f32);
    /* 802FF320 */ virtual void prepend(JUTTexture*, f32);
    /* 801BDD70 */ virtual void insert(ResTIMG const*, u8, f32);
    /* 802FD168 */ virtual void insert(ResTIMG const*, JUTPalette*, u8, f32);
    /* 80020368 */ virtual void insert(char const*, u8, f32);
    /* 802FD4B4 */ virtual void insert(char const*, JUTPalette*, u8, f32);
    /* 802FD524 */ virtual void insert(JUTTexture*, u8, f32);
    /* 802FD6F4 */ virtual int remove(u8);
    /* 802FF410 */ virtual int remove();
    /* 802FD814 */ virtual void remove(JUTTexture*);
    /* 802FF4E0 */ virtual void draw(f32, f32, bool, bool, bool);
    /* 802FF448 */ virtual void draw(f32, f32, u8, bool, bool, bool);
    /* 802FDC70 */ virtual void draw(f32, f32, f32, f32, bool, bool, bool);
    /* 802FF588 */ virtual void drawOut(f32, f32, f32, f32, f32, f32);
    /* 802FF524 */ virtual void drawOut(f32, f32, f32, f32, f32, f32, f32, f32);
    /* 802FDF88 */ virtual void drawOut(JGeometry::TBox2<f32> const&, JGeometry::TBox2<f32> const&);
    /* 802FF29C */ virtual void load(_GXTexMapID, u8);
    /* 802FF268 */ virtual void load(u8);
    /* 800202CC */ virtual void setBlendRatio(f32, f32);
    /* 802FEA74 */ virtual void setBlendColorRatio(f32, f32);
    /* 802FEA9C */ virtual void setBlendAlphaRatio(f32, f32);
    /* 802FD874 */ virtual void changeTexture(ResTIMG const*, u8);
    /* 802FD964 */ virtual void changeTexture(char const*, u8);
    /* 802FD9BC */ virtual void changeTexture(ResTIMG const*, u8, JUTPalette*);
    /* 802FDAC8 */ virtual void changeTexture(char const*, u8, JUTPalette*);
    /* 800539DC */ virtual void getTexture(u8) const;
    /* 802FF634 */ virtual u8 getTextureCount() const;
    /* 80053C6C */ virtual void setBlack(JUtility::TColor);
    /* 80053C44 */ virtual void setWhite(JUtility::TColor);
    /* 8018BEE0 */ virtual void setBlackWhite(JUtility::TColor, JUtility::TColor);
    /* 801DFA4C */ virtual JUtility::TColor getBlack() const;
    /* 801DFA40 */ virtual JUtility::TColor getWhite() const;
    /* 8025603C */ virtual bool getMaterial() const;
    /* 802FDBFC */ virtual void drawFullSet(f32, f32, f32, f32, Mtx*);
    /* 802FE380 */ virtual void drawTexCoord(f32, f32, f32, f32, s16, s16, s16, s16, s16, s16, s16,
                                             s16, Mtx*);
    /* 802FF100 */ virtual void getUsableTlut(u8);

    /* 802FC800 */ J2DPicture(u64, JGeometry::TBox2<f32> const&, ResTIMG const*, ResTLUT const*);
    /* 802FC708 */ J2DPicture(ResTIMG const*);
    /* 802FC118 */ J2DPicture(J2DPane*, JSURandomInputStream*, JKRArchive*);
    /* 802FC050 */ J2DPicture();
    /* 802FC1D4 */ J2DPicture(J2DPane*, JSURandomInputStream*, J2DMaterial*);
    /* 802FC8E8 */ void private_readStream(J2DPane*, JSURandomInputStream*, JKRArchive*);
    /* 802FCD70 */ void private_initiate(ResTIMG const*, ResTLUT const*);
    /* 802FCE9C */ void initinfo();
    /* 802FE5D0 */ void setTevMode();
    /* 802FEA60 */ static void swap(f32&, f32&);
    /* 802FEAC4 */ void setBlendKonstColor();
    /* 802FEB94 */ void setBlendKonstAlpha();
    /* 802FEC64 */ void getNewColor(JUtility::TColor*);
    /* 802FED84 */ void setTexCoord(JGeometry::TVec2<s16>*, JUTTexture const*, J2DBinding,
                                    J2DMirror, bool);
    /* 802FED44 */ void setTexCoord(JUTTexture const*, J2DBinding, J2DMirror, bool);
    /* 802FF1D0 */ u8 getTlutID(ResTIMG const*, u8);

    void setCornerColor(JUtility::TColor c0, JUtility::TColor c1, JUtility::TColor c2,
                        JUtility::TColor c3) {
        mCornerColor[0] = c0;
        mCornerColor[1] = c1;
        mCornerColor[2] = c2;
        mCornerColor[3] = c3;
    }

private:
    /* 0x100 */ JUTTexture* mTexture[2];
    /* 0x108 */ u8 mTextureCount;
    /* 0x109 */ u8 field_0x109;
    /* 0x10A */ JGeometry::TVec2<s16> field_0x10a[4];
    /* 0x11C */ f32 field_0x11c[4];
    /* 0x12C */ JUTPalette* field_0x12c;
    /* 0x130 */ JUtility::TColor mWhite;
    /* 0x134 */ JUtility::TColor mBlack;
    /* 0x138 */ JUtility::TColor mCornerColor[4];
    /* 0x148 */ JUtility::TColor field_0x148;
    /* 0x14C */ JUtility::TColor field_0x14c;
};

#endif /* J2DPICTURE_H */
