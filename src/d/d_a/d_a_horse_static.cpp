#include "d/d_a/d_a_horse_static/d_a_horse_static.h"
#include "global.h"

// 1 instruction off
#ifdef NONMATCHING
u32 e_wb_class::checkWait(void) {
    u32 temp;

    temp = (0x2a - (this->unk1460));  // missing a cntlzw
    return temp >> 5 & 0xff;
}
#else
asm u32 e_wb_class::checkWait(void) {
    nofralloc
#include "d/d_a/d_a_horse_static/asm/func_80037C7C.s"
}
#endif

void e_wb_class::setPlayerRideNow(void) {
    this->unk1680 = 0x67;
    this->unk1460 = 0;
    this->unk1726 |= 3;
}

// 2 instructions off
#ifdef NONMATCHING
void e_wb_class::setPlayerRide(void) {
    this->unk1680 = 0x65;
    this->unk1460 = 0;
    this->unk1726 |= 3;

    setLinkRiding(true);  // needs something else here
}
#else
asm void e_wb_class::setPlayerRide(void) {
    nofralloc
#include "d/d_a/d_a_horse_static/asm/func_80037CB0.s"
}
#endif

// 2 instructions off
#ifdef NONMATCHING
void e_wb_class::getOff(void) {
    int temp;

    temp = checkDownDamage();
    if ((temp == 0) || (this->unk1680 == 0x67)) {
        this->unk1680 = 0;
    } else {
        this->unk1682 = 0;
    }
    this->unk1460 = 0;
    this->unk1726 &= 0xfffc;
    setLinkRiding(false);  // same issue as above
}
#else
asm void e_wb_class::getOff(void) {
    nofralloc
#include "d/d_a/d_a_horse_static/asm/func_80037CF4.s"
}
#endif

u8 e_wb_class::checkDownDamage() {
    u8 temp1;
    s16 temp2;

    temp1 = 0;
    temp2 = this->unk1680;
    if ((temp2 != 0x65) && (temp2 != 0x66) && (temp2 != 0x15)) {
        temp1 = 1;
    }
    return (u8)temp1;
}

u8 e_wb_class::checkNormalRideMode(void) const {
    u8 temp;

    temp = 0;
    if ((this->unk1680 != 0x66) || (this->unk1460 < 1)) {
        temp = 1;
    }

    return (u8)temp;
}

void e_wb_class::setRunRideMode(void) {
    if (this->unk1680 == 0x65) {
        this->unk1460 = 0;
        this->unk1680 = 0x15;
        this->unk1682 = 0x65;
    }
}