#ifndef D_FILE_D_FILE_SELECT_H
#define D_FILE_D_FILE_SELECT_H

#include "d/com/d_com_inf_game.h"
#include "d/file/d_file_sel_warning.h"
#include "d/d_name.h"
#include "d/msg/d_msg_string.h"
#include "JSystem/J3DGraphLoader/J3DModelLoader.h"
#include "JSystem/J3DGraphLoader/J3DAnmLoader.h"

class dDlst_FileSel_c {
public:
    /* 8018DEBC */ void draw();
    /* 8019135C */ ~dDlst_FileSel_c();

    /* 0x00 */ void* vtable;
    /* 0x04 */ J2DScreen* mpScreen;
};

class dFile_select3D_c {
public:
    /* 801902F0 */ dFile_select3D_c();
    /* 80190380 */ ~dFile_select3D_c();
    /* 801903DC */ void _create(u8, u8);
    /* 8019049C */ void _delete();
    /* 801904A0 */ void freeHeap();
    /* 801904E4 */ void _move();
    /* 801905A8 */ void draw();
    /* 8019065C */ void setJ3D(char const*, char const*, char const*);
    /* 8019095C */ void set_mtx();
    /* 80190A14 */ void animePlay();
    /* 80190B44 */ void animeEntry();
    /* 80190BA8 */ void createMaskModel();
    /* 80190D68 */ void createMirrorModel();
    /* 80190FE8 */ void toItem3Dpos(f32, f32, f32, cXyz*);
    /* 801910D4 */ void calcViewMtx(f32 (*)[4]);

    void drawOff() { mpModel = 0; }

    /* 0x0000 */ void* vtable;
    /* 0x0004 */ JKRSolidHeap* mpHeap;
    /* 0x0008 */ J3DModel* mpModel;
    /* 0x000C */ mDoExt_bckAnm* mBckAnm;
    /* 0x0010 */ mDoExt_brkAnm* mBrkAnm;
    /* 0x0014 */ J3DLightInfo mLightInfo;
    /* 0x0048 */ u8 field_0x0048[0x0088 - 0x0048];
    /* 0x0088 */ J3DLightObj mLightObjects[6];
    /* 0x0340 */ u8 field_0x0340[0x039C - 0x0340];
    /* 0x039C */ J2DPane* pane;
    /* 0x03A0 */ u8 field_0x03A0[0x03A4 - 0x03A0];
    /* 0x03A4 */ cXyz field_0x03a4;
    /* 0x03B0 */ csXyz field_0x03b0;
    /* 0x03B6 */ u8 padding[2];
    /* 0x03B8 */ cXyz field_0x03b8;
    /* 0x03C4 */ float field_0x03c4;
    /* 0x03C8 */ float field_0x03c8;
    /* 0x03CC */ u8 field_0x03CC[0x03CE - 0x03CC];
    /* 0x03CE */ u8 mMirrorIdx;
    /* 0x03CF */ u8 mMaskIdx;
};

class dDlst_FileSelYn_c {
public:
    /* 8018E0C0 */ void draw();
    /* 801911F4 */ ~dDlst_FileSelYn_c();

    /* 0x00 */ void* vtable;
    /* 0x04 */ J2DScreen* mpScreen;
    /* 0x08 */ u8 field_0x08[4];
};

class dDlst_FileSelDt_c {
public:
    /* 8018DEF4 */ void draw();
    /* 801912E4 */ ~dDlst_FileSelDt_c();

    /* 0x00 */ void* vtable;
    /* 0x04 */ J2DScreen* mpScreen;
    /* 0x08 */ J2DPane* mpPane;
    /* 0x0C */ u8 field_0x0c[4];
};

class dDlst_FileSelCp_c {
public:
    /* 8018DFFC */ void draw();
    /* 8019126C */ ~dDlst_FileSelCp_c();

    /* 0x00 */ void* vtable;
    /* 0x04 */ J2DScreen* mpScreen;
    /* 0x08 */ bool field_0x08;
    /* 0x0C */ J2DPane* mpPane1;
    /* 0x10 */ J2DPane* mpPane2;
};

class dDlst_FileSel3m_c {
public:
    /* 8018E0F8 */ void draw();
    /* 8019117C */ ~dDlst_FileSel3m_c();

    /* 0x00 */ void* vtable;
    /* 0x04 */ J2DScreen* mpScreen;
};

