#ifndef D_MENU_D_MENU_DMAP_H
#define D_MENU_D_MENU_DMAP_H

#include "d/d_select_cursor.h"
#include "d/d_msg_flow.h"
#include "d/d_menu_map_common.h"
#include "d/d_map_path_dmap.h"
#include "dolphin/types.h"

class CPaneMgr;
struct CSTControl;
class J2DOrthoGraph;
class J2DPicture;
class J2DScreen;
class JKRArchive;
class JKRExpHeap;
class STControl;
class mDoDvdThd_mountArchive_c;
class dMsgString_c;
class dMeterHaihai_c;
class dMenu_ItemExplain_c;
class J2DPictureEx;
struct dMenu_DmapMapCtrl_c;

class renderingDmap_c : public renderingPlusDoor_c {
public:
    /* 801C0380 */ virtual ~renderingDmap_c() {}

    /* 801C0C48 */ virtual const GXColor* getColor(int);
    /* 801C0C10 */ virtual int getLineWidth(int);
    /* 801C25E4 */ virtual void beforeDrawPath();
    /* 801C0CB8 */ virtual void afterDrawPath();
    /* 801C084C */ virtual bool hasMap() const;
    /* 801C2614 */ virtual bool isRendAllRoom() const;
    /* 801C261C */ virtual bool isRendDoor() const;
    /* 801C2624 */ virtual bool isCheckFloor() const;
    /* 801C086C */ virtual bool isDrawIconSingle2(dTres_c::data_s const*, bool, bool, int) const;
    /* 801C262C */ virtual bool isRendRestart() const;
    /* 801C2634 */ virtual bool isRendCursor() const;
    /* 801C263C */ virtual bool isRendIcon() const;
    /* 801C0B40 */ virtual f32 getPlayerCursorSize();
    /* 801C25E8 */ virtual f32 getRestartCursorSize();

    /* 801C0B48 */ int getLineWidthZoomBig(int);
    /* 801C0BAC */ int getLineWidthZoomSmall(int);

    void entry(f32 param_0, f32 param_1, f32 param_2, s8 param_3, s8 param_4, f32 param_5) {
        field_0x34 = param_5;
        renderingDAmap_c::entry(param_0, param_1, param_2, param_3, param_4);
    }

    /* 0x34 */ f32 field_0x34;
};

class dMenu_DmapBg_c : public dDlst_base_c, public dMenuMapCommon_c {
public:
    /* 801B7F20 */ dMenu_DmapBg_c(JKRExpHeap*, STControl*);
    /* 801B8110 */ void mapScreenInit();
    /* 801B884C */ void mapScreenAnime();
    /* 801B88F4 */ void mapIconScaleSet(u8);
    /* 801B893C */ void iconScaleAnmInit(f32, f32, u8);
    /* 801B8954 */ bool iconScaleAnm();
    /* 801B8A0C */ void buttonIconScreenInit();
    /* 801B8DE4 */ void setAButtonString(u32);
    /* 801B8EBC */ void setBButtonString(u32);
    /* 801B8F94 */ void setCButtonString(u32);
    /* 801B90BC */ void setJButtonString(u32);
    /* 801B90E0 */ void createExplain();
    /* 801B9164 */ void deleteExplain();
    /* 801B91DC */ void baseScreenInit();
    /* 801B944C */ void setFloorMessage();
    /* 801BA0B4 */ bool dpdMove(s8, s8, s8, u8*, u8);
    /* 801BA0BC */ ~dMenu_DmapBg_c();
    /* 801BA60C */ void setAllAlphaRate(f32, bool);
    /* 801BA700 */ void setGoldAnimation(bool);
    /* 801BA7F0 */ void setGoldFrameAlphaRate(f32);
    /* 801BA974 */ void addGoldFrameAlphaRate();
    /* 801BAA4C */ void decGoldFrameAlphaRate();
    /* 801BAB10 */ void draw();
    /* 801BB334 */ void update();
    /* 801BB464 */ void calcCursor();
    /* 801BB468 */ void drawCursor();

    void setDPDFloorSelCurPos(s8 i_pos) { field_0xdd6 = i_pos; }

    f32 getMapWidth() { return mMapWidth; }
    f32 getMapHeight() { return mMapHeight; }
    J2DPicture* getMapPane() { return mMapPane; }
    dMenu_ItemExplain_c* getItemExplainPtr() { return mpItemExplain; }

    void setAllTrans(f32 param_0, f32 param_1) {
        field_0xd94 = param_0;
        field_0xd98 = param_1;
    }

