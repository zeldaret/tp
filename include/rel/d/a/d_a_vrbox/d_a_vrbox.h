#ifndef D_A_VRBOX_H
#define D_A_VRBOX_H

#include "d/com/d_com_inf_game.h"

class vrbox_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 unk_0x568[0x56C - 0x568];
    /* 0x56C */ J3DModel* mpSoraModel;
    /* 0x570 */ u8 unk_0x570[0x574 - 0x570];
    /* 0x574 */ u8 field_0x574;
};

#endif /* D_A_VRBOX_H */
