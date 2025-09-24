#ifndef D_A_OBJ_SMGDOOR_H
#define D_A_OBJ_SMGDOOR_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

enum daObjSmgDoor_Action {
    ACT_WAIT = 0,
    ACT_OPEN = 1,
    ACT_SETGOAL = 2,
    ACT_SETPOS = 3,
    ACT_SCENE_CHG = 4,
    ACT_COLOR_CHG = 5
};

/**
 * @ingroup actors-objects
 * @class daObjSmgDoor_c
 * @brief Sacred Meadow Grove Door
 *
 * @details The entrance / exit door to Temple of Time
 *
 */
class daObjSmgDoor_c : public dBgS_MoveBgActor {
public:
    typedef void (daObjSmgDoor_c::*actionFunc)();
    /* 80CDBB5C */ void initBaseMtx();
    /* 80CDBBEC */ void setBaseMtx();
    /* 80CDBED4 */ int create1st();
    /* 80CDBFF0 */ int getDemoAction();
    /* 80CDC038 */ int demoProc();
    /* 80CDC248 */ int openInit();
    /* 80CDC378 */ int openProc();
    /* 80CDC4AC */ void setGoal();
    /* 80CDC548 */ void setPos();
    /* 80CDC610 */ void sceneChange();
    /* 80CDC65C */ void event_proc_call();
    /* 80CDC700 */ void actionWaitEvent();
    /* 80CDC790 */ void actionEvent();
    /* 80CDC7F4 */ void actionDead();
    /* 80CDC7F8 */ int checkArea();
    /* 80CDC974 */ int checkOpen();

    void setAction(u8 i_action) { mAction = i_action; }
    u8 getEvId() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwbit() { return fopAcM_GetParamBit(this, 20, 8); }
    u8 getType() { return fopAcM_GetParamBit(this, 8, 4); }
    u8 getNextSceneID() { return fopAcM_GetParamBit(this, 12, 8); }

    /* 80CDBD38 */ virtual int Create();
    /* 80CDBE1C */ virtual int CreateHeap();
    /* 80CDBFA4 */ virtual int Execute(Mtx**);
    /* 80CDCA00 */ virtual int Draw();
    /* 80CDCAC4 */ virtual int Delete();

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel[2];
    /* 0x5B0 */ s16 field_0x5b0;
    /* 0x5B2 */ s16 field_0x5b2;
    /* 0x5B4 */ int mStaffId;
    /* 0x5B8 */ Mtx field_0x5b8;
    /* 0x5E8 */ u8 mType;
    /* 0x5E9 */ u8 field_0x5e9;
    /* 0x5EA */ u8 mAction;
    /* 0x5EB */ u8 mToolId;
    /* 0x5EC */ s16 mEvId;
    /* 0x5EE */ s16 field_0x5ee;
    /* 0x5F0 */ s16 field_0x5f0;
    /* 0x5F2 */ u16 field_0x5f2;
};

STATIC_ASSERT(sizeof(daObjSmgDoor_c) == 0x5f4);

#endif /* D_A_OBJ_SMGDOOR_H */
