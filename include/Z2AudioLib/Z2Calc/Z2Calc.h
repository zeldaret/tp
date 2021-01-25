#ifndef Z2CALC_H_
#define Z2CALC_H_

#include "JSystem/JMath/random.h"
#include "global.h"

namespace Z2Calc {
enum CurveSign {
    CURVE_SIGN_0 = 0,
    CURVE_SIGN_1 = 1,
};

struct FNoise1f {
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
}  // namespace Z2Calc

extern "C" {
void calcNoise1f__Q26Z2Calc8FNoise1fFv(void);
void getRandom__6Z2CalcFfff(void);
void getRandom_0_1__6Z2CalcFv(void);
void getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign(void);
void linearTransform__6Z2CalcFfffffb(void);
void setParam__Q26Z2Calc8FNoise1fFfff(void);

void Z2Calc_NS_linearTransform(void);
}

#endif  // Z2CALC_H_
