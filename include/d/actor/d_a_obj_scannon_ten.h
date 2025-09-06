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
class daObjSCannonTen_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    enum daSCannonTen_exeMode {
        MODE_WAIT,
        MODE_ORDER_EVT,
        MODE_ACTION_EVT,
        MODE_END,
    };

    /* 80CCB364 */ daObjSCannonTen_c();
    /* 80CCB43C */ virtual ~daObjSCannonTen_c();
    /* 80CCB4EC */ int createHeap();
    /* 80CCB66C */ int create();
    /* 80CCB9E0 */ int Delete();
    /* 80CCBA58 */ int draw();
    /* 80CCBB6C */ int execute();
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

    static void (daObjSCannonTen_c::*s_exeProc[])();
    static void (daObjSCannonTen_c::*s_demoExeProc[][2])();

private:
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ mDoExt_bckAnm mBck;
    /* 0x594 */ dBgW* mpBgW;
    /* 0x598 */ cBgS_PolyInfo mGroundPoly;
    /* 0x5A8 */ Mtx mBgMtx;
    /* 0x5D8 */ f32 mGroundY;
    /* 0x5DC */ u32 mShadowKey;
    /* 0x5E0 */ int mTimer;
    /* 0x5E4 */ int mStaffId;
    /* 0x5E8 */ u8 field_0x5E8[0x5EC - 0x5E8];
    /* 0x5EC */ s16 mEvtIdx;
    /* 0x5EE */ u16 mHeadJointNo;
    /* 0x5F0 */ u8 mMode;
    /* 0x5F4 */ JPABaseEmitter* mpEmtSmk[3];
    /* 0x600 */ JPABaseEmitter* mpEmtLine;
};

STATIC_ASSERT(sizeof(daObjSCannonTen_c) == 0x604);


#endif /* D_A_OBJ_SCANNON_TEN_H */
