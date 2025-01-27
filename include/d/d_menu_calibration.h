#ifndef D_MENU_D_MENU_CALIBRATION_H
#define D_MENU_D_MENU_CALIBRATION_H

#include "JSystem/J2DGraph/J2DTextBox.h"

class CPaneMgr;
class JKRExpHeap;
class dMsgString_c;
class dSelect_cursor_c;

class dMenu_Calibration_c {
public:
    enum {
        /* 0 */ PROC_STEP1_WAIT,
        /* 1 */ PROC_STEP1_MOVE,
        /* 2 */ PROC_STEP2_WAIT,
        /* 3 */ PROC_STEP2_MOVE,
        /* 4 */ PROC_STEP3_WAIT,
        /* 5 */ PROC_STEP3_MOVE,
    };

    /* 801AEDAC */ void _move();
    /* 801AEE2C */ void _draw();
    /* 801AEE30 */ void step1_wait_init();
    /* 801AEF60 */ void step1_wait_move();
    /* 801AF084 */ void step1_move_init();
    /* 801AF0C0 */ void step1_move_move();
    /* 801AF188 */ void step2_wait_init();
    /* 801AF1F4 */ void step2_wait_move();
    /* 801AF380 */ void step2_move_init();
    /* 801AF3BC */ void step2_move_move();
    /* 801AF488 */ void step3_wait_init();
    /* 801AF4F8 */ void step3_wait_move();
    /* 801AF5F4 */ void step3_move_init();
    /* 801AF630 */ void step3_move_move();
    /* 801AF710 */ void setCalibrationValue();
    /* 801AF738 */ void setAButtonString(u16);
    /* 801AF7E8 */ void setBButtonString(u16);
    /* 801AF898 */ void setStepString(u16);
    /* 801AF948 */ void setExplainString(u16);
    /* 801AFA00 */ void setHIO(bool);

    /* 801AFBF4 */ virtual void draw();
    /* 801AED64 */ virtual ~dMenu_Calibration_c();

    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRArchive* mpArchive;
    /* 0x00C */ J2DScreen* mpCalibrationMainScrn;
    /* 0x010 */ J2DScreen* mpDoIconPartsScrn;
    /* 0x014 */ J2DTextBox* mpAButtonString[5];
    /* 0x028 */ J2DTextBox* mpBButtonString[5];
    /* 0x03C */ J2DTextBox* mpExplainString[3];
    /* 0x048 */ J2DTextBox* mpStepString[3];
    /* 0x054 */ CPaneMgr* field_0x54;
    /* 0x058 */ CPaneMgr* field_0x58[3];
    /* 0x064 */ CPaneMgr* field_0x64;
    /* 0x068 */ CPaneMgr* field_0x68[5];
    /* 0x07C */ CPaneMgr* field_0x7c;
    /* 0x080 */ CPaneMgr* field_0x80;
    /* 0x084 */ CPaneMgr* field_0x84;
    /* 0x088 */ CPaneMgr* field_0x88;
    /* 0x08C */ CPaneMgr* field_0x8c;
    /* 0x090 */ CPaneMgr* field_0x90;
    /* 0x094 */ CPaneMgr* field_0x94;
    /* 0x098 */ CPaneMgr* field_0x98;
    /* 0x09C */ CPaneMgr* field_0x9c;
    /* 0x0A0 */ CPaneMgr* field_0xa0;
    /* 0x0A4 */ dMsgString_c* mpMsgString;
    /* 0x0A8 */ dSelect_cursor_c* mpSelectCursor;
    /* 0x0AC */ J2DTextBox::TFontSize field_0xac[5];
    /* 0x0D4 */ f32 field_0xd4;
    /* 0x0D8 */ f32 field_0xd8;
    /* 0x0DC */ f32 field_0xdc;
    /* 0x0E0 */ f32 field_0xe0;
    /* 0x0E4 */ f32 field_0xe4;
    /* 0x0E8 */ int mCalibrationValue;
    /* 0x0EC */ int field_0xec;
    /* 0x0F0 */ int field_0xf0;
    /* 0x0F4 */ u16 mCalibrateDist;
    /* 0x0F6 */ s16 field_0xf6;
    /* 0x0F8 */ s16 field_0xf8;
    /* 0x0FA */ s16 field_0xfa;
    /* 0x0FC */ s16 field_0xfc;
    /* 0x0FE */ u8 mStatus;
    /* 0x0FF */ u8 field_0xff;
    /* 0x100 */ u8 mProcess;
    /* 0x101 */ u8 field_0x101;
};

#endif /* D_MENU_D_MENU_CALIBRATION_H */
