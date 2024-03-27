#ifndef D_A_OBJ_TORNADO2_H
#define D_A_OBJ_TORNADO2_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct daObjTrnd2_c : public fopAc_ac_c {
    /* 80D1C4D8 */ void setPntWind();
    /* 80D1C54C */ void cutPntWind();
    /* 80D1C570 */ void movePntWind();
    /* 80D1C780 */ void setCpsInfo();
    /* 80D1C924 */ void initBaseMtx();
    /* 80D1C944 */ void setBaseMtx();
    /* 80D1C98C */ void Create();
    /* 80D1CC80 */ void create();
    /* 80D1CDC0 */ void execute();
    /* 80D1D0AC */ void setParticle();
    /* 80D1D214 */ void endParticle();
    /* 80D1D278 */ void startParticle();
    /* 80D1D2AC */ void stopParticle();
    /* 80D1D2E0 */ bool draw();
    /* 80D1D2E8 */ void _delete();

    f32 getTargetLength() { return field_0x738; }
    f32 getNowLength() { return field_0x704; }
    cXyz& getWindEndPos() { return field_0x6f4; }


    u8 field_0x568[0x6f4-0x568];
    cXyz field_0x6f4;
    u32 field_0x700;
    f32 field_0x704;
    u8 field_0x708[0x738-0x708];
    f32 field_0x738;
};

#endif /* D_A_OBJ_TORNADO2_H */
