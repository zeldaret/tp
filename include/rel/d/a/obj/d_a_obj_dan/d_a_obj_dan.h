#ifndef D_A_OBJ_DAN_H
#define D_A_OBJ_DAN_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjDAN_c
 * @brief Insect - Pillbug
 *
 * @details
 *
 */
class daObjDAN_c : public fopAc_ac_c {
public:
    /* 80BDA5B4 */ void InitCcSph();
    /* 80BDA620 */ void SetCcSph();
    /* 80BDA698 */ void CreateHeap();
    /* 80BDAA3C */ void SpeedSet();
    /* 80BDAA9C */ void LinkChk();
    /* 80BDAB14 */ void MoveAction();
    /* 80BDAC10 */ void DamageAction();
    /* 80BDAFDC */ void Action();
    /* 80BDB074 */ void checkGroundPos();
    /* 80BDB0D8 */ void Insect_Release();
    /* 80BDB0E8 */ void Z_BufferChk();
    /* 80BDB264 */ void ParticleSet();
    /* 80BDB388 */ void ObjHit();
    /* 80BDB4E0 */ void BoomChk();
    /* 80BDB62C */ void Execute();
    /* 80BDB928 */ void Delete();
    /* 80BDB990 */ void setBaseMtx();
    /* 80BDBB0C */ void CreateChk();
    /* 80BDBCB8 */ void create();

private:
    /* 0x568 */ u8 field_0x568[0xa6c - 0x568];
};
STATIC_ASSERT(sizeof(daObjDAN_c) == 0xa6c);


class daObj_DanHIO_c {
public:
    /* 80BDA58C */ daObj_DanHIO_c();
    /* 80BDC2F0 */ ~daObj_DanHIO_c();
};

#endif /* D_A_OBJ_DAN_H */
