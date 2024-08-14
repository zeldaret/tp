#ifndef J2DPICTURE_H
#define J2DPICTURE_H

#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/JUtility/TColor.h"

class J2DMaterial;
class JUTPalette;
class JUTTexture;
struct ResTIMG;
struct ResTLUT;

enum J2DMirror {
    /* 0 */ MIRROR0,  // temp, figure out later
    /* 1 */ J2DMirror_Y = (1 << 0),
    /* 2 */ J2DMirror_X = (1 << 1),
};

enum J2DBinding {
    /* 1 */ J2DBind_Bottom = (1 << 0),
    /* 2 */ J2DBind_Top = (1 << 1),
    /* 4 */ J2DBind_Right = (1 << 2),
    /* 8 */ J2DBind_Left = (1 << 3),

    /* 0xF */ BIND15 = 15,  // temp, figure out later
};

/**
 * @ingroup jsystem-j2d
 * 
 */
struct J2DPicHeader {
    /* 0x0 */ u32 mTag;
    /* 0x4 */ u32 mSize;
};

/**
 * @ingroup jsystem-j2d
 * 
 */
struct J2DScrnBlockPictureParameter {
    /* 0x00 */ u16 field_0x0;
    /* 0x02 */ u16 mMaterialNum;
    /* 0x04 */ u16 field_0x4;
    /* 0x06 */ u16 field_0x6;
    /* 0x08 */ u16 field_0x8[4];
    /* 0x10 */ JGeometry::TVec2<s16> field_0x10[4];
    /* 0x20 */ u32 mCornerColor[4];
};  // Size: 0x30

/**
 * @ingroup jsystem-j2d
 * 
 */
class J2DPicture : public J2DPane {
public:
    /* 802FCFF0 */ virtual ~J2DPicture();
    /* 802FF2E8 */ virtual u16 getTypeID() const;
    /* 802FDB28 */ virtual void drawSelf(f32, f32);
    /* 802FDB90 */ virtual void drawSelf(f32, f32, Mtx*);
    /* 802FF09C */ virtual bool isUsed(ResTIMG const*);
    /* 802FF63C */ virtual bool isUsed(ResFONT const*);
    /* 802FF65C */ virtual void rewriteAlpha();
    /* 802FCCDC */ virtual void initiate(ResTIMG const*, ResTLUT const*);
    /* 802FD098 */ virtual bool prepareTexture(u8);
    /* 801BDD40 */ virtual bool append(ResTIMG const*, f32);
    /* 802FF238 */ virtual bool append(ResTIMG const*, JUTPalette*, f32);
    /* 80020338 */ virtual bool append(char const* param_0, f32 param_1) {
        return insert(param_0, mTextureNum, param_1);
    }

