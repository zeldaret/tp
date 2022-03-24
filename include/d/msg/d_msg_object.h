#ifndef D_MSG_D_MSG_OBJECT_H
#define D_MSG_D_MSG_OBJECT_H

#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JMessage/control.h"
#include "JSystem/JMessage/processor.h"
#include "JSystem/JMessage/resource.h"
#include "d/com/d_com_inf_game.h"
#include "d/msg/d_msg_class.h"
#include "dolphin/types.h"

class COutFont_c;

class dMsgObject_c : public msg_class {
public:
    /* 80233284 */ void _create(msg_class*);
    /* 80233590 */ void _execute();
    /* 802339BC */ void _draw();
    /* 80233AE8 */ void _delete();
    /* 80233D04 */ void setMessageIndex(u32, u32, bool);
    /* 80233E70 */ void setMessageIndexDemo(u32, bool);
    /* 80233F84 */ void getMessageIndex(u32);
    /* 80233FD8 */ void getRevoMessageIndex(u32);
    /* 802340D4 */ void getMessageIndexAlways(u32);
    /* 80234128 */ void getMessageIDAlways(u32);
    /* 8023413C */ void getMessageGroup(u32);
    /* 80234150 */ void waitProc();
    /* 80234318 */ void openProc();
    /* 802349D8 */ void outnowProc();
    /* 80234CCC */ void outwaitProc();
    /* 80234FF0 */ void stopProc();
    /* 80234FF4 */ void continueProc();
    /* 8023531C */ void selectProc();
    /* 8023587C */ void selectEndProc();
    /* 802358D4 */ void inputProc();
    /* 80235AD4 */ void finishProc();
    /* 80235CC0 */ void endProc();
    /* 80235EBC */ void deleteProc();
    /* 8023609C */ void textmodeProc();
    /* 802360A0 */ void talkStartInit();
    /* 8023670C */ void fukiPosCalc(bool);
    /* 802368E4 */ void setStatusLocal(u16);
    /* 802368F8 */ void getStatusLocal();
    /* 8023690C */ void delete_screen(bool);
    /* 802369D8 */ void isSend();
    /* 80236BF8 */ void readMessageGroupLocal(mDoDvdThd_mountXArchive_c**);
    /* 80236C90 */ void changeFlowGroupLocal(s32);
    /* 80236CD4 */ void demoMessageGroupLocal();
    /* 80236D00 */ void endFlowGroupLocal();
    /* 80236D0C */ void changeGroupLocal(s16);
    /* 80236DE4 */ void getStringLocal(u32, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*, char*,
                                       char*, char*, s16*);
    /* 802370A8 */ void isGetItemMessage();
    /* 802370BC */ void isKanbanMessage();
    /* 802370E8 */ void isHowlMessage();
    /* 802370FC */ bool isMidonaMessage();
    /* 80237138 */ void isMidonaNormalTalkWait();
    /* 802371B0 */ void isMidonaTalkWait();
    /* 802371E4 */ void isPlaceMessage();
    /* 802371F8 */ void isBossMessage();
    /* 8023720C */ bool isBookMessage();
    /* 80237214 */ void isStaffMessage();
    /* 80237228 */ void isSaveMessage();
    /* 8023723C */ void isTalkMessage();
    /* 802372CC */ void getSmellName();
    /* 80237334 */ void getPortalName();
    /* 8023738C */ void getBombName();
    /* 8023741C */ void getInsectName();
    /* 80237478 */ void getLetterName();
    /* 802374D0 */ void getSelectBombNum();
    /* 80237520 */ void onMsgSendControlLocal();
    /* 80237530 */ void offMsgSendControlLocal();
    /* 80237550 */ void isMsgSendControlLocal();
    /* 8023755C */ void onMsgSendLocal();
    /* 8023756C */ void offMsgSendLocal();
    /* 8023757C */ void isMsgSendLocal();
    /* 80237588 */ void isMouthCheckLocal();
    /* 8023759C */ void getBombBuyPriceLocal(u8);
    /* 802375E4 */ void addSelectBomBag(u8);
    /* 80237610 */ void resetSelectBomBag();
    /* 8023763C */ void getSelectBombBagIDLocal();
    /* 8023768C */ void getSelectBombPriceLocal();
    /* 8023773C */ void setEquipBombInfoLocal();
    /* 80237748 */ void updateEquipBombInfoLocal();
    /* 802378B8 */ static void setShopWaitTimer(u8);
    /* 802378CC */ void setSelectWordFlagLocal(u8);
    /* 802378D4 */ void isHowlHearingModeLocal();
    /* 80237934 */ void isCameraCancelFlag();
    /* 80237950 */ void onCameraCancelFlag();
    /* 80237968 */ void offCameraCancelFlag();
    /* 80237980 */ static bool isKillMessageFlag();
    /* 80237994 */ static void onKillMessageFlag();
    /* 802379AC */ void setKillMessageFlag();
    /* 802379D8 */ void setKillMessageFlagLocal();
    /* 80237A74 */ void setTalkPartner(fopAc_ac_c*);
    /* 80237A88 */ void setNowTalkFlowNo(s16);
    /* 80237A9C */ void getNowTalkFlowNo();
    /* 80237AB0 */ void setDemoMessage(u32);
    /* 80237AE0 */ void setTalkHeap(void*);
    /* 80237B10 */ void setTalkHeapLocal(void*);
    /* 80237B54 */ void getTalkHeap();
    /* 80237B68 */ void isDraw();
    /* 80237BFC */ void setButtonStatusLocal();
    /* 80237D88 */ void setDemoMessageLocal(u32);
    /* 80237DD8 */ void getSmellTypeMessageIDLocal();
    /* 80237E04 */ void setSmellTypeLocal(u8);
    /* 80237E58 */ void getSelectCursorPosLocal();
    /* 80237E68 */ void setSelectCursorPosLocal(u8);
    /* 80237F10 */ void setTalkActorLocal(fopAc_ac_c*);
    /* 8023800C */ static void readMessageGroup(mDoDvdThd_mountXArchive_c**);
    /* 8023803C */ static void changeFlowGroup(s32);
    /* 8023806C */ void demoMessageGroup();
    /* 80238098 */ void endFlowGroup();
    /* 802380C4 */ void changeGroup(s16);
    /* 802380F4 */ void getString(u32, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*, char*,
                                  char*, char*, s16*);
    /* 80238174 */ static u8* getMsgDtPtr();
    /* 80238188 */ void setProcessID(unsigned int);
    /* 8023819C */ static fopAc_ac_c* getActor();
    /* 802381C0 */ void getpTalkActor();
    /* 802381D4 */ void getIdx();
    /* 802381E8 */ void getNodeIdx();
    /* 802381FC */ void setStatus(u16);
    /* 8023822C */ static u16 getStatus();
    /* 80238258 */ void getScrnDrawPtr();
    /* 8023826C */ static void setTalkActor(fopAc_ac_c*);
    /* 8023829C */ void onMsgSendControl();
    /* 802382C8 */ void offMsgSendControl();
    /* 802382F4 */ static int isMsgSendControl();
    /* 80238320 */ static void onMsgSend();
    /* 8023834C */ void offMsgSend();
    /* 80238378 */ void isMsgSend();
    /* 802383A4 */ void isMouthCheck();
    /* 802383D0 */ static u32 getMessageID();
    /* 802383E4 */ void getSmellTypeMessageID();
    /* 80238410 */ void setSmellType(u8);
    /* 80238440 */ void getSelectCursorPos();
    /* 8023846C */ static void setSelectCursorPos(u8);
    /* 8023849C */ void setPortalMessageID(u16);
    /* 802384B0 */ void setInsectItemNo(u8);
    /* 802384C4 */ static void setLetterNameID(u16);
    /* 802384D8 */ static void setArrowNum(u8);
    /* 802384EC */ void setMsgOutputType(u8);
    /* 80238500 */ void getMsgOutputType();
    /* 80238514 */ void getWord();
    /* 80238528 */ void getSelectWord(int);
    /* 80238544 */ void setSelectWordFlag(u8);
    /* 80238574 */ void getSelectWordFlag();
    /* 80238588 */ void isHowlHearingMode();
    /* 802385B4 */ static u8 getSelectBombBagID();
    /* 802385E0 */ static s16 getSelectBombPrice();
    /* 8023860C */ void setEquipBombInfo();
    /* 80238638 */ void getItemEquipButton();
    /* 8023864C */ static void setSelectCancelPos(u8);

