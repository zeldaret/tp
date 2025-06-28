#ifndef D_A_OBJ_HAKAI_FTR_H
#define D_A_OBJ_HAKAI_FTR_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjHFtr_c
 * @brief Destruction Furniture
 *
 * @details
 *
 */
class daObjHFtr_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80C174B8 */ daObjHFtr_c();
    /* 80C17778 */ virtual ~daObjHFtr_c();
    inline u8 getNameId() {
        return fopAcM_GetParamBit(this, 0, 4);
    }
    /* 80C17874 */ int createHeap();
    /* 80C179B0 */ int create();
    /* 80C17AC0 */ int Delete();
    /* 80C17B30 */ int draw();
    /* 80C17BD4 */ int execute();
    /* 80C17CD0 */ void init();
    /* 80C17E10 */ void setModelMtx();
    /* 80C17E74 */ bool chkHit();
    /* 80C17EDC */ void callEmt();

    static dCcD_SrcCyl const s_CcDCyl;

private:
    /* 0x574 */ Mtx mMtx;
    /* 0x5A4 */ dBgW* field_0x5a4;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dCcD_Stts mStts;
    /* 0x5E8 */ dCcD_Cyl mCyls[2];
};

STATIC_ASSERT(sizeof(daObjHFtr_c) == 0x860);


#endif /* D_A_OBJ_HAKAI_FTR_H */
