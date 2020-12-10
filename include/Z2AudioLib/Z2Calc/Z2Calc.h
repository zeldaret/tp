#include "global.h"

namespace Z2Calc {
struct CurveSign {
    // temp
};

class FNoise1f {
public:
    void setParam(float, float, float);
    float tau(float);
    float calcNoise1f();

private:
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