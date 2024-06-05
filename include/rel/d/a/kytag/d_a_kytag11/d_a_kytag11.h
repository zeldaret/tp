#ifndef D_A_KYTAG11_H
#define D_A_KYTAG11_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-tags
 * @class kytag11_class
 * @brief Time Control Tag
 *
 * @details
 *
 */
class kytag11_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 mNewTime;
    /* 0x569 */ u8 mStopTime;
    /* 0x56A */ u8 mEnvTime;
    /* 0x56C */ u16 mOnEventID;
    /* 0x56E */ u16 mOffEventID;
    /* 0x570 */ u8 mChangeTime;
    /* 0x571 */ u8 mInitTimeChange;
    /* 0x572 */ u8 mOnSwitchNo;
    /* 0x573 */ u8 mOffSwitchNo;
};

STATIC_ASSERT(sizeof(kytag11_class) == 0x574);

#endif /* D_A_KYTAG11_H */
