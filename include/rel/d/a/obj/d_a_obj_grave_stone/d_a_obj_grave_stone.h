#ifndef D_A_OBJ_GRAVE_STONE_H
#define D_A_OBJ_GRAVE_STONE_H

#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"
#include "d/particle/d_particle_copoly.h"

class daGraveStone_c : public dBgS_MoveBgActor {
public:
    class daObj_GrvStn_prtclMngr_c {
    public:
        /* 80C12EF0 */ ~daObj_GrvStn_prtclMngr_c() {}
        /* 80C12F2C */ daObj_GrvStn_prtclMngr_c() {}

        /* 0x00 */ bool field_0x00;
        /* 0x04 */ cXyz mPos;
        /* 0x10 */ csXyz mAngle;
        /* 0x18 */ cXyz scale;
        /* 0x24 */ dPaPo_c field_0x24;
    };  // Size: 0x5C

    /* 80C125F8 */ void setBaseMtx();
    /* 80C1266C */ void moveCalc();
    /* 80C12918 */ int setPrtcl();
    /* 80C12A38 */ void setEnvTevColor();
    /* 80C12A94 */ void setRoomNo();
    /* 80C12AD8 */ int Create();
    /* 80C12CA4 */ int CreateHeap();
    /* 80C12D1C */ cPhs__Step create();
    /* 80C13030 */ int Execute(Mtx**);
    /* 80C13078 */ int Draw();
    /* 80C1311C */ int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dBgS_ObjAcch mAcch;
    /* 0x784 */ dCcD_Stts mColStatus;
    /* 0x7C0 */ dBgS_AcchCir mAcchCir;
    /* 0x800 */ dCcD_Cyl mColCyl;
    /* 0x93C */ cBgS_GndChk mGndChk;
    /* 0x978 */ daObj_GrvStn_prtclMngr_c mPrtclMngr[4];
    /* 0xAE8 */ s16 mTimer;

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl const mCcDCyl;
};

STATIC_ASSERT(sizeof(daGraveStone_c) == 0xAEC);

#endif /* D_A_OBJ_GRAVE_STONE_H */
