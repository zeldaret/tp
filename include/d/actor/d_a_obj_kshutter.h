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
    /* 80C48328 */ cPhs__Step create1st();
    /* 80C483CC */ void event_proc_call();
    /* 80C48470 */ void event_proc_call2();
    /* 80C4852C */ int Execute(Mtx**);
    /* 80C48590 */ BOOL checkArea();
    /* 80C48708 */ BOOL checkOpen();
    /* 80C48798 */ int getDemoAction();
    /* 80C487E0 */ BOOL demoProc2();
    /* 80C489E0 */ BOOL adjustmentProc();
    /* 80C48AC8 */ BOOL keyUnlockInit();
    /* 80C48B84 */ BOOL keyUnlock();
    /* 80C48BD8 */ BOOL openInit();
    /* 80C48D0C */ BOOL openProc();
    /* 80C48D80 */ BOOL openProc_type1();
    /* 80C48F94 */ BOOL openProc_type2();
    /* 80C490F8 */ BOOL openProc_typeL3Boss();
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
    void setAction(u8 action) { mAction = action; }
private:
    /* 0x5A0 */ request_of_phase_process_class mPhase1;
    /* 0x5A8 */ request_of_phase_process_class mPhase2;
    /* 0x5B0 */ J3DModel* mpModel;
    /* 0x5B4 */ mDoExt_bckAnm* mpBckAnm;
    /* 0x5B8 */ Mtx mMtx;
    /* 0x5E8 */ u8 mAction;
    /* 0x5E9 */ u8 mDemoMode;
    /* 0x5EA */ u8 mType;
    /* 0x5EB */ u8 mSwNo;
    /* 0x5EC */ bool field_0x5ec;
    /* 0x5ED */ bool mIsCheckKey;
    /* 0x5EE */ u8 mEvId;
    /* 0x5EF */ bool mIsWolf;
    /* 0x5F0 */ s16 field_0x5f0[2];
    /* 0x5F4 */ u8 field_0x5f4[0x5fc - 0x5f4];
    /* 0x5FC */ f32 field_0x5fc;
    /* 0x600 */ int mStaffId;
    /* 0x604 */ u8 field_0x604;
    /* 0x605 */ u8 field_0x605;
    /* 0x606 */ u8 mTimer;
    /* 0x608 */ cXyz mSePos;
    /* 0x614 */ fpc_ProcID mKeyHoleId;
    /* 0x618 */ u8 mPhase;
    /* 0x619 */ bool field_0x619;
    /* 0x61A */ s16 mHomeAngleZ;
    /* 0x61C */ s16 mHomeAngleX;
    /* 0x61E */ bool field_0x61e;
};

STATIC_ASSERT(sizeof(daObjKshtr_c) == 0x620);

#endif /* D_A_OBJ_KSHUTTER_H */
