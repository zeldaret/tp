#ifndef D_METER_D_METER2_DRAW_H
#define D_METER_D_METER2_DRAW_H

#include "d/d_drawlist.h"
#include "dolphin/types.h"

class CPaneMgr;
class CPaneMgrAlpha;
class J2DAnmColorKey;
class J2DAnmTransformKey;
class JKRExpHeap;
class JKRHeap;

enum dMeter2Draw_actionFlag {
    /* 0x0 */ ACTION_FLG_DEFAULT,
    /* 0x2 */ ACTION_FLG_EMPHASIS = 2,
    /* 0x4 */ ACTION_FLG_CONTINUATION = 4,
};

enum dMeter2Draw_actionID {
    /* 0x00 */ ACTION_STR_NONE,
    /* 0x01 */ ACTION_STR_LET_GO,
    /* 0x02 */ ACTION_STR_PEEK,
    /* 0x03 */ ACTION_STR_ATTACK,
    /* 0x04 */ ACTION_STR_PUT_AWAY,
    /* 0x05 */ ACTION_STR_HOWL,
    /* 0x06 */ ACTION_STR_OPEN,
    /* 0x07 */ ACTION_STR_ENTER,
    /* 0x08 */ ACTION_STR_CHECK,
    /* 0x09 */ ACTION_STR_DASH,
    /* 0x0A */ ACTION_STR_CROUCH,
    /* 0x0B */ ACTION_STR_DEFEND,
    /* 0x0C */ ACTION_STR_PICK_UP,
    /* 0x0D */ ACTION_STR_DIG,
    /* 0x0E */ ACTION_STR_EAT,
    /* 0x0F */ ACTION_STR_SELECT,
    /* 0x10 */ ACTION_STR_LOCK,
    /* 0x11 */ ACTION_STR_SWITCH,
    /* 0x12 */ ACTION_STR_BACK,
    /* 0x13 */ ACTION_STR_THROW,
    /* 0x14 */ ACTION_STR_PLACE,
    /* 0x15 */ ACTION_STR_GRAB,
    /* 0x16 */ ACTION_STR_GET_OFF,
    /* 0x17 */ ACTION_STR_GET_ON,
    /* 0x18 */ ACTION_STR_PADDLE,
    /* 0x19 */ ACTION_STR_JUMP,
    /* 0x1A */ ACTION_STR_READ,
    /* 0x1B */ ACTION_STR_LOOK,
    /* 0x1C */ ACTION_STR_SPEAK,
    /* 0x1D */ ACTION_STR_LIFT,
    /* 0x1E */ ACTION_STR_SWING,
    /* 0x1F */ ACTION_STR_PICK_UP2,
    /* 0x20 */ ACTION_STR_GET_ON2,
    /* 0x21 */ ACTION_STR_GET_OFF2,
    /* 0x22 */ ACTION_STR_CONFIRM,
    /* 0x23 */ ACTION_STR_NEXT,
    /* 0x24 */ ACTION_STR_INFO,
    /* 0x25 */ ACTION_STR_NONE2,
    /* 0x26 */ ACTION_STR_NONE3,
    /* 0x27 */ ACTION_STR_NONE4,
    /* 0x28 */ ACTION_STR_WHOOP,
    /* 0x29 */ ACTION_STR_ZOOM,
    /* 0x2A */ ACTION_STR_QUIT,
    /* 0x2B */ ACTION_STR_PICK,
    /* 0x2C */ ACTION_STR_BLOW,
    /* 0x2D */ ACTION_STR_DODGE,
    /* 0x2E */ ACTION_STR_CUT,
    /* 0x2F */ ACTION_STR_HINT,
    /* 0x30 */ ACTION_STR_FINISH,
    /* 0x31 */ ACTION_STR_SET_FREE,
    /* 0x32 */ ACTION_STR_DISMOUNT,
    /* 0x33 */ ACTION_STR_DROP_DOWN,
    /* 0x34 */ ACTION_STR_PICK_UP3,
    /* 0x35 */ ACTION_STR_TAKE,
    /* 0x36 */ ACTION_STR_HURRY,
    /* 0x37 */ ACTION_STR_PULL_DOWN,
    /* 0x38 */ ACTION_STR_PET,
    /* 0x39 */ ACTION_STR_PICK_UP4,
    /* 0x3A */ ACTION_STR_SHIELD_ATTACK,
    /* 0x3B */ ACTION_STR_LISTEN,
    /* 0x3C */ ACTION_STR_DRINK,
    /* 0x3D */ ACTION_STR_ZOOM2,
    /* 0x3E */ ACTION_STR_COVER,
    /* 0x3F */ ACTION_STR_PUSH,
    /* 0x40 */ ACTION_STR_RESIST,
    /* 0x41 */ ACTION_STR_DIVE,
    /* 0x42 */ ACTION_STR_PUT_TOGETHER,
    /* 0x43 */ ACTION_STR_SKIP,
    /* 0x44 */ ACTION_STR_SLAP,
    /* 0x45 */ ACTION_STR_SNIFF,
    /* 0x46 */ ACTION_STR_BITE,
    /* 0x47 */ ACTION_STR_ROLL,
    /* 0x48 */ ACTION_STR_FASTEN,
    /* 0x49 */ ACTION_STR_GET_DOWN,
    /* 0x4A */ ACTION_STR_HAWKEYE_OFF,
    /* 0x4B */ ACTION_STR_DASH2,
    /* 0x4C */ ACTION_STR_SWIM,
    /* 0x4D */ ACTION_STR_CANT_SKIP,
    /* 0x4E */ ACTION_STR_SENSE,
    /* 0x4F */ ACTION_STR_NONE5,
    /* 0x50 */ ACTION_STR_THROW2,
    /* 0x51 */ ACTION_STR_LAND,
    /* 0x52 */ ACTION_STR_HOOK,
    /* 0x53 */ ACTION_STR_CHANGE_LOCKS,
    /* 0x54 */ ACTION_STR_EQUIP,
    /* 0x55 */ ACTION_STR_PULL,
    /* 0x56 */ ACTION_STR_REEL,
    /* 0x57 */ ACTION_STR_EXTRACT,
    /* 0x58 */ ACTION_STR_SPIN,
    /* 0x59 */ ACTION_STR_SWITCH2,
    /* 0x5A */ ACTION_STR_SPIN_ATTACK,
    /* 0x5B */ ACTION_STR_REEL_FAST,
    /* 0x5C */ ACTION_STR_RAISE,
    /* 0x5D */ ACTION_STR_RELEASE,
    /* 0x5E */ ACTION_STR_CHECK2,
    /* 0x5F */ ACTION_STR_MAP,
    /* 0x60 */ ACTION_STR_ITEMS,
    /* 0x61 */ ACTION_STR_INSERT,
    /* 0x62 */ ACTION_STR_DRAW,
    /* 0x63 */ ACTION_STR_STRIKE,
    /* 0x64 */ ACTION_STR_BLANK,
    /* 0x65 */ ACTION_STR_JUMP2,
    /* 0x66 */ ACTION_STR_POINT_WII_REMOTE,
    /* 0x67 */ ACTION_STR_FLIP,
    /* 0x68 */ ACTION_STR_CHANGE_VIEW,
    /* 0x69 */ ACTION_STR_ZOOM3,
    /* 0x6A */ ACTION_STR_BACK2,
    /* 0x6B */ ACTION_STR_CHANCE,
    /* 0x6C */ ACTION_STR_SCOOP,
    /* 0x6D */ ACTION_STR_SURVEY,
    /* 0x6E */ ACTION_STR_CANCEL,
    /* 0x6F */ ACTION_STR_SEIZE,
    /* 0x70 */ ACTION_STR_COLLECTION,
    /* 0x71 */ ACTION_STR_AREA_MAP,
    /* 0x72 */ ACTION_STR_ACTION,
    /* 0x73 */ ACTION_STR_SET_HOOK,
    /* 0x74 */ ACTION_STR_TILT,
    /* 0x75 */ ACTION_STR_THRUST,
    /* 0x76 */ ACTION_STR_ROTATE,
    /* 0x77 */ ACTION_STR_HELM_SPLITTER,
    /* 0x78 */ ACTION_STR_MOVE,
    /* 0x79 */ ACTION_STR_ROLL2,
    /* 0x7A */ ACTION_STR_HOLD_ON,
    /* 0x7B */ ACTION_STR_BITE2,
    /* 0x7C */ ACTION_STR_HELP,
    /* 0x7D */ ACTION_STR_ZOOM_IN,
    /* 0x7E */ ACTION_STR_ZOOM_OUT,
    /* 0x7F */ ACTION_STR_MOVE_CLOSER_TV,
    /* 0x80 */ ACTION_STR_CHECK3,
};

