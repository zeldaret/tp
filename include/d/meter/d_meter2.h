#ifndef D_METER_D_METER2_H
#define D_METER_D_METER2_H

#include "JSystem/JKernel/JKRExpHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/meter/d_meter2_draw.h"
#include "d/meter/d_meter_map.h"
#include "f_op/f_op_msg.h"
#include "dolphin/types.h"

class dMeterMap_c;

class dMeterSub_c : public dDlst_base_c {
public:
    // these seem to be inlined, but generates in the wrong order in d_scope.cpp
    /* 8019412C */ //virtual void draw() {}
    /* 801940D4 */ //virtual ~dMeterSub_c() {}
    /* 8019411C */ //virtual int _create() { return 0; }
    /* 80194130 */ //virtual int _execute(u32) { return 0; }
    /* 80194124 */ //virtual int _delete() { return 0; }
    /* 80194138 */ //virtual int isDead() { return 0; }

    /* 8019412C */ virtual void draw();
    /* 801940D4 */ virtual ~dMeterSub_c() {}
    /* 8019411C */ virtual int _create();
    /* 80194130 */ virtual int _execute(u32);
    /* 80194124 */ virtual int _delete();
    /* 80194138 */ virtual bool isDead();
};

class dMeterButton_c : public dDlst_base_c {
public:
    /* 80201328 */ dMeterButton_c();
    /* 802013CC */ void _create();
    /* 80201404 */ void _execute(u32, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool,
                                 bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool,
                                 bool);
    /* 80202A9C */ void _delete();
    /* 802032C4 */ void alphaAnimeButtonA(u32, bool);
    /* 8020339C */ void alphaAnimeButtonB(u32, bool);
    /* 802034A8 */ void alphaAnimeButtonR(u32, bool);
    /* 802035AC */ void alphaAnimeButtonZ(u32, bool);
    /* 802036C0 */ void alphaAnimeButton3D(u32, bool);
    /* 802037B8 */ void alphaAnimeButtonC(u32, bool);
    /* 80203878 */ void alphaAnimeButtonS(u32, bool);
    /* 802038F4 */ void alphaAnimeButtonX(u32, bool);
    /* 80203A08 */ void alphaAnimeButtonY(u32, bool);
    /* 80203B1C */ void alphaAnimeButtonNun(u32, bool);
    /* 80203C30 */ void alphaAnimeButtonRemo(u32, bool);
    /* 80203D44 */ void alphaAnimeButtonRemo2(u32, bool);
    /* 80203E58 */ void alphaAnimeButtonAR(u32, bool);
    /* 80203F60 */ void alphaAnimeButton3DB(u32, bool);
    /* 80204068 */ void alphaAnimeButtonNURE(u32, bool);
    /* 80204170 */ void alphaAnimeButtonReel(u32, bool);
    /* 80204278 */ void alphaAnimeButtonReel2(u32, bool);
    /* 80204368 */ void alphaAnimeButtonAB(u32, bool);
    /* 80204458 */ void alphaAnimeButtonTate(u32, bool);
    /* 80204548 */ void alphaAnimeButtonNunZ(u32, bool);
    /* 80204620 */ void alphaAnimeButtonNunC(u32, bool);
    /* 802046F8 */ void alphaAnimeButtonBin(u32, bool);
    /* 802047E8 */ void screenInitButton();
    /* 80205834 */ void screenInitText();
    /* 80205CA0 */ void updateButton();
    /* 80206978 */ void updateText(u32);
    /* 80206CE0 */ void setAlphaButtonAAnimeMin();
    /* 80206D70 */ void isFastSet(int);
    /* 80207060 */ void setAlphaButtonAAnimeMax();
    /* 8020714C */ void setAlphaButtonBAnimeMin();
    /* 802071DC */ void setAlphaButtonBAnimeMax();
    /* 802072C8 */ void setAlphaButtonRAnimeMin();
    /* 80207358 */ void setAlphaButtonRAnimeMax();
    /* 80207444 */ void setAlphaButtonZAnimeMin();
    /* 802074D4 */ void setAlphaButtonZAnimeMax();
    /* 802075C0 */ void setAlphaButton3DAnimeMin();
    /* 80207654 */ void setAlphaButton3DAnimeMax();
    /* 80207740 */ void setAlphaButton3DVAnimeMin();
    /* 80207744 */ void setAlphaButton3DVAnimeMax();
    /* 80207748 */ void setAlphaButtonCAnimeMin();
    /* 802077EC */ void setAlphaButtonCAnimeMax();
    /* 80207A28 */ void setAlphaButtonSAnimeMin();
    /* 80207AB8 */ void setAlphaButtonSAnimeMax();
    /* 80207BA4 */ void setAlphaButtonXAnimeMin();
    /* 80207C34 */ void setAlphaButtonXAnimeMax();
    /* 80207D20 */ void setAlphaButtonYAnimeMin();
    /* 80207DB0 */ void setAlphaButtonYAnimeMax();
    /* 80207E9C */ void setAlphaButtonNunAnimeMin();
    /* 80207F34 */ void setAlphaButtonNunAnimeMax();
    /* 80208028 */ void setAlphaButtonRemoAnimeMin();
    /* 802080C0 */ void setAlphaButtonRemoAnimeMax();
    /* 802081B4 */ void setAlphaButtonRemo2AnimeMin();
    /* 8020824C */ void setAlphaButtonRemo2AnimeMax();
    /* 80208340 */ void setAlphaButtonARAnimeMin();
    /* 802083D8 */ void setAlphaButtonARAnimeMax();
    /* 802084D8 */ void setAlphaButton3DBAnimeMin();
    /* 80208570 */ void setAlphaButton3DBAnimeMax();
    /* 80208670 */ void setAlphaButtonNUREAnimeMin();
    /* 80208708 */ void setAlphaButtonNUREAnimeMax();
    /* 80208808 */ void setAlphaButtonReelAnimeMin();
    /* 802088A0 */ void setAlphaButtonReelAnimeMax();
    /* 802089A0 */ void setAlphaButtonReel2AnimeMin();
    /* 80208A38 */ void setAlphaButtonReel2AnimeMax();
    /* 80208AEC */ void setAlphaButtonABAnimeMin();
    /* 80208B84 */ void setAlphaButtonABAnimeMax();
    /* 80208C38 */ void setAlphaButtonTateAnimeMin();
    /* 80208CD0 */ void setAlphaButtonTateAnimeMax();
    /* 80208D84 */ void setAlphaButtonNunZAnimeMin();
    /* 80208E1C */ void setAlphaButtonNunZAnimeMax();
    /* 80208F1C */ void setAlphaButtonNunCAnimeMin();
    /* 80208FB4 */ void setAlphaButtonNunCAnimeMax();
    /* 802090B4 */ void setAlphaButtonBinAnimeMin();
    /* 8020914C */ void setAlphaButtonBinAnimeMax();
    /* 8020924C */ void setAlphaButtonOAnimeMin(int);
    /* 802092C0 */ void setAlphaButtonOAnimeMax(int);
    /* 80209368 */ void setAlphaIconAnimeMin();
    /* 802093D8 */ void setAlphaIconAnimeMax();
    /* 80209474 */ bool isClose();
    /* 802095C0 */ void setString(char*, u8, u8, u8);
    /* 80209CEC */ void hideAll();
    /* 80209D7C */ void getCenterPosCalc(u8, char*, int);
    /* 8020A540 */ void trans_button(int, f32);
    /* 8020A94C */ void hide_button(u8);
    /* 8020AA84 */ void pikariCheck();
    /* 8020AE68 */ void paneTrans(CPaneMgr*, f32, f32, u8);

