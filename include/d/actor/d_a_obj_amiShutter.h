#ifndef D_A_OBJ_AMISHUTTER_H
#define D_A_OBJ_AMISHUTTER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daAmiShutter_c
 * @brief Drain Gate
 *
 * @details
 *
 */
class daAmiShutter_c : public fopAc_ac_c {
public:
    /* 80BA155C */ void setBaseMtx();
    /* 80BA15E4 */ void CreateHeap();
    /* 80BA1650 */ void create();
    /* 80BA182C */ void Execute(f32 (**)[3][4]);
    /* 80BA1888 */ void moveShutter();
    /* 80BA1974 */ void playerAreaCheck();
    /* 80BA1B4C */ void init_modeWait();
    /* 80BA1B58 */ void modeWait();
    /* 80BA1BCC */ void init_modeWaitEvent();
    /* 80BA1BD8 */ void modeWaitEvent();
    /* 80BA1C90 */ void eventStart();
    /* 80BA1CB4 */ void init_modeClose();
    /* 80BA1D48 */ void modeClose();
    /* 80BA1DCC */ void init_modeCloseEvent();
    /* 80BA1E60 */ void modeCloseEvent();
    /* 80BA1EEC */ void init_modeCloseEnd();
    /* 80BA1F7C */ void modeCloseEnd();
    /* 80BA1F80 */ void init_modeOpen();
    /* 80BA2004 */ void modeOpen();
    /* 80BA2080 */ void Draw();
    /* 80BA2124 */ void Delete();
    /* 80BA22E8 */ ~daAmiShutter_c();

    bool isShutterOpen() { return mOpen; }

private:
    /* 0x568 */ u8 field_0x568[0x5d9 - 0x568];
    /* 0x5D9 */ bool mOpen;
};

STATIC_ASSERT(sizeof(daAmiShutter_c) == 0x5dc);

class daAmiShutter_HIO_c {
    /* 80BA14CC */ daAmiShutter_HIO_c();
    /* 80BA21E0 */ ~daAmiShutter_HIO_c();
};


#endif /* D_A_OBJ_AMISHUTTER_H */
