#ifndef D_MENU_D_MENU_WINDOW_H
#define D_MENU_D_MENU_WINDOW_H

#include "d/d_drawlist.h"
#include "f_op/f_op_msg.h"
#include "m_Do/m_Do_graphic.h"
#include "d/d_com_inf_game.h"
#include "JSystem/JUtility/JUTTexture.h"

struct CSTControl;
class STControl;
class dMenu_Collect_c;
class dMenu_Dmap_c;
class dMenu_Fishing_c;
class dMenu_Fmap_c;
class dMenu_Insect_c;
class dMenu_Letter_c;
class dMenu_Option_c;
class dMenu_Ring_c;
class dMenu_Skill_c;
class dMenu_save_c;

BOOL dMw_UP_TRIGGER();
BOOL dMw_DOWN_TRIGGER();
BOOL dMw_LEFT_TRIGGER();
BOOL dMw_RIGHT_TRIGGER();
BOOL dMw_A_TRIGGER();
BOOL dMw_B_TRIGGER();
BOOL dMw_Z_TRIGGER();
BOOL dMw_START_TRIGGER();
BOOL dMw_LEFT_TRIGGER();
BOOL dMw_RIGHT_TRIGGER();
void dMw_onPauseWindow();
void dMw_offPauseWindow();
void dMw_onMenuRing();
void dMw_offMenuRing();

class dDlst_MENU_CAPTURE_c;

class dMw_c : public msg_class {
public:
    enum dMw_Status {
        /* 0x00 */ NO_MENU,
        /* 0x01 */ RING_OPEN,
        /* 0x02 */ RING_MOVE,
        /* 0x03 */ RING_CLOSE,
        /* 0x04 */ COLLECT_OPEN,
        /* 0x05 */ COLLECT_MOVE,
        /* 0x06 */ COLLECT_CLOSE,
        /* 0x07 */ FMAP_OPEN,
        /* 0x08 */ FMAP_MOVE,
        /* 0x09 */ FMAP_CLOSE,
        /* 0x0A */ DMAP_OPEN,
        /* 0x0B */ DMAP_MOVE,
        /* 0x0C */ DMAP_CLOSE,
        /* 0x0D */ SAVE_OPEN,
        /* 0x0E */ SAVE_MOVE,
        /* 0x0F */ SAVE_CLOSE,
        /* 0x10 */ OPTIONS_OPEN,
        /* 0x11 */ OPTIONS_MOVE,
        /* 0x12 */ OPTIONS_CLOSE,
        /* 0x13 */ LETTER_OPEN,
        /* 0x14 */ LETTER_MOVE,
        /* 0x15 */ LETTER_CLOSE,
        /* 0x16 */ FISHING_OPEN,
        /* 0x17 */ FISHING_MOVE,
        /* 0x18 */ FISHING_CLOSE,
        /* 0x19 */ SKILL_OPEN,
        /* 0x1A */ SKILL_MOVE,
        /* 0x1B */ SKILL_CLOSE,
        /* 0x1C */ INSECT_OPEN,
        /* 0x1D */ INSECT_MOVE,
        /* 0x1E */ INSECT_CLOSE,
        /* 0x1F */ INSECT_AGITHA_OPEN1,
        /* 0x20 */ INSECT_AGITHA_OPEN2,
        /* 0x21 */ INSECT_AGITHA_MOVE,
        /* 0x22 */ INSECT_AGITHA_CLOSE,
    };

