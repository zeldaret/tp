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
    /* 806B93CC */ int CreateHeap();
    /* 806B9534 */ void initBodySph();
    /* 806B95BC */ void initSwordSph();
    /* 806B9670 */ void SetBodySph();
    /* 806B97A4 */ void SetSwordSph();
    /* 806B98C4 */ int ctrlJoint(J3DJoint*, J3DModel*);
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
    /* 806BA330 */ bool checkViewArea();
    /* 806BA3B4 */ void AttackAction();
    /* 806BA61C */ void UpDown();
    /* 806BA6EC */ int Execute();
    /* 806BABB8 */ void At_Check(int);
    /* 806BACEC */ int Draw();
    /* 806BADB4 */ int Delete();
    /* 806BAE1C */ void setBaseMtx();
    /* 806BAEB0 */ void setEfMtx();
    /* 806BAF74 */ void CreateChk();
    /* 806BB004 */ int Create();

private:
    /* 0x5AC */ u8 field_0x5AC[0x5B1 - 0x5AC];
    /* 0x5B1 */ u8 mUpDownMode;
    /* 0x5B2 */ u8 field_0x5B2[0x5B6 - 0x5B2];
    /* 0x5B6 */ s16 mCcTimer[2];
    /* 0x5BA */ u8 field_0x5BA[0x5C0 - 0x5BA];
    /* 0x5C0 */ int mAnm;
    /* 0x5C4 */ s16 mTimers[4];
    /* 0x5CC */ f32 mMaxSpeed;
    /* 0x5D0 */ s16 field_0x5d0;
    /* 0x5D2 */ s16 field_0x5d2;
    /* 0x5D4 */ s16 mHNeckRot;
    /* 0x5D6 */ u8 field_0x5D6[0x5D8 - 0x5D6];
    /* 0x5D8 */ s16 mKNeckRot;
    /* 0x5DC */ f32 field_0x5dc;
    /* 0x5E0 */ u8 field_0x5E0[0x5E4 - 0x5E0];
    /* 0x5E4 */ f32 mSize;
    /* 0x5E8 */ f32 field_0x5e8;
    /* 0x5EC */ u8 field_0x5EC[0x604 - 0x5EC];
    /* 0x604 */ f32 mAlpha;
    /* 0x608 */ u8 field_0x608[0x60C - 0x608];
    /* 0x60C */ f32 field_0x60c;
    /* 0x610 */ u8 field_0x610[0x615 - 0x610];
    /* 0x615 */ u8 mAction;
    /* 0x616 */ u8 mMode;
    /* 0x618 */ dCcD_Sph mCcBodySph[2];
    /* 0x888 */ dCcD_Sph mCcSwordSph[3];
    /* 0xC30 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0xC34 */ mDoExt_invisibleModel mInvisibleModel;
    /* 0xC3C */ J3DModel* mpEffModel;
    /* 0xC40 */ request_of_phase_process_class mPhase;
    /* 0xC48 */ u8 field_0xC48[0xC4C - 0xC48];
    /* 0xC4C */ Z2CreatureEnemy mSound;
    /* 0xCF0 */ dBgS_AcchCir mAcchCir;
    /* 0xD30 */ dBgS_ObjAcch mAcch;
    /* 0xF08 */ dCcD_Stts mCcStts;
    /* 0xF44 */ dCcU_AtInfo mAtInfo;
    /* 0xF68 */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(daE_FK_c) == 0xf6c);

#endif /* D_A_E_FK_H */
