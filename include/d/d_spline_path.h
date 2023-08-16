#ifndef D_D_SPLINE_PATH_H
#define D_D_SPLINE_PATH_H

#include "SSystem/SComponent/c_xyz.h"

struct dPath;

struct dPathCurve {
    /* 80097C5C */ void Init(dPath*);
    /* 80097C74 */ void bSpline2(f32);

    /* 0x00 */ int field_0x00;
    /* 0x00 */ int field_0x04;
    /* 0x08 */ dPath* mpPath;
};

class d2DBSplinePath {
public:
    /* 80097878 */ void Init(s32, s32);
    /* 80097904 */ void Step();
    /* 80097B20 */ f32 Calc(f32*);
    /* 80097A6C */ void Calc(cXyz*);
    /* 80097B68 */ void Spot(f32*, f32);

    /* 0x00 */ s32 field_0x00;
    /* 0x04 */ s32 field_0x04;
    /* 0x08 */ s32 field_0x08;
    /* 0x0C */ s32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ int field_0x24;
    /* 0x28 */ int field_0x28;
    /* 0x2C */ int field_0x2c;
    /* 0x30 */ void* field_0x30;
};

#endif /* D_D_SPLINE_PATH_H */
