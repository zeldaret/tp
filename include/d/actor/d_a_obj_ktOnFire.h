#ifndef D_A_OBJ_KTONFIRE_H
#define D_A_OBJ_KTONFIRE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daKtOnFire_c
 * @brief Lantern Fire
 *
 * @details
 *
 */
class daKtOnFire_c : public fopAc_ac_c {
public:
    /* 8058C678 */ void setBaseMtx();
    /* 8058C6D0 */ void create();
    /* 8058C960 */ void lightInit();
    /* 8058C9D4 */ void setLight();
    /* 8058C9F8 */ void cutLight();
    /* 8058CA1C */ int Execute();
    /* 8058CDF8 */ int Draw();
    /* 8058CE00 */ int Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x6E4 - 0x568];
    /* 0x6E4 */ cXyz mTorchPos;
    /* 0x6F0 */ u8 field_0x6E4[0x6FC - 0x6F0];
    /* 0x6FC */ cXyz mLightPos;
    /* 0x708 */ LIGHT_INFLUENCE mLight;
};

STATIC_ASSERT(sizeof(daKtOnFire_c) == 0x728);

class daKtOnFire_HIO_c : public mDoHIO_entry_c {
public:
    /* 8058C60C */ daKtOnFire_HIO_c();
    /* 8058CEA8 */ ~daKtOnFire_HIO_c() {}

            u8 mTimer;
            u8 mColor1R;
            u8 mColor1G;
            u8 mColor1B;
};


#endif /* D_A_OBJ_KTONFIRE_H */
