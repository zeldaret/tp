#ifndef D_D_BOMB_H
#define D_D_BOMB_H

#include "f_op/f_op_actor_mng.h"

class dBomb_c : public fopAc_ac_c {
public:
    bool checkStateCarry();
    static bool checkFlowerBombWait(fopAc_ac_c*);
    static bool checkWaterBomb(fopAc_ac_c*);
    static bool checkInsectBombMove(fopAc_ac_c*);

    /* 804CC31C */ virtual bool checkExplodeNow();
    /* 804CC324 */ virtual void deleteBombAndEffect();
    /* 804CC328 */ virtual void setCargoBombExplode();

    bool checkStateExplode() { return fopAcM_GetParam(this) == 0; }

    static bool checkBombActor(fopAc_ac_c* i_actor) {
        return fopAcM_GetName(i_actor) == PROC_NBOMB;
    }

    static fopAc_ac_c* createNormalBombPlayer(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 8, i_pos, -1, NULL, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createNormalBombExplode(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 0, i_pos, -1, NULL, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createWaterBombPlayer(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 9, i_pos, -1, NULL, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createFlowerBomb(cXyz* i_pos, csXyz* i_angle, int param_2) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 4, i_pos, param_2, i_angle, NULL, -1,
                                              NULL, NULL);
    }

    static fopAc_ac_c* createWaterBombExplode(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 18, i_pos, -1, NULL, NULL, -1, NULL,
                                              NULL);
    }

    static fopAc_ac_c* createEnemyWaterBomb(cXyz* i_pos, csXyz* i_angle, int i_roomNo) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 14, i_pos, i_roomNo, i_angle, NULL, -1,
                                              NULL, NULL);
    }

    static fopAc_ac_c* createEnemyWaterBombHookshot(cXyz* i_pos, csXyz* i_angle, int i_roomNo) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 16, i_pos, i_roomNo, i_angle, NULL, -1,
                                              NULL, NULL);
    }
};

#endif /* D_D_BOMB_H */