class dKantera_icon_c;

class dMeter2Draw_c : public dDlst_base_c {
public:
    /* 8020FAB4 */ dMeter2Draw_c(JKRExpHeap*);
    /* 80210FB0 */ void init();
    /* 8021135C */ void exec(u32);
    /* 8021151C */ void draw();
    /* 80211BEC */ void initLife();
    /* 80211E64 */ void initMagic();
    /* 80212190 */ void initLightDrop();
    /* 80212404 */ void initRupeeKey();
    /* 802126E4 */ void initButton();
    /* 8021350C */ void initButtonCross();
    /* 80213CEC */ void playPikariBckAnimation(f32);
    /* 80213D6C */ void setPikariBpkAnimation(J2DAnmColor*);
    /* 80213E3C */ void playPikariBpkAnimation(f32);
    /* 80213E94 */ void playOxygenBpkAnimation(J2DAnmColor*);
    /* 802140DC */ void drawPikari(f32, f32, f32*, f32, JUtility::TColor, JUtility::TColor,
                                   JUtility::TColor, JUtility::TColor, f32, u8);
    /* 80213FF0 */ void drawPikari(CPaneMgr*, f32*, f32, JUtility::TColor, JUtility::TColor,
                                   JUtility::TColor, JUtility::TColor, f32, u8);
    /* 8021462C */ void drawPikariHakusha(f32, f32, f32, f32, JUtility::TColor, JUtility::TColor,
                                          JUtility::TColor, JUtility::TColor);
    /* 802147CC */ void changeTextureLife(int, bool, u8);
    /* 802149F4 */ void drawLife(s16, s16, f32, f32);
    /* 80214C20 */ void setAlphaLifeChange(bool);
    /* 80214DF4 */ void setAlphaLifeAnimeMin();
    /* 80214E54 */ void setAlphaLifeAnimeMax();
    /* 80214EB4 */ void drawKanteraScreen(u8);
    /* 80215290 */ void drawMagic(s16, s16, f32, f32);
    /* 80215380 */ void setAlphaMagicChange(bool);
    /* 802154A8 */ void drawKantera(s32, s32, f32, f32);
    /* 802155B8 */ void setAlphaKanteraChange(bool);
    /* 802156E0 */ void setAlphaKanteraAnimeMin();
    /* 8021575C */ void setAlphaKanteraAnimeMax();
    /* 802157E0 */ void drawOxygen(s32, s32, f32, f32);
    /* 802158F0 */ void setAlphaOxygenChange(bool);
    /* 80215A18 */ void setAlphaOxygenAnimeMin();
    /* 80215A94 */ void setAlphaOxygenAnimeMax();
    /* 80215B18 */ void drawLightDrop(u8, u8, f32, f32, f32, f32, u8);
    /* 80215DA4 */ void setAlphaLightDropChange(bool);
    /* 80215DA8 */ f32 getNowLightDropRateCalc();
    /* 80215E40 */ void setAlphaLightDropAnimeMin();
    /* 80215F88 */ void setAlphaLightDropAnimeMax();
    /* 8021632C */ void drawRupee(s16);
    /* 80216684 */ void setAlphaRupeeChange(bool);
    /* 802168D0 */ void setAlphaRupeeAnimeMin();
    /* 80216990 */ void setAlphaRupeeAnimeMax();
    /* 80216A40 */ void drawKey(s16);
    /* 80216B28 */ void setAlphaKeyChange(bool);
    /* 80216CA8 */ void setAlphaKeyAnimeMin();
    /* 80216D2C */ void setAlphaKeyAnimeMax();
    /* 80216DAC */ void drawButtonA(u8, f32, f32, f32, f32, f32, bool, bool);
    /* 802170E4 */ void drawButtonB(u8, bool, f32, f32, f32, f32, f32, bool);
    /* 8021764C */ void drawButtonR(u8, u8, bool, bool);
    /* 802176EC */ void drawButtonZ(u8);
    /* 80217904 */ void drawButton3D(u8);
    /* 80217954 */ void drawButtonC(u8, bool);
    /* 802179C0 */ void drawButtonS(u8);
    /* 80217A10 */ void drawButtonBin(u8);
    /* 80217AB4 */ void drawButtonXY(int, u8, u8, bool, bool);
    /* 80218238 */ f32 getButtonCrossParentInitTransY();
    /* 80218254 */ void drawButtonCross(f32, f32);
    /* 80218338 */ void setAlphaButtonCrossAnimeMin();
    /* 802183A8 */ void setAlphaButtonCrossAnimeMax();
    /* 80218448 */ void setAlphaButtonCrossItemAnimeMin();
    /* 80218524 */ void setAlphaButtonCrossItemAnimeMax();
    /* 802185E8 */ void setAlphaButtonCrossMapAnimeMin();
    /* 802186C4 */ void setAlphaButtonCrossMapAnimeMax();
    /* 80218788 */ void setAlphaButtonChange(bool);
    /* 8021901C */ void setAlphaButtonAnimeMin();
    /* 802190A8 */ void setAlphaButtonAnimeMax();
    /* 80219174 */ void setAlphaButtonAAnimeMin();
    /* 80219258 */ void setAlphaButtonAAnimeMax();
    /* 80219324 */ void setAlphaButtonBAnimeMin();
    /* 80219474 */ void setAlphaButtonBAnimeMax();
    /* 802195A4 */ void setButtonIconAAlpha(u8, u32, bool);
    /* 80219788 */ void setButtonIconBAlpha(u8, u32, bool);
    /* 80219A84 */ void setButtonIconMidonaAlpha(u32);
    /* 80219E98 */ void setButtonIconAlpha(int, u8, u32, bool);
    /* 8021A29C */ ResTIMG* getNumberTexture(int);
    /* 8021A2F4 */ char* getActionString(u8, u8, u8*);
    /* 8021A468 */ void changeTextureItemB(u8);
    /* 8021A71C */ void changeTextureItemXY(int, u8);
    /* 8021A9C8 */ void setAlphaAnimeMin(CPaneMgrAlpha*, s16);
    /* 8021AAA4 */ void setAlphaAnimeMax(CPaneMgrAlpha*, s16);
    /* 8021AB84 */ void setItemNum(u8, u8, u8);
    /* 8021AEC8 */ void drawItemNum(u8, f32);
    /* 8021AF78 */ void drawKanteraMeter(u8, f32);
    /* 8021B0C8 */ u8 isButtonVisible();
    /* 8021B104 */ void setItemParamX(u8);
    /* 8021B364 */ void setItemParamY(u8);
    /* 8021B5B0 */ void setItemParamZ(u8);
    /* 8021B810 */ void setItemParamB(u8);
    /* 8021BB6C */ bool getFishingType();
    /* 8021BBB4 */ bool getCanoeFishing();
    /* 8021BC24 */ bool getCameraSubject();
    /* 8021BC54 */ bool getItemSubject();
    /* 8021BCAC */ bool getPlayerSubject();
    /* 8021BCC0 */ bool isBButtonShow(bool);
    /* 8021BDD0 */ s16 getButtonTimer();

