#ifndef D_A_OBJ_CBLOCK_H
#define D_A_OBJ_CBLOCK_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjCBlk_c
 * @brief Castle Block?
 *
 * @details
 *
 */
class daObjCBlk_c : public fopAc_ac_c {
public:
    struct chain_s {
    public:
        /* 80BC5E58 */ ~chain_s();
        /* 80BC5E94 */ chain_s();
    };

    /* 80BC5A0C */ void initBaseMtx();
    /* 80BC5A48 */ void setBaseMtx();
    /* 80BC5ABC */ void Create();
    /* 80BC5CF8 */ void CreateHeap();
    /* 80BC5E98 */ void create();
    /* 80BC6260 */ void Execute(f32 (**)[3][4]);
    /* 80BC6270 */ void initWait();
    /* 80BC627C */ void modeWait();
    /* 80BC6414 */ void initWalk();
    /* 80BC6430 */ void modeWalk();
    /* 80BC65CC */ void getChainBasePos(cXyz*);
    /* 80BC6648 */ void setPower(f32);
    /* 80BC66DC */ void checkWall();
    /* 80BC6868 */ bool Draw();
    /* 80BC6870 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0xca8 - 0x568];
};

STATIC_ASSERT(sizeof(daObjCBlk_c) == 0xca8);


#endif /* D_A_OBJ_CBLOCK_H */
