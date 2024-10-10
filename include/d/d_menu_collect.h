#ifndef D_MENU_D_MENU_COLLECT_H
#define D_MENU_D_MENU_COLLECT_H

#include "d/d_drawlist.h"
#include "d/d_kankyo.h"

class CPaneMgr;
struct CSTControl;
class STControl;
class dMsgString_c;
class dMenu_save_c;
class dMenu_Option_c;
class dMenu_Letter_c;
class dMenu_Fishing_c;
class dMenu_Skill_c;
class dMenu_Insect_c;
class dSelect_cursor_c;

class dMenu_Collect2D_c;
class dMenu_Collect2DTop_c : public dDlst_base_c {
public:
    dMenu_Collect2DTop_c(dMenu_Collect2D_c* param_0) { mpCollect2D = param_0; }
    /* 801B77A4 */ virtual void draw();
    /* 801B7EB8 */ virtual ~dMenu_Collect2DTop_c();

    /* 0x4 */ dMenu_Collect2D_c* mpCollect2D;
};

class dMenu_Collect2D_c : public dDlst_base_c {
public:
    /* 801AFD48 */ dMenu_Collect2D_c(JKRExpHeap*, STControl*, CSTControl*);
    /* 801AFEA4 */ void _create();
    /* 801B0100 */ void _delete();
    /* 801B0570 */ void initialize();
    /* 801B05A8 */ bool isFishIconVisible();
    /* 801B061C */ bool isSkillIconVisible();
    /* 801B071C */ bool isInsectIconVisible();
    /* 801B074C */ void screenSet();
    /* 801B1C3C */ void animationSet();
    /* 801B1CE0 */ void btkAnimeLoop0(J2DAnmTextureSRTKey*);
    /* 801B1EDC */ void setBackAlpha();
    /* 801B1FAC */ void cursorMove();
    /* 801B27EC */ void cursorPosSet();
    /* 801B2A74 */ void changeSword();
    /* 801B2D00 */ void changeShield();
    /* 801B2EE4 */ void changeClothe();
    /* 801B30C8 */ void setArrowMaxNum(u8);
    /* 801B3340 */ void setWalletMaxNum(u16);
    /* 801B3524 */ void setSmellType();
    /* 801B3640 */ void setHeartPiece();
    /* 801B370C */ void setPohMaxNum(u8);
    /* 801B39D0 */ void setEquipItemFrameColorSword(int);
    /* 801B3CF4 */ void setEquipItemFrameColorShield(int);
    /* 801B3FDC */ void setEquipItemFrameColorClothes(int);
    /* 801B42D8 */ void setHIO(bool);
    /* 801B46FC */ u64 getItemTag(int, int, bool);
    /* 801B473C */ void wait_init();
    /* 801B48D0 */ void wait_proc();
    /* 801B4E14 */ void save_open_init();
    /* 801B4EC0 */ void save_open_proc();
    /* 801B4F30 */ void save_move_init();
    /* 801B4F6C */ void save_move_proc();
    /* 801B4FDC */ void save_close_init();
    /* 801B5018 */ void save_close_proc();
    /* 801B5094 */ void option_open_init();
    /* 801B513C */ void option_open_proc();
    /* 801B51AC */ void option_move_init();
    /* 801B51E8 */ void option_move_proc();
    /* 801B5258 */ void option_close_init();
    /* 801B5294 */ void option_close_proc();
    /* 801B5310 */ void letter_open_init();
    /* 801B53AC */ void letter_open_proc();
    /* 801B541C */ void letter_move_init();
    /* 801B5458 */ void letter_move_proc();
    /* 801B54C8 */ void letter_close_init();
    /* 801B5504 */ void letter_close_proc();
    /* 801B5580 */ void fishing_open_init();
    /* 801B561C */ void fishing_open_proc();
    /* 801B568C */ void fishing_move_init();
    /* 801B56C8 */ void fishing_move_proc();
    /* 801B5738 */ void fishing_close_init();
    /* 801B5774 */ void fishing_close_proc();
    /* 801B57F0 */ void skill_open_init();
    /* 801B588C */ void skill_open_proc();
    /* 801B58FC */ void skill_move_init();
    /* 801B5938 */ void skill_move_proc();
    /* 801B59A8 */ void skill_close_init();
    /* 801B59E4 */ void skill_close_proc();
    /* 801B5A60 */ void insect_open_init();
    /* 801B5B00 */ void insect_open_proc();
    /* 801B5B70 */ void insect_move_init();
    /* 801B5BAC */ void insect_move_proc();
    /* 801B5C1C */ void insect_close_init();
    /* 801B5C58 */ void insect_close_proc();
    /* 801B5CD4 */ void _move();
    /* 801B5D70 */ void _draw();
    /* 801B5F48 */ void drawTop();
    /* 801B5F84 */ bool isKeyCheck();
    /* 801B5FAC */ bool isOutCheck();
    /* 801B5FB4 */ void setAButtonString(u16);
    /* 801B60B8 */ void setBButtonString(u16);
    /* 801B61BC */ void setItemNameString(u8, u8);
    /* 801B6344 */ void setItemNameStringNull();

