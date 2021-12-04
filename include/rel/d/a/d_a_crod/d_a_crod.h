#ifndef D_A_CROD_H
#define D_A_CROD_H

#include "d/a/d_a_player.h"
#include "d/cc/d_cc_d.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"

class daCrod_c : public fopAc_ac_c {
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
        return (fopAc_ac_c*)fopAcM_fastCreate(0x2F4, 6, &p_actor->mCurrent.mPosition,
                                              fopAcM_GetRoomNo(p_actor), NULL, NULL, -1, NULL,
                                              NULL);
    }

    fopAc_ac_c* getControllActor() { return mControllActor.getActor(); }

    fopAc_ac_c* getCameraActor() { return mCameraActor.getActor(); }

    void setThrow() { fopAcM_SetParam(this, 2); }

private:
    /* 0x568 */ J3DModel* field_568;
    /* 0x56C */ mDoExt_bckAnm field_0x56c;
    /* 0x588 */ J3DAnmTevRegKey* field_0x588;
    /* 0x58C */ J3DAnmTextureSRTKey* field_0x58c;
    /* 0x590 */ dCcD_Stts field_0x590;
    /* 0x5CC */ dCcD_Cps field_0x5cc;
    /* 0x710 */ LIGHT_INFLUENCE field_0x710;
    /* 0x730 */ u8 field_0x730;
    /* 0x731 */ u8 field_0x731;
    /* 0x732 */ u8 field_0x732;
    /* 0x734 */ cXyz field_0x734;
    /* 0x740 */ daPy_actorKeep_c mControllActor;
    /* 0x748 */ daPy_actorKeep_c mCameraActor;
};  // Size: 0x750

#endif /* D_A_CROD_H */
