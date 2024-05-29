#ifndef D_A_OBJ_ITA_H
#define D_A_OBJ_ITA_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjIta_c
 * @brief Plank
 *
 * @details
 *
 */
class daObjIta_c : public fopAc_ac_c {
public:
    /* 80C283AC */ void Search_Ymb();
    /* 80C28674 */ void Check_RideOn();
    /* 80C28788 */ void initBaseMtx();
    /* 80C287B4 */ void setBaseMtx();
    /* 80C28928 */ void create();
    /* 80C28BB0 */ void CreateHeap();
    /* 80C28C28 */ void Create();
    /* 80C28C70 */ void Execute(f32 (**)[3][4]);
    /* 80C290AC */ void Draw();
    /* 80C29150 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x8dc - 0x568];
};
STATIC_ASSERT(sizeof(daObjIta_c) == 0x8dc);

class daObj_ITA_HIO_c {
public:
    /* 80C2836C */ daObj_ITA_HIO_c();
    /* 80C29184 */ ~daObj_ITA_HIO_c();
};

#endif /* D_A_OBJ_ITA_H */
