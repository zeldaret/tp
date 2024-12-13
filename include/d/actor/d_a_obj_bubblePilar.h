#ifndef D_A_OBJ_BUBBLEPILAR_H
#define D_A_OBJ_BUBBLEPILAR_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daBubbPilar_c
 * @brief Bubble Pillar
 *
 * @details
 *
 */
class daBubbPilar_c : public dBgS_MoveBgActor {
public:
    typedef void (daBubbPilar_c::*modeProc)();

    enum Mode {
        MODE_WAIT,
        MODE_EFF_ON,
    };

    /* 80BC3460 */ void setBaseMtx();
    /* 80BC3518 */ int CreateHeap();
    /* 80BC35D0 */ int create();
    /* 80BC3934 */ int Execute(Mtx**);
    /* 80BC3AB8 */ void initModeWait();
    /* 80BC3AC4 */ void modeWait();
    /* 80BC3C74 */ void initModeEffOn();
    /* 80BC3C98 */ void modeEffOn();
    /* 80BC3DB0 */ int Draw();
    /* 80BC3E8C */ int Delete();

    u8 getArg0() { return fopAcM_GetParamBit(this, 8, 4); }
    u8 getSw() { return fopAcM_GetParamBit(this, 0, 8); }

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModels[2];
    /* 0x5B0 */ dCcD_Stts mStts;
    /* 0x5EC */ dCcD_Cyl mCyl;
    /* 0x728 */ u8 field_0x728;
    /* 0x729 */ u8 mMode;
    /* 0x72A */ u8 mSw;
    /* 0x72B */ u8 mArg0;
    /* 0x72C */ u8 mIsSw;
    /* 0x72D */ u8 mModelMode;
    /* 0x72E */ s16 field_0x72e;
    /* 0x730 */ int mEmitterIds[3];
    /* 0x73C */ int mEmitterId;
    /* 0x740 */ JPABaseEmitter* mEmitters[4];
};

STATIC_ASSERT(sizeof(daBubbPilar_c) == 0x750);

class daBubbPilar_HIO_c : public mDoHIO_entry_c {
public:
    /* 80BC33EC */ daBubbPilar_HIO_c();
    /* 80BC3F90 */ virtual ~daBubbPilar_HIO_c() {};

    u8 field_0x4;
    u8 field_0x5;
};


#endif /* D_A_OBJ_BUBBLEPILAR_H */
