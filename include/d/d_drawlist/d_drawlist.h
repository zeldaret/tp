#ifndef D_DRAWLIST_H_
#define D_DRAWLIST_H_

#include "dolphin/types.h"

class dDlst_FileInfo_c {
   public:
    void draw(void);
    ~dDlst_FileInfo_c();

   private:
};

class dDlst_peekZ_c {
   u8 unk[4];
}; // actual size unknown!!!

class dDlst_list_c {
   public:
    static u32 mWipeColor;
    static u32 mWipeDlst;
    static u32 mWipeRate;
    static u32 mWipeSpeed;

   // private:
    /* 0x00000 */ u8 unk[0x16180];
    /* 0x16180 */ dDlst_peekZ_c dlstPeekZ;
    /* 0x16184 */ u8 unk_0x16194[0x1C];
}; // Size: 0x161A0

#endif D_DRAWLIST_H_