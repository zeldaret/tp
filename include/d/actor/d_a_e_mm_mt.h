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
    /* 0x5ac */ request_of_phase_process_class mPhase;
    /* 0x5b4 */ Z2CreatureEnemy mSound;
    /* 0x658 */ u8 field_0x658[0x65c - 0x658];
    /* 0x65c */ J3DModel* mpModel;
    /* 0x660 */ u32 mShadowKey;
    /* 0x664 */ u8 field_0x660[0x6ec - 0x664];
    /* 0x6ec */ dBgS_ObjAcch mAcch;
    /* 0x8c4 */ u8 field_0x8c4[0x900 - 0x8c4];
    /* 0x900*/ dCcD_Sph mSphere;
    /* 0xa38 */ u8 field_0xa38[0xba4 - 0xa38];

};

STATIC_ASSERT(sizeof(e_mm_mt_class) == 0xba4);


#endif /* D_A_E_MM_MT_H */
