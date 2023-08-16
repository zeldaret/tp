/**
 * d_spline_path.cpp
 * dolzel2 - Spline Path Management
 */

#include "d/d_spline_path.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void Init__14d2DBSplinePathFll();
extern "C" void Step__14d2DBSplinePathFv();
extern "C" void Calc__14d2DBSplinePathFP4cXyz();
extern "C" void Calc__14d2DBSplinePathFPf();
extern "C" void Spot__14d2DBSplinePathFPff();
extern "C" void Init__10dPathCurveFP5dPath();
extern "C" void bSpline2__10dPathCurveFf();

//
// Declarations:
//

/* ############################################################################################## */
/* 80452BC8-80452BD0 0011C8 0008+00 4/4 0/0 0/0 .sdata2          @3632 */
SECTION_SDATA2 static f64 lit_3632 = 4503601774854144.0 /* cast s32 to float */;

/* 80097878-80097904 0921B8 008C+00 0/0 7/7 0/0 .text            Init__14d2DBSplinePathFll */
#ifdef NONMATCHING
// regalloc
void d2DBSplinePath::Init(s32 param_0, s32 param_1) {
    s32 tmp;
    s32 tmp2;

    field_0x00 = 0;
    field_0x04 = param_0;
    field_0x08 = 1;
    field_0x0c = param_1;

    if (field_0x0c != 0) {
        tmp2 = field_0x0c - 1;
    }

    field_0x04 < 2 ? tmp = 1 : tmp = field_0x04 - 2;
    field_0x10 = (f32)tmp / (f32)tmp2;

    field_0x2c = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void d2DBSplinePath::Init(s32 param_0, s32 param_1) {
    nofralloc
#include "asm/d/d_spline_path/Init__14d2DBSplinePathFll.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80452BD0-80452BD4 0011D0 0004+00 3/3 0/0 0/0 .sdata2          @3684 */
SECTION_SDATA2 static f32 lit_3684 = 1.0f;

/* 80452BD4-80452BD8 0011D4 0004+00 3/3 0/0 0/0 .sdata2          @3685 */
SECTION_SDATA2 static f32 lit_3685 = 0.5f;

/* 80097904-80097A6C 092244 0168+00 0/0 5/5 0/0 .text            Step__14d2DBSplinePathFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void d2DBSplinePath::Step() {
    nofralloc
#include "asm/d/d_spline_path/Step__14d2DBSplinePathFv.s"
}
#pragma pop

/* 80097A6C-80097B20 0923AC 00B4+00 0/0 1/1 0/0 .text            Calc__14d2DBSplinePathFP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void d2DBSplinePath::Calc(cXyz* param_0) {
    nofralloc
#include "asm/d/d_spline_path/Calc__14d2DBSplinePathFP4cXyz.s"
}
#pragma pop

/* 80097B20-80097B68 092460 0048+00 0/0 5/5 0/0 .text            Calc__14d2DBSplinePathFPf */
f32 d2DBSplinePath::Calc(f32* param_0) {
    return field_0x14 * param_0[field_0x20] +
           field_0x18 * param_0[field_0x24] +
           field_0x1c * param_0[field_0x28];
}

/* 80097B68-80097C5C 0924A8 00F4+00 0/0 1/1 0/0 .text            Spot__14d2DBSplinePathFPff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void d2DBSplinePath::Spot(f32* param_0, f32 param_1) {
    nofralloc
#include "asm/d/d_spline_path/Spot__14d2DBSplinePathFPff.s"
}
#pragma pop

/* 80097C5C-80097C74 09259C 0018+00 0/0 0/0 1/1 .text            Init__10dPathCurveFP5dPath */
void dPathCurve::Init(dPath* i_path) {
    mpPath = i_path;
    field_0x00 = 1;
    field_0x04 = 0;
}

/* 80097C74-80097E8C 0925B4 0218+00 0/0 0/0 1/1 .text            bSpline2__10dPathCurveFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dPathCurve::bSpline2(f32 param_0) {
    nofralloc
#include "asm/d/d_spline_path/bSpline2__10dPathCurveFf.s"
}
#pragma pop
