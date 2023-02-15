#ifndef D_A_TAG_STREAM_H
#define D_A_TAG_STREAM_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

// struct JMath {
//     static u8 sincosTable_[65536];
// };

class daTagStream_c : public fopAc_ac_c {
public:
    /* 80D638F8 */ int create();
    /* 80D63A98 */ ~daTagStream_c();
    /* 80D63B58 */ int execute();

    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 field_0x569;
    /* 0x56A */ u8 field_0x56a;
    /* 0x56B */ u8 field_0x56b;

    static u8 m_top[4];
};

#endif /* D_A_TAG_STREAM_H */
