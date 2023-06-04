#ifndef D_MENU_D_MENU_FISHING_H
#define D_MENU_D_MENU_FISHING_H

#include "d/d_drawlist.h"
#include "dolphin/types.h"

class CPaneMgr;
struct CSTControl;
class J2DTextBox;
struct STControl;
class dMsgString_c;
class mDoDvdThd_mountArchive_c;

class dMenu_Fishing_c : public dDlst_base_c {
public:
    /* 801C4D54 */ dMenu_Fishing_c(JKRExpHeap*, STControl*, CSTControl*);
    /* 801C504C */ void _create();
    /* 801C50B4 */ void _move();
    /* 801C514C */ void _draw();
    /* 801C5204 */ bool isSync();
    /* 801C522C */ void init();
    /* 801C52E4 */ void _open();
    /* 801C5470 */ void _close();
    /* 801C556C */ void wait_init();
    /* 801C55A8 */ void wait_move();
    /* 801C55D8 */ void screenSetBase();
    /* 801C5D3C */ void screenSetDoIcon();
    /* 801C5EB8 */ void setAButtonString(u16);
    /* 801C5F68 */ void setBButtonString(u16);
    /* 801C6018 */ int getFigure(int);
    /* 801C605C */ void setFishParam(int, u16, u8);
    /* 801C6210 */ void setHIO(bool);

    /* 801C659C */ virtual void draw();
    /* 801C4D98 */ virtual ~dMenu_Fishing_c();

    u8 getStatus() { return mStatus; }

private:
    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRArchive* field_0x8;
    /* 0x00C */ STControl* mpStick;
    /* 0x010 */ CSTControl* mpCStick;
    /* 0x014 */ mDoDvdThd_mountArchive_c* field_0x14;
    /* 0x018 */ J2DScreen* mpScreen;
    /* 0x01C */ J2DScreen* mpIconScreen;
    /* 0x020 */ J2DTextBox* mpAButtonString[5];
    /* 0x034 */ J2DTextBox* mpBButtonString[5];
    /* 0x048 */ CPaneMgr* mpParent;
    /* 0x04C */ CPaneMgr* mpFishParent[6];
    /* 0x064 */ CPaneMgr* mpFishParts[6][6];
    /* 0x0F4 */ CPaneMgr* mpFishInfoParent[2];
    /* 0x0FC */ CPaneMgr* mpButtonAB[2];
    /* 0x104 */ CPaneMgr* mpButtonText[2];
    /* 0x10C */ J2DTextBox* field_0x10c[1][6];
    /* 0x124 */ J2DTextBox* field_0x124[6];
    /* 0x13C */ J2DTextBox* field_0x13c[1][6];
    /* 0x154 */ J2DTextBox* field_0x154[6];
    /* 0x16C */ J2DTextBox* field_0x16c[1][6];
    /* 0x184 */ J2DTextBox* field_0x184[6];
    /* 0x19C */ J2DTextBox* field_0x19c[1][6];
    /* 0x1B4 */ J2DTextBox* field_0x1b4[6];
    /* 0x1CC */ J2DTextBox* field_0x1cc[6];
    /* 0x1E4 */ J2DTextBox* field_0x1e4;
    /* 0x1E8 */ J2DTextBox* field_0x1e8;
    /* 0x1EC */ J2DTextBox* field_0x1ec;
    /* 0x1F0 */ J2DPicture* mpBlackTex;
    /* 0x1F4 */ dMsgString_c* mpString;
    /* 0x1F8 */ u16 field_0x1f8;
    /* 0x1FA */ u8 mStatus;
    /* 0x1FB */ u8 field_0x1fb;
};

#endif /* D_MENU_D_MENU_FISHING_H */