    /* 801B7F00 */ virtual void draw();
    /* 801AFE34 */ virtual ~dMenu_Collect2D_c();

    u8 getCursorX() { return mCursorX; }
    u8 getCursorY() { return mCursorY; }
    CPaneMgr* getpMask() { return mpMaskPm; }
    CPaneMgr* getpLink() { return mpLinkPm; }
    J2DScreen* getIconScreen() { return mpScreenIcon; }
    dMenu_Insect_c* getInsectScreen() { return mpInsectScrn; }
    dMenu_Skill_c* getSkillScreen() { return mpSkillScrn; }
    dMenu_Fishing_c* getFishingScreen() { return mpFishingScrn; }
    dMenu_Letter_c* getLetterScreen() { return mpLetterScrn; }
    dMenu_Option_c* getOptionScreen() { return mpOptionScrn; }
    dMenu_save_c* getSaveScreen() { return mpSaveScrn; }
    J2DPicture* getBlackTex() { return mpBlackTex; }
    u8 getSubWindowOpenCheck() { return mSubWindowOpenCheck; }

private:
    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRExpHeap* mpSubHeap;
    /* 0x00C */ void* field_0xc;
    /* 0x010 */ STControl* mpStick;
    /* 0x014 */ CSTControl* mpCStick;
    /* 0x018 */ J2DScreen* mpScreen;
    /* 0x01C */ J2DScreen* mpScreenIcon;
    /* 0x020 */ dSelect_cursor_c* mpDrawCursor;
    /* 0x024 */ dMsgString_c* mpString;
    /* 0x028 */ u8 field_0x28[4];
    /* 0x02C */ J2DAnmTextureSRTKey* mpAnmKey;
    /* 0x030 */ u8 field_0x30[4];
    /* 0x034 */ f32 field_0x34;
    /* 0x038 */ f32 mFrame;
    /* 0x03C */ f32 field_0x3c;
    /* 0x040 */ u32 mIsWolf;
    /* 0x044 */ f32 field_0x44[2];
    /* 0x04C */ f32 field_0x4c[2];
    /* 0x054 */ f32 mBlueSmokePosX;
    /* 0x058 */ f32 mBlueSmokePosY;
    /* 0x05C */ f32 mBlueSmokeScale;
    /* 0x060 */ f32 mBlueSmokeAlpha;
    /* 0x064 */ f32 mHeartVesselPosX;
    /* 0x068 */ f32 mHeartVesselPosY;
    /* 0x06C */ f32 mHeartVesselScale;
    /* 0x070 */ f32 mHeartPiecePosX;
    /* 0x074 */ f32 mHeartPiecePosY;
    /* 0x078 */ f32 mHeartPieceScale;
    /* 0x07C */ cXyz mLinkGlobalCenterPos;
    /* 0x088 */ dMenu_Collect2DTop_c* mpDraw2DTop;
    /* 0x08C */ J2DPicture* mpBlackTex;
    /* 0x090 */ dMenu_save_c* mpSaveScrn;
    /* 0x094 */ dMenu_Option_c* mpOptionScrn;
    /* 0x098 */ dMenu_Letter_c* mpLetterScrn;
    /* 0x09C */ dMenu_Fishing_c* mpFishingScrn;
    /* 0x0A0 */ dMenu_Skill_c* mpSkillScrn;
    /* 0x0A4 */ dMenu_Insect_c* mpInsectScrn;
    /* 0x0A8 */ CPaneMgr* mpLinkPm;
    /* 0x0AC */ CPaneMgr* mpMaskPm;
    /* 0x0B0 */ CPaneMgr* mpSelPm[7][6];
    /* 0x158 */ u8 field_0x158[0x8];
    /* 0x160 */ CPaneMgr* mpModelBg;
    /* 0x164 */ CPaneMgr* mpHeartParent;
    /* 0x168 */ CPaneMgr* mpHeartPiece;
    /* 0x16C */ CPaneMgr* mpButtonAB[2];
    /* 0x174 */ CPaneMgr* mpButtonText[2];
    /* 0x17C */ u16 mCurrentAString;
    /* 0x17E */ u16 mCurrentBString;
    /* 0x180 */ u16 field_0x180;
    /* 0x182 */ u16 mItemNameString;
    /* 0x184 */ u16 field_0x184[7][6];
    /* 0x1D8 */ u16 field_0x1d8[7][6];
    /* 0x22C */ u8 mProcess;
    /* 0x22D */ u8 field_0x22d[7][6];
    /* 0x257 */ u8 mCursorX;
    /* 0x258 */ u8 mCursorY;
    /* 0x259 */ u8 field_0x259;
    /* 0x25A */ u8 field_0x25a;
    /* 0x25B */ u8 mEquippedSword;
    /* 0x25C */ u8 mEquippedShield;
    /* 0x25D */ u8 mEquippedClothes;
    /* 0x25E */ u8 mSubWindowOpenCheck;
    /* 0x25F */ u8 field_0x25f;
    /* 0x260 */ u8 field_0x260;
    /* 0x261 */ u8 field_0x261;
};

