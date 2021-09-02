#ifndef J2DORTHOGRAPH_H
#define J2DORTHOGRAPH_H

#include "dolphin/types.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"

class J2DOrthoGraph : public J2DGrafContext {
public:
    /* 802E9670 */ J2DOrthoGraph();
    /* 802E96D0 */ J2DOrthoGraph(f32, f32, f32, f32, f32, f32);
    /* 802E980C */ void setOrtho(JGeometry::TBox2<f32> const&, f32, f32);
    /* 802E987C */ void scissorBounds(JGeometry::TBox2<f32>*, JGeometry::TBox2<f32> const*);
    
    /* 8000B118 */ virtual ~J2DOrthoGraph();
    /* 802E97B4 */ virtual void setPort();
    /* 802E9C88 */ virtual bool getGrafType() const;
    /* 802E9840 */ virtual void setLookat();

private:
    /* 0xBC */ JGeometry::TBox2<f32> mOrtho;
    /* 0xCC */ f32 mNear;
    /* 0xD0 */ f32 mFar;
};

#endif /* J2DORTHOGRAPH_H */