    /* 80202240 */ virtual void draw();
    /* 80201370 */ virtual ~dMeterButton_c();

    bool isSetButton(u8 i_no) { return field_0x484[i_no] <= 0; }

    /* 0x004 */ u8 field_0x4[0x484 - 0x4];
    /* 0x48C */ s16 field_0x484[21];
    /* 0x4AE */ u8 field_0x4ae[0x630 - 0x4ae];
};

class dMeterString_c : public dMeterSub_c {
public:
    /* 8020ED60 */ dMeterString_c(int);
    /* 8020F5A4 */ void createString(int);
    /* 8020F66C */ void playBckAnimation(f32);
    /* 8020F6EC */ void drawPikari();
    /* 8020FA88 */ void isLeadByte(int);

    /* 8020F1B0 */ virtual void draw();
    /* 8020EDF4 */ virtual ~dMeterString_c();
    /* 8020EE70 */ virtual int _create();
    /* 8020F150 */ virtual int _execute(u32);
    /* 8020F49C */ virtual int _delete();

    /* 0x04 */ u8 field_0x4[0x40 - 0x4];
};

class dMeterHaihai_c : public dMeterSub_c {
public:
    /* 8020AE8C */ dMeterHaihai_c(u8);
    /* 8020B814 */ void drawHaihai(u8, f32, f32, f32, f32);
    /* 8020B518 */ void drawHaihai(u8);
    /* 8020B9B0 */ void drawHaihaiLeft(f32, f32);
    /* 8020BA4C */ void drawHaihaiRight(f32, f32);
    /* 8020BAE8 */ void drawHaihaiTop(f32, f32);
    /* 8020BB84 */ void drawHaihaiBottom(f32, f32);
    /* 8020BC20 */ void setScale(f32);
    /* 8020BEA0 */ void alphaAnimeHaihai(u32);
    /* 8020BEA4 */ void updateHaihai();
    /* 8020BF00 */ void playBckAnime(J2DAnmTransformKey*);
    /* 8020C078 */ void playBtkAnime(J2DAnmTextureSRTKey*);
    /* 8020C1CC */ void playBpkAnime(J2DAnmColor*);

