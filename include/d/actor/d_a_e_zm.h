#ifndef D_A_E_ZM_H
#define D_A_E_ZM_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_ZM_c
 * @brief Zant Mask
 * 
 * @details 
 * 
*/

class daE_ZM_c : public fopEn_enemy_c {
public:
    /* 8082F9A0 */ int draw();
    /* 8082FBD4 */ void setBck(int, u8, f32, f32);
    /* 8082FC80 */ void setActionMode(int, int);
    /* 8082FC8C */ void damage_check();
    /* 808301E0 */ bool mCutTypeCheck();
    /* 8083033C */ void executeSearchPoint();
    /* 80830398 */ void executeWait();
    /* 808309DC */ void executeMove();
    /* 80830AB8 */ void executeAttack();
    /* 80830E28 */ void executeDamage();
    /* 808310C4 */ void executeDead();
    /* 80831474 */ void executeBullet();
    /* 80831930 */ void action();
    /* 80831B08 */ void mtx_set();
    /* 80831B9C */ void cc_set();
    /* 80831D64 */ int execute();
    /* 80831E9C */ int _delete();
    /* 80831F4C */ int CreateHeap();
    /* 80832064 */ cPhs__Step create();

    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5B8 */ Z2CreatureEnemy mSound;
    /* 0x65C */ int mAction;
    /* 0x660 */ int mMode;
    /* 0x664 */ u8 field_0x664[0x668 - 0x664];
    /* 0x668 */ int mAnm;
    /* 0x66C */ cXyz field_0x66c[10];
    /* 0x6E4 */ u8 field_0x6e4;
    /* 0x6E5 */ u8 field_0x6e5;
    /* 0x6E6 */ u8 field_0x6e6[0x6f4 - 0x6e6];
    /* 0x6F4 */ cXyz field_0x6f4;
    /* 0x700 */ csXyz field_0x700;
    /* 0x708 */ f32 mColor[3];
    /* 0x714 */ f32 field_0x714;
    /* 0x718 */ f32 field_0x718;
    /* 0x71C */ f32 field_0x71c;
    /* 0x720 */ s16 field_0x720;
    /* 0x722 */ u8 field_0x722;
    /* 0x723 */ u8 field_0x723;
    /* 0x724 */ u8 field_0x724;
    /* 0x725 */ u8 mTimer;
    /* 0x726 */ u8 arg0;
    /* 0x727 */ u8 arg1;
    /* 0x728 */ u8 arg2;
    /* 0x729 */ u8 bitSw;
    /* 0x72A */ u8 bitSw2;
    /* 0x72B */ u8 field_0x72b;
    /* 0x72C */ u8 field_0x72c;
    /* 0x72D */ u8 field_0x72d;
    /* 0x730 */ u32 field_0x730[3];
    /* 0x73C */ dBgS_AcchCir mAcchCir;
    /* 0x77C */ dBgS_ObjAcch mBgc;
    /* 0x954 */ dCcD_Stts mStts;
    /* 0x990 */ dCcD_Cyl mCyl;
    /* 0xACC */ dCcD_Sph mSph;
    /* 0xC04 */ dCcU_AtInfo mAtInfo;
    /* 0xC28 */ bool field_0xc28;
    /* 0xC29 */ u8 field_0xc29[0xc3c - 0xc29];
};

STATIC_ASSERT(sizeof(daE_ZM_c) == 0xc3c);

#endif /* D_A_E_ZM_H */
