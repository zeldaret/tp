#ifndef D_A_DSHUTTER_H
#define D_A_DSHUTTER_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-unsorted
 * @class daDsh_c
 * @brief Death Sword Shutter Gate
 *
 * @details
 *
*/

class daDsh_c : public dBgS_MoveBgActor {
public:
    #if DEBUG
    class Hio_c : public mDoHIO_entry_c {
    public:
        void genMessage(JORMContext*);

        /* 0x08 */ f32 open_acceleration;
        /* 0x0C */ f32 open_spd;
        /* 0x10 */ f32 open_bound_max_spd;
        /* 0x14 */ f32 open_bound_rate;
        /* 0x18 */ f32 close_acceleration;
        /* 0x1C */ f32 close_spd;
        /* 0x20 */ f32 close_bound_max_spd;
        /* 0x24 */ f32 close_bound_rate;
        /* 0x28 */ s16 open_vibration_time;
        /* 0x2A */ s16 close_vibration_time;
    };

    static Hio_c mHIO;
    #endif

    class action_c {
    public:
        typedef int (daDsh_c::*actionFunc)();

        action_c(actionFunc i_initFunc, actionFunc i_execFunc) {
            mInitFunc = i_initFunc;
            mExecuteFunc = i_execFunc;
        }

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
    /* 80467640 */ virtual int Execute(Mtx**);
    /* 8046759C */ virtual int Draw();

    inline int create();

    u8 getType() { return (fopAcM_GetParam(this) >> 8) & 0xF; }
    u8 getSw() { return fopAcM_GetParam(this) & 0xFF; }

    s16 getOpenTiltTime() { 
        #if DEBUG
        return mHIO.open_vibration_time;
        #else
        return 0;
        #endif
    }
    f32 getOpenAccel() { 
        #if DEBUG
        return mHIO.open_acceleration;
        #else
        return OPEN_ACCEL;
        #endif
    }
    f32 getOpenSpeed() {
        #if DEBUG
        return mHIO.open_spd;
        #else
        return OPEN_SPEED;
        #endif
    }
    f32 getOpenBoundSpeed() {
        #if DEBUG
        return mHIO.open_bound_max_spd;
        #else
        return OPEN_BOUND_SPEED;
        #endif
    }
    f32 getOpenBoundRatio() {
        #if DEBUG
        return mHIO.open_bound_rate;
        #else
        return OPEN_BOUND_RATIO;
        #endif
    }

    s16 getCloseTiltTime() {
        #if DEBUG
        return mHIO.close_vibration_time;
        #else
        return 0;
        #endif
    }
    f32 getCloseAccel() {
        #if DEBUG
        return mHIO.close_acceleration;
        #else
        return CLOSE_ACCEL;
        #endif
    }
    f32 getCloseSpeed() {
        #if DEBUG
        return mHIO.close_spd;
        #else
        return CLOSE_SPEED;
        #endif
    }
    f32 getCloseBoundSpeed() {
        #if DEBUG
        return mHIO.close_bound_max_spd;
        #else
        return CLOSE_BOUND_SPEED;
        #endif
    }
    f32 getCloseBoundRatio() {
        #if DEBUG
        return mHIO.close_bound_rate;
        #else
        return CLOSE_BOUND_RATIO;
        #endif
    }

    static f32 const OPEN_SIZE;
    static f32 const OPEN_ACCEL;
    static f32 const OPEN_SPEED;
    static f32 const OPEN_BOUND_SPEED;
    static f32 const OPEN_BOUND_RATIO;
    static f32 const CLOSE_ACCEL;
    static f32 const CLOSE_SPEED;
    static f32 const CLOSE_BOUND_SPEED;
    static f32 const CLOSE_BOUND_RATIO;

    /* 0x5A0 */ dComIfG_resLoader_c mResLoader;
    /* 0x5B0 */ J3DModel* mpModel;
    /* 0x5B4 */ action_c* mpAction;
    /* 0x5B8 */ s16 mTiltTime;
    /* 0x5BA */ u8 mSw;
    /* 0x5BB */ u8 mType;
};

#endif /* D_A_DSHUTTER_H */
