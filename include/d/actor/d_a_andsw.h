#ifndef D_A_ANDSW_H
#define D_A_ANDSW_H

#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-unsorted
 * @class daAndsw_c
 * @brief
 *
 * @details
 *
*/

class daAndsw_c : public fopAc_ac_c {
public:
    /* 80457978 */ int Create();
    /* 804579B8 */ int create();
    /* 80457A20 */ int execute();
    /* 80457ABC */ int _delete();

    inline u8 getTimer();
    inline u8 getSwNo2();
    inline u8 getSwNo();
    inline daAndsw_c();
    inline u8 getType();

    /* 0x568 */ u8 mSwNo;
    /* 0x568 */ u8 mSwNo2;
    /* 0x56A */ s16 mTimer;
};

#endif /* D_A_ANDSW_H */
