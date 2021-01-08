#ifndef __D_STAGE_H_
#define __D_STAGE_H_
#include "global.h"

#pragma pack(push,1)
class dStage_roomControl_c {
public:
private:
    u8 field_0x0[164];
};
#pragma pack(pop)

#pragma pack(push,1)
class dStage_stageDt_c {
public:
private:
    void* vtable;
};
#pragma pack(pop)

#pragma pack(push,1)
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
#pragma pack(pop)

#pragma pack(push,1)
class dStage_startStage_c {
    public:
    private:
    /* 0x0 */ char mStage[8];
    /* 0x8 */ s16 mPoint;
    /* 0xA */ s8 mRoomNo;
    /* 0xB */ s8 mLayer;
    /* 0xC */ s8 mDarkArea;
};
#pragma pack(pop)

#endif