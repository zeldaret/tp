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
private:
    /* 568 */ mDoHIO_entry_c* field_0x568;
    /* 56c */ request_of_phase_process_class mPhase;
    /* 574 */ J3DModel* mpModel;
    /* 578 */ dBgS_ObjAcch mAcch;
    /* 750 */ dCcD_Stts mStts;
    /* 78c */ dBgS_AcchCir mAcchCir;
    /* 7cc */ cBgS_GndChk mGndChk;
    /* 808 */ dCcD_Sph mSph;
    /* 940 */ f32 mGroundHeight;
    /* 944 */ u32 mShadowKey;
    /* 948 */ u8 mType;
    /* 94c */ //params
public:
    /* 8059922C */ virtual ~daObj_Stick_c();
    /* 805993E8 */ u32 create();
    /* 80599888 */ u32 CreateHeap();
    /* 80599900 */ u32 Delete();
    /* 80599934 */ u32 Execute();
    /* 80599A78 */ u32 Draw();
    /* 80599B3C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80599B5C */ const char* getResName();
    /* 80599B6C */ BOOL isDelete();
    /* 80599B8C */ void setEnvTevColor();
    /* 80599BE8 */ void setRoomNo();
    /* 80599C28 */ void setMtx();

    u32 getType() { return 0; }

    static dCcD_SrcSph mCcDSph;
};

STATIC_ASSERT(sizeof(daObj_Stick_c) == 0x950);

class daObj_Stick_Param_c {
public:
    /* 80599DD0 */ inline virtual ~daObj_Stick_Param_c();

    static const f32 m[4];
};


#endif /* D_A_OBJ_STICK_H */
