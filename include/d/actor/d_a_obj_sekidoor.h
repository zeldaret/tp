#ifndef D_A_OBJ_SEKIDOOR_H
#define D_A_OBJ_SEKIDOOR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_SekiDoor_c
 * @brief Stone Door
 *
 * @details
 *
 */
class daObj_SekiDoor_c : public fopAc_ac_c {
public:
    /* 80CCD02C */ void create();
    /* 80CCD154 */ void CreateHeap();
    /* 80CCD1F0 */ void Create();
    /* 80CCD23C */ void Delete();
    /* 80CCD290 */ void Execute(f32 (**)[3][4]);
    /* 80CCD538 */ void Draw();
    /* 80CCD5DC */ void evtSkip();
    /* 80CCD64C */ void setPrtcls();
    /* 80CCD810 */ void initBaseMtx();
    /* 80CCD84C */ void setBaseMtx();

private:
    /* 0x568 */ u8 field_0x568[0x5d8 - 0x568];
};

STATIC_ASSERT(sizeof(daObj_SekiDoor_c) == 0x5d8);

class daObj_SekiDoor_Param_c {
public:
    /* 80CCD9AC */ ~daObj_SekiDoor_Param_c();

    static u8 const m[1 + 3 /* padding */];
};


#endif /* D_A_OBJ_SEKIDOOR_H */
