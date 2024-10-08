#ifndef D_MENU_D_MENU_SAVE_H
#define D_MENU_D_MENU_SAVE_H

#include "d/d_drawlist.h"
#include "d/d_save.h"

class CPaneMgr;
class CPaneMgrAlpha;
struct CSTControl;
class J2DAnmColorKey;
class J2DAnmTransformKey;
class JUTFont;
class STControl;
class dMsgString_c;
class dFile_warning_c;
class dFile_info_c;
class dMsgScrnExplain_c;
class dSelect_cursor_c;
class mDoDvdThd_mountArchive_c;

class dDlst_MenuSaveExplain_c : public dDlst_base_c {
public:
    dDlst_MenuSaveExplain_c() { mpScrn = NULL; }

    /* 801F6ADC */ virtual void draw();
    /* 801F6B8C */ virtual ~dDlst_MenuSaveExplain_c() {}

    void setScrnExplain(dMsgScrnExplain_c* p_scrn) { mpScrn = p_scrn; }

private:
    /* 0x4 */ dMsgScrnExplain_c* mpScrn;
};

class dDlst_MenuSave_c : public dDlst_base_c {
public:
    dDlst_MenuSave_c() {
        Scr = NULL;
        mMsgString = NULL;
    }

    /* 801F6B0C */ virtual void draw();
    /* 801F6B44 */ virtual ~dDlst_MenuSave_c() {}

    /* 0x04 */ J2DScreen* Scr;
    /* 0x08 */ JUTFont* font[2];
    /* 0x10 */ dMsgString_c* mMsgString;
};

class dMs_HIO_c {
public:
    /* 801EF654 */ dMs_HIO_c();
    /* 801F6BD4 */ virtual ~dMs_HIO_c() {}

    /* 0x4 */ s8 field_0x4;
    /* 0x5 */ u8 mDisplayWaitFrames;
    /* 0x6 */ u8 mCardWaitFrames;
    /* 0x7 */ u8 mEffectDispFrames;
    /* 0x8 */ u8 mCharSwitchFrames;
    /* 0x9 */ u8 mSelectIcon;
    /* 0xA */ u8 mSelectFrames;
    /* 0xB */ u8 mFadeOutTimer;
    /* 0xC */ bool mTitleMsgCheck;
    /* 0xD */ u8 field_0xd;
    /* 0xE */ bool mErrorMsgCheck;
    /* 0xF */ u8 field_0xf;
};

class dMenu_save_c {
public:
    enum {
        TYPE_DEFAULT = 1,
        TYPE_WHITE_EVENT = 3,
        TYPE_BLACK_EVENT
    };

    enum {
        CURSOR_NO,
        CURSOR_YES,
    };

