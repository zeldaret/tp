#ifndef D_A_OBJ_KANTERA_H
#define D_A_OBJ_KANTERA_H

#include "d/actor/d_a_itembase.h"

/**
 * @ingroup actors-objects
 * @class daItemKantera_c
 * @brief Lantern
 *
 * @details
 *
 */
class daItemKantera_c : public daItemBase_c {
public:
    /* 80C389BC */ void initBaseMtx();
    /* 80C389F8 */ void setBaseMtx();
    /* 80C38A64 */ int Create();
    /* 80C38BA8 */ int __CreateHeap();
    /* 80C38BB0 */ int create();
    /* 80C38F78 */ void bg_check();
    /* 80C39068 */ int actionInit();
    /* 80C390A0 */ int actionWaitInit();
    /* 80C3911C */ int actionWait();
    /* 80C39234 */ int initActionOrderGetDemo();
    /* 80C392D0 */ int actionOrderGetDemo();
    /* 80C3934C */ int actionGetDemo();
    /* 80C393B0 */ int execute();
    /* 80C394DC */ int draw();
    /* 80C39530 */ int _delete();

    void setStatus(u8 i_status) { mStatus = i_status; }

private:
    /* 0x92C */ u32 field_0x92c;
    /* 0x930 */ s32 field_0x930;
    /* 0x934 */ u8 mStatus;
    /* 0x935 */ u8 field_0x935;
    /* 0x936 */ u8 field_0x936;
    /* 0x937 */ u8 field_0x937;
    /* 0x938 */ s16 field_0x938;
    /* 0x93A */ s16 field_0x93a;
    /* 0x93C */ cXyz field_0x93c;
};

STATIC_ASSERT(sizeof(daItemKantera_c) == 0x948);

#endif /* D_A_OBJ_KANTERA_H */
