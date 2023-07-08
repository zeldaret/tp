#ifndef D_A_TAG_POFIRE_H
#define D_A_TAG_POFIRE_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

class daTagPoFire_c : public fopAc_ac_c {
public:
    /* 80D5DB38 */ void setBaseMtx();
    /* 80D5DB90 */ int create();
    /* 80D5DBF0 */ int Execute();
    /* 80D5DC20 */ int Draw();
    /* 80D5DC28 */ int Delete();

    /* 0x568 */ u8 field_0x568;
    /* 0x569 */ u8 field_0x569;
    /* 0x56A */ u16 field_0x56a;
};

class daTagPoFire_HIO_c : public mDoHIO_entry_c {
public:
    /* 80D5DACC */ daTagPoFire_HIO_c();
    /* 80D5DCB0 */ virtual ~daTagPoFire_HIO_c();

    u8 unk_0x4;
};

#endif /* D_A_TAG_POFIRE_H */
