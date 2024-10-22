#ifndef D_A_OBJ_SMW_STONE_H
#define D_A_OBJ_SMW_STONE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daSmWStone_c
 * @brief Howling Stone
 *
 * @details
 *
 */
class daSmWStone_c : public fopAc_ac_c {
public:
    /* 80CDE538 */ daSmWStone_c();
    /* 80CDE588 */ ~daSmWStone_c();
    /* 80CDE614 */ void create();
    /* 80CDE8D8 */ void execute();
    /* 80CDE92C */ void draw();
    /* 80CDEA2C */ void Delete();
    /* 80CDEAA4 */ void exeModeHowl();
    /* 80CDEBA0 */ void setModelMtx();
    /* 80CDEC04 */ void createHeap();
    /* 80CDED30 */ void init();
    /* 80CDED9C */ void chkWlfInRange();

    int getTuneId() { return 2; }

private:
    /* 0x568 */ u8 field_0x568[0x5c8 - 0x568];
};

STATIC_ASSERT(sizeof(daSmWStone_c) == 0x5c8);

#endif /* D_A_OBJ_SMW_STONE_H */
