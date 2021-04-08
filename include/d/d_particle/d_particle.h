#ifndef D_PARTICLE_H_
#define D_PARTICLE_H_

#include "SComponent/c_xyz.h"
#include "dolphin/types.h"

class JPAEmitterCallBack {
public:
    virtual void draw();
};

class dPa_levelEcallBack : JPAEmitterCallBack {};

class dPa_hermiteEcallBack_c : dPa_levelEcallBack {
private:
    /* 0x04 */ float mRate;
    /* 0x08 */ int mMaxCnt;
    /* 0x0C */ cXyz* field_0xc;
    /* 0x10 */ cXyz* field_0x10;
    /* 0x14 */ cXyz* field_0x14;
};

#endif