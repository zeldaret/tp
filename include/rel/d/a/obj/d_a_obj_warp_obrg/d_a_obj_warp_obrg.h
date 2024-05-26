#ifndef D_A_OBJ_WARP_OBRG_H
#define D_A_OBJ_WARP_OBRG_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjWarpOBrg_c : public fopAc_ac_c {
public:
    /* 80D299B8 */ void initBaseMtx();
    /* 80D29A00 */ void setBaseMtx();
    /* 80D29ACC */ void Create();
    /* 80D29BB4 */ void CreateHeap();
    /* 80D29E7C */ void create1st();
    /* 80D2A008 */ void Execute(f32 (**)[3][4]);
    /* 80D2A04C */ void event_proc_call();
    /* 80D2A194 */ void actionWait();
    /* 80D2A4CC */ void actionOrderEvent();
    /* 80D2A740 */ void actionTalkEvent();
    /* 80D2A7C4 */ void actionWarpEvent();
    /* 80D2A93C */ void actionOrderEventDst();
    /* 80D2A9E4 */ void actionWarpEventDst();
    /* 80D2AA30 */ void actionDead();
    /* 80D2AA34 */ void demoProc();
    /* 80D2B3BC */ void checkTalkDistance();
    /* 80D2B534 */ void calcMidnaWaitPos();
    /* 80D2B5C8 */ void Draw();
    /* 80D2B6C0 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x640 - 0x568];
};
STATIC_ASSERT(sizeof(daObjWarpOBrg_c) == 0x640);


#endif /* D_A_OBJ_WARP_OBRG_H */