    void setShopWaitTimerLocal(u8 timer) { mShopWaitTimer = timer; }
    u8 getSelectPushFlag() { return mSelectPushFlag; }
    u8 getSelectCancelPos() { return mSelectCancelPos; }

    /* 0x100 */ msg_class* field_0x100;
    /* 0x104 */ int mpScrnDraw;
    /* 0x108 */ dMsgString_c* mpMsgString;
    /* 0x10C */ COutFont_c* mpOutFont;
    /* 0x110 */ JMessage::TResourceContainer* mpResCont;
    /* 0x114 */ JMessage::TControl* mpCtrl;
    /* 0x118 */ jmessage_tReference* mpRefer;
    /* 0x11C */ jmessage_tSequenceProcessor* mpSeqProc;
    /* 0x120 */ jmessage_tRenderingProcessor* mpRenProc;
    /* 0x124 */ JMessage::TParse* field_0x124;
    /* 0x128 */ void* mpMsgRes;
    /* 0x12C */ u8 field_0x12c[4];
    /* 0x130 */ void* mpMsgDt;
    /* 0x134 */ u8 field_0x134[4];
    /* 0x138 */ fopAc_ac_c* mpTalkActor;
    /* 0x13C */ int field_0x13c;
    /* 0x140 */ fopAc_ac_c* mpTalkPartner;
    /* 0x144 */ void* mpTalkHeap;
    /* 0x148 */ int field_0x148;
    /* 0x14C */ int mProcessID;
    /* 0x150 */ f32 field_0x150;
    /* 0x154 */ int mMessageID;
    /* 0x158 */ int field_0x158;
    /* 0x15C */ int field_0x15c;
    /* 0x160 */ int mIdx;
    /* 0x164 */ int mNodeIdx;
    /* 0x168 */ u16 field_0x168;
    /* 0x16A */ u8 field_0x16a[2];
    /* 0x16C */ u16 field_0x16c;
    /* 0x16E */ u16 field_0x16e;
    /* 0x170 */ u16 mNowTalkFlowNo;
    /* 0x172 */ u16 field_0x172;
    /* 0x174 */ u16 mInputValue;
    /* 0x176 */ u16 mFundRaisingValue;
    /* 0x178 */ u16 field_0x178;
    /* 0x17A */ u16 mNowTotalPrice;
    /* 0x17C */ u16 mNowTotalPayment;
    /* 0x17E */ u16 field_0x17e;
    /* 0x180 */ u16 mPortalMessageID;
    /* 0x182 */ u16 mBombMessageID[3];
    /* 0x188 */ u16 mLetterNameID;
    /* 0x18A */ u8 mBombNum[3];
    /* 0x18D */ u8 mBombBagID[3];
    /* 0x190 */ u8 mSelectBombBag[3];
    /* 0x193 */ u8 field_0x193;
    /* 0x194 */ u8 mInsectItemNo;
    /* 0x195 */ u8 mMsgSendControl;
    /* 0x196 */ u8 field_0x196;
    /* 0x197 */ u8 field_0x197;
    /* 0x198 */ u8 field_0x198;
    /* 0x199 */ u8 field_0x199;
    /* 0x19A */ u8 mFukiKind;
    /* 0x19B */ u8 field_0x19b;
    /* 0x19C */ u8 mFlowChk;
    /* 0x19D */ u8 field_0x19d;
    /* 0x19E */ u8 mCameraCancelFlag;
    /* 0x19F */ u8 mInputFlag;
    /* 0x1A0 */ u8 mSmellType;
    /* 0x1A1 */ u8 mSelectCancelPos;
    /* 0x1A2 */ u8 mSelectPushFlag;
    /* 0x1A3 */ u8 field_0x1a3;
    /* 0x1A4 */ u8 mItemEquipButton;
    /* 0x1A5 */ u8 mArrowNum;
    /* 0x1A6 */ char mWord[200];
    /* 0x26E */ char mSelectWord[3][200];
    /* 0x4C6 */ u8 mSelectWordFlag;
    /* 0x4C7 */ u8 field_0x4c7;
    /* 0x4C8 */ u8 mMsgOutputType;
    /* 0x4C9 */ u8 mShopWaitTimer;
    /* 0x4CA */ u8 field_0x4ca;
    /* 0x4CB */ u8 mNoDemoFlag;
    /* 0x4CC */ u8 field_0x4cc;
    /* 0x4CD */ u8 field_0x4cd;
    /* 0x4CE */ u8 field_0x4ce;
    /* 0x4CF */ u8 mAutoMessageFlag;
    /* 0x4D0 */ u8 mPaymentFlag;
    /* 0x4D1 */ u8 field_0x4d1;
    /* 0x4D2 */ u8 mKillMessageFlag;
    /* 0x4D3 */ u8 mEquipBombInfo;
    /* 0x4D4 */ u8 field_0x4d4;
};

