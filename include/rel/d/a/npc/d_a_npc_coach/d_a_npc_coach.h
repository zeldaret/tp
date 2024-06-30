#ifndef D_A_NPC_COACH_H
#define D_A_NPC_COACH_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcCoach_c
 * @brief Coach
 *
 * @details
 *
 */
class daNpcCoach_c : public fopAc_ac_c {
public:
    /* 8099DA60 */ void hitFireArrow(cXyz);
    /* 8099DBA4 */ void deleteFireArrow(unsigned int);
    /* 8099DCE8 */ void deleteFireArrowFromList(unsigned int);
    /* 8099DD28 */ void setPosAngle(cXyz&, csXyz&);
    /* 8099DD7C */ void ctrlJointHorse(J3DJoint*, J3DModel*);
    /* 8099DE18 */ void initCoachPosition(Vec&, SVec&);
    /* 8099E138 */ void changeAtherPath(s8, cXyz&, csXyz&);
    /* 8099E4C0 */ void createHeap();
    /* 8099EB40 */ void execute();
    /* 8099EEA0 */ void checkCoachDamage();
    /* 8099F1B8 */ void setCoachBlazing(u8);
    /* 8099F4BC */ void reinsExecute();
    /* 8099F988 */ void reinsInit();
    /* 8099FCF4 */ void calcCoachMotion();
    /* 809A0728 */ void calcRearWheelRotate();
    /* 809A0E00 */ void calcHarnessMotion();
    /* 809A1180 */ void calcFrontWheelRotate();
    /* 809A1810 */ void calcHorseMotion();
    /* 809A1BE0 */ void calcHorseAnm();
    /* 809A2740 */ void calcHorsePath();
    /* 809A2EB8 */ void draw();
    /* 809A3330 */ ~daNpcCoach_c();
    /* 809A3884 */ void create();
    /* 809A3928 */ void create_init();
    /* 809A4078 */ void initCollision();
    /* 809A43A0 */ void initBaseMtx();
    /* 809A43DC */ void setBaseMtx();
    /* 809A46C4 */ void initCoachBlazing();
    /* 809A48A8 */ daNpcCoach_c();

    static u8 const M_attr[160];
private:
    /* 0x568 */ u8 field_0x568[0x2570 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcCoach_c) == 0x2570);

class daNpcChHarness_c {
public:
    /* 809A3570 */ ~daNpcChHarness_c();
};

class daNpcChCoach_c {
public:
    /* 809A3674 */ ~daNpcChCoach_c();
};

#endif /* D_A_NPC_COACH_H */
