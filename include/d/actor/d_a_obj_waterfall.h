#ifndef D_A_OBJ_WATERFALL_H
#define D_A_OBJ_WATERFALL_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjWaterFall_c
 * @brief Waterfall
 *
 * @details
 *
 */
class daObjWaterFall_c : public fopAc_ac_c {
public:
    /* 80D2ED14 */ void search_bomb();
    /* 80D2F034 */ void search_arrow();
    /* 80D2F324 */ void initBaseMtx();
    /* 80D2F344 */ void setBaseMtx();
    /* 80D2F39C */ cPhs__Step Create();
    /* 80D2F5A0 */ cPhs__Step create();
    /* 80D2F984 */ int execute();
    /* 80D2FA6C */ void push_player();
    /* 80D2FC94 */ int draw();
    /* 80D2FC9C */ int _delete();
private:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 field_0x570[4];
    /* 0x574 */ dCcD_Stts field_0x574;
    /* 0x5B0 */ dCcD_Tri field_0x5B0[2];
    /* 0x868 */ dCcD_Cyl field_0x868;
    /* 0x9A4 */ cXyz field_0x9A4[2];
    /* 0x9BC */ cXyz field_0x9BC;
    /* 0x9C8 */ s8 field_0x9C8;

    BOOL checkFallOut() {
        return fopAcM_GetParamBit(this, 10, 4);
    }

    int getType() {
        return fopAcM_GetParamBit(this, 8, 2);
    }

    u32 getSwbit() {
        return fopAcM_GetParamBit(this, 0, 8);
    }
};

STATIC_ASSERT(sizeof(daObjWaterFall_c) == 0x9cc);


#endif /* D_A_OBJ_WATERFALL_H */
