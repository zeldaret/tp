#ifndef J2DGRAFCONTEXT_H
#define J2DGRAFCONTEXT_H

#include "JSystem/JGeometry.h"
#include "JSystem/JUtility.h"
#include "dolphin/types.h"

struct J2DGrafContext {
    /* 802E8B08 */ J2DGrafContext(f32, f32, f32, f32);
    /* 802E8BB4 */ void setPort();
    /* 802E8C44 */ void setup2D();
    /* 802E8E20 */ void setScissor();
    /* 802E90C0 */ void scissor(JGeometry::TBox2<f32> const&);
    /* 802E90E4 */ void place(JGeometry::TBox2<f32> const&);
    /* 802E961C */ void place(f32, f32, f32, f32);
    /* 802E9118 */ void setColor(JUtility::TColor, JUtility::TColor, JUtility::TColor,
                                 JUtility::TColor);
    /* 802E9234 */ void setLineWidth(u8);
    /* 802E9260 */ void fillBox(JGeometry::TBox2<f32> const&);
    /* 802E9368 */ void drawFrame(JGeometry::TBox2<f32> const&);
    /* 802E9488 */ void line(JGeometry::TVec2<f32>, JGeometry::TVec2<f32>);
    /* 802E9564 */ void lineTo(JGeometry::TVec2<f32>);
    /* 802E95D4 */ ~J2DGrafContext();
    /* 802E9664 */ bool getGrafType() const;
    /* 802E966C */ void setLookat();
};

#endif /* J2DGRAFCONTEXT_H */
