#ifndef D_A_OBJ_LV1CANDLE00_H
#define D_A_OBJ_LV1CANDLE00_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"
#include "d/cc/d_cc_d.h"
#include "m_Do/m_Do_hostIO.h"
#include "dolphin/types.h"

class daLv1Cdl00_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C55D0C */ daLv1Cdl00_HIO_c();
    /* 80C56970 */ ~daLv1Cdl00_HIO_c() {}

    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
};

class daLv1Cdl00_c : public fopAc_ac_c {
public:
    /* 80C55D80 */ void setBaseMtx();
    /* 80C55E08 */ int CreateHeap();
    /* 80C55E74 */ cPhs__Step create();
    /* 80C561A0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80C561C0 */ void lightInit();
    /* 80C56268 */ void setLight();
    /* 80C562A0 */ void cutLight();
    /* 80C562D8 */ void pointLightProc();
    /* 80C56388 */ int Execute();
    /* 80C567EC */ int Draw();
    /* 80C56890 */ int Delete();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5B0 */ dCcD_Cyl mCyl;
    /* 0x6EC */ cXyz mTorchPos;
    /* 0x6F8 */ bool mIsOn;
    /* 0x6F9 */ u8 mSwitch;
    /* 0x6FA */ u8 mStartsOn;
    /* 0x6FC */ cXyz mLightPos;
    /* 0x708 */ u8 field_0x708;
    /* 0x70C */ f32 field_0x70c;
    /* 0x710 */ LIGHT_INFLUENCE mLight;
    /* 0x730 */ u8 field_0x730;
    /* 0x734 */ Z2SoundObjSimple mSound;

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;
};

STATIC_ASSERT(sizeof(daLv1Cdl00_c) == 0x754);

#endif /* D_A_OBJ_LV1CANDLE00_H */
