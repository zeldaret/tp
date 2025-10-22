#ifndef D_A_OBJ_HB_H
#define D_A_OBJ_HB_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_hb_class
 * @brief Huge Baba Seed
 *
 * @details
 *
*/

class obj_hb_class {
public:
    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 arg0;
    /* 0x5B5 */ u8 field_0x5b5[0x5b8 - 0x5b5];
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ u32 mShadowKey;
    /* 0x5C0 */ Z2Creature mSound;
    /* 0x650 */ s16 field_0x650;
    /* 0x652 */ s16 mAction;
    /* 0x654 */ s16 mMode;
    /* 0x656 */ u8 field_0x656[0x658 - 0x656];
    /* 0x658 */ cXyz field_0x658;
    /* 0x664 */ u8 field_0x664[0x670 - 0x664];
    /* 0x670 */ s16 mTimers[2];
    /* 0x674 */ s16 field_0x674;
    /* 0x676 */ csXyz field_0x676;
    /* 0x67C */ s16 field_0x67c;
    /* 0x67E */ s16 field_0x67e;
    /* 0x680 */ f32 field_0x680;
    /* 0x684 */ s16 field_0x684;
    /* 0x686 */ u8 field_0x686[0x688 - 0x686];
    /* 0x688 */ f32 field_0x688;
    /* 0x68C */ s16 field_0x68c;
    /* 0x68E */ s16 field_0x68e;
    /* 0x690 */ s16 field_0x690;
    /* 0x692 */ u8 field_0x692[0x694 - 0x692];
    /* 0x694 */ f32 field_0x694;
    /* 0x698 */ f32 field_0x698;
    /* 0x69C */ fpc_ProcID field_0x69c;
    /* 0x6A0 */ f32 field_0x6a0;
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A6 */ u8 field_0x6a6[0x6a8 - 0x6a6];
    /* 0x6A8 */ fpc_ProcID field_0x6a8;
    /* 0x6AC */ f32  field_0x6ac;
    /* 0x6B0 */ s8 field_0x6b0;
    /* 0x6B1 */ u8 field_0x6b1;
    /* 0x6B2 */ u8 field_0x6b2[0x6b4 - 0x6b2];
    /* 0x6B4 */ f32 field_0x6b4;
    /* 0x6B8 */ dBgS_AcchCir mAcchCir;
    /* 0x6F8 */ dBgS_ObjAcch mBgc;
    /* 0x8D0 */ dCcD_Stts mStts;
    /* 0x90C */ dCcD_Sph mSph;
    /* 0xA44 */ dCcU_AtInfo mAtInfo;
    /* 0xA68 */ u32 field_0xa68;
    /* 0xA6C */ u32 field_0xa6c;
    /* 0xA70 */ u32 field_0xa70[4];
    /* 0xA80 */ u32 field_0xa80;
    /* 0xA84 */ u8 field_0xa84[0xa8c - 0xa84];
};

STATIC_ASSERT(sizeof(obj_hb_class) == 0xa8c);


#endif /* D_A_OBJ_HB_H */
