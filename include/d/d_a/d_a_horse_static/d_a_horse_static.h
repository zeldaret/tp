#ifndef D_A_HORSE_STATIC_H_
#define D_A_HORSE_STATIC_H_

#include "Z2AudioLib/Z2Creature/Z2Creature.h"

class e_wb_class {
public:
    u8 checkWait(void);
    void setPlayerRideNow(void);
    void setPlayerRide(void);
    void getOff(void);
    int checkDownDamage(void);
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

#endif