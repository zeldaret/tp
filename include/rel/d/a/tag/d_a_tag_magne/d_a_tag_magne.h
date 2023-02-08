#ifndef D_A_TAG_MAGNE_H
#define D_A_TAG_MAGNE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

struct cBgS_PolyInfo;

class daTagMagne_c : public fopAc_ac_c {
public:
    /* 80031B50 */ static BOOL checkMagnetCode(cBgS_PolyInfo&);
    /* 80031BF4 */ int checkMagneA();
    /* 80031C48 */ int checkMagneB();
    /* 80031C9C */ int checkMagneC();
    /* 805A5498 */ int Create();
    /* 805A54DC */ int create();
    /* 805A5578 */ int _delete();

    u8 getSwNo1() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwNo2() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getSwNo3() { return fopAcM_GetParamBit(this, 16, 8); }

    static daTagMagne_c* mTagMagne;

    /* 0x568 */ u8 mSwNo1;
    /* 0x569 */ u8 mSwNo2;
    /* 0x56A */ u8 mSwNo3;
};

#endif /* D_A_TAG_MAGNE_H */
