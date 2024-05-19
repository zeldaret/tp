#ifndef D_A_OBJ_ZRAMARK_H
#define D_A_OBJ_ZRAMARK_H

#include "f_op/f_op_actor_mng.h"

class daObjZraMark_c : public fopAc_ac_c {
public:
    /* 80D42678 */ void Create();
    /* 80D4287C */ void CreateHeap();
    /* 80D42A7C */ void Execute();
    /* 80D42B0C */ void Draw();
    /* 80D42C98 */ void Delete();
    /* 80D42CE0 */ void getType();
    /* 80D42D2C */ void setBaseMtx();
    /* 80D42EE0 */ void col_init();
    /* 80D42F5C */ void col_set();
    /* 80D432C8 */ void schHoz();
    /* 80D43314 */ void entryPointer(fopAc_ac_c*);
    /* 80D43370 */ void informBlast();

    u8 getMarkNo() { return fopAcM_GetParam(this) & 0xff; }
};

#endif /* D_A_OBJ_ZRAMARK_H */
