#ifndef D_A_OBJ_ARI_H
#define D_A_OBJ_ARI_H

#include "f_op/f_op_actor_mng.h"

class daObj_AriHIO_c {
    /* 80BA268C */ daObj_AriHIO_c();
    /* 80BA5360 */ ~daObj_AriHIO_c();
};

class daObjARI_c : public fopAc_ac_c {
    /* 80BA26BC */ void InitCcSph();
    /* 80BA2728 */ void SetCcSph();
    /* 80BA2780 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80BA28C0 */ void CreateHeap();
    /* 80BA2CA4 */ void WallWalk();
    /* 80BA3270 */ void MoveAction();
    /* 80BA337C */ void Action();
    /* 80BA33F8 */ void Insect_Release();
    /* 80BA3408 */ void checkGround();
    /* 80BA3638 */ void B_MoveAction();
    /* 80BA36CC */ void FallAction();
    /* 80BA3700 */ void ParticleSet();
    /* 80BA3824 */ void BoomChk();
    /* 80BA3B38 */ void ObjHit();
    /* 80BA3C38 */ void Execute();
    /* 80BA44F0 */ void Z_BufferChk();
    /* 80BA466C */ void Delete();
    /* 80BA46D4 */ void setBaseMtx();
    /* 80BA483C */ void CreateChk();
    /* 80BA49E8 */ void create();
private:
    /* 0x568 */ u8 field_0x568[0xa78 - 0x568];
};
STATIC_ASSERT(sizeof(daObjARI_c) == 0xa78);


#endif /* D_A_OBJ_ARI_H */
