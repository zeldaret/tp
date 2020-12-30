#ifndef D_DRAWLIST_H_
#define D_DRAWLIST_H_

#include "dolphin/types.h"

class dDlst_FileInfo_c {
public:
    void draw(void);
    ~dDlst_FileInfo_c();

private:
};

class dDlst_list_c {
public:
    static u32 mWipeColor;
    static u32 mWipeDlst;
    static u32 mWipeRate;
    static u32 mWipeSpeed;

private:
    u8 unk[0x161A0];
};

#endif D_DRAWLIST_H_