#ifndef D_A_DSHUTTER_H
#define D_A_DSHUTTER_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daDsh_c : public dBgS_MoveBgActor {
public:
    class action_c {
    public:
        typedef int (daDsh_c::*actionFunc)();

        /* action_c(actionFunc i_initFunc, actionFunc i_execFunc) {
            mInitFunc = i_initFunc;
            mExecuteFunc = i_execFunc;
        } */

        actionFunc& getInit() { return mInitFunc; }
        actionFunc& getExecute() { return mExecuteFunc; }

        /* 0x0 */ actionFunc mInitFunc;
        /* 0xC */ actionFunc mExecuteFunc;
    };

    /* 80467498 */ ~daDsh_c();
    /* 80467694 */ void setMtx();
    /* 80467708 */ void setAction(daDsh_c::action_c*);
    /* 8046772C */ int callInit();
    /* 8046777C */ int callExecute();
    /* 804677D4 */ int initOpenWait();
    /* 804677E4 */ int executeOpenWait();
    /* 80467840 */ int initOpen();
    /* 80467988 */ int executeOpen();
    /* 80467A64 */ int initCloseWait();
    /* 80467A80 */ int executeCloseWait();
    /* 80467ADC */ int initClose();
    /* 80467B04 */ int executeClose();

    /* 8046751C */ virtual int CreateHeap();
    /* 80467640 */ virtual int Execute(f32 (**)[3][4]);
    /* 8046759C */ virtual int Draw();

    inline int create();

    u8 getType() { return (fopAcM_GetParam(this) >> 8) & 0xF; }
    int getSw() { return fopAcM_GetParam(this) & 0xFF; }

    u8 getOpenTiltTime() { return 0; }
    f32 getOpenAccel() { return OPEN_ACCEL; }
    f32 getOpenSpeed() { return OPEN_SPEED; }
    f32 getOpenBoundSpeed() { return OPEN_BOUND_SPEED; }
    f32 getOpenBoundRatio() { return OPEN_BOUND_RATIO; }

    u8 getCloseTiltTime() { return 0; }
    f32 getCloseAccel() { return CLOSE_ACCEL; }
    f32 getCloseSpeed() { return CLOSE_SPEED; }
    f32 getCloseBoundSpeed() { return CLOSE_BOUND_SPEED; }
    f32 getCloseBoundRatio() { return CLOSE_BOUND_RATIO; }

    static f32 OPEN_SIZE;
    static f32 OPEN_ACCEL;
    static f32 OPEN_SPEED;
    static f32 OPEN_BOUND_SPEED;
    static f32 OPEN_BOUND_RATIO;
    static f32 CLOSE_ACCEL;
    static f32 CLOSE_SPEED;
    static f32 CLOSE_BOUND_SPEED;
    static f32 CLOSE_BOUND_RATIO;

    /* 0x5A0 */ dComIfG_resLoader_c mResLoader;
    /* 0x5B0 */ J3DModel* mpModel;
    /* 0x5B4 */ action_c* mpAction;
    /* 0x5B8 */ s16 mTiltTime;
    /* 0x5BA */ u8 mSw;
    /* 0x5BB */ u8 mType;
};

#endif /* D_A_DSHUTTER_H */
