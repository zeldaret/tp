#ifndef D_A_OBJ_STICK_H
#define D_A_OBJ_STICK_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObj_Stick_c
 * @brief Stick
 *
 * @details
 *
 */
class daObj_Stick_c : public fopAc_ac_c {
public:
    /* 8059922C */ virtual ~daObj_Stick_c();
    /* 805993E8 */ void create();
    /* 80599888 */ void CreateHeap();
    /* 80599900 */ int Delete();
    /* 80599934 */ void Execute();
    /* 80599A78 */ int Draw();
    /* 80599B3C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80599B5C */ const char* getResName();
    /* 80599B6C */ bool isDelete();
    /* 80599B8C */ void setEnvTevColor();
    /* 80599BE8 */ void setRoomNo();
    /* 80599C28 */ void setMtx();

    static u8 mCcDSph[64];

private:
    /* 56c */ request_of_phase_process_class mPhase;
    /* 574 */ J3DModel* mpModel;
    /* 578 */ dBgS_Acch mAcch;
    /* 750 */ dCcD_Stts mStts;
    /* 78c */ dBgS_AcchCir mAcchCir;
    /* 7cc */ cBgS_GndChk mGndChk;
    /* 808 */ dCcD_Sph mSph;
    /* 940 */ f32 mGndHeight;
    /* 944 */ u32 mShadowKey;
    /* 948 */ bool mDeleteFlag;
    /* 949 */ u32 something;
    /* 94c */ //vtable
};

STATIC_ASSERT(sizeof(daObj_Stick_c) == 0x950);

class daObj_Stick_Param_c {
public:
    /* 80599DD0 */ ~daObj_Stick_Param_c();

    static u8 const m[16];
};


#endif /* D_A_OBJ_STICK_H */
