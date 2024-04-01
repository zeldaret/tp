#ifndef D_MENU_D_MENU_FISHING_H
#define D_MENU_D_MENU_FISHING_H

#include "d/com/d_com_inf_game.h"
#include "d/d_drawlist.h"

class CPaneMgr;
struct CSTControl;
class J2DTextBox;
class STControl;
class dMsgString_c;
class mDoDvdThd_mountArchive_c;

class dMenu_Fishing_c : public dDlst_base_c {
public:
    
    enum dMenu_Fishing_Status {
        CLOSED = 0,
        READY_OPEN = 1,
        READY_MOVE = 2,
        READY_CLOSE = 3,
    };

    /* 801C4D54 */ dMenu_Fishing_c(JKRExpHeap*, STControl*, CSTControl*);
    /* 801C504C */ void _create();
    /* 801C50B4 */ void _move();
    /* 801C514C */ void _draw();
    /* 801C5204 */ bool isSync();
    /* 801C522C */ void init();
    /* 801C52E4 */ int _open();
    /* 801C5470 */ int _close();
    /* 801C556C */ void wait_init();
    /* 801C55A8 */ void wait_move();
    /* 801C55D8 */ void screenSetBase();
    /* 801C5D3C */ void screenSetDoIcon();
    /* 801C5EB8 */ void setAButtonString(u16);
    /* 801C5F68 */ void setBButtonString(u16);
    /* 801C6018 */ u8 getFigure(int);
    /* 801C605C */ void setFishParam(int, u16, u8);
    /* 801C6210 */ void setHIO(bool);

    /* 801C659C */ virtual void draw() { _draw(); }
    /* 801C4D98 */ virtual ~dMenu_Fishing_c();

    u8 getStatus() { return mStatus; }

private:
    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRArchive* mpArchive;
    /* 0x00C */ STControl* mpStick;
    /* 0x010 */ CSTControl* mpCStick;
    /* 0x014 */ mDoDvdThd_mountArchive_c* mpMount;
    /* 0x018 */ J2DScreen* mpScreen;
    /* 0x01C */ J2DScreen* mpIconScreen;
    /* 0x020 */ J2DTextBox* mpAButtonString[5]; // Displays string based on stringID on A button Always empty
    /* 0x034 */ J2DTextBox* mpBButtonString[5]; // Displays string based on stringID on B button. Only "Back" here
    /* 0x048 */ CPaneMgr* mpParent;
    /* 0x04C */ CPaneMgr* mpFishParent[MAX_FINDABLE_FISHES]; // Displays fishes based on index and if collected once
    /* 0x064 */ CPaneMgr* mpFishParts[6][6];
    /* 0x0F4 */ CPaneMgr* mpFishInfoParent[2]; // 0: Blue info box ; 1: Red info box
    /* 0x0FC */ CPaneMgr* mpButtonAB[2]; // Controls the position and scale of the buttons. 0: A ; 1: B
    /* 0x104 */ CPaneMgr* mpButtonText[2]; // Controls the position and scale of the button texts. 0: A ; 1: B
    /* 0x10C */ J2DTextBox* field_0x10c[2][6]; // Displays the actual inches into the blue box of every fish 
    /* 0x13C */ J2DTextBox* field_0x13c[2][6]; // Displays the actual number of caught fishes into the red box of every fish
    /* 0x16C */ J2DTextBox* field_0x16c[2][6]; // Displays string "inches" next to the blue box of every fish
    /* 0x19C */ J2DTextBox* field_0x19c[2][6]; // Displays string "fish" next to the red box of every fish
    /* 0x1CC */ J2DTextBox* mpFishNameString[MAX_FINDABLE_FISHES]; // Displays name of every caught fish
    /* 0x1E4 */ J2DTextBox* mpInfoLargestString; // Displays "Largest" next to the blue box
    /* 0x1E8 */ J2DTextBox* mpInfoNumCaughtString; // Displays "No. Caught" next to the red box
    /* 0x1EC */ J2DTextBox* field_0x1ec; // unused
    /* 0x1F0 */ J2DPicture* mpBlackTex;
    /* 0x1F4 */ dMsgString_c* mpString;
    /* 0x1F8 */ s16 mFishListScreenFrames;
    /* 0x1FA */ u8 mStatus;
    /* 0x1FB */ u8 mProcess;
};

#endif /* D_MENU_D_MENU_FISHING_H */
