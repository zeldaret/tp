#ifndef __D_STAGE_H_
#define __D_STAGE_H_
#include "global.h"

class dStage_roomControl_c {
public:
private:
    u8 field_0x0[164];
};

class dStage_stageDt_c {
public:
private:
    void* vtable;
};

class dStage_nextStage_c {
public:
private:
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
    u8 field_0xc;
    u8 field_0xd;
    u8 enabled;
    u8 wipe;
    u8 wipe_speed;
};

#endif