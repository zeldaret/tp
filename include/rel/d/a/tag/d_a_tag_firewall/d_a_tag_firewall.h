#ifndef D_A_TAG_FIREWALL_H
#define D_A_TAG_FIREWALL_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

class daTag_FWall_c : public fopAc_ac_c {
public:
    /* 80D58940 */ int execute();
    /* 80D59078 */ int _delete();
    /* 80D590A8 */ int create();

    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 mSetGameoverEff;
    /* 0x56C */ int mWallTimer[20];
    /* 0x5BC */ int mExplodeTime[20];
    /* 0x60C */ int mWallMode[20];
    /* 0x65C */ u8 field_0x65c[20];
    /* 0x670 */ cXyz mWallPos[20];
    /* 0x760 */ u8 field_0x760[20];
    /* 0x774 */ u32 mUnkEmtrID0[20];
    /* 0x7C4 */ u32 mUnkEmtrID1;
    /* 0x7C8 */ u32 mUnkEmtrID2;
    /* 0x7CC */ dCcD_Stts mCcStts;
    /* 0x808 */ dCcD_Sph mCcSphs[20];
};

#endif /* D_A_TAG_FIREWALL_H */