class dFile_info_c {
public:
    /* 80192434 */ dFile_info_c(JKRArchive*, u8);
    /* 80192954 */ void setSaveData(dSv_save_c*, int, u8);
    /* 80192D60 */ void _draw();

    void draw() { _draw(); }
};

// temp struct in order to get matches
class dFs_HIO_c_tmp {
public:
    /* 0x0000 */ void* vtable;
    /* 0x0004 */ s8 field_0x0004;
    /* 0x0005 */ u8 field_0x0005;
    /* 0x0006 */ u8 field_0x0006;
    /* 0x0007 */ u8 field_0x0007;
    /* 0x0008 */ u8 field_0x0008;
    /* 0x0009 */ u8 field_0x0009;
    /* 0x000A */ u8 field_0x000a;
    /* 0x000B */ u8 field_0x000b;
    /* 0x000C */ u8 field_0x000c;
    /* 0x000D */ u8 field_0x000d;
    /* 0x000E */ u8 field_0x000e[2];
    /* 0x0010 */ float field_0x0010;
    /* 0x0014 */ float field_0x0014;
    /* 0x0018 */ float field_0x0018;
    /* 0x001C */ u8 field_0x001c;
    /* 0x001D */ u8 field_0x001d;
    /* 0x001E */ u8 field_0x001e;
    /* 0x001F */ u8 field_0x001f;
    /* 0x0020 */ u8 field_0x0020;
    /* 0x0021 */ u8 field_0x0021;
    /* 0x0022 */ u8 field_0x0022;
    /* 0x0023 */ u8 field_0x0023;
};

class dFs_HIO_c {
public:
    /* 801835F8 */ dFs_HIO_c();
    /* 801913E0 */ virtual ~dFs_HIO_c();

    /* 0x0000 */ // void* vtable;
    /* 0x0004 */ s8 field_0x0004;
    /* 0x0005 */ u8 field_0x0005;
    /* 0x0006 */ u8 field_0x0006;
    /* 0x0007 */ u8 field_0x0007;
    /* 0x0008 */ u8 field_0x0008;
    /* 0x0009 */ u8 field_0x0009;
    /* 0x000A */ u8 field_0x000a;
    /* 0x000B */ u8 field_0x000b;
    /* 0x000C */ u8 field_0x000c;
    /* 0x000D */ u8 field_0x000d;
    /* 0x000E */ u8 field_0x000e[2];
    /* 0x0010 */ float field_0x0010;
    /* 0x0014 */ float field_0x0014;
    /* 0x0018 */ float field_0x0018;
    /* 0x001C */ u8 field_0x001c;
    /* 0x001D */ u8 field_0x001d;
    /* 0x001E */ u8 field_0x001e;
    /* 0x001F */ u8 field_0x001f;
    /* 0x0020 */ u8 field_0x0020;
    /* 0x0021 */ u8 field_0x0021;
    /* 0x0022 */ u8 field_0x0022;
    /* 0x0023 */ u8 field_0x0023;
};

