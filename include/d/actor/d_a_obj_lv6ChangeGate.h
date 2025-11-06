#ifndef D_A_OBJ_LV6CHANGEGATE_H
#define D_A_OBJ_LV6CHANGEGATE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daLv6ChangeGate_c
 * @brief Temple of Time Change Block?
 *
 * @details
 *
 */
class daLv6ChangeGate_c : public dBgS_MoveBgActor, public request_of_phase_process_class, public dEvLib_callback_c {
public:
    daLv6ChangeGate_c() : dEvLib_callback_c(this) {}

    /* 80C70D38 */ void setBaseMtx();
    /* 80C70E40 */ int create();
    /* 80C712A8 */ u8 isSwitch();
    /* 80C71494 */ void moveGate();
    /* 80C715F4 */ void init_modeWait();
    /* 80C71600 */ void modeWait();
    /* 80C71604 */ void init_modeSlideRight();
    /* 80C716B4 */ void modeSlideRight();
    /* 80C7183C */ void init_modeSlideLeft();
    /* 80C718EC */ void modeSlideLeft();
    /* 80C71A74 */ void init_modeBreak();
    /* 80C71AF8 */ void modeBreak();

    /* 80C70DD4 */ virtual int CreateHeap();
    /* 80C712F4 */ virtual int Execute(Mtx**);
    /* 80C71D40 */ virtual int Draw();
    /* 80C71DE4 */ virtual int Delete();

    /* 80C72034 */ virtual ~daLv6ChangeGate_c() {}
    /* 80C715BC */ virtual bool eventStart();

    int getEventID() { return fopAcM_GetParamBit(this, 24, 8); }
    int getWaitTime() { return fopAcM_GetParamBit(this, 16, 8); }
    int getSwState() { return fopAcM_GetParamBit(this, 12, 4); }
    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }
    int getSw2() { return shape_angle.x & 0xFF; }

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

    /* 0x05B8 */ request_of_phase_process_class mPhase;
    /* 0x05C0 */ J3DModel* mpModel;
    /* 0x05C4 */ u8 mMode;
    /* 0x05C8 */ dCcD_Stts mCcStts;
    /* 0x0604 */ dCcD_Cyl mCcCyls[12];
    /* 0x14D4 */ u8 mSwState;
    /* 0x14D5 */ u8 mSwbit;
    /* 0x14D6 */ u8 mIsSwitch;
    /* 0x14D7 */ u8 mTimer;
    /* 0x14D8 */ f32 mMoveTransX;
};

STATIC_ASSERT(sizeof(daLv6ChangeGate_c) == 0x14dc);


#endif /* D_A_OBJ_LV6CHANGEGATE_H */
