#ifndef D_A_OBJ_KAMAKIRI_H
#define D_A_OBJ_KAMAKIRI_H

#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjKAM_c
 * @brief Insect - Mantis
 *
 * @details
 *
 */
class daObjKAM_c : public fopAc_ac_c {
public:
    /* 80C351BC */ void InitCcSph();
    /* 80C35228 */ void SetCcSph();
    /* 80C352A0 */ void CreateHeap();
    /* 80C35684 */ void ShopWaitAction();
    /* 80C357EC */ void WaitAction();
    /* 80C35970 */ void WallCheck();
    /* 80C35BE4 */ void SpeedSet();
    /* 80C35CF0 */ void WallWalk();
    /* 80C36138 */ void WalkAction();
    /* 80C36338 */ void MoveAction();
    /* 80C36B20 */ void Action();
    /* 80C36BE4 */ void ShopAction();
    /* 80C36CA0 */ void Insect_Release();
    /* 80C36CB8 */ void Z_BufferChk();
    /* 80C36E34 */ void ParticleSet();
    /* 80C36F58 */ void BoomChk();
    /* 80C37324 */ void ObjHit();
    /* 80C374AC */ void Execute();
    /* 80C37724 */ void Delete();
    /* 80C3778C */ void setBaseMtx();
    /* 80C378F4 */ void CreateChk();
    /* 80C37AA0 */ void create();

private:
    /* 0x568 */ u8 field_0x568[0xa68 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKAM_c) == 0xa68);

class daObj_KamHIO_c {
public:
    /* 80C3518C */ daObj_KamHIO_c();
    /* 80C38360 */ ~daObj_KamHIO_c();
};


#endif /* D_A_OBJ_KAMAKIRI_H */
