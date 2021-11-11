#ifndef D_A_CROD_H
#define D_A_CROD_H

#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "dolphin/types.h"

class daCrod_c {
public:
    /* 80141A94 */ void setControllActorData();
    /* 804A2E38 */ void createHeap();
    /* 804A2F18 */ void create();
    /* 804A3304 */ ~daCrod_c();
    /* 804A34B0 */ void setRoomInfo();
    /* 804A34B4 */ void setMatrix();
    /* 804A3500 */ void posMove();
    /* 804A3580 */ void setBckAnm(u16);
    /* 804A35FC */ void setReturn();
    /* 804A365C */ void setLightPower();
    /* 804A36D8 */ void execute();
    /* 804A3FD4 */ void draw();

    static fopAc_ac_c* makeIronBallDummy(fopAc_ac_c* p_actor) {
        return (fopAc_ac_c*)fopAcM_fastCreate(0x2F4, 6, &p_actor->mCurrent.mPosition, fopAcM_GetRoomNo(p_actor), NULL, NULL, -1, NULL, NULL);
    }
};

#endif /* D_A_CROD_H */
