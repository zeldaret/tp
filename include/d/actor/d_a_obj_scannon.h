#ifndef D_A_OBJ_SCANNON_H
#define D_A_OBJ_SCANNON_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daSCannon_c
 * @brief Sky Cannon (City in the Sky)
 *
 * @details
 *
 */
class daSCannon_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    struct demoTable_s {
        /* 0x0 */ void (daSCannon_c::*(*demo_proc_table)[2])();
        /* 0x4 */ char** cut_table;
        /* 0x8 */ int cut_num;
    };

    enum daSCannon_exeMode {
        MODE_WAIT,
        MODE_ORDER_EVT,
        MODE_ACTION_EVT,
        MODE_END,
    };

    enum daSCannon_demoType {
        DEMOTYPE_WARP_END,
        DEMOTYPE_FIRE_FIRST,
        DEMOTYPE_FIRE_TKS,
        DEMOTYPE_FIRE_SECOND,  
    };

    /* 80CC6B0C */ daSCannon_c();
    /* 80CC6C10 */ virtual ~daSCannon_c();
    /* 80CC6D10 */ int create();
    /* 80CC7204 */ int execute();
    /* 80CC7228 */ int draw();
    /* 80CC747C */ int Delete();
    /* 80CC7508 */ void setModelMtx();
    /* 80CC7578 */ void setPtlModelMtx();
    /* 80CC7608 */ int createHeap();
    /* 80CC7970 */ void middleExe();
    /* 80CC7A10 */ void orderEvtInit();
    /* 80CC7AB8 */ void exeModeWait();
    /* 80CC7C48 */ void exeModeOrderEvt();
    /* 80CC7D14 */ void exeModeActionEvt();
    /* 80CC7EBC */ void exeModeEnd();
    /* 80CC7EC0 */ void demoExe();
    /* 80CC7FAC */ void demoModeInit(int);
    /* 80CC8044 */ void demoInitLinkIn();
    /* 80CC8048 */ void demoExeLinkIn();
    /* 80CC8108 */ void demoInitSet();
    /* 80CC81DC */ void demoExeSet();
    /* 80CC8274 */ void demoInitMove();
    /* 80CC8278 */ void demoExeMove();
    /* 80CC8378 */ void demoInitFire();
    /* 80CC83CC */ void demoExeFire();
    /* 80CC8430 */ void demoInitFinish();
    /* 80CC8538 */ void demoExeFinish();
    /* 80CC8648 */ void demoInitWarpEndWait();
    /* 80CC8714 */ void demoExeWarpEndWait();
    /* 80CC8804 */ void demoInitWarpEndMove();
    /* 80CC8818 */ void demoExeWarpEndMove();
    /* 80CC88A8 */ void changeScene();
    /* 80CC8998 */ void init();
    /* 80CC8A30 */ void initEmtRt(u16, int, u16 const*, JPABaseEmitter**);
    /* 80CC8B60 */ void exeEmtRt(u16, int, JPABaseEmitter**);
    /* 80CC8BF4 */ void initEmtLine();
    /* 80CC8CDC */ void exeEmtLine();
    /* 80CC8DA0 */ void delEmtAll();
    /* 80CC8DDC */ void setCannonRepair();

    int getSw1() { return fopAcM_GetParamBit(this, 0, 8); }
    int getSw2() { return fopAcM_GetParamBit(this, 8, 8); }

    static const demoTable_s s_demoTable[];
    static void (daSCannon_c::*s_exeProc[])();
    static void (daSCannon_c::*s_demoExeProc_WarpEnd[][2])();
    static void (daSCannon_c::*s_demoExeProc_FireTks[][2])();
    static void (daSCannon_c::*s_demoExeProc_FireFirst[][2])();
    static void (daSCannon_c::*s_demoExeProc_FireSecond[][2])();

private:
    /* 0x574 */ request_of_phase_process_class mZevPhase;
    /* 0x57C */ request_of_phase_process_class mPtlPhase;
    /* 0x584 */ mDoExt_bckAnm mBck;
    /* 0x5A0 */ cBgS_PolyInfo mGroundPoly;
    /* 0x5B0 */ Mtx mBgMtx;
    /* 0x5E0 */ dBgW* mpBgW;
    /* 0x5E4 */ J3DModel* mpModels[2];
    /* 0x5EC */ J3DModel* mpPtlModel;
    /* 0x5F0 */ mDoExt_btkAnm* mpCrashBtk;
    /* 0x5F4 */ mDoExt_btkAnm* mpPtlBtk;
    /* 0x5F8 */ f32 mGroundY;
    /* 0x5FC */ u32 mShadowKey;
    /* 0x600 */ int mTimer;
    /* 0x604 */ int mStaffId;
    /* 0x608 */ int mDemoFinishTimer;
    /* 0x60C */ int mLayerNo;
    /* 0x610 */ s16 mEvtIdx;
    /* 0x612 */ u16 mHeadJointNo;
    /* 0x614 */ u16 mCrashJointNo;
    /* 0x616 */ u8 mMode;
    /* 0x617 */ u8 mIsRepaired;
    /* 0x618 */ u8 mDemoType;
    /* 0x619 */ u8 field_0x619;
    /* 0x61A */ u8 mIsPortal;
    /* 0x61B */ u8 mDrawShadow;
    /* 0x61C */ JPABaseEmitter* mpEmtApp[3];
    /* 0x628 */ JPABaseEmitter* mpEmtSmk[3];
    /* 0x634 */ JPABaseEmitter* mpEmtLine;
};

STATIC_ASSERT(sizeof(daSCannon_c) == 0x638);


#endif /* D_A_OBJ_SCANNON_H */
