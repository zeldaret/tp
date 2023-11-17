#ifndef D_A_TAG_KMSG_H
#define D_A_TAG_KMSG_H

#include "f_op/f_op_actor_mng.h"

struct daTag_KMsg_c : public fopAc_ac_c {
public:
    /* 8048DE78 */ void create();
    /* 8048DFDC */ void Delete();
    /* 8048E010 */ void Execute();
    /* 8048E8B8 */ bool Draw();
    /* 8048E8C0 */ void isDelete();
    /* 8048EA30 */ ~daTag_KMsg_c();

    void stabMasterSword() { field_0x5c2 = 1; }

    /* 0x568 */ u8 field_0x568[0x5C2 - 0x568];
    /* 0x5C2 */ u8 field_0x5c2;
};

#endif /* D_A_TAG_KMSG_H */
