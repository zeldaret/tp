#ifndef D_A_OBJ_MAGNE_ARM_H
#define D_A_OBJ_MAGNE_ARM_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjMarm_c
 * @brief Magnetic Arm
 *
 * @details
 *
 */
class daObjMarm_c : public fopAc_ac_c {
public:
    /* 8058F358 */ void getBpartsOffset(cXyz*);
    /* 8058F3D4 */ void getDpartsOffset(cXyz*);
    /* 8058F46C */ void getEpartsOffset(cXyz*);
    /* 8058F504 */ void getFpartsOffset(cXyz*);
    /* 8058F610 */ void getRopeStartPos(cXyz*);
    /* 8058F6B4 */ void initBaseMtx();
    /* 8058F77C */ void setBaseMtx();
    /* 8058FA50 */ void Create();
    /* 8058FCF8 */ void CreateHeap();
    /* 80590244 */ void phase_0();
    /* 805902D8 */ void phase_1();
    /* 80590364 */ void phase_2();
    /* 80590460 */ void create1st();
    /* 80590504 */ void Execute(f32 (**)[3][4]);
    /* 80590818 */ void action();
    /* 80590B7C */ void init_typeA_modeWait();
    /* 80590B8C */ void typeA_modeWait();
    /* 80590BE0 */ void init_typeA_modeMholeOn();
    /* 80590C48 */ void typeA_modeMholeOn();
    /* 80590C68 */ void typeA_modeLiftUp();
    /* 80590C6C */ void typeA_modeLiftDown();
    /* 80590C70 */ void init_typeA_modeRotate();
    /* 80590CE4 */ void typeA_modeRotate();
    /* 80590E24 */ void typeA_modeEnd();
    /* 80590E28 */ void init_typeB_modeWait();
    /* 80590E38 */ void typeB_modeWait();
    /* 80590E8C */ void init_typeB_modeMholeOn();
    /* 80590EF4 */ void typeB_modeMholeOn();
    /* 80590F14 */ void init_typeB_modeLiftUp();
    /* 80590F30 */ void typeB_modeLiftUp();
    /* 80591004 */ void typeB_modeLiftDown();
    /* 805910E8 */ void init_typeB_modeRotate();
    /* 80591160 */ void typeB_modeRotate();
    /* 805912AC */ void typeB_modeEnd();
    /* 805912B0 */ void init_typeC_modeWait();
    /* 805912C0 */ void typeC_modeWait();
    /* 80591314 */ void init_typeC_modeMholeOn();
    /* 8059137C */ void typeC_modeMholeOn();
    /* 8059139C */ void init_typeC_modeLiftUp();
    /* 805913B8 */ void typeC_modeLiftUp();
    /* 8059148C */ void init_typeC_modeLiftDown();
    /* 805914A8 */ void typeC_modeLiftDown();
    /* 8059158C */ void init_typeC_modeRotate();
    /* 80591604 */ void typeC_modeRotate();
    /* 80591750 */ void typeC_modeEnd();
    /* 80591754 */ void init_typeD_modeWait();
    /* 80591764 */ void typeD_modeWait();
    /* 805917B8 */ void init_typeD_modeMholeOn();
    /* 80591820 */ void typeD_modeMholeOn();
    /* 80591840 */ void init_typeD_modeLiftUp();
    /* 8059185C */ void typeD_modeLiftUp();
    /* 80591930 */ void init_typeD_modeLiftDown();
    /* 8059194C */ void typeD_modeLiftDown();
    /* 80591A30 */ void init_typeD_modeRotate();
    /* 80591AA8 */ void typeD_modeRotate();
    /* 80591BF4 */ void typeD_modeEnd();
    /* 80591BF8 */ void setMagneHoleEffect();
    /* 80591BFC */ void endMagneHoleEffect();
    /* 80591C38 */ void calcHimo();
    /* 80591E18 */ void seStart_MOVESTART();
    /* 80591E80 */ void seStartLevel_MOVE();
    /* 80591EE8 */ void seStart_STOP();
    /* 80591F50 */ void seStartLevel_UP();
    /* 80591FB8 */ void seStartLevel_DOWN();
    /* 80592020 */ void seStart_SWING();
    /* 80592088 */ void Draw();
    /* 805923C4 */ void debugDraw();
    /* 805923C8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0xa6c - 0x568];
};

STATIC_ASSERT(sizeof(daObjMarm_c) == 0xa6c);


#endif /* D_A_OBJ_MAGNE_ARM_H */
