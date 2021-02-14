#ifndef F_F_AP_GAME_H_
#define F_F_AP_GAME_H_

#include "dolphin/types.h"

void fapGm_After(void);
void fapGm_Execute(void);
void fapGm_Create(void);

class fapGm_HIO_c {
public:
    fapGm_HIO_c(void);
    u32 vtable;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
    float field_0xc;
    float field_0x10;
    u8 field_0x14;
    u8 field_0x15;
    u8 field_0x16;
    u8 field_0x17;
    u8 field_0x18;
    u8 field_0x19;
    u8 field_0x1a;
    u8 field_0x1b;
    u8 field_0x1c;
    u8 field_0x1d;
    u8 field_0x1e;
    u8 field_0x1f;
    u8 field_0x20;
    u8 field_0x21;
    u8 field_0x22;
    u8 field_0x23;
    u8 field_0x24;
    u8 field_0x25;
    u8 field_0x26;
    u8 field_0x27;
    u8 field_0x28;
    u8 field_0x29;
    u8 field_0x2a;
    u8 field_0x2b;
    u8 field_0x2c;
    u8 field_0x2d;
    u8 field_0x2e;
    u8 field_0x2f;
    u8 field_0x30;
    u8 field_0x31;
    u8 field_0x32;
    u8 field_0x33;
    u16 field_0x34;
    u16 field_0x36;
    u16 field_0x38;
    u16 field_0x3a;
    u16 field_0x3c;
    u8 field_0x3e;
    u8 field_0x3f;
};

#endif