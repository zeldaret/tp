#ifndef D_MENU_D_MENU_SAVE_H
#define D_MENU_D_MENU_SAVE_H

#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/d_lib.h"
#include "dolphin/types.h"
#include "d/d_select_cursor.h"

class dMsgString_c;
class mDoDvdThd_command_c;
class dFile_warning_c;
class dFile_info_c;
class dMsgScrnExplain_c;

class dDlst_MenuSaveExplain_c : public dDlst_base_c {
public:
    /* 801F6ADC */ virtual void draw();
    /* 801F6B8C */ virtual ~dDlst_MenuSaveExplain_c();

private:
    /* 0x4 */ int field_0x4;
};

class dDlst_MenuSave_c : public dDlst_base_c {
public:
    /* 801F6B0C */ virtual void draw();
    /* 801F6B44 */ virtual ~dDlst_MenuSave_c();
};

class dMenu_save_c {
public:
    /* 801EF6A0 */ dMenu_save_c();
    /* 801EF7AC */ void _create();
    /* 801EF904 */ void screenSet();
    /* 801F0938 */ void initialize();
    /* 801F0958 */ void displayInit();
    /* 801F09AC */ bool _open();
    /* 801F0B10 */ void _close();
    /* 801F0B28 */ void _delete();
    /* 801F1048 */ void _move();
    /* 801F1100 */ void saveSelAnm();
    /* 801F1148 */ void selFileWakuAnm();
    /* 801F11F4 */ void bookIconAnm();
    /* 801F12F0 */ void memCardWatch();
    /* 801F1378 */ void saveQuestion();
    /* 801F1558 */ void saveQuestion2();
    /* 801F1620 */ void saveQuestion21();
    /* 801F1644 */ void saveQuestion3();
    /* 801F16B8 */ void saveQuestion4();
    /* 801F16F4 */ void saveGuide();
    /* 801F1720 */ void memCardCheck();
    /* 801F191C */ void memCardErrMsgWaitKey();
    /* 801F19A8 */ void backSaveQuestionInitSet();
    /* 801F19DC */ void backSaveQuestion();
    /* 801F1A48 */ void backSaveQuestion2();
    /* 801F1B38 */ void closeSelect();
    /* 801F1BF8 */ void closeSelect2();
    /* 801F1C70 */ void iplSelMsgInitSet();
    /* 801F1C94 */ void iplSelInitSet();
    /* 801F1CEC */ void IPLSelectDisp1();
    /* 801F1D54 */ void IPLSelectDisp2();
    /* 801F1DD4 */ void memCardErrGoIPLSel();
    /* 801F1E58 */ void IPLSelect2Disp();
    /* 801F1EE0 */ void memCardErrGoIPLSel2();
    /* 801F1F80 */ void memCardErrGotoIPL();
    /* 801F2000 */ void memCardErrMsgWaitFormatSel();
    /* 801F20AC */ void cardFormatYesSelDisp();
    /* 801F2134 */ void cardFormatNoSelDisp();
    /* 801F219C */ void memCardErrMsgWaitFormatSel2();
    /* 801F2250 */ void cardFormatYesSel2Disp();
    /* 801F22CC */ void memCardFormat();
    /* 801F232C */ void memCardFormatWait();
    /* 801F23A4 */ void gameFileMakeSelInitSet();
    /* 801F23FC */ void makeGameFileSelDisp();
    /* 801F247C */ void memCardMakeGameFileSel();
    /* 801F2514 */ void makeGameFileDisp();
    /* 801F25AC */ void memCardMakeGameFile();
    /* 801F260C */ void memCardMakeGameFileWait();
    /* 801F2698 */ void memCardCommandEnd();
    /* 801F2708 */ void memCardCommandEnd2();
    /* 801F27CC */ void memCardDataLoadWait();
    /* 801F2840 */ void dataWrite();
    /* 801F28E4 */ void memCardDataSaveWait();
    /* 801F298C */ void memCardDataSaveWait2();
    /* 801F2B5C */ void gameContinueDisp();
    /* 801F2BF8 */ void gameContinue();
    /* 801F2D78 */ void gameContinue2();
    /* 801F2DA0 */ void gameContinue3();
    /* 801F2DD4 */ void saveEnd();
    /* 801F2E88 */ void endingNoSave();
    /* 801F2F08 */ void endingNoSave2();
    /* 801F2F38 */ void endingDataCheck();
    /* 801F2F4C */ void retryQuestion0();
    /* 801F2FB4 */ void retryQuestion1();
    /* 801F3040 */ void retryQuestion2();
    /* 801F30B8 */ void restartInit();
    /* 801F31B0 */ void saveWait();
    /* 801F31B4 */ void messageChange();
    /* 801F328C */ void YesNoSelect();
    /* 801F34BC */ void msgTxtSet(u16, bool);
    /* 801F3588 */ void openSaveSelect();
    /* 801F36B4 */ void openSaveSelect2();
    /* 801F37A0 */ void openSaveSelect3();
    /* 801F3934 */ void saveSelect();
    /* 801F3A94 */ void saveSelectStart();
    /* 801F3BE0 */ void selectDataOpenMove();
    /* 801F3C7C */ void dataSelectAnmSet();
    /* 801F3E30 */ void saveSelectMoveAnime();
    /* 801F40D8 */ void saveYesNoSelect();
    /* 801F4238 */ void yesnoSelectStart();
    /* 801F42FC */ void saveMoveDisp();
    /* 801F43F8 */ void saveMoveDisp2();
    /* 801F4510 */ void yesnoSelectAnmSet(u8);
    /* 801F46B4 */ void yesNoCursorMoveAnm();
    /* 801F4724 */ void yesnoCancelAnmSet();
    /* 801F47DC */ void saveYesNoCancelMove();
    /* 801F485C */ void headerTxtSet(u16);
    /* 801F4928 */ void headerTxtChangeAnm();
    /* 801F4A10 */ void errDispInitSet(int);
    /* 801F4B84 */ void msgWindowInitOpen();
    /* 801F4D10 */ void msgWindowOpen();
    /* 801F4DAC */ void msgWindowClose();
    /* 801F4E48 */ void errYesNoSelect(u8, u8);
    /* 801F4FB4 */ void errCurMove(u8, u8);
    /* 801F5054 */ void errYesNoCursorMoveAnm();
    /* 801F50C4 */ void errorTxtSet(u16);
    /* 801F5190 */ void errorTxtChangeAnm();
    /* 801F5278 */ void saveSelectOpenInit();
    /* 801F533C */ void selectDataBaseMoveAnmInitSet(int, int);
    /* 801F53D4 */ void selectDataBaseMoveAnm();
    /* 801F54C0 */ void saveSelectOpenAnmSet();
    /* 801F5508 */ void selectDataMoveAnmInitSet(int, int);
    /* 801F5600 */ void selectDataMoveAnm();
    /* 801F5744 */ void yesnoMenuMoveAnmInitSet(int, int, u8);
    /* 801F58C8 */ void yesnoMenuMoveAnm();
    /* 801F5AE4 */ void yesnoSelectMoveAnm(u8);
    /* 801F5D84 */ void yesnoCursorShow();
    /* 801F5EF4 */ void errorMoveAnmInitSet(int, int);
    /* 801F5F84 */ void errorMoveAnm();
    /* 801F60A4 */ void modoruTxtDispAnmInit(u8);
    /* 801F6120 */ void modoruTxtDispAnm();
    /* 801F61FC */ void ketteiTxtDispAnmInit(u8);
    /* 801F6278 */ void ketteiTxtDispAnm();
    /* 801F6354 */ void selectWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 801F6390 */ void selectWakuAlpahAnm(u8);
    /* 801F6458 */ void selFileCursorShow();
    /* 801F6608 */ void yesnoWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 801F6654 */ void yesnoWakuAlpahAnm(u8);
    /* 801F67B8 */ void dataSave();
    /* 801F67F0 */ void setSaveData();
    /* 801F6954 */ void setInitSaveData();
    /* 801F69B8 */ void _draw();
    /* 801F69FC */ void _draw2();

