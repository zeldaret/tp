#ifndef D_A_NPC_FGUARD_H
#define D_A_NPC_FGUARD_H

#include "d/a/d_a_npc_cd2.h"
#include "SSystem/SComponent/c_math.h"

/**
 * @ingroup actors-npcs
 * @class daNpcFgd_c
 * @brief ???
 *
 * @details
 *
 */
class daNpcFgd_c : public daNpcCd2_c {
public:
    /* 809BA53C */ void initPosAngle(Vec&, s16);
    /* 809BA584 */ void create();
    /* 809BA730 */ void create_init();
    /* 809BAA80 */ ~daNpcFgd_c();

    void setAnime(int param_1) {
        setAnm((J3DAnmTransformKey*)getAnmP(param_1, field_0xacc), 1.0f, 12.0f, 2, cM_rndF(5.0f), -1);
    }

    void offDrawFlag() {
        field_0xad8 = 0;
    }

    void onDrawFlag() {
        field_0xad8 = 1;
    }

    /* 0xAC8 */ u32 field_0xac8;
    /* 0xACC */ u32 field_0xacc;
    /* 0xAD0 */ u32 field_0xad0;
    /* 0xAD4 */ u32 field_0xad4;
    /* 0xAD8 */ u8 field_0xad8;
};

#endif /* D_A_NPC_FGUARD_H */
