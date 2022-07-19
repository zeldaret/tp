#ifndef J2DORTHOGRAPH_H
#define J2DORTHOGRAPH_H

#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "dolphin/types.h"

class J2DOrthoGraph : public J2DGrafContext {
public:
    /* 802E9670 */ J2DOrthoGraph();
    /* 802E96D0 */ J2DOrthoGraph(f32, f32, f32, f32, f32, f32);
    /* 802E980C */ void setOrtho(JGeometry::TBox2<f32> const&, f32, f32);
    /* 802E987C */ void scissorBounds(JGeometry::TBox2<f32>*, JGeometry::TBox2<f32> const*);

    /* 8000B118 */ virtual ~J2DOrthoGraph() {}
    /* 802E97B4 */ virtual void setPort();
    /* 802E9C88 */ virtual s32 getGrafType() const { return 1; }
    /* 802E9840 */ virtual void setLookat();

    f32 getWidthPower() const { return mBounds.getWidth() / mOrtho.getWidth(); }
    f32 getHeightPower() const { return mBounds.getHeight() / mOrtho.getHeight(); }

    void setOrtho(f32 param_0, f32 param_1, f32 param_2, f32 param_3, f32 param_4, f32 param_5) {
        JGeometry::TBox2<f32> ortho(param_0, param_1, param_0 + param_2, param_1 + param_3);
        setOrtho(ortho, param_4, param_5);
    }

private:
    /* 0xBC */ JGeometry::TBox2<f32> mOrtho;
    /* 0xCC */ f32 mNear;
    /* 0xD0 */ f32 mFar;
};

void J2DDrawLine(f32 param_0, f32 param_1, f32 param_2, f32 param_3, JUtility::TColor color,
                 int line_width);
void J2DFillBox(f32 param_0, f32 param_1, f32 param_2, f32 param_3, JUtility::TColor color);
void J2DFillBox(JGeometry::TBox2<f32> const& param_0, JUtility::TColor param_1);
void J2DDrawFrame(f32 param_0, f32 param_1, f32 param_2, f32 param_3, JUtility::TColor param_4,
                  u8 param_5);
void J2DDrawFrame(JGeometry::TBox2<f32> const& param_0, JUtility::TColor param_1, u8 param_2);

#endif /* J2DORTHOGRAPH_H */
