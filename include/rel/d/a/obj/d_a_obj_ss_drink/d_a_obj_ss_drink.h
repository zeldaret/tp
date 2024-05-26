#ifndef D_A_OBJ_SS_DRINK_H
#define D_A_OBJ_SS_DRINK_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObj_SSDrink_c : public fopAc_ac_c {
public:
    /* 80CE4F78 */ ~daObj_SSDrink_c();
    /* 80CE51C8 */ void create();
    /* 80CE53EC */ void CreateHeap();
    /* 80CE55F0 */ void Delete();
    /* 80CE5624 */ void Execute();
    /* 80CE5858 */ void Draw();
    /* 80CE59DC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80CE59FC */ void setSoldOut();
    /* 80CE5A50 */ void getResName();
    /* 80CE5A60 */ void getTypeFromParam();
    /* 80CE5B0C */ void getSwitchFromParam();
    /* 80CE5B18 */ void getCapacityFromParam();
    /* 80CE5B3C */ void getFlowNodeNum();
    /* 80CE5B74 */ void getValue();
    /* 80CE5B80 */ void restart();
    /* 80CE5BF0 */ void initialize();
    /* 80CE5DB0 */ void checkProcess(int (daObj_SSDrink_c::*)(void*));
    /* 80CE5DDC */ void setProcess(int (daObj_SSDrink_c::*)(void*));
    /* 80CE5EC8 */ void setParam();
    /* 80CE5FE4 */ void setEnvTevColor();
    /* 80CE6040 */ void setRoomNo();
    /* 80CE6084 */ void setMtx();
    /* 80CE60E8 */ void setAttnPos();
    /* 80CE6170 */ void animeEntry();
    /* 80CE61E4 */ void animePlay();
    /* 80CE622C */ void chkEvent();
    /* 80CE63AC */ void orderEvent();
    /* 80CE644C */ bool wait(void*);
    /* 80CE6454 */ void talk(void*);
    /* 80CE6514 */ void drink(void*);

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0xb10 - 0x568];
};
STATIC_ASSERT(sizeof(daObj_SSDrink_c) == 0xb10);


#endif /* D_A_OBJ_SS_DRINK_H */
