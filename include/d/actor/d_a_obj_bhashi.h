#ifndef D_A_OBJ_BHASHI_H
#define D_A_OBJ_BHASHI_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

class Hahen_c {
public:
    /* 80577794 */ Hahen_c();
    /* 805777A4 */ void Wall_Check();
    /* 80577868 */ void HahenMotion();
    /* 80577C1C */ bool CheckCull();
    /* 80577DA4 */ bool checkViewArea();
    /* 80577FE0 */ void Roll_Set(cXyz*, f32, s16);

    /* 0x00 */ cXyz pos;
    /* 0x0C */ cXyz speed;
    /* 0x18 */ cXyz scale;
    /* 0x24 */ csXyz rotation;
    /* 0x2A */ csXyz rot_speed;
    /* 0x30 */ u8 status;
    /* 0x31 */ u8 field_0x31;
};

/**
 * @ingroup actors-objects
 * @class daObjBHASHI_c
 * @brief Pillar
 *
 * @details
 *
 */
class daObjBHASHI_c : public dBgS_MoveBgActor {
public:
    /* 80576A58 */ void initCcCylinder();
    /* 80576AC4 */ void setCcCylinder();
    /* 80576B78 */ void Set_Hahen();
    /* 80576C50 */ void Set_Speed(s16, s16, f32, f32);
    /* 80577500 */ void Obj_Damage(cXyz);
    /* 805771EC */ void Obj_Damage();
    /* 80577E24 */ void Rolling(cXyz*, f32, f32);
    /* 805781FC */ void setBaseMtx();
    /* 8057842C */ int create();

    /* 80578330 */ virtual int CreateHeap();
    /* 80578788 */ virtual int Create();
    /* 805787CC */ virtual int Execute(Mtx**);
    /* 805788EC */ virtual int Draw();
    /* 805789E8 */ virtual int Delete();

private:
    /* 0x05A0 */ u8 field_0x5A0[0x05A4 - 0x05A0];
    /* 0x05A4 */ int mMode;
    /* 0x05A8 */ s16 field_0x5a8;
    /* 0x05AC */ Hahen_c mHahen[60];
    /* 0x11DC */ f32 field_0x11dc;
    /* 0x11E0 */ s16 field_0x11e0;
    /* 0x11E2 */ u8 mSwbit;
    /* 0x11E4 */ s16 mDamageTimer;
    /* 0x11E6 */ u8 field_0x11E6[0x11EC - 0x11E6];
    /* 0x11EC */ J3DModel* mpPillarMdl;
    /* 0x11F0 */ J3DModel* mpHahenMdls[60];
    /* 0x12E0 */ request_of_phase_process_class mPhase;
    /* 0x12E8 */ dCcD_Stts mCcStts;
    /* 0x1324 */ dCcD_Cyl mCcCyl;
    /* 0x1460 */ u8 field_0x1460;
    /* 0x1461 */ u8 mIsHahenSimpleEntry;
};

STATIC_ASSERT(sizeof(daObjBHASHI_c) == 0x1464);

#endif /* D_A_OBJ_BHASHI_H */
