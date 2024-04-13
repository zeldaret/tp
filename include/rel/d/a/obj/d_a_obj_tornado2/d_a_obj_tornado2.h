#ifndef D_A_OBJ_TORNADO2_H
#define D_A_OBJ_TORNADO2_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

struct daObjTrnd2_c : public fopAc_ac_c {
    /* 80D1C4D8 */ void setPntWind();
    /* 80D1C54C */ void cutPntWind();
    /* 80D1C570 */ void movePntWind();
    /* 80D1C780 */ void setCpsInfo();
    /* 80D1C924 */ void initBaseMtx();
    /* 80D1C944 */ void setBaseMtx();
    /* 80D1C98C */ int Create();
    /* 80D1CC80 */ int create();
    /* 80D1CDC0 */ int execute();
    /* 80D1D0AC */ void setParticle();
    /* 80D1D214 */ void endParticle();
    /* 80D1D278 */ void startParticle();
    /* 80D1D2AC */ void stopParticle();
    /* 80D1D2E0 */ int draw();
    /* 80D1D2E8 */ int _delete();

    f32 getTargetLength() { return field_0x738; }
    f32 getNowLength() { return field_0x704; }
    Vec& getWindEndPos() { return field_0x6e8.mEnd; }
    u32 getPower() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getSwType() { return fopAcM_GetParamBit(this, 16, 4); }
    u32 getOffTime() { return fopAcM_GetParamBit(this, 20, 4); }
    u32 getOnTime() { return fopAcM_GetParamBit(this, 24, 4); }
    u32 getScale() { return fopAcM_GetParamBit(this, 28, 1); }

    /* 0x568 */ dCcD_Stts mStts;
    /* 0x5A4 */ dCcD_Cps mCps;
    /* 0x6E8 */ cM3dGCpsS field_0x6e8;
    /* 0x704 */ f32 field_0x704;
    /* 0x708 */ Mtx field_0x708;
    /* 0x738 */ f32 field_0x738;
    /* 0x73C */ WIND_INFLUENCE mWindInfluence;
    /* 0x768 */ f32 field_0x768;
    /* 0x76C */ f32 field_0x76c;
    /* 0x770 */ int mTimer;
    /* 0x774 */ f32 mWindPower;
    /* 0x778 */ bool field_0x778;
    /* 0x778 */ JPABaseEmitter* mParticles[3];
};

#endif /* D_A_OBJ_TORNADO2_H */
