#ifndef D_A_OBJ_INOBONE_H
#define D_A_OBJ_INOBONE_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjIBone_c
 * @brief Boar Bone
 *
 * @details
 *
 */
class daObjIBone_c : public fopAc_ac_c {
public:
    /* 80C27830 */ void initBaseMtx();
    /* 80C2786C */ void setBaseMtx();
    /* 80C278CC */ int Create();
    /* 80C279A8 */ int CreateHeap();
    /* 80C27A20 */ int create();
    /* 80C27C4C */ int execute();
    /* 80C27E48 */ void setBreakEffect();
    /* 80C27FEC */ int draw();
    /* 80C28050 */ int _delete();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5B0 */ dCcD_Cyl mCyl;
    /* 0x6EC */ dCcD_Cyl mCyl2;
    /* 0x828 */ u8 field_0x828;
    /* 0x82C */ Z2SoundObjSimple mSound;
};

STATIC_ASSERT(sizeof(daObjIBone_c) == 0x84c);

#endif /* D_A_OBJ_INOBONE_H */
