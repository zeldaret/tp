#ifndef D_A_OBJ_TVCDLST_H
#define D_A_OBJ_TVCDLST_H

#include "f_op/f_op_actor_mng.h"
#include "include/d/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daTvCdlst_c
 * @brief Ordon Torch Stand
 *
 * @details
 *
 */
class daTvCdlst_c : public fopAc_ac_c {
public:
    /* 80B9ED40 */ void setBaseMtx();
    /* 80B9EDC8 */ int CreateHeap();
    /* 80B9EE34 */ int create();
    /* 80B9F144 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B9F164 */ void lightInit();
    /* 80B9F1F0 */ void setLight();
    /* 80B9F220 */ void cutLight();
    /* 80B9F250 */ void pointLightProc();
    /* 80B9F300 */ int Execute();
    /* 80B9F634 */ int Draw();
    /* 80B9F6D8 */ int Delete();

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

    u8 getLightType() { return fopAcM_GetParamBit(this,8,8); }
    u8 getOnSw() { return fopAcM_GetParamBit(this,0,8); }
    u8 getOffSw() { return fopAcM_GetParamBit(this,0x10,8); }

private:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dCcD_Stts mStts;
    /* 0x5b0 */ dCcD_Cyl mCyl;
    /* 0x6ec */ cXyz field_0x6ec;
    /* 0x6f8 */ u8 field_0x6f8;
    /* 0x6f9 */ u8 mIsOn;
    /* 0x6fa */ u8 mIsOff;
    /* 0x6fb */ u8 mOnSw;
    /* 0x6fc */ u8 mOffSw;
    /* 0x6fd */ u8 mDoIgnite;
    /* 0x700 */ cXyz field_0x700;
    /* 0x70c */ u8 mLightType;
    /* 0x710 */ f32 field_0x710;
    /* 0x714 */ LIGHT_INFLUENCE mLight;
    /* 0x734 */ Z2SoundObjSimple mSound;
};

STATIC_ASSERT(sizeof(daTvCdlst_c) == 0x754);

class daTvCdlst_HIO_c : public mDoHIO_entry_c {
public:
    /* 80B9ECCC */ daTvCdlst_HIO_c();
    /* 80B9F7B0 */ virtual ~daTvCdlst_HIO_c() {}

    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
};


#endif /* D_A_OBJ_TVCDLST_H */