class dFile_select_c {
public:
    /* 8018366C */ dFile_select_c(JKRArchive*);
    /* 8018375C */ ~dFile_select_c();
    /* 801843CC */ void _create();
    /* 801844FC */ void _move();
    /* 80184664 */ void selFileWakuAnm();
    /* 801848A0 */ void bookIconAnm();
    /* 8018499C */ void selCopyFileWakuAnm();
    /* 80184A48 */ void copyBookIconAnm();
    /* 80184B44 */ void dataDelEffAnm();
    /* 80184BFC */ void dataCopyEffAnm();
    /* 80184CB4 */ void selectDataBaseMoveAnmInitSet(int, int);
    /* 80184D4C */ bool selectDataBaseMoveAnm();
    /* 80184E38 */ void dataSelectInAnmSet();
    /* 80185040 */ void dataSelectIn();
    /* 80185230 */ void dataSelectInit();
    /* 801853C4 */ void dataSelect();
    /* 80185508 */ void dataSelectStart();
    /* 80185994 */ void selectDataMoveAnmInitSet(int, int);
    /* 80185AAC */ bool selectDataMoveAnm();
    /* 80185C2C */ void dataSelectAnmSet();
    /* 80185DE0 */ void dataSelectMoveAnime();
    /* 80186088 */ void makeRecInfo(u8);
    /* 801864DC */ void selectDataOpenMove();
    /* 80186638 */ void selectDataNameMove();
    /* 801866C8 */ void selectDataOpenEraseMove();
    /* 80186774 */ void menuSelect();
    /* 801868EC */ void menuSelectStart();
    /* 80186A80 */ void menuSelectCansel();
    /* 80186B48 */ void menuMoveAnmInitSet(int, int);
    /* 80186CAC */ bool menuMoveAnm();
    /* 80186E14 */ void menuSelectAnmSet();
    /* 80186F98 */ void menuSelectMoveAnm();
    /* 8018721C */ void ToNameMove();
    /* 801872C4 */ void ToNameMove2();
    /* 80187384 */ void nameInputWait();
    /* 801873BC */ void nameInput();
    /* 801874F8 */ void nameToDataSelectMove();
    /* 8018759C */ void nameInputFade();
    /* 801876A0 */ void nameInput2Move();
    /* 8018774C */ void nameInput2();
    /* 80187824 */ void backNameInputMove0();
    /* 80187908 */ void backNameInputMove();
    /* 801879B8 */ void ToCopyPaneMove();
    /* 80187ADC */ void ToErasePaneMove();
    /* 80187B44 */ void backSelectMove();
    /* 80187BE8 */ void copySelMoveAnmInitSet(int, int);
    /* 80187DB8 */ void setSaveDataForCopySel();
    /* 80187ED4 */ void copyDataToSelect();
    /* 8018801C */ void copyDataToSelectStart();
    /* 80188234 */ void copyDataToSelectCansel();
    /* 8018832C */ void copyDataToSelectMoveAnmSet();
    /* 801884D0 */ void copyDataToSelectMoveAnm();
    /* 80188834 */ void copySelectWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 80188878 */ bool copySelectWakuAlpahAnm(u8);
    /* 80188950 */ void getCptoNum(u8);
    /* 80188994 */ void copyToSelBack();
    /* 80188B54 */ void copyToSelPaneMove();
    /* 80188BBC */ void yesnoMenuMoveAnmInitSet(int, int);
    /* 80188D38 */ bool yesnoMenuMoveAnm();
    /* 80188ED0 */ void yesnoSelectMoveAnm();
    /* 8018912C */ void yesnoCursorShow();
    /* 8018929C */ void YesNoSelect();
    /* 801893E4 */ void yesNoSelectStart();
    /* 8018978C */ void yesnoSelectAnmSet();
    /* 80189904 */ void yesnoCancelAnmSet();
    /* 80189A24 */ void YesNoCancelMove();
    /* 80189BA8 */ void yesNoCursorMoveAnm();
    /* 80189C14 */ void CmdExecPaneMove0();
    /* 80189E28 */ void CommandExec();
    /* 80189F68 */ void DataEraseWait();
    /* 80189FFC */ void DataEraseWait2();
    /* 8018A194 */ void ErasePaneMoveOk();
    /* 8018A2DC */ void ErasePaneMoveOk2();
    /* 8018A3B0 */ void eraseEndBackSelectWait();
    /* 8018A444 */ void eraseEndBackSelect();
    /* 8018A4D0 */ void DataCopyWait();
    /* 8018A564 */ void DataCopyWait2();
    /* 8018A6F8 */ void copyPaneMoveOk();
    /* 8018A868 */ void copyPaneMoveOk2();
    /* 8018A960 */ void ErrorMsgPaneMove();
    /* 8018AAC4 */ void backDatSelPaneMove();
    /* 8018AC3C */ void backDatSelWait();
    /* 8018AD38 */ void backDatSelWait2();
    /* 8018AD9C */ void nextModeWait();
    /* 8018ADA0 */ void screenSet();
    /* 8018BF2C */ void screenSetCopySel();
    /* 8018C524 */ void screenSetYesNo();
    /* 8018C8F4 */ void screenSet3Menu();
    /* 8018CCD0 */ void screenSetDetail();
    /* 8018CE38 */ void setWakuAnm();
    /* 8018CF50 */ void displayInit();
    /* 8018D044 */ void setSaveData();
    /* 8018D0E4 */ void headerTxtSet(u16, u8, u8);
    /* 8018D25C */ bool headerTxtChangeAnm();
    /* 8018D344 */ void modoruTxtChange(u8);
    /* 8018D3A0 */ void modoruTxtDispAnmInit(u8);
    /* 8018D41C */ bool modoruTxtDispAnm();
    /* 8018D4F8 */ void ketteiTxtDispAnmInit(u8);
    /* 8018D574 */ bool ketteiTxtDispAnm();
    /* 8018D650 */ void selectWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 8018D68C */ bool selectWakuAlpahAnm(u8);
    /* 8018D764 */ void selFileCursorShow();
    /* 8018D884 */ void menuWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 8018D8C8 */ bool menuWakuAlpahAnm(u8);
    /* 8018DA10 */ void menuCursorShow();
    /* 8018DB80 */ void yesnoWakuAlpahAnmInit(u8, u8, u8, u8);
    /* 8018DBCC */ void yesnoWakuAlpahAnm(u8);
    /* 8018DD38 */ void _draw();
    /* 8018E130 */ void errorMoveAnmInitSet(int, int);
    /* 8018E1C0 */ bool errorMoveAnm();
    /* 8018E2B4 */ void errDispInitSet(int, int);
    /* 8018E4CC */ void MemCardCheckMain();
    /* 8018E504 */ void MemCardStatCheck();
    /* 8018E7C4 */ void MemCardLoadWait();
    /* 8018E93C */ void MemCardErrMsgWaitKey();
    /* 8018E9B0 */ void noFileSpaceDispInit();
    /* 8018E9D4 */ void MemCardNoFileSpaceDisp();
    /* 8018EA3C */ void iplSelDispInit();
    /* 8018EA90 */ void MemCardGotoIPLSelectDisp();
    /* 8018EB10 */ void MemCardGotoIPLSelect();
    /* 8018EBCC */ void MemCardGotoIPL();
    /* 8018EC4C */ void noSaveSelDispInit();
    /* 8018ECBC */ void MemCardNoSaveSelDisp();
    /* 8018ED80 */ void MemCardErrMsgWaitNoSaveSel();
    /* 8018EF5C */ void formatYesSelDispInitSet();
    /* 8018EFAC */ void formatNoSelDispInitSet();
    /* 8018EFFC */ void MemCardFormatYesSelDisp();
    /* 8018F080 */ void MemCardFormatNoSelDisp();
    /* 8018F128 */ void MemCardErrMsgWaitFormatSel();
    /* 8018F17C */ void formatYesSel2DispInitSet();
    /* 8018F1CC */ void MemCardErrMsgWaitFormatSel2();
    /* 8018F228 */ void MemCardFormatYesSel2Disp();
    /* 8018F2A4 */ void MemCardFormat();
    /* 8018F304 */ void MemCardFormatWait();
    /* 8018F374 */ void MemCardFormatCheck();
    /* 8018F400 */ void MemCardMakeGameFileSel();
    /* 8018F488 */ void MemCardMakeGameFileSelDisp();
    /* 8018F580 */ void MemCardMakeGameFile();
    /* 8018F5E0 */ void MemCardMakeGameFileWait();
    /* 8018F650 */ void MemCardMakeGameFileCheck();
    /* 8018F6DC */ void MemCardMsgWindowInitOpen();
    /* 8018F8D8 */ void MemCardMsgWindowOpen();
    /* 8018F974 */ void MemCardMsgWindowClose();
    /* 8018FA2C */ void errYesNoSelect();
    /* 8018FB80 */ void errCurMove(u8);
    /* 8018FBF8 */ void MemCardErrYesNoCursorMoveAnm();
    /* 8018FC64 */ void errorTxtSet(u16);
    /* 8018FD30 */ void errorTxtChangeAnm();
    /* 8018FE18 */ bool fileRecScaleAnm();
    /* 8018FE64 */ void fileRecScaleAnmInitSet2(f32, f32);
    /* 8018FEF4 */ bool fileRecScaleAnm2();
    /* 8018FF9C */ bool fileInfoScaleAnm();
    /* 80190074 */ void nameMoveAnmInitSet(int, int);
    /* 80190124 */ bool nameMoveAnm();
    /* 80190208 */ void MemCardSaveDataClear();
    /* 80190254 */ void setInitSaveData();
    /* 801902B8 */ void dataSave();

