#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "dolphin/gx/GX.h"

/* 802E9670-802E96D0 2E3FB0 0060+00 3/3 1/1 0/0 .text            __ct__13J2DOrthoGraphFv */
J2DOrthoGraph::J2DOrthoGraph() : J2DGrafContext(0, 0, 0, 0) {
    this->setLookat();
}

/* 802E96D0-802E97B4 2E4010 00E4+00 0/0 7/7 0/0 .text            __ct__13J2DOrthoGraphFffffff */
J2DOrthoGraph::J2DOrthoGraph(f32 x, f32 y, f32 width, f32 height, f32 far, f32 near)
    : J2DGrafContext(x, y, width, height) {
    mOrtho = JGeometry::TBox2<f32>(0, 0, width, height);
    mNear = -near;
    mFar = -far;
    this->setLookat();
}

/* 802E97B4-802E980C 2E40F4 0058+00 1/0 6/6 0/0 .text            setPort__13J2DOrthoGraphFv */
void J2DOrthoGraph::setPort() {
    this->J2DGrafContext::setPort();
    C_MTXOrtho(mMtx44, mOrtho.i.y, mOrtho.f.y, mOrtho.i.x, mOrtho.f.x, mNear, mFar);
    GXSetProjection(mMtx44, GX_ORTHOGRAPHIC);
}

/* 802E980C-802E9840 2E414C 0034+00 0/0 5/5 0/0 .text
 * setOrtho__13J2DOrthoGraphFRCQ29JGeometry8TBox2<f>ff          */
void J2DOrthoGraph::setOrtho(JGeometry::TBox2<f32> const& bounds, f32 far, f32 near) {
    mOrtho = bounds;
    mNear = -near;
    mFar = -far;
}

/* 802E9840-802E987C 2E4180 003C+00 1/0 0/0 0/0 .text            setLookat__13J2DOrthoGraphFv */
void J2DOrthoGraph::setLookat() {
    MTXIdentity(mPosMtx);
    GXLoadPosMtxImm(mPosMtx, 0);
}

/* 802E987C-802E9998 2E41BC 011C+00 0/0 1/1 0/0 .text
 * scissorBounds__13J2DOrthoGraphFPQ29JGeometry8TBox2<f>PCQ29JGeometry8TBox2<f> */
void J2DOrthoGraph::scissorBounds(JGeometry::TBox2<f32>* param_0,
                                  JGeometry::TBox2<f32> const* param_1) {
    f32 widthPower = this->getWidthPower();
    f32 heightPower = this->getHeightPower();
    f32 ix = mBounds.i.x >= 0 ? mBounds.i.x : 0;
    f32 iy = mBounds.i.y >= 0 ? mBounds.i.y : 0;
    f32 f0 = ix + widthPower * (param_1->i.x - mOrtho.i.x);
    f32 f2 = ix + widthPower * (param_1->f.x - mOrtho.i.x);
    f32 f1 = iy + heightPower * (param_1->i.y - mOrtho.i.y);
    f32 f3 = iy + heightPower * (param_1->f.y - mOrtho.i.y);
    param_0->set(f0, f1, f2, f3);
    param_0->intersect(mScissorBounds);
}

/* 802E9998-802E9AC4 2E42D8 012C+00 0/0 6/6 0/0 .text J2DDrawLine__FffffQ28JUtility6TColori */
void J2DDrawLine(f32 x1, f32 y1, f32 x2, f32 y2, JUtility::TColor color,
                 int line_width) {
    J2DOrthoGraph oGrph;
    oGrph.setLineWidth(line_width);
    oGrph.setColor(color);
    oGrph.moveTo(x1, y1);
    oGrph.lineTo(x2, y2);
}

/* 802E9AC4-802E9B0C 2E4404 0048+00 0/0 10/10 0/0 .text J2DFillBox__FffffQ28JUtility6TColor */
void J2DFillBox(f32 x, f32 y, f32 width, f32 height, JUtility::TColor color) {
    J2DFillBox(JGeometry::TBox2<f32>(x, y, x + width, y + height),
               color);
}

/* 802E9B0C-802E9B9C 2E444C 0090+00 1/1 0/0 0/0 .text
 * J2DFillBox__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColor       */
void J2DFillBox(JGeometry::TBox2<f32> const& box, JUtility::TColor color) {
    J2DOrthoGraph oGrph;
    oGrph.setColor(color);
    oGrph.fillBox(box);
}

/* 802E9B9C-802E9BE8 2E44DC 004C+00 0/0 5/5 0/0 .text J2DDrawFrame__FffffQ28JUtility6TColorUc */
void J2DDrawFrame(f32 x, f32 y, f32 width, f32 height, JUtility::TColor color,
                  u8 line_width) {
    J2DDrawFrame(JGeometry::TBox2<f32>(x, y, x + width, y + height),
                 color, line_width);
}

/* 802E9BE8-802E9C88 2E4528 00A0+00 1/1 0/0 0/0 .text
 * J2DDrawFrame__FRCQ29JGeometry8TBox2<f>Q28JUtility6TColorUc   */
void J2DDrawFrame(JGeometry::TBox2<f32> const& box, JUtility::TColor color, u8 line_width) {
    J2DOrthoGraph oGrph;
    oGrph.setColor(color);
    oGrph.setLineWidth(line_width);
    oGrph.drawFrame(box);
}
