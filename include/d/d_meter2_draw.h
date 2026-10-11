#ifndef D_METER_D_METER2_DRAW_H
#define D_METER_D_METER2_DRAW_H

#include "d/d_drawlist.h"

class CPaneMgr;
class CPaneMgrAlpha;
class J2DAnmColorKey;
class J2DAnmTransformKey;
class JKRExpHeap;
class JKRHeap;

class dKantera_icon_c;

class dMeter2Draw_c : dDlst_base_c {
public:
    enum {
        SELECT_X_e,
        SELECT_Y_e,
        SELECT_Z_e,
#if PLATFORM_WII
        SELECT_C_e,
#endif
        SELECT_MAX_e = 2,
    };

    struct item_params {
        /* 0x00 */ f32 pos_x;
        /* 0x04 */ f32 pos_y;
        /* 0x08 */ f32 scale;
        /* 0x0C */ f32 rotation;
        /* 0x10 */ f32 num_pos_x;
        /* 0x14 */ f32 num_pos_y;
        /* 0x18 */ f32 num_scale;
    };

    dMeter2Draw_c(JKRExpHeap*);
    void init();
    void exec(u32);
    void draw();
    void initLife();
    void initMagic();
    void initLightDrop();
    void initRupeeKey();
    void initButton();
    void initButtonCross();
#if PLATFORM_WII
    void initTouchSubMenu();
#endif
    void playPikariBckAnimation(f32);
    void setPikariBpkAnimation(J2DAnmColor*);
    void playPikariBpkAnimation(f32);
    void playOxygenBpkAnimation(J2DAnmColor*);
    void drawPikari(f32, f32, f32*, f32, JUtility::TColor, JUtility::TColor,
                                   JUtility::TColor, JUtility::TColor, f32, u8);
    void drawPikari(CPaneMgr*, f32*, f32, JUtility::TColor, JUtility::TColor,
                                   JUtility::TColor, JUtility::TColor, f32, u8);
    void drawPikariHakusha(f32, f32, f32, f32, JUtility::TColor, JUtility::TColor,
                                          JUtility::TColor, JUtility::TColor);
    void changeTextureLife(int, bool, u8);
    void drawLife(s16, s16, f32, f32);
    void setAlphaLifeChange(bool);
    void setAlphaLifeAnimeMin();
    void setAlphaLifeAnimeMax();
    void drawKanteraScreen(u8);
    void drawMagic(s16, s16, f32, f32);
    void setAlphaMagicChange(bool);
    void drawKantera(s32, s32, f32, f32);
    void setAlphaKanteraChange(bool);
    void setAlphaKanteraAnimeMin();
    void setAlphaKanteraAnimeMax();
    void drawOxygen(s32, s32, f32, f32);
    void setAlphaOxygenChange(bool);
    void setAlphaOxygenAnimeMin();
    void setAlphaOxygenAnimeMax();
    void drawLightDrop(u8, u8, f32, f32, f32, f32, u8);
    void setAlphaLightDropChange(bool);
    f32 getNowLightDropRateCalc();
    void setAlphaLightDropAnimeMin();
    void setAlphaLightDropAnimeMax();
    void drawRupee(s16);
    void setAlphaRupeeChange(bool);
    void setAlphaRupeeAnimeMin();
    void setAlphaRupeeAnimeMax();
    void drawKey(s16);
    void setAlphaKeyChange(bool);
    void setAlphaKeyAnimeMin();
    void setAlphaKeyAnimeMax();
    void drawButtonA(u8, f32, f32, f32, f32, f32, bool, bool);
    void drawButtonB(u8, bool, f32, f32, f32, f32, f32, bool);
#if PLATFORM_WII
    void drawTouchText(u8, f32, f32, f32, bool);
#endif
    void drawButtonR(u8, u8, bool, bool);
    void drawButtonZ(u8);
    void drawButton3D(u8);
    void drawButtonC(u8, bool);
    void drawButtonS(u8);
#if PLATFORM_WII
    void drawButtonNun(u8);
    void drawButtonRemo(u8);
    void drawButtonNunZ(u8);
    void drawButtonNunC(u8);
#endif
    void drawButtonBin(u8);
    void drawButtonXY(int, u8, u8, bool, bool);
    f32 getButtonCrossParentInitTransY();
    void drawButtonCross(f32, f32);
    void setAlphaButtonCrossAnimeMin();
    void setAlphaButtonCrossAnimeMax();
    void setAlphaButtonCrossItemAnimeMin();
    void setAlphaButtonCrossItemAnimeMax();
    void setAlphaButtonCrossMapAnimeMin();
    void setAlphaButtonCrossMapAnimeMax();
#if PLATFORM_WII
    void drawTouchSubMenu(int, f32, f32, u16);
    void scaleTouchSubMenu(int, f32);
    void setAlphaTouchSubMenuAnimeMin(int);
    void setAlphaTouchSubMenuAnimeMax(int);
#endif
    void setAlphaButtonChange(bool);
    void setAlphaButtonAnimeMin();
    void setAlphaButtonAnimeMax();
    void setAlphaButtonAAnimeMin();
    void setAlphaButtonAAnimeMax();
    void setAlphaButtonBAnimeMin();
    void setAlphaButtonBAnimeMax();
#if PLATFORM_WII
    void setAlphaTriangle(u32, u32);
#endif
    void setButtonIconAAlpha(u8, u32, bool);
    void setButtonIconBAlpha(u8, u32, bool);
    void setButtonIconMidonaAlpha(u32);
    void setButtonIconAlpha(int, u8, u32, bool);
    ResTIMG* getNumberTexture(int);
    char* getActionString(u8, u8, u8*);
    void changeTextureItemB(u8);
    void changeTextureItemB2(u8);
    void changeTextureItemXY(int, u8);
    void setAlphaAnimeMin(CPaneMgrAlpha*, s16);
    void setAlphaAnimeMax(CPaneMgrAlpha*, s16);
    void setItemNum(u8, u8, u8);
    void drawItemNum(u8, f32);
    void drawKanteraMeter(u8, f32);
    bool isButtonVisible();
#if PLATFORM_WII
    void setTouchAreaAnime(bool);
#endif
    void setItemParamX(u8);
    void setItemParamY(u8);
    void setItemParamZ(u8);
    void setItemParamB(u8);
    u8 getFishingType();
    u8 getCanoeFishing();
    bool getCameraSubject();
    bool getItemSubject();
    bool getPlayerSubject();
    bool isBButtonShow(bool);
    s16 getButtonTimer();
#if PLATFORM_WII
    void moveItemInit();
    void moveItemMove();
    void moveItemDraw();
#endif

