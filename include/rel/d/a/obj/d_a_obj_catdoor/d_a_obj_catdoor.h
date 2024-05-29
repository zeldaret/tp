#ifndef D_A_OBJ_CATDOOR_H
#define D_A_OBJ_CATDOOR_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_w.h"

class daObjCatDoor_Door_c {
public:
    /* 0x00 */ J3DModel* pmodel;
    /* 0x04 */ dBgW bgw;
    /* 0xe0 */ Mtx mtx;
    /* 0xf4 */ s16 angle;
};

/**
 * @ingroup actors-objects
 * @class daObjCatDoor_c
 * @brief Cat Door
 *
 * @details
 *
 */
class daObjCatDoor_c : public fopAc_ac_c {
public:
    inline ~daObjCatDoor_c();

    /* 80BC42B8 */ const s16* attr() const;
    /* 80BC43F4 */ void initBaseMtx();
    /* 80BC4454 */ void setBaseMtx();
    /* 80BC4560 */ void calcOpen();

    u8 getSwitchNo() { return fopAcM_GetParam(this); }

    inline int createHeap();
    inline int draw();
    inline int execute();
    inline int create();
    inline void create_init();

private:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ daObjCatDoor_Door_c mDoor1;
    /* 0x660 */ daObjCatDoor_Door_c mDoor2;
    /* 0x760 */ Mtx mMtx;
    /* 0x790 */ s16 mRotSpeed;

public:
    static u32 const M_attr;
};

#endif /* D_A_OBJ_CATDOOR_H */
