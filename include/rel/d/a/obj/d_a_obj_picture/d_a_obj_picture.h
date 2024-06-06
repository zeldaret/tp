#ifndef D_A_OBJ_PICTURE_H
#define D_A_OBJ_PICTURE_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjPicture_c
 * @brief Hyrule Castle Painting
 *
 * @details
 *
 */
class daObjPicture_c : public fopAc_ac_c {
public:
    /* 80CAD318 */ daObjPicture_c();
    /* 80CAD6C8 */ ~daObjPicture_c();
    /* 80CAD908 */ void createHeap();
    /* 80CADC18 */ void create();
    /* 80CADFB0 */ void Delete();
    /* 80CAE05C */ void draw();
    /* 80CAE1B8 */ void execute();
    /* 80CAE510 */ void init();
    /* 80CAE5B0 */ void setPicModelMtx();
    /* 80CAE638 */ void setTmgModelMtx();
    /* 80CAE6C4 */ void getLinePosPic(int, cXyz*);
    /* 80CAE744 */ void getPosTmg(cXyz*);
    /* 80CAE76C */ void setLinePos();
    /* 80CAE8E8 */ void moveLineFall1();
    /* 80CAEA60 */ void moveLineFall2();
    /* 80CAED28 */ void chkHitRope();
    /* 80CAEDDC */ void chkHitBombTg();
    /* 80CAEE90 */ void setPicAtCol();

    static u8 s_CcDCps[76];
    static u8 s_CcDCyl_pic_at[68];

private:
    /* 0x568 */ u8 field_0x568[0xda0 - 0x568];
};

STATIC_ASSERT(sizeof(daObjPicture_c) == 0xda0);


#endif /* D_A_OBJ_PICTURE_H */
