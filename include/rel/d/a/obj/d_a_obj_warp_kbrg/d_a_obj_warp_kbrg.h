#ifndef D_A_OBJ_WARP_KBRG_H
#define D_A_OBJ_WARP_KBRG_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjWarpKBrg_c
 * @brief Warp K Bridge (Kakariko Gorge Bridge?)
 *
 * @details
 *
 */
class daObjWarpKBrg_c : public fopAc_ac_c {
public:
    /* 80D26FA8 */ void initBaseMtx();
    /* 80D27008 */ void setBaseMtx();
    /* 80D270C4 */ void Create();
    /* 80D27300 */ void CreateHeap();
    /* 80D276B4 */ void create1st();
    /* 80D2781C */ void Execute(f32 (**)[3][4]);
    /* 80D27890 */ void event_proc_call();
    /* 80D27A38 */ void orderZHintEvent();
    /* 80D27B2C */ void actionWait();
    /* 80D27C6C */ void actionOrderEvent();
    /* 80D27E08 */ void actionWaitWarpEvent();
    /* 80D27ED0 */ void actionOrderATalkEvent();
    /* 80D28040 */ void actionTalkEvent();
    /* 80D280CC */ void actionWarpEvent();
    /* 80D28144 */ void actionDead();
    /* 80D28148 */ void actionWait2();
    /* 80D2814C */ void actionOrderEvent2();
    /* 80D281E4 */ void actionWarpEvent2();
    /* 80D28248 */ void actionDead2();
    /* 80D2824C */ void demoProc();
    /* 80D28A50 */ void calcObjPos();
    /* 80D28AE0 */ void checkTalkDistance();
    /* 80D28B7C */ void calcMidnaWaitPos();
    /* 80D28C10 */ void setBindEffect();
    /* 80D28CDC */ void followBindEffect();
    /* 80D28D4C */ void setSrcEffect();
    /* 80D28E9C */ void setDstEffect();
    /* 80D28FEC */ void followSrcEffect();
    /* 80D290A8 */ void followDstEffect();
    /* 80D29158 */ void endSrcEffect();
    /* 80D291FC */ void endDstEffect();
    /* 80D292A0 */ void Draw();
    /* 80D29448 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x69c - 0x568];
};
STATIC_ASSERT(sizeof(daObjWarpKBrg_c) == 0x69c);


#endif /* D_A_OBJ_WARP_KBRG_H */
