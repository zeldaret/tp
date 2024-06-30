#ifndef D_A_OBJ_LV4EDSHUTTER_H
#define D_A_OBJ_LV4EDSHUTTER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv4EdShutter_c
 * @brief Arbiter's Grounds Death Sword Gate
 *
 * @details
 *
 */
class daLv4EdShutter_c : public fopAc_ac_c {
public:
    /* 80C5DE38 */ void setBaseMtx();
    /* 80C5DEC8 */ void CreateHeap();
    /* 80C5DF34 */ void create();
    /* 80C5E0A4 */ void Execute(f32 (**)[3][4]);
    /* 80C5E0F4 */ void move();
    /* 80C5E1B0 */ void init_modeWait();
    /* 80C5E1C8 */ void modeWait();
    /* 80C5E2E0 */ void init_modeOpen();
    /* 80C5E394 */ void modeOpen();
    /* 80C5E464 */ void init_modeClose();
    /* 80C5E518 */ void modeClose();
    /* 80C5E584 */ void init_modeEnd();
    /* 80C5E590 */ void modeEnd();
    /* 80C5E594 */ void eventStart();
    /* 80C5E5CC */ void Draw();
    /* 80C5E670 */ void Delete();
    /* 80C5E834 */ ~daLv4EdShutter_c();

    u8 getStatus() { return mStatus; }

private:
    /* 0x568 */ u8 field_0x568[0x5CA - 0x568];
    /* 0x5CA */ u8 mStatus;
    /* 0x5CB */ u8 field_0x56B[0x5DC - 0x5CB];
};

STATIC_ASSERT(sizeof(daLv4EdShutter_c) == 0x5dc);

class daLv4EdShutter_HIO_c {
public:
    /* 80C5DDAC */ daLv4EdShutter_HIO_c();
    /* 80C5E72C */ ~daLv4EdShutter_HIO_c();
};


#endif /* D_A_OBJ_LV4EDSHUTTER_H */
