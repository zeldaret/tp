#ifndef D_A_OBJ_ZRTURARAROCK_H
#define D_A_OBJ_ZRTURARAROCK_H

#include "m_Do/m_Do_hostIO.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_bg_s_acch.h"

/**
 * @ingroup actors-objects
 * @class daZrTuraRc_c
 * @brief Zora Drop Rock
 *
 * @details
 *
 */
class daZrTuraRc_c : public fopAc_ac_c {
public:
    /* 80D41934 */ void setBaseMtx();
    /* 80D419D4 */ int CreateHeap();
    /* 80D41A40 */ cPhs__Step create();
    /* 80D41EF0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80D41F10 */ int Execute();
    /* 80D41F78 */ void move();
    /* 80D4204C */ void init_modeDrop();
    /* 80D42084 */ void modeDrop();
    /* 80D420FC */ void bgCheck();
    /* 80D42128 */ void init_modeDropEnd();
    /* 80D4215C */ void modeDropEnd();
    /* 80D42160 */ int Draw();
    /* 80D421C4 */ int Delete();

private:
    /* 0x568 */ dCcD_Stts mCcStatus;
    /* 0x5A4 */ dCcD_Sph mCcSph;
    /* 0x6DC */ request_of_phase_process_class mPhaseReq;
    /* 0x6E4 */ J3DModel* mpModel;
    /* 0x6E8 */ u8 mMode;
    /* 0x6E9 */ u8 field_0x6e9[0x13];
    /* 0x6FC */ f32 mScaleF;
    /* 0x700 */ dBgS_AcchCir mAcchCir;
    /* 0x740 */ dBgS_ObjAcch mAcch;
    /* 0x918 */ Z2SoundObjSimple mSound;

public:
    u8 getScale() { return fopAcM_GetParamBit(this, 0, 8); }

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcSph mCcDSph;
};

STATIC_ASSERT(sizeof(daZrTuraRc_c) == 0x938);

class daZrTuraRc_HIO_c : public mDoHIO_entry_c {
public:
    /* 80D4188C */ daZrTuraRc_HIO_c();
    /* 80D422D0 */ ~daZrTuraRc_HIO_c() {}

    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 mGravity;
    /* 0x0C */ f32 mMaxFallSpeed;
    /* 0x10 */ u8 field_0x10;
    /* 0x11 */ u8 field_0x11;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
};

STATIC_ASSERT(sizeof(daZrTuraRc_HIO_c) == 0x20);

#endif /* D_A_OBJ_ZRTURARAROCK_H */
