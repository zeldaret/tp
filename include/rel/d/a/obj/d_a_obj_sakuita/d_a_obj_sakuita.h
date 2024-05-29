#ifndef D_A_OBJ_SAKUITA_H
#define D_A_OBJ_SAKUITA_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSakuita_c
 * @brief Rope Plank
 *
 * @details
 *
 */
class daObjSakuita_c : public fopAc_ac_c {
public:
    /* 80CC46F8 */ void create_init();
    /* 80CC47F8 */ void initBaseMtx();
    /* 80CC4818 */ void setBaseMtx();
    /* 80CC489C */ void setPlatePos();
    /* 80CC4A98 */ void calcAngle();
    /* 80CC4C9C */ ~daObjSakuita_c();

    static u8 const M_attr[44];

private:
    /* 0x568 */ u8 field_0x568[0x750 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSakuita_c) == 0x750);


#endif /* D_A_OBJ_SAKUITA_H */
