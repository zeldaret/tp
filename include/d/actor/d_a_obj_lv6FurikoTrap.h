#ifndef D_A_OBJ_LV6FURIKOTRAP_H
#define D_A_OBJ_LV6FURIKOTRAP_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv6FurikoTrap_c
 * @brief Temple of Time Pendulum Trap
 *
 * @details
 *
 */
class daLv6FurikoTrap_c : public dBgS_MoveBgActor {
public:
    /* 80C72510 */ void setBaseMtx();
    /* 80C72598 */ int CreateHeap();
    /* 80C72604 */ int create();
    /* 80C729B4 */ int Execute(Mtx**);
    /* 80C72CA8 */ void move();
    /* 80C72D24 */ void init_modeMove();
    /* 80C72D38 */ void modeMove();
    /* 80C72EE0 */ int Draw();
    /* 80C72F94 */ int Delete();

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcSph mCcDSph;

private:
    /* 0x5A0  */ request_of_phase_process_class mPhase;
    /* 0x5A8  */ J3DModel* mModel;
    /* 0x5AC  */ u8 mMode;
    /* 0x5AE  */ s16 mAngleIncrement;
    /* 0x5B0  */ s16 mAngle;
    /* 0x5B2  */ u8 mTimer;
    /* 0x5B4  */ dCcD_Stts mCcStts;
    /* 0x5F0  */ dCcD_Sph mCcSph1[13];
    /* 0x15C8 */ dCcD_Sph mCcSph2[6];
};

STATIC_ASSERT(sizeof(daLv6FurikoTrap_c) == 0x1d18);

class daLv6FurikoTrap_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C7248C */ daLv6FurikoTrap_HIO_c();
#if DEBUG
    void genMessage(JORMContext*);
#endif
    /* 0x8  */ f32 mIntervalSeconds;
    /* 0xC  */ f32 mMaxAngle;
    /* 0x10 */ u8 unk10;
};

#endif /* D_A_OBJ_LV6FURIKOTRAP_H */
