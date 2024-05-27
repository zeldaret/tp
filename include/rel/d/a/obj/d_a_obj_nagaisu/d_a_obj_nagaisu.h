#ifndef D_A_OBJ_NAGAISU_H
#define D_A_OBJ_NAGAISU_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"
#include "d/d_model.h"

/**
 * @ingroup actors-objects
 * @class daObjNagaisu_c
 * @brief Couch
 *
 * @details
 *
 */
class daObjNagaisu_c : public fopAc_ac_c {
public:
    /* 80C9F3D8 */ daObjNagaisu_c();
    /* 80C9F4B8 */ ~daObjNagaisu_c();
    /* 80C9F5A8 */ void createHeap();
    /* 80C9F668 */ void create();
    /* 80C9F7A8 */ void Delete();
    /* 80C9F81C */ void draw();
    /* 80C9F8C4 */ void execute();
    /* 80C9F914 */ void init();
    /* 80C9F944 */ void setIsu();

    static u8 const REMOVE_ISU_IDX[28];
private:
    /* 0x568 */ u8 field_0x568[0xb6e4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjNagaisu_c) == 0xb6e4);

// child seat / couch?
class daObjIsuChild_c {
public:
    /* 80C9FA90 */ daObjIsuChild_c();
    /* 80C9FCDC */ ~daObjIsuChild_c();
    /* 80C9FD4C */ void createHeap();
    /* 80C9FE28 */ void create(daObjNagaisu_c*, dCcD_Stts*);
    /* 80C9FF54 */ void execute();
    /* 80CA0034 */ void draw(dMdl_c*);
    /* 80CA00B8 */ void Delete();
    /* 80CA0118 */ void chkHit();
    /* 80CA0180 */ void callEmt();

    static u8 const s_CcDCyl[68];
};


#endif /* D_A_OBJ_NAGAISU_H */
