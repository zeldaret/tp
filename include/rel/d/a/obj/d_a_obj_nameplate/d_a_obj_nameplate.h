#ifndef D_A_OBJ_NAMEPLATE_H
#define D_A_OBJ_NAMEPLATE_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjNameplate_c
 * @brief Ordon Village Nameplate
 *
 * @details
 *
 */
class daObjNameplate_c : public fopAc_ac_c {
public:
    /* 80594098 */ void create_init();
    /* 8059415C */ void initBaseMtx();
    /* 8059417C */ void setBaseMtx();
    /* 80594248 */ void initCcSphere();
    /* 805942B8 */ void setCcSphere();
    /* 8059434C */ void calcAngle();
    /* 805945CC */ void calcSpring();
    /* 80594754 */ void checkHitAngle();
    /* 805947F8 */ void messageProc();

    static u8 const M_attr[32];

private:
    /* 0x568 */ u8 field_0x568[0x780 - 0x568];
};

STATIC_ASSERT(sizeof(daObjNameplate_c) == 0x780);

struct daObj {
public:
    /* 80037900 */ void HitSeStart(cXyz const*, int, dCcD_GObjInf const*, u32);
};


#endif /* D_A_OBJ_NAMEPLATE_H */
