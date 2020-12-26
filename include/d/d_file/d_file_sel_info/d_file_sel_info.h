#ifndef D_FILE_SEL_INFO_H_
#define D_FILE_SEL_INFO_H_

#include "JSystem/J2DGraph/J2DScreen/J2DScreen.h"
#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "JSystem/JUtility/JUTFont/JUTFont.h"
#include "d/d_drawlist/d_drawlist.h"
#include "d/d_pane/d_pane_class_alpha/d_pane_class_alpha.h"
#include "d/d_save/d_save/d_save.h"

struct dFile_info_c_vtable {
    u32* addr1;
    u32* addr2;
    u32* dtor;
};

class dFile_info_c {
public:
    dFile_info_c(JKRArchive*, u8);
    ~dFile_info_c();
    void screenSet(void);
    s32 setSaveData(dSv_save_c*, int, u8);
    void setHeartCnt(dSv_save_c*);
    void setSaveDate(dSv_save_c*);
    void setPlayTime(dSv_save_c*);
    void modeWait(void);
    void modeMove(void);
    void _draw(void);

private:
    dFile_info_c_vtable vtable;
    JKRArchive* archive;
    dDlst_FileInfo_c file_info_draw_list;
    J2DScreen* screen;
    JUTFont* font;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u8 unk32;
    u8 unk33;
    u8 unk34;
    u8 unk35;
    CPaneMgrAlpha* w_dat_i1;
    CPaneMgrAlpha* w_nda_i1;
    char* unk44;
    char* save_date;
    char* play_time;
    char* unk56;
};

#endif