#ifndef D_A_OBJ_SWBALLB_H
#define D_A_OBJ_SWBALLB_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjSwBallB_c {
public:
    /* 80CF466C */ void checkArea_sub(fopAc_ac_c*);
    /* 80CF47BC */ void search_ball();
    /* 80CF496C */ void initBaseMtx();
    /* 80CF498C */ void setBaseMtx();
    /* 80CF49F0 */ void Create();
    /* 80CF4B74 */ void CreateHeap();
    /* 80CF4CE8 */ void create();
    /* 80CF4E08 */ void execute();
    /* 80CF4EB8 */ void actionRun();
    /* 80CF5384 */ void actionStop();
    /* 80CF5388 */ void PutCrrPos();
    /* 80CF56A4 */ void draw();
    /* 80CF582C */ void _delete();
    /* 80CF5940 */ ~daObjSwBallB_c();

    s32 getID() { return fopAcM_GetParamBit(this,0,8); }
};

#endif /* D_A_OBJ_SWBALLB_H */
