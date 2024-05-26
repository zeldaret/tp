#ifndef D_A_OBJ_SM_DOOR_H
#define D_A_OBJ_SM_DOOR_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjSM_DOOR_c : public fopAc_ac_c {
public:
    /* 80CD8784 */ void ChangeModel();
    /* 80CD8790 */ void Action();
    /* 80CD8A40 */ void SetDzb();
    /* 80CD8A90 */ void ReleaceDzb();
    /* 80CD8AF8 */ void DrawChk1();
    /* 80CD8BBC */ void DrawChk2();
    /* 80CD8C80 */ void setBaseMtx();
    /* 80CD8D4C */ void create();
    /* 80CD90A4 */ void CreateHeap();
    /* 80CD9258 */ void Create();
    /* 80CD929C */ void Execute(f32 (**)[3][4]);
    /* 80CD930C */ void Draw();
    /* 80CD9544 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x858 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSM_DOOR_c) == 0x858);


#endif /* D_A_OBJ_SM_DOOR_H */
