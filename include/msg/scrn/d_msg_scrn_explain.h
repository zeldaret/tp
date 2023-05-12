#ifndef MSG_SCRN_D_MSG_SCRN_EXPLAIN_H
#define MSG_SCRN_D_MSG_SCRN_EXPLAIN_H

#include "msg/scrn/d_msg_scrn_base.h"

class J2DOrthoGraph;
struct STControl;
class dMsgScrnArrow_c;
class dMsgScrn3Select_c;
class dMsgString_c;

class dMsgScrnExplain_c {
public:
    /* 8023CC88 */ dMsgScrnExplain_c(STControl*, u8, bool, u8);
    /* 8023D7D8 */ void move();
    /* 8023D918 */ void draw(J2DOrthoGraph*);
    /* 8023DAD0 */ void wait_init();
    /* 8023DAD4 */ void wait_proc();
    /* 8023DAD8 */ void open_request_init();
    /* 8023DADC */ void open_request_proc();
    /* 8023DBE4 */ void open_init();
    /* 8023DC7C */ void open_proc();
    /* 8023DD90 */ void move_init();
    /* 8023DDB4 */ void move_proc();
    /* 8023DE8C */ void move_select_init();
    /* 8023E0F4 */ void move_select_proc();
    /* 8023E43C */ void close_init();
    /* 8023E448 */ void close_proc();
    /* 8023E558 */ bool openExplain(u32, u8, u8, u8, bool);
    /* 8023E5CC */ void getAlphaRatio();
    /* 8023E640 */ void checkTriggerA();
    /* 8023E654 */ void checkTriggerB();

    /* 8023D538 */ virtual ~dMsgScrnExplain_c();

    u8 getStatus() { return mStatus; }
    u8 getSelectCursor() { return mSelCursor; }
    void onForceSelect() { mForceSelect = 1; }
    void setKeyWaitTimer(s16 timer) { mKeyWaitTimer = timer; }

private:
    /* 0x04 */ dMsgString_c* mpString_c;
    /* 0x08 */ CPaneMgr* mpTm_c[2];
    /* 0x10 */ CPaneMgr* field_0x10[2];
    /* 0x18 */ CPaneMgr* mpMg_c[2];
    /* 0x20 */ CPaneMgr* mpRoot_c[2];
    /* 0x28 */ CPaneMgr* mpArw_c;
    /* 0x2C */ J2DScreen* mpScreen;
    /* 0x30 */ J2DScreen* mpTxScreen;
    /* 0x34 */ dMsgScrnArrow_c* mpArrow_c;
    /* 0x38 */ dMsgScrn3Select_c* mpSelect_c;
    /* 0x3C */ COutFont_c* mpOutFont;
    /* 0x40 */ J2DPicture* mpBackTex;
    /* 0x44 */ STControl* field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4c;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ u32 field_0x54;
    /* 0x58 */ u8 field_0x58;
    /* 0x5A */ s16 field_0x5a;
    /* 0x5C */ s16 field_0x5c;
    /* 0x5E */ s16 mKeyWaitTimer;
    /* 0x60 */ u8 mStatus;
    /* 0x61 */ u8 mSelCursor;
    /* 0x62 */ u8 field_0x62;
    /* 0x63 */ u8 field_0x63;
    /* 0x64 */ u8 field_0x64;
    /* 0x65 */ u8 mForceSelect;
    /* 0x66 */ u8 field_0x66;
    /* 0x67 */ u8 field_0x67;
};  // Size: 0x68

#endif /* MSG_SCRN_D_MSG_SCRN_EXPLAIN_H */
