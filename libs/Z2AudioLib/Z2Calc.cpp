//#include "Z2AudioLib/Z2Calc/Z2calc.h"
#include "global.h"

// 1 instruction off
#ifdef NONMATCHING
float Z2Calc::linearTransform(float param1, float param2, float param3, float param4, float param5, bool param6){
    float temp;
    
    temp = param4 + (param1 - param2) * ((param5 - param4) / (param3 - param2));

    if(param6){
        return temp;
    }
    else if(param4 < param5){
        if(temp > param5){
            return param5;
        }
        else if(temp >= param4){ // something wrong here idk
            return temp;
        }
        else{
            return param4;
        }
    }
    else if(temp > param4){
        return param4;
    }
    else if(temp < param5){
        return param5;
    }
    else{
        return temp;
    }
}
#else
asm float Z2Calc::linearTransform(float param1, float param2, float param3, float param4, float param5, bool param6) {
    nofralloc
    #include "Z2AudioLib/Z2Calc/asm/func_802A968C.s"
}
#endif

asm float Z2Calc::getParamByExp(float, float, float, float, float, float, Z2Calc::CurveSign) {
    nofralloc
    #include "Z2AudioLib/Z2Calc/asm/func_802A96F4.s"
}

asm float Z2Calc::getRandom(float, float, float) {
    nofralloc
    #include "Z2AudioLib/Z2Calc/asm/func_802A9814.s"
}

asm float Z2Calc::getRandom_0_1(void) {
    nofralloc
    #include "Z2AudioLib/Z2Calc/asm/func_802A98D4.s"
}


void Z2Calc::FNoise1f::setParam(float param1, float param2, float param3){
    this->unk0 = param1;
    this->unk4 = param1;
    this->unk12 = param2;
    this->unk8 = param3;
}

float Z2Calc::FNoise1f::tau(float param1){
    float temp1;
    float temp2;

    temp1 = param1;
    temp2 = temp1 + (temp1 * temp1);

    if(temp2 > lbl_8045582C){
        temp2 = temp2 - lbl_8045582C;
        
        if(temp1 < this->unk12){
            temp2 = temp2 + this->unk12;
        }

        return temp2;
    }
    else if(temp1 < this->unk12){
        temp2 = temp2 + this->unk12;
    }
    return temp2;
}

float Z2Calc::FNoise1f::calcNoise1f(void){
    float temp1;
    float temp2;

    temp1 = this->unk0;

    if(this->unk0 < this->unk4){
        this->unk0 = temp1 + this->unk8;

        if(this->unk0 < this->unk4){
            return this->unk0;
        }
    }
    else{
        this->unk0 = temp1 - this->unk8;
        
        if(this->unk0 > this->unk4){
            return this->unk0;
        }
    }
    this->unk0 = this->unk4;
    temp2 = tau(this->unk0);
    this->unk4 = temp2;

    return this->unk0;
}