class dMenu_Collect3D_c {
public:
    /* 801B6454 */ dMenu_Collect3D_c(JKRExpHeap*, dMenu_Collect2D_c*, CSTControl*);
    /* 801B65A8 */ void _create();
    /* 801B6694 */ void _delete();
    /* 801B66C8 */ void _move(u8, u8);
    /* 801B696C */ void draw();
    /* 801B6A30 */ void setJ3D(const char*, const char*, const char*);
    /* 801B6D30 */ void set_mtx();
    /* 801B6E70 */ void animePlay();
    /* 801B6FB0 */ void animeEntry();
    /* 801B7014 */ void createMaskModel();
    /* 801B71C4 */ void createMirrorModel();
    /* 801B7434 */ static u8 getCrystalNum();
    /* 801B749C */ static u8 getMirrorNum();
    /* 801B7504 */ static u8 getMaskMdlVisible();
    /* 801B75E8 */ static void setupItem3D(Mtx);
    /* 801B7660 */ static void toItem3Dpos(f32, f32, f32, cXyz*);
    /* 801B774C */ static void calcViewMtx(Mtx);

    /* 801B6538 */ virtual ~dMenu_Collect3D_c();

    static f32 mViewOffsetY;

private:
    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRSolidHeap* mpSolidHeap;
    /* 0x00C */ dMenu_Collect2D_c* mpCollect2D;
    /* 0x010 */ STControl* mpStick;
    /* 0x014 */ CSTControl* mpCStick;
    /* 0x018 */ J3DModel* mpModel;
    /* 0x01C */ mDoExt_bckAnm* mpBckAnm;
    /* 0x020 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x024 */ u32 mIsWolf;
    /* 0x028 */ dKy_tevstr_c mTevStr;
    /* 0x3B0 */ cXyz mMaskMirrorPos;
    /* 0x3BC */ csXyz mMaskMirrorAngle;
    /* 0x3C4 */ f32 mMaskMirrorOffsetX;
    /* 0x3C8 */ f32 mMaskMirrorOffsetY;
    /* 0x3CC */ f32 mMaskMirrorScale;
    /* 0x3D0 */ f32 mMaskMirrorAnmFrameBrk;
    /* 0x3D4 */ f32 mMaskMirrorAnmFrameBck;
    /* 0x3D8 */ s16 mLinkAngle;
};

class dMenu_Collect_c {
public:
    /* 801B78C0 */ dMenu_Collect_c(JKRExpHeap*, STControl*, CSTControl*);
    /* 801B7A0C */ void _create();
    /* 801B7A44 */ void _delete();
    /* 801B7A7C */ void _move();
    /* 801B7AC0 */ void draw();

    /* 801B795C */ virtual ~dMenu_Collect_c();

    u8 getSubWindowOpenCheck() { return mpCollect2D->getSubWindowOpenCheck(); }
    bool isKeyCheck() { return mpCollect2D->isKeyCheck(); }
    bool isOutCheck() { return mpCollect2D->isOutCheck(); }

private:
    /* 0x4 */ dMenu_Collect2D_c* mpCollect2D;
    /* 0x8 */ dMenu_Collect3D_c* mpCollect3D;
};

#endif /* D_MENU_D_MENU_COLLECT_H */
