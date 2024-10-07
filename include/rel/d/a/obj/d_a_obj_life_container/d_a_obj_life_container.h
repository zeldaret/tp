#ifndef D_A_OBJ_LIFE_CONTAINER_H
#define D_A_OBJ_LIFE_CONTAINER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLife_c
 * @brief Heart Piece
 *
 * @details
 *
 */
class daObjLife_c : public fopAc_ac_c {
public:
    /* 804CCBE4 */ void initBaseMtx();
    /* 804CCC04 */ void setBaseMtx();
    /* 804CCC6C */ void Create();
    /* 804CCE00 */ void setEffect();
    /* 804CCF5C */ void endEffect00();
    /* 804CCFAC */ void endEffect02();
    /* 804CCFD8 */ bool __CreateHeap();
    /* 804CCFE0 */ void create();
    /* 804CD428 */ void bg_check();
    /* 804CD5B8 */ void actionWaitInit();
    /* 804CD660 */ void actionWait();
    /* 804CD8C0 */ void initActionOrderGetDemo();
    /* 804CD98C */ void actionOrderGetDemo();
    /* 804CDA08 */ void actionGetDemo();
    /* 804CDBC8 */ void actionSwOnWait();
    /* 804CDC2C */ void actionInitBoomerangCarry();
    /* 804CDD0C */ void actionBoomerangCarry();
    /* 804CDD7C */ void actionInitWait2();
    /* 804CDD8C */ void actionWait2();
    /* 804CDDAC */ void calcScale();
    /* 804CDE70 */ void execute();
    /* 804CE19C */ void draw();
    /* 804CE1F0 */ void setListStart();
    /* 804CE214 */ void _delete();

    void setPos(cXyz);

private:
    /* 0x568 */ u8 field_0x568[0x9d4 - 0x568];
};

STATIC_ASSERT(sizeof(daObjLife_c) == 0x9d4);


#endif /* D_A_OBJ_LIFE_CONTAINER_H */
