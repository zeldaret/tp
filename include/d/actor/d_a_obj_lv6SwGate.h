#ifndef D_A_OBJ_LV6SWGATE_H
#define D_A_OBJ_LV6SWGATE_H

#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daLv6SwGate_c
 * @brief Temple of Time Switch Gate
 *
 * @details
 *
 */
class daLv6SwGate_c : public dBgS_MoveBgActor {
public:
    /* 80C74004 */ void setBaseMtx();
    /* 80C74158 */ int CreateHeap();
    /* 80C7429C */ int create();
    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }
    int getSwState() { return fopAcM_GetParamBit(this, 12, 4); }
    int getSw2() { return fopAcM_GetParamBit(this, 16, 8); }
    /* 80C74720 */ u8 isSwitch();
    /* 80C7476C */ int Execute(Mtx**);
    /* 80C74A3C */ void moveGate();
    /* 80C74B48 */ void init_modeWait();
    /* 80C74B54 */ void modeWait();
    /* 80C74B58 */ void init_modeOpen();
    /* 80C74B64 */ void modeOpen();
    /* 80C74C7C */ void init_modeClose();
    /* 80C74C94 */ void modeClose();
    /* 80C74DBC */ void init_modeBreak();
    /* 80C74E40 */ void modeBreak();
    /* 80C7524C */ int Draw();
    /* 80C752F8 */ int Delete();

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;
private:
    /* 0x5A0  */ dCcD_Stts mCcStts;
    /* 0x5DC  */ dCcD_Cyl mCcDCyls[12];
    /* 0x14AC */ request_of_phase_process_class mPhase;
    /* 0x14B4 */ J3DModel* mModel1;
    /* 0x14B8 */ J3DModel* mModel2;
    /* 0x14BC */ u8 mMode;
    /* 0x14BD */ u8 mUnderlyingSwitchState;
    /* 0x14BE */ u8 mUnderylingSwitch;
    /* 0x14BE */ u8 mIsSwitch;
    /* 0x14C0 */ f32 mMovementAmount;
    /* 0x14C4 */ dBgW* mpBgW;
    /* 0x14C8 */ Mtx mMtx;
};

STATIC_ASSERT(sizeof(daLv6SwGate_c) == 0x14f8);

class daLv6SwGate_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 80C73F0C */
    daLv6SwGate_HIO_c();

#if DEBUG
    virtual void genMessage(JORMContext* context)
    {
        context->genLabel("--- 開く ---", 0, 0, 0, -1, -1, 0x200, 0x18);
        context->genSlider("速度", &this->mSpeed, 0.1f, 100.f, 0, NULL, -1, -1, 0x200, 0x18);
        context->genLabel("\n--- 閉まる ---", 0, 0, 0, -1, -1, 0x200, 0x18);
        context->genSlider("最大速度", &this->mMaximumSpeed, 0.1f, 100.f, 0, NULL, -1, -1, 0x200, 0x18);
        context->genSlider("加速度", &this->mAcceleration, 0.1f, 100.f, 0, NULL, -1, -1, 0x200, 0x18);
        context->genLabel("\n------", 0, 0, 0, -1, -1, 0x200, 0x18);
        context->genSlider("移動量", &this->mMovementAmount, 0.1f, 100.f, 0, NULL, -1, -1, 0x200, 0x18);
    }
#endif

    /* 0x8  */ float mSpeed;
    /* 0xC  */ float mMaximumSpeed;
    /* 0x10 */ float mAcceleration;
    /* 0x14 */ float mMovementAmount;
    /* 0x18 */ u8 unk18; // UNUSED
};


#endif /* D_A_OBJ_LV6SWGATE_H */
