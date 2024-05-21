#ifndef D_A_E_AI_H
#define D_A_E_AI_H
#include "f_op/f_op_actor_mng.h"

class e_ai_class : public fopEn_enemy_c {
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
    /* 0x5ac */ u8 field_0x5ac[0xd44 - 0x5ac];
};
STATIC_ASSERT(sizeof(e_ai_class) == 0xd44);

class daE_AI_HIO_c {
    /* 8067916C */ daE_AI_HIO_c();
    /* 8067BF40 */ ~daE_AI_HIO_c();
};


#endif /* D_A_E_AI_H */
