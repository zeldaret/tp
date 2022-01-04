#ifndef D_MENU_D_MENU_WINDOW_H
#define D_MENU_D_MENU_WINDOW_H

#include "d/meter/d_meter2_info.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_controller_pad.h"

struct STControl;
struct CSTControl;
class dDlst_base_c;
class dMenu_Ring_c;
class dMenu_Collect2D_c;
class dMenu_Dmap_c;
class dMenu_Fmap_c;
class dMenu_save_c;
class dMenu_Option_c;
class dMenu_Letter_c;
class dMenu_Fishing_c;
class dMenu_Skill_c;
class dMenu_Insect_c;

class dMw_c {
public:
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
    /* 801FBF60 */ void dMw_ring_delete();
    /* 801FBFF8 */ void dMw_collect_create();
    /* 801FC090 */ void dMw_collect_delete(bool);
    /* 801FC0FC */ void dMw_fmap_create();
    /* 801FC264 */ void dMw_fmap_delete(bool);
    /* 801FC350 */ void dMw_dmap_create();
    /* 801FC46C */ void dMw_dmap_delete(bool);
    /* 801FC520 */ void dMw_save_create();
    /* 801FC5D0 */ void dMw_save_delete();
    /* 801FC668 */ void dMw_option_create();
    /* 801FC70C */ void dMw_option_delete();
    /* 801FC7BC */ void dMw_letter_create();
    /* 801FC85C */ void dMw_letter_delete();
    /* 801FC904 */ void dMw_fishing_create();
    /* 801FC9A4 */ void dMw_fishing_delete();
    /* 801FCA4C */ void dMw_skill_create();
    /* 801FCAEC */ void dMw_skill_delete();
    /* 801FCB94 */ void dMw_insect_create(u8);
    /* 801FCC44 */ void dMw_insect_delete();
    /* 801FCCEC */ void dMw_onButtonBit(u8);
    /* 801FCCFC */ void dMw_offButtonBit(u8);
    /* 801FCD0C */ void dMw_isButtonBit(u8);
    /* 801FCD24 */ void dMw_isPush_S_Button();
    /* 801FCDD8 */ void isPauseReady();
    /* 801FCE08 */ void dMw_fade_out();
    /* 801FCE78 */ void dMw_fade_in();
    /* 801FCEE8 */ void checkCStickTrigger();
    /* 801FCF84 */ void isEventCheck();
    /* 801FD094 */ void markMemSize();
    /* 801FD0D4 */ void checkMemSize();
    /* 801FD140 */ void _create();
    /* 801FD2D8 */ void _execute();
    /* 801FD450 */ void _draw();
    /* 801FD67C */ void _delete();

    void onPauseWindow() { mPauseWindow = true; }
    void offPauseWindow() { mPauseWindow = false; }
    void onShowFlag() { mShowFlag |= 1; }
    void offShowFlag() { mShowFlag &= ~1; }
    bool isShowFlag() { return mShowFlag & 1 != 0; }

private:
    u8 field_0x0[0x100];
    /* 0x100 */ void* field_0x100;
    /* 0x104 */ STControl* mpStick;
    /* 0x108 */ CSTControl* mpCStick;
    /* 0x10C */ dDlst_base_c* field_0x10c;
    /* 0x110 */ dMenu_Ring_c* mRing;
    /* 0x114 */ dMenu_Collect2D_c* mCollect2D;
    /* 0x118 */ dMenu_Dmap_c* mDmap;
    /* 0x11C */ dMenu_Fmap_c* mFmap;
    /* 0x120 */ dMenu_save_c* mSave;
    /* 0x124 */ dMenu_Option_c* mOption;
    /* 0x128 */ dMenu_Letter_c* mLetter;
    /* 0x12C */ dMenu_Fishing_c* mFishing;
    /* 0x130 */ dMenu_Skill_c* mSkill;
    /* 0x134 */ dMenu_Insect_c* mInsect;
    /* 0x138 */ int field_0x138;
    /* 0x13C */ u8 field_0x13c[8];
    /* 0x144 */ u8 field_0x144;
    /* 0x145 */ u8 mButtons;
    /* 0x146 */ u8 field_0x146;
    /* 0x147 */ u8 mShowFlag;
    /* 0x148 */ u8 field_0x148;
    /* 0x149 */ u8 field_0x149;
    /* 0x14A */ u8 field_0x14A;
    /* 0x14B */ u8 field_0x14B;
    /* 0x14C */ u8 field_0x14C;
    /* 0x14D */ u8 field_0x14D;
    /* 0x14E */ u8 field_0x14E;
    /* 0x14F */ u8 field_0x14F;
    /* 0x150 */ u8 field_0x150;
    /* 0x151 */ u8 field_0x151;
    /* 0x152 */ u8 field_0x152;
    /* 0x153 */ u8 field_0x153;
    /* 0x154 */ bool mPauseWindow;
};

BOOL dMw_LEFT_TRIGGER();
BOOL dMw_RIGHT_TRIGGER();

#endif /* D_MENU_D_MENU_WINDOW_H */
