#ifndef D_A_E_MF_H
#define D_A_E_MF_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_jnt_col.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_mf_class
 * @brief Dynalfos
 * 
 * @details 
 * 
 */
class e_mf_class {
public:
    /* 80712F20 */ e_mf_class();

    /* 0x0000 */ fopEn_enemy_c actor;
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ u8 field_0x5b4[0x5b6 - 0x5b4];
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B7 */ u8 field_0x5b7;
    /* 0x05B8 */ u8 field_0x5b8;
    /* 0x05B9 */ u8 field_0x5b9;
    /* 0x05BA */ u8 field_0x5ba[0x5dc - 0x5ba];
    /* 0x05DC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05E0 */ u8 field_0x5e0[0x5e8 - 0x5e0];
    /* 0x05E8 */ Z2CreatureEnemy mSound;
    /* 0x068C */ u8 field_0x68c[0x694 - 0x68c];
    /* 0x0694 */ dJntCol_c field_0x694;
    /* 0x06A4 */ u8 field_0x6a4[0x6ac - 0x6a4];
    /* 0x06AC */ u16 field_0x6ac;
    /* 0x06AE */ s16 field_0x6ae;
    /* 0x06B0 */ u8 field_0x6b0[0x6b8 - 0x6b0];
    /* 0x06B8 */ f32 field_0x6b8;
    /* 0x06BC */ u8 field_0x6bc[0x742 - 0x6bc];
    /* 0x0742 */ csXyz field_0x742[11];
    /* 0x0784 */ csXyz field_0x784[11];
    /* 0x07C6 */ u8 field_0x7c6[0x7ee - 0x7c6];
    /* 0x07EE */ csXyz field_0x7ee[4];
    /* 0x0806 */ u8 field_0x806[0x824 - 0x806];
    /* 0x0824 */ dBgS_AcchCir mAcchCir;
    /* 0x0864 */ dBgS_ObjAcch mObjAcch;
    /* 0x0A3C */ u8 field_0xa3c[0xa40 - 0xa3c];
    /* 0x0A40 */ dCcD_Stts mStts;
    /* 0x0A7C */ dCcD_Sph field_0xa7c[3];
    /* 0x0E24 */ dCcD_Sph field_0xe24;
    /* 0x0F5C */ dCcD_Sph field_0xf5c;
    /* 0x1094 */ dCcU_AtInfo mAtInfo;
    /* 0x10B8 */ u8 field_0x10b8;
    /* 0x10B9 */ u8 field_0x10b9;
    /* 0x10BA */ u8 field_0x10ba[0x10ec - 0x10ba];
};

STATIC_ASSERT(sizeof(e_mf_class) == 0x10ec);

class daE_MF_HIO_c : public JORReflexible {
public:
    /* 8070A70C */ daE_MF_HIO_c();
    /* 80713464 */ virtual ~daE_MF_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ s16 field_0x1c;
    /* 0x1E */ s16 field_0x1e;
    /* 0x20 */ s16 field_0x20;
    /* 0x22 */ u8 field_0x22;
    /* 0x23 */ u8 field_0x23;
};


#endif /* D_A_E_MF_H */
