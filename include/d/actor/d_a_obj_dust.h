#ifndef D_A_OBJ_DUST_H
#define D_A_OBJ_DUST_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_event_lib.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/actor/d_a_player.h"
#include "d/d_bg_w.h"
#include "d/d_resorce.h"
#include "d/d_s_play.h"

#include <cmath.h>

/**
 * @ingroup actors-objects
 * @class daObjDust_c
 * @brief Dust
 *
 * @details
 *
 */
class daObjDust_c : public dBgS_MoveBgActor {
public:
    /* 80BE22B8 */ void Search_Ymb();
    /* 80BE2490 */ void RideOn_Angle(s16&, f32, s16, f32);
    /* 80BE24F8 */ int Check_RideOn();
    /* 80BE2708 */ void initBaseMtx();
    /* 80BE2734 */ void setBaseMtx();
    /* 80BE2A70 */ int CreateHeap();
    /* 80BE2AE8 */ int Create();
    /* 80BE2B30 */ int Execute(Mtx**);
    /* 80BE2E9C */ int Draw();
    /* 80BE2F40 */ int Delete();

    inline int create();

    /* 0x5a0 */ f32 field_0x5a0;
    /* 0x5a4 */ f32 field_0x5a4; 
    /* 0x5a8 */ f32 field_0x5a8; 
    /* 0x5ac */ s16 field_0x5ac;
    /* 0x5ae */ u8 field_0x5ae[0x5c4 - 0x5ae];
    /* 0x5c4 */ s16 field_0x5c4;
    /* 0x5c6 */ s16 field_0x5c6;
    /* 0x5c8 */ s16 field_0x5c8;
    /* 0x5ca */ u8 field_0x5ca[0x5cc - 0x5ca];
    /* 0x5cc */ s16 field_0x5cc;
    /* 0x5ce */ u8 field_0x5ce[0x5d0 - 0x5ce];
    /* 0x5d0 */ f32 field_0x5d0;
    /* 0x5d4 */ u8 field_0x5d4[0x5e1 - 0x5d4];
    /* 0x5e1 */ bool mYmbFlag;
    /* 0x5e4 */ dCcD_Stts mStts;
    /* 0x620 */ J3DModel* mpModel;
    /* 0x624 */ u8 field_0x624[4];
    /* 0x628 */ request_of_phase_process_class mPhaseReq;
    /* 0x630 */ bool mRideOnFlag;
    /* 0x634 */ dBgS_AcchCir mAcchCir;
    /* 0x674 */ dBgS_ObjAcch mAcch;
};

STATIC_ASSERT(sizeof(daObjDust_c) == 0x84c);


#endif /* D_A_OBJ_DUST_H */
