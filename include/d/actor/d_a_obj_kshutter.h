#ifndef D_A_OBJ_KSHUTTER_H
#define D_A_OBJ_KSHUTTER_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjKshtr_c
 * @brief Lakebed Temple Boss Door
 *
 * @details
 *
*/

class daObjKshtr_c : public dBgS_MoveBgActor {
public:
    typedef cPhs__Step (daObjKshtr_c::*PhaseFunc)();
    typedef void (daObjKshtr_c::*ActionFunc)();
    typedef BOOL (daObjKshtr_c::*DemoFunc)();

    /* 80C47AB8 */ void initBaseMtx();
    /* 80C47B2C */ void setBaseMtx();
    /* 80C47C14 */ int Create();
    /* 80C47E54 */ void offDzb();
    /* 80C47EA8 */ int CreateHeap();
    /* 80C48050 */ void initKey();
    /* 80C48148 */ cPhs__Step phase_0();
    /* 80C4827C */ cPhs__Step phase_1();
    /* 80C48320 */ cPhs__Step phase_2();
    /* 80C48328 */ void create1st();
    /* 80C483CC */ void event_proc_call();
    /* 80C48470 */ void event_proc_call2();
    /* 80C4852C */ int Execute(f32 (**)[3][4]);
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
    /* 80C4925C */ BOOL demoJail1();
    /* 80C494A8 */ BOOL demoJail2();
    /* 80C495A4 */ BOOL demoJail11();
    /* 80C496C8 */ BOOL demoJail21();
    /* 80C496D0 */ void anmInit();
    /* 80C497A0 */ void actionWaitEvent();
    /* 80C49880 */ void actionEvent();
    /* 80C49914 */ void actionDead();
    /* 80C49918 */ void actionWaitEvent2();
    /* 80C499CC */ void actionOpen();
    /* 80C49A08 */ void actionEvent2();
    /* 80C49A70 */ void actionDead2();
    /* 80C49A74 */ int Draw();
    /* 80C49B4C */ int Delete();
    u8 checkKey() { return fopAcM_GetParamBit(this, 31, 1); }
    u8 getEvId() { return fopAcM_GetParamBit(this, 16, 8); }
    u8 getType() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase1;
    /* 0x5A8 */ request_of_phase_process_class mPhase2;
    /* 0x5B0 */ J3DModel* mpModel;
    /* 0x5B4 */ mDoExt_bckAnm* mpBckAnm;
    /* 0x5B8 */ Mtx mMtx;
    /* 0x5E8 */ u8 mAction;
    /* 0x5E9 */ u8 field_0x5e9;
    /* 0x5EA */ u8 mType;
    /* 0x5EB */ u8 mSwNo;
    /* 0x5EC */ u8 field_0x5ec;
    /* 0x5ED */ u8 field_0x5ed;
    /* 0x5EE */ u8 mEvId;
    /* 0x5EF */ u8 field_0x5ef;
    /* 0x5F0 */ s16 field_0x5f0[2];
    /* 0x5F4 */ u8 field_0x5f4[0x5fc - 0x5f4];
    /* 0x5FC */ f32 field_0x5fc;
    /* 0x600 */ int field_0x600;
    /* 0x604 */ u8 field_0x604;
    /* 0x605 */ u8 field_0x605;
    /* 0x606 */ u8 field_0x606;
    /* 0x607 */ u8 field_0x607;
    /* 0x608 */ cXyz field_0x608;
    /* 0x614 */ fpc_ProcID field_0x614;
    /* 0x618 */ u8 field_0x618;
    /* 0x619 */ u8 field_0x619;
    /* 0x61A */ s16 field_0x61a;
    /* 0x61C */ s16 field_0x61c;
    /* 0x61E */ u8 field_0x61e;
};

STATIC_ASSERT(sizeof(daObjKshtr_c) == 0x620);


#endif /* D_A_OBJ_KSHUTTER_H */
