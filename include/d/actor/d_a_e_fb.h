#ifndef D_A_E_FB_H
#define D_A_E_FB_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_FB_c
 * @brief Freezard
 *
 * @details
 *
 */
class daE_FB_c : public fopEn_enemy_c {
public:
    /* 806B6520 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806B65C0 */ void JointCallBack(J3DJoint*, int);
    /* 806B660C */ void draw();
    /* 806B67E0 */ void setBck(int, u8, f32, f32);
    /* 806B688C */ void setActionMode(int, int);
    /* 806B6898 */ void damage_check();
    /* 806B6D20 */ void mBgLineCheck();
    /* 806B6DF4 */ void search_check();
    /* 806B6F40 */ void executeWait();
    /* 806B70FC */ void executeAttack();
    /* 806B78A0 */ void executeDamage();
    /* 806B7B88 */ void executeBullet();
    /* 806B7DDC */ void action();
    /* 806B80A4 */ void mtx_set();
    /* 806B811C */ void cc_set();
    /* 806B82B4 */ void normal_eff_set();
    /* 806B83F0 */ void dead_eff_set();
    /* 806B8518 */ void execute();
    /* 806B85C8 */ void _delete();
    /* 806B8678 */ void CreateHeap();
    /* 806B88E0 */ void create();
    /* 806B8C1C */ daE_FB_c();

private:
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5B8 */ mDoExt_invisibleModel mInvisibleModel;
    /* 0x5C0 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x5C4 */ Z2CreatureEnemy mCreatureSound;
    /* 0x668 */ s32 field_0x668;
    /* 0x66C */ s32 field_0x66c;
    /* 0x670 */ s32 field_0x670;
    /* 0x674 */ cXyz mUnused;  // This offset is a guess based on debug
    /* 0x680 */ s16 field_0x680;
    /* 0x684 */ f32 field_0x684;
    /* 0x688 */ u32 mShadowKey;
    /* 0x68C */ s16 field_0x68c;
    /* 0x68E */ u8 field_0x68e;
    /* 0x68F */ u8 field_0x68f;
    /* 0x690 */ u8 field_0x690;
    /* 0x691 */ u8 mPrm1;
    /* 0x692 */ u8 mPrm2;
    /* 0x694 */ s16 mRotation;
    /* 0x696 */ s16 field_0x696;
    /* 0x698 */ s16 mHeadAngle;
    /* 0x69C */ s32 field_0x69c;
    /* 0x6A0 */ u8 mPrm0;
    /* 0x6A4 */ dBgS_AcchCir mAcchCir;
    /* 0x6E4 */ dBgS_ObjAcch mObjAcch;
    /* 0x8BC */ dCcD_Stts mStts;
    /* 0x8F8 */ dCcD_Sph mSphere;
    /* 0xA30 */ dCcD_Sph mSphere2;
    /* 0xB68 */ dCcD_Sph mAtSph;
    /* 0xCA0 */ dCcU_AtInfo mAtInfo;
    /* 0xCC4 */ u8 field_0xCC4[0xCD8 - 0xCC4];
    /* 0xCD8 */ u16 field_0xcd8[3];  // This might be incorrect
    /* 0xCDE */ u8 field_0xCDE[0xCE0 - 0xCDE];
    /* 0xCE0 */ u8 mHIOInit;
    /* 0xCE1 */ u8 field_0xce1[0xce8 - 0xce1];
};

STATIC_ASSERT(sizeof(daE_FB_c) == 0xce8);

class daE_FB_HIO_c : public JORReflexible {
public:
    /* 806B64AC */ daE_FB_HIO_c();
    /* 806B8EE4 */ virtual ~daE_FB_HIO_c();

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 model_size;
    /* 0x0C */ f32 player_detection_range;
    /* 0x10 */ s16 next_attack_waiting_time;
    /* 0x12 */ s16 maximum_rotation_width;
    /* 0x14 */ s16 minimum_turning_range;
    /* 0x16 */ s16 rotation_width_stairs;  // ""Rotation width (speed) for stairs""
    /* 0x18 */ s16 color_register_1r;
    /* 0x1A */ s16 color_register_1g;
    /* 0x1C */ s16 color_register_1b;
    /* 0x1E */ s16 color_register_1a;
    /* 0x20 */ s16 maximum_rotation_width_2;
};

#endif /* D_A_E_FB_H */
