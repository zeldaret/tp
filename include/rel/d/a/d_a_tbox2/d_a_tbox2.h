#ifndef D_A_TBOX2_H
#define D_A_TBOX2_H

#include "rel/d/a/d_a_tbox/d_a_tbox.h"

/**
 * @ingroup actors-unsorted
 * @class daTbox2_c
 * @brief Treasure Box 2
 *
 * @details
 *
 */
class daTbox2_c : public daTboxBase_c {
public:
    enum Type_e {
        TYPE_SMALL_e,
        TYPE_BIG_e,
    };

    enum Mode_e {
        MODE_EXEC_WAIT_e,
        MODE_EXEC_e,
    };

    enum Action_e {
        ACTION_OPEN_WAIT_e,
        ACTION_OPEN_DEMO_e,
        ACTION_NOT_OPEN_DEMO_e,
        ACTION_WAIT_e,
    };

    enum EventAct_e {
        EVACT_WAIT_e,
        EVACT_OPEN_e,
        EVACT_APPEAR_e,
        EVACT_OPEN_SHORT_e,
    };

    /* 80496A18 */ void initBaseMtx();
    /* 80496A54 */ void setBaseMtx();
    /* 80496E3C */ int create1st();
    /* 8049724C */ int demoProc();
    /* 80497478 */ void openInit();
    /* 804975EC */ void mode_proc_call();
    /* 80497678 */ void mode_exec_wait();
    /* 80497790 */ void mode_exec();
    /* 8049780C */ void action();
    /* 804978C8 */ void init_actionWait();
    /* 804978D4 */ void actionWait();
    /* 804978D8 */ void init_actionNotOpenDemo();
    /* 804978E4 */ void actionNotOpenDemo();
    /* 8049794C */ void init_actionOpenDemo();
    /* 80497958 */ void actionOpenDemo();
    /* 80497A0C */ void init_actionOpenWait();
    /* 80497A18 */ void actionOpenWait();
    /* 80497BD0 */ int setGetDemoItem();
    /* 80497C60 */ BOOL boxCheck();

    /* 80496C20 */ virtual int CreateHeap();
    /* 80496AB8 */ virtual int Create();
    /* 80497500 */ virtual int Execute(f32 (**)[3][4]);
    /* 80497DA0 */ virtual int Draw();
    /* 80497E6C */ virtual int Delete();
    /* 80498140 */ virtual BOOL checkSmallTbox() { return true; }

    u8 getModelType() { return fopAcM_GetParamBit(this, 8, 4); }
    u8 getItemNo() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x718 */ u8 mReturnRupee;
    /* 0x71C */ request_of_phase_process_class mPhase;
    /* 0x724 */ J3DModel* mpModel;
    /* 0x728 */ mDoExt_bckAnm* mpBck;
    /* 0x72C */ dBgS_ObjAcch mAcch;
    /* 0x904 */ dBgS_AcchCir mAcchCir;
    /* 0x944 */ dCcD_Stts mCcStts2;
    /* 0x980 */ dCcD_Cyl mCcCyl2;
    /* 0xABC */ u8 mModelType;
    /* 0xABD */ u8 mAction;
    /* 0xABE */ u8 mMode;
    /* 0xABF */ bool mNoDraw;
    /* 0xAC0 */ u8 field_0xAC0[0xAC4 - 0xAC0];
    /* 0xAC4 */ int mStaffIdx;
    /* 0xAC8 */ dBgW* mBoxBgW;
};

STATIC_ASSERT(sizeof(daTbox2_c) == 0xACC);

struct res_info {
public:
    /* 0x0 */ int bmd_no;
    /* 0x4 */ int bck_no;
    /* 0x8 */ int dzb_id;
    /* 0xC */ int dzb_no;
};


#endif /* D_A_TBOX2_H */
