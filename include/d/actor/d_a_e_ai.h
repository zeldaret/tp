#ifndef D_A_E_AI_H
#define D_A_E_AI_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"


/**
 * @ingroup actors-enemies
 * @class e_ai_class
 * @brief Armos
 *
 * @details
 *
 */
class e_ai_class : public fopEn_enemy_c {
public:
    /* 806791BC */ void initCcCylinder();
    /* 80679284 */ void setCcCylinder();
    /* 80679350 */ void anm_init(int, f32, u8, f32);
    /* 806793FC */ void Draw();
    /* 806794F4 */ void player_way_check();
    /* 80679538 */ void other_bg_check(fopAc_ac_c*);
    /* 80679610 */ void pl_check(f32, s16);
    /* 8067968C */ void damage_check();
    /* 80679DC8 */ void e_ai_damage();
    /* 8067A2CC */ void e_ai_attack();
    /* 8067A54C */ void e_ai_move();
    /* 8067AA48 */ void e_ai_wait();
    /* 8067ACA0 */ void e_ai_return();
    /* 8067B024 */ void action();
    /* 8067B2B0 */ void PlayerWaySet();
    /* 8067B31C */ void AttentionSet();
    /* 8067B378 */ void Execute();
    /* 8067B598 */ void setBaseMtx();
    /* 8067B620 */ void Delete();
    /* 8067B6F0 */ void CreateHeap();
    /* 8067B8E4 */ void Create();
    /* 8067BAEC */ e_ai_class();

private:
    /* 0x5AC */ JPABaseEmitter* mpEmitter;
    /* 0x5B0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5B8 */ u8 field_0x5B8[0x5B9 - 0x5B8];
    /* 0x5B9 */ u8 field_0x5b9;
    /* 0x5BA */ u8 field_0x5ba;
    /* 0x5BC */ cXyz mUnused;  // The offset of this member is a guess. Debug only says that it
                               // exists, unsure of offset in retail
    /* 0x5C8 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x5CC */ u8 field_0x5cc;
    /* 0x5D0 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5D4 */ Z2CreatureEnemy mCreatureSound;
    /* 0x678 */ u8 field_0x678[0x67C - 0x678];
    /* 0x67C */ u8 field_0x67c;
    /* 0x680 */ u32 mShadowKey;
    /* 0x684 */ s32 field_0x684;
    /* 0x688 */ u8 field_0x688[0x68C - 0x688];
    /* 0x68C */ s16 field_0x68c;
    /* 0x68E */ s16 field_0x68e;
    /* 0x690 */ s16 field_0x690;
    /* 0x692 */ s16 field_0x692;
    /* 0x694 */ s16 field_0x694;
    /* 0x696 */ s16 field_0x696;
    /* 0x698 */ u8 field_0x698;
    /* 0x699 */ cXyz mUnused2;  // The offset of this member is a guess. Also unused in debug but
                                // exists, unsure of offset in retail
    /* 0x6A8 */ s16 field_0x6a8;
    /* 0x6AA */ s16 field_0x6aa;
    /* 0x6AC */ f32 field_0x6ac;
    /* 0x6B0 */ s16 field_0x6b0[4];
    /* 0x6B8 */ s16 field_0x6b8;
    /* 0x6BA */ s16 field_0x6ba;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6C0 */ f32 field_0x6c0;
    /* 0x6C4 */ u8 field_0x6C4[0x6C8 - 0x6C4];
    /* 0x6C8 */ dBgS_AcchCir mAcchCir;
    /* 0x708 */ dBgS_ObjAcch mObjAcch;
    /* 0x8E0 */ dCcD_Stts mAtStts;
    /* 0x91C */ dCcD_Stts mShieldStts;
    /* 0x958 */ dCcD_Sph mAtSphere;
    /* 0xA90 */ dCcD_Sph mShieldSphere;
    /* 0xBC8 */ dCcD_Cyl mCylinder;
    /* 0xD04 */ dCcU_AtInfo mAtInfo;
    /* 0xD28 */ u8 field_0xd28;
    /* 0xD29 */ s8 field_0xd29;
    /* 0xD2C */ u32 field_0xd2c;
    /* 0xD30 */ u32 field_0xd30;
    /* 0xD34 */ u32 field_0xd34;
    /* 0xD38 */ u32 field_0xd38;
    /* 0xD3C */ u8 field_0xD3C[0xD40 - 0xD3C];
    /* 0xD40 */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(e_ai_class) == 0xd44);

class daE_AI_HIO_c : public JORReflexible {
public:
    /* 8067916C */ daE_AI_HIO_c();
    /* 8067BF40 */ virtual ~daE_AI_HIO_c();

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 model_size;
    /* 0x0C */ f32 movement_speed;
    /* 0x10 */ f32 pl_recognition_distance;
    /* 0x14 */ f32 attack_range_1;
    /* 0x18 */ f32 attack_range_2;
    /* 0x1C */ f32 home_distance;
};

#endif /* D_A_E_AI_H */
