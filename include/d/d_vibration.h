#ifndef D_D_VIBRATION_H
#define D_D_VIBRATION_H

#include "d/save/d_save.h"
#include "dolphin/types.h"

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
    class {
    public:
        class {
        public:
            /* 0x00 */ u32 field_0x0; 
            /* 0x04 */ int field_0x4;
            /* 0x08 */ s32 field_0x8;
            /* 0x0C */ s32 field_0xc;
            /* 0x10 */ s32 field_0x10;
            /* 0x14 */ int field_0x14;
            /* 0x18 */ cXyz field_0x18;
            /* 0x24 */ u32 field_0x24;
        } mShock, mQuake;
    } /* 0x00 */ field_0x0;
    /* 0x50 */ u32 field_0x50;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ s32 field_0x58;
    /* 0x5C */ s32 field_0x5c;
    /* 0x60 */ u32 field_0x60;
    /* 0x64 */ u32 field_0x64;
    /* 0x68 */ u32 field_0x68;
    /* 0x6C */ u32 field_0x6c;
    /* 0x70 */ u32 field_0x70;
    /* 0x74 */ u32 field_0x74;
    /* 0x78 */ u32 field_0x78;
    /* 0x7C */ u32 field_0x7c;
    /* 0x80 */ u32 field_0x80;
    /* 0x84 */ u32 field_0x84;
    /* 0x88 */ s32 field_0x88;
    /* 0x8C */ u32 field_0x8c;
};  // Size: 0x90

#endif /* D_D_VIBRATION_H */
