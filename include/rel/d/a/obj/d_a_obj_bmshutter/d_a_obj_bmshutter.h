#ifndef D_A_OBJ_BMSHUTTER_H
#define D_A_OBJ_BMSHUTTER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjBmSh_c
 * @brief Boomerang Shutter
 *
 * @details
 *
 */
class daObjBmSh_c : public fopAc_ac_c {
public:
    /* 80BB9A58 */ void initBaseMtx();
    /* 80BB9AE4 */ void setBaseMtx();
    /* 80BB9B84 */ void Create();
    /* 80BB9C50 */ void CreateHeap();
    /* 80BB9CC0 */ void create();
    /* 80BB9DB4 */ void Execute(f32 (**)[3][4]);
    /* 80BB9F34 */ void checkSw();
    /* 80BB9FBC */ void checkAnySw();
    /* 80BBA044 */ void checkMySw();
    /* 80BBA080 */ void event_proc_call();
    /* 80BBA13C */ void actionWait();
    /* 80BBA1A4 */ void actionOrderEvent();
    /* 80BBA20C */ void actionEvent();
    /* 80BBA268 */ void actionDead();
    /* 80BBA26C */ void mode_proc_call();
    /* 80BBA394 */ void modeWait();
    /* 80BBA5B4 */ void modeMove();
    /* 80BBA640 */ void modeEnd();
    /* 80BBA644 */ void Draw();
    /* 80BBA6E8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5dc - 0x568];
};

STATIC_ASSERT(sizeof(daObjBmSh_c) == 0x5dc);


#endif /* D_A_OBJ_BMSHUTTER_H */
