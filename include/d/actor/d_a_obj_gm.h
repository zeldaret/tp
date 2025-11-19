#ifndef D_A_OBJ_GM_H
#define D_A_OBJ_GM_H

#include "d/actor/d_a_tbox.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-objects
 * @class obj_gm_class
 * @brief Gohma Egg Container
 *
 * @details
 *
*/

class obj_gm_class {
public:
    /* 0x000 */ fopAc_ac_c actor;
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 mType;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ u8 mSwBit;
    /* 0x574 */ J3DModel* mModel;
    /* 0x578 */ Z2Creature mSound;
    /* 0x608 */ s16 field_0x608;
    /* 0x60A */ s16 mAction;
    /* 0x60C */ s16 mActionMode;
    /* 0x60E */ s16 mTimers[2];
    /* 0x614 */ cXyz field_0x614[2];
    /* 0x62C */ f32 field_0x62c;
    /* 0x630 */ f32 field_0x630;
    /* 0x634 */ f32 field_0x634;
    /* 0x638 */ f32 field_0x638;
    /* 0x63C */ s16 field_0x63c;
    /* 0x63E */ s16 field_0x63e;
    /* 0x640 */ s16 field_0x640;
    /* 0x642 */ s16 field_0x642;
    /* 0x644 */ s16 field_0x644;
    /* 0x648 */ f32 field_0x648;
    /* 0x64C */ s16 field_0x64c[2];
    /* 0x650 */ void* field_0x650;
    /* 0x654 */ cXyz field_0x654[2];
    /* 0x66C */ cXyz field_0x66c[2];
    /* 0x684 */ cXyz field_0x684[6];
    /* 0x6CC */ cXyz field_0x6cc[6];
    /* 0x714 */ cXyz field_0x714;
    /* 0x720 */ s16 field_0x720;
    /* 0x722 */ s16 field_0x722;
    /* 0x724 */ u8 field_0x724[0x726 - 0x724];
    /* 0x726 */ s8 field_0x726;
    /* 0x728 */ f32 field_0x728;
    /* 0x72C */ s8 field_0x72c;
    /* 0x730 */ dBgS_AcchCir mAcchCir;
    /* 0x770 */ dBgS_ObjAcch mBgc;
    /* 0x948 */ s16 field_0x948;
    /* 0x94C */ dCcD_Stts mStts;
    /* 0x988 */ dCcD_Sph mSph;
    /* 0xAC0 */ dCcU_AtInfo mAtInfo;
    /* 0xAE4 */ s8 field_0xae4;
    /* 0xAE8 */ u32 field_0xae8;
    /* 0xAEC */ u32 field_0xaec;
    /* 0xAF0 */ bool mIsFirstSpawn;
};

STATIC_ASSERT(sizeof(obj_gm_class) == 0xaf4);

#endif /* D_A_OBJ_GM_H */