    /* 802FF2F0 */ virtual bool append(char const*, JUTPalette*, f32);
    /* 802FF208 */ virtual bool append(JUTTexture*, f32);
    /* 802FF3E0 */ virtual void prepend(ResTIMG const*, f32);
    /* 802FF3B0 */ virtual void prepend(ResTIMG const*, JUTPalette*, f32);
    /* 802FF380 */ virtual void prepend(char const*, f32);
    /* 802FF350 */ virtual void prepend(char const*, JUTPalette*, f32);
    /* 802FF320 */ virtual void prepend(JUTTexture*, f32);
    /* 801BDD70 */ virtual void insert(ResTIMG const*, u8, f32);
    /* 802FD168 */ virtual bool insert(ResTIMG const*, JUTPalette*, u8, f32);
    /* 80020368 */ virtual bool insert(char const* param_0, u8 param_1, f32 param_2) {
        return insert(param_0, NULL, param_1, param_2);
    }
    /* 802FD4B4 */ virtual bool insert(char const*, JUTPalette*, u8, f32);
    /* 802FD524 */ virtual bool insert(JUTTexture*, u8, f32);
    /* 802FD6F4 */ virtual bool remove(u8);
    /* 802FF410 */ virtual bool remove();
    /* 802FD814 */ virtual bool remove(JUTTexture*);
    /* 802FF4E0 */ virtual void draw(f32, f32, bool, bool, bool);
    /* 802FF448 */ virtual void draw(f32, f32, u8, bool, bool, bool);
    /* 802FDC70 */ virtual void draw(f32, f32, f32, f32, bool, bool, bool);
    /* 802FF588 */ virtual void drawOut(f32, f32, f32, f32, f32, f32);
    /* 802FF524 */ virtual void drawOut(f32, f32, f32, f32, f32, f32, f32, f32);
    /* 802FDF88 */ virtual void drawOut(JGeometry::TBox2<f32> const&, JGeometry::TBox2<f32> const&);
    /* 802FF29C */ virtual void load(_GXTexMapID, u8);
    /* 802FF268 */ virtual void load(u8);
    /* 800202CC */ virtual void setBlendRatio(f32 param_0, f32 param_1) {
        setBlendColorRatio(param_0, param_1);
        setBlendAlphaRatio(param_0, param_1);
    }
    /* 802FEA74 */ virtual void setBlendColorRatio(f32, f32);
    /* 802FEA9C */ virtual void setBlendAlphaRatio(f32, f32);
    /* 802FD874 */ virtual const ResTIMG* changeTexture(ResTIMG const*, u8);
    /* 802FD964 */ virtual const ResTIMG* changeTexture(char const*, u8);
    /* 802FD9BC */ virtual const ResTIMG* changeTexture(ResTIMG const*, u8, JUTPalette*);
    /* 802FDAC8 */ virtual const ResTIMG* changeTexture(char const*, u8, JUTPalette*);
    /* 800539DC */ virtual JUTTexture* getTexture(u8) const;
    /* 802FF634 */ virtual u8 getTextureCount() const;
    /* 80053C6C */ virtual bool setBlack(JUtility::TColor);
    /* 80053C44 */ virtual bool setWhite(JUtility::TColor);
    /* 8018BEE0 */ virtual bool setBlackWhite(JUtility::TColor i_black, JUtility::TColor i_white);
    /* 801DFA4C */ virtual JUtility::TColor getBlack() const;
    /* 801DFA40 */ virtual JUtility::TColor getWhite() const;
    /* 8025603C */ virtual J2DMaterial* getMaterial() const { return NULL; }
    /* 802FDBFC */ virtual void drawFullSet(f32, f32, f32, f32, Mtx*);
    /* 802FE380 */ virtual void drawTexCoord(f32, f32, f32, f32, s16, s16, s16, s16, s16, s16, s16,
                                             s16, Mtx*);
    /* 802FF100 */ virtual u8 getUsableTlut(u8);

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
    /* 802FF1D0 */ GXTlut getTlutID(ResTIMG const*, u8);

    void setCornerColor(JUtility::TColor c0, JUtility::TColor c1, JUtility::TColor c2,
                        JUtility::TColor c3) {
        mCornerColor[0] = c0;
        mCornerColor[1] = c1;
        mCornerColor[2] = c2;
        mCornerColor[3] = c3;
    }
    void setCornerColor(JUtility::TColor c0) {
        setCornerColor(c0, c0, c0, c0);
    }

protected:
    /* 0x100 */ JUTTexture* mTexture[2];
    /* 0x108 */ u8 mTextureNum;
    /* 0x109 */ u8 field_0x109;
    /* 0x10A */ JGeometry::TVec2<s16> field_0x10a[4];
    /* 0x11C */ f32 field_0x11c[2];
    /* 0x124 */ f32 field_0x124[2];
    /* 0x12C */ JUTPalette* mPalette;
    /* 0x130 */ JUtility::TColor mWhite;
    /* 0x134 */ JUtility::TColor mBlack;
    /* 0x138 */ JUtility::TColor mCornerColor[4];
    /* 0x148 */ JUtility::TColor mBlendKonstColor;
    /* 0x14C */ JUtility::TColor mBlendKonstAlpha;
};

#endif /* J2DPICTURE_H */
