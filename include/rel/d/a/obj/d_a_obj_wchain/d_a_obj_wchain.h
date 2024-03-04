#ifndef D_A_OBJ_WCHAIN_H
#define D_A_OBJ_WCHAIN_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"

#ifdef NONMATCHING
class daObjWchain_shape_c : public J3DPacket {
public:
    /* 80D31418 */ void draw();
    /* 80D318C0 */ ~daObjWchain_shape_c() {}
};
#else
// To avoid duplicating vtables, the inheritance here has been removed until the rest of the TU matches
class daObjWchain_shape_c {
public:
    /* 80D31418 */ void draw();
    // The destructor should be inline, but it gets put in the wrong place
    /* 80D318C0 */ ~daObjWchain_shape_c();

    u8 fake[0x10];
};
#endif

class daObjWchain_c : public fopAc_ac_c {
public:
    /* 80D2FEF8 */ int createHeap();
    /* 80D2FFBC */ cPhs__Step create();
    /* 80D30434 */ ~daObjWchain_c();
    /* 80D30534 */ void setMatrix();
    /* 80D305E4 */ s16 getChainAngleZ(cXyz*, int);
    /* 80D3080C */ void setChainPos();
    /* 80D310AC */ int execute();
    /* 80D31810 */ int draw();

    GXLightObj* getLightObj() { return &tevStr.mLightObj.mLightObj; }
    J3DModelData* getChainModelData() { return mpChainModelData; }
    cXyz* getChainPos() { return mChainPos; }
    csXyz* getChainAngle() { return mChainAngle; }
    s16* getChainAngleZ() { return mChainRotation; }
    cXyz& getJumpAimPos() { return eyePos; }
    cXyz& getTopPos() { return mTopPos; }
    cXyz& getRoofPos() { return mRoofPos; }
    f32 getPullLength() { return mPullLength; }
    void setPullLength(f32 i_length) { mPullLength = i_length; }
    f32 getInitOutLength() { return mInitOutLength; }
    f32 getRealRoofY() { return mRealRoofY; }
    f32 getMoveDisRate() { return mPullLength * 0.01f; }
    f32 getLastOffset() { return 6.0f; }
    f32 getDownOffset() { return 100.0f; }
    f32 getSwitchOffset() { return 94.0f; }
    u8 getSwitchNum() { return mSw; }
    void onRide() { mRide = true; }
    void offRide() { mRide = false; }
    bool checkRideFlg() { return mRide; }
    void onEndFlg() { mEnd = true; }
    bool getEndFlg() { return mEnd; }
    void onNowSwitchFlg() { mDown = mNowSwitch = true; }
    
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpHandleModel;
    /* 0x574 */ J3DModelData* mpChainModelData;
    /* 0x578 */ daObjWchain_shape_c mShape;
    /* 0x588 */ cXyz mTopPos;
    /* 0x594 */ cXyz mChainPos[0x10];
    /* 0x654 */ cXyz mChainSpeed[0x10];
    /* 0x714 */ csXyz mChainAngle[0x10];
    /* 0x774 */ bool mRide;
    /* 0x775 */ bool mNowSwitch;
    /* 0x776 */ bool mEnd;
    /* 0x777 */ bool mRidePrev;
    /* 0x778 */ u8 mSw;
    /* 0x779 */ u8 mRepeatable;
    /* 0x77A */ bool mReset;
    /* 0x77B */ bool mDown;
    /* 0x77C */ s16 mHandleRotation;
    /* 0x77E */ u16 field_0x77e;
    /* 0x780 */ s16 mChainRotation[0x10];
    /* 0x7A0 */ f32 mPullLength;
    /* 0x7A4 */ f32 mInitOutLength;
    /* 0x7A8 */ f32 field_0x7a8;
    /* 0x7AC */ f32 mRealRoofY;
    /* 0x7B0 */ cXyz mRoofPos;
};

STATIC_ASSERT(sizeof(daObjWchain_c) == 0x7BC);

#endif /* D_A_OBJ_WCHAIN_H */
