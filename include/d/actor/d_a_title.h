#ifndef D_A_TITLE_H
#define D_A_TITLE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_drawlist.h"

class dDlst_daTitle_c : public dDlst_base_c {
public:
    /* 80D679C8 */ virtual void draw();
    /* 80D67B30 */ virtual ~dDlst_daTitle_c() {}

    /* 0x4 */ J2DScreen* Scr;
};

class mDoDvdThd_mountArchive_c;
class CPaneMgrAlpha;

/**
 * @ingroup actors-unsorted
 * @class daTitle_c
 * @brief Title Logo
 *
 * @details
 *
 */
class daTitle_c : public fopAc_ac_c {
public:
    //daTitle_c() {}
    /* 80D66B54 */ int CreateHeap();
    /* 80D66CDC */ int create();
    /* 80D66E7C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80D66E9C */ int Execute();
    /* 80D66F34 */ void KeyWaitAnm();
    /* 80D67010 */ void loadWait_init();
    /* 80D6701C */ void loadWait_proc();
    /* 80D672E0 */ void logoDispWaitInit();
    /* 80D672EC */ void logoDispWait();
    /* 80D67350 */ void logoDispAnmInit();
    /* 80D6737C */ void logoDispAnm();
    /* 80D674A8 */ void keyWaitInit();
    /* 80D674B4 */ void keyWait();
    /* 80D67544 */ void nextScene_init();
    /* 80D67550 */ void nextScene_proc();
    /* 80D675EC */ void fastLogoDispInit();
    /* 80D676AC */ void fastLogoDisp();
    /* 80D676F4 */ int getDemoPrm();
    /* 80D67768 */ int Draw();
    /* 80D6786C */ int Delete();

private:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ JKRHeap* mpHeap;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ mDoExt_bckAnm mBck;
    /* 0x594 */ mDoExt_bpkAnm mBpk;
    /* 0x5AC */ mDoExt_brkAnm mBrk;
    /* 0x5C4 */ mDoExt_btkAnm mBtk;
    /* 0x5DC */ JKRExpHeap* m2DHeap;
    /* 0x5E0 */ mDoDvdThd_mountArchive_c* mpMount;
    /* 0x5E4 */ dDlst_daTitle_c mTitle;
    /* 0x5EC */ JUTFont* mpFont;
    /* 0x5F0 */ u8 field_0x5f0[8];
    /* 0x5F8 */ u8 field_0x5f8;
    /* 0x5F9 */ u8 field_0x5f9;
    /* 0x5FA */ u8 field_0x5fa;
    /* 0x5FB */ u8 mProcID;
    /* 0x5FC */ u8 field_0x5fc;
    /* 0x600 */ CPaneMgrAlpha* field_0x600;
    /* 0x604 */ u8 field_0x604;
};  // Size: 0x608

typedef void (daTitle_c::*procFunc)();

STATIC_ASSERT(sizeof(daTitle_c) == 0x608);

#endif /* D_A_TITLE_H */
