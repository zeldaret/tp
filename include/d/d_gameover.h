#ifndef D_D_GAMEOVER_H
#define D_D_GAMEOVER_H

#include "SSystem/SComponent/c_phase.h"
#include "d/menu/d_menu_save.h"
#include "dolphin/gx/GXStruct.h"
#include "f_op/f_op_msg.h"
#include "f_op/f_op_msg_mng.h"
#include "m_Do/m_Do_hostIO.h"

class dGov_HIO_c : public mDoHIO_entry_c {
public:
    /* 8019AFE0 */ dGov_HIO_c();
    /* 8019C06C */ virtual ~dGov_HIO_c();

    /* 0x08 */ f32 mScale;
    /* 0x0C */ f32 mAlpha;
    /* 0x10 */ f32 mAnimSpeed;
    /* 0x14 */ GXColor mBlack;
    /* 0x18 */ GXColor mWhite;
};  // Size: 0x1C

class dDlst_Gameover_CAPTURE_c : public dDlst_base_c {
public:
    /* 8019ACF8 */ virtual void draw();
    /* 8019C2CC */ virtual ~dDlst_Gameover_CAPTURE_c();
};

class dMsgScrnLight_c;
class dDlst_GameOverScrnDraw_c : public dDlst_base_c {
public:
    /* 8019B940 */ dDlst_GameOverScrnDraw_c(JKRArchive*);
    /* 8019BCB0 */ void setBackAlpha(f32);

    /* 8019BCF4 */ virtual void draw();
    /* 8019BBFC */ virtual ~dDlst_GameOverScrnDraw_c();

    /* 0x04 */ J2DScreen* mpScreen;
    /* 0x08 */ J2DPicture* mpBackImg;
    /* 0x0C */ dMsgScrnLight_c* mpLight;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ JUtility::TColor mFadeColor;
};  // Size: 0x18

enum dGameover_Proc {
    /* 0 */ PROC_PLAYER_ANM_WAIT,
    /* 1 */ PROC_DISP_FADE_OUT,
    /* 2 */ PROC_DISP_WAIT,
    /* 3 */ PROC_DEMO_FADE_IN,
    /* 4 */ PROC_DEMO_FADE_OUT,
    /* 5 */ PROC_SAVE_OPEN,
    /* 6 */ PROC_SAVE_MOVE,
    /* 7 */ PROC_SAVE_CLOSE,
    /* 8 */ PROC_DELETE_WAIT,
};

class dGameover_c : public msg_class {
public:
    /* 8019B044 */ int _create();
    /* 8019B2F4 */ int _execute();
    /* 8019B384 */ void playerAnmWait_init();
    /* 8019B388 */ void playerAnmWait_proc();
    /* 8019B3A0 */ void dispFadeOut_init();
    /* 8019B3E8 */ void dispFadeOut_proc();
    /* 8019B40C */ void dispWait_init();
    /* 8019B454 */ void dispWait_proc();
    /* 8019B478 */ void demoFadeIn_init();
    /* 8019B484 */ void demoFadeIn_proc();
    /* 8019B4D8 */ void demoFadeOut_init();
    /* 8019B4E4 */ void demoFadeOut_proc();
    /* 8019B560 */ void saveOpen_init();
    /* 8019B564 */ void saveOpen_proc();
    /* 8019B5A4 */ void saveMove_init();
    /* 8019B5A8 */ void saveMove_proc();
    /* 8019B5F0 */ void saveClose_init();
    /* 8019B5F4 */ void saveClose_proc();
    /* 8019B7BC */ void deleteWait_init();
    /* 8019B7C0 */ void deleteWait_proc();
    /* 8019B7C4 */ int _draw();
    /* 8019B864 */ int _delete();

    s32 deleteCheck() { return mProc == 8; }

    /* 0x0FC */ dMenu_save_c* dMs_c;
    /* 0x100 */ dDlst_GameOverScrnDraw_c* dgo_screen_c;
    /* 0x104 */ dDlst_Gameover_CAPTURE_c* dgo_capture_c;
    /* 0x108 */ request_of_phase_process_class mPhase;
    /* 0x110 */ JKRHeap* mpHeap;
    /* 0x114 */ s16 mTimer;
    /* 0x116 */ s16 field_0x116;
    /* 0x118 */ u8 mProc;
    /* 0x119 */ bool mIsDemoSave;
};  // Size: 0x11C

s32 d_GameOver_Create(u8 param_0);
bool d_GameOver_Delete(unsigned int& i_id);

inline s32 d_GameOver_CheckDelete(unsigned int& id) {
    if (id != UINT32_MAX) {
        dGameover_c* gameover = (dGameover_c*)fopMsgM_SearchByID(id);

        if (gameover != NULL) {
            return gameover->deleteCheck();
        } else {
            return 0;
        }
    }

    return 0;
}

#endif /* D_D_GAMEOVER_H */
