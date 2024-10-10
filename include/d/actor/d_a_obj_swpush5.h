#ifndef D_A_OBJ_SWPUSH5_H
#define D_A_OBJ_SWPUSH5_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSw5_c
 * @brief Push Switch 5
 *
 * @details Mutli-purpose heavy switch actor. (Iron Boots switch)
 *
 */
class daObjSw5_c : public fopAc_ac_c {
public:
    /* 8059B804 */ void initBaseMtx();
    /* 8059B88C */ void setBaseMtx();
    /* 8059B920 */ void Create();
    /* 8059BA1C */ void CreateHeap();
    /* 8059BB1C */ void create();
    /* 8059BBD4 */ void Execute(f32 (**)[3][4]);
    /* 8059BC70 */ void setting_ride_flag();
    /* 8059BD24 */ bool checkPushable();
    /* 8059BD2C */ void event_proc_call();
    /* 8059BE18 */ void actionPauseNoneInit();
    /* 8059BE24 */ void actionPauseNone();
    /* 8059BE28 */ void actionPauseOrderInit();
    /* 8059BE80 */ void actionPauseOrder();
    /* 8059BEB4 */ void actionPauseInit();
    /* 8059BEE0 */ void actionPause();
    /* 8059BF48 */ void actionWait();
    /* 8059BF4C */ void actionOrder();
    /* 8059BF50 */ void actionEvent();
    /* 8059BF54 */ void calc_top_pos();
    /* 8059BFE4 */ void mode_proc_call();
    /* 8059C0A0 */ void modeWaitLowerInit();
    /* 8059C0C8 */ void modeWaitLower();
    /* 8059C23C */ void modeLowerInit();
    /* 8059C2D0 */ void modeLower();
    /* 8059C364 */ void modeWaitUpperInit();
    /* 8059C370 */ void modeWaitUpper();
    /* 8059C3C4 */ void modeUpperInit();
    /* 8059C454 */ void modeUpper();
    /* 8059C4BC */ void Draw();
    /* 8059C560 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x600 - 0x568];
};

STATIC_ASSERT(sizeof(daObjSw5_c) == 0x600);


#endif /* D_A_OBJ_SWPUSH5_H */
