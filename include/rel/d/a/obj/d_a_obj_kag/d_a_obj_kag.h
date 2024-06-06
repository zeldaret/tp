#ifndef D_A_OBJ_KAG_H
#define D_A_OBJ_KAG_H

#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjKAG_c
 * @brief Insect - Dayfly
 *
 * @details
 *
 */
class daObjKAG_c : public dInsect_c {
public:
    /* 80C2E434 */ void setAction(void (daObjKAG_c::*)());
    /* 80C2E7A0 */ void Kag_Bgcheck(cXyz*, csXyz*, cXyz*);
    /* 80C2EA40 */ void fly();
    /* 80C2F764 */ void wait();
    /* 80C2F8C4 */ void walk();
    /* 80C2FD94 */ void bin_wait();
    /* 80C2FF10 */ void bin_action();
    /* 80C30070 */ void hook();
    /* 80C30274 */ void boomerang();
    /* 80C303C4 */ void action();
    /* 80C30424 */ void checkGroundPos();
    /* 80C30498 */ void hit_check();
    /* 80C3054C */ void execute();
    /* 80C306EC */ void _delete();
    /* 80C30754 */ void setBaseMtx();
    /* 80C308F0 */ void create();
    /* 80C30E54 */ void kag_setParticle();

private:
    /* 0x590 */ u8 field_0x568[0x860 - 0x590];
};

STATIC_ASSERT(sizeof(daObjKAG_c) == 0x860);

class daObj_KagHIO_c {
public:
    /* 80C2E40C */ daObj_KagHIO_c();
    /* 80C31060 */ ~daObj_KagHIO_c();
};

#endif /* D_A_OBJ_KAG_H */
