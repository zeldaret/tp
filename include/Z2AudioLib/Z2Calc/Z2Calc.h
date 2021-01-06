#include "JSystem/JMath/random.h"
#include "global.h"

namespace Z2Calc {
enum CurveSign {
    CURVE_SIGN_0 = 0,
    CURVE_SIGN_1 = 1,

    __FORCE_S32 = -0xFFFFFF,
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
