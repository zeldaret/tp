#ifndef D_A_OBJ_STOPPER_H
#define D_A_OBJ_STOPPER_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct daObjStopper_c : public fopAc_ac_c {
    enum ActionType {
        ACTION_WAIT,
        ACTION_WAIT_ORDER_EVENT,
        ACTION_ORDER_EVENT,
        ACTION_EVENT,
        ACTION_DEAD,
        ACTION_WAIT_CLOSE,
        ACTION_CLOSE,
        ACTION_CLOSE_INIT,
    };

    /* 80CECF34 */ void initBaseMtx();
    /* 80CED024 */ void setBaseMtx();
    /* 80CED0B8 */ void Create();
    /* 80CED20C */ void CreateHeap();
    /* 80CED258 */ void create();
    /* 80CED6BC */ void Execute(f32 (**)[3][4]);
    /* 80CED708 */ void action();
    /* 80CED824 */ void actionWait();
    /* 80CEDA24 */ void actionWaitOrderEvent();
    /* 80CEDAAC */ void actionOrderEvent();
    /* 80CEDB2C */ void actionEvent();
    /* 80CEE048 */ void actionDead();
    /* 80CEE04C */ void actionWaitClose();
    /* 80CEE05C */ void actionCloseInit();
    /* 80CEE0E0 */ void actionClose();
    /* 80CEE148 */ void hint_action1();
    /* 80CEE5D0 */ void hint_action2();
    /* 80CEEA28 */ void hint_action3();
    /* 80CEECFC */ void Draw();
    /* 80CEED60 */ void Delete();

    void setOpen() { mAction = ACTION_WAIT_CLOSE; }
    void setAction(u8 action) { mAction = action; }
    void startClose() { setAction(ACTION_CLOSE_INIT); }

private:
    /* 0x568 */ u8 field_0x568[0x93c - 0x568];
    /* 0x93C */ u8 mAction;
    /* 0x93D */ u8 field_0x93d[0xa00 - 0x93d];
};
STATIC_ASSERT(sizeof(daObjStopper_c) == 0xA00);

#endif /* D_A_OBJ_STOPPER_H */
