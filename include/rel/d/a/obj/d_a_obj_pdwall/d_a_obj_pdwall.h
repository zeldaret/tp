#ifndef D_A_OBJ_PDWALL_H
#define D_A_OBJ_PDWALL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjPDwall_c
 * @brief P - D Wall?
 *
 * @details
 *
 */
class daObjPDwall_c : public fopAc_ac_c {
public:
    /* 80CAC7F8 */ void create1st();
    /* 80CAC8DC */ void setMtx();
    /* 80CACA44 */ void CreateHeap();
    /* 80CACBA8 */ void Create();
    /* 80CACCE0 */ void Execute(f32 (**)[3][4]);
    /* 80CACF14 */ void Draw();
    /* 80CACFD4 */ void Delete();
    /* 80CAD140 */ ~daObjPDwall_c();

private:
    /* 0x568 */ u8 field_0x568[0xa18 - 0x568];
};

STATIC_ASSERT(sizeof(daObjPDwall_c) == 0xa18);


#endif /* D_A_OBJ_PDWALL_H */
