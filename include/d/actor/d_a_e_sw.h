#ifndef D_A_E_SW_H
#define D_A_E_SW_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_SW_c
 * @brief Moldorm
 * 
 * @details 
 * 
 */
class daE_SW_c : public fopEn_enemy_c {
public:
    typedef void (daE_SW_c::*actionFunc)();

    /* 807A7460 */ void bckSet(int, f32, u8, f32);
    /* 807A7504 */ int draw();
    /* 807A76E4 */ void setBeforeJumpEffect();
    /* 807A77CC */ void setJumpEffect();
    /* 807A78B4 */ void setSmokeEffect();
    /* 807A7A08 */ void setDiveEffect();
    /* 807A7AC0 */ void setHideEffect();
    /* 807A7B64 */ void setActionMode(s16, s16);
    /* 807A7C50 */ fopAc_ac_c* search_bomb();
    /* 807A7CD0 */ BOOL bomb_check();
    /* 807A7D48 */ bool setModeBack();
    /* 807A7DAC */ void checkFall();
    /* 807A7EFC */ bool checkBeforeWall();
    /* 807A7F88 */ void executeWait();
    /* 807A8290 */ int checkRunChase();
    /* 807A831C */ void executeChaseSlow();
    /* 807A8B98 */ void executeChaseFast();
    /* 807A9580 */ void executeBomb();
    /* 807A9768 */ void executeAttack();
    /* 807A9E58 */ void executeHook();
    /* 807AA050 */ void executeMoveOut();
    /* 807AA44C */ void executeChance();
    /* 807AA784 */ void executeDive();
    /* 807AA91C */ void executeDamage();
    /* 807AAB7C */ void executeDie();
    /* 807AADCC */ void executeMaster();
    /* 807AAF70 */ bool checkSuddenAttack(int);
    /* 807AB310 */ void executeSuddenAttack();
    /* 807AB5C4 */ void executeFall();
    /* 807AB6C4 */ void action();
    /* 807AB884 */ void mtx_set();
    /* 807AB930 */ void cc_set();
    /* 807ABAB0 */ void damage_check();
    /* 807ABD28 */ void checkGroundSand();
    /* 807ABE50 */ int execute();
    /* 807AC170 */ int _delete();
    /* 807AC204 */ int CreateHeap();
    /* 807AC31C */ cPhs__Step create();
    /* 807ACA40 */ void d_setAction(void (daE_SW_c::*)());
    /* 807ACAE4 */ void d_checkFall();
    /* 807ACCB0 */ void d_damage_check();
    /* 807ACFF8 */ void d_action();
    /* 807AD10C */ bool d_bomb_check();
    /* 807AD17C */ void d_bm_chase();
    /* 807AD4A8 */ void d_wait();
    /* 807AD7C0 */ bool d_chaseCheck();
    /* 807ADA08 */ void d_chase();
    /* 807ADE50 */ void d_attk();
    /* 807AE4B4 */ void d_chance();
    /* 807AE7F4 */ void d_chance2();
    /* 807AE968 */ void d_dive();
    /* 807AEB08 */ void d_damage();
    /* 807AEE44 */ void d_die();
    /* 807AF01C */ void d_hook();
    /* 807AF4B4 */ void d_fall();
    /* 807AF57C */ int d_execute();

    bool d_checkAction(void (daE_SW_c::*action)()) {
        return field_0xafc == action;
    }

    bool d_checkOldAction(void (daE_SW_c::*action)()) {
        return field_0xb0c == action;
    }
private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5B8 */ Z2CreatureEnemy mSound;
    /* 0x65C */ cXyz field_0x65c;
    /* 0x668 */ cXyz field_0x668;
    /* 0x674 */ cXyz field_0x674;
    /* 0x680 */ s16 mMoveMode;
    /* 0x682 */ s16 mActionMode;
    /* 0x684 */ u8 field_0x684;
    /* 0x688 */ fpc_ProcID field_0x688;
    /* 0x68C */ u8 field_0x68c;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ u8 field_0x694;
    /* 0x695 */ u8 field_0x695;
    /* 0x696 */ u8 field_0x696;
    /* 0x697 */ u8 field_0x697;
    /* 0x698 */ int field_0x698;
    /* 0x69C */ s16 field_0x69c;
    /* 0x69E */ s16 field_0x69e;
    /* 0x6A0 */ s16 field_0x6a0;
    /* 0x6A2 */ s16 field_0x6a2;
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A8 */ cXyz field_0x6a8;
    /* 0x6B4 */ f32 field_0x6b4;
    /* 0x6B8 */ f32 field_0x6b8;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6BE */ u8 field_0x6be[0x6c8 - 0x6be];
    /* 0x6C8 */ f32 field_0x6c8;
    /* 0x6CC */ s16 field_0x6cc;
    /* 0x6D0 */ f32 field_0x6d0;
    /* 0x6D4 */ f32 field_0x6d4;
    /* 0x6D8 */ f32 field_0x6d8;
    /* 0x6DC */ f32 field_0x6dc;
    /* 0x6E0 */ u32 mShadowKey;
    /* 0x6E4 */ u8 field_0x6e4;
    /* 0x6E5 */ u8 field_0x6e5;
    /* 0x6E6 */ u8 field_0x6e6;
    /* 0x6E7 */ u8 field_0x6e7;
    /* 0x6E8 */ u8 field_0x6e8;
    /* 0x6E9 */ u8 field_0x6e9;
    /* 0x6EA */ s16 field_0x6ea;
    /* 0x6EC */ s16 field_0x6ec;
    /* 0x6EE */ s16 field_0x6ee;
    /* 0x6F0 */ s16 field_0x6f0;
    /* 0x6F2 */ s16 field_0x6f2;
    /* 0x6F4 */ u8 field_0x6f4[0x6f6 - 0x6f4];
    /* 0x6F6 */ s16 field_0x6f6;
    /* 0x6F8 */ dBgS_AcchCir field_0x6f8[2];
    /* 0x778 */ dBgS_ObjAcch mBgc;
    /* 0x950 */ dCcD_Stts mStts;
    /* 0x98C */ dCcD_Sph field_0x98c;
    /* 0xAC4 */ dCcU_AtInfo mAtInfo;
    /* 0xAE8 */ u32 field_0xae8;
    /* 0xAEC */ u32 field_0xaec;
    /* 0xAF0 */ u32 field_0xaf0;
    /* 0xAF4 */ u32 field_0xaf4;
    /* 0xAF8 */ u8 field_0xaf8;
    /* 0xAF9 */ u8 field_0xaf9;
    /* 0xAFC */ actionFunc field_0xafc;
    /* 0xB0C */ actionFunc field_0xb0c;
    /* 0xB14 */ bool field_0xb14;
};

STATIC_ASSERT(sizeof(daE_SW_c) == 0xb18);

#endif /* D_A_E_SW_H */
