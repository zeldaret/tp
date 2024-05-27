#ifndef D_A_OBJ_LV6CHANGEGATE_H
#define D_A_OBJ_LV6CHANGEGATE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv6ChangeGate_c
 * @brief Temple of Time Change Block?
 *
 * @details
 *
 */
class daLv6ChangeGate_c : public fopAc_ac_c {
public:
    /* 80C70D38 */ void setBaseMtx();
    /* 80C70DD4 */ void CreateHeap();
    /* 80C70E40 */ void create();
    /* 80C712A8 */ void isSwitch();
    /* 80C712F4 */ void Execute(f32 (**)[3][4]);
    /* 80C71494 */ void moveGate();
    /* 80C715BC */ void eventStart();
    /* 80C715F4 */ void init_modeWait();
    /* 80C71600 */ void modeWait();
    /* 80C71604 */ void init_modeSlideRight();
    /* 80C716B4 */ void modeSlideRight();
    /* 80C7183C */ void init_modeSlideLeft();
    /* 80C718EC */ void modeSlideLeft();
    /* 80C71A74 */ void init_modeBreak();
    /* 80C71AF8 */ void modeBreak();
    /* 80C71D40 */ void Draw();
    /* 80C71DE4 */ void Delete();
    /* 80C72034 */ ~daLv6ChangeGate_c();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x14dc - 0x568];
};
STATIC_ASSERT(sizeof(daLv6ChangeGate_c) == 0x14dc);

class daLv6ChangeGate_HIO_c {
public:
    /* 80C70C4C */ daLv6ChangeGate_HIO_c();
    /* 80C71EE8 */ ~daLv6ChangeGate_HIO_c();
};


#endif /* D_A_OBJ_LV6CHANGEGATE_H */
