#ifndef D_A_OBJ_FIREWOOD2_H
#define D_A_OBJ_FIREWOOD2_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daFireWood2_c
 * @brief Torch Stand
 *
 * @details
 *
 */
class daFireWood2_c : public fopAc_ac_c {
public:
    /* 80BE82D0 */ void setBaseMtx();
    /* 80BE8328 */ void create();
    /* 80BE8640 */ void lightInit();
    /* 80BE86CC */ void setLight();
    /* 80BE86FC */ void cutLight();
    /* 80BE872C */ void pointLightProc();
    /* 80BE87DC */ void Execute();
    /* 80BE8D98 */ int Draw();
    /* 80BE8DA0 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x574 - 0x568];
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5B0 */ dCcD_Cyl mCyl;
    /* 0x6EC */ cXyz field_0x6ec;
    /* 0x6F8 */ u8 field_0x6f8;
    /* 0x6F9 */ u8 field_0x6f9;
    /* 0x6FA */ u8 field_0x6fa;
    /* 0x6FB */ u8 field_0x6fb;
    /* 0x6FC */ u32 field_0x6fc;
    /* 0x700 */ u32 field_0x700;
    /* 0x704 */ u32 field_0x704;
    /* 0x708 */ u32 field_0x708;
    /* 0x70C */ cXyz field_0x70c;
    /* 0x718 */ u8 field_0x718;
    /* 0x71C */ f32 field_0x71c;
    /* 0x720 */ LIGHT_INFLUENCE mLightInfluence;
};

STATIC_ASSERT(sizeof(daFireWood2_c) == 0x740);

class daFireWood2_HIO_c {
public:
    /* 80BE824C */ daFireWood2_HIO_c();
    /* 80BE8E54 */ ~daFireWood2_HIO_c();
};


#endif /* D_A_OBJ_FIREWOOD2_H */