    /* 8020B140 */ virtual void draw();
    /* 8020AEF0 */ virtual ~dMeterHaihai_c();
    /* 8020AF6C */ virtual int _create();
    /* 8020B0F4 */ virtual int _execute(u32);
    /* 8020BDAC */ virtual int _delete();

    u8 field_0x4[0x2c - 0x4];
};

class dMeter2_c : public msg_class {
public:
    enum {
        /* 0x2 */ ARROW_MAX = 2,
        /* 0x3 */ PACHINKO_MAX,
    };

    enum {
        /* 0x0 */ X_ITEM,
        /* 0x1 */ X_STATUS,
        /* 0x2 */ Y_ITEM,
        /* 0x3 */ Y_STATUS,
    };

    /* 8021EA14 */ int _create();
    /* 8021F128 */ int _execute();
    /* 8021F370 */ int _draw();
    /* 8021F49C */ int _delete();
    /* 8021F6EC */ int emphasisButtonDelete();
    /* 8021F780 */ void setLifeZero();
    /* 8021F7B0 */ void checkStatus();
    /* 8021FD60 */ void moveLife();
    /* 80220180 */ void moveKantera();
    /* 8022051C */ void moveOxygen();
    /* 80220888 */ void moveLightDrop();
    /* 80220C30 */ void moveRupee();
    /* 802210AC */ void moveKey();
    /* 80221244 */ void moveButtonA();
    /* 802217F4 */ void moveButtonB();
    /* 80221EC8 */ void moveButtonR();
    /* 80222000 */ void moveButtonZ();
    /* 802222A0 */ void moveButton3D();
    /* 80222364 */ void moveButtonC();
    /* 80222494 */ void moveButtonS();
    /* 80222518 */ void moveButtonXY();
    /* 80222E88 */ void moveButtonCross();
    /* 802230F8 */ void moveTouchSubMenu();
    /* 802230FC */ void moveSubContents();
    /* 802231C8 */ void move2DContents();
    /* 802237D4 */ void checkSubContents();
    /* 80223BC4 */ void check2DContents();
    /* 80223E00 */ void moveBombNum();
    /* 80224258 */ void moveBottleNum();
    /* 80224354 */ void moveArrowNum();
    /* 80224680 */ void movePachinkoNum();
    /* 802248E4 */ void alphaAnimeLife();
    /* 80224A04 */ void alphaAnimeKantera();
    /* 80224BAC */ void alphaAnimeOxygen();
    /* 80224D6C */ void alphaAnimeLightDrop();
    /* 80224DC0 */ void alphaAnimeRupee();
    /* 80224F70 */ void alphaAnimeKey();
    /* 802250F4 */ void alphaAnimeButton();
    /* 802254C0 */ void alphaAnimeButtonCross();
    /* 802256DC */ bool isShowLightDrop();
    /* 802258A0 */ void killSubContents(u8);
    /* 80225960 */ BOOL isKeyVisible();
    /* 802259F8 */ int isArrowEquip();
    /* 80225A64 */ int isPachinkoEquip();

