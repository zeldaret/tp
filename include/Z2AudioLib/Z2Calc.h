#ifndef Z2CALC_H
#define Z2CALC_H

#include "dolphin/types.h"
#include "m_Do/m_Do_lib.h"

namespace Z2Calc {
// hack for f_op_actor, having this present breaks its weak func ordering
static const Vec cNullVec = {0.0f, 0.0f, 0.0f};

enum CurveSign {
    CURVE_SIGN_0 = 0,
    CURVE_SIGN_1 = 1,
    CURVE_SIGN_2 = 2,
};

struct FNoise1f {
    FNoise1f(float param_0 = 0.1f, float param_1 = 0.0f, float param_2 = 0.01f) {
        unk0 = param_0;
        unk4 = param_0;
        unk8 = param_2;
        unk12 = param_1;
    }
    void setParam(float, float, float);
    float tau(float);
    float calcNoise1f();

    float unk0;
    float unk4;
    float unk8;
    float unk12;
};

float linearTransform(float, float, float, float, float, bool);
float getParamByExp(float, float, float, float, float, float, Z2Calc::CurveSign);
float getRandom(float, float, float);
float getRandom_0_1(void);

extern f32 cEqualCSlope;
extern f32 cEqualPSlope;
}  // namespace Z2Calc

#endif /* Z2CALC_H */
