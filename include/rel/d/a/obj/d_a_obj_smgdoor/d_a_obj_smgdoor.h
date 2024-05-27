#ifndef D_A_OBJ_SMGDOOR_H
#define D_A_OBJ_SMGDOOR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSmgDoor_c
 * @brief Sacred Meadow Grove Door
 *
 * @details
 *
 */
class daObjSmgDoor_c : public fopAc_ac_c {
public:
    /* 80CDBB5C */ void initBaseMtx();
    /* 80CDBBEC */ void setBaseMtx();
    /* 80CDBD38 */ void Create();
    /* 80CDBE1C */ void CreateHeap();
    /* 80CDBED4 */ void create1st();
    /* 80CDBFA4 */ void Execute(f32 (**)[3][4]);
    /* 80CDBFF0 */ void getDemoAction();
    /* 80CDC038 */ void demoProc();
    /* 80CDC248 */ void openInit();
    /* 80CDC378 */ void openProc();
    /* 80CDC4AC */ void setGoal();
    /* 80CDC548 */ void setPos();
    /* 80CDC610 */ void sceneChange();
    /* 80CDC65C */ void event_proc_call();
    /* 80CDC700 */ void actionWaitEvent();
    /* 80CDC790 */ void actionEvent();
    /* 80CDC7F4 */ void actionDead();
    /* 80CDC7F8 */ void checkArea();
    /* 80CDC974 */ void checkOpen();
    /* 80CDCA00 */ void Draw();
    /* 80CDCAC4 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5f4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSmgDoor_c) == 0x5f4);


#endif /* D_A_OBJ_SMGDOOR_H */
