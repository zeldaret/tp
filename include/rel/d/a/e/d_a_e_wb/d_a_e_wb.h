#ifndef D_A_E_WB_H
#define D_A_E_WB_H

#include "dolphin/types.h"
#include "rel/d/a/d_a_horse/d_a_horse.h"
#include "Z2AudioLib/Z2Creature.h"

class e_wb_class : public fopAc_ac_c {
public:
    BOOL checkWait();
    void setPlayerRideNow();
    void setPlayerRide();
    void getOff();
    BOOL checkDownDamage();
    u8 checkNormalRideMode() const;
    void setRunRideMode();

private:
    /* 0x0568 */ u8 field_0x568[0x4C];
    /* 0x05B4 */ s16 field_0x5b4;
    /* 0x05B6 */ u8 unk1462[9];
    /* 0x05BF */ bool field_0x5bf;
    /* 0x05C0 */ u8 field_0x5c0[0x20];
    /* 0x05E0 */ void* field_0x5e0;
    /* 0x05E4 */ u8 field_0x5e4[8];
    /* 0x05EC */ Z2CreatureRide mZ2Ride;
    /* 0x0688 */ u8 unk1673[6];
    /* 0x068E */ s16 field_0x68e;
    /* 0x0690 */ s16 field_0x690;
    /* 0x0692 */ u16 field_0x692;
    /* 0x0694 */ u8 unk1684[0xc];
    /* 0x06A0 */ s16 field_0x6a0;
    /* 0x06A2 */ u8 field_0x6a2[0xc];
    /* 0x06AE */ s16 field_0x6ae;
    /* 0x06B0 */ s16 field_0x6b0;
    /* 0x06B2 */ u8 field_0x6b2[0xc];
    /* 0x06BE */ u16 field_0x6be;
    /* 0x06C0 */ u8 field_0x6c0[0xdd];
    /* 0x079D */ u8 field_0x79d;
    /* 0x079E */ u8 field_0x79e[0x4e];
    /* 0x07EC */ dBgS_Acch field_0x7ec;
    /* 0x09C4 */ cXyz field_0x9c4;
    /* 0x09D0 */ u8 field_0x9d0[0xa5f];
    /* 0x142F */ u8 field_0x142f;
    /* 0x1430 */ u8 field_0x1430;
    /* 0x1432 */ s16 field_0x1432;
    /* 0x1434 */ u8 field_0x1434[0x250];
    /* 0x1684 */ f32 field_0x1684;
    /* 0x1688 */ u8 field_0x1688[0x16];
    /* 0x169E */ s16 field_0x169e;
};

#endif /* D_A_E_WB_H */
