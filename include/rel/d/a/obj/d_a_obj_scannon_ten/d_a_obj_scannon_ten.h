#ifndef D_A_OBJ_SCANNON_TEN_H
#define D_A_OBJ_SCANNON_TEN_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSCannonTen_c
 * @brief Sky Cannon (Lake Hylia, Fixed)
 *
 * @details
 *
 */
class daObjSCannonTen_c : public fopAc_ac_c {
public:
    /* 80CCB364 */ daObjSCannonTen_c();
    /* 80CCB43C */ ~daObjSCannonTen_c();
    /* 80CCB4EC */ void createHeap();
    /* 80CCB66C */ void create();
    /* 80CCB9E0 */ void Delete();
    /* 80CCBA58 */ void draw();
    /* 80CCBB6C */ void execute();
    /* 80CCBB90 */ void middleExe();
    /* 80CCBC08 */ void exeModeWait();
    /* 80CCBCB0 */ void exeModeOrderEvt();
    /* 80CCBD4C */ void exeModeActionEvt();
    /* 80CCBDCC */ void exeModeEnd();
    /* 80CCBDD0 */ void demoExe();
    /* 80CCBE8C */ void demoModeInit(int);
    /* 80CCBF00 */ void demoInitLinkIn();
    /* 80CCBF04 */ void demoExeLinkIn();
    /* 80CCBFC4 */ void demoInitSet();
    /* 80CCC088 */ void demoExeSet();
    /* 80CCC114 */ void demoInitMove();
    /* 80CCC118 */ void demoExeMove();
    /* 80CCC20C */ void demoInitFire();
    /* 80CCC260 */ void demoExeFire();
    /* 80CCC2B8 */ void demoInitFireEnd();
    /* 80CCC37C */ void demoExeFireEnd();
    /* 80CCC3D4 */ void demoInitFinish();
    /* 80CCC498 */ void demoExeFinish();
    /* 80CCC528 */ void init();
    /* 80CCC53C */ void setModelMtx();
    /* 80CCC5A0 */ void changeScene();
    /* 80CCC628 */ void initEmtSmoke();
    /* 80CCC74C */ void exeEmtSmoke();
    /* 80CCC7D0 */ void initEmtLine();
    /* 80CCC8B8 */ void exeEmtLine();
    /* 80CCC97C */ void delEmtAll();

    static u8 s_exeProc[48];
    static u8 s_demoExeProc[144];

private:
    /* 0x568 */ u8 field_0x568[0x604 - 0x568];
};

STATIC_ASSERT(sizeof(daObjSCannonTen_c) == 0x604);


#endif /* D_A_OBJ_SCANNON_TEN_H */
