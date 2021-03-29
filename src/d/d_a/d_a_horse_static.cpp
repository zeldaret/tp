#include "d/d_a/d_a_horse_static/d_a_horse_static.h"
#include "Z2AudioLib/Z2Creature/Z2Creature.h"
#include "global.h"

extern "C" {
void checkDownDamage__10e_wb_classFv(void);
}

u8 e_wb_class::checkWait(void) {
    return unk1460 == 0x2A;
}

void e_wb_class::setPlayerRideNow(void) {
    unk1680 = 0x67;
    unk1460 = 0;
    unk1726 |= 3;
}

void e_wb_class::setPlayerRide(void) {
    unk1680 = 0x65;
    unk1460 = 0;
    unk1726 |= 3;

    mZ2Ride.setLinkRiding(true);
}

void e_wb_class::getOff(void) {
    if (checkDownDamage() == 0 || (unk1680 == 0x67)) {
        unk1680 = 0;
    } else {
        unk1682 = 0;
    }
    unk1460 = 0;
    unk1726 &= 0xfffc;
    mZ2Ride.setLinkRiding(false);
}

int e_wb_class::checkDownDamage() {
    u8 temp1;
    s16 temp2;

    temp1 = 0;
    temp2 = unk1680;
    if ((temp2 != 0x65) && (temp2 != 0x66) && (temp2 != 0x15)) {
        temp1 = 1;
    }
    return (u8)temp1;
}

u8 e_wb_class::checkNormalRideMode(void) const {
    u8 temp;

    temp = 0;
    if ((unk1680 != 0x66) || (unk1460 < 1)) {
        temp = 1;
    }

    return (u8)temp;
}

void e_wb_class::setRunRideMode(void) {
    if (unk1680 == 0x65) {
        unk1460 = 0;
        unk1680 = 0x15;
        unk1682 = 0x65;
    }
}