    /* 801FA13C */ void key_wait_init(u8);
    /* 801FA220 */ void ring_open_init(u8);
    /* 801FA23C */ void ring_move_init(u8);
    /* 801FA240 */ void ring_close_init(u8);
    /* 801FA244 */ void collect_open_init(u8);
    /* 801FA2D0 */ void collect_move_init(u8);
    /* 801FA46C */ void collect_close_init(u8);
    /* 801FA538 */ void fmap_open_init(u8);
    /* 801FA55C */ void fmap_move_init(u8);
    /* 801FA560 */ void fmap_close_init(u8);
    /* 801FA564 */ void dmap_open_init(u8);
    /* 801FA588 */ void dmap_move_init(u8);
    /* 801FA58C */ void dmap_close_init(u8);
    /* 801FA590 */ void collect_save_open_init(u8);
    /* 801FA5E4 */ void collect_save_move_init(u8);
    /* 801FA5E8 */ void collect_save_close_init(u8);
    /* 801FA608 */ void collect_option_open_init(u8);
    /* 801FA65C */ void collect_option_move_init(u8);
    /* 801FA660 */ void collect_option_close_init(u8);
    /* 801FA680 */ void collect_letter_open_init(u8);
    /* 801FA6DC */ void collect_letter_move_init(u8);
    /* 801FA6E0 */ void collect_letter_close_init(u8);
    /* 801FA738 */ void collect_fishing_open_init(u8);
    /* 801FA794 */ void collect_fishing_move_init(u8);
    /* 801FA798 */ void collect_fishing_close_init(u8);
    /* 801FA7F0 */ void collect_skill_open_init(u8);
    /* 801FA84C */ void collect_skill_move_init(u8);
    /* 801FA850 */ void collect_skill_close_init(u8);
    /* 801FA8A8 */ void collect_insect_open_init(u8);
    /* 801FA908 */ void collect_insect_move_init(u8);
    /* 801FA90C */ void collect_insect_close_init(u8);
    /* 801FA964 */ void insect_open_init(u8);
    /* 801FA9E8 */ void insect_open2_init(u8);
    /* 801FA9EC */ void insect_move_init(u8);
    /* 801FA9F0 */ void insect_close_init(u8);
    /* 801FAA48 */ void key_wait_proc();
    /* 801FAFDC */ void ring_open_proc();
    /* 801FB01C */ void ring_move_proc();
    /* 801FB064 */ void ring_close_proc();
    /* 801FB0B8 */ void collect_open_proc();
    /* 801FB110 */ void collect_move_proc();
    /* 801FB1A0 */ void collect_close_proc();
    /* 801FB240 */ void fmap_open_proc();
    /* 801FB298 */ void fmap_move_proc();
    /* 801FB36C */ void fmap_close_proc();
    /* 801FB3AC */ void dmap_open_proc();
    /* 801FB404 */ void dmap_move_proc();
    /* 801FB5DC */ void dmap_close_proc();
    /* 801FB61C */ void collect_save_open_proc();
    /* 801FB67C */ void collect_save_move_proc();
    /* 801FB6D8 */ void collect_save_close_proc();
    /* 801FB73C */ void collect_option_open_proc();
    /* 801FB7AC */ void collect_option_move_proc();
    /* 801FB800 */ void collect_option_close_proc();
    /* 801FB81C */ void collect_letter_open_proc();
    /* 801FB8AC */ void collect_letter_move_proc();
    /* 801FB900 */ void collect_letter_close_proc();
    /* 801FB91C */ void collect_fishing_open_proc();
    /* 801FB9AC */ void collect_fishing_move_proc();
    /* 801FBA00 */ void collect_fishing_close_proc();
    /* 801FBA1C */ void collect_skill_open_proc();
    /* 801FBAAC */ void collect_skill_move_proc();
    /* 801FBB00 */ void collect_skill_close_proc();
    /* 801FBB1C */ void collect_insect_open_proc();
    /* 801FBBAC */ void collect_insect_move_proc();
    /* 801FBC00 */ void collect_insect_close_proc();
    /* 801FBC1C */ void insect_open_proc();
    /* 801FBC78 */ void insect_open2_proc();
    /* 801FBD08 */ void insect_move_proc();
    /* 801FBD64 */ void insect_close_proc();
    /* 801FBD80 */ void dMw_capture_create();
    /* 801FBE14 */ void dMw_capture_delete();
    /* 801FBE94 */ void dMw_ring_create(u8);
    /* 801FBF60 */ bool dMw_ring_delete();
    /* 801FBFF8 */ void dMw_collect_create();
    /* 801FC090 */ bool dMw_collect_delete(bool);
    /* 801FC0FC */ void dMw_fmap_create();
    /* 801FC264 */ bool dMw_fmap_delete(bool);
    /* 801FC350 */ void dMw_dmap_create();
    /* 801FC46C */ bool dMw_dmap_delete(bool);
    /* 801FC520 */ void dMw_save_create();
    /* 801FC5D0 */ bool dMw_save_delete();
    /* 801FC668 */ void dMw_option_create();
    /* 801FC70C */ bool dMw_option_delete();
    /* 801FC7BC */ void dMw_letter_create();
    /* 801FC85C */ bool dMw_letter_delete();
    /* 801FC904 */ void dMw_fishing_create();
    /* 801FC9A4 */ bool dMw_fishing_delete();
    /* 801FCA4C */ void dMw_skill_create();
    /* 801FCAEC */ bool dMw_skill_delete();
    /* 801FCB94 */ void dMw_insect_create(u8);
    /* 801FCC44 */ bool dMw_insect_delete();
    /* 801FCCEC */ void dMw_onButtonBit(u8);
    /* 801FCCFC */ void dMw_offButtonBit(u8);
    /* 801FCD0C */ BOOL dMw_isButtonBit(u8);
    /* 801FCD24 */ BOOL dMw_isPush_S_Button();
    /* 801FCDD8 */ bool isPauseReady();
    /* 801FCE08 */ static void dMw_fade_out();
    /* 801FCE78 */ static void dMw_fade_in();
    /* 801FCEE8 */ int checkCStickTrigger();
    /* 801FCF84 */ bool isEventCheck();
    /* 801FD094 */ void markMemSize();
    /* 801FD0D4 */ void checkMemSize();
    /* 801FD140 */ int _create();
    /* 801FD2D8 */ int _execute();
    /* 801FD450 */ int _draw();
    /* 801FD67C */ int _delete();

