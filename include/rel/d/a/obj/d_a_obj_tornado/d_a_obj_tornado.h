#ifndef D_A_OBJ_TORNADO_H
#define D_A_OBJ_TORNADO_H

#include "d/cc/d_cc_d.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjTrnd_c : public fopAc_ac_c {
public:
    /* 80D1B998 */ void setPntWind();
    /* 80D1BA0C */ void cutPntWind();
    /* 80D1BA30 */ void movePntWind();
    /* 80D1BC40 */ void setCpsInfo();
    /* 80D1BE04 */ void initBaseMtx();
    /* 80D1BE24 */ void setBaseMtx();
    /* 80D1BE6C */ int Create();
    /* 80D1BFB0 */ int create();
    /* 80D1C0F0 */ int execute();
    /* 80D1C290 */ int draw();
    /* 80D1C298 */ int _delete();

    u32 checkSE() { return fopAcM_GetParamBit(this, 8, 1); }
    u32 getTimer() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getSwbit() { return fopAcM_GetParamBit(this, 0x18, 8); }

    /* 0x568 */ dCcD_Stts mStts;
    /* 0x5A4 */ dCcD_Cps mCps;
    /* 0x6E8 */ cM3dGCpsS field_0x6e8;
    /* 0x704 */ f32 field_0x704;
    /* 0x708 */ Mtx field_0x708;
    /* 0x738 */ s16 field_0x738;
    /* 0x73C */ f32 field_0x73c;
    /* 0x740 */ WIND_INFLUENCE mWindInfluence;
    /* 0x76C */ f32 mWindPower;
};  // Size: 0x770

#endif /* D_A_OBJ_TORNADO_H */
