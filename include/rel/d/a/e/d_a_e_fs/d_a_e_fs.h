#ifndef D_A_E_FS_H
#define D_A_E_FS_H
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_fs_class
 * @brief Wooden Puppet
 * 
 * @details 
 * 
 */
class e_fs_class : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0xb9c - 0x5ac];
};
STATIC_ASSERT(sizeof(e_fs_class) == 0xb9c);

class daE_Fs_HIO_c {
    /* 806BBACC */ daE_Fs_HIO_c();
    /* 806BDF94 */ ~daE_Fs_HIO_c();
};


#endif /* D_A_E_FS_H */
