#ifndef D_A_OBJ_NOUGU_H
#define D_A_OBJ_NOUGU_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObj_Nougu_c
 * @brief Farm Tools
 *
 * @details
 *
 */
class daObj_Nougu_c : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[0x56C - 0x568];
    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ dBgS_ObjAcch mAcch;
    /* 0x750 */ dCcD_Stts mCcStts;
    /* 0x78C */ dBgS_AcchCir mAcchCir;
    /* 0x7CC */ cBgS_GndChk mGndChk;
    /* 0x808 */ dCcD_Sph mCcSph[5];
    /* 0xE20 */ f32 mGroundH;
    /* 0xE24 */ u32 mShadowId;
    /* 0xE28 */ u8 mType;

    /* 80CA3C0C */ virtual ~daObj_Nougu_c();
    /* 80CA3E24 */ int create();
    /* 80CA4328 */ int CreateHeap();
    /* 80CA43A0 */ int Delete();
    /* 80CA43D4 */ int Execute();
    /* 80CA45F4 */ int Draw();
    /* 80CA46B8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80CA46D8 */ const char* getResName();
    /* 80CA46E8 */ int isDelete();
    /* 80CA4708 */ void setEnvTevColor();
    /* 80CA4764 */ void setRoomNo();
    /* 80CA47A4 */ void setMtx();

    int getType() { return 0; }

    static dCcD_SrcSph mCcDSph;
};

STATIC_ASSERT(sizeof(daObj_Nougu_c) == 0xe30);

struct daObj_Nougu_HIOParam {
    /* 0x0 */ f32 attention_offset;
    /* 0x4 */ f32 gravity;
    /* 0x8 */ f32 scale;
    /* 0xC */ f32 shadow_size;
};

class daObj_Nougu_Param_c {
public:
    /* 80CA494C */ virtual ~daObj_Nougu_Param_c() {}

    static const daObj_Nougu_HIOParam m;
};


#endif /* D_A_OBJ_NOUGU_H */
