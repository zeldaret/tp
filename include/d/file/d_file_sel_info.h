#ifndef D_FILE_D_FILE_SEL_INFO_H
#define D_FILE_D_FILE_SEL_INFO_H

#include "d/d_drawlist.h"
#include "dolphin/types.h"

class CPaneMgrAlpha;
class dSv_save_c;

class dFile_info_c {
public:
    /* 80192434 */ dFile_info_c(JKRArchive*, u8);
    /* 80192570 */ void screenSet();
    /* 80192954 */ int setSaveData(dSv_save_c*, int, u8);
    /* 80192AA0 */ void setHeartCnt(dSv_save_c*);
    /* 80192C08 */ void setSaveDate(dSv_save_c*);
    /* 80192C70 */ void setPlayTime(dSv_save_c*);
    /* 80192D58 */ void modeWait();
    /* 80192D5C */ void modeMove();
    /* 80192D60 */ void _draw();

    /* 801924A0 */ virtual ~dFile_info_c();

    void setBasePane(J2DPane* pane) { mFileInfo.mBasePane = pane; }
    CPaneMgrAlpha* getDatBase() { return mDatBase; }
    CPaneMgrAlpha* getNoDatBase() { return mNoDatBase; }
    void draw() { _draw(); }

private:
    /* 0x04 */ JKRArchive* mArchive;
    /* 0x08 */ dDlst_FileInfo_c mFileInfo;
    /* 0x1C */ u8 field_0x1c[4];
    /* 0x20 */ u8 field_0x20;
    /* 0x21 */ u8 field_0x21;
    /* 0x22 */ u8 field_0x22;
    /* 0x24 */ CPaneMgrAlpha* mDatBase;
    /* 0x28 */ CPaneMgrAlpha* mNoDatBase;
    /* 0x2C */ char* mPlayerName;
    /* 0x30 */ char* mSaveDate;
    /* 0x34 */ char* mPlayTime;
    /* 0x38 */ char* mSaveStatus;
};

typedef void (dFile_info_c::*warningFunc)(void);

#endif /* D_FILE_D_FILE_SEL_INFO_H */
