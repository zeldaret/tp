#ifndef D_A_OBJ_BHBRIDGE_H
#define D_A_OBJ_BHBRIDGE_H

#include "d/d_a_obj.h"
#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daObjBhbridge_c
 * @brief BH Bridge?
 *
 * @details
 *
 */
class daObjBhbridge_c : public dBgS_MoveBgActor {
public:
    /* 80BB5318 */ void RideOn_Angle(s16&, f32, s16, f32);
    /* 80BB5380 */ int Check_RideOn();
    /* 80BB558C */ void initBaseMtx();
    /* 80BB55B8 */ void setBaseMtx();
    /* 80BB5934 */ virtual int CreateHeap();
    /* 80BB59AC */ virtual int Create();
    /* 80BB5A14 */ virtual int Execute(f32 (**)[3][4]);
    /* 80BB5E10 */ virtual int Draw();
    /* 80BB5EB4 */ virtual int Delete();

    inline int create();

    /* 0x5A0 */ f32 field_0x5a0;
    /* 0x5A4 */ bool field_0x5a4;
    /* 0x5A8 */ f32 field_0x5a8;
    /* 0x5AC */ f32 field_0x5ac;
    /* 0x5B0 */ s16 field_0x5b0;
    /* 0x5B2 */ u8 field_0x5b2[0x5c0 - 0x5b2];
    /* 0x5C0 */ csXyz field_0x5c0;
    /* 0x5C6 */ bool field_0x5c6;
    /* 0x5C7 */ u8 field_0x5c7[0x5ca - 0x5c7];
    /* 0x5CA */ s16 field_0x5ca;
    /* 0x5CC */ s16 field_0x5cc;
    /* 0x5CE */ csXyz field_0x5ce;
    /* 0x5D4 */ f32 field_0x5d4;
    /* 0x5D8 */ u8 field_0x5d8[0x5dc - 0x5d8];
    /* 0x5DC */ s16 field_0x5dc;
    /* 0x5DE */ bool field_0x5de;
    /* 0x5E0 */ cXyz field_0x5e0;
    /* 0x5EC */ J3DModel* mModel;
    /* 0x5F0 */ request_of_phase_process_class mPhase;
    /* 0x5F8 */ dBgS_ObjAcch mAcch;
    /* 0x7D0 */ dBgS_AcchCir mAcchCir;
};

STATIC_ASSERT(sizeof(daObjBhbridge_c) == 0x810);


#endif /* D_A_OBJ_BHBRIDGE_H */
