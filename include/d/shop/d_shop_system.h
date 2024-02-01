#ifndef D_SHOP_D_SHOP_SYSTEM_H
#define D_SHOP_D_SHOP_SYSTEM_H

#include "d/a/d_a_npc.h"
#include "d/shop/d_shop_item_ctrl.h"
#include "d/shop/d_shop_camera.h"

class dSelect_cursor_c;
class STControl;

class dShopSystem_c : public daNpcT_c {
public:
    enum {
        /* 0x0 */ SEQ_WAIT,
        /* 0x1 */ SEQ_START,
        /* 0x2 */ SEQ_SELECT_WAIT,
        /* 0x3 */ SEQ_SELECT_START,
        /* 0x4 */ SEQ_SELECT,
        /* 0x5 */ SEQ_MOVING,
        /* 0x6 */ SEQ_DECIDE,
        /* 0x7 */ SEQ_CHOOSE,
        /* 0x8 */ SEQ_DECIDE_YES,
        /* 0x9 */ SEQ_DECIDE_NO,
        /* 0xA */ SEQ_FINISH,
    };

    enum {
        ITEM_MAX_e = 7,
    };

    /* 80197338 */ void initShopSystem();
    /* 801975C0 */ void onFlag(int);
    /* 801975DC */ void offFlag(int);
    /* 801975F8 */ BOOL isFlag(int);
    /* 80197618 */ void onSoldOutItemFlag(int);
    /* 80197634 */ void offSoldOutItemFlag(int);
    /* 80197650 */ BOOL isSoldOutItemFlag(int);
    /* 80197670 */ int checkController(u8, dMsgFlow_c*);
    /* 80197808 */ int chooseItem3(u8);
    /* 80197DD0 */ int chooseItem5(u8);
    /* 80198250 */ int chooseItem4(u8);
    /* 80198444 */ int moveCursor(int, u8);
    /* 80198488 */ int moveCursor0(int, u8);
    /* 80198708 */ int moveCursor1(int, u8);
    /* 80198878 */ int drawCursor();
    /* 80198950 */ int itemRotate();
    /* 80198A2C */ int itemZoom(cXyz*);
    /* 801990B0 */ int seq_wait(fopAc_ac_c*, dMsgFlow_c*);
    /* 801990B8 */ int seq_start(fopAc_ac_c*, dMsgFlow_c*);
    /* 8019936C */ int seq_select_wait(fopAc_ac_c*, dMsgFlow_c*);
    /* 801993C4 */ int seq_select_start(fopAc_ac_c*, dMsgFlow_c*);
    /* 8019959C */ int seq_select(fopAc_ac_c*, dMsgFlow_c*);
    /* 80199A18 */ int seq_moving(fopAc_ac_c*, dMsgFlow_c*);
    /* 80199BF8 */ int seq_decide(fopAc_ac_c*, dMsgFlow_c*);
    /* 80199D14 */ int seq_choose(fopAc_ac_c*, dMsgFlow_c*);
    /* 80199E28 */ int seq_decide_yes(fopAc_ac_c*, dMsgFlow_c*);
    /* 80199FA4 */ int seq_decide_no(fopAc_ac_c*, dMsgFlow_c*);
    /* 8019A020 */ int seq_finish(fopAc_ac_c*, dMsgFlow_c*);
    /* 8019A0C0 */ bool seq_event(fopAc_ac_c*, dMsgFlow_c*);
    /* 8019A0D0 */ int shop_init(bool);
    /* 8019A158 */ int shop_process(fopAc_ac_c*, dMsgFlow_c*);
    /* 8019A238 */ void createShopItem(int);
    /* 8019A344 */ void setSeq(u8);
    /* 8019A354 */ void setSoldOutFlag();
    /* 8019A364 */ void setSoldOut();
    /* 8019A4F4 */ void setSoldOutItemHide();
    /* 8019A564 */ void deleteObject();
    /* 8019A5D0 */ int searchItemActor();
    /* 8019AB00 */ int getFlowNodeNum();
    /* 8019AB1C */ void setSellItemMax(u8);
    /* 8019AB24 */ bool checkShopOpen();
    /* 8019AB60 */ bool checkLeftTrigger(STControl*);
    /* 8019AB84 */ bool checkRightTrigger(STControl*);
    /* 8019ABA8 */ bool dpdMove();

    void dummyWeakOrder();  // fake, used to fix weak function order in d_shop_system.cpp

    /* 801974E4 */ virtual ~dShopSystem_c();
    /* 8019ACF0 */ virtual bool getResName2(int) { return false; }
    /* 8019ACE0 */ virtual int beforeStartSeqAction(dMsgFlow_c*, int) { return 1; }
    /* 8019ACE8 */ virtual int beforeSelectSeqAction(dMsgFlow_c*, int) { return 1; }

    bool chkSpMode() { return mSpMode == 1; }
    void offSpMode() { mSpMode = 0; }
    u8 getEventParamU8(int param_0) { return (mEventParam >> (3 - param_0) * 8) & 0xFF; }
    void setEventParam(u32 param) { mEventParam = param; }

private:
    /* 0xE40 */ STControl* mpStick;
    /* 0xE44 */ dSelect_cursor_c* mpDrawCursor;
    /* 0xE48 */ dShopItemCtrl_c mItemCtrl;
    /* 0xE78 */ ShopCam_action_c mShopCamAction;
    /* 0xF54 */ u32 mEventParam;
    /* 0xF58 */ int field_0xf58;
    /* 0xF5C */ int field_0xf5c;
    /* 0xF60 */ int field_0xf60;
    /* 0xF64 */ int field_0xf64;
    /* 0xF68 */ s16 field_0xf68;
    /* 0xF6A */ u16 mFlag;
    /* 0xF6C */ u16 field_0xf6c;
    /* 0xF6E */ u8 mCursorPos;
    /* 0xF6F */ u8 mLastCursorPos;
    /* 0xF70 */ u8 mSeq;
    /* 0xF71 */ u8 field_0xf71;
    /* 0xF72 */ u8 mWaitTimer;
    /* 0xF73 */ u8 mSoldOutFlag;
    /* 0xF74 */ u8 mSoldOutItemFlags;
    /* 0xF75 */ u8 mSpMode;
    /* 0xF76 */ u8 field_0xf76;
    /* 0xF77 */ u8 field_0xf77;
    /* 0xF78 */ u8 field_0xf78;
    /* 0xF79 */ u8 field_0xf79;
    /* 0xF7A */ u8 field_0xf7a;
};

typedef int (dShopSystem_c::*processFunc)(fopAc_ac_c*, dMsgFlow_c*);

#endif /* D_SHOP_D_SHOP_SYSTEM_H */
