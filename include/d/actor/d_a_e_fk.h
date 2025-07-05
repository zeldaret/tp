#ifndef D_A_E_FK_H
#define D_A_E_FK_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_FK_c
 * @brief Phantom Rider
 * 
 * @details 
 * 
 */
class daE_FK_c : public fopEn_enemy_c {
public:
    /* 806B93CC */ void CreateHeap();
    /* 806B9534 */ void initBodySph();
    /* 806B95BC */ void initSwordSph();
    /* 806B9670 */ void SetBodySph();
    /* 806B97A4 */ void SetSwordSph();
    /* 806B98C4 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806B9A28 */ void SetAnm(int, int, f32, f32);
    /* 806B9AD8 */ void Yazirushi();
    /* 806B9B2C */ void SpeedSet();
    /* 806B9BB4 */ void TnNeckSet(s16);
    /* 806B9C14 */ void HsAngleSet();
    /* 806B9C18 */ void SpeedChk();
    /* 806B9C1C */ void SetAnmSpeed();
    /* 806B9C20 */ void TgChk();
    /* 806B9D00 */ void AtChk();
    /* 806B9D7C */ void OnAt();
    /* 806B9DA4 */ void R_MoveAction();
    /* 806B9E6C */ void StartAction();
    /* 806B9F20 */ void RunAction();
    /* 806BA004 */ void Action();
    /* 806BA024 */ void DeathAction();
    /* 806BA188 */ void DamageChk();
    /* 806BA24C */ void DamageAction();
    /* 806BA330 */ void checkViewArea();
    /* 806BA3B4 */ void AttackAction();
    /* 806BA61C */ void UpDown();
    /* 806BA6EC */ void Execute();
    /* 806BABB8 */ void At_Check(int);
    /* 806BACEC */ void Draw();
    /* 806BADB4 */ void Delete();
    /* 806BAE1C */ void setBaseMtx();
    /* 806BAEB0 */ void setEfMtx();
    /* 806BAF74 */ void CreateChk();
    /* 806BB004 */ void Create();
private:
    /* 0x5AC */ u8 field_0x5AC[0x5B1 - 0x5AC];
    /* 0x5B1 */ u8 field_0x5b1;
    /* 0x5B2 */ u8 field_0x5B2[0x5B6 - 0x5B2];
    /* 0x5B6 */ s16 field_0x5b6[2];
    /* 0x5BA */ u8 field_0x5BA[0x5C0 - 0x5BA];
    /* 0x5C0 */ s32 field_0x5c0;
    /* 0x5C4 */ s16 field_0x5c4[4];
    /* 0x5CC */ f32 field_0x5cc;
    /* 0x5D0 */ s16 field_0x5d0;
    /* 0x5D2 */ s16 field_0x5d2;
    /* 0x5D4 */ s16 field_0x5d4;
    /* 0x5D6 */ u8 field_0x5D6[0x5D8 - 0x5D6];
    /* 0x5D8 */ s16 field_0x5d8;
    /* 0x5DC */ f32 field_0x5dc;
    /* 0x5E0 */ u8 field_0x5E0[0x5E4 - 0x5E0];
    /* 0x5E4 */ f32 field_0x5e4;
    /* 0x5E8 */ f32 field_0x5e8;
    /* 0x5EC */ u8 field_0x5EC[0x604 - 0x5EC];
    /* 0x604 */ f32 field_0x604;
    /* 0x608 */ u8 field_0x608[0x60C - 0x608];
    /* 0x60C */ f32 field_0x60c;
    /* 0x610 */ u8 field_0x610[0x615 - 0x610];
    /* 0x615 */ u8 field_0x615;
    /* 0x616 */ u8 field_0x616;
    /* 0x617 */ u8 field_0x617[0x618 - 0x617];
    /* 0x618 */ dCcD_Sph mBodySpheres[2];
    /* 0x888 */ dCcD_Sph mSwordSpheres[3];
    /* 0xC30 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0xC34 */ mDoExt_invisibleModel mInvisibleModel;
    /* 0xC3C */ J3DModel* mpModel;
    /* 0xC40 */ request_of_phase_process_class mPhaseReq;
    /* 0xC48 */ u8 field_0xC48[0xC4C - 0xC48];
    /* 0xC4C */ Z2CreatureEnemy mCreatureSound;
    /* 0xCF0 */ dBgS_AcchCir mAcchCir;
    /* 0xD30 */ dBgS_ObjAcch mObjAcch;
    /* 0xF08 */ dCcD_Stts mStts;
    /* 0xF44 */ dCcU_AtInfo mAtInfo;
    /* 0xF68 */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(daE_FK_c) == 0xf6c);

class daE_FK_HIO_c : public JORReflexible {
public:
    /* 806B938C */ daE_FK_HIO_c();
    /* 806BB594 */ virtual ~daE_FK_HIO_c();

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 model_size;
    /* 0x0C */ f32 alpha; // "α"
    /* 0x10 */ s16 effect_alpha; // "Effectα"
    /* 0x12 */ s16 generation_time;
};


#endif /* D_A_E_FK_H */