    /* 0xC98 */ JKRExpHeap* mpHeap;
    /* 0xC9C */ JKRExpHeap* mpTalkHeap;
    /* 0xCA0 */ STControl* mpStick;
    /* 0xCA4 */ J2DScreen* mBaseScreen;
    /* 0xCA8 */ J2DScreen* mMapScreen[2];
    /* 0xCB0 */ int field_0xcb0;
    /* 0xCB4 */ J2DScreen* mButtonScreen;
    /* 0xCB8 */ J2DScreen* mDecorateScreen;
    /* 0xCBC */ J2DScreen* mFloorScreen;
    /* 0xCC0 */ dSelect_cursor_c* mpDrawCursor;
    /* 0xCC4 */ J2DPicture* mMapPane;
    /* 0xCC8 */ dMsgString_c* mString;
    /* 0xCCC */ CPaneMgrAlphaMorf* mpBaseRoot;
    /* 0xCD0 */ CPaneMgrAlphaMorf* mpMapRoot[2];
    /* 0xCD8 */ CPaneMgrAlphaMorf* mpButtonRoot;
    /* 0xCDC */ CPaneMgrAlphaMorf* mpDecorateRoot;
    /* 0xCE0 */ CPaneMgrAlphaMorf* mpFloorRoot;
    /* 0xCE4 */ CPaneMgrAlpha* mpBlack;
    /* 0xCE8 */ CPaneMgrAlpha* mpCButton;
    /* 0xCEC */ CPaneMgrAlpha* mpJButton;
    /* 0xCF0 */ int field_0xcf0;
    /* 0xCF4 */ CPaneMgr* field_0xcf4;
    /* 0xCF8 */ CPaneMgr* field_0xcf8;
    /* 0xCFC */ u8 field_0xcfc[0xd00 - 0xcfc];
    /* 0xD00 */ CPaneMgr* mpMapSpace[2];
    /* 0xD08 */ CPaneMgr* mpButtonAB[2];
    /* 0xD10 */ CPaneMgr* mpButtonText[2];
    /* 0xD18 */ dMenu_ItemExplain_c* mpItemExplain;
    /* 0xD1C */ mDoDvdThd_mountArchive_c* mpArchiveMount;
    /* 0xD20 */ JKRArchive* mpArchive;
    /* 0xD24 */ J2DPicture* mpBackTexture;
    /* 0xD28 */ J2DAnmTextureSRTKey* field_0xd28[1];
    /* 0xD2C */ u8 field_0xd2c[0xd30 - 0xd2c];
    /* 0xD30 */ dMeterHaihai_c* mpMeterHaihai;
    /* 0xD34 */ dMsgFlow_c mMsgFlow;
    /* 0xD80 */ f32 field_0xd80;
    /* 0xD84 */ f32 field_0xd84;
    /* 0xD88 */ f32 field_0xd88;
    /* 0xD8C */ u8 field_0xd8c;
    /* 0xD8D */ u8 field_0xd8d;
    /* 0xD8E */ u8 field_0xd8e;
    /* 0xD8F */ u8 field_0xd8f;
    /* 0xD90 */ u8 field_0xd90;
    /* 0xD91 */ u8 field_0xd91;
    /* 0xD92 */ u8 field_0xd92;
    /* 0xD93 */ u8 field_0xd93;
    /* 0xD94 */ f32 field_0xd94;
    /* 0xD98 */ f32 field_0xd98;
    /* 0xD9C */ f32 field_0xd9c;
    /* 0xDA0 */ f32 mMapWidth;
    /* 0xDA4 */ f32 mMapHeight;
    /* 0xDA8 */ f32 field_0xda8;
    /* 0xDAC */ f32 field_0xdac;
    /* 0xDB0 */ f32 field_0xdb0;
    /* 0xDB4 */ f32 field_0xdb4;
    /* 0xDB8 */ f32 field_0xdb8;
    /* 0xDBC */ f32 field_0xdbc;
    /* 0xDC0 */ f32 field_0xdc0;
    /* 0xDC4 */ f32 field_0xdc4;
    /* 0xDC8 */ f32 field_0xdc8[1];
    /* 0xDCC */ f32 field_0xdcc;
    /* 0xDD0 */ u8 field_0xdd0;
    /* 0xDD1 */ u8 field_0xdd1;
    /* 0xDD2 */ u8 field_0xdd2;
    /* 0xDD3 */ u8 field_0xdd3;
    /* 0xDD4 */ s8 field_0xdd4;
    /* 0xDD5 */ u8 field_0xdd5;
    /* 0xDD6 */ s8 field_0xdd6;
    /* 0xDD7 */ u8 field_0xdd7;
    /* 0xDD8 */ u8 field_0xdd8;
    /* 0xDD9 */ u8 field_0xdd9;
    /* 0xDDA */ u8 field_0xdda;
};

