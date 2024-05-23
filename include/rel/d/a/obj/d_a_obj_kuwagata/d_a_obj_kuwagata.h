#ifndef D_A_OBJ_KUWAGATA_H
#define D_A_OBJ_KUWAGATA_H

#include "f_op/f_op_actor_mng.h"

class daObj_KuwHIO_c {
public:
    /* 80C4A1EC */ daObj_KuwHIO_c();
    /* 80C4D3E8 */ ~daObj_KuwHIO_c();
};

class daObjKUW_c : public fopAc_ac_c {
public:
    /* 80C4A21C */ void InitCcSph();
    /* 80C4A288 */ void SetCcSph();
    /* 80C4A300 */ void CreateHeap();
    /* 80C4A6E4 */ void ShopWaitAction();
    /* 80C4A84C */ void WaitAction();
    /* 80C4A9D0 */ void WallCheck();
    /* 80C4AC44 */ void SpeedSet();
    /* 80C4AD50 */ void WallWalk();
    /* 80C4B1A0 */ void WalkAction();
    /* 80C4B3A0 */ void MoveAction();
    /* 80C4BB88 */ void Action();
    /* 80C4BC4C */ void ShopAction();
    /* 80C4BD08 */ void Insect_Release();
    /* 80C4BD20 */ void Z_BufferChk();
    /* 80C4BE9C */ void ParticleSet();
    /* 80C4BFC0 */ void BoomChk();
    /* 80C4C38C */ void ObjHit();
    /* 80C4C514 */ void Execute();
    /* 80C4C78C */ void Delete();
    /* 80C4C7F4 */ void setBaseMtx();
    /* 80C4C95C */ void CreateChk();
    /* 80C4CB08 */ void create();

private:
    /* 0x568 */ u8 field_0x568[0xa68 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKUW_c) == 0xa68);


#endif /* D_A_OBJ_KUWAGATA_H */
