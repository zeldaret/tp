#ifndef __D_EVENT_DATA_H_
#define __D_EVENT_DATA_H_

#include "global.h"

class dEvDtFlag_c {
public:
private:
    u8 field_0x0[320];
};
#pragma pack(push, 1)
class dEvDtBase_c {
public:
private:
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
    u32 field_0xc;
    u32 field_0x10;
    u32 field_0x14;
    u32 field_0x18;
    u32 field_0x1c;
    u32 field_0x20;
};
#pragma pack(pop)

#endif