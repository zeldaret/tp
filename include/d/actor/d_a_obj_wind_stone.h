#ifndef D_A_OBJ_WIND_STONE_H
#define D_A_OBJ_WIND_STONE_H

#include "d/d_bg_w.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daWindStone_c
 * @brief Howling Stone (Hole)
 *
 * @details
 *
 */
class daWindStone_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80D37A18 */ daWindStone_c();
    /* 80D37A68 */ virtual ~daWindStone_c();
    /* 80D37AF4 */ int createHeap();
    /* 80D37C20 */ int create();
    /* 80D37F0C */ int execute();
    /* 80D37F6C */ int draw();
    /* 80D3806C */ int Delete();
    /* 80D3811C */ void setModelMtx();
    /* 80D38180 */ void init();
    /* 80D381EC */ bool chkWlfInRange();
    /* 80D38278 */ bool chkEveOccur();
    /* 80D382C4 */ void exeModeHowl();
    /* 80D3835C */ void exeModeMapDisp();
    /* 80D383FC */ bool chkMapDispMode();
    /* 80D384C4 */ u8 getGoldWolfIdx();

    s8 getTuneId() { return fopAcM_GetParamBit(this, 4, 4); }
    int getNextSceneId() { return fopAcM_GetParamBit(this, 0, 4); }
    u32 getSwBit1() { return home.angle.x & 0xff; }
    u32 getSwBit2() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getDelEveFlgId() { return fopAcM_GetParamBit(this, 0x10, 0x10); }

private:
    /* 0x574 */ cBgS_PolyInfo mPolyInfo;
    /* 0x584 */ J3DModel* mpModel;
    /* 0x588 */ dBgW* mpBgW;
    /* 0x58C */ Mtx field_0x58c;
    /* 0x5BC */ f32 field_0x5bc;
    /* 0x5C0 */ u32 field_0x5c0;
    /* 0x5C4 */ u8 field_0x5c4;
};

STATIC_ASSERT(sizeof(daWindStone_c) == 0x5C8);

#endif /* D_A_OBJ_WIND_STONE_H */
