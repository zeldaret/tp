#ifndef D_A_OBJ_MIRROR_6POLE_H
#define D_A_OBJ_MIRROR_6POLE_H

#include "d/d_com_inf_game.h"

class daObjMirror6Pole_c;
typedef void (daObjMirror6Pole_c::*actionFunc)();

/**
 * @ingroup actors-objects
 * @class daObjMirror6Pole_c
 * @brief Twilight Mirror Pole
 *
 * @details
 *
 */
class daObjMirror6Pole_c : public fopAc_ac_c {
public:
    enum Mode_e {
        MODE_WAIT_e,
        MODE_DEMO_e,
        MODE_MAX_e,
    };

    /* 80C95E18 */ void initWait();
    /* 80C95E2C */ void executeWait();
    /* 80C95E88 */ void initDemo();
    /* 80C95E8C */ void executeDemo();
    /* 80C95EFC */ inline void setBaseMtx();
    inline void initBaseMtx();
    inline void create_init();
    /* 80C95F50 */ static int createHeapCallBack(fopAc_ac_c* i_this);
    /* 80C95F70 */ int CreateHeap();

    inline ~daObjMirror6Pole_c();

    inline int execute();
    inline int create();
    inline int draw();

    u8 getSwitchNo() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }

    void setAnmSpeed(f32 speed) { mpBck->setPlaySpeed(speed); }

    bool isSwitch() {
        return fopAcM_isSwitch(this, getSwitchNo()) ||
               dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361]) ||
               dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354]);
    }

    void setAction(Mode_e i_action) {
        mMode = i_action;
        mAction = ActionTable[mMode];

        callInit();
    }

    void callInit() { (this->*mAction[0])(); }

    void callExecute() { (this->*mAction[1])(); }

    static actionFunc ActionTable[][2];

private:
    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ mDoExt_bckAnm* mpBck;
    /* 0x570 */ request_of_phase_process_class mPhase;
    /* 0x578 */ actionFunc* mAction;
    /* 0x57C */ Mode_e mMode;
};

STATIC_ASSERT(sizeof(daObjMirror6Pole_c) == 0x580);

#endif /* D_A_OBJ_MIRROR_6POLE_H */
