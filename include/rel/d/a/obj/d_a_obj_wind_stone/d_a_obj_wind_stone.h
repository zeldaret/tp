#ifndef D_A_OBJ_WIND_STONE_H
#define D_A_OBJ_WIND_STONE_H

#include "f_op/f_op_actor_mng.h"

class daWindStone_c : public fopAc_ac_c {
public:
    /* 80D37A18 */ daWindStone_c();
    /* 80D37A68 */ ~daWindStone_c();
    /* 80D37AF4 */ void createHeap();
    /* 80D37C20 */ void create();
    /* 80D37F0C */ void execute();
    /* 80D37F6C */ void draw();
    /* 80D3806C */ void Delete();
    /* 80D3811C */ void setModelMtx();
    /* 80D38180 */ void init();
    /* 80D381EC */ void chkWlfInRange();
    /* 80D38278 */ void chkEveOccur();
    /* 80D382C4 */ void exeModeHowl();
    /* 80D3835C */ void exeModeMapDisp();
    /* 80D383FC */ void chkMapDispMode();
    /* 80D384C4 */ void getGoldWolfIdx();

    s8 getTuneId() { return fopAcM_GetParamBit(this, 4, 4); }
    int getNextSceneId() { return fopAcM_GetParamBit(this, 0, 4); }
};

#endif /* D_A_OBJ_WIND_STONE_H */
