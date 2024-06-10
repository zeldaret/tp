#ifndef D_A_E_FK_H
#define D_A_E_FK_H
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
    /* 0x5ac */ u8 field_0x5ac[0xf6c - 0x5ac];
};

STATIC_ASSERT(sizeof(daE_FK_c) == 0xf6c);

class daE_FK_HIO_c {
    /* 806B938C */ daE_FK_HIO_c();
    /* 806BB594 */ ~daE_FK_HIO_c();
};


#endif /* D_A_E_FK_H */