    /* 802844D0 */ virtual ~dMenu_save_c();

    u8 getSaveStatus() { return mSaveStatus; }
    void setUseType(u8 type) { mUseType = type; }

    struct SaveSel {
        /* 0x00 */ J2DScreen* Scr;
        /* 0x04 */ JUTFont* font[2];
        /* 0x0C */ dMsgString_c* mMsgString;
    };  // Size: 0x10

private:
    /* 0x0004 */ JKRArchive* field_0x4;
    /* 0x0008 */ mDoDvdThd_command_c* field_0x8;
    /* 0x000C */ STControl* stick;
    /* 0x0010 */ dDlst_MenuSaveExplain_c field_0x10;
    /* 0x0018 */ dDlst_MenuSave_c field_0x18;
    /* 0x001C */ SaveSel mSaveSel;
    /* 0x002C */ dSelect_cursor_c* mSelIcon;
    /* 0x0030 */ dFile_warning_c* field_0x30;
    /* 0x0034 */ dFile_info_c* field_0x34[3];
    /* 0x0040 */ void* field_0x40;  // bck
    /* 0x0044 */ void* field_0x44;  // bck
    /* 0x0048 */ void* field_0x48;  // bck
    /* 0x004C */ void* field_0x4c;  // bck
    /* 0x0050 */ s32 field_0x50;
    /* 0x0054 */ u8 field_0x54;
    /* 0x0058 */ CPaneMgr* field_0x58;
    /* 0x005C */ int field_0x5c; 
    /* 0x0060 */ int field_0x60;
    /* 0x0064 */ u8 field_0x64;
    /* 0x0064 */ u8 field_0x65;
    /* 0x0068 */ CPaneMgr* field_0x68[3];
    /* 0x0074 */ u8 field_0x74[0x10];
    /* 0x0084 */ CPaneMgr* field_0x84[2];
    /* 0x008C */ u8 field_0x8c[0x10];
    /* 0x009C */ u8 field_0x9c;
    /* 0x00A0 */ int field_0xa0;
    /* 0x00A4 */ u8 field_0xa4[0x10];
    /* 0x00B4 */ J2DPane* field_0xb4;
    /* 0x00B8 */ int field_0xb8;
    /* 0x00BC */ int field_0xbc;
    /* 0x00C0 */ CPaneMgr* field_0xc0[2];
    /* 0x00C8 */ char* field_0xc8[2];
    /* 0x00D0 */ u8 field_0xd0;
    /* 0x00D2 */ u8 field_0xd1;
    /* 0x00D2 */ u8 field_0xd2;
    /* 0x00D3 */ u8 field_0xd3;
    /* 0x00D4 */ CPaneMgr* field_0xd4[3];
    /* 0x00E0 */ CPaneMgr* field_0xe0[3];
    /* 0x00EC */ CPaneMgr* field_0xec[3];
    /* 0x00F8 */ CPaneMgr* field_0xf8[3];
    /* 0x0104 */ u8 field_0x104[3];
    /* 0x0107 */ u8 field_0x107[3];
    /* 0x010A */ u8 field_0x10a[3];
    /* 0x010D */ u8 field_0x10d[11];
    /* 0x0118 */ CPaneMgr* field_0x118[2];
    /* 0x0120 */ CPaneMgr* field_0x120[2];
    /* 0x0128 */ CPaneMgr* field_0x128[2];
    /* 0x0130 */ u8 field_0x130[2];
    /* 0x0132 */ u8 field_0x132[2];
    /* 0x0134 */ u8 field_0x134[2];
    /* 0x0138 */ CPaneMgr* field_0x138[2];
    /* 0x0140 */ void* field_0x140;  // bpk
    /* 0x0144 */ int field_0x144;
    /* 0x0148 */ void* field_0x148;  // btk
    /* 0x014C */ int field_0x14c;
    /* 0x0150 */ void* field_0x150;
    /* 0x0154 */ int field_0x154;
    /* 0x0158 */ void* field_0x158;  // btk
    /* 0x015C */ int field_0x15c;
    /* 0x0160 */ void* field_0x160;  // brk
    /* 0x0164 */ int field_0x164;
    /* 0x0168 */ CPaneMgr* field_0x168[2];
    /* 0x0170 */ u8 field_0x170[8];
    /* 0x0178 */ u8 field_0x178;
    /* 0x0179 */ u8 field_0x179;
    /* 0x017A */ u8 field_0x17a;
    /* 0x017B */ u8 field_0x17b[0x19];
    /* 0x0194 */ CPaneMgr* field_0x194;
    /* 0x0198 */ CPaneMgr* field_0x198;
    /* 0x019C */ u8 field_0x19c;
    /* 0x019D */ u8 field_0x19d;
    /* 0x01A0 */ CPaneMgr* field_0x1a0;
    /* 0x01A4 */ CPaneMgr* field_0x1a4;
    /* 0x01A8 */ u8 field_0x1a8;
    /* 0x01A9 */ u8 field_0x1a9;
    /* 0x01AA */ u8 field_0x1aa[3];
    /* 0x01AD */ u8 field_0x1ad[3];
    /* 0x01B0 */ u8 field_0x1b0;
    /* 0x01B1 */ u8 field_0x1b1;
    /* 0x01B2 */ u8 field_0x1b2;
    /* 0x01B3 */ u8 field_0x1b3;
    /* 0x01B4 */ u8 field_0x1b4;
    /* 0x01B5 */ u8 field_0x1b5;
    /* 0x01B6 */ u8 field_0x1b6;
    /* 0x01B7 */ u8 field_0x1b7;
    /* 0x01B8 */ u8 field_0x1b8;
    /* 0x01B9 */ u8 field_0x1b9;
    /* 0x01BA */ u8 mSaveStatus;
    /* 0x01BB */ u8 mEndStatus;
    /* 0x01BC */ u8 mUseType;
    /* 0x01BD */ u8 field_0x1bd;
    /* 0x01BE */ u8 field_0x1be;
    /* 0x01BF */ u8 field_0x1bf;
    /* 0x01C0 */ u8 field_0x1c0;
    /* 0x01C4 */ int field_0x1c4;
    /* 0x01C8 */ int field_0x1c8;
    /* 0x01CC */ void* field_0x1cc;  // func
    /* 0x01D0 */ u8 field_0x1d0[0xA94 * 3];  // 3 savefiles buffer
    /* 0x218C */ dMsgScrnExplain_c* mpScrnExplain;
    /* 0x2190 */ u8 field_0x2190;
    /* 0x2192 */ u16 field_0x2192;
    /* 0x2194 */ u8 field_0x2194;
    /* 0x2195 */ u8 field_0x2195;
    /* 0x2198 */ int field_0x2198;
    /* 0x219C */ u8 field_0x219c;
    /* 0x219D */ u8 field_0x219d;
    /* 0x219E */ u8 field_0x219e;
    /* 0x219F */ u8 field_0x219f;
    /* 0x21A0 */ u8 field_0x21a0;
    /* 0x21A1 */ u8 field_0x21a1;
    /* 0x21A2 */ u8 field_0x21a2;
    /* 0x21A3 */ u8 field_0x21a3;
};

#endif /* D_MENU_D_MENU_SAVE_H */
