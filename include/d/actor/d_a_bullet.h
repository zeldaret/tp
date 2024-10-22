#ifndef D_A_BULLET_H
#define D_A_BULLET_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-unsorted
 * @class daBullet_c
 * @brief Bullet (Unused?)
 *
 * @details
 *
 */
class daBullet_c : public fopEn_enemy_c {
public:
    /* 8065594C */ ~daBullet_c();
    /* 80655B08 */ void create();
    /* 80655E5C */ void CreateHeap();
    /* 80655EDC */ void Delete();
    /* 80655F10 */ void Execute();
    /* 806560FC */ void Draw();
    /* 80656160 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80656180 */ void getResName();
    /* 80656198 */ void getBmdName();
    /* 806561B0 */ void getTypeFromParam();
    /* 806561D0 */ void initialize();
    /* 80656378 */ void setProcess(int (daBullet_c::*)(void*));
    /* 80656420 */ void wait(void*);
    /* 806564B8 */ void move(void*);

    static u8 const mCcDObjInfo[48];
    static u8 mCcDSph[64];

private:
    /* 0x5ac */ u8 field_0x5ac[0x95c - 0x5ac];
};

STATIC_ASSERT(sizeof(daBullet_c) == 0x95c);

class daBullet_Param_c {
public:
    /* 806566A8 */ ~daBullet_Param_c();

    static u8 const m[24];
};


#endif /* D_A_BULLET_H */
