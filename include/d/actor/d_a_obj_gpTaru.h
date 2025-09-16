#ifndef D_A_OBJ_GPTARU_H
#define D_A_OBJ_GPTARU_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daGpTaru_c
 * @brief Gunpowder Barrel
 *
 * @details
 *
 */
class daGpTaru_c : public fopAc_ac_c {
public:
    /* 8057D1F8 */ void setBaseMtx();
    /* 8057D33C */ int create();
    /* 8057D7CC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 8057DB3C */ BOOL chkSinkAll();
    /* 8057DB60 */ BOOL chkWaterLineIn();
    /* 8057DB84 */ void bgCheck();
    /* 8057E494 */ void mode_proc_call();
    /* 8057E5DC */ void mode_init_wait();
    /* 8057E618 */ void mode_proc_wait();
    /* 8057E63C */ void mode_init_carry();
    /* 8057E660 */ void mode_proc_carry();
    /* 8057E700 */ void mode_init_drop();
    /* 8057E72C */ void mode_proc_drop();
    /* 8057E750 */ void mode_init_roll();
    /* 8057E768 */ void mode_proc_roll();
    /* 8057EBA4 */ void mode_init_exploInit();
    /* 8057EC60 */ void mode_proc_exploInit();
    /* 8057EE2C */ void mode_init_explosion();
    /* 8057EFB0 */ void mode_proc_explosion();
    /* 8057EFFC */ void mode_init_sink();
    /* 8057F014 */ void mode_proc_sink();
    /* 8057F104 */ void breakEffSet();

    /* 8057D2D0 */ virtual int CreateHeap();
    /* 8057E224 */ virtual int Execute();
    /* 8057F284 */ virtual int Draw();
    /* 8057F328 */ virtual int Delete();

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ u8 mMode;
    /* 0x579 */ u8 mIsPrevCarry;
    /* 0x57C */ cXyz field_0x57c;
    /* 0x588 */ cXyz field_0x588;
    /* 0x594 */ cXyz field_0x594;
    /* 0x5A0 */ u8 mIsPrevInWater;
    /* 0x5A4 */ dBgS_ObjAcch mAcch;
    /* 0x77C */ dBgS_AcchCir mAcchCir;
    /* 0x7BC */ dCcD_Stts mCcStts;
    /* 0x7F8 */ dCcD_Cyl mCcCyl;
    /* 0x934 */ u8 mExploTimer;
    /* 0x938 */ f32 field_0x938;
    /* 0x93C */ csXyz field_0x93c;
    /* 0x944 */ int field_0x944;
    /* 0x948 */ f32 mExplosionRange;
    /* 0x94C */ u32 mSmokeEmtID;
    /* 0x950 */ u32 field_0x950;
    /* 0x954 */ u8 field_0x954;
    /* 0x955 */ u8 field_0x955;
    /* 0x958 */ WIND_INFLUENCE mWind;
    /* 0x984 */ LIGHT_INFLUENCE mLight;
    /* 0x9A4 */ f32 mExploWindStrength;
    /* 0x9A8 */ u8 field_0x9a8;
};

STATIC_ASSERT(sizeof(daGpTaru_c) == 0x9ac);

class daGpTaru_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 8057D0CC */ daGpTaru_HIO_c();
    /* 8057F458 */ virtual ~daGpTaru_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 weight;
    /* 0x08 */ f32 shake;
    /* 0x0C */ f32 explosion_range;
    /* 0x10 */ u8 explosion_wait_time;
    /* 0x11 */ u8 vibration;
    /* 0x14 */ cXyz effect_scale;
    /* 0x20 */ cXyz pre_smoke_scale;
    /* 0x2C */ f32 smoke_scale;
    /* 0x30 */ cXyz barrel_scale;
};


#endif /* D_A_OBJ_GPTARU_H */
