#ifndef D_A_OBJ_LV2CANDLE_H
#define D_A_OBJ_LV2CANDLE_H

#include "d/cc/d_cc_d.h"
#include "m_Do/m_Do_hostIO.h"
#include "rel/d/a/obj/d_a_obj_lv4CandleTag/d_a_obj_lv4CandleTag.h"

class daLv2Candle_HIO_c : public mDoHIO_entry_c {
public:
    /* 8058E04C */ daLv2Candle_HIO_c();
    /* 8058F050 */ ~daLv2Candle_HIO_c() {}

    /* 0x04 */ u8 mTimer;
    /* 0x08 */ f32 mPow;
    /* 0x0C */ f32 mAnmMaxStep;
    /* 0x10 */ f32 mAnmIntensity[6];
    /* 0x28 */ u8 mAnmTimers[6];
    /* 0x2E */ u8 mColor1R;
    /* 0x2F */ u8 mColor1G;
    /* 0x30 */ u8 mColor1B;
    /* 0x31 */ u8 mColor2R;
    /* 0x32 */ u8 mColor2G;
    /* 0x33 */ u8 mColor2B;
};

class daLv2Candle_c : public fopAc_ac_c {
public:
    /* 8058E13C */ void setBaseMtx();
    /* 8058E1C4 */ int CreateHeap();
    /* 8058E244 */ cPhs__Step create();
    /* 8058E5BC */ u8 isSwitch();
    /* 8058E608 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 8058E628 */ static void* searchDemoTagAct(void*, void*);
    /* 8058E678 */ void lightInit();
    /* 8058E720 */ void setLight();
    /* 8058E750 */ void cutLight();
    /* 8058E780 */ void pointLightProc();
    /* 8058E99C */ int Execute();
    /* 8058EEC8 */ int Draw();
    /* 8058EF6C */ int Delete();

    int getOffType() { return fopAcM_GetParamBit(this, 0x18, 4); }
    u8 getModelType() { return fopAcM_GetParamBit(this, 0x14, 4); }
    u8 getLightAnm() { return fopAcM_GetParamBit(this, 0x10, 4); }
    u8 getLightType() { return fopAcM_GetParamBit(this, 0xc, 4); }
    u8 getSwType() { return fopAcM_GetParamBit(this, 8, 4); }
    u8 getSw() { return fopAcM_GetParamBit(this, 0, 8); }

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5B0 */ dCcD_Cyl mCyl;
    /* 0x6EC */ cXyz mTorchPos;
    /* 0x6F8 */ u8 mSw;
    /* 0x6F9 */ bool mIsLit;
    /* 0x6FA */ u8 mIsSwitch;
    /* 0x6FB */ u8 mTimer;
    /* 0x6FC */ u8 mSwType;
    /* 0x6FD */ u8 mModelType;
    /* 0x6FE */ u8 mLightAnm;
    /* 0x700 */ cXyz mLightPos;
    /* 0x70C */ u8 mLightType;
    /* 0x70D */ u8 mAnmTimer;
    /* 0x70E */ u8 mAnmStage;
    /* 0x710 */ f32 mIntensity;
    /* 0x714 */ LIGHT_INFLUENCE mLight;
    /* 0x734 */ dalv4CandleTag_c* field_0x734;
    /* 0x738 */ u8 mTgHit;
    /* 0x73C */ Z2SoundObjSimple mSound;

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;
};

STATIC_ASSERT(sizeof(daLv2Candle_c) == 0x75C);

#endif /* D_A_OBJ_LV2CANDLE_H */
