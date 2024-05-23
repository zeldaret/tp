#ifndef D_A_OBJ_ICE_L_H
#define D_A_OBJ_ICE_L_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"

class daObjIce_l_c : public dBgS_MoveBgActor {
public:
    /* 80C1F9F8 */ void RideOn_Angle(s16&, f32, s16, f32);
    /* 80C1FA60 */ int Check_RideOn(cXyz);
    /* 80C1FCCC */ void initBaseMtx();
    /* 80C1FCF8 */ void setBaseMtx();
    /* 80C200CC */ int create();
    
    /* 80C2030C */ virtual int CreateHeap();
    /* 80C20384 */ virtual int Create();
    /* 80C203C4 */ virtual int Execute(Mtx**);
    /* 80C206AC */ virtual int Draw();
    /* 80C20750 */ virtual int Delete();

private:
    /* 0x5A0 */ f32 field_0x5a0;
    /* 0x5A4 */ f32 field_0x5a4;
    /* 0x5A8 */ u8 field_0x5A8[0x5AC - 0x5A8];
    /* 0x5AC */ s16 field_0x5ac;
    /* 0x5AE */ u8 field_0x5AE[0x5B0 - 0x5AE];
    /* 0x5B0 */ u8 field_0x5b0;
    /* 0x5B1 */ u8 field_0x5b1;
    /* 0x5B2 */ u8 field_0x5B2[0x5B4 - 0x5B2];
    /* 0x5B4 */ cXyz field_0x5b4;
    /* 0x5C0 */ f32 field_0x5c0;
    /* 0x5C4 */ u8 field_0x5C4[0x5CC - 0x5C4];
    /* 0x5CC */ csXyz field_0x5cc;
    /* 0x5D2 */ u8 field_0x5D2[0x5D4 - 0x5D2];
    /* 0x5D4 */ s16 field_0x5d4;
    /* 0x5D6 */ s16 field_0x5d6;
    /* 0x5D8 */ csXyz field_0x5d8;
    /* 0x5DE */ u8 field_0x5DE[0x5E0 - 0x5DE];
    /* 0x5E0 */ f32 field_0x5e0;
    /* 0x5E4 */ s16 field_0x5e4;
    /* 0x5E6 */ u8 field_0x5e6;
    /* 0x5E7 */ u8 field_0x5E7[0x5E8 - 0x5E7];
    /* 0x5E8 */ cXyz field_0x5e8;
    /* 0x5F4 */ s16 field_0x5f4;
    /* 0x5F6 */ u8 field_0x5F6[0x5F8 - 0x5F6];
    /* 0x5F8 */ dCcD_Stts field_0x5f8;
    /* 0x634 */ J3DModel* mpModel;
    /* 0x638 */ request_of_phase_process_class mPhase;
};
STATIC_ASSERT(sizeof(daObjIce_l_c) == 0x640);

#endif /* D_A_OBJ_ICE_L_H */
