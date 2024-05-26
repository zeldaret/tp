#ifndef D_A_OBJ_SZBRIDGE_H
#define D_A_OBJ_SZBRIDGE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjSZbridge_c : public fopAc_ac_c {
public:
    /* 80D04360 */ void rideActor(fopAc_ac_c*);
    /* 80D04424 */ void create1st();
    /* 80D044B8 */ void setMtx();
    /* 80D04528 */ void CreateHeap();
    /* 80D04598 */ void chkBg();
    /* 80D048C4 */ void Create();
    /* 80D04974 */ void Execute(f32 (**)[3][4]);
    /* 80D049E4 */ void Draw();
    /* 80D04A88 */ void Delete();
    /* 80D04B90 */ ~daObjSZbridge_c();

private:
    /* 0x568 */ u8 field_0x568[0x624 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSZbridge_c) == 0x624);


#endif /* D_A_OBJ_SZBRIDGE_H */
