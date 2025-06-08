#ifndef D_A_OBJ_ZRTURARA_H
#define D_A_OBJ_ZRTURARA_H

#include "m_Do/m_Do_hostIO.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daZrTurara_c
 * @brief Zora Drop
 *
 * @details
 *
 */
class daZrTurara_c : public dBgS_MoveBgActor {
public:
    /* 80D405E4 */ void setBaseMtx();
    /* 80D40714 */ int CreateHeap();
    /* 80D40844 */ cPhs__Step create();
    /* 80D40C08 */ int Execute(Mtx**);
    /* 80D40C68 */ void move();
    /* 80D40D88 */ void modeWait();
    /* 80D40E0C */ void init_modeBreak();
    /* 80D410E0 */ void modeBreak();
    /* 80D412A0 */ void init_modeEnd();
    /* 80D412AC */ void modeEnd();
    /* 80D412B0 */ int Draw();
    /* 80D41380 */ int Delete();

private:
    /* 0x5A0 */ dCcD_Stts mCcStatus;
    /* 0x5DC */ dCcD_Cyl mCcCyl;
    /* 0x718 */ request_of_phase_process_class mPhaseReq;
    /* 0x720 */ J3DModel* mpBaseModel;
    /* 0x724 */ J3DModel* mpRockModel;
    /* 0x728 */ u8 mMode;
    /* 0x729 */ u8 mSw2;
    /* 0x72A */ u8 mDrawRock;
    /* 0x72B */ u8 mBreakTimer;
    /* 0x72C */ dBgW* mpRockBgW;
    /* 0x730 */ Mtx mRockBgMtx;
    /* 0x760 */ f32 mScaleF;
    /* 0x764 */ u32 mParticleKey;
    /* 0x768 */ u8 mDebrisCount;

public:
    u8 getSwBit1() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getSwBit2() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getScale() { return fopAcM_GetParamBit(this, 0x10, 8); }

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;
};

STATIC_ASSERT(sizeof(daZrTurara_c) == 0x76C);

class daZrTurara_HIO_c : public mDoHIO_entry_c {
public:
    /* 80D4056C */ daZrTurara_HIO_c();
    /* 80D414BC */ ~daZrTurara_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ f32 mDebrisRange;
    /* 0x8 */ u8 mDebrisNum;
};

STATIC_ASSERT(sizeof(daZrTurara_HIO_c) == 0xC);

#endif /* D_A_OBJ_ZRTURARA_H */
