#ifndef D_A_E_MM_MT_H
#define D_A_E_MM_MT_H
#include "f_op/f_op_actor_mng.h"



/**
 * @ingroup actors-enemies
 * @class e_mm_mt_class
 * @brief Helmasaur Shell
 * 
 * @details 
 * 
 */
class e_mm_mt_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ Z2CreatureEnemy mSound;
    /* 0x658 */ u8 field_0x658[0x65C - 0x658];
    /* 0x65C */ J3DModel* mpModel;
    /* 0x660 */ u32 mShadowKey;
    /* 0x664 */ u8 field_0x660[0x6EC - 0x664];
    /* 0x6EC */ dBgS_ObjAcch mAcch;
    /* 0x8C4 */ u8 field_0x8C4[0x900 - 0x8C4];
    /* 0x900*/ dCcD_Sph mSphere;
    /* 0xA38 */ u8 field_0xA38[0xBA4 - 0xA38];

};

STATIC_ASSERT(sizeof(e_mm_mt_class) == 0xba4);


#endif /* D_A_E_MM_MT_H */
