#ifndef D_A_OBJ_LAUNDRY_ROPE_H
#define D_A_OBJ_LAUNDRY_ROPE_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-objects
 * @class daObjLndRope_c
 * @brief Laundry Rope
 *
 * @details
 *
 */
class daObjLndRope_c : public fopAc_ac_c {
public:
    /* 80C521F8 */ void create_init();
    /* 80C5285C */ void initBaseMtx();
    /* 80C52890 */ void setBaseMtx();
    /* 80C528E0 */ void setNormalRopePos();

    inline int create();

    static u8 const M_attr[20];

private:
    /* 0x568 */ mDoExt_3DlineMat1_c mRopeMat;
    /* 0x5a4 */ request_of_phase_process_class mPhase;
    /* 0x5ac */ Mtx mMtx;
    /* 0x5dc */ dCcD_Stts mStts;
    /* 0x618 */ dCcD_Sph mSphs[13];
    /* 0x15f0 */ cXyz mPositions1[13];
    /* 0x168c */ cXyz mPositions2[13];
    /* 0x1728 */ u8 field_0x1728[0x175c - 0x1728];
    /* 0x175c */ cXyz mPos;
    /* 0x1768 */ u8 field_0x1768[0x1774 - 0x1768];
};

STATIC_ASSERT(sizeof(daObjLndRope_c) == 0x1774);


#endif /* D_A_OBJ_LAUNDRY_ROPE_H */
