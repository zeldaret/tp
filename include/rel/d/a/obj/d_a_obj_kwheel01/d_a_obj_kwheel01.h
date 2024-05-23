#ifndef D_A_OBJ_KWHEEL01_H
#define D_A_OBJ_KWHEEL01_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjKWheel01_c : public fopAc_ac_c {
public:
    /* 80C4EA78 */ void create1st();
    /* 80C4EC54 */ void setMtx();
    /* 80C4EDCC */ void CreateHeap();
    /* 80C4EF38 */ void Create();
    /* 80C4F048 */ void Execute(f32 (**)[3][4]);
    /* 80C4F344 */ void Draw();
    /* 80C4F3E8 */ void Delete();
    /* 80C4F498 */ void eventStart();
    /* 80C4F60C */ ~daObjKWheel01_c();

private:
    /* 0x568 */ u8 field_0x568[0x704 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKWheel01_c) == 0x704);


#endif /* D_A_OBJ_KWHEEL01_H */
