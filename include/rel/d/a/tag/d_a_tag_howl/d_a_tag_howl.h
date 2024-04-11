#ifndef D_A_TAG_HOWL_H
#define D_A_TAG_HOWL_H

#include "f_op/f_op_actor.h"

class daTag_Howl_c : public fopAc_ac_c {
public:
    /* 0x568 */ s8 mCurveID;
    /* 0x569 */ u8 field_0x569;

    s8 getCurveID() { return mCurveID; }

    /* 8048D958 */ int create();
    /* 8048D9BC */ int destroy();
    /* 8048D9C4 */ int execute();
    /* 8048DA24 */ int draw();
    /* 8048DA2C */ u8 isAreaCheck();
    /* 8048DC1C */ int getParam();
    /* 8048DC68 */ u8 getSwitchBit();
    /* 8048DCFC */ virtual ~daTag_Howl_c() {}
};  // Size: 0x570

#endif /* D_A_TAG_HOWL_H */
