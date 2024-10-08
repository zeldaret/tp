#ifndef D_A_E_FM_H
#define D_A_E_FM_H

#include "f_op/f_op_actor_mng.h"
#include "Z2AudioLib/Z2Creature.h"

/**
 * @ingroup actors-enemies
 * @class e_fm_class
 * @brief Fyrus
 * 
 * @details 
 * 
 */
class e_fm_class : public fopEn_enemy_c {
public:
    /* 804F9B64 */ e_fm_class();
    /* 0x005AC */ u8 field_0x5ac[0x63c - 0x5ac];
    /* 0x0063C */ Z2CreatureFM field_0x63c;
    /* 0x00760 */ u8 field_0x760[0x1828 - 0x760];
    /* 0x01828 */ u8 field_0x1828;
    /* 0x01829 */ u8 field_0x1829[0x1b084 - 0x1829];
};

STATIC_ASSERT(sizeof(e_fm_class) == 0x1b084);

class daE_FM_HIO_c {
    /* 804EF0EC */ daE_FM_HIO_c();
    /* 804FA3D8 */ ~daE_FM_HIO_c();
};

struct chain_s {
    /* 804F9E14 */ ~chain_s();
    /* 804F9F14 */ chain_s();
};


#endif /* D_A_E_FM_H */
