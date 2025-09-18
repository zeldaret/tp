#ifndef D_A_E_GM_H
#define D_A_E_GM_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_GM_c
 * @brief Baby Gohma / Gohma Eye
 * 
 * @details 
 * 
*/

class daE_GM_c : public fopEn_enemy_c {
public:
    typedef void (daE_GM_c::*actionFunc)();
    
    /* 806D12C8 */ void setAction(actionFunc);
    /* 806D136C */ void action();
    /* 806D1580 */ void egg_wait();
    /* 806D1A9C */ void appear();
    /* 806D1CC0 */ void walk();
    /* 806D21A4 */ void create_item();
    /* 806D2294 */ void pechanko_damage();
    /* 806D24C0 */ void wait();
    /* 806D25E8 */ void egg_damage();
    /* 806D289C */ void setDeathLightEffect();
    /* 806D2940 */ void setEggBreakEffect();
    /* 806D29E4 */ void damage();
    /* 806D2DD4 */ void core_damage();
    /* 806D3308 */ void core_delwait();
    /* 806D344C */ void core_piku();
    /* 806D35E4 */ void core_pechanko_damage();
    /* 806D378C */ void hook();
    /* 806D398C */ void rebound();
    /* 806D3EC4 */ void walk2();
    /* 806D4288 */ void dead_wait();
    /* 806D4468 */ void core_wait();
    /* 806D462C */ void core_escape();
    /* 806D4D1C */ BOOL chaseCheck();
    /* 806D4EF4 */ void normal_wait();
    /* 806D545C */ void normal_chase();
    /* 806D578C */ void mtx_set();
    /* 806D59D0 */ void cc_set();
    /* 806D5D54 */ int draw();
    /* 806D631C */ void damage_check();
    /* 806D6708 */ int execute();
    /* 806D6980 */ int _delete();
    /* 806D6AC8 */ int CreateHeap();
    /* 806D6CF0 */ cPhs__Step create();

    void InstantKill() { field_0xa76 = 1; }
    u8 CheckDeath() { return field_0xa68; }
    void MoveStart(u8 param_1) {
        field_0xa71 = true;
        field_0xa5e = param_1;
    }
    BOOL checkAction(actionFunc action) { return mAction == action; }
    BOOL checkOldAction(actionFunc action) { return mOldAction == action; }

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ dBgS_AcchCir mAcchCir;
    /* 0x5F4 */ dBgS_ObjAcch mObjAcch;
    /* 0x7CC */ dCcD_Stts mStts;
    /* 0x808 */ dCcD_Sph mSph;
    /* 0x940 */ dCcU_AtInfo mAtInfo;
    /* 0x964 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x968 */ J3DModel* mpEggModel;
    /* 0x96C */ Z2CreatureEnemy mSound;
    /* 0xA10 */ cXyz field_0xa10;
    /* 0xA1C */ csXyz field_0xa1c;
    /* 0xA24 */ actionFunc mAction;
    /* 0xA30 */ actionFunc mOldAction;
    /* 0xA3C */ int mMode;
    /* 0xA40 */ f32 field_0xa40;
    /* 0xA44 */ f32 field_0xa44;
    /* 0xA48 */ f32 mColor;
    /* 0xA4C */ f32 field_0xa4c;
    /* 0xA50 */ f32 field_0xa50;
    /* 0xA54 */ f32 field_0xa54;
    /* 0xA58 */ u32 mShadowKey;
    /* 0xA5C */ s16 field_0xa5c;
    /* 0xA5E */ s16 field_0xa5e;
    /* 0xA60 */ s16 field_0xa60;
    /* 0xA62 */ s16 field_0xa62;
    /* 0xA64 */ s16 field_0xa64;
    /* 0xA66 */ s16 field_0xa66;
    /* 0xA68 */ u8 field_0xa68;
    /* 0xA69 */ u8 field_0xa69;
    /* 0xA6A */ u8 field_0xa6a;
    /* 0xA6B */ u8 field_0xa6b;
    /* 0xA6C */ u8 field_0xa6c;
    /* 0xA6D */ u8 field_0xa6d;
    /* 0xA6E */ u8 field_0xa6e;
    /* 0xA6F */ u8 mType;
    /* 0xA70 */ u8 mSwBit;
    /* 0xA71 */ bool field_0xa71;
    /* 0xA72 */ u8 field_0xa72;
    /* 0xA73 */ u8 mRandIndex;
    /* 0xA74 */ u8 field_0xa74;
    /* 0xA75 */ u8 field_0xa75;
    /* 0xA76 */ bool field_0xa76;
    /* 0xA77 */ u8 field_0xa77;
};

STATIC_ASSERT(sizeof(daE_GM_c) == 0xa78);

#endif /* D_A_E_GM_H */
