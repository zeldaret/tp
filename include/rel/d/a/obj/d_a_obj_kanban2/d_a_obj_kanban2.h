#ifndef D_A_OBJ_KANBAN2_H
#define D_A_OBJ_KANBAN2_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObj_Kanban2_c : public fopAc_ac_c {
public:
    /* 80581790 */ void draw();
    /* 80581938 */ void setKanbanSE(int);
    /* 805819BC */ void createBreakParts(u32, csXyz);
    /* 805819FC */ void createWallHitBreak();
    /* 80581B5C */ void getKanbanCutType();
    /* 80581C48 */ void getKanbanWolfCutType();
    /* 80581D04 */ void damage_check();
    /* 8058221C */ void float_damage_check();
    /* 805822F0 */ void deletePart();
    /* 805825A4 */ void getWallAngle();
    /* 8058271C */ void setGroundAngle();
    /* 80582894 */ void checkWaterSurface();
    /* 80582944 */ void checkPataGround(s16, s16);
    /* 80582A68 */ void setCullMtx();
    /* 80582AAC */ void setSmokeEffect(cXyz);
    /* 80582AFC */ void setWaterEffect();
    /* 80582C40 */ void setCenterPos();
    /* 80582E68 */ void checkCarryOn();
    /* 80582EF0 */ void setActionMode(int, int);
    /* 80582F40 */ void calcNormalSwing();
    /* 80583364 */ void executeNormal();
    /* 80583598 */ void initPart();
    /* 80583A2C */ void executePart();
    /* 8058437C */ void executeFloat();
    /* 80584884 */ void executeCarry();
    /* 805849CC */ void action();
    /* 80584AD8 */ void mtx_set();
    /* 80584CFC */ void cc_set();
    /* 80584DF0 */ void execute();
    /* 80584ED8 */ void _delete();
    /* 80584F64 */ void CreateHeap();
    /* 805850E8 */ void create();

private:
    /* 0x568 */ u8 field_0x568[0xa50 - 0x568];
};
STATIC_ASSERT(sizeof(daObj_Kanban2_c) == 0xa50);

class daObj_Kanban2_HIO_c {
public:
    /* 8058176C */ daObj_Kanban2_HIO_c();
    /* 80585578 */ ~daObj_Kanban2_HIO_c();
};


#endif /* D_A_OBJ_KANBAN2_H */
