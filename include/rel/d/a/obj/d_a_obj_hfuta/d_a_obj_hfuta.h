#ifndef D_A_OBJ_HFUTA_H
#define D_A_OBJ_HFUTA_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjFuta_c
 * @brief Crawling?
 *
 * @details
 *
 */
class daObjFuta_c : public fopAc_ac_c {
public:
    /* 80C1DD8C */ void initBaseMtx();
    /* 80C1DDC8 */ void setBaseMtx();
    /* 80C1DE94 */ void Create();
    /* 80C1DF2C */ void CreateHeap();
    /* 80C1DF9C */ void create1st();
    /* 80C1E020 */ void Execute(f32 (**)[3][4]);
    /* 80C1EB38 */ void mode_proc_call();
    /* 80C1EBDC */ void mode_wait();
    /* 80C1EC44 */ void mode_move();
    /* 80C1ECB4 */ void mode_end();
    /* 80C1ECC4 */ void Draw();
    /* 80C1ED68 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5cc - 0x568];
};
STATIC_ASSERT(sizeof(daObjFuta_c) == 0x5cc);


#endif /* D_A_OBJ_HFUTA_H */
