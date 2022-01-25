#ifndef D_MENU_D_MENU_COLLECT_H
#define D_MENU_D_MENU_COLLECT_H

#include "JSystem/J2DGraph/J2DPicture.h"
#include "d/d_lib.h"
#include "d/d_select_cursor.h"
#include "dolphin/types.h"

class dMsgString_c;
class dMenu_save_c;
class dMenu_Option_c;
class dMenu_Letter_c;
class dMenu_Fishing_c;
class dMenu_Skill_c;
class dMenu_Insect_c;

class dMenu_Collect2D_c;
class dMenu_Collect2DTop_c : public dDlst_base_c {
public:
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
    /* 801B05A8 */ void isFishIconVisible();
    /* 801B061C */ void isSkillIconVisible();
    /* 801B071C */ void isInsectIconVisible();
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
    /* 801B46FC */ void getItemTag(int, int, bool);
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

    u8 getSubWindowOpenCheck() { return mSubWindowOpenCheck; }

private:
    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRExpHeap* mpSubHeap;
    /* 0x00C */ void* field_0xc;
    /* 0x010 */ STControl* field_0x10;
    /* 0x014 */ CSTControl* field_0x14;
    /* 0x018 */ J2DScreen* mpScreen;
    /* 0x01C */ J2DScreen* mpScreenIcon;
    /* 0x020 */ dSelect_cursor_c* mpDrawCursor;
    /* 0x024 */ dMsgString_c* mpString;
    /* 0x028 */ u8 field_0x28[4];
    /* 0x02C */ J2DAnmTextureSRTKey* field_0x2c;
    /* 0x030 */ u8 field_0x30[4];
    /* 0x034 */ f32 field_0x34;
    /* 0x038 */ f32 field_0x38;
    /* 0x03C */ f32 field_0x3c;
    /* 0x040 */ s32 field_0x40;
    /* 0x044 */ f32 field_0x44[2];
    /* 0x04C */ f32 field_0x4c[2];
    /* 0x054 */ f32 field_0x54;
    /* 0x058 */ f32 field_0x58;
    /* 0x05C */ f32 field_0x5c;
    /* 0x060 */ f32 field_0x60;
    /* 0x064 */ f32 field_0x64;
    /* 0x068 */ f32 field_0x68;
    /* 0x06C */ f32 field_0x6c;
    /* 0x070 */ f32 field_0x70;
    /* 0x074 */ f32 field_0x74;
    /* 0x078 */ f32 field_0x78;
    /* 0x07C */ cXyz field_0x7c;
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
    /* 0x17C */ u16 field_0x17c;
    /* 0x17E */ u16 field_0x17e;
    /* 0x180 */ u16 field_0x180;
    /* 0x182 */ u16 field_0x182;
    /* 0x184 */ u16 field_0x184;
    /* 0x186 */ u16 field_0x186;
    /* 0x188 */ u16 field_0x188;
    /* 0x18A */ u16 field_0x18a;
    /* 0x18C */ u16 field_0x18c;
    /* 0x18E */ u16 field_0x18e;
    /* 0x190 */ u16 field_0x190;
    /* 0x192 */ u16 field_0x192;
    /* 0x194 */ u16 field_0x194;
    /* 0x196 */ u16 field_0x196;
    /* 0x198 */ u16 field_0x198;
    /* 0x19A */ u16 field_0x19a;
    /* 0x19C */ u16 field_0x19c;
    /* 0x19E */ u16 field_0x19e;
    /* 0x1A0 */ u16 field_0x1a0;
    /* 0x1A2 */ u16 field_0x1a2;
    /* 0x1A4 */ u16 field_0x1a4;
    /* 0x1A6 */ u16 field_0x1a6;
    /* 0x1A8 */ u16 field_0x1a8;
    /* 0x1AA */ u16 field_0x1aa;
    /* 0x1AC */ u16 field_0x1ac;
    /* 0x1AE */ u16 field_0x1ae;
    /* 0x1B0 */ u16 field_0x1b0;
    /* 0x1B2 */ u16 field_0x1b2;
    /* 0x1B4 */ u16 field_0x1b4;
    /* 0x1B6 */ u16 field_0x1b6;
    /* 0x1B8 */ u16 field_0x1b8;
    /* 0x1BA */ u16 field_0x1ba;
    /* 0x1BC */ u16 field_0x1bc;
    /* 0x1BE */ u16 field_0x1be;
    /* 0x1C0 */ u16 field_0x1c0;
    /* 0x1C2 */ u16 field_0x1c2;
    /* 0x1C4 */ u16 field_0x1c4;
    /* 0x1C6 */ u16 field_0x1c6;
    /* 0x1C8 */ u16 field_0x1c8;
    /* 0x1CA */ u16 field_0x1ca;
    /* 0x1CC */ u16 field_0x1cc;
    /* 0x1CE */ u16 field_0x1ce;
    /* 0x1D0 */ u16 field_0x1d0;
    /* 0x1D2 */ u16 field_0x1d2;
    /* 0x1D4 */ u16 field_0x1d4;
    /* 0x1D6 */ u16 field_0x1d6;
    /* 0x1D8 */ u16 field_0x1d8;
    /* 0x1DA */ u16 field_0x1da;
    /* 0x1DC */ u16 field_0x1dc;
    /* 0x1DE */ u16 field_0x1de;
    /* 0x1E0 */ u16 field_0x1e0;
    /* 0x1E2 */ u16 field_0x1e2;
    /* 0x1E4 */ u16 field_0x1e4;
    /* 0x1E6 */ u16 field_0x1e6;
    /* 0x1E8 */ u16 field_0x1e8;
    /* 0x1EA */ u16 field_0x1ea;
    /* 0x1EC */ u16 field_0x1ec;
    /* 0x1EE */ u16 field_0x1ee;
    /* 0x1F0 */ u16 field_0x1f0;
    /* 0x1F2 */ u16 field_0x1f2;
    /* 0x1F4 */ u16 field_0x1f4;
    /* 0x1F6 */ u16 field_0x1f6;
    /* 0x1F8 */ u16 field_0x1f8;
    /* 0x1FA */ u16 field_0x1fa;
    /* 0x1FC */ u16 field_0x1fc;
    /* 0x1FE */ u16 field_0x1fe;
    /* 0x200 */ u16 field_0x200;
    /* 0x202 */ u16 field_0x202;
    /* 0x204 */ u16 field_0x204;
    /* 0x206 */ u16 field_0x206;
    /* 0x208 */ u16 field_0x208;
    /* 0x20A */ u16 field_0x20a;
    /* 0x20C */ u16 field_0x20c;
    /* 0x20E */ u16 field_0x20e;
    /* 0x210 */ u16 field_0x210;
    /* 0x212 */ u16 field_0x212;
    /* 0x214 */ u16 field_0x214;
    /* 0x216 */ u16 field_0x216;
    /* 0x218 */ u16 field_0x218;
    /* 0x21A */ u16 field_0x21a;
    /* 0x21C */ u16 field_0x21c;
    /* 0x21E */ u16 field_0x21e;
    /* 0x220 */ u16 field_0x220;
    /* 0x222 */ u16 field_0x222;
    /* 0x224 */ u16 field_0x224;
    /* 0x226 */ u16 field_0x226;
    /* 0x228 */ u16 field_0x228;
    /* 0x22A */ u16 field_0x22a;
    /* 0x22C */ u8 field_0x22c;
    /* 0x22D */ u8 field_0x22d;
    /* 0x22E */ u8 field_0x22e;
    /* 0x22F */ u8 field_0x22f;
    /* 0x230 */ u8 field_0x230;
    /* 0x231 */ u8 field_0x231;
    /* 0x232 */ u8 field_0x232;
    /* 0x233 */ u8 field_0x233;
    /* 0x234 */ u8 field_0x234;
    /* 0x235 */ u8 field_0x235;
    /* 0x236 */ u8 field_0x236;
    /* 0x237 */ u8 field_0x237;
    /* 0x238 */ u8 field_0x238;
    /* 0x239 */ u8 field_0x239;
    /* 0x23A */ u8 field_0x23a;
    /* 0x23B */ u8 field_0x23b;
    /* 0x23C */ u8 field_0x23c;
    /* 0x23D */ u8 field_0x23d;
    /* 0x23E */ u8 field_0x23e;
    /* 0x23F */ u8 field_0x23f;
    /* 0x240 */ u8 field_0x240;
    /* 0x241 */ u8 field_0x241;
    /* 0x242 */ u8 field_0x242;
    /* 0x243 */ u8 field_0x243;
    /* 0x244 */ u8 field_0x244;
    /* 0x245 */ u8 field_0x245;
    /* 0x246 */ u8 field_0x246;
    /* 0x247 */ u8 field_0x247;
    /* 0x248 */ u8 field_0x248;
    /* 0x249 */ u8 field_0x249;
    /* 0x24A */ u8 field_0x24a;
    /* 0x24B */ u8 field_0x24b;
    /* 0x24C */ u8 field_0x24c;
    /* 0x24D */ u8 field_0x24d;
    /* 0x24E */ u8 field_0x24e;
    /* 0x24F */ u8 field_0x24f;
    /* 0x250 */ u8 field_0x250;
    /* 0x251 */ u8 field_0x251;
    /* 0x252 */ u8 field_0x252;
    /* 0x253 */ u8 field_0x253;
    /* 0x254 */ u8 field_0x254;
    /* 0x255 */ u8 field_0x255;
    /* 0x256 */ u8 field_0x256;
    /* 0x257 */ u8 mCursorX;
    /* 0x258 */ u8 mCursorY;
    /* 0x259 */ u8 field_0x259;
    /* 0x25A */ u8 field_0x25a;
    /* 0x25B */ u8 field_0x25b;
    /* 0x25C */ u8 field_0x25c;
    /* 0x25D */ u8 field_0x25d;
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
    /* 801B6A30 */ void setJ3D(char const*, char const*, char const*);
    /* 801B6D30 */ void set_mtx();
    /* 801B6E70 */ void animePlay();
    /* 801B6FB0 */ void animeEntry();
    /* 801B7014 */ void createMaskModel();
    /* 801B71C4 */ void createMirrorModel();
    /* 801B7434 */ void getCrystalNum();
    /* 801B749C */ void getMirrorNum();
    /* 801B7504 */ void getMaskMdlVisible();
    /* 801B75E8 */ static void setupItem3D(f32 (*)[4]);
    /* 801B7660 */ void toItem3Dpos(f32, f32, f32, cXyz*);
    /* 801B774C */ void calcViewMtx(f32 (*)[4]);

    /* 801B6538 */ virtual ~dMenu_Collect3D_c();

    static f32 mViewOffsetY;

private:
    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRSolidHeap* mpSolidHeap;
    /* 0x00C */ dMenu_Collect2D_c* mpCollect2D;
    /* 0x010 */ void* field_0x10;
    /* 0x014 */ CSTControl* field_0x14;
    /* 0x018 */ J3DModel* mpModel;
    /* 0x01C */ mDoExt_bckAnm* field_0x1c;
    /* 0x020 */ mDoExt_brkAnm* field_0x20;
    /* 0x024 */ u8 field_0x24[4];
    /* 0x028 */ dKy_tevstr_c field_0x28;
    /* 0x3B0 */ cXyz field_0x3b0;
    /* 0x3BC */ csXyz field_0x3bc;
    /* 0x3C4 */ f32 field_0x3c4;
    /* 0x3C8 */ f32 field_0x3c8;
    /* 0x3CC */ f32 field_0x3cc;
    /* 0x3D0 */ f32 field_0x3d0;
    /* 0x3D4 */ f32 field_0x3d4;
    /* 0x3D8 */ s16 field_0x3d8;
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
