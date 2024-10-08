#ifndef D_A_OBJ_HHASHI_H
#define D_A_OBJ_HHASHI_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjHHASHI_c
 * @brief Pillar
 *
 * @details
 *
 */
class daObjHHASHI_c : public dBgS_MoveBgActor {
public:
    /* 8057F9B8 */ void initCcCylinder();
    /* 8057FA18 */ void setCcCylinder();
    /* 8057FA90 */ void Set_Hahen(cXyz*);
    /* 8057FDA8 */ void Set_Speed(s16, s16, f32, f32, f32, f32);
    /* 805801B0 */ void Obj_Damage();
    /* 80580358 */ void Wall_Check(s16);
    /* 8058043C */ void Hahen_Motion(s16);
    /* 805805F4 */ void CheckCull();
    /* 805807C4 */ bool checkViewArea(int);
    /* 80580854 */ void Rolling(cXyz*, f32, f32, s8);
    /* 80580A48 */ void Roll_Set(cXyz*, f32, s16);
    /* 80580C80 */ void setBaseMtx();
    /* 80580DA4 */ int CreateHeap();
    /* 80580EA0 */ int create();
    /* 805811CC */ int Create();
    /* 80581210 */ int Execute(f32 (**)[3][4]);
    /* 805812BC */ int Draw();
    /* 8058140C */ int Delete();

private:
    /* 0x05A0 */ int field_0x5a0;
    /* 0x05A4 */ int field_0x5a4;
    /* 0x05A8 */ s8 field_0x5a8;
    /* 0x05AA */ s16 field_0x5aa;
    /* 0x05AC */ int field_0x5ac;
    /* 0x05B0 */ cXyz field_0x5b0[50];
    /* 0x0808 */ cXyz field_0x808[50];
    /* 0x0A60 */ cXyz field_0xa60[50];
    /* 0x0CB8 */ f32 field_0xcb8;
    /* 0x0CBC */ csXyz field_0xcbc[50];
    /* 0x0DE8 */ csXyz field_0xde8[50];
    /* 0x0F14 */ u8 field_0xf14[50];
    /* 0x0F46 */ s16 field_0xf46;
    /* 0x0F48 */ int field_0xf48;
    /* 0x0F4C */ J3DModel* mModel;
    /* 0x0F50 */ J3DModel* mShardModels[50];
    /* 0x1018 */ request_of_phase_process_class mPhase;
    /* 0x1020 */ dCcD_Stts mStts;
    /* 0x105c */ dCcD_Cyl mCyl;
    /* 0x1198 */ u8 field_0x1198;
    /* 0x1199 */ u8 field_0x1199;
};

STATIC_ASSERT(sizeof(daObjHHASHI_c) == 0x119c);


#endif /* D_A_OBJ_HHASHI_H */
