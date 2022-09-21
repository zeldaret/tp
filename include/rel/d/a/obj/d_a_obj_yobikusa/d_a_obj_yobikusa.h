#ifndef D_A_OBJ_YOBIKUSA_H
#define D_A_OBJ_YOBIKUSA_H

#include "d/com/d_com_inf_game.h"

class daObjYobikusa_c;
typedef void (daObjYobikusa_c::*actionFunc)();

class daObjYobikusa_c : public fopAc_ac_c {
public:
    enum Mode_e {};

    /* 8059C9F8 */ void setAction(daObjYobikusa_c::Mode_e);
    /* 8059CA2C */ void callInit();
    /* 8059CA54 */ void callExecute();
    /* 8059CA80 */ void initSwingWind();
    /* 8059CA8C */ void executeSwingWind();
    /* 8059CC54 */ void initPushDown();
    /* 8059CC60 */ void executePushDown();
    /* 8059CD44 */ void initPickLeaf();
    /* 8059CD80 */ void executePickLeaf();
    /* 8059CE7C */ void create_init();
    /* 8059D120 */ void initBaseMtx();
    /* 8059D198 */ void getJointAngle(csXyz*, int);
    /* 8059D1BC */ void getJointScale(int);
    /* 8059D320 */ void initCcCylinder();
    /* 8059D380 */ void setCcCylinder();
    /* 8059D3B4 */ void toPickLeaf();
    /* 8059D454 */ void setNewLeaf();
    /* 8059D738 */ void execute();

    static u8 const M_attr[64];
    static u8 ActionTable[72];

    u8 getType() { return mSubtype & 0x7F; }
    u8 getPathID() { return fopAcM_GetParam(this); }
    bool isPlayerCorrect() { return (s8)(u8)(fopAcM_GetParam(this) >> 8) > 0; }

private:
    /* 0x568 */ J3DModel* field_0x568;
    /* 0x56C */ J3DModel* field_0x56c;
    /* 0x570 */ J3DModel* field_0x570;
    /* 0x574 */ Mtx field_0x574;
    /* 0x5A4 */ request_of_phase_process_class mPhase;
    /* 0x5AC */ void* field_0x5ac;
    /* 0x5B0 */ int field_0x5b0;
    /* 0x5B4 */ dCcD_Stts mStts;
    /* 0x5F0 */ dCcD_Cyl mCcCyl;
    /* 0x72C */ cBgS_PolyInfo field_0x72c;
    /* 0x73C */ f32 field_0x73c;
    /* 0x740 */ f32 mJointScale;
    /* 0x744 */ f32 field_0x744;
    /* 0x748 */ f32 field_0x748;
    /* 0x74C */ csXyz field_0x74c[3];
    /* 0x760 */ char* mResName;
    /* 0x764 */ s16 field_0x764;
    /* 0x766 */ s16 field_0x766;
    /* 0x768 */ s16 field_0x768;
    /* 0x76A */ s16 field_0x76a;
    /* 0x76C */ s16 field_0x76c;
};

#endif /* D_A_OBJ_YOBIKUSA_H */
