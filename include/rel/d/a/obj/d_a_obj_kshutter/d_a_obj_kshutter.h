#ifndef D_A_OBJ_KSHUTTER_H
#define D_A_OBJ_KSHUTTER_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjKshtr_c : public fopAc_ac_c {
public:
    /* 80C47AB8 */ void initBaseMtx();
    /* 80C47B2C */ void setBaseMtx();
    /* 80C47C14 */ void Create();
    /* 80C47E54 */ void offDzb();
    /* 80C47EA8 */ void CreateHeap();
    /* 80C48050 */ void initKey();
    /* 80C48148 */ void phase_0();
    /* 80C4827C */ void phase_1();
    /* 80C48320 */ s32 phase_2();
    /* 80C48328 */ void create1st();
    /* 80C483CC */ void event_proc_call();
    /* 80C48470 */ void event_proc_call2();
    /* 80C4852C */ void Execute(f32 (**)[3][4]);
    /* 80C48590 */ void checkArea();
    /* 80C48708 */ void checkOpen();
    /* 80C48798 */ void getDemoAction();
    /* 80C487E0 */ void demoProc2();
    /* 80C489E0 */ void adjustmentProc();
    /* 80C48AC8 */ void keyUnlockInit();
    /* 80C48B84 */ void keyUnlock();
    /* 80C48BD8 */ void openInit();
    /* 80C48D0C */ void openProc();
    /* 80C48D80 */ void openProc_type1();
    /* 80C48F94 */ void openProc_type2();
    /* 80C490F8 */ void openProc_typeL3Boss();
    /* 80C49158 */ void demoProc();
    /* 80C4925C */ void demoJail1();
    /* 80C494A8 */ void demoJail2();
    /* 80C495A4 */ void demoJail11();
    /* 80C496C8 */ bool demoJail21();
    /* 80C496D0 */ void anmInit();
    /* 80C497A0 */ void actionWaitEvent();
    /* 80C49880 */ void actionEvent();
    /* 80C49914 */ void actionDead();
    /* 80C49918 */ void actionWaitEvent2();
    /* 80C499CC */ void actionOpen();
    /* 80C49A08 */ void actionEvent2();
    /* 80C49A70 */ void actionDead2();
    /* 80C49A74 */ void Draw();
    /* 80C49B4C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x620 - 0x568];
};
STATIC_ASSERT(sizeof(daObjKshtr_c) == 0x620);


#endif /* D_A_OBJ_KSHUTTER_H */
