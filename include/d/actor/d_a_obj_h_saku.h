#ifndef D_A_OBJ_H_SAKU_H
#define D_A_OBJ_H_SAKU_H

#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjH_Saku_c
 * @brief H - Fence
 *
 * @details
 *
*/

class daObjH_Saku_c : public dBgS_MoveBgActor {
public:
    /* 80C1552C */ void BreakSet();
    /* 80C15810 */ u8 SpeedSet(cXyz*, cXyz*, f32);
    /* 80C15A4C */ void Action();
    /* 80C15E00 */ void initBaseMtx();
    /* 80C15E44 */ void setBaseMtx();
    /* 80C161E8 */ inline int CreateHeap();
    /* 80C1629C */ inline int Create();
    /* 80C162F4 */ inline int Execute(Mtx**);
    /* 80C16340 */ inline int Draw();
    /* 80C1641C */ inline int Delete();
    inline cPhs__Step create();

    /* 0x5A0 */ u8 field_0x5a0;
    /* 0x5A1 */ u8 field_0x5a1;
    /* 0x5A4 */ cXyz field_0x5a4;
    /* 0x5B0 */ cXyz field_0x5b0;
    /* 0x5BC */ csXyz field_0x5bc;
    /* 0x5C4 */ f32 field_0x5c4;
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CA */ csXyz field_0x5ca;
    /* 0x5D0 */ csXyz field_0x5d0;
    /* 0x5D6 */ csXyz field_0x5d6;
    /* 0x5DC */ u8 field_0x5dc;
    /* 0x5DD */ u8 field_0x5dd;
    /* 0x5DE */ u8 field_0x5de;
    /* 0x5E0 */ cXyz field_0x5e0;
    /* 0x5EC */ dCcD_Stts mStts;
    /* 0x628 */ J3DModel* field_0x628;
    /* 0x62C */ J3DModel* field_0x62c;
    /* 0x630 */ request_of_phase_process_class mPhase;
    /* 0x638 */ dBgS_AcchCir mAcchCir;
    /* 0x678 */ dBgS_ObjAcch mBgc;
};

STATIC_ASSERT(sizeof(daObjH_Saku_c) == 0x850);


#endif /* D_A_OBJ_H_SAKU_H */
