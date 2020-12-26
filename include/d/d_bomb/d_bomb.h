#include "f/f_op/f_op_actor.h"
#include "global.h"

class dBomb_c {
public:
    bool checkStateCarry();
    bool checkFlowerBombWait(fopAc_ac_c* param_1);
    bool checkWaterBomb(fopAc_ac_c* param_1);
    bool checkInsectBombMove(fopAc_ac_c* param_1);

private:
    u8 p1[0x8];
    s16 unk_1;
    u8 p2[0xA4];
    u32 unk_2;
    u8 p3[0x3E8];
    u32 unk_3;
    u8 p4[0x6AA];
    u32 unk_4;
};