#ifndef D_A_OBJ_KLIFT00_H
#define D_A_OBJ_KLIFT00_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjKLift00_c
 * @brief Water Wheel Lift?
 *
 * @details
 *
 */
class daObjKLift00_c : public fopAc_ac_c {
public:
    struct ChainPos {
        /* 8058C338 */ ~ChainPos();
        /* 8058C374 */ ChainPos();
    };

    /* 8058B02C */ void create1st();
    /* 8058B0D0 */ void setMtx();
    /* 8058B4B0 */ void rideActor(fopAc_ac_c*);
    /* 8058B5EC */ void CreateHeap();
    /* 8058B77C */ void Create();
    /* 8058B97C */ void Execute(f32 (**)[3][4]);
    /* 8058BEEC */ void Draw();
    /* 8058C014 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x1160 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKLift00_c) == 0x1160);


#endif /* D_A_OBJ_KLIFT00_H */
