#ifndef D_A_OBJ_PDOOR_H
#define D_A_OBJ_PDOOR_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjPDoor_c
 * @brief Push Door
 *
 * @details
 *
 */
class daObjPDoor_c : public dBgS_MoveBgActor {
public:
    typedef void (daObjPDoor_c::*modeFunc)();

    enum Mode {
        MODE_WAIT,
        MODE_ROTATE,
    };

    /* 80CA9F9C */ void initBaseMtx();
    /* 80CA9FD8 */ void setBaseMtx();
    /* 80CAA03C */ int Create();
    /* 80CAA14C */ int CreateHeap();
    /* 80CAA1BC */ int create1st();
    /* 80CAA23C */ int Execute(Mtx**);
    /* 80CAA290 */ void mode_proc_call();
    /* 80CAA31C */ void init_modeWait();
    /* 80CAA354 */ void modeWait();
    /* 80CAA698 */ void init_modeRotate();
    /* 80CAA6B4 */ void modeRotate();
    /* 80CAA968 */ int Draw();
    /* 80CAAA0C */ int Delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwbit2() { return fopAcM_GetParamBit(this, 8, 8); }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mModel;
    /* 0x5AC */ s8 mDoorDirection;
    /* 0x5AD */ u8 mMode;
    /* 0x5B0 */ int field_0x5b0;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6[2];
    /* 0x5B8 */ s16 field_0x5b8;
    /* 0x5BA */ s16 field_0x5ba;
    /* 0x5BC */ s16 field_0x5bc;
    /* 0x5C0 */ dBgW_Base::PushPullLabel mPushPullLabel;
};

STATIC_ASSERT(sizeof(daObjPDoor_c) == 0x5c4);


#endif /* D_A_OBJ_PDOOR_H */
