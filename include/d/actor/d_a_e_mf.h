#ifndef D_A_E_MF_H
#define D_A_E_MF_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_mf_class
 * @brief Dynalfos
 * 
 * @details 
 * 
 */
class e_mf_class : public fopEn_enemy_c {
    /* 80712F20 */ e_mf_class();
private:
    /* 0x5ac */ u8 field_0x5ac[0x10ec - 0x5ac];
};

STATIC_ASSERT(sizeof(e_mf_class) == 0x10ec);

class daE_MF_HIO_c {
    /* 8070A70C */ daE_MF_HIO_c();
    /* 80713464 */ ~daE_MF_HIO_c();
};


#endif /* D_A_E_MF_H */
