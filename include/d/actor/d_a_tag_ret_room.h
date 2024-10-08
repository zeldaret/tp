#ifndef D_A_TAG_RET_ROOM_H
#define D_A_TAG_RET_ROOM_H

#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daTagRetRm_c : public fopAc_ac_c {
public:
    /* 80D5EE98 */ daTagRetRm_c();
    /* 80D5EED4 */ virtual ~daTagRetRm_c();
    /* 80D5EF34 */ int create();
    /* 80D5EF8C */ int Delete();
    /* 80D5EF94 */ int draw();
    /* 80D5EF9C */ int execute();
    /* 80D5F010 */ void init();
    /* 80D5F050 */ u8 chkPlyrInTag();

    /* 0x56C */ f32 field_0x56c;
    /* 0x570 */ f32 field_0x570;
    /* 0x574 */ f32 field_0x574;
    /* 0x578 */ s32 field_0x578;
};

#endif /* D_A_TAG_RET_ROOM_H */
