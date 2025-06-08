#ifndef D_A_E_GI_H
#define D_A_E_GI_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_GI_c
 * @brief Gibdo
 * 
 * @details 
 * 
 */
class daE_GI_c : public fopEn_enemy_c {
public:
    /* 806CD4F4 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806CD594 */ void JointCallBack(J3DJoint*, int);
    /* 806CD5E0 */ void draw();
    /* 806CD868 */ void setBck(int, u8, f32, f32);
    /* 806CD90C */ void setActionMode(int, int);
    /* 806CD938 */ void damage_check();
    /* 806CDD1C */ void setWeaponAtBit(u8);
    /* 806CDD8C */ void setCryStop();
    /* 806CDED8 */ void setAttackEffect();
    /* 806CDFB0 */ void setDragSwordEffect();
    /* 806CE0D4 */ void setDeathSmokeEffect();
    /* 806CE184 */ void setDamageEffect();
    /* 806CE3C4 */ void executeSleep();
    /* 806CE6AC */ void executeWait();
    /* 806CE858 */ void executeChase();
    /* 806CEC94 */ void executeAttack();
    /* 806CF0B8 */ void executeDamage();
    /* 806CF410 */ void executeBiteDamage();
    /* 806CF720 */ void PushButtonCount();
    /* 806CF878 */ void action();
    /* 806CFB60 */ void mtx_set();
    /* 806CFBF0 */ void cc_set();
    /* 806CFDF4 */ void execute();
    /* 806D0054 */ void _delete();
    /* 806D00E8 */ void CreateHeap();
    /* 806D027C */ void create();
    
private:
    /* 0x05AC */ request_of_phase_process_class mPhaseReq;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x05B8 */ J3DModel* mpModel;
    /* 0x05BC */ Z2CreatureEnemy mCreatureSound;
    /* 0x0660 */ f32 field_0x0660;
    /* 0x0664 */ f32 field_0x0664;
    /* 0x0668 */ f32 field_0x0668;
    /* 0x066C */ s16 field_0x066c;
    /* 0x066E */ u8 field_0x066E[0x0670 - 0x066E];
    /* 0x0670 */ s32 mActionMode;
    /* 0x0674 */ s32 mMoveMode;
    /* 0x0678 */ u32 mShadowKey;
    /* 0x067C */ u8 field_0x067C[0x067E - 0x067C];
    /* 0x067E */ s16 field_0x067e;
    /* 0x0680 */ s32 field_0x0680;
    /* 0x0684 */ s32 field_0x0684;
    /* 0x0688 */ s32 field_0x0688;
    /* 0x068C */ s32 field_0x068c;
    /* 0x0690 */ s32 field_0x0690;
    /* 0x0694 */ s32 field_0x0694;
    /* 0x0698 */ u8 field_0x0698;
    /* 0x0699 */ u8 field_0x0699;
    /* 0x069A */ u8 field_0x069a;
    /* 0x069B */ u8 field_0x069b;
    /* 0x069C */ u8 field_0x069c;
    /* 0x069D */ u8 field_0x069d;
    /* 0x069E */ u8 field_0x069e;
    /* 0x069F */ u8 field_0x069f;
    /* 0x06A0 */ u8 field_0x06a0;
    /* 0x06A1 */ u8 field_0x06A1[0x06A2 - 0x06A1];
    /* 0x06A2 */ s16 field_0x06a2;
    /* 0x06A4 */ u8 field_0x06a4;
    /* 0x06A5 */ u8 field_0x06a5;
    /* 0x06A6 */ s16 field_0x06a6;
    /* 0x06A8 */ s32 field_0x06a8;
    /* 0x06AC */ dBgS_AcchCir mAcchCir;
    /* 0x06EC */ dBgS_ObjAcch mObjAcch;
    /* 0x08C4 */ dCcD_Stts mStts;
    /* 0x0900 */ dCcD_Sph mSpheres[2];
    /* 0x0B70 */ dCcD_Sph mAttSpheres[4];
    /* 0x1050 */ dCcU_AtInfo mAtInfo;
    /* 0x1074 */ u32 mPolyColorKey;
    /* 0x1078 */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(daE_GI_c) == 0x107c);

class daE_GI_HIO_c : public JORReflexible {
public:
    /* 806CD48C */ daE_GI_HIO_c();
    /* 806D098C */ virtual ~daE_GI_HIO_c();

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 model_size;
    /* 0x0C */ f32 move_speed;
    /* 0x10 */ f32 player_detect_range;
    /* 0x14 */ f32 player_attack_distance;
    /* 0x18 */ f32 attack_angle;
    /* 0x1C */ f32 link_down_time;
    /* 0x20 */ f32 wolf_stop_time;
    /* 0x24 */ f32 scream_prevention_time;
    /* 0x28 */ f32 lever_spin_time;
};


#endif /* D_A_E_GI_H */
