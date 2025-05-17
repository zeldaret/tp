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

enum daE_PO_ANM {
    ANM_ATTACK = 5,	
    ANM_AWAKE = 6,
    ANM_DAMAGE = 7,
    ANM_DOWN = 8,
    ANM_DOWN_DAMAGE = 9,
    ANM_DOWN_DEAD = 10,
    ANM_DOWN_WAIT = 11,
    ANM_FIRE_CATCH = 12,
    ANM_HANGED = 13,
    ANM_HANGED_BRUSH = 14,
    ANM_HANGED_DAMAGE = 15,
    ANM_HANGED_WAIT = 16,
    ANM_POSSESS = 17,
    ANM_RUN_AFTER = 18,
    ANM_RUN_AFTER2 = 19,
    ANM_SWAY_BACK = 20,
    ANM_WAIT = 21,
    ANM_WAIT02 = 22,
};

enum Action_e {
    ACT_WAIT = 0,
    ACT_AVOID = 1,
    ACT_OPENING = 2,
    ACT_SEARCH = 3,
    ACT_ATTACK = 4,
    ACT_LIMBERING = 5,
    ACT_ROLL_MOVE = 6,
    ACT_DAMAGE = 10,
    ACT_WOLF_BITE = 11,
    ACT_DEAD = 12,
    ACT_HOLL_DEMO = 20,
};

class e_po_class {
    public:
    /* 80756900 */ e_po_class();
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5ac */ u8 field_0x5ac[0x5D4 - 0x5ac];
    /* 0x5D4 */ mDoExt_McaMorfSO* mpMorf;	
    /* 0x5D8 */ u8 field_0x5D8[0x5e4 - 0x5D8];
    /* 0x5E4 */ int mResIndex;
    /* 0x5E8 */ u8 field_0x5E8[0x770 - 0x5e8];
    /* 0x770 */ s16 field_0x770[12];
    /* 0x788 */ cXyz field_0x788;
    /* 0x794 */ cXyz field_0x794;
    /* 0x7A0 */ cXyz field_0x7A0;
    /* 0x7AC */ cXyz field_0x7AC;
    /* 0x7B8 */ u8 field_0x7B8[0x810 - 0x7b8];
    /* 0x810 */ s16 field_0x810;
    /* 0x812 */ u8 field_0x812[0xee0 - 0x812];
};

STATIC_ASSERT(sizeof(e_po_class) == 0xee0);

class daE_PO_HIO_c {
    /* 8074C54C */ daE_PO_HIO_c();
    /* 80756DE8 */ ~daE_PO_HIO_c();
};


#endif /* D_A_E_PO_H */
