#include "Z2AudioLib/Z2Calc/Z2Calc.h"
#include "msl_c/math.h"

extern f32 lbl_80455828;
extern f32 lbl_8045582C;
extern f32 lbl_80455830;
extern f32 lbl_80455834;

// s_is_oRandom_initialized
extern s8 lbl_80451330;
// Z2AudioLib::oRandom$401
extern JMath::TRandom_fast_ lbl_80451334;

float Z2Calc::linearTransform(float param1, float param2, float param3, float param4, float param5,
                              bool param6) {
    float temp;

    temp = param4 + (param1 - param2) * ((param5 - param4) / (param3 - param2));

    if (param6) {
        return temp;
    } else if (param4 < param5) {
        if (temp > param5) {
            return param5;
        } else if (temp < param4) {
            return param4;
        } else {
            return temp;
        }
    } else if (temp > param4) {
        return param4;
    } else if (temp < param5) {
        return param5;
    } else {
        return temp;
    }
}

float Z2Calc::getParamByExp(float f1, float f2, float f3, float f4, float f5, float f6,
                            Z2Calc::CurveSign sign) {
    float out;
    if (sign == Z2Calc::CURVE_SIGN_1) {
        float tmp = exp(Z2Calc::linearTransform(f1, f2, f3, /* 0.0 */ lbl_80455828, f4, true));
        out = Z2Calc::linearTransform(tmp, /* 1.0 */ lbl_8045582C, exp(f4), f5, f6, true);
    } else if (sign == Z2Calc::CURVE_SIGN_0) {
        float tmp = exp(Z2Calc::linearTransform(f1, f2, f3, f4, /* 0.0 */ lbl_80455828, true));
        out = Z2Calc::linearTransform(tmp, exp(f4), /* 1.0 */ lbl_8045582C, f5, f6, true);
    } else {
        out = Z2Calc::linearTransform(f1, f2, f3, f5, f6, false);
    }
    if (out > f6) {
        return f6;
    }
    if (out < f5) {
        return f5;
    }
    return out;
}

float Z2Calc::getRandom(float f1, float f2, float f3) {
    float tmp = /* 2.0 */ lbl_80455830 * f3;
    float tmp2 = (/* 1.0 */ lbl_8045582C - f3) * /* -2.0 */ lbl_80455834;
    f1 *= Z2Calc::getRandom_0_1() < f3 ? tmp : tmp2;
    float tmp3 = pow(Z2Calc::getRandom_0_1(), f2);
    return tmp3 * f1;
}

float Z2Calc::getRandom_0_1(void) {
    // this is really just
    // static JMath::TRandom_fast_ lbl_80451334(0);
    if (!lbl_80451330) {
        __ct__Q25JMath13TRandom_fast_FUl(&lbl_80451334, 0);
        lbl_80451330 = true;
    }
    // this is really just lbl_80451334.get_ufloat_1()
    union {
        f32 f;
        u32 s;
    } out;
    out.s = (lbl_80451334.get() >> 9) | 0x3f800000;
    return out.f - lbl_8045582C;
}

void Z2Calc::FNoise1f::setParam(float param1, float param2, float param3) {
    this->unk0 = param1;
    this->unk4 = param1;
    this->unk12 = param2;
    this->unk8 = param3;
}

float Z2Calc::FNoise1f::tau(float param1) {
    float temp1;
    float temp2;

    temp1 = param1;
    temp2 = temp1 + (temp1 * temp1);

    if (temp2 > lbl_8045582C) {
        temp2 = temp2 - lbl_8045582C;

        if (temp1 < this->unk12) {
            temp2 = temp2 + this->unk12;
        }

        return temp2;
    } else if (temp1 < this->unk12) {
        temp2 = temp2 + this->unk12;
    }
    return temp2;
}

float Z2Calc::FNoise1f::calcNoise1f(void) {
    float temp1;
    float temp2;

    temp1 = this->unk0;

    if (this->unk0 < this->unk4) {
        this->unk0 = temp1 + this->unk8;

        if (this->unk0 < this->unk4) {
            return this->unk0;
        }
    } else {
        this->unk0 = temp1 - this->unk8;

        if (this->unk0 > this->unk4) {
            return this->unk0;
        }
    }
    this->unk0 = this->unk4;
    temp2 = tau(this->unk0);
    this->unk4 = temp2;

    return this->unk0;
}