    /* 802102F8 */ virtual ~dMeter2Draw_c();

    J2DScreen* getMainScreenPtr() { return mpScreen; }
    bool isEmphasisC() { return field_0x766 == 7 ? true : false; }
    f32 getMeterGaugeAlphaRate(u8 i_no) { return mMeterAlphaRate[i_no]; }
    bool isEmphasisA() { return field_0x761 == 7 ? true : false; }
    bool isEmphasisB() { return field_0x762 == 7 ? true : false; }
    bool isEmphasisBin() { return field_0x763 == 7 ? true : false; }
    bool isEmphasisZ() { return field_0x764 == 7 ? true : false; }
    bool isEmphasis3D() { return field_0x765 == 7 ? true : false; }
    bool isEmphasisS() { return field_0x767 == 7 ? true : false; }
    bool isEmphasisX() { return field_0x768[0] == 7 ? true : false; }
    bool isEmphasisY() { return field_0x768[1] == 7 ? true : false; }
    bool isEmphasisR() { return field_0x768[2] == 7 ? true : false; }
    void setEmphasisA(u8 param_0) { field_0x761 = param_0; }
    void setEmphasisB(u8 param_0) { field_0x762 = param_0; }

private:
    /* 0x004 */ f32 field_0x4;
    /* 0x008 */ f32 field_0x8;
    /* 0x00C */ f32 field_0xc;
    /* 0x010 */ f32 field_0x10;
    /* 0x014 */ f32 field_0x14;
    /* 0x028 */ f32 field_0x18;
    /* 0x01C */ f32 field_0x1c;
    /* 0x020 */ f32 field_0x20;
    /* 0x024 */ f32 field_0x24;
    /* 0x028 */ f32 field_0x28;
    /* 0x02C */ f32 field_0x2c;
    /* 0x030 */ f32 field_0x30;
    /* 0x034 */ f32 field_0x34;
    /* 0x038 */ f32 field_0x38;
    /* 0x03C */ f32 field_0x3c;
    /* 0x040 */ f32 field_0x40;
    /* 0x044 */ f32 field_0x44;
    /* 0x048 */ f32 field_0x48;
    /* 0x04C */ f32 field_0x4c;
    /* 0x050 */ f32 field_0x50;
    /* 0x054 */ f32 field_0x54;
    /* 0x058 */ f32 field_0x58;
    /* 0x05C */ f32 field_0x5c;
    /* 0x060 */ f32 field_0x60;
    /* 0x064 */ f32 field_0x64;
    /* 0x068 */ f32 field_0x68;
    /* 0x06C */ f32 field_0x6c;
    /* 0x070 */ f32 field_0x70;
    /* 0x074 */ JKRExpHeap* mp_heap;
    /* 0x078 */ J2DScreen* mpScreen;
    /* 0x07C */ J2DScreen* mpKanteraScreen;
    /* 0x080 */ J2DScreen* mpPikariScreen;
    /* 0x084 */ J2DScreen* mpItemNumTex[2][3];
    /* 0x09C */ CPaneMgr* field_0x9c[3];
    /* 0x0A8 */ int field_0xa8;
    /* 0x0AC */ dKantera_icon_c* mpKanteraMeter[2];
    /* 0x0B4 */ u8 field_0xb4[8];
    /* 0x0BC */ CPaneMgr* mpParent;
    /* 0x0C0 */ CPaneMgr* mpAText[5];
    /* 0x0D4 */ CPaneMgr* mpBText[5];
    /* 0x0E8 */ CPaneMgr* mpXYText[5][3];
    /* 0x124 */ CPaneMgr* mpLifeParent;
    /* 0x128 */ CPaneMgr* mpLifeParts[20];
    /* 0x178 */ CPaneMgr* mpHeartMask[20];
    /* 0x1C8 */ CPaneMgr* mpBigHeart;
    /* 0x1CC */ CPaneMgr* mpMagicParent;
    /* 0x1D0 */ CPaneMgr* mpMagicBase;
    /* 0x1D4 */ CPaneMgr* mpMagicFrameL;
    /* 0x1D8 */ CPaneMgr* mpMagicMeter;
    /* 0x1DC */ CPaneMgr* mpMagicFrameR;
    /* 0x1E0 */ CPaneMgr* mpLightDropParent;
    /* 0x1E4 */ int field_0x1e4;
    /* 0x1E8 */ CPaneMgr* mpSIParent[2];
    /* 0x1F0 */ CPaneMgr* mpSIParts[16][3];
    /* 0x2B0 */ CPaneMgr* mpRupeeKeyParent;
    /* 0x2B4 */ CPaneMgr* mpRupeeParent[3];
    /* 0x2C0 */ CPaneMgr* mpRupeeTexture[4][2];
    /* 0x2E0 */ CPaneMgr* mpKeyParent;
    /* 0x2E4 */ CPaneMgr* mpKeyTexture[5];
    /* 0x2F8 */ CPaneMgr* mpButtonParent;
    /* 0x2FC */ int field_0x2fc;
    /* 0x300 */ CPaneMgr* mpButtonA;
    /* 0x304 */ CPaneMgr* mpButtonB;
    /* 0x308 */ CPaneMgr* mpButtonMidona;
    /* 0x30C */ CPaneMgr* mpButtonXY[3];
    /* 0x318 */ CPaneMgr* mpLightB;
    /* 0x31C */ CPaneMgr* mpLightXY[3];
    /* 0x328 */ CPaneMgr* mpItemB;
    /* 0x32C */ CPaneMgr* mpItemXY[2];
    /* 0x334 */ CPaneMgr* mpItemR;
    /* 0x338 */ CPaneMgr* mpBTextA;
    /* 0x33C */ CPaneMgr* mpBTextB;
    /* 0x340 */ CPaneMgr* mpBTextXY[3];
    /* 0x34C */ CPaneMgr* mpTextA;
    /* 0x350 */ CPaneMgr* mpTextB;
    /* 0x354 */ CPaneMgr* mpTextXY[3];
    /* 0x360 */ CPaneMgr* mpTextI;
    /* 0x364 */ CPaneMgr* mpTextM;
    /* 0x368 */ CPaneMgr* mpButtonCrossParent;
    /* 0x36C */ int field_0x36c;
    /* 0x370 */ u8 field_0x370[0x2C];
    /* 0x39C */ CPaneMgr* mpPikariParent;
    /* 0x3A0 */ CPaneMgr* mpLifeTexture[20][2];
    /* 0x440 */ CPaneMgr* mpHeartBase[20];
    /* 0x490 */ CPaneMgr* mpJujiI[5];
    /* 0x4A4 */ CPaneMgr* mpJujiM[5];
    /* 0x4B8 */ CPaneMgr* mpUzu;
    /* 0x4BC */ u8 field_0x4bc[0x28];
    /* 0x4E4 */ JKRHeap* mpItemBTex[2][2];
    /* 0x4F4 */ JKRHeap* mpItemXYTex[2][2][2];
    /* 0x514 */ J2DPicture* mpItemBPane;
    /* 0x518 */ J2DPicture* mpItemXYPane[3];
    /* 0x524 */ int field_0x524[2][2];
    /* 0x534 */ J2DAnmTransformKey* mPikariBck;
    /* 0x538 */ J2DAnmColorKey* mPikariBpk;
    /* 0x53C */ J2DAnmColorKey* mpOxygenBpk[3];
    /* 0x548 */ JUtility::TColor field_0x548;
    /* 0x54C */ JUtility::TColor field_0x54c;
    /* 0x550 */ f32 field_0x550;
    /* 0x554 */ f32 field_0x554;
    /* 0x558 */ f32 field_0x558;
    /* 0x55C */ f32 field_0x55c;
    /* 0x560 */ f32 field_0x560;
    /* 0x564 */ f32 field_0x564;
    /* 0x568 */ f32 field_0x568;
    /* 0x56C */ f32 field_0x56c;
    /* 0x570 */ f32 field_0x570;
    /* 0x574 */ f32 field_0x574;
    /* 0x578 */ f32 field_0x578;
    /* 0x57C */ f32 field_0x57c;
    /* 0x580 */ f32 field_0x580;
    /* 0x584 */ f32 field_0x584[3];
    /* 0x590 */ f32 field_0x590[3];
    /* 0x59C */ f32 field_0x59c[3];
    /* 0x5A8 */ f32 field_0x5a8[3];
    /* 0x5B4 */ f32 field_0x5b4[3];
    /* 0x5C0 */ f32 field_0x5c0[3];
    /* 0x5CC */ f32 field_0x5cc[3];
    /* 0x5D8 */ f32 field_0x5d8[3];
    /* 0x5E4 */ f32 field_0x5e4[3];
    /* 0x5F0 */ f32 field_0x5f0[3];
    /* 0x5FC */ f32 mMeterAlphaRate[3];
    /* 0x608 */ f32 field_0x608;
    /* 0x60C */ f32 field_0x60c;
    /* 0x610 */ f32 field_0x610[3];
    /* 0x61C */ f32 field_0x61c;
    /* 0x620 */ f32 field_0x620[3];
    /* 0x62C */ f32 field_0x62c[16];
    /* 0x66C */ f32 field_0x66c[16];
    /* 0x6AC */ f32 field_0x6ac[3];
    /* 0x6B8 */ f32 field_0x6b8[3];
    /* 0x6C4 */ f32 field_0x6c4[3];
    /* 0x6D0 */ f32 field_0x6d0[3];
    /* 0x6DC */ f32 field_0x6dc;
    /* 0x6E0 */ f32 field_0x6e0;
    /* 0x6E4 */ f32 field_0x6e4;
    /* 0x6E8 */ f32 field_0x6e8;
    /* 0x6EC */ f32 field_0x6ec;
    /* 0x6F0 */ f32 field_0x6f0;
    /* 0x6F4 */ f32 field_0x6f4;
    /* 0x6F8 */ f32 field_0x6f8;
    /* 0x6FC */ f32 field_0x6fc;
    /* 0x700 */ u8 field_0x700[0x18];
    /* 0x718 */ f32 field_0x718;
    /* 0x71C */ u8 field_0x71c[4];
    /* 0x720 */ f32 mZButtonAlpha;
    /* 0x724 */ f32 field_0x724;
    /* 0x728 */ f32 field_0x728;
    /* 0x72C */ f32 field_0x72c;
    /* 0x730 */ f32 field_0x730;
    /* 0x734 */ f32 field_0x734;
    /* 0x738 */ f32 field_0x738;
    /* 0x73C */ f32 field_0x73c;
    /* 0x740 */ u16 field_0x740;
    /* 0x742 */ s16 field_0x742[3];
    /* 0x748 */ u8 field_0x748[0xC];
    /* 0x756 */ u16 field_0x754;
    /* 0x756 */ s16 field_0x756;
    /* 0x758 */ u8 field_0x758;
    /* 0x759 */ u8 field_0x759;
    /* 0x75A */ u8 field_0x75a;
    /* 0x75B */ u8 field_0x75b;
    /* 0x75C */ u8 field_0x75c[3];
    /* 0x75F */ u8 field_0x75f;
    /* 0x760 */ u8 field_0x760;
    /* 0x761 */ u8 field_0x761;
    /* 0x762 */ u8 field_0x762;
    /* 0x763 */ u8 field_0x763;
    /* 0x764 */ u8 field_0x764;
    /* 0x765 */ u8 field_0x765;
    /* 0x766 */ u8 field_0x766;
    /* 0x767 */ u8 field_0x767;
    /* 0x768 */ u8 field_0x768[3];
    /* 0x76B */ u8 field_0x76b;
    /* 0x76C */ u8 field_0x76c[2];
    /* 0x76E */ u8 field_0x76e;
    /* 0x76F */ u8 field_0x76f;
    /* 0x770 */ u8 field_0x770;
    /* 0x771 */ u8 field_0x771;
    /* 0x772 */ u8 field_0x772;
    /* 0x773 */ u8 field_0x773[2];
    /* 0x778 */ f32 mHUDScale;
    /* 0x77C */ f32 mHUDAlpha;
    /* 0x780 */ f32 mButtonsPosX;
    /* 0x784 */ f32 mButtonsPosY;
    /* 0x788 */ f32 mButtonsScale;
    /* 0x78C */ f32 field_0x78c;
    /* 0x790 */ f32 field_0x790;
    /* 0x794 */ f32 mLifeGaugeHeartAlpha;
    /* 0x798 */ f32 mLifeGaugeBaseAlpha;
    /* 0x79C */ f32 mHeartAlpha;
    /* 0x7A0 */ f32 mLargeHeartAlpha;
    /* 0x7A4 */ f32 field_0x7a4;
    /* 0x7A8 */ f32 mMagicMeterAlpha;
    /* 0x7AC */ f32 mMagicMeterFrameAlpha;
    /* 0x7B0 */ f32 field_0x7b0;
    /* 0x7B4 */ f32 mLanternMeterAlpha;
    /* 0x7B8 */ f32 mLanternMeterFrameAlpha;
    /* 0x7BC */ f32 field_0x7bc;
    /* 0x7C0 */ f32 mOxygenMeterAlpha;
    /* 0x7C4 */ f32 mOxygenMeterFrameAlpha;
    /* 0x7C8 */ f32 field_0x7c8;
    /* 0x7CC */ f32 field_0x7cc;
    /* 0x7D0 */ f32 field_0x7d0;
    /* 0x7D4 */ f32 mRupeeAlpha;
    /* 0x7D8 */ f32 mRupeeFrameAlpha;
    /* 0x7DC */ f32 mRupeeCountAlpha;
    /* 0x7E0 */ f32 field_0x7e0;
    /* 0x7E4 */ f32 field_0x7e4;
    /* 0x7E8 */ f32 mKeyAlpha;
    /* 0x7EC */ f32 mKeyNumAlpha;
    /* 0x7F0 */ f32 field_0x7f0;
    /* 0x7F4 */ f32 mMainHUDButtonsAlpha;
    /* 0x7F8 */ f32 mButtonDisplayBackAlpha;
    /* 0x7FC */ f32 mAButtonAlpha;
    /* 0x800 */ f32 mBButtonAlpha;
    /* 0x804 */ f32 mXButtonAlpha;
    /* 0x808 */ f32 mYButtonAlpha;
    /* 0x80C */ f32 field_0x80c;
    /* 0x810 */ f32 field_0x810;
    /* 0x814 */ f32 mBItemBaseAlpha[2];
    /* 0x81C */ f32 mXButtonItemBaseAlpha[2];
    /* 0x824 */ f32 mYButtonItemBaseAlpha[2];
    /* 0x82C */ f32 field_0x82c[2];
    /* 0x834 */ f32 mZButtonItemBaseAlpha;
    /* 0x838 */ f32 mButtonBaseAlpha;
    /* 0x83C */ f32 mAButtonFontSpacing;
    /* 0x840 */ f32 mDPadButtonAlpha;
    /* 0x844 */ f32 mDPadButtonITEMAlpha;
    /* 0x848 */ f32 mDPadButtonMAPAlpha;
    /* 0x84C */ u8 field_0x84c;
    /* 0x84D */ u8 field_0x84d;
    /* 0x84E */ u8 field_0x84e;
    /* 0x84F */ u8 field_0x84f;
    /* 0x850 */ u8 field_0x850;
    /* 0x851 */ u8 field_0x851;
    /* 0x852 */ u8 field_0x852;
    /* 0x853 */ u8 field_0x853;
    /* 0x854 */ u8 field_0x854;
    /* 0x855 */ u8 field_0x855;
    /* 0x856 */ u8 field_0x856;
    /* 0x857 */ u8 field_0x857;
    /* 0x858 */ u8 field_0x858;
    /* 0x859 */ u8 field_0x859;
    /* 0x85A */ u8 field_0x85a;
    /* 0x85B */ u8 field_0x85b;
    /* 0x85C */ u8 field_0x85c;
    /* 0x85D */ u8 field_0x85d;
    /* 0x85E */ u8 field_0x85e;
    /* 0x85F */ u8 field_0x85f;
    /* 0x860 */ u8 field_0x860;
    /* 0x861 */ u8 field_0x861;
};

#endif /* D_METER_D_METER2_DRAW_H */
