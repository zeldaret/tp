#ifndef D_A_NPC_SHOP0_H
#define D_A_NPC_SHOP0_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Shop0_c
 * @brief Shop 0?
 *
 * @details
 *
 */
class daNpc_Shop0_c : public fopAc_ac_c {
public:
    /* 80AEA7F8 */ ~daNpc_Shop0_c();
    /* 80AEAA10 */ void create();
    /* 80AEAE9C */ void createHeap();
    /* 80AEAF8C */ void destroy();
    /* 80AEAFC0 */ void execute();
    /* 80AEB078 */ void draw();
    /* 80AEB190 */ void getResName();
    /* 80AEB1A0 */ void getParam();
    /* 80AEB1C8 */ void getFlowNodeNum();
    /* 80AEB1D0 */ void isDelete();
    /* 80AEB22C */ void init();
    /* 80AEB32C */ void getTrnsfrmAnmP(int, char**);
    /* 80AEB3A8 */ void setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 80AEB45C */ void setCollision();
    /* 80AEB4C8 */ void checkEvent();
    /* 80AEB5E8 */ void orderEvent();
    /* 80AEB634 */ void setMtx();
    /* 80AEB6DC */ void setRoomInf();
    /* 80AEB780 */ void cut_alert(int, int);
    /* 80AEB7F0 */ void chkProcess(int (daNpc_Shop0_c::*)(void*));
    /* 80AEB824 */ void setProcess(int (daNpc_Shop0_c::*)(void*), void*, int);
    /* 80AEB920 */ void wait(void*);
    /* 80AEB9BC */ void talk(void*);

    static u8 const mCylDat[68];

private:
    /* 0x568 */ u8 field_0x568[0x9ec - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Shop0_c) == 0x9ec);

class daNpc_Shop0_Param_c {
public:
    /* 80AEBB14 */ ~daNpc_Shop0_Param_c();

    static u8 const mParam[12];
};


#endif /* D_A_NPC_SHOP0_H */