    virtual ~dMeter2Draw_c();

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
#if PLATFORM_WII
    u8 getInsideObjCheck() { return field_0x772; }
#else
    u8 getInsideObjCheck() { return field_0x772; }
#endif

private:
    /* 0x004 */ item_params mItemParams[4];
    /* 0x074 */ JKRExpHeap* heap;
    /* 0x078 */ J2DScreen* mpScreen;
#if PLATFORM_WII
    /* WII 0x07C */ J2DScreen* mpWiiScreen;
#endif
    /* 0x07C */ J2DScreen* mpKanteraScreen;
    /* 0x080 */ J2DScreen* mpPikariScreen;
#if PLATFORM_WII
    /* WII 0x088 */ J2DPicture* mpItemNumTex[4][3];
#else
    /* 0x084 */ J2DPicture* mpItemNumTex[2][3];
#endif
    /* 0x09C */ J2DPicture* field_0x9c[3];
    /* 0x0A8 */ J2DPicture* field_0xa8;
    /* 0x0AC */ dKantera_icon_c* mpKanteraMeter[4];
    /* 0x0BC */ CPaneMgr* mpParent;
    /* 0x0C0 */ CPaneMgr* mpAText[5];
    /* 0x0D4 */ CPaneMgr* mpBText[5];
#if PLATFORM_WII
    /* WII 0x104 */ J2DScreen* field_0x104_wii;
    /* WII 0x108 */ CPaneMgr* field_0x108_wii;
    /* WII 0x10C */ CPaneMgr* field_0x10c_wii[5];
    /* WII 0x120 */ CPaneMgr* field_0x120_wii[5];
    /* WII 0x134 */ CPaneMgr* field_0x134_wii[4];
#endif
    /* 0x0E8 */ CPaneMgr* mpXYText[5][3];
    /* 0x124 */ CPaneMgr* mpLifeParent;
    /* 0x128 */ CPaneMgr* mpLifeParts[20];
    /* 0x178 */ CPaneMgr* mpHeartMark[20];
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
#if PLATFORM_WII
    /* WII 0x364 */ CPaneMgr* field_0x364_wii;
#endif
    /* 0x308 */ CPaneMgr* mpButtonMidona;
    /* 0x30C */ CPaneMgr* mpButtonXY[3];
    /* 0x318 */ CPaneMgr* mpLightB;
#if PLATFORM_WII
    /* WII 0x37C */ CPaneMgr* mpLightXY[4];
#else
    /* 0x31C */ CPaneMgr* mpLightXY[3];
#endif
    /* 0x328 */ CPaneMgr* mpItemB;
#if PLATFORM_WII
    /* WII 0x390 */ CPaneMgr* mpItemXY[4];
#else
    /* 0x32C */ CPaneMgr* mpItemXY[2];
#endif
    /* 0x334 */ CPaneMgr* mpItemR;
    /* 0x338 */ CPaneMgr* mpBTextA;
    /* 0x33C */ CPaneMgr* mpBTextB;
#if PLATFORM_WII
    /* WII 0x3AC */ CPaneMgr* mpXYTextN[2];
    /* WII 0x3B4 */ CPaneMgr* mpJTextN;
    /* WII 0x3B8 */ CPaneMgr* mpFATextN;
    /* WII 0x3BC */ CPaneMgr* mpFBTextN;
    /* WII 0x3C0 */ CPaneMgr* mpFA2TextN;
    /* WII 0x3C4 */ CPaneMgr* mpItemT1N;
    /* WII 0x3C8 */ CPaneMgr* mpFJTextN;
#else
    /* 0x340 */ CPaneMgr* mpBTextXY[3];
    /* 0x34C */ CPaneMgr* mpTextA;
    /* 0x350 */ CPaneMgr* mpTextB;
#endif
    /* 0x354 */ CPaneMgr* mpTextXY[3];
    /* 0x360 */ CPaneMgr* mpTextI;
    /* 0x364 */ CPaneMgr* mpTextM;
    /* 0x368 */ CPaneMgr* mpButtonCrossParent;
#if PLATFORM_WII
    /* WII 0x3E4 */ CPaneMgr* field_0x3e4_wii;
    /* WII 0x3E8 */ CPaneMgr* field_0x3e8_wii[2];
    /* WII 0x3F0 */ CPaneMgr* mpITextN;
    /* 0x34C */ CPaneMgr* mpTextA;
    /* 0x350 */ CPaneMgr* mpTextB;
#endif
    /* 0x36C */ CPaneMgr* field_0x36c;
#if PLATFORM_WII
    /* 0x370 */ CPaneMgr* field_0x370[5];
#else
    /* 0x370 */ u8 field_0x370[0x39c - 0x370];
#endif
    /* 0x39C */ CPaneMgr* mpPikariParent;
#if PLATFORM_WII
    /* WII 0x418 */ CPaneMgr* field_0x418_wii;
    /* WII 0x41C */ CPaneMgr* field_0x41c_wii;
    /* WII 0x420 */ CPaneMgr* field_0x420_wii;
#endif
    /* 0x3A0 */ CPaneMgrAlpha* mpLifeTexture[20][2];
    /* 0x440 */ CPaneMgrAlpha* mpHeartBase[20];
#if PLATFORM_GCN
    /* 0x490 */ CPaneMgr* mpJujiI[5];
    /* 0x4A4 */ CPaneMgr* mpJujiM[5];
#else
    /* 0x490 */ CPaneMgr* mpJujiI[3];
    /* 0x4A4 */ CPaneMgr* mpJujiM[3];
#endif
    /* 0x52C */ CPaneMgrAlpha* mpUzu;
    /* 0x530 */ CPaneMgrAlpha* field_0x530_wii[5];
    /* 0x4C8 */ CPaneMgrAlpha* field_0x544_wii[5];
    /* 0x4E4 */ ResTIMG* mpItemBTex[2][2];
#if PLATFORM_WII
    /* 0x4F4 */ ResTIMG* mpItemXYTex[4][2][2];
#else
    /* 0x4F4 */ ResTIMG* mpItemXYTex[2][2][2];
#endif
    /* 0x514 */ J2DPicture* mpItemBPane;
    /* 0x518 */ J2DPicture* mpItemXYPane[3];
    /* 0x524 */ J2DPicture* field_0x524[2][2];
    /* 0x534 */ J2DAnmTransformKey* mPikariBck;
    /* 0x538 */ J2DAnmColor* mPikariBpk;
    /* 0x53C */ J2DAnmColor* mpOxygenBpk[3];
    /* 0x548 */ JUtility::TColor mPikariBlack;
    /* 0x54C */ JUtility::TColor mPikariWhite;
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
#if PLATFORM_WII
    /* WII 0x6A4 */ f32 field_0x6a4_wii;
    /* WII 0x6A8 */ f32 field_0x6a8_wii;
#endif
#if PLATFORM_WII
    /* WII 0x6AC */ f32 field_0x610[3];
#else
    /* 0x610 */ f32 field_0x610[2];
    /* 0x618 */ u8 field_0x618[0x61c - 0x618];
#endif
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
#if PLATFORM_WII
    /* WII 0x790 */ f32 field_0x790_wii;
    /* WII 0x794 */ f32 field_0x794_wii;
    /* WII 0x798 */ f32 field_0x798_wii[4];
#endif
    /* 0x6F4 */ f32 mLightDropVesselScale;
    /* 0x6F8 */ f32 field_0x6f8;
    /* 0x6FC */ f32 field_0x6fc;
    /* 0x700 */ f32 field_0x700;
    /* 0x704 */ f32 field_0x704[5];
    /* 0x718 */ f32 field_0x718;
    /* 0x71C */ f32 field_0x71c;
    /* 0x720 */ f32 mButtonZAlpha;
    /* 0x724 */ f32 field_0x724;
    /* 0x728 */ f32 field_0x728;
    /* 0x72C */ f32 field_0x72c;
    /* 0x730 */ f32 field_0x730;
    /* 0x734 */ f32 field_0x734;
    /* 0x738 */ f32 field_0x738;
    /* 0x73C */ f32 field_0x73c;
    /* 0x740 */ u16 field_0x740;
    /* 0x742 */ s16 field_0x742[3];
#if PLATFORM_WII
    /* WII 0x7FC */ u8 field_0x7fc_wii[0x7FE - 0x7FC];
    /* WII 0x7FE */ s16 field_0x7fe_wii[5];
    /* 0x808 */ s16 field_0x808_wii;
#else
    /* 0x748 */ u8 field_0x748[0x754 - 0x748];
#endif
    /* 0x754 */ s16 field_0x754;
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
#if PLATFORM_WII
    /* WII 0x819 */ u8 field_0x819_wii;
    /* WII 0x81A */ u8 field_0x81a_wii;
    /* WII 0x81B */ u8 field_0x81b_wii;
    /* WII 0x81C */ u8 field_0x81c_wii;
#endif
    /* 0x763 */ u8 field_0x763;
    /* 0x764 */ u8 field_0x764;
    /* 0x765 */ u8 field_0x765;
    /* 0x766 */ u8 field_0x766;
    /* 0x767 */ u8 field_0x767;
    /* 0x768 */ u8 field_0x768[3];
    /* 0x76B */ u8 field_0x76b;
    /* 0x76C */ u8 field_0x76c[2];
    /* 0x76E */ u8 field_0x76e;
    /* 0x76F */ u8 mButtonBItem;
    /* 0x770 */ u8 field_0x770;
    /* 0x771 */ u8 field_0x771;
    /* 0x772 */ u8 field_0x772;
    /* 0x773 */ u8 field_0x773[4];
    /* 0x777 */ u8 field_0x777;
    /* 0x778 */ f32 mParentScale;
    /* 0x77C */ f32 mParentAlpha;
    /* 0x780 */ f32 mButtonsPosX;
    /* 0x784 */ f32 mButtonsPosY;
    /* 0x788 */ f32 mButtonsScale;
    /* 0x78C */ f32 field_0x78c;
    /* 0x790 */ f32 mLifeParentAlpha;
    /* 0x794 */ f32 mLifeParentHeartAlpha;
    /* 0x798 */ f32 mHeartBaseAlpha;
    /* 0x79C */ f32 mHeartAlpha;
    /* 0x7A0 */ f32 mBigHeartAlpha;
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
    /* 0x7FC */ f32 mButtonAAlpha;
    /* 0x800 */ f32 mButtonBAlpha;
    /* 0x804 */ f32 mButtonXAlpha;
    /* 0x808 */ f32 mButtonYAlpha;
    /* 0x80C */ f32 field_0x80c;
    /* 0x810 */ f32 field_0x810;
    /* 0x814 */ f32 mItemBBaseAlpha[2];
    /* 0x81C */ f32 mButtonXItemBaseAlpha[2];
    /* 0x824 */ f32 mButtonYItemBaseAlpha[2];
    /* 0x82C */ f32 mButtonZWiiItemBaseAlpha[2];
    /* 0x834 */ f32 mButtonZGCNItemBaseAlpha;
    /* 0x838 */ f32 mButtonBaseAlpha;
    /* 0x83C */ f32 mButtonATextSpacing;
    /* 0x840 */ f32 mButtonCrossAlpha;
    /* 0x844 */ f32 mButtonCrossITEMAlpha;
    /* 0x848 */ f32 mButtonCrossMAPAlpha;
    /* 0x84C */ GXColor mButtonATextColor;
    /* 0x850 */ GXColor mButtonBTextColor;
    /* 0x854 */ GXColor field_0x854;
    /* 0x858 */ GXColor mButtonZTextColor;
    /* 0x85C */ GXColor mButtonXYTextColor;
    /* 0x860 */ u8 field_0x860[2];
};

#endif /* D_METER_D_METER2_DRAW_H */
