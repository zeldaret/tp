#ifndef D_A_SWHIT0_H
#define D_A_SWHIT0_H

#include "f_op/f_op_actor_mng.h"

class daSwhit0_c : public fopAc_ac_c {
public:
    /* 80485FF8 */ void getSwNo();
    /* 80486004 */ void getSwNo2();
    /* 80486010 */ void getEvNo();
    /* 8048602C */ void getTimer();
    /* 80486048 */ void getType();
    /* 80486064 */ void makeEventId();
    /* 804860EC */ void CreateHeap();
    /* 80486214 */ void CreateInit();
    /* 804863B0 */ void create();
    /* 8048668C */ void checkHit();
    /* 80486704 */ void setCombackTimer();
    /* 80486788 */ void endCombackTimer();
    /* 80486800 */ void onSwitch();
    /* 80486858 */ void offSwitch();
    /* 804868A8 */ void DemoProc();
    /* 804869C4 */ void orderEvent();
    /* 80486ABC */ void actionOffWait();
    /* 80486BC4 */ void actionToOnReady();
    /* 80486C28 */ void actionToOnOrder();
    /* 80486CE4 */ void actionToOnDemo();
    /* 80486D88 */ void actionToOnDemo2();
    /* 80486EC4 */ void actionSwWait();
    /* 80486FC0 */ void actionOnWait();
    /* 804870E0 */ void setDrawMtx();

private:
    /* 0x568 */ u8 field_0x568[0x75c - 0x568];
};
STATIC_ASSERT(sizeof(daSwhit0_c) == 0x75c);


#endif /* D_A_SWHIT0_H */
