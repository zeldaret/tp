#ifndef D_A_OBJ_FIREWOOD_H
#define D_A_OBJ_FIREWOOD_H

#include "d/com/d_com_inf_game.h"
#include "m_Do/m_Do_hostIO.h"
#include "f_op/f_op_actor_mng.h"

class daFireWood_c : public fopAc_ac_c {
public:
    /* 80BE76B0 */ void setBaseMtx();
    /* 80BE7708 */ void create();
    /* 80BE79A0 */ void lightInit();
    /* 80BE7A14 */ void setLight();
    /* 80BE7A38 */ void Execute();
    /* 80BE7E74 */ bool Draw();
    /* 80BE7E7C */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x574 - 0x568];
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5B0 */ dCcD_Cyl mCyl;
    /* 0x6EC */ cXyz field_0x6ec;
    /* 0x6F8 */ u8 field_0x6f8;
    /* 0x6F9 */ u8 field_0x6f9;
    /* 0x6FC */ u32 field_0x6fc[4];
    /* 0x70C */ u8 field_0x70c;
    /* 0x710 */ cXyz field_0x710;
    /* 0x71C */ LIGHT_INFLUENCE mLightInfluence;
    /* 0x73C */ u8 field_0x73c;
};
STATIC_ASSERT(sizeof(daFireWood_c) == 0x740);

#ifdef NONMATCHING
class daFireWood_HIO_c : public mDoHIO_entry_c {
public:
    /* 80BE762C */ daFireWood_HIO_c();
    /* 80BE7F24 */ virtual ~daFireWood_HIO_c();

    /* 0x4 */ f32 field_0x4;
    /* 0x8 */ f32 field_0x8;
    /* 0xC */ u8 field_0xc;
};
#else
struct daFireWood_HIO_c {
    /* 80BE762C */ daFireWood_HIO_c();
    /* 80BE7F24 */ ~daFireWood_HIO_c();
};
#endif



#endif /* D_A_OBJ_FIREWOOD_H */
