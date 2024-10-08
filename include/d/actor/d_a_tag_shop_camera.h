#ifndef D_A_TAG_SHOP_CAMERA_H
#define D_A_TAG_SHOP_CAMERA_H

#include "f_op/f_op_actor_mng.h"

class daTag_ShopCamera_c : public fopAc_ac_c {
public:
    /* 80D60898 */ int create();
    /* 80D608FC */ int Delete();
    /* 80D60904 */ int Execute();
    /* 80D6090C */ int Draw();
    /* 80D60914 */ void initialize();
    /* 80D60A18 */ virtual ~daTag_ShopCamera_c() {};

    /* 0x568 */ u8 field_0x568[4];
};

#endif /* D_A_TAG_SHOP_CAMERA_H */