    enum {
        /* 0x00 */ PROC_SAVE_QUESTION,
        /* 0x01 */ PROC_SAVE_QUESTION2,
        /* 0x02 */ PROC_SAVE_QUESTION21,
        /* 0x03 */ PROC_SAVE_QUESTION3,
        /* 0x04 */ PROC_SAVE_QUESTION4,
        /* 0x05 */ PROC_SAVE_GUIDE,
        /* 0x06 */ PROC_MEMCARD_CHECK,
        /* 0x07 */ PROC_BACK_SAVE_QUESTION,
        /* 0x08 */ PROC_BACK_SAVE_QUESTION2,
        /* 0x09 */ PROC_MEMCARD_ERRMSG_WAIT_KEY,
        /* 0x0A */ PROC_IPL_SELECT_DISP1,
        /* 0x0B */ PROC_IPL_SELECT_DISP2,
        /* 0x0C */ PROC_MEMCARD_ERR_GO_IPL_SEL,
        /* 0x0D */ PROC_IPL_SELECT2_DISP,
        /* 0x0E */ PROC_MEMCARD_ERR_GO_IPL_SEL2,
        /* 0x0F */ PROC_MEMCARD_ERR_GOTO_IPL,
        /* 0x10 */ PROC_MEMCARD_ERRMSG_WAIT_FORMAT_SEL,
        /* 0x11 */ PROC_CARD_FORMAT_YES_SEL_DISP,
        /* 0x12 */ PROC_CARD_FORMAT_NO_SEL_DISP,
        /* 0x13 */ PROC_MEMCARD_ERRMSG_WAIT_FORMAT_SEL2,
        /* 0x14 */ PROC_CARD_FORMAT_YES_SEL2_DISP,
        /* 0x15 */ PROC_MEMCARD_FORMAT,
        /* 0x16 */ PROC_MEMCARD_FORMAT_WAIT,
        /* 0x17 */ PROC_MAKE_GAME_FILE_SEL_DISP,
        /* 0x18 */ PROC_MEMCARD_MAKE_GAME_FILE_SEL,
        /* 0x19 */ PROC_MAKE_GAME_FILE_DISP,
        /* 0x1A */ PROC_MEMCARD_MAKE_GAME_FILE,
        /* 0x1B */ PROC_MEMCARD_MAKE_GAME_FILE_WAIT,
        /* 0x1C */ PROC_MEMCARD_COMMAND_END,
        /* 0x1D */ PROC_MEMCARD_COMMAND_END2,
        /* 0x1E */ PROC_MEMCARD_DATA_LOAD_WAIT,
        /* 0x1F */ PROC_MEMCARD_DATA_SAVE_WAIT,
        /* 0x20 */ PROC_MEMCARD_DATA_SAVE_WAIT2,
        /* 0x21 */ PROC_GAME_CONTINUE_DISP,
        /* 0x22 */ PROC_GAME_CONTINUE,
        /* 0x23 */ PROC_GAME_CONTINUE2,
        /* 0x24 */ PROC_GAME_CONTINUE3,
        /* 0x25 */ PROC_SAVE_END,
        /* 0x26 */ PROC_ENDING_NO_SAVE,
        /* 0x27 */ PROC_ENDING_NO_SAVE2,
        /* 0x28 */ PROC_ENDING_DATA_CHECK,
        /* 0x29 */ PROC_SAVE_WAIT,
        /* 0x2A */ PROC_MESSAGE_CHANGE,
        /* 0x2B */ PROC_RETRY_QUESTION0,
        /* 0x2C */ PROC_RETRY_QUESTION1,
        /* 0x2D */ PROC_RETRY_QUESTION2,
        /* 0x2E */ PROC_OPEN_SAVE_SELECT,
        /* 0x2F */ PROC_OPEN_SAVE_SELECT2,
        /* 0x30 */ PROC_OPEN_SAVE_SELECT3,
        /* 0x31 */ PROC_SAVE_SELECT,
        /* 0x32 */ PROC_SAVE_SELECT_MOVE_ANM,
        /* 0x33 */ PROC_SELECT_DATA_OPEN_MOVE,
        /* 0x34 */ PROC_SAVE_YES_NO_SELECT,
        /* 0x35 */ PROC_YES_NO_CURSOR_MOVE_ANM,
        /* 0x36 */ PROC_SAVE_YES_NO_CANCEL_MOVE,
        /* 0x37 */ PROC_SAVE_MOVE_DISP,
        /* 0x38 */ PROC_SAVE_MOVE_DISP2,
        /* 0x39 */ PROC_MSG_WINDOW_INIT_OPEN,
        /* 0x3A */ PROC_MSG_WINDOW_OPEN,
        /* 0x3B */ PROC_MSG_WINDOW_CLOSE,
        /* 0x3C */ PROC_ERR_YES_NO_CURSOR_MOVE_ANM,
    };

    /* 801EF6A0 */ dMenu_save_c();
    /* 801EF7AC */ void _create();
    /* 801EF904 */ void screenSet();
    /* 801F0938 */ void initialize();
    /* 801F0958 */ void displayInit();
    /* 801F09AC */ bool _open();
    /* 801F0B10 */ int _close();
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
    /* 801F328C */ int YesNoSelect();
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
    /* 801F4928 */ bool headerTxtChangeAnm();
    /* 801F4A10 */ void errDispInitSet(int);
    /* 801F4B84 */ void msgWindowInitOpen();
    /* 801F4D10 */ void msgWindowOpen();
    /* 801F4DAC */ void msgWindowClose();
    /* 801F4E48 */ bool errYesNoSelect(u8, u8);
    /* 801F4FB4 */ void errCurMove(u8, u8);
    /* 801F5054 */ void errYesNoCursorMoveAnm();
    /* 801F50C4 */ void errorTxtSet(u16);
    /* 801F5190 */ bool errorTxtChangeAnm();
    /* 801F5278 */ void saveSelectOpenInit();
    /* 801F533C */ void selectDataBaseMoveAnmInitSet(int, int);
    /* 801F53D4 */ bool selectDataBaseMoveAnm();
    /* 801F54C0 */ void saveSelectOpenAnmSet();
    /* 801F5508 */ void selectDataMoveAnmInitSet(int, int);
    /* 801F5600 */ bool selectDataMoveAnm();
    /* 801F5744 */ void yesnoMenuMoveAnmInitSet(int anmFrame, int frameMax, u8 param_2);
    /* 801F58C8 */ bool yesnoMenuMoveAnm();
    /* 801F5AE4 */ bool yesnoSelectMoveAnm(u8);
    /* 801F5D84 */ void yesnoCursorShow();
    /* 801F5EF4 */ void errorMoveAnmInitSet(int, int);
    /* 801F5F84 */ bool errorMoveAnm();
    /* 801F60A4 */ void modoruTxtDispAnmInit(u8);
    /* 801F6120 */ bool modoruTxtDispAnm();
    /* 801F61FC */ void ketteiTxtDispAnmInit(u8);
    /* 801F6278 */ bool ketteiTxtDispAnm();
    /* 801F6354 */ void selectWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 801F6390 */ bool selectWakuAlpahAnm(u8);
    /* 801F6458 */ void selFileCursorShow();
    /* 801F6608 */ void yesnoWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 801F6654 */ bool yesnoWakuAlpahAnm(u8);
    /* 801F67B8 */ void dataSave();
    /* 801F67F0 */ void setSaveData();
    /* 801F6954 */ void setInitSaveData();
    /* 801F69B8 */ void _draw();
    /* 801F69FC */ void _draw2();

