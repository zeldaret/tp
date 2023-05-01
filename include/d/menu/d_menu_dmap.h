#ifndef D_MENU_D_MENU_DMAP_H
#define D_MENU_D_MENU_DMAP_H

#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "d/d_lib.h"
#include "d/d_select_cursor.h"
#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

class JKRArchive;
class JKRExpHeap;
class dMenu_DmapMapCtrl_c;
class dMenu_DmapBg_c;
class mDoDvdThd_mountArchive_c;

class dMenu_Dmap_c {
public:
    /* 801BB498 */ dMenu_Dmap_c(JKRExpHeap*, STControl*, CSTControl*, u8, u8);
    /* 801BB634 */ void screenInit();
    /* 801BC788 */ void getPlayerIconPos(s8, f32);
    /* 801BC848 */ void getIconPos(s8, f32);
    /* 801BD1D4 */ void getCurFloorPos();
    /* 801BD1E8 */ void getDefaultCurFloorPos();
    /* 801BD208 */ void iconMoveCalc();
    /* 801BD3B8 */ void drawFloorScreenBack(J2DScreen*, f32, f32, J2DOrthoGraph*);
    /* 801BD524 */ void drawFloorScreenTop(J2DScreen*, f32, f32, J2DOrthoGraph*);
    /* 801BD690 */ void isMapMoveState();
    /* 801BD6C4 */ void floorChangeMode();
    /* 801BD7C0 */ void _create();
    /* 801BDDA4 */ void _move();
    /* 801BDEF8 */ void setMapTexture();
    /* 801BDF48 */ void mapBgAnime();
    /* 801BDF6C */ void mapControl();
    /* 801BE328 */ bool isOpen();
    /* 801BE670 */ bool isClose();
    /* 801BE7E0 */ void _draw();
    /* 801BEAFC */ void itemInfo_init_proc();
    /* 801BEB0C */ void itemInfo_proc();
    /* 801BEB44 */ void itemSelect();
    /* 801BEF28 */ void getNextItem(int);
    /* 801BEFCC */ void itemSelectAnmInit();
    /* 801BF030 */ void itemSelectAnm();
    /* 801BF180 */ void itemInfoOpenAnm();
    /* 801BF18C */ void itemInfoWait();
    /* 801BF278 */ void itemInfoCloseAnm();
    /* 801BF334 */ u8 getNextStatus();
    /* 801BF410 */ bool isSync();
    /* 801BF464 */ void isKeyCheck();
    /* 801BF4A4 */ void infoModeChange_init_proc();
    /* 801BF528 */ void infoModeChange_proc();
    /* 801BF688 */ void mapModeChange_init_proc();
    /* 801BF70C */ void mapModeChange_proc();
    /* 801BF8A0 */ void lv5_talk_init_proc();
    /* 801BF8F8 */ void lv5_talk_proc();
    /* 801BF9D4 */ void mapMode_init_proc();
    /* 801BF9E0 */ void mapMode_proc();
    /* 801BFA84 */ void floorSelect_init_proc();
    /* 801BFA88 */ void floorSelect_proc();
    /* 801BFC78 */ void itemCarryCheck();
    /* 801BFCAC */ void floorChange_init_proc();
    /* 801BFD5C */ void floorChange_proc();
    /* 801BFF84 */ void zoomWait_init_proc();
    /* 801BFF88 */ void zoomWait_proc();
    /* 801C008C */ void zoomIn_init_proc();
    /* 801C01A0 */ void zoomIn_proc();
    /* 801C023C */ void zoomOut_init_proc();
    /* 801C02F0 */ void zoomOut_proc();

    /* 801BCDF4 */ virtual ~dMenu_Dmap_c();

    void setInOutDir(u8 dir) { mInOutDir = dir; }
    u8 getZoomState() { return mZoomState; }

    static u8 myclass[4 + 4 /* padding */];

private:
    /* 0x004 */ dMenu_DmapMapCtrl_c* mMapCtrl;
    /* 0x008 */ dMenu_DmapBg_c* mpDrawBg[2];
    /* 0x010 */ CPaneMgr* field_0x10;
    /* 0x014 */ CPaneMgr* mSelFloor[8];
    /* 0x034 */ CPaneMgr* mIconLinkPos[8];
    /* 0x054 */ CPaneMgr* mIconBossPos[8];
    /* 0x074 */ CPaneMgr* mStayIcon[2];
    /* 0x07C */ CPaneMgr* field_0x7c;
    /* 0x080 */ CPaneMgr* field_0x80;
    /* 0x084 */ CPaneMgr* field_0x84;
    /* 0x088 */ CPaneMgr* field_0x88[3];
    /* 0x094 */ CPaneMgr* field_0x94;
    /* 0x098 */ CPaneMgr* field_0x98;
    /* 0x09C */ u8 field_0x9c[0x44];
    /* 0x0E0 */ mDoDvdThd_mountArchive_c* field_0xe0;
    /* 0x0E4 */ JKRArchive* field_0xe4;
    /* 0x0E8 */ JKRExpHeap* field_0xe8;
    /* 0x0EC */ JKRExpHeap* mDmapHeap;
    /* 0x0F0 */ STControl* mSelStick;
    /* 0x0F4 */ STControl* mpStick;
    /* 0x0F8 */ CSTControl* mpCStick;
    /* 0x0FC */ u8* mItemTexBuf;
    /* 0x100 */ void* mpBinData;
    /* 0x104 */ f32 field_0x104;
    /* 0x108 */ f32 field_0x108;
    /* 0x10C */ f32 field_0x10c;
    /* 0x110 */ f32 field_0x110;
    /* 0x114 */ f32 field_0x114[8];
    /* 0x134 */ f32 field_0x134;
    /* 0x138 */ f32 field_0x138;
    /* 0x13C */ f32 field_0x13c;
    /* 0x140 */ f32 field_0x140;
    /* 0x144 */ f32 field_0x144;
    /* 0x148 */ f32 field_0x148;
    /* 0x14C */ Vec field_0x14c[2];
    /* 0x164 */ s16 field_0x164;
    /* 0x166 */ u16 mCMessageNum;
    /* 0x168 */ u16 mJMessageNum;
    /* 0x16A */ u16 field_0x16a;
    /* 0x16C */ u8 field_0x16c;
    /* 0x16D */ u8 field_0x16d;
    /* 0x16E */ u8 field_0x16e;
    /* 0x16F */ u8 field_0x16f;
    /* 0x170 */ u8 field_0x170;
    /* 0x171 */ u8 mBottomFloor;
    /* 0x172 */ u8 field_0x172;
    /* 0x173 */ u8 field_0x173;
    /* 0x174 */ u8 field_0x174[3];
    /* 0x177 */ u8 field_0x177;
    /* 0x178 */ u8 field_0x178;
    /* 0x179 */ u8 field_0x179;
    /* 0x17A */ u8 mInOutDir;
    /* 0x17B */ u8 field_0x17b;
    /* 0x17C */ u8 field_0x17c;
    /* 0x17D */ u8 field_0x17d;
    /* 0x17E */ u8 field_0x17e;
    /* 0x17F */ u8 mZoomState;
    /* 0x180 */ u8 field_0x180;
    /* 0x181 */ u8 field_0x181;
    /* 0x182 */ u8 field_0x182;
    /* 0x183 */ u8 field_0x183;
    /* 0x184 */ u8 field_0x184;
    /* 0x185 */ u8 field_0x185;
};

#endif /* D_MENU_D_MENU_DMAP_H */
