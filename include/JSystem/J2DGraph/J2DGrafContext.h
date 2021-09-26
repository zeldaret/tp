#ifndef J2DGRAFCONTEXT_H
#define J2DGRAFCONTEXT_H

#include "JSystem/JGeometry.h"
#include "JSystem/JUtility/TColor.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

class J2DGrafContext {
public:
    /* 802E8B08 */ J2DGrafContext(f32, f32, f32, f32);
    /* 802E90C0 */ void scissor(JGeometry::TBox2<f32> const&);
    /* 802E9118 */ void setColor(JUtility::TColor, JUtility::TColor, JUtility::TColor,
                                 JUtility::TColor);
    /* 802E9234 */ void setLineWidth(u8);
    /* 802E9260 */ void fillBox(JGeometry::TBox2<f32> const&);
    /* 802E9368 */ void drawFrame(JGeometry::TBox2<f32> const&);
    /* 802E9488 */ void line(JGeometry::TVec2<f32>, JGeometry::TVec2<f32>);
    /* 802E9564 */ void lineTo(JGeometry::TVec2<f32>);

    /* 802E95D4 */ virtual ~J2DGrafContext();
    /* 802E90E4 */ virtual void place(JGeometry::TBox2<f32> const&);
    /* 802E961C */ virtual void place(f32, f32, f32, f32);
    /* 802E8BB4 */ virtual void setPort();
    /* 802E8C44 */ virtual void setup2D();
    /* 802E8E20 */ virtual void setScissor();
    /* 802E9664 */ virtual bool getGrafType() const;
    /* 802E966C */ virtual void setLookat();

private:
    /* 0x04 */ JGeometry::TBox2<f32> mBounds;
    /* 0x14 */ JGeometry::TBox2<f32> mScissorBounds;
    /* 0x24 */ JUtility::TColor field_0x24;
    /* 0x28 */ JUtility::TColor field_0x28;
    /* 0x2C */ JUtility::TColor field_0x2c;
    /* 0x30 */ JUtility::TColor field_0x30;
    /* 0x34 */ u8 mLineWidth;
    /* 0x38 */ JGeometry::TVec2<f32> field_0x14;
    /* 0x40 */ u8 field_0x40[0x40];
    /* 0x80 */ Mtx mPosMtx;
    /* 0xB0 */ u8 field_0xb0;
    /* 0xB1 */ u8 field_0xb1;
    /* 0xB2 */ u8 field_0xb2;
    /* 0xB3 */ u8 mLineBlendMode;
    /* 0xB4 */ u8 mLineSrcBlendFactor;
    /* 0xB5 */ u8 mLineDstBlendFactor;
    /* 0xB6 */ u8 mBoxBlendMode;
    /* 0xB7 */ u8 mBoxSrcBlendFactor;
    /* 0xB8 */ u8 mBoxDstBlendFactor;
};

#endif /* J2DGRAFCONTEXT_H */
