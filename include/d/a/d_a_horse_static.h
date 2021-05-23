#ifndef D_A_D_A_HORSE_STATIC_H
#define D_A_D_A_HORSE_STATIC_H

#include "Z2AudioLib/Z2Creature.h"
#include "dolphin/types.h"

class e_wb_class {
public:
    BOOL checkWait(void);
    void setPlayerRideNow(void);
    void setPlayerRide(void);
    void getOff(void);
    BOOL checkDownDamage(void);
    u8 checkNormalRideMode(void) const;
    void setRunRideMode(void);

private:
    u8 unk0[0x5b4];
    s16 unk1460;
    u8 unk1462[0x36];
    Z2CreatureRide mZ2Ride;
    u8 unk1673[7];
    s16 unk1680;
    u16 unk1682;
    u8 unk1684[0x2a];
    u16 unk1726;
};

class daTagHstop_c {
    static daTagHstop_c* m_top;
};

#endif /* D_A_D_A_HORSE_STATIC_H */