    void onPauseWindow() { mPauseWindow = true; }
    void offPauseWindow() { mPauseWindow = false; }
    bool isPauseWindow() { return mPauseWindow != false; }
    void onShowFlag() { mShowFlag |= 1; }
    void offShowFlag() { mShowFlag &= ~1; }
    bool isShowFlag() { return mShowFlag & 1 != 0; }
    bool isFadeNowCheck() { return mDoGph_gInf_c::getFader()->getStatus() == 1; }

private:
    /* 0x0FC */ int field_0xfc;
    /* 0x100 */ JKRExpHeap* mpHeap;
    /* 0x104 */ STControl* mpStick;
    /* 0x108 */ CSTControl* mpCStick;
    /* 0x10C */ dDlst_MENU_CAPTURE_c* mpCapture;
    /* 0x110 */ dMenu_Ring_c* mpMenuRing;
    /* 0x114 */ dMenu_Collect_c* mpMenuCollect;
    /* 0x118 */ dMenu_Dmap_c* mpMenuDmap;
    /* 0x11C */ dMenu_Fmap_c* mpMenuFmap;
    /* 0x120 */ dMenu_save_c* mpMenuSave;
    /* 0x124 */ dMenu_Option_c* mpMenuOption;
    /* 0x128 */ dMenu_Letter_c* mpMenuLetter;
    /* 0x12C */ dMenu_Fishing_c* mpMenuFishing;
    /* 0x130 */ dMenu_Skill_c* mpMenuSkill;
    /* 0x134 */ dMenu_Insect_c* mpMenuInsect;
    /* 0x138 */ int mMemSize;
    /* 0x13C */ f32 mFmapStageTransX;
    /* 0x140 */ f32 mFmapStageTransZ;
    /* 0x144 */ u8 field_0x144;
    /* 0x145 */ u8 mButtonBits;
    /* 0x146 */ u8 mMenuProc;
    /* 0x147 */ u8 mShowFlag;
    /* 0x148 */ s8 field_0x148;
    /* 0x149 */ u8 field_0x149;
    /* 0x14A */ u8 field_0x14A;
    /* 0x14B */ u8 field_0x14B;
    /* 0x14C */ u8 field_0x14C;
    /* 0x14D */ u8 field_0x14D;
    /* 0x14E */ u8 mFmapProcess;
    /* 0x14F */ u8 mFmapRegionCursor;
    /* 0x150 */ u8 mFmapStageCursor;
    /* 0x151 */ u8 field_0x151;
    /* 0x152 */ u8 field_0x152;
    /* 0x153 */ u8 field_0x153;
    /* 0x154 */ bool mPauseWindow;
};

#endif /* D_MENU_D_MENU_WINDOW_H */