    /* 802844D0 */ virtual ~dMenu_save_c();

    u8 getSaveStatus() { return mSaveStatus; }
    u8 getEndStatus() { return mEndStatus; }
    void setUseType(u8 type) { mUseType = type; }

private:
    /* 0x0004 */ JKRArchive* mpArchive;
    /* 0x0008 */ mDoDvdThd_mountArchive_c* mpMount;
    /* 0x000C */ STControl* stick;
    /* 0x0010 */ dDlst_MenuSaveExplain_c mMenuSaveExplain;
    /* 0x0018 */ dDlst_MenuSave_c mSaveSel;
    /* 0x002C */ dSelect_cursor_c* mSelIcon;
    /* 0x0030 */ dFile_warning_c* mWarning;
    /* 0x0034 */ dFile_info_c* mFileInfo[3];
    /* 0x0040 */ J2DAnmTransformKey* field_0x40;
    /* 0x0044 */ J2DAnmTransformKey* field_0x44;
    /* 0x0048 */ J2DAnmTransformKey* field_0x48;
    /* 0x004C */ J2DAnmTransformKey* field_0x4c;
    /* 0x0050 */ s32 field_0x50;
    /* 0x0054 */ u8 mSelectedFile;
    /* 0x0055 */ u8 mLastSelFile;
    /* 0x0058 */ CPaneMgr* mpSelectMoveBase;
    /* 0x005C */ int mDataBaseMoveAnmFrame;
    /* 0x0060 */ int mDataBaseMoveFrameMax;
    /* 0x0064 */ u8 field_0x64;
    /* 0x0065 */ u8 field_0x65;
    /* 0x0068 */ CPaneMgr* mpSelData[3];
    /* 0x0074 */ int field_0x74[3];
    /* 0x0080 */ int field_0x80;
    /* 0x0084 */ CPaneMgr* mpNoYes[2];
    /* 0x008C */ int field_0x8c[2];
    /* 0x0094 */ int mYesNoMoveAnmFrame;
    /* 0x0098 */ int mYesNoMoveAnmMax;
    /* 0x009C */ u8 field_0x9c;
    /* 0x009D */ u8 field_0x9d;
    /* 0x009E */ u8 field_0x9e;
    /* 0x00A0 */ J2DPane* field_0xa0;
    /* 0x00A4 */ u8 field_0xa4[0x10];
    /* 0x00B4 */ J2DPane* field_0xb4;
    /* 0x00B8 */ int field_0xb8;
    /* 0x00BC */ int field_0xbc;
    /* 0x00C0 */ CPaneMgrAlpha* mpErrTxtPane[2];
    /* 0x00C8 */ char* mpErrTxt[2];
    /* 0x00D0 */ u8 mErrTxtType;
    /* 0x00D1 */ u8 mErrTxtAnmComplete;
    /* 0x00D2 */ u8 field_0xd2;
    /* 0x00D3 */ u8 field_0xd3;
    /* 0x00D4 */ CPaneMgr* mpSelWakuMoyo[3];
    /* 0x00E0 */ CPaneMgr* mpSelWakuGold[3];
    /* 0x00EC */ CPaneMgr* mpSelWakuGold2[3];
    /* 0x00F8 */ CPaneMgr* mpBookWaku[3];
    /* 0x0104 */ u8 field_0x104[3];
    /* 0x0107 */ u8 field_0x107[3];
    /* 0x010A */ u8 field_0x10a[3];
    /* 0x010D */ u8 field_0x10d[11];
    /* 0x0118 */ CPaneMgr* mNoYesBase[2];
    /* 0x0120 */ CPaneMgr* mNoYesGold[2];
    /* 0x0128 */ CPaneMgr* mNoYesGold2[2];
    /* 0x0130 */ u8 mNoYesWakuStartAlpha[2];
    /* 0x0132 */ u8 mNoYesWakuEndAlpha[2];
    /* 0x0134 */ u8 mNoYesWakuAnmTimer[2];
    /* 0x0138 */ CPaneMgr* mpNoYesTxt[2];
    /* 0x0140 */ J2DAnmColorKey* mpFileWakuAnm;
    /* 0x0144 */ int mFileWakuAnmFrame;
    /* 0x0148 */ J2DAnmTextureSRTKey* mpFileWakuRotAnm;
    /* 0x014C */ int mFileWakuRotAnmFrame;
    /* 0x0150 */ J2DAnmColorKey* field_0x150;
    /* 0x0154 */ int field_0x154;
    /* 0x0158 */ J2DAnmTextureSRTKey* field_0x158;
    /* 0x015C */ int field_0x15c;
    /* 0x0160 */ J2DAnmTevRegKey* field_0x160;
    /* 0x0164 */ int field_0x164;
    /* 0x0168 */ CPaneMgrAlpha* mpHeaderTxtPane[2];
    /* 0x0170 */ char* mpHeaderTxt[2];
    /* 0x0178 */ u8 mHeaderTxtType;  // 0: Select Menu  1: YesNo Menu
    /* 0x0179 */ u8 mHeaderAnmComplete;
    /* 0x017A */ u8 field_0x17a;
    /* 0x017B */ u8 field_0x17b;
    /* 0x017C */ CPaneMgrAlpha* mpDataBase[3];
    /* 0x0188 */ CPaneMgrAlpha* mpNoDataBase[3];
    /* 0x0194 */ CPaneMgrAlpha* mpBBtnIcon;
    /* 0x0198 */ CPaneMgrAlpha* mpABtnIcon;
    /* 0x019C */ u8 field_0x19c;
    /* 0x019D */ u8 field_0x19d;
    /* 0x01A0 */ CPaneMgrAlpha* mpBackTxt;
    /* 0x01A4 */ CPaneMgrAlpha* mpConfirmTxt;
    /* 0x01A8 */ u8 field_0x1a8;
    /* 0x01A9 */ u8 field_0x1a9;
    /* 0x01AA */ u8 field_0x1aa[3];
    /* 0x01AD */ u8 field_0x1ad[3];
    /* 0x01B0 */ u8 mDisplayMenu;
    /* 0x01B1 */ u8 field_0x1b1;
    /* 0x01B2 */ u8 mMenuProc;
    /* 0x01B3 */ u8 field_0x1b3;
    /* 0x01B4 */ u8 field_0x1b4;
    /* 0x01B5 */ u8 mErrProc;
    /* 0x01B6 */ u8 mYesNoCursor;
    /* 0x01B7 */ u8 mYesNoPrevCursor;
    /* 0x01B8 */ u8 field_0x1b8;
    /* 0x01B9 */ u8 field_0x1b9;
    /* 0x01BA */ u8 mSaveStatus;
    /* 0x01BB */ u8 mEndStatus;
    /* 0x01BC */ u8 mUseType;
    /* 0x01BD */ u8 mWaitTimer;
    /* 0x01BE */ u8 field_0x1be;
    /* 0x01BF */ u8 field_0x1bf;
    /* 0x01C0 */ u8 field_0x1c0;
    /* 0x01CC */ void (dMenu_save_c::*mpErrFunc)();
    /* 0x01D0 */ u8 mSaveBuffer[QUEST_LOG_SIZE * 3];
    /* 0x218C */ dMsgScrnExplain_c* mpScrnExplain;
    /* 0x2190 */ u8 field_0x2190;
    /* 0x2192 */ u16 field_0x2192;
    /* 0x2194 */ u8 field_0x2194;
    /* 0x2195 */ u8 field_0x2195;
    /* 0x2198 */ int mCmdState;
    /* 0x219C */ bool field_0x219c;
    /* 0x219D */ u8 field_0x219d;
    /* 0x219E */ u8 field_0x219e;
    /* 0x219F */ u8 field_0x219f;
    /* 0x21A0 */ u8 field_0x21a0;
    /* 0x21A1 */ u8 field_0x21a1;
    /* 0x21A2 */ u8 field_0x21a2;
    /* 0x21A3 */ u8 field_0x21a3;
};

#endif /* D_MENU_D_MENU_SAVE_H */
