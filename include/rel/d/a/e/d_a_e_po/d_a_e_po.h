#ifndef D_A_E_PO_H
#define D_A_E_PO_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_po_class
 * @brief Poe
 * 
 * @details 
 * 
 */
class e_po_class : public fopEn_enemy_c {
    /* 80756900 */ e_po_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0xee0 - 0x5ac];
};

STATIC_ASSERT(sizeof(e_po_class) == 0xee0);

class daE_PO_HIO_c {
    /* 8074C54C */ daE_PO_HIO_c();
    /* 80756DE8 */ ~daE_PO_HIO_c();
};


#endif /* D_A_E_PO_H */
