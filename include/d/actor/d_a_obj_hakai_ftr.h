#ifndef D_A_OBJ_HAKAI_FTR_H
#define D_A_OBJ_HAKAI_FTR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjHFtr_c
 * @brief Destruction Furniture
 *
 * @details
 *
 */
class daObjHFtr_c : public fopAc_ac_c {
public:
    /* 80C174B8 */ daObjHFtr_c();
    /* 80C17778 */ ~daObjHFtr_c();
    /* 80C17874 */ void createHeap();
    /* 80C179B0 */ void create();
    /* 80C17AC0 */ void Delete();
    /* 80C17B30 */ void draw();
    /* 80C17BD4 */ void execute();
    /* 80C17CD0 */ void init();
    /* 80C17E10 */ void setModelMtx();
    /* 80C17E74 */ void chkHit();
    /* 80C17EDC */ void callEmt();

    static u8 const s_CcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x860 - 0x568];
};

STATIC_ASSERT(sizeof(daObjHFtr_c) == 0x860);


#endif /* D_A_OBJ_HAKAI_FTR_H */
