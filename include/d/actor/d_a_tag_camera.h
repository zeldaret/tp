#ifndef D_A_TAG_CAMERA_H
#define D_A_TAG_CAMERA_H

#include "f_op/f_op_actor_mng.h"

class daTag_Cam_c : public fopAc_ac_c {
public:
    /* 80489F14 */ u8 getSwType();
    /* 80489F20 */ u8 getPrio();
    /* 80489F2C */ u8 getSwBit();
    /* 80489F38 */ u8 getCondition();
    /* 80489F44 */ u8 getCameraId();
    /* 80489F50 */ u8 getRailID();
    /* 80489F5C */ u16 getAreaType();
    /* 80489F68 */ u16 getAreaNoChk();
    /* 80489F74 */ int execute();

    inline int create();

    /* 0x568 */ u8 field_0x568[0x570 - 0x568];
    /* 0x570 */ bool (*mCheckFunc)();
    /* 0x574 */ cXyz mBoundsLo;
    /* 0x580 */ cXyz mBoundsHi;
};

#endif /* D_A_TAG_CAMERA_H */
