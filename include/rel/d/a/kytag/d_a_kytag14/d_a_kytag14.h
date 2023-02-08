#ifndef D_A_KYTAG14_H
#define D_A_KYTAG14_H

#include "f_op/f_op_actor.h"

class kytag14_class : public fopAc_ac_c {
public:
    /* 0x568 */ s8 mSaveRoomNo;
    /* 0x569 */ u8 mSavePoint;
    /* 0x56A */ u16 mEventID1;
    /* 0x56C */ u16 mEventID2;
    /* 0x56E */ u8 mSwitchNo1;
    /* 0x56F */ u8 mSwitchNo2;
};


#endif /* D_A_KYTAG14_H */
