#ifndef D_A_OBJ_SWHANG_H
#define D_A_OBJ_SWHANG_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_event_lib.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSwHang_c
 * @brief Dangle A
 *
 * @details
 *
 */
class daObjSwHang_c : public dBgS_MoveBgActor, public dEvLib_callback_c {
public:
    typedef void (daObjSwHang_c::*modeFunc)();

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
        TYPE_4,
    };

    enum Flags {
        /* 0x01 */ FLAGS_1 = 1 << 0,
        /* 0x02 */ FLAGS_2 = 1 << 1,
    };

    enum Mode {
        MODE_OFF_WAIT,
        MODE_ON_WAIT,
    };

    /* 80CFB9D8 */ void initBaseMtx();
    /* 80CFBA60 */ void setBaseMtx();
    /* 80CFBDD0 */ int create1st();
    /* 80CFC04C */ void calcHangPos();
    /* 80CFC114 */ BOOL checkDown();
    /* 80CFC194 */ void changeOnStatus();
    /* 80CFC1F4 */ void changeOffStatus();
    /* 80CFC4C4 */ void action();
    /* 80CFC550 */ void checkDownSw();
    /* 80CFC698 */ void init_modeOffWait();
    /* 80CFC6AC */ void modeOffWait();
    /* 80CFCA34 */ void init_modeOnWait();
    /* 80CFCA40 */ void modeOnWait();
    /* 80CFCCE0 */ BOOL eventStart();
    /* 80CFD034 */ virtual ~daObjSwHang_c() {}

    daObjSwHang_c() : dEvLib_callback_c(this) {}

    /* 80CFBCB8 */ virtual int CreateHeap();
    /* 80CFBAC8 */ virtual int Create();
    /* 80CFC254 */ virtual int Execute(Mtx**);
    /* 80CFCD04 */ virtual int Draw();
    /* 80CFCD98 */ virtual int Delete();

    cXyz getHangPos() { return mHangPos; }

    void setHangPlayer() { mHangPlayer = 1; }
    u8 getType() { return mType; }
    u8 getType_private() { return fopAcM_GetParamBit(this, 28, 4); }
    u8 checkType() { return fopAcM_GetParamBit(this, 25, 1); }
    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getKind() { return fopAcM_GetParamBit(this, 26, 2); }
    u8 getEvId() { return fopAcM_GetParamBit(this, 8, 8); }
    int getTotteJointNo() { return mTotteJointNo; }
    f32 getHangLength() { return mHangLength; }
    void clrFlag() { mFlags = 0; }
    void onFlag(u16 flag) { mFlags |= flag; }
    u16 checkFlag(u16 flag) { return mFlags & flag; }

private:
    /* 0x5B0 */ request_of_phase_process_class mPhase;
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ dCcD_Stts mCcStts;
    /* 0x5F8 */ dCcD_Sph mCcSph;
    /* 0x730 */ u8 mType;
    /* 0x731 */ u8 mMode;
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
};

STATIC_ASSERT(sizeof(daObjSwHang_c) == 0x790);

#endif /* D_A_OBJ_SWHANG_H */
