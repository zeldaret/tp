#ifndef D_DRAWLIST_H_
#define D_DRAWLIST_H_

#include "dolphin/types.h"

class dDlst_FileInfo_c {
public:
    void draw(void);
    ~dDlst_FileInfo_c();

private:
};

#pragma pack(push, 1)
class dDlst_peekZ_c {
    u8 unk[7];
};  // actual size unknown!!!
#pragma pack(pop)

#pragma pack(push, 1)
class dDlst_list_c {
public:
    dDlst_list_c(void);
    void reset();
    static u32 mWipeColor;
    static u32 mWipeDlst;
    static u32 mWipeRate;
    static u32 mWipeSpeed;

    // private:
    /* 0x00000 */ u8 unk[0x16180];
    /* 0x16180 */ dDlst_peekZ_c dlstPeekZ;
    /* 0x16184 */ u8 unk_0x16194[0x1F];
};  // Size: 0x161A0
#pragma pack(pop)

#endif D_DRAWLIST_H_
