#ifndef D_A_DOOR_BOSS_H
#define D_A_DOOR_BOSS_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_w.h"

class daBdoor_c : public fopAc_ac_c {
public:
    enum Action {
        /* 0 */ ACT_WAIT,
        /* 1 */ ACT_CLOSE_WAIT,
        /* 2 */ ACT_OPEN,
        /* 3 */ ACT_END,
    };

    /* 8066F418 */ char* getArcName();
    /* 8066F424 */ char* getBmd();
    /* 8066F434 */ char* getDzb();
    /* 8066F444 */ char* getBmd2();
    /* 8066F454 */ J3DModelData* getDoorModelData();
    /* 8066F4E4 */ int CreateHeap();
    /* 8066F738 */ void calcMtx();
    /* 8066F7EC */ int CreateInit();
    /* 8066F8E4 */ cPhs__Step create();
    /* 8066FAB8 */ int getDemoAction();
    /* 8066FB00 */ void demoProc();
    /* 8066FF04 */ void calcGoal(cXyz*, int);
    /* 8067002C */ void smokeInit();
    /* 806700C4 */ BOOL checkArea();
    /* 806701F4 */ BOOL checkFront();
    /* 80670294 */ BOOL checkOpen();
    /* 80670320 */ BOOL actionWait();
    /* 80670328 */ BOOL actionCloseWait();
    /* 806703C0 */ BOOL actionOpen();
    /* 806703E4 */ BOOL actionEnd();
    /* 80670544 */ int execute();
    /* 80670664 */ BOOL checkDraw();
    /* 806706A4 */ int draw();
    /* 80670804 */ int Delete();

    void setAction(u8 i_action) { mAction = i_action; }

    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpDoorModel;
    /* 0x574 */ J3DModel* mpLockModel;
    /* 0x578 */ mDoExt_bckAnm* mpLockAnm;
    /* 0x57C */ dBgW* mpBgW;
    /* 0x580 */ bool mBgInactive;
    /* 0x581 */ u8 mAction;
    /* 0x582 */ u8 field_0x582[6];
    /* 0x588 */ u32 mStaffID;
    /* 0x58C */ s16 field_0x58c;
    /* 0x590 */ f32 mOffsetY;
    /* 0x594 */ bool mLocked;
    /* 0x598 */ cXyz mParticlePos;
    /* 0x5A4 */ csXyz mParticleAngle;
    /* 0x5AC */ dBgS_ObjAcch mAcch;
    /* 0x784 */ dBgS_AcchCir mAcchCir;
};

STATIC_ASSERT(sizeof(daBdoor_c) == 0x7C4);

#endif /* D_A_DOOR_BOSS_H */
