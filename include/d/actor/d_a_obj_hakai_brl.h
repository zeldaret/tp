#ifndef D_A_OBJ_HAKAI_BRL_H
#define D_A_OBJ_HAKAI_BRL_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjHBarrel_c
 * @brief Destructable Barrel
 *
 * @details
 *
 */
class daObjHBarrel_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80C16758 */ daObjHBarrel_c();
    /* 80C16918 */ virtual ~daObjHBarrel_c();
    /* 80C16A98 */ int createHeap();
    /* 80C16B08 */ int create();
    /* 80C16BF8 */ int Delete();
    /* 80C16C44 */ int draw();
    /* 80C16CA8 */ int execute();
    /* 80C16D50 */ void init();
    /* 80C16DEC */ void setModelMtx();
    /* 80C16E50 */ void hitAction();
    u8 getItemBit() {
        return fopAcM_GetParamBit(this, 8, 8);
    }
    u8 getItemNo() {
        return fopAcM_GetParamBit(this, 0, 8);
    }
    /* 80C17090 */ void callEmt();

    static dCcD_SrcCyl const s_CcDCyl;

private:
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ dCcD_Stts mStts;
    /* 0x5B4 */ dCcD_Cyl mCyl;
    /* 0x6F0 */ Z2SoundObjSimple mSound;
};

STATIC_ASSERT(sizeof(daObjHBarrel_c) == 0x710);


#endif /* D_A_OBJ_HAKAI_BRL_H */
