#ifndef D_A_OBJ_GM_H
#define D_A_OBJ_GM_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class obj_gm_class
 * @brief Gohma Egg Container
 *
 * @details
 *
 */
class obj_gm_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570;
    /* 0x571 */ u8 field_0x571;
    /* 0x572 */ u8 field_0x572;
    /* 0x573 */ u8 field_0x573;
    /* 0x574 */ J3DModel* field_0x574;
    /* 0x578 */ Z2Creature mSound;
    /* 0x608 */ s16 field_0x608;
    /* 0x60A */ s16 field_0x60a;
    /* 0x60C */ s16 field_0x60c;
    /* 0x60E */ s16 field_0x60e;
    /* 0x610 */ u8 field_0x610[0x614 - 0x610];
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
    /* 0x646 */ u8 field_0x646[0x648 - 0x646];
    /* 0x648 */ f32 field_0x648;
    /* 0x64C */ s16 field_0x64c[4];
    /* 0x654 */ cXyz field_0x654[2];
    /* 0x66C */ cXyz field_0x66c[2];
    /* 0x684 */ cXyz field_0x684[6];
    /* 0x6CC */ cXyz field_0x6cc[6];
    /* 0x714 */ u8 field_0x714[0x720 - 0x714];
    /* 0x720 */ s16 field_0x720;
    /* 0x722 */ s16 field_0x722;
    /* 0x724 */ u8 field_0x724[0x726 - 0x724];
    /* 0x726 */ u8 field_0x726;
    /* 0x727 */ u8 field_0x727;
    /* 0x728 */ f32 field_0x728;
    /* 0x72C */ u8 field_0x72c;
    /* 0x72D */ u8 field_0x72d[0x730 - 0x72d];
    /* 0x730 */ dBgS_AcchCir mAcchCir;
    /* 0x770 */ dBgS_ObjAcch mObjAcch;
    /* 0x948 */ s16 field_0x948;
    /* 0x94A */ u8 field_0x94a[0x94c - 0x94a];
    /* 0x94C */ dCcD_Stts mStts;
    /* 0x988 */ dCcD_Sph field_0x988;
    /* 0xAC0 */ dCcU_AtInfo mAtInfo;
    /* 0xAE4 */ u8 field_0xae4;
    /* 0xAE5 */ u8 field_0xae5[0xae8 - 0xae5];
    /* 0xAE8 */ u32 field_0xae8;
    /* 0xAEC */ u32 field_0xaec;
    /* 0xAF0 */ u8 field_0xaf0;
    /* 0xAF1 */ u8 field_0xaf1[0xaf4 - 0xaf1];

};

STATIC_ASSERT(sizeof(obj_gm_class) == 0xaf4);

class daObj_Gm_HIO_c {
public:
    /* 80BFB14C */ daObj_Gm_HIO_c();
    /* 80BFD284 */ ~daObj_Gm_HIO_c();
};

struct daObj {
public:
    /* 800372A0 */ void make_eff_break_gm_kotubo(fopAc_ac_c*);
    /* 80037330 */ void make_eff_break_gm_ootubo(fopAc_ac_c*);
};


#endif /* D_A_OBJ_GM_H */
