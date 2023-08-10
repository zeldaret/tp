#ifndef D_S_D_S_NAME_H
#define D_S_D_S_NAME_H

#include "dolphin/types.h"
#include "f_op/f_op_camera_mng.h"
#include "f_op/f_op_scene.h"

class dSn_HIO_c {
public:
    /* 8025878C */ dSn_HIO_c();
    /* 802592DC */ virtual ~dSn_HIO_c() {}

    /* 0x4 */ s8 field_0x4;
    /* 0x5 */ u8 mFileSelWaitTime;
};

class dScnName_camera_c : public camera_process_class {
public:
    dScnName_camera_c() { field_0x22f = 84; }
    /* 80259294 */ virtual ~dScnName_camera_c() {}
};

// remove later and use header instead
class dFile_select_c {
public:
    /* 8018366C */ dFile_select_c(JKRArchive*);
    /* 8018375C */ virtual ~dFile_select_c();
    /* 801843CC */ void _create();
    /* 801844FC */ void _move();
    /* 8018DD38 */ void _draw();

    bool getFadeFlag() { return mFadeFlag; }
    int isDataNew(u8 i) { return mDataNew[i]; }
    int isSelectEnd() { return mSelectEnd; }
    u8 getSelectNum() { return mSelectNum; }
    void setUseType(u8 type) { mUseType = type; }

private:
    u8 field_0x4[0x254];
    /* 0x0258 */ u8 mDataNew[3];
    /* 0x025B */ u8 field_0x25b[0x265 - 0x25b];
    /* 0x0265 */ u8 mSelectNum;
    /* 0x0266 */ u8 field_0x266[0x270 - 0x266];
    /* 0x0270 */ bool mSelectEnd;
    /* 0x0271 */ u8 field_0x271[0x3b0 - 0x271];
    /* 0x03B0 */ u8 mUseType;
    /* 0x03B1 */ u8 field_0x3b1[0x2374 - 0x3b1];
    /* 0x2374 */ bool mFadeFlag;
    /* 0x2375 */ u8 field_0x2375[0x237c - 0x2375];
};

// remove later and use header instead
class dBrightCheck_c {
public:
    /* 80192F10 */ dBrightCheck_c(JKRArchive*);
    /* 80192F98 */ virtual ~dBrightCheck_c();
    /* 801934D0 */ void _move();
    /* 80193594 */ void _draw();

    bool isEnd() { return mEnd; }

    u8 field_0x4[0x15];
    /* 0x19 */ bool mEnd;
};

class dScnName_c : public scene_class {
public:
    dScnName_c() {}

    /* 802588A0 */ s32 create();
    /* 80258B2C */ void setView();
    /* 80258BC8 */ s32 execute();
    /* 80258C5C */ s32 draw();
    /* 80258CC8 */ ~dScnName_c();
    /* 80258DD0 */ void FileSelectOpen();
    /* 80258E34 */ void FileSelectMain();
    /* 80258E78 */ void FileSelectMainNormal();
    /* 80258F20 */ void FileSelectClose();
    /* 80258FD4 */ void brightCheckOpen();
    /* 80259008 */ void brightCheck();
    /* 802590F8 */ void changeGameScene();

private:
    /* 0x1C4 */ request_of_phase_process_class field_0x1c4;
    /* 0x1CC */ JKRExpHeap* mHeap;
    /* 0x1D0 */ JKRExpHeap* field_0x1d0;
    /* 0x1D4 */ dScnName_camera_c mCamera;
    /* 0x414 */ dFile_select_c* dFs_c;
    /* 0x418 */ dBrightCheck_c* mBrightCheck;
    /* 0x41C */ u8 field_0x41c;
    /* 0x41D */ u8 field_0x41d;
    /* 0x41E */ u8 field_0x41e;
    /* 0x41F */ u8 field_0x41f;
    /* 0x420 */ u8 field_0x420;
};

#endif /* D_S_D_S_NAME_H */
