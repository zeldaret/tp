#ifndef J2DWINDOW_H
#define J2DWINDOW_H

#include "JSystem/J2DGraph/J2DMaterial.h"
#include "JSystem/J2DGraph/J2DPane.h"
#include "JSystem/JSupport/JSURandomInputStream.h"
#include "dolphin/types.h"

class J2DWindow : public J2DPane {
public:
    struct TMaterial {
        /* 0x00 */ JUTTexture* field_0x0;
        /* 0x04 */ JUTTexture* field_0x4;
        /* 0x08 */ JUTTexture* field_0x8;
        /* 0x0C */ JUTTexture* field_0xc;
        /* 0x10 */ JUTTexture* field_0x10;
    };  // Size: 0x14

    struct TContentsColor {
        TContentsColor() {}
        /* 0x0 */ JUtility::TColor field_0x0;
        /* 0x4 */ JUtility::TColor field_0x4;
        /* 0x8 */ JUtility::TColor field_0x8;
        /* 0xC */ JUtility::TColor field_0xc;
    };  // Size: 0x10

    /* 802F9C10 */ J2DWindow(J2DPane*, JSURandomInputStream*, J2DMaterial*);
    /* 802F9B74 */ J2DWindow(J2DPane*, JSURandomInputStream*, JKRArchive*);
    /* 802F9A7C */ J2DWindow();
    /* 802FA118 */ void private_readStream(J2DPane*, JSURandomInputStream*, JKRArchive*);
    /* 802FA604 */ void initinfo2();
    /* 802FAA5C */ void draw_private(JGeometry::TBox2<f32> const&, JGeometry::TBox2<f32> const&);
    /* 802FB12C */ void setContentsColor(JUtility::TColor, JUtility::TColor, JUtility::TColor,
                                         JUtility::TColor);
    /* 802FB634 */ void drawFrameTexture(JUTTexture*, f32, f32, f32, f32, u16, u16, u16, u16, bool);
    /* 802FB7C8 */ void drawFrameTexture(JUTTexture*, f32, f32, bool, bool, bool);
    /* 802FB868 */ void drawContentsTexture(f32, f32, f32, f32);
    /* 802FBB90 */ void setTevMode(JUTTexture*, JUtility::TColor, JUtility::TColor);

    /* 802FA880 */ virtual ~J2DWindow();
    /* 802FBF98 */ virtual s32 getTypeID() const;
    /* 802FB000 */ virtual void resize(f32, f32);
    /* 802FB1D8 */ virtual void drawSelf(f32, f32);
    /* 802FB240 */ virtual void drawSelf(f32, f32, f32 (*)[3][4]);
    /* 802FBEDC */ virtual bool isUsed(ResTIMG const*);
    /* 802FC02C */ virtual bool isUsed(ResFONT const*);
    /* 802FC04C */ virtual void rewriteAlpha();
    /* 802FA928 */ virtual void draw(JGeometry::TBox2<f32> const&);
    /* 802FAED0 */ virtual void draw(JGeometry::TBox2<f32> const&, JGeometry::TBox2<f32> const&);
    /* 802FBFA0 */ virtual void draw(f32, f32, f32, f32);
    /* 80254430 */ virtual bool setBlack(JUtility::TColor);
    /* 802543E0 */ virtual bool setWhite(JUtility::TColor);
    /* 80254568 */ virtual bool setBlackWhite(JUtility::TColor, JUtility::TColor);
    /* 80254000 */ virtual JUtility::TColor getBlack() const;
    /* 8025400C */ virtual JUtility::TColor getWhite() const;
    /* 802FBE60 */ virtual void getFrameTexture(u8, u8) const;
    /* 802FBFE8 */ virtual void getContentsTexture(u8) const;
    /* 802FC000 */ virtual void getMaterial(J2DWindow::TMaterial&) const;
    /* 802FC01C */ virtual bool getFrameMaterial(u8) const;
    /* 802FC024 */ virtual bool getContentsMaterial() const;
    /* 802FB338 */ virtual void drawContents(JGeometry::TBox2<f32> const&);

private:
    /* 0x100 */ TMaterial mMaterial;
    /* 0x114 */ JGeometry::TBox2<f32> field_0x114;
    /* 0x124 */ JUTPalette* mPalette;
    /* 0x128 */ JUtility::TColor field_0x128;
    /* 0x12C */ JUtility::TColor field_0x12C;
    /* 0x130 */ JUtility::TColor field_0x130;
    /* 0x134 */ JUtility::TColor field_0x134;
    /* 0x138 */ JUtility::TColor mWhite;
    /* 0x13C */ JUtility::TColor mBlack;
    /* 0x140 */ s16 field_0x140;
    /* 0x142 */ s16 field_0x142;
    /* 0x144 */ u8 field_0x144;
    /* 0x145 */ u8 field_0x145;
};  // Size: 0x148

#endif /* J2DWINDOW_H */
