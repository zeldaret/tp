#ifndef D_METER_D_METER2_H
#define D_METER_D_METER2_H

#include "JSystem/JKernel/JKRExpHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/meter/d_meter2_draw.h"
#include "d/meter/d_meter_map.h"
#include "d/msg/d_msg_class.h"
#include "dolphin/types.h"

class dMeterMap_c;

class dMeter2_c : public msg_class {
public:
    /* 8021EA14 */ int _create();
    /* 8021F128 */ int _execute();
    /* 8021F370 */ int _draw();
    /* 8021F49C */ int _delete();
    /* 8021F6EC */ void emphasisButtonDelete();
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
    /* 802256DC */ void isShowLightDrop();
    /* 802258A0 */ void killSubContents(u8);
    /* 80225960 */ void isKeyVisible();
    /* 802259F8 */ void isArrowEquip();
    /* 80225A64 */ void isPachinkoEquip();

    void setNowLifeGauge(s16 life) { mNowLifeGauge = life; }

private:
    /* 0x100 */ JKRExpHeap* mpHeap;
    /* 0x104 */ JKRExpHeap* mpSubHeap;
    /* 0x108 */ void* field_0x108;
    /* 0x10C */ dMeter2Draw_c* mpMeterDraw;
    /* 0x110 */ dDlst_base_c* field_0x110;
    /* 0x114 */ dDlst_base_c* field_0x114;
    /* 0x118 */ dDlst_base_c* field_0x118;
    /* 0x11C */ void* field_0x11c;
    /* 0x120 */ dMeterMap_c* mpMap;
    /* 0x124 */ u32 field_0x124;
    /* 0x128 */ u32 field_0x128;
    /* 0x12C */ int field_0x12c;
    /* 0x130 */ f32 field_0x130;
    /* 0x134 */ f32 field_0x134[2];
    /* 0x13C */ f32 field_0x13c[2];
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
    /* 0x1B0 */ u16 mRupeeNum;
    /* 0x1B2 */ u16 mKeyNum;
    /* 0x1B4 */ u16 field_0x1b4;
    /* 0x1B6 */ u16 mSubContentsStringType;
    /* 0x1B8 */ u16 field_0x1b8[5];
    /* 0x1C2 */ u8 mLightDropNum;
    /* 0x1C3 */ u8 mNeedLightDropNum;
    /* 0x1C4 */ u8 field_0x1c4;
    /* 0x1C5 */ u8 field_0x1c5;
    /* 0x1C6 */ u8 field_0x1c6;
    /* 0x1C7 */ u8 field_0x1c7;
    /* 0x1C8 */ u8 field_0x1c8;
    /* 0x1C9 */ u8 field_0x1c9;
    /* 0x1CA */ u8 field_0x1ca;
    /* 0x1CB */ u8 field_0x1cb;
    /* 0x1CC */ u8 field_0x1cc;
    /* 0x1CD */ u8 field_0x1cd;
    /* 0x1CE */ u8 field_0x1ce;
    /* 0x1CF */ u8 field_0x1cf;
    /* 0x1D0 */ u8 field_0x1d0;
    /* 0x1D1 */ u8 field_0x1d1;
    /* 0x1D2 */ u8 field_0x1d2[4];
    /* 0x1D6 */ u8 field_0x1d6[2];
    /* 0x1D8 */ u8 field_0x1d8[2];
    /* 0x1DA */ u8 mArrowNum;
    /* 0x1DB */ u8 mPachinkoNum;
    /* 0x1DC */ u8 field_0x1dc;
    /* 0x1DD */ u8 field_0x1dd;
    /* 0x1DE */ u8 field_0x1de;
    /* 0x1DF */ u8 field_0x1df;
    /* 0x1E0 */ u8 field_0x1e0;
    /* 0x1E1 */ u8 field_0x1e1;
    /* 0x1E2 */ u8 field_0x1e2;
    /* 0x1E3 */ u8 field_0x1e3;
    /* 0x1E4 */ u8 field_0x1e4;
    /* 0x1E5 */ u8 mSubContents;
    /* 0x1E6 */ u8 field_0x1e6;
    /* 0x1E7 */ u8 field_0x1e7;
    /* 0x1E8 */ u8 field_0x1e8;
    /* 0x1E9 */ u8 field_0x1e9;
    /* 0x1EA */ u8 field_0x1ea;
    /* 0x1EB */ u8 field_0x1eb;
    /* 0x1EC */ u8 field_0x1ec;
    /* 0x1ED */ u8 field_0x1ed;
    /* 0x1EE */ u8 field_0x1ee;
    /* 0x1EF */ u8 mBottleNum[4];
    /* 0x1F3 */ u8 mBombNum[3];
    /* 0x1F6 */ u8 mBombMax[3];
    /* 0x1F9 */ u8 mItemMaxNum[4];
    /* 0x1FD */ u8 field_0x1fd;
    /* 0x1FE */ u8 field_0x1fe;
    /* 0x1FF */ u8 field_0x1ff;
    /* 0x200 */ u8 field_0x200;
    /* 0x201 */ u8 field_0x201;
};

typedef int (*dMeter2_Method)(dMeter2_c*);

#endif /* D_METER_D_METER2_H */
