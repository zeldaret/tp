#ifndef D_A_OBJ_LV4RAILWALL_H
#define D_A_OBJ_LV4RAILWALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv4Wall_c
 * @brief Arbiters Grounds Spinner Rail Wall (Stallord Arena)
 *
 * @details
 *
 */
class daObjLv4Wall_c : public fopAc_ac_c {
public:
    /* 80C60AC4 */ void initBaseMtx();
    /* 80C60B00 */ void setBaseMtx();
    /* 80C60B7C */ void Create();
    /* 80C60CD0 */ void CreateHeap();
    /* 80C60D40 */ void create1st();
    /* 80C60DC4 */ void Execute(f32 (**)[3][4]);
    /* 80C60E90 */ void action();
    /* 80C60F4C */ void mode_init_wait();
    /* 80C60F58 */ void mode_wait();
    /* 80C61004 */ void mode_init_move();
    /* 80C61068 */ void mode_move();
    /* 80C613C0 */ void mode_init_dead();
    /* 80C613CC */ void mode_dead();
    /* 80C613D0 */ void eventStart();
    /* 80C6143C */ void Draw();
    /* 80C614E0 */ void Delete();
    /* 80C61940 */ ~daObjLv4Wall_c();

private:
    /* 0x568 */ u8 field_0x568[0x95c - 0x568];
};

STATIC_ASSERT(sizeof(daObjLv4Wall_c) == 0x95c);


#endif /* D_A_OBJ_LV4RAILWALL_H */
