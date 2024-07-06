#ifndef D_A_OBJ_LV5YIBLLTRAY_H
#define D_A_OBJ_LV5YIBLLTRAY_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjYIblltray_c
 * @brief Snowpeak Ruins Cannonball Transporter
 *
 * @details
 *
 */
class daObjYIblltray_c : public dBgS_MoveBgActor, public request_of_phase_process_class {
public:
    /* 80C6EBF8 */ void create1st();
    /* 80C6EC88 */ void setMtx();
    /* 80C6F1E8 */ void rideActor(fopAc_ac_c*);
    /* 80C6F23C */ void sendBall(unsigned int);
    /* 80C6F440 */ void onAttention();
    /* 80C6F450 */ void offAttention();
    /* 80C702E0 */ void initRotTo();
    /* 80C7088C */ ~daObjYIblltray_c();

    /* 80C6EDA8 */ virtual int CreateHeap();
    /* 80C6EEFC */ virtual int Create();
    /* 80C6F460 */ virtual int Execute(Mtx**);
    /* 80C70330 */ virtual int Draw();
    /* 80C70408 */ virtual int Delete();

    cXyz& getHandlePos() { return mHandlePos; }
    void onHang() { mIsHang = true; }

private:
    /* 0x5A8 */ cXyz field_0x5a8;
    /* 0x5B4 */ cXyz field_0x5b4;
    /* 0x5C0 */ Mtx field_0x5c0;
    /* 0x5F0 */ Mtx field_0x5f0;
    /* 0x620 */ J3DModel* field_0x620;
    /* 0x624 */ s16 field_0x624;
    /* 0x628 */ cXyz field_0x628;
    /* 0x634 */ u32 field_0x634;
    /* 0x638 */ int field_0x638;
    /* 0x63C */ f32 field_0x63c;
    /* 0x640 */ int field_0x640;
    /* 0x644 */ dCcD_Cyl mCcCyl[3];
    /* 0x9F8 */ dCcD_Stts mCcStts;
    /* 0xA34 */ J3DModel* field_0xa34;
    /* 0xA38 */ mDoExt_bckAnm mBck;
    /* 0xA54 */ Mtx field_0xa54;
    /* 0xA84 */ u8 mIsHang;
    /* 0xA88 */ cXyz mHandlePos;
};

STATIC_ASSERT(sizeof(daObjYIblltray_c) == 0xa94);


#endif /* D_A_OBJ_LV5YIBLLTRAY_H */
