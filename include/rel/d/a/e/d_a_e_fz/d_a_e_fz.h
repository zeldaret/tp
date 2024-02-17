/**
* @file d_a_e_fz.h
* This header contains information about the Mini Freezard actor.
*
*/

#ifndef D_A_E_FZ_H
#define D_A_E_FZ_H

#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"
#include "m_Do/m_Do_hostIO.h"

/**
 * \enum daE_FZ_Action
 * \brief Mini Freezard current action. 
 * 
 */
enum daE_FZ_Action {
    ACT_WAIT,      /**< Mini Freezard is waiting. (confirm) */ 
    ACT_MOVE,      /**< Mini Freezard is moving. (confirm) */
    ACT_ATTACK,    /**< Mini Freezard is attacking. (confirm) */
    ACT_DAMAGE,    /**< Mini Freezard is damaged. (confirm) */
    ACT_ROLLMOVE   /**< Mini Freezard is rollmove. (confirm) */
};

/**
 * \brief Temporary HIO struct to get a match. Remove later. 
 * 
 */
struct daE_FZ_HIO_c_tmp {
    void* vtable;
    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05[0x06 - 0x05];
    /* 0x06 */ u16 field_0x06;
    /* 0x08 */ s16 field_0x08;
    /* 0x0A */ u8 field_0x0A[0x0C - 0x0A];
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};


class daE_FZ_c : public fopEn_enemy_c {
public:
    /* 806BE9D4 */ void draw();
    /* 806BEAF8 */ void setActionMode(int, int);
    /* 806BEB04 */ void setReflectAngle();
    /* 806BEBA0 */ void mBoundSoundset();
    /* 806BEC08 */ void deadnextSet(bool);
    /* 806BED34 */ void damage_check();
    /* 806BF444 */ bool way_gake_check();
    /* 806BF58C */ void executeWait();
    /* 806BF8E8 */ void executeMove();
    /* 806BFA64 */ void executeAttack();
    /* 806BFB60 */ void executeDamage();
    /* 806BFF94 */ void executeRollMove();
    /* 806C0224 */ void action();
    /* 806C06DC */ void mtx_set();
    /* 806C0760 */ void cc_set();
    /* 806C08C4 */ s32 execute();
    /* 806C0B20 */ void demoDelete();
    /* 806C0B94 */ s32 _delete();
    /* 806C0C28 */ bool CreateHeap();
    /* 806C0CD0 */ void create();

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ J3DModel* mpModel;
    /* 0x5B8 */ mDoExt_invisibleModel mInvisibleModel;
    /* 0x5C0 */ Z2CreatureEnemy mCreature;
    /* 0x664 */ cXyz field_0x664;
    /* 0x670 */ cXyz field_0x670;
    /* 0x67C */ cXyz field_0x67c[4];
    /* 0x6AC */ cXyz field_0x6ac[4];
    /* 0x6DC */ cXyz field_0x6dc;
    /* 0x6E8 */ cXyz field_0x6e8;
    /* 0x6F4 */ s32 mActionMode1;
    /* 0x6F8 */ s32 mActionMode2;
    /* 0x6FC */ f32 field_0x6fc;
    /* 0x700 */ f32 mRadiusBase; /**< Base radius value used by mSph1 and mSph2. */
    /* 0x704 */ s16 field_0x704;
    /* 0x706 */ s16 field_0x706;
    /* 0x708 */ s16 field_0x708;
    /* 0x70A */ u8 field_0x70A[0x70C - 0x70A];
    /* 0x70C */ u32 field_0x70c;
    /* 0x710 */ u8 field_0x710;
    /* 0x711 */ u8 field_0x711;
    /* 0x712 */ u8 field_0x712;
    /* 0x713 */ u8 field_0x713;
    /* 0x714 */ u8 field_0x714;
    /* 0x715 */ u8 field_0x715;
    /* 0x716 */ u8 field_0x716;
    /* 0x717 */ u8 field_0x717;
    /* 0x718 */ fopAc_ac_c* field_0x718; // Blizzeta???
    /* 0x71C */ u32 field_0x71c[3];
    /* 0x728 */ u8 field_0x728[4];
    /* 0x72C */ dBgS_AcchCir mAcchCir;
    /* 0x76C */ dBgS_ObjAcch mObjAcch;
    /* 0x944 */ dCcD_Stts field_0x944;
    /* 0x980 */ dCcD_Sph mSph1;
    /* 0xAC4 */ dCcD_Sph mSph2;
    /* 0xBFC */ dCcU_AtInfo mAtInfo;
    /* 0xC14 */ u8 field_0xc14;
    /* 0xC15 */ u8 field_0xc15;
    /* 0xC16 */ u8 field_0xc16;
    /* 0xC17 */ u8 field_0xc17;
    /* 0xC18 */ u8 field_0xc18;
    /* 0xC19 */ u8 field_0xc19;
    /* 0xC1A */ u8 field_0xc1a;
    /* 0xC1B */ u8 field_0xc1b;
    /* 0xC1C */ u8 field_0xc1c;
    /* 0xC1D */ u8 field_0xc1d;
    /* 0xC1E */ u8 field_0xc1e;
    /* 0xC1F */ u8 field_0xc1f;
    /* 0xC20 */ u8 field_0xc20;
    /* 0xC21 */ u8 field_0xc21;
    /* 0xC22 */ u8 field_0xc22;
    /* 0xC23 */ u8 field_0xc23;
};
// STATIC_ASSERT(sizeof(daE_FZ_c) == 0xC24);

class daE_FZ_HIO_c : public mDoHIO_entry_c {
public:
    /* 806BE94C */ daE_FZ_HIO_c();
    /* 806C1440 */ virtual ~daE_FZ_HIO_c();

public:
    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05[0x06 - 0x05];
    /* 0x06 */ u16 field_0x06;
    /* 0x08 */ u16 field_0x08;
    /* 0x0A */ u8 field_0x0A[0x0C - 0x0A];
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};

/**
 * \brief Blizzeta's actor class. Reference in proper header later when it's been reversed.
 * 
 */
class daB_YO_c : public fopEn_enemy_c {
public:
    u8 getModelNo() { return mModelNo;}
    s16 getFrizadRollAngle() { return mRollAngle;}
    f32 getModeRarius() { return mModeRarius;}
    u8 getFrizadAttack() { return mFrizadAttack;}

private:
    /* 0x5AC */ u8 field_0x5ac[0xF54 - 0x5AC];
    /* 0xF54 */ f32 mModeRarius;
    /* 0xF58 */ u8 field_0xf58[0xF5C - 0xF58];
    /* 0xF5C */ s16 mRollAngle;
    /* 0xF5E */ u8 field_0xf5e[0xFA8 - 0xF5E];
    /* 0xFA8 */ u8 mModelNo;
    /* 0xFA9 */ u8 field_0xfa9[0xFAD - 0xFA9];
    /* 0xFAD */ u8 mFrizadAttack;
};

#endif /* D_A_E_FZ_H */
