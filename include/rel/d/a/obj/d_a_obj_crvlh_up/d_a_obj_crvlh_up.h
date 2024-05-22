#ifndef D_A_OBJ_CRVLH_UP_H
#define D_A_OBJ_CRVLH_UP_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjCRVLH_UP_c : public fopAc_ac_c {
public:
    /* 80BD4F1C */ void HakaiSet();
    /* 80BD4FB0 */ void UpMotion();
    /* 80BD4FD8 */ void Hakai();
    /* 80BD5254 */ void setBaseMtx();
    /* 80BD5378 */ void CreateHeap();
    /* 80BD53F0 */ void create();
    /* 80BD56EC */ void Create();
    /* 80BD5730 */ void Execute(f32 (**)[3][4]);
    /* 80BD593C */ void Draw();
    /* 80BD59C0 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x770 - 0x568];
};
STATIC_ASSERT(sizeof(daObjCRVLH_UP_c) == 0x770);


#endif /* D_A_OBJ_CRVLH_UP_H */
