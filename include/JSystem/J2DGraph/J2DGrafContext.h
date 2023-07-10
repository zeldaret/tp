#ifndef J2DGRAFCONTEXT_H
#define J2DGRAFCONTEXT_H

#include "JSystem/J2DGraph/J2DMatBlock.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JUtility/TColor.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

class J2DGrafContext {
public:
    /* 802E8B08 */ J2DGrafContext(f32 x, f32 y, f32 width, f32 height);
    /* 802E90C0 */ void scissor(JGeometry::TBox2<f32> const& bounds);
    void setColor(JUtility::TColor c) { this->setColor(c, c, c, c); }
    /* 802E9118 */ void setColor(JUtility::TColor colorTL, JUtility::TColor colorTR,
                                 JUtility::TColor colorBR, JUtility::TColor colorBL);
    /* 802E9234 */ void setLineWidth(u8);
    /* 802E9260 */ void fillBox(JGeometry::TBox2<f32> const& box);
    /* 802E9368 */ void drawFrame(JGeometry::TBox2<f32> const& box);
    /* 802E9488 */ void line(JGeometry::TVec2<f32> start, JGeometry::TVec2<f32> end);
    /* 802E9564 */ void lineTo(JGeometry::TVec2<f32> pos);
    void lineTo(f32 x, f32 y) { this->lineTo(JGeometry::TVec2<f32>(x, y)); }
    void moveTo(f32 x, f32 y) { this->moveTo(JGeometry::TVec2<f32>(x, y)); }

    void moveTo(JGeometry::TVec2<f32> pos) { mPrevPos = pos; }

    /* 802E95D4 */ virtual ~J2DGrafContext() {}
    /* 802E90E4 */ virtual void place(JGeometry::TBox2<f32> const& bounds);
    /* 802E961C */ virtual void place(f32 x, f32 y, f32 width, f32 height) {
        JGeometry::TBox2<f32> box(x, y, x + width, y + height);
        this->place(box);
    }
    /* 802E8BB4 */ virtual void setPort();
    /* 802E8C44 */ virtual void setup2D();
    /* 802E8E20 */ virtual void setScissor();
    /* 802E9664 */ virtual s32 getGrafType() const { return 0; }
    /* 802E966C */ virtual void setLookat() {}

public:
    /* 0x04 */ JGeometry::TBox2<f32> mBounds;
    /* 0x14 */ JGeometry::TBox2<f32> mScissorBounds;
    /* 0x24 */ JUtility::TColor mColorTL;
    /* 0x28 */ JUtility::TColor mColorTR;
    /* 0x2C */ JUtility::TColor mColorBR;
    /* 0x30 */ JUtility::TColor mColorBL;
    /* 0x34 */ u8 mLineWidth;
    /* 0x38 */ JGeometry::TVec2<f32> mPrevPos;
    /* 0x40 */ Mtx44 mMtx44;
    /* 0x80 */ Mtx mPosMtx;
    /* 0xB0 */ J2DBlendInfo field_0xb0;
    /* 0xB3 */ J2DBlendInfo mLinePart;
    /* 0xB6 */ J2DBlendInfo mBoxPart;
};

#endif /* J2DGRAFCONTEXT_H */
