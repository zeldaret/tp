#ifndef D_A_OBJ_SWBALLA_H
#define D_A_OBJ_SWBALLA_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjSwBallA_c {
public:
    /* 80CF3394 */ void checkArea_sub(fopAc_ac_c*);
    /* 80CF34E4 */ void search_ball();
    /* 80CF3610 */ void initBaseMtx();
    /* 80CF3630 */ void setBaseMtx();
    /* 80CF3694 */ void Create();
    /* 80CF37FC */ void CreateHeap();
    /* 80CF3970 */ void create();
    /* 80CF3A90 */ void execute();
    /* 80CF3B40 */ void actionRun();
    /* 80CF3D80 */ void actionStop();
    /* 80CF3D84 */ void PutCrrPos();
    /* 80CF406C */ void draw();
    /* 80CF41F4 */ void _delete();
    /* 80CF4354 */ ~daObjSwBallA_c();

    u32 getSwbit() { return fopAcM_GetParamBit(this,0x10,8); }
};

#endif /* D_A_OBJ_SWBALLA_H */
