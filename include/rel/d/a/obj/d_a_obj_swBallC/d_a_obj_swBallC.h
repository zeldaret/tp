#ifndef D_A_OBJ_SWBALLC_H
#define D_A_OBJ_SWBALLC_H

#include "f_op/f_op_actor_mng.h"

struct daObjSwBallC_c : public fopAc_ac_c {
    /* 80CF5CD4 */ void initBaseMtx();
    /* 80CF5CF4 */ void setBaseMtx();
    /* 80CF5D58 */ int Create();
    /* 80CF5EF8 */ int CreateHeap();
    /* 80CF606C */ int create();
    /* 80CF6120 */ int execute();
    /* 80CF6144 */ void event_proc_call();
    /* 80CF6200 */ void actionWait();
    /* 80CF629C */ void actionOrderEvent();
    /* 80CF6344 */ void actionEvent();
    /* 80CF63F0 */ void actionDead();
    /* 80CF63F4 */ int demoProc();
    /* 80CF6818 */ void setLightOnSwB();
    /* 80CF6888 */ void setLightOffSwB();
    /* 80CF68F8 */ void deleteLightBall();
    /* 80CF692C */ void deleteLightBallA();
    /* 80CF6964 */ void deleteLightBallB();
    /* 80CF699C */ int calcLightBallScale();
    /* 80CF6A74 */ int draw();
    /* 80CF6BFC */ int _delete();

    void setAction(u8 action) { field_0x57f = action; }

    /* 0x568 */ request_of_phase_process_class field_0x568;
    /* 0x570 */ J3DModel* mModel;
    /* 0x574 */ mDoExt_btkAnm* field_0x574;
    /* 0x578 */ u32 field_0x578;
    /* 0x57C */ s16 field_0x57c;
    /* 0x57E */ u8 field_0x57e;
    /* 0x57F */ u8 field_0x57f;
    /* 0x580 */ u8 field_0x580;
    /* 0x581 */ u8 field_0x581;
    /* 0x582 */ u8 field_0x582;
    /* 0x583 */ u8 field_0x583;
    /* 0x584 */ u8 field_0x584;
    /* 0x585 */ s8 field_0x585;
    /* 0x586 */ u8 field_0x586;
    /* 0x587 */ u8 field_0x587;
    /* 0x588 */ u32 field_0x588;
};

#endif /* D_A_OBJ_SWBALLC_H */