class dMenu_Dmap_c {
public:
    /* 801BB498 */ dMenu_Dmap_c(JKRExpHeap*, STControl*, CSTControl*, u8, u8);
    /* 801BB634 */ void screenInit();
    /* 801BC788 */ void getPlayerIconPos(s8, f32);
    /* 801BC848 */ void getIconPos(s8, f32);
    /* 801BD1D4 */ s8 getCurFloorPos();
    /* 801BD1E8 */ s8 getDefaultCurFloorPos();
    /* 801BD208 */ void iconMoveCalc();
    /* 801BD3B8 */ void drawFloorScreenBack(J2DScreen*, f32, f32, J2DOrthoGraph*);
    /* 801BD524 */ void drawFloorScreenTop(J2DScreen*, f32, f32, J2DOrthoGraph*);
    /* 801BD690 */ bool isMapMoveState();
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
    /* 801BEF28 */ int getNextItem(int);
    /* 801BEFCC */ void itemSelectAnmInit();
    /* 801BF030 */ void itemSelectAnm();
    /* 801BF180 */ void itemInfoOpenAnm();
    /* 801BF18C */ void itemInfoWait();
    /* 801BF278 */ void itemInfoCloseAnm();
    /* 801BF334 */ u8 getNextStatus();
    /* 801BF410 */ bool isSync();
    /* 801BF464 */ bool isKeyCheck();
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
    /* 801BFC78 */ int itemCarryCheck();
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
    u16 getCMessasgeNum() { return mCMessageNum; }
    s8 getBottomFloor() { return mBottomFloor; }
    s8 getFloorAll() { return (mFloorAll - mBottomFloor) + 1; }
    s8 getFloorPos(s8 param_0) { return param_0 - mBottomFloor; }
    u16 getCMessageNum() { return mCMessageNum; }

    static dMenu_Dmap_c* myclass;

private:
    /* 0x004 */ dMenu_DmapMapCtrl_c* mMapCtrl;
    /* 0x008 */ dMenu_DmapBg_c* mpDrawBg;
    /* 0x00C */ u8 field_0xc[0x10 - 0xC];
    /* 0x010 */ CPaneMgr* field_0x10;
    /* 0x014 */ CPaneMgr* mSelFloor[8];
    /* 0x034 */ CPaneMgr* mIconLinkPos[8];
    /* 0x054 */ CPaneMgr* mIconBossPos[8];
    /* 0x074 */ CPaneMgr* mStayIcon[2];
    /* 0x07C */ CPaneMgr* field_0x7c[3];
    /* 0x088 */ CPaneMgr* field_0x88[3];
    /* 0x094 */ CPaneMgr* field_0x94;
    /* 0x098 */ CPaneMgr* field_0x98;
    /* 0x09C */ u8 field_0x9c[0x44];
    /* 0x0E0 */ mDoDvdThd_mountArchive_c* mpDresArchiveMount;
    /* 0x0E4 */ JKRArchive* mpDresArchive;
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
    /* 0x16C */ s8 field_0x16c;
    /* 0x16D */ s8 field_0x16d;
    /* 0x16E */ s8 field_0x16e;
    /* 0x16F */ u8 field_0x16f;
    /* 0x170 */ s8 mFloorAll;
    /* 0x171 */ s8 mBottomFloor;
    /* 0x172 */ s8 field_0x172;
    /* 0x173 */ s8 field_0x173;
    /* 0x174 */ u8 field_0x174[3];
    /* 0x177 */ u8 field_0x177;
    /* 0x178 */ u8 field_0x178;
    /* 0x179 */ u8 field_0x179;
    /* 0x17A */ u8 mInOutDir;
    /* 0x17B */ u8 m_process;
    /* 0x17C */ u8 m_itemSubProcess;
    /* 0x17D */ u8 field_0x17d;
    /* 0x17E */ u8 field_0x17e;
    /* 0x17F */ u8 mZoomState;
    /* 0x180 */ u8 field_0x180;
    /* 0x181 */ u8 field_0x181;
    /* 0x182 */ u8 field_0x182;
    /* 0x183 */ u8 field_0x183;
    /* 0x184 */ bool field_0x184;
    /* 0x185 */ bool field_0x185;
};

#endif /* D_MENU_D_MENU_DMAP_H */
