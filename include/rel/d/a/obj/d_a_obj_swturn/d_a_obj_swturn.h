#ifndef D_A_OBJ_SWTURN_H
#define D_A_OBJ_SWTURN_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjSwTurn_c : public fopAc_ac_c {
public:
    /* 80D00CD8 */ void initBaseMtx();
    /* 80D00D14 */ void setBaseMtx();
    /* 80D00D78 */ void Create();
    /* 80D00EE4 */ void CreateHeap();
    /* 80D00F64 */ void create1st();
    /* 80D01074 */ void Execute(f32 (**)[3][4]);
    /* 80D010D4 */ void mode_proc_call();
    /* 80D01160 */ void init_modeWait();
    /* 80D01198 */ void modeWait();
    /* 80D01770 */ void init_modeRotate();
    /* 80D018B4 */ void modeRotate();
    /* 80D01958 */ void rotate_sub_0();
    /* 80D01B60 */ void rotate_sub_1();
    /* 80D01EB0 */ void Draw();
    /* 80D01F58 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5e0 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSwTurn_c) == 0x5e0);


#endif /* D_A_OBJ_SWTURN_H */
