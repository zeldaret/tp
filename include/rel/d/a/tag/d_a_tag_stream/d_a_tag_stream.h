#ifndef D_A_TAG_STREAM_H
#define D_A_TAG_STREAM_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

class daTagStream_c : public fopAc_ac_c {
public:
    u8 getPriority() {
        return mPriority;
    }

    /* 80D638F8 */ int create();
    /* 80D63A98 */ ~daTagStream_c();
    /* 80D63B58 */ int execute();

    /* 0x568 */ u8 mPriority;
    /* 0x569 */ u8 field_0x569;
    /* 0x56A */ u8 field_0x56a;
    /* 0x56B */ u8 field_0x56b;
    /* 0x56C */ u32 mParameters;
    /* 0x570 */ daTagStream_c* field_0x570;
    /* 0x574 */ daTagStream_c* field_0x574;

    static daTagStream_c* m_top;
};

#endif /* D_A_TAG_STREAM_H */