    void setNowLifeGauge(s16 life) { mNowLifeGauge = life; }
    void onArrowSoundBit(int bit) { mArrowSound |= (1 << bit); }
    void offArrowSoundBit(int bit) { mArrowSound &= ~(1 << bit); }
    bool isArrowSoundBit(int bit) { return mArrowSound & (1 << bit) ? true : false; }
    void onRupeeSoundBit(int bit) { mRupeeSound |= (1 << bit); }
    void offRupeeSoundBit(int bit) { mRupeeSound &= ~(1 << bit); }
    bool isRupeeSoundBit(int bit) { return mRupeeSound & (1 << bit); }
    s16 getNowLifeGauge() { return mNowLifeGauge; }
    u8 getSubContents() { return mSubContentType; }
    u16 getSubContentsStringType() { return mSubContentsStringType; }
    bool isShowFlag(int i_no) { return field_0x1e6 & (1 << i_no); }
    void onShowFlag(int i_no) { field_0x1e6 |= (1 << i_no); }

private:
    /* 0x0FC */ int field_0xfc;
    /* 0x100 */ JKRExpHeap* mpHeap;
    /* 0x104 */ JKRExpHeap* mpSubHeap;
    /* 0x108 */ JKRHeap* field_0x108;
    /* 0x10C */ dMeter2Draw_c* mpMeterDraw;
    /* 0x110 */ dMeterSub_c* mpSubContents;
    /* 0x114 */ dMeterString_c* mpSubSubContents;
    /* 0x118 */ dMeterButton_c* mpEmpButton;
    /* 0x11C */ dMeterHaihai_c* field_0x11c;  // type is a guess for now
    /* 0x120 */ dMeterMap_c* mpMap;
    /* 0x124 */ u32 mStatus;
    /* 0x128 */ u32 field_0x128;
    /* 0x12C */ int field_0x12c;
    /* 0x130 */ f32 field_0x130;
    /* 0x134 */ f32 mAButtonTalkPosX[2];
    /* 0x13C */ f32 mAButtonTalkPosY[2];
    /* 0x144 */ f32 field_0x144;
    /* 0x148 */ f32 field_0x148[2];
    /* 0x150 */ f32 field_0x150[2];
    /* 0x158 */ f32 field_0x158;
    /* 0x15C */ f32 field_0x15c;
    /* 0x160 */ f32 field_0x160[4];
    /* 0x170 */ u8 field_0x170[4];
    /* 0x174 */ f32 field_0x174[4];
    /* 0x184 */ u8 field_0x184[4];
    /* 0x188 */ f32 field_0x188;
    /* 0x18C */ f32 field_0x18c;
    /* 0x190 */ s16 field_0x190;
    /* 0x192 */ s16 mNowLifeGauge;
    /* 0x194 */ s16 mMaxLife;
    /* 0x196 */ s16 mNowMagic;
    /* 0x198 */ s16 mMaxMagic;
    /* 0x19A */ s16 field_0x19a;
    /* 0x19C */ int mNowOil;
    /* 0x1A0 */ int mMaxOil;
    /* 0x1A4 */ int mNowOxygen;
    /* 0x1A8 */ int mMaxOxygen;
    /* 0x1AC */ int field_0x1ac;
    /* 0x1B0 */ s16 mRupeeNum;
    /* 0x1B2 */ s16 mKeyNum;
    /* 0x1B4 */ s16 field_0x1b4;
    /* 0x1B6 */ u16 mSubContentsStringType;
    /* 0x1B8 */ u16 field_0x1b8[5];
    /* 0x1C2 */ u8 mLightDropNum;
    /* 0x1C3 */ u8 mNeedLightDropNum;
    /* 0x1C4 */ u8 mDoStatus;
    /* 0x1C5 */ u8 mAStatus;
    /* 0x1C6 */ u8 field_0x1c6;
    /* 0x1C7 */ u8 mCollectSmell;
    /* 0x1C8 */ u8 mRStatus;
    /* 0x1C9 */ u8 mZStatus;
    /* 0x1CA */ u8 m3DStatus;
    /* 0x1CB */ u8 mCStickStatus;
    /* 0x1CC */ u8 mSButtonStatus;
    /* 0x1CD */ u8 mNunStatus;
    /* 0x1CE */ u8 mRemoConStatus;
    /* 0x1CF */ u8 mNunZStatus;
    /* 0x1D0 */ u8 mNunCStatus;
    /* 0x1D1 */ u8 mBottleStatus;
    /* 0x1D2 */ u8 mItemStatus[4];
    /* 0x1D6 */ u8 field_0x1d6[2];
    /* 0x1D8 */ u8 field_0x1d8[2];
    /* 0x1DA */ u8 mArrowNum;
    /* 0x1DB */ u8 mPachinkoNum;
    /* 0x1DC */ u8 mDoSetFlag;
    /* 0x1DD */ u8 mASetFlag;
    /* 0x1DE */ u8 mRSetFlag;
    /* 0x1DF */ u8 mXSetFlag;
    /* 0x1E0 */ u8 mYSetFlag;
    /* 0x1E1 */ u8 field_0x1e1;
    /* 0x1E2 */ u8 mEquipSword;
    /* 0x1E3 */ u8 field_0x1e3;
    /* 0x1E4 */ u8 field_0x1e4;
    /* 0x1E5 */ u8 mSubContentType;
    /* 0x1E6 */ u8 field_0x1e6;
    /* 0x1E7 */ u8 field_0x1e7;
    /* 0x1E8 */ u8 field_0x1e8;
    /* 0x1E9 */ u8 field_0x1e9;
    /* 0x1EA */ u8 mRupeeSound;
    /* 0x1EB */ u8 mArrowSound;
    /* 0x1EC */ u8 field_0x1ec;
    /* 0x1ED */ u8 field_0x1ed;
    /* 0x1EE */ u8 mLifeCountType;
    /* 0x1EF */ u8 mBottleNum[4];
    /* 0x1F3 */ u8 mBombNum[3];
    /* 0x1F6 */ u8 mBombMax[3];
    /* 0x1F9 */ u8 mItemMaxNum[4];
    /* 0x1FD */ u8 field_0x1fd;
    /* 0x1FE */ u8 field_0x1fe;
    /* 0x1FF */ u8 field_0x1ff;
    /* 0x200 */ u8 field_0x200;
    /* 0x201 */ u8 field_0x201;
    /* 0x204 */ f32 mLifeGaugePosX;
    /* 0x208 */ f32 mLifeGaugePosY;
    /* 0x20C */ f32 mLifeGaugeScale;
    /* 0x210 */ f32 mHeartScale;
    /* 0x214 */ f32 mLargeHeartScale;
    /* 0x218 */ u8 field_0x218[0x22C - 0x218];
    /* 0x22C */ f32 mLanternMeterScale;
    /* 0x230 */ f32 mLanternMeterPosX;
    /* 0x234 */ f32 mLanternMeterPosY;
    /* 0x238 */ f32 mOxygenMeterScale;
    /* 0x23C */ f32 mOxygenMeterPosX;
    /* 0x240 */ f32 mOxygenMeterPosY;
    /* 0x244 */ u8 field_0x244[0x246 - 0x244];
    /* 0x246 */ s16 field_0x246;
    /* 0x248 */ s16 field_0x248;
    /* 0x24A */ u8 field_0x24a[0x268 - 0x24a];
    /* 0x268 */ f32 mRupeeKeyScale;
    /* 0x26C */ f32 mRupeeKeyPosX;
    /* 0x270 */ f32 mRupeeKeyPosY;
    /* 0x274 */ f32 mRupeeScale;
    /* 0x278 */ f32 mRupeePosX;
    /* 0x27C */ f32 mRupeePosY;
    /* 0x280 */ f32 mRupeeFramePosY;
    /* 0x284 */ f32 mRupeeFrameScale;
    /* 0x288 */ f32 mRupeeFramePosX;
    /* 0x28C */ f32 mRupeeCountScale;
    /* 0x290 */ f32 mRupeeCountPosX;
    /* 0x294 */ f32 mRupeeCountPosY;
    /* 0x298 */ u8 mWalletSize;
    /* 0x29C */ f32 mKeyScale;
    /* 0x2A0 */ f32 mKeyPosX;
    /* 0x2A4 */ f32 mKeyPosY;
    /* 0x2A8 */ f32 mKeyNumScale;
    /* 0x2AC */ f32 mKeyNumPosX;
    /* 0x2B0 */ f32 mKeyNumPosY;
    /* 0x2B4 */ f32 mAButtonScale;
    /* 0x2B8 */ f32 mAButtonPosX;
    /* 0x2BC */ f32 mAButtonPosY;
    /* 0x2C0 */ f32 mAButtonFontScale;
    /* 0x2C4 */ f32 mAButtonFontPosX;
    /* 0x2C8 */ f32 mAButtonFontPosY;
    /* 0x2CC */ f32 field_0x2cc;
    /* 0x2D0 */ f32 mBButtonPosX;
    /* 0x2D4 */ f32 mBButtonPosY;
    /* 0x2D8 */ u8 field_0x2d8[0x2e4 - 0x2d8];
    /* 0x2E4 */ f32 mAButtonTalkScale[2];
    /* 0x2EC */ f32 field_0x2ec[2];
    /* 0x2F4 */ f32 mBItemBaseScale[2];
    /* 0x2FC */ f32 mBItemBasePosX[2];
    /* 0x304 */ f32 mBItemBasePosY[2];
    /* 0x30C */ f32 mBButtonFontScale;
    /* 0x310 */ f32 mBButtonFontPosX;
    /* 0x314 */ f32 mBButtonFontPosY;
    /* 0x318 */ u8 field_0x318[0x324 - 0x318];
    /* 0x324 */ f32 field_0x324;
    /* 0x328 */ f32 field_0x328;
    /* 0x32C */ f32 field_0x32c;
    /* 0x330 */ f32 field_0x330;
    /* 0x334 */ f32 field_0x334;
    /* 0x338 */ f32 field_0x338;
    /* 0x33C */ f32 field_0x33c;
    /* 0x340 */ f32 field_0x340;
    /* 0x344 */ f32 field_0x344;
    /* 0x348 */ f32 field_0x348;
    /* 0x34C */ f32 field_0x34c;
    /* 0x350 */ f32 field_0x350;
    /* 0x354 */ u8 field_0x354[0x360 - 0x354];
    /* 0x360 */ f32 field_0x360;
    /* 0x364 */ f32 field_0x364;
    /* 0x368 */ f32 field_0x368;
    /* 0x36C */ f32 field_0x36c;
    /* 0x370 */ f32 field_0x370;
    /* 0x374 */ f32 field_0x374;
    /* 0x378 */ u8 field_0x378[0x384 - 0x378];
    /* 0x384 */ f32 field_0x384;
    /* 0x388 */ f32 field_0x388;
    /* 0x38C */ f32 field_0x38c;
    /* 0x390 */ f32 field_0x390[3];
    /* 0x39C */ f32 field_0x39c[2];
    /* 0x3A4 */ f32 field_0x3a4[2];
    /* 0x3AC */ f32 field_0x3ac[2];
    /* 0x3B4 */ f32 field_0x3b4[2];
    /* 0x3BC */ f32 field_0x3bc[2];
    /* 0x3C4 */ f32 field_0x3c4[2];
    /* 0x3CC */ u8 field_0x3cc[0x3e4 - 0x3CC];
    /* 0x3E4 */ f32 field_0x3e4;
    /* 0x3E8 */ f32 field_0x3e8;
    /* 0x3EC */ f32 field_0x3ec;
    /* 0x3F0 */ f32 field_0x3f0;
    /* 0x3F4 */ f32 field_0x3f4;
    /* 0x3F8 */ f32 field_0x3f8;
    /* 0x3FC */ u8 field_0x3fc[0x420 - 0x3fc];
    /* 0x420 */ f32 mVesselPosX;
    /* 0x424 */ f32 mVesselPosY;
    /* 0x428 */ f32 mVesselScale;
    /* 0x42C */ f32 mVesselAlpha;
    /* 0x430 */ f32 field_0x430;
    /* 0x434 */ u8 field_0x434[0x448 - 0x434];
    /* 0x448 */ f32 mDPadButtonOFFPosX;
    /* 0x44C */ f32 mDPadButtonOFFPosY;
    /* 0x450 */ f32 mDPadButtonScale;
    /* 0x454 */ f32 mDPadButtonONPosX;
    /* 0x458 */ f32 mDPadButtonONPosY;
    /* 0x45C */ f32 mDPadButtonLetterSpacing;
    /* 0x460 */ u8 field_0x460[0x4bc - 0x460];
    /* 0x4BC */ u8 field_0x4bc;
    /* 0x4BC */ u8 field_0x4bd;
};

#endif /* D_METER_D_METER2_H */
