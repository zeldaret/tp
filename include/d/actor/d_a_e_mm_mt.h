#ifndef D_A_E_MM_MT_H
#define D_A_E_MM_MT_H
#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_uty.h"
#include "d/actor/d_a_e_mm.h"


/**
 * @ingroup actors-enemies
 * @class e_mm_mt_class
 * @brief Helmasaur Shell
 * 
 * @details 
 * 
 */
class e_mm_mt_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class m_phase;
    /* 0x5B4 */ Z2CreatureEnemy m_sound;
    /* 0x658 */ u8 parameters;
    /* 0x65A */ u8 field_0x65A[3];              
    /* 0x65C */ J3DModel* mp_model;
    /* 0x660 */ u32 m_shadowKey;
    /* 0x664 */ s16 m_lifetime;
    /* 0x666 */ s16 m_action;
    /* 0x668 */ s16 m_mode;
    /* 0x66A */ u8 field_0x66A[0x672 - 0x66A];
    /* 0x672 */ s8 field_0x672;
    /* 0x673 */ u8 field_0x673;
    /* 0x674 */ cXyz field_0x674;
    /* 0x680 */ u8 field_0x680[0x684 - 0x680];
    /* 0x684 */ s16 m_timer[2]; 
    /* 0x688 */ s16 m_invulnerabilityTimer;
    /* 0x68A */ bool field_0x68A[2];
    /* 0x68C */ csXyz m_rotation;
    /* 0x692 */ s16 m_carryAngleSpeed;
    /* 0x694 */ s16 m_carryAngle;
    /* 0x696 */ u8 field_0x696[0x698 - 0x696];
    /* 0x698 */ int field_0x698;
    /* 0x69C */ f32 field_0x69C;
    /* 0x6A0 */ s16 field_0x6A0;
    /* 0x6A2 */ s16 field_0x6A2;
    /* 0x6A4 */ s16 m_spin;
    /* 0x6A6 */ u8 field_0x6A6[0x6A8 - 0x6A6];
    /* 0x6A8 */ f32 field_0x6A8;
    /* 0x6AC */ dBgS_AcchCir m_acchCir;
    /* 0x6EC */ dBgS_ObjAcch m_acch;
    /* 0x8C4 */ dCcD_Stts m_stts;
    /* 0x900 */ dCcD_Sph m_sphere;
    /* 0xA38 */ dCcD_Sph m_sph;
    /* 0xB70 */ dCcU_AtInfo m_atInfo;
    /* 0xB94 */ u8 field_0xB94[0xBA4 - 0xB94];
};

STATIC_ASSERT(sizeof(e_mm_mt_class) == 0xba4);


#endif /* D_A_E_MM_MT_H */
