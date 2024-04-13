#ifndef D_A_OBJ_PLEAF_H
#define D_A_OBJ_PLEAF_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObj_Pleaf_c : public fopAc_ac_c {
public:
    /* 0x568*/ u8 field_0x568[0x56C - 0x568];
    /* 0x56C */ request_of_phase_process_class mPhaseReq;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ dBgS_ObjAcch mObjAcch;
    /* 0x750 */ dCcD_Stts mStts;
    /* 0x78C */ dBgS_AcchCir mAcchCir;
    /* 0x7CC */ cBgS_GndChk mGndChk;
    /* 0x808 */ dCcD_Sph mSph;
    /* 0x940 */ f32 mGroundDist;
    /* 0x944 */ u32 mShadowKey;
    /* 0x948 */ u8 mType;

    u32 getType() { return 0; }

    /* 80CB0D4C */ virtual ~daObj_Pleaf_c();
    /* 80CB0F08 */ int create();
    /* 80CB134C */ int CreateHeap();
    /* 80CB13C4 */ int Delete();
    /* 80CB13F8 */ int Execute();
    /* 80CB14D4 */ int Draw();
    /* 80CB1598 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80CB15B8 */ char* getResName();
    /* 80CB15C8 */ int isDelete();
    /* 80CB15E8 */ void setEnvTevColor();
    /* 80CB1644 */ void setRoomNo();
    /* 80CB1684 */ void setMtx();
};

class daObj_Pleaf_Param_c {
public:
    /* 80CB17F8 */ virtual ~daObj_Pleaf_Param_c() {}

    struct params {
        f32 field_0x0;
        f32 field_0x4;
        f32 field_0x8;
        f32 field_0xc;
    };

    static daObj_Pleaf_Param_c::params const m;
};

#endif /* D_A_OBJ_PLEAF_H */
