#ifndef D_A_E_FZ_H
#define D_A_E_FZ_H

#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"
#include "m_Do/m_Do_hostIO.h"

class daE_FZ_c : public fopEn_enemy_c {
public:
    /* 806BE9D4 */ void draw();
    /* 806BEAF8 */ void setActionMode(int, int);
    /* 806BEB04 */ void setReflectAngle();
    /* 806BEBA0 */ void mBoundSoundset();
    /* 806BEC08 */ void deadnextSet(bool);
    /* 806BED34 */ void damage_check();
    /* 806BF444 */ void way_gake_check();
    /* 806BF58C */ void executeWait();
    /* 806BF8E8 */ void executeMove();
    /* 806BFA64 */ void executeAttack();
    /* 806BFB60 */ void executeDamage();
    /* 806BFF94 */ void executeRollMove();
    /* 806C0224 */ void action();
    /* 806C06DC */ void mtx_set();
    /* 806C0760 */ void cc_set();
    /* 806C08C4 */ void execute();
    /* 806C0B20 */ void demoDelete();
    /* 806C0B94 */ void _delete();
    /* 806C0C28 */ void CreateHeap();
    /* 806C0CD0 */ void create();

private:
    /* 0x5AC */ request_of_phase_process_class field_0x5ac;
    /* 0x5B4 */ J3DModel* field_0x5b4;
    /* 0x5B8 */ mDoExt_invisibleModel field_0x5b8;
    /* 0x5C0 */ Z2CreatureEnemy field_0x5c0;
    /* 0x664 */ cXyz field_0x664;
    /* 0x670 */ cXyz field_0x670;
    /* 0x67C */ cXyz field_0x67c[4];
    /* 0x6AC */ cXyz field_0x6ac[4];
    /* 0x6DC */ cXyz field_0x6dc;
    /* 0x6E8 */ cXyz field_0x6e8;
    /* 0x6F4 */ u32 mActionMode1;
    /* 0x6F8 */ u32 mActionMode2;
    /* 0x6FC */ f32 field_0x6fc;
    /* 0x700 */ f32 field_0x700;
    /* 0x704 */ s16 field_0x704;
    /* 0x706 */ s16 field_0x706;
    /* 0x708 */ s16 field_0x708;
    /* 0x70A */ u8 field_0x70A[0x70C - 0x70A];
    /* 0x70C */ u32 field_0x70c;
    /* 0x710 */ u8 field_0x710[0x714 - 0x710];
    /* 0x714 */ u8 field_0x714;
    /* 0x715 */ u8 field_0x715;
    /* 0x716 */ u8 field_0x716[0x72C - 0x716];
    /* 0x72C */ dBgS_AcchCir field_0x72c;
    /* 0x76C */ dBgS_ObjAcch field_0x76c;
    /* 0x944 */ cXyz field_0x944;
    /* 0x950 */ dCcD_Stts field_0x950;
    /* 0x98C */ dCcD_Sph field_0x98c;
    /* 0xAC4 */ dCcD_Sph field_0xac4;
    /* 0xBFC */ dCcU_AtInfo field_0xbfc;
    /* 0xC20 */ u8 field_0xc20[4];
};
STATIC_ASSERT(sizeof(daE_FZ_c) == 0xC24);

class daE_FZ_HIO_c: public mDoHIO_entry_c {
    /* 806BE94C */ daE_FZ_HIO_c();
    /* 806C1440 */ ~daE_FZ_HIO_c();
};

#endif /* D_A_E_FZ_H */
