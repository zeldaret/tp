#ifndef D_A_TAG_SPRING_H
#define D_A_TAG_SPRING_H

#include "d/d_com_inf_game.h"

class daTagSpring_c : public fopAc_ac_c {
public:
    /* 805A6A58 */ void initBaseMtx();
    /* 805A6A78 */ void setBaseMtx();
    /* 805A6AD0 */ int Create();
    /* 805A6AF4 */ int create();
    /* 805A6B5C */ int execute();
    /* 805A6C84 */ u8 checkArea();
    /* 805A6DFC */ int _delete();

    u32 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }

    /* 0x568 */ u8 mTimer;
};  // Size: 0x56C

#endif /* D_A_TAG_SPRING_H */