    bool getFadeFlag() { return mFadeFlag; }
    int isDataNew(u8 i) { return mDataNew[i]; }
    int isSelectEnd() { return mSelectEnd; }
    u8 getSelectNum() { return mSelectNum; }
    void setUseType(u8 type) { mUseType = type; }

    /* 0x0000 */ void* vtable;                           
    /* 0x0004 */ u8 field_0x04[4];                       
    /* 0x0008 */ JKRArchive* mpArchive;                  
    /* 0x000C */ dFile_select3D_c* mpFileSelect3d;       
    /* 0x0010 */ dDlst_FileSel_c mFileSelectDlst;        
    /* 0x0018 */ JUTFont* mpMessageFont;                 
    /* 0x001C */ JUTFont* mpSubFont;                     
    /* 0x0020 */ dMsgString_c* mpMessageString;          
    /* 0x0024 */ dDlst_FileSelDt_c mFileSelDeleteDlst;   
    /* 0x0034 */ dDlst_FileSelCp_c mFileSelCopyDlst;     
    /* 0x0048 */ dDlst_FileSelYn_c mFileSelYesNoDlst;    
    /* 0x0054 */ dDlst_FileSel3m_c mFileSel3mDlst;       
    /* 0x005C */ u8 field_0x005c[4];                       
    /* 0x0060 */ dSelect_cursor_c* mpCursor1;            
    /* 0x0064 */ dSelect_cursor_c* mpCursor2;            
    /* 0x0068 */ dName_c* mpName;                        
    /* 0x006C */ dFile_warning_c* mpFileWarning;         
    /* 0x0070 */ u8 field_0x70[0xc];                     
    /* 0x007C */ dFile_info_c* mpFileInfo[2];            
    /* 0x0084 */ J2DAnmTransform* mpAnmBase[7]; // this might be 7 individual pointers and not an array              
    /* 0x00A0 */ u8 field_0x00a0[4];                       
    /* 0x00A4 */ CPaneMgr* field_0x00a4;                    
    /* 0x00A8 */ u8 field_0x00a8[0xb0-0xa8];               
    /* 0x00B0 */ s32 field_0x00b0;
    /* 0x00B4 */ s32 field_0x00b4;
    /* 0x00B8 */ u8 field_0x00b8;
    /* 0x00B9 */ u8 field_0x00b9;
    /* 0x00BA */ u8 field_0x00ba;
    /* 0x00BB */ u8 field_0x00bb;
    /* 0x00BC */ CPaneMgr* field_0x00bc[3];
    /* 0x00C8 */ f32 field_0x00c8;
    /* 0x00CC */ u8 field_0x00cc[8];
    /* 0x00D4 */ float field_0x00d4;
    /* 0x00D8 */ u8 field_0x00d8[8];
    /* 0x00E0 */ s32 field_0x00e0[3];
    /* 0x00EC */ s32 field_0x00ec;
    /* 0x00F0 */ u8 field_0x00f0[0x108 - 0xf0];
    /* 0x0108 */ bool field_0x0108;                       
    /* 0x0109 */ bool field_0x0109;                       
    /* 0x010A */ u8 field_0x10a[2];                      
    /* 0x010C */ J2DPane* mpPane;                        
    /* 0x0110 */ int field_0x0110;
    /* 0x0110 */ int field_0x0114;
    /* 0x0118 */ J2DPane* field_0x0118;
    /* 0x011C */ J2DPane* field_0x011c;
    /* 0x0120 */ int field_0x0120;
    /* 0x0124 */ int field_0x0124;
    /* 0x0128 */ bool field_0x0128;
    /* 0x0129 */ u8 field_0x0129[0x012C - 0x0129];
    /* 0x012C */ J2DPane* field_0x012c;
    /* 0x0130 */ int field_0x0130;
    /* 0x0134 */ int field_0x0134;
    /* 0x0138 */ u8 field_0x0138[0x014A - 0x0138];
    /* 0x014A */ bool field_0x014a;
    /* 0x014B */ bool field_0x014b;
    /* 0x014C */ u8 field_0x014C[0x0188 - 0x014C];
    /* 0x0188 */ CPaneMgr* field_0x0188[3];
    /* 0x0194 */ u8 field_0x0194[0x01C8 - 0x0194];
    /* 0x01C8 */ J2DAnmBase* field_0x01c8;
    /* 0x01CC */ s32 field_0x01cc;
    /* 0x01D0 */ J2DAnmBase* field_0x01d0;
    /* 0x01D4 */ s32 field_0x01d4;
    /* 0x01D8 */ J2DAnmBase* field_0x01d8;
    /* 0x01DC */ s32 field_0x01dc;
    /* 0x01E0 */ J2DAnmBase* field_0x01e0;
    /* 0x01E4 */ s32 field_0x01e4;
    /* 0x01E8 */ J2DAnmBase* field_0x01e8;
    /* 0x01EC */ s32 field_0x01ec;
    /* 0x01F0 */ J2DAnmBase* field_0x01f0;
    /* 0x01F4 */ s32 field_0x01f4;
    /* 0x01F8 */ J2DAnmBase* field_0x01f8;
    /* 0x01FC */ s32 field_0x01fc;
    /* 0x0200 */ J2DAnmBase* field_0x0200;
    /* 0x0204 */ s32 field_0x0204;
    /* 0x0208 */ u8 field_0x0208;
    /* 0x0209 */ u8 field_0x0209;
    /* 0x020A */ u8 field_0x020a;
    /* 0x020B */ u8 field_0x020b;
    /* 0x020C */ CPaneMgrAlpha* field_0x020c;
    /* 0x0210 */ u8 field_0x0210[0x021C - 0x0210];
    /* 0x021C */ u8 field_0x021c;
    /* 0x021D */ u8 field_0x021d;
    /* 0x021E */ u8 field_0x021e;
    /* 0x021F */ u8 field_0x021f;
    /* 0x0220 */ CPaneMgrAlpha* field_0x0220[3];
    /* 0x022C */ CPaneMgrAlpha* field_0x022c[3];
    /* 0x0238 */ CPaneMgrAlpha* field_0x0238;
    /* 0x023C */ CPaneMgrAlpha* field_0x023c;
    /* 0x0240 */ CPaneMgrAlpha* field_0x0240;
    /* 0x0244 */ CPaneMgrAlpha* field_0x0244;
    /* 0x0248 */ u8 field_0x0248[0x024A - 0x0248];
    /* 0x024A */ bool field_0x024a;
    /* 0x024B */ u8 field_0x024b;
    /* 0x024C */ u8 field_0x024c;
    /* 0x024B */ u8 field_0x024d[3];
    /* 0x0250 */ char* field_0x0250;
    /* 0x0254 */ STControl* mStick;
    /* 0x0258 */ u8 mDataNew[3];
    /* 0x025B */ u8 field_0x025b[3];
    /* 0x025C */ u8 field_0x025e[0x0264 - 0x025e];
    /* 0x0264 */ u8 mLastSelectNum; // previously selected quest log
    /* 0x0265 */ u8 mSelectNum; // currently selected quest log
    /* 0x0266 */ u8 mLastSelectMenuNum; // previously select menu number (for copy / start / delete)
    /* 0x0267 */ u8 mSelectMenuNum; // currently selected menu number  (for copy / start / delete)
    /* 0x0268 */ u8 field_0x0268[0x026A - 0x0268];
    /* 0x026A */ u8 field_0x026a;
    /* 0x026B */ u8 field_0x026b[0x026e - 0x026b];
    /* 0x026E */ u8 field_0x026e;
    /* 0x026F */ u8 field_0x026f;
    /* 0x0270 */ bool mSelectEnd;
    /* 0x0271 */ u8 field_0x0271;
    /* 0x0272 */ u8 field_0x0272[0x0281 - 0x0272];
    /* 0x0281 */ bool field_0x0281;
    /* 0x0282 */ bool field_0x0282;
    /* 0x0283 */ bool field_0x0283;
    /* 0x0284 */ u8 field_0x0284[0x029C - 0x0284];
    /* 0x029C */ J2DAnmTransform* field_0x029c;
    /* 0x02A0 */ J2DAnmTransform* field_0x02a0;
    /* 0x02A4 */ CPaneMgr* field_0x02a4[3];
    /* 0x02B0 */ u8 field_0x02b0[0x2c0-0x2b0];
    /* 0x02C0 */ CPaneMgr* field_0x02c0;
    /* 0x02C4 */ CPaneMgr* field_0x02c4;
    /* 0x02C8 */ CPaneMgr* field_0x02c8;
    /* 0x02CC */ CPaneMgr* field_0x02cc;
    /* 0x02D0 */ CPaneMgr* field_0x02d0;
    /* 0x02D4 */ CPaneMgr* field_0x02d4;
    /* 0x02D8 */ u8 field_0x02d8[0x2e8-0x2d8];
    /* 0x02E8 */ J2DAnmBase* field_0x02e8;
    /* 0x02EC */ s32 field_0x02ec;
    /* 0x02F0 */ J2DAnmBase* field_0x02f0;
    /* 0x02F4 */ s32 field_0x02f4;
    /* 0x02F8 */ J2DAnmBase* field_0x02f8;
    /* 0x02FC */ s32 field_0x02fc;
    /* 0x0300 */ J2DAnmBase* field_0x0300;
    /* 0x0304 */ s32 field_0x0304;
    /* 0x0308 */ J2DAnmBase* field_0x0308;
    /* 0x030C */ s32 field_0x030c;
    /* 0x0310 */ J2DAnmBase* field_0x0310;
    /* 0x0314 */ J2DAnmBase* field_0x0314;
    /* 0x0318 */ J2DAnmBase* field_0x0318;
    /* 0x031C */ s32 field_0x031c; // J2DAnmTransform*?
    /* 0x0320 */ J2DAnmBase* field_0x0320;
    /* 0x0324 */ s32 field_0x0324;
    /* 0x0328 */ J2DAnmTransform* field_0x0328;
    /* 0x032C */ J2DAnmTransform* field_0x032c;
    /* 0x0330 */ J2DAnmBase* field_0x0330;
    /* 0x0334 */ s32 field_0x0334;
    /* 0x0338 */ J2DAnmBase* field_0x0338;
    /* 0x033C */ s32 field_0x033c;
    /* 0x0340 */ CPaneMgr* field_0x0340[3];
    /* 0x034C */ s32 field_0x034c[3];
    /* 0x0358 */ int field_0x0358;
    /* 0x035C */ int field_0x035c;
    /* 0x0360 */ bool field_0x0360;
    /* 0x0361 */ u8 field_0x0361[3];
    /* 0x0364 */ CPaneMgrAlpha* mpPaneAlpha1;
    /* 0x0368 */ u8 field_0x0368[8];
    /* 0x0370 */ CPaneMgrAlpha* mpPaneAlpha2;
    /* 0x0374 */ u8 field_0x0374[8];
    /* 0x037C */ CPaneMgrAlpha* mpPaneAlpha3;
    /* 0x0380 */ u8 field_0x0380[8];
    /* 0x0388 */ u8 field_0x0388;
    /* 0x0389 */ u8 field_0x0389;
    /* 0x038A */ u8 field_0x038a;
    /* 0x038B */ u8 field_0x038b;
    /* 0x038C */ u8 field_0x038c;
    /* 0x038D */ u8 field_0x038d;
    /* 0x038E */ u8 field_0x038e;
    /* 0x038F */ u8 field_0x038f;
    /* 0x0390 */ u8 field_0x0390[4];
    /* 0x0394 */ CPaneMgr* mpPaneMgr2;
    /* 0x0398 */ u8 field_0x0398[0x03A0 - 0x0398];
    /* 0x03A0 */ J2DAnmBase* field_0x03a0;
    /* 0x03A4 */ s32 field_0x03a4;
    /* 0x03A8 */ CPaneMgr* field_0x03a8;
    /* 0x03AC */ s16 field_0x03ac;
    /* 0x03AE */ u8 field_0x03AE[0x03B0 - 0x03AE];
    /* 0x03B0 */ u8 mUseType;
    /* 0x03B1 */ u8 field_0x03b1;
    /* 0x03B2 */ u8 field_0x03b2[6];
    /* 0x03B8 */ char mpMemCard;
    /* 0x03B9 */ u8 field_0x03b9[3];
    /* 0x03BC */ u8 field_0x03bc[0x3E0 - 0x3BC];
    /* 0x03E0 */ dSv_save_c* mpSave;
    /* 0x03E4 */ u8 field_0x03e4[4];
    /* 0x03E8 */ u8 field_0x03e8[0x2374 - 0x3E8];
    /* 0x2374 */ bool mFadeFlag;
    /* 0x2375 */ bool mHasDrawn;
    /* 0x2376 */ u8 field_0x2376[0x2378 - 0x2376];
    /* 0x2378 */ J2DPicture* field_0x2378;
};
STATIC_ASSERT(sizeof(dFile_select_c) == 0x237C);

#endif /* D_FILE_D_FILE_SELECT_H */
