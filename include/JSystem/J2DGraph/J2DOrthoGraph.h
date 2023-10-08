#ifndef J2DORTHOGRAPH_H
#define J2DORTHOGRAPH_H

#include "JSystem/J2DGraph/J2DGrafContext.h"

class J2DOrthoGraph : public J2DGrafContext {
public:
    /* 802E9670 */ J2DOrthoGraph();
    /* 802E96D0 */ J2DOrthoGraph(f32 x, f32 y, f32 width, f32 height, f32 far, f32 near);
    /* 802E980C */ void setOrtho(JGeometry::TBox2<f32> const& bounds, f32 far, f32 near);
    /* 802E987C */ void scissorBounds(JGeometry::TBox2<f32>*, JGeometry::TBox2<f32> const*);

    /* 8000B118 */ virtual ~J2DOrthoGraph() {}
    /* 802E97B4 */ virtual void setPort();
    /* 802E9C88 */ virtual s32 getGrafType() const { return 1; }
    /* 802E9840 */ virtual void setLookat();

    f32 getWidthPower() const { return mBounds.getWidth() / mOrtho.getWidth(); }
    f32 getHeightPower() const { return mBounds.getHeight() / mOrtho.getHeight(); }

    void setOrtho(f32 x, f32 y, f32 width, f32 height, f32 far, f32 near) {
        JGeometry::TBox2<f32> ortho(x, y, x + width, y + height);
        setOrtho(ortho, far, near);
    }

private:
    /* 0xBC */ JGeometry::TBox2<f32> mOrtho;
    /* 0xCC */ f32 mNear;
    /* 0xD0 */ f32 mFar;
};

void J2DDrawLine(f32 x1, f32 y1, f32 x2, f32 y2, JUtility::TColor color,
                 int line_width);
void J2DFillBox(f32 x, f32 y, f32 width, f32 height, JUtility::TColor color);
void J2DFillBox(JGeometry::TBox2<f32> const& box, JUtility::TColor color);
void J2DDrawFrame(f32 x, f32 y, f32 width, f32 height, JUtility::TColor color, u8 line_width);
void J2DDrawFrame(JGeometry::TBox2<f32> const& box, JUtility::TColor color, u8 line_width);

#endif /* J2DORTHOGRAPH_H */
