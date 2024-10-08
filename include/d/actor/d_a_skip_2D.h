#ifndef D_A_SKIP_2D_H
#define D_A_SKIP_2D_H

#include "d/d_com_inf_game.h"

class dMeterButton_c;

/**
 * @ingroup actors-unsorted
 * @class daSkip2D_c
 * @brief ???
 *
 * @details
 *
 */
class daSkip2D_c : public fopAc_ac_c {
public:
    daSkip2D_c() {
        initiate();
    }

    /* 80D4D498 */ int createHeap();
    /* 80D4D4F4 */ int create();
    /* 80D4D588 */ int destroy();
    /* 80D4D590 */ int draw();
    /* 80D4D5D0 */ int execute();
    /* 80D4D5D8 */ void initiate();

    /* 80D4D674 */ virtual ~daSkip2D_c() {}

    /* 0x56C */ u32 field_0x56c;
    /* 0x570 */ dMeterButton_c* mpButton;
    /* 0x574 */ u8 field_0x574;
};  // Size: 0x578

#endif /* D_A_SKIP_2D_H */
