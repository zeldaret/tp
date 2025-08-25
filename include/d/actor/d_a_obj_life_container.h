#ifndef D_A_OBJ_LIFE_CONTAINER_H
#define D_A_OBJ_LIFE_CONTAINER_H

#include "d/actor/d_a_itembase.h"
#include "d/d_particle.h"

/**
 * @ingroup actors-objects
 * @class daObjLife_c
 * @brief Heart Piece
 *
 * @details
 *
 */
class daObjLife_c : public daItemBase_c {
public:
    enum Status_e {
        STATUS_WAIT_e,
        STATUS_ORDER_GET_DEMO_e,
        STATUS_GET_DEMO_e,
        STATUS_SW_ON_WAIT_e,
        STATUS_BOOMERANG_CARRY_e,
        STATUS_WAIT_2_e,
    };

    /* 804CCBE4 */ void initBaseMtx();
    /* 804CCC04 */ void setBaseMtx();
    /* 804CCC6C */ int Create();
    /* 804CCE00 */ void setEffect();
    /* 804CCF5C */ void endEffect00();
    /* 804CCFAC */ void endEffect02();
    /* 804CCFE0 */ int create();
    /* 804CD428 */ void bg_check();
    /* 804CD5B8 */ int actionWaitInit();
    /* 804CD660 */ int actionWait();
    /* 804CD8C0 */ int initActionOrderGetDemo();
    /* 804CD98C */ int actionOrderGetDemo();
    /* 804CDA08 */ int actionGetDemo();
    /* 804CDBC8 */ int actionSwOnWait();
    /* 804CDC2C */ int actionInitBoomerangCarry();
    /* 804CDD0C */ int actionBoomerangCarry();
    /* 804CDD7C */ int actionInitWait2();
    /* 804CDD8C */ int actionWait2();
    /* 804CDDAC */ void calcScale();
    /* 804CDE70 */ int execute();
    /* 804CE19C */ int draw();
    /* 804CE214 */ int _delete();

    /* 804CCFD8 */ virtual int __CreateHeap();
    /* 804CE1F0 */ virtual void setListStart();

    bool chkStatus(u8 i_status) { return mStatus == i_status; }
    void setStatus(u8 i_status) { mStatus = i_status; }

    u8 getSaveBitNo() { return fopAcM_GetParamBit(this, 8, 8); }
    u8 getItemNo() { return fopAcM_GetParamBit(this, 0, 8); }
    int getSwNo() { return 0xFF; }

    void startCtrl() {
        actionInitWait2();
    }

    void setPos(cXyz);

private:
    /* 0x92C */ fpc_ProcID mItemId;
    /* 0x930 */ int mCounter;
    /* 0x934 */ u8 mStatus;
    /* 0x935 */ u8 field_0x935;
    /* 0x936 */ u8 mGndLandCount;
    /* 0x937 */ u8 mIsPrmsInit;
    /* 0x938 */ s16 field_0x938;
    /* 0x93A */ s16 field_0x93a;
    /* 0x93C */ cXyz mPrevSpeed;
    /* 0x948 */ u16 mLv5Counter;
    /* 0x94C */ f32 field_0x94c;
    /* 0x950 */ f32 field_0x950;
    /* 0x954 */ f32 field_0x954;
    /* 0x958 */ u8 field_0x958[0x95E - 0x958];
    /* 0x95E */ s16 field_0x95e;
    /* 0x960 */ u8 field_0x960[0x962 - 0x960];
    /* 0x962 */ s16 mRotateSpeed;
    /* 0x964 */ u8 field_0x964[0x974 - 0x964];
    /* 0x974 */ dPa_followEcallBack mEffect0;
    /* 0x988 */ dPa_followEcallBack mEffect1;
    /* 0x99C */ dPa_followEcallBack mEffect2;
    /* 0x9B0 */ Z2SoundObjSimple mSound;
    /* 0x9D0 */ u8 mIsHookCarry;
};

STATIC_ASSERT(sizeof(daObjLife_c) == 0x9d4);


#endif /* D_A_OBJ_LIFE_CONTAINER_H */
