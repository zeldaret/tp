#ifndef D_A_E_OCT_BG_H
#define D_A_E_OCT_BG_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "d/d_bg_s_acch.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "SSystem/SComponent/c_phase.h"

/**
 * @ingroup actors-enemies
 * @class daE_OctBg_c
 * @brief Morpheel Bomb Fish
 * 
 * @details 
 * 
 */
class daE_OctBg_c : public fopEn_enemy_c {
public:
    typedef void (daE_OctBg_c::*actionFunc)();

    /* 8073626C */ void setAction(actionFunc);
    /* 80736310 */ void setSparkEffect();
    /* 80736418 */ bool checkExplode();
    /* 8073651C */ void action();
    /* 80736840 */ int _delete();
    /* 807368C8 */ void cc_set();
    /* 80736A78 */ void mtx_set();
    /* 80736BB4 */ bool checkNormalAttack();
    /* 80736DAC */ bool checkChase();
    /* 80736E30 */ void born_swim();
    /* 80737028 */ void swim();
    /* 80737574 */ void setChasePos(cXyz&, f32);
    /* 8073762C */ bool checkCoreFishAttack();
    /* 80737678 */ void chase_core();
    /* 80737C48 */ void normal_attack();
    /* 8073814C */ void core_fish_attack();
    /* 80738714 */ void back_swim();
    /* 80738914 */ bool setBombCarry(int);
    /* 807389E8 */ void hook();
    /* 80738A4C */ void damage();
    /* 80738C2C */ void bomb_wait();
    /* 80738E30 */ void damage_check();
    /* 8073905C */ int execute();
    /* 807390E4 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 807391D0 */ static int JointCallBack(J3DJoint*, int);
    /* 8073921C */ int CreateHeap();
    /* 80739424 */ int create();
    /* 807399A4 */ int draw();

    u8 getChaseFlag() { return field_0xbac; }
    u32 checkAction(actionFunc func) { return field_0xb58 == func; }
    bool checkNormalAttk() { return checkAction(&daE_OctBg_c::normal_attack); }

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* field_0x5b4;
    /* 0x5B8 */ mDoExt_brkAnm* field_0x5b8;
    /* 0x5BC */ Z2CreatureEnemy field_0x5bc;
    /* 0x660 */ cXyz field_0x660;
    /* 0x66C */ dBgS_AcchCir field_0x66c;
    /* 0x6AC */ dBgS_ObjAcch field_0x6ac;
    /* 0x884 */ dCcD_Stts field_0x884;
    /* 0x8C0 */ dCcD_Sph field_0x8c0;
    /* 0x9F8 */ dCcD_Sph field_0x9f8;
    /* 0xB30 */ dCcU_AtInfo field_0xb30;
    /* 0xB54 */ u8 field_0xb54[0xb58 - 0xb54];
    /* 0xB58 */ actionFunc field_0xb58;
    /* 0xB64 */ actionFunc field_0xb64;
    /* 0xB70 */ int field_0xb70;
    /* 0xB74 */ bool field_0xb74;
    /* 0xB75 */ u8 field_0xb75;
    /* 0xB76 */ u8 field_0xb76;
    /* 0xB77 */ u8 field_0xb77;
    /* 0xB78 */ int field_0xb78;
    /* 0xB7C */ s16 field_0xb7c;
    /* 0xB7E */ s16 field_0xb7e;
    /* 0xB80 */ s16 field_0xb80;
    /* 0xB82 */ s16 field_0xb82;
    /* 0xB84 */ s16 field_0xb84[4];
    /* 0xB8C */ s16 field_0xb8c;
    /* 0xB8E */ u8 field_0xb8e[0xb90 - 0xb8e];
    /* 0xB90 */ int field_0xb90;
    /* 0xB94 */ s16 field_0xb94;
    /* 0xB96 */ s16 field_0xb96;
    /* 0xB98 */ u32 field_0xb98[5];
    /* 0xBAC */ u8 field_0xbac;
    /* 0xBAD */ u8 field_0xbad;
    /* 0xBAE */ u8 field_0xbae;
    /* 0xBAF */ u8 field_0xbaf;
    /* 0xBB0 */ u16 field_0xbb0;
    /* 0xBB2 */ u8 field_0xbb2;
    /* 0xBB3 */ u8 field_0xbb3;
};

STATIC_ASSERT(sizeof(daE_OctBg_c) == 0xBB4);

class daE_OctBg_HIO_c {
public:
    /* 8073620C */ daE_OctBg_HIO_c();
    /* 80739CB8 */ virtual ~daE_OctBg_HIO_c() {}

    /* 0x04 */ s8 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ u8 field_0x20;
    /* 0x21 */ u8 field_0x21;
};

#endif /* D_A_E_OCT_BG_H */
