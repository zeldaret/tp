#ifndef D_S_D_S_NAME_H
#define D_S_D_S_NAME_H

#include "dolphin/types.h"
#include "f_op/f_op_camera_mng.h"
#include "f_op/f_op_scene.h"

class JKRExpHeap;
class dFile_select_c;
class dBrightCheck_c;

class dScnName_camera_c : public camera_process_class {
public:
    dScnName_camera_c() { field_0x22f = 84; }
    /* 80259294 */ virtual ~dScnName_camera_c() {}
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
