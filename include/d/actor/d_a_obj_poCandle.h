#ifndef D_A_OBJ_POCANDLE_H
#define D_A_OBJ_POCANDLE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"

/**
 * @ingroup actors-objects
 * @class daPoCandle_c
 * @brief Poe Torch
 *
 * @details
 *
 */
class daPoCandle_c : public dBgS_MoveBgActor, public request_of_phase_process_class, public dEvLib_callback_c {
public:
    daPoCandle_c() : dEvLib_callback_c(this) {}

    /* 80CB1AE4 */ void setBaseMtx();
    /* 80CB1BD8 */ int create();
    /* 80CB1D74 */ void lightInit();
    /* 80CB1E00 */ void setLight();
    /* 80CB1E30 */ void cutLight();
    /* 80CB1E60 */ void pointLightProc();
    /* 80CB2140 */ void init_modeWait();
    /* 80CB214C */ void modeWait();
    /* 80CB21D8 */ void init_modeOnFire();
    /* 80CB22D4 */ void modeOnFire();
    /* 80CB22F4 */ void modeOnSwWait();
    /* 80CB2354 */ void init_modeEnd();
    /* 80CB2360 */ void modeEnd();
    
    /* 80CB1B6C */ virtual int CreateHeap();
    /* 80CB1F10 */ virtual int Execute(Mtx**);
    /* 80CB2388 */ virtual int Draw();
    /* 80CB242C */ virtual int Delete();

    /* 80CB2610 */ virtual ~daPoCandle_c() {}
    /* 80CB2364 */ virtual bool eventStart();

    /* 80CB3E3C */ cXyz getFirePos() { return mFirePos; }

    int getLightType() { return fopAcM_GetParamBit(this, 0x10, 8); }
    int getSwBit() { return fopAcM_GetParamBit(this, 0, 8); }
    int getID() { return fopAcM_GetParamBit(this, 8, 8); }

    u8 getIDNum() { return mIDNum; }
    void setFireFlag(u8 flag) { mFireFlag = flag; }

private:
    /* 0x5B8 */ request_of_phase_process_class mPhase;
    /* 0x5C0 */ J3DModel* mpModel;
    /* 0x5C4 */ cXyz mFirePos;
    /* 0x5D0 */ u8 field_0x5d0;
    /* 0x5D1 */ u8 mOnPlight;
    /* 0x5D2 */ u8 mFireFlag;
    /* 0x5D3 */ u8 mSwWaitTimer;
    /* 0x5D4 */ u8 mSwbit;
    /* 0x5D5 */ u8 mIDNum;
    /* 0x5D6 */ u8 mMode;
    /* 0x5D7 */ u8 mIsSwitch;
    /* 0x5D8 */ u32 mGlowEmtID;
    /* 0x5DC */ u32 mFireEmtID;
    /* 0x5E0 */ cXyz mLightPos;
    /* 0x5EC */ u8 mLightType;
    /* 0x5F0 */ f32 mPlightRefDist;
    /* 0x5F4 */ LIGHT_INFLUENCE mLight;
};

STATIC_ASSERT(sizeof(daPoCandle_c) == 0x614);

#endif /* D_A_OBJ_POCANDLE_H */
