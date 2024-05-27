#ifndef D_A_OBJ_TEN_H
#define D_A_OBJ_TEN_H

#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjTEN_c
 * @brief Insect - Ladybug
 *
 * @details
 *
 */
class daObjTEN_c : public fopAc_ac_c {
public:
    /* 80D087F4 */ void InitCcSph();
    /* 80D08860 */ void SetCcSph();
    /* 80D08C10 */ void WaitAction();
    /* 80D08D94 */ void WallCheck();
    /* 80D09008 */ void SpeedSet();
    /* 80D09114 */ void WallWalk();
    /* 80D09548 */ void WalkAction();
    /* 80D09748 */ void MoveAction();
    /* 80D09F58 */ void Action();
    /* 80D0A01C */ void ShopAction();
    /* 80D0A0D8 */ void checkGroundPos();
    /* 80D0A13C */ void Insect_Release();
    /* 80D0A154 */ void ParticleSet();
    /* 80D0A278 */ void BoomChk();
    /* 80D0A644 */ void Execute();
    /* 80D0A8C8 */ void ObjHit();
    /* 80D0AA50 */ void Z_BufferChk();
    /* 80D0ABCC */ void Delete();
    /* 80D0AC34 */ void setBaseMtx();
    /* 80D0AD9C */ void CreateChk();
    /* 80D0AF48 */ void create();

private:
    /* 0x568 */ u8 field_0x568[0xa68 - 0x568];
};
STATIC_ASSERT(sizeof(daObjTEN_c) == 0xa68);

class daObj_TenHIO_c {
public:
    /* 80D087CC */ daObj_TenHIO_c();
    /* 80D0B848 */ ~daObj_TenHIO_c();
};


#endif /* D_A_OBJ_TEN_H */
