#ifndef D_A_E_SB_H
#define D_A_E_SB_H
#include "f_op/f_op_actor_mng.h"

class daE_SB_c : public fopEn_enemy_c {
    /* 807816D8 */ void CreateHeap();
    /* 807817F0 */ void initCcCylinder();
    /* 80781850 */ void setCcCylinder();
    /* 80781898 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 807819DC */ void Particle_Set(u16);
    /* 80781A4C */ void SetAnm(int, int, f32, f32);
    /* 80781AF8 */ void MemberClear();
    /* 80781DD4 */ void Shield_Motion();
    /* 80781F30 */ void AttackStop();
    /* 80781F80 */ void AttackSetSP();
    /* 80782180 */ void AttackAngle();
    /* 80782264 */ void AttackSpeedMotion();
    /* 807822B8 */ void Attack_Motion();
    /* 80782650 */ void Bomb_Death_Motion();
    /* 80782714 */ void BombJumpSet();
    /* 8078273C */ void GetHomeSet();
    /* 8078294C */ void HomeJumpMotion();
    /* 807829E8 */ void Jump_Normal_Set();
    /* 80782B7C */ void Jump_Set();
    /* 80782BD4 */ void JumpMiddleMotion();
    /* 80782CC8 */ void Jump_Motion();
    /* 80782E90 */ void Death_Motion();
    /* 80782ED4 */ void Hanekaeri();
    /* 80782EF4 */ void Hit();
    /* 80782F10 */ void ActionCheck();
    /* 80783010 */ void Search();
    /* 80783404 */ void Wait_Motion();
    /* 807834FC */ void Attack();
    /* 807835A0 */ void Shield();
    /* 80783678 */ void Anm_Motion();
    /* 80783854 */ void Search_Bomb();
    /* 80783914 */ void ChanceMotion();
    /* 80783A9C */ void NoChanceMotion();
    /* 80783B4C */ void Obj_Damage();
    /* 80783FBC */ void HashiraVib();
    /* 80784144 */ void Yazirushi();
    /* 807841CC */ void setGroundAngle();
    /* 80784390 */ void Execute();
    /* 807844BC */ void Draw();
    /* 807845D8 */ void Delete();
    /* 80784640 */ void setBaseMtx();
    /* 80784720 */ void Create();
private:
    /* 0x5ac */ u8 field_0x5ac[0xbc0 - 0x5ac];
};
STATIC_ASSERT(sizeof(daE_SB_c) == 0xbc0);

class daE_SB_HIO_c {
    /* 8078164C */ daE_SB_HIO_c();
    /* 80784CC0 */ ~daE_SB_HIO_c();
};


#endif /* D_A_E_SB_H */
