#ifndef D_A_OBJ_AMISHUTTER_H
#define D_A_OBJ_AMISHUTTER_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"
#include "f_op/f_op_actor_mng.h"


/**
 * @ingroup actors-objects
 * @class daAmiShutter_c
 * @brief Drain Gate
 *
 * @details
 *
 */

class daAmiShutter_c : public dBgS_MoveBgActor, public request_of_phase_process_class, public dEvLib_callback_c {
public:
    typedef void (daAmiShutter_c::*modeProc)();

    enum Mode {
        MODE_WAIT = 0,
        MODE_WAIT_EVENT = 1,
        MODE_CLOSE = 2,
        MODE_CLOSE_EVENT = 3,
        MODE_CLOSE_END = 4,
        MODE_OPEN = 5
    };

    daAmiShutter_c(): dEvLib_callback_c(this) {}
    /* 80BA22E8 */ ~daAmiShutter_c() {}

    /* 80BA155C */ void setBaseMtx();
    /* 80BA15E4 */ int CreateHeap();
    /* 80BA1650 */ cPhs__Step create();
    /* 80BA182C */ int Execute(Mtx**);
    /* 80BA1888 */ void moveShutter();
    /* 80BA1974 */ BOOL playerAreaCheck();
    /* 80BA1B4C */ void init_modeWait();
    /* 80BA1B58 */ void modeWait();
    /* 80BA1BCC */ void init_modeWaitEvent();
    /* 80BA1BD8 */ void modeWaitEvent();
    /* 80BA1C90 */ bool eventStart();
    /* 80BA1CB4 */ void init_modeClose();
    /* 80BA1D48 */ void modeClose();
    /* 80BA1DCC */ void init_modeCloseEvent();
    /* 80BA1E60 */ void modeCloseEvent();
    /* 80BA1EEC */ void init_modeCloseEnd();
    /* 80BA1F7C */ void modeCloseEnd();
    /* 80BA1F80 */ void init_modeOpen();
    /* 80BA2004 */ void modeOpen();
    /* 80BA2080 */ int Draw();
    /* 80BA2124 */ int Delete();

    
    u8 getType() { return fopAcM_GetParamBit(this, 16, 4); }

    u8 getSwBit() { return fopAcM_GetParamBit(this, 8, 8); }

    int getEvent() { return fopAcM_GetParamBit(this, 0, 8); }

    bool isShutterOpen() { return mOpen; }

private:
    /* 0x5b8 */ request_of_phase_process_class mPhaseReq;
    /* 0x5c0 */ J3DModel* mpModel;
    /* 0x5c4 */ u8 mMode;
    /* 0x5c5 */ u8 mType;
    /* 0x5c6 */ u8 mSwBit;
    /* 0x5c7 */ u8 mSwitch;
    /* 0x5c8 */ f32 mPosZ;
    /* 0x5cc */ cXyz mPos;
    /* 0x5d8 */ u8 mWaitTime;
    /* 0x5d9 */ bool mOpen;
};

STATIC_ASSERT(sizeof(daAmiShutter_c) == 0x5dc);

#endif /* D_A_OBJ_AMISHUTTER_H */
