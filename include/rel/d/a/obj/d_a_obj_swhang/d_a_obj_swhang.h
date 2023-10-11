#ifndef D_A_OBJ_SWHANG_H
#define D_A_OBJ_SWHANG_H

#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"
#include "d/event/d_event_lib.h"

class daObjSwHang_c : public dBgS_MoveBgActor {
public:
    /* 80101874 */ cXyz getHangPos();
    /* 80CFB9D8 */ void initBaseMtx();
    /* 80CFBA60 */ void setBaseMtx();
    /* 80CFBDD0 */ void create1st();
    /* 80CFC04C */ void calcHangPos();
    /* 80CFC114 */ void checkDown();
    /* 80CFC194 */ void changeOnStatus();
    /* 80CFC1F4 */ void changeOffStatus();
    /* 80CFC4C4 */ void action();
    /* 80CFC550 */ void checkDownSw();
    /* 80CFC698 */ void init_modeOffWait();
    /* 80CFC6AC */ void modeOffWait();
    /* 80CFCA34 */ void init_modeOnWait();
    /* 80CFCA40 */ void modeOnWait();
    /* 80CFCCE0 */ void eventStart();
    /* 80CFD034 */ ~daObjSwHang_c();

    /* 80CFBCB8 */ virtual int CreateHeap();
    /* 80CFBAC8 */ virtual int Create();
    /* 80CFC254 */ virtual int Execute(f32 (**)[3][4]);
    /* 80CFCD04 */ virtual int Draw();
    /* 80CFCD98 */ virtual int Delete();

    void setHangPlayer() { mHangPlayer = 1; }
    u8 getType() { return field_0x730; }

    /* 0x5A0 */ dEvLib_callback_c field_0x5a0;
    /* 0x5B0 */ request_of_phase_process_class mPhase;
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ dCcD_Stts mCcStts;
    /* 0x5F8 */ dCcD_Sph mCcSph;
    /* 0x730 */ u8 field_0x730;
    /* 0x731 */ u8 mType;
    /* 0x734 */ dBgW* mpBgW;
    /* 0x738 */ Mtx field_0x738;
    /* 0x768 */ int mTotteJointNo;
    /* 0x76C */ f32 mHangLength;
    /* 0x770 */ cXyz mHangPos;
    /* 0x77C */ u8 mHangPlayer;
    /* 0x77D */ u8 field_0x77d;
    /* 0x77E */ u8 field_0x77e;
    /* 0x780 */ u16 mFlags;
    /* 0x784 */ f32 field_0x784;
    /* 0x788 */ f32 field_0x788;
    /* 0x78C */ s16 field_0x78c;
};  // Size: 0x790

#endif /* D_A_OBJ_SWHANG_H */