s16 dMsgObject_getGroupID();
void dMsgObject_setFundRaising(u16 param_0);
u16 dMsgObject_getFundRaising();
void dMsgObject_addOffering(s16 param_0);
u16 dMsgObject_getOffering();

inline dMsgObject_c* dMsgObject_getMsgObjectClass() {
    return dComIfGp_getMsgObjectClass();
}

inline bool dMsgObject_isTalkNowCheck() {
    return dMsgObject_getMsgObjectClass()->getStatus() != 1 ? true : false;
}

inline bool dMsgObject_isKillMessageFlag() {
    return dMsgObject_c::isKillMessageFlag();
}

inline u32 dMsgObject_getMessageID() {
    return dMsgObject_c::getMessageID();
}

inline void dMsgObject_readMessageGroup(mDoDvdThd_mountXArchive_c** param_0) {
    dMsgObject_getMsgObjectClass()->readMessageGroup(param_0);
}

inline void dMsgObject_setShopWaitTimer(u8 timer) {
    dMsgObject_c::setShopWaitTimer(timer);
}

inline void dMsgObject_changeFlowGroup(long flow) {
    dMsgObject_c::changeFlowGroup(flow);
}

inline void dMsgObject_setTalkActor(fopAc_ac_c* actor) {
    if (dMsgObject_getMsgObjectClass() != NULL) {
        dMsgObject_c::setTalkActor(actor);
    }
}

#endif /* D_MSG_D_MSG_OBJECT_H */
