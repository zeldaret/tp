#ifndef D_D_VIBRATION_H
#define D_D_VIBRATION_H

#include "d/save/d_save.h"
#include "dolphin/types.h"

#pragma pack(push, 1)
class dVibration_c {
public:
    /* 8006F268 */ void Run();
    /* 8006FA24 */ void StartShock(int, int, cXyz);
    /* 8006FC0C */ void StartQuake(u8 const*, int, int, cXyz);
    /* 8006FB10 */ void StartQuake(int, int, cXyz);
    /* 8006FD94 */ void StopQuake(int);
    /* 8006FE00 */ void Kill();
    /* 8006FE5C */ void CheckQuake();
    /* 8006FE84 */ void setDefault();
    /* 8006FF04 */ void Init();
    /* 8006FF38 */ void Pause();
    /* 8006FFF8 */ void Remove();

    static u8 const MS_patt[88];
    static u8 const CS_patt[88];
    static u8 const MQ_patt[80];
    static u8 const CQ_patt[80];

private:
    u32 field_0x0;
    u32 field_0x4;
    u32 field_0x8;
    u32 field_0xc;
    u32 field_0x10;
    u32 field_0x14;
    float field_0x18;
    float field_0x1c;
    float field_0x20;
    u32 field_0x24;
    u32 field_0x28;
    u32 field_0x2c;
    u32 field_0x30;
    u32 field_0x34;
    u32 field_0x38;
    u32 field_0x3c;
    float field_0x40;
    float field_0x44;
    float field_0x48;
    u32 field_0x4c;
    u32 field_0x50;
    u32 field_0x54;
    u32 field_0x58;
    u32 field_0x5c;
    u32 field_0x60;
    u32 field_0x64;
    u32 field_0x68;
    u32 field_0x6c;
    u32 field_0x70;
    u32 field_0x74;
    u32 field_0x78;
    u32 field_0x7c;
    u32 field_0x80;
    u32 field_0x84;
    u32 field_0x88;
    u32 field_0x8c;
};
#pragma pack(pop)

#endif /* D_D_VIBRATION_H */
