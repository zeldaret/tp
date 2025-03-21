#ifndef D_A_OBJ_BMSHUTTER_H
#define D_A_OBJ_BMSHUTTER_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjBmSh_c
 * @brief Boomerang Shutter
 *
 * @details
 *
 */
class daObjBmSh_c : public dBgS_MoveBgActor {
public:
    /* 80BB9A58 */ void initBaseMtx();
    /* 80BB9AE4 */ void setBaseMtx();
    /* 80BB9B84 */ int Create();
    /* 80BB9C50 */ int CreateHeap();
    /* 80BB9CC0 */ int create();
    /* 80BB9DB4 */ int Execute(f32 (**)[3][4]);
    /* 80BB9F34 */ int checkSw();
    /* 80BB9FBC */ int checkAnySw();
    /* 80BBA044 */ int checkMySw();
    /* 80BBA080 */ void event_proc_call();
    /* 80BBA13C */ void actionWait();
    /* 80BBA1A4 */ void actionOrderEvent();
    /* 80BBA20C */ void actionEvent();
    /* 80BBA268 */ void actionDead();
    /* 80BBA26C */ void mode_proc_call();
    /* 80BBA394 */ void modeWait();
    /* 80BBA5B4 */ void modeMove();
    /* 80BBA640 */ void modeEnd();
    /* 80BBA644 */ int Draw();
    /* 80BBA6E8 */ int Delete();

    inline u32 getEvNo() { return fopAcM_GetParamBit(this, 16, 8); }
    inline u32 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    inline u32 getSwbit2() { return fopAcM_GetParamBit(this, 8, 8); }
    inline int getSwbit3() { return this->mHomeX & 0xff; }

    inline u32 getSwNum() { return fopAcM_GetParamBit(this, 24, 4); }
    inline u32 getShtrNum() { return fopAcM_GetParamBit(this, 28, 2); }

    inline void setAction(u8 action) { this->mAction = action; }
    inline void setMoveMode(u8 mode) { this->mMoveMode = mode; }

    inline bool checkCommandDemoAccrpt() { return eventInfo.mCommand == dEvtCmd_INDEMO_e; }

private:
    request_of_phase_process_class mPhase;
    J3DModel* mModel;

    s16 mEventIdx;
    u8 mEvent;

    u8 mAction;
    u8 mMoveMode;

    u8 mCurrentlyAnySw;

    // 2 bytes of padding

    f32 mHeight;
    f32 mShakeIntensity;

    csXyz mRotation;

    // 2 bytes of padding

    int tickCounter;

    u16 mHomeX;
    u16 mHomeZ;
    bool mIsInitialized;
    u8 mCurrentlyMySw;

    // 2 bytes of padding

    cXyz mSoundPosition;
};

STATIC_ASSERT(sizeof(daObjBmSh_c) == 0x5dc);

enum daObjBmSh_Action {
    daObjBmSh_Action_WAIT_e = 0,
    daObjBmSh_Action_ORDER_EVENT_e = 1,
    daObjBmSh_Action_EVENT_e = 2,
    daObjBmSh_Action_DEAD_e = 3,
};

enum daObjBmSh_MoveMode {
    daObjBmSh_MoveMode_WAIT_e = 0,
    daObjBmSh_MoveMode_MOVE_e = 1,
    daObjBmSh_MoveMode_END_e = 2,
};

#endif /* D_A_OBJ_BMSHUTTER_H */
