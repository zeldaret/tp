#include "d/d_file/d_file_sel_info/d_file_sel_info.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"

extern "C" {
char* strcpy(char*, const char*);
void __ct__9J2DScreenFv(void);
void __dl__FPv(void);
void __nw__FUl(void);
void CPaneMgrAlpha_X1_(void);
void dDlst_list_c_NS_set(void);
void dMeter2Info_c_NS_getString(void);
void func_80362324(void);
void func_80362540(void);
void func_803664DC(void);
void J2DScreen_NS_draw(void);
void J2DScreen_NS_setPriority(void);
void J2DTextBox_NS_getStringPtr(void);
void J2DTextBox_NS_setString_X1_(void);
void mDoExt_getMesgFont(void);
void mDoExt_removeMesgFont(void);
void screenSet__12dFile_info_cFv(void);
void setHeartCnt__12dFile_info_cFP10dSv_save_c(void);
void setPlayTime__12dFile_info_cFP10dSv_save_c(void);
void setSaveDate__12dFile_info_cFP10dSv_save_c(void);
}

extern u8 lbl_803BB598;
extern u8 lbl_803A6F88;
extern u8 lbl_803BB588;
extern u8 lbl_803948B8;
extern u8 lbl_803BB548;
extern u8 lbl_803BB4A8;
extern u8 lbl_80430188;
extern u8 lbl_804539F8;
extern u8 lbl_804539FC;
extern u8 lbl_803BB498;

asm dFile_info_c::dFile_info_c(JKRArchive*, u8) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192434.s"
}

asm dFile_info_c::~dFile_info_c(void) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_801924A0.s"
}

asm void dFile_info_c::screenSet(void) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192570.s"
}

// not even close
#if NONMATCHING
class JMSMesgEntry_c {};

extern void dMeter2Info_c_NS_getString(u32, char*, JMSMesgEntry_c*);
extern u8 DAT_804070D8;
extern u16 DAT_804061C2;
extern char DAT_80406374[16];
extern char DAT_803948D8;

s32 dFile_info_c::setSaveData(dSv_save_c* save_file, int param_2, u8 param_3) {
    if (param_2 == 0) {
        dMeter2Info_c_NS_getString(0x51, this->unk56, 0);
        return -1;
    } else {
        if (!save_file->getPlayer().getPlayerInfo().getLinkName()) {
            if ((this->unk34) && (param_3 == DAT_804070D8)) {
                save_file->getPlayer().getPlayerStatusA().getLife() = DAT_804061C2;
                this->setHeartCnt(save_file);
                save_file->getPlayer().getPlayerStatusA().getLife() = 0xC;
                strcpy(this->unk44, DAT_80406374);
                strcpy(this->save_date, (char*)DAT_803948D8);
                strcpy(this->play_time, (char*)DAT_803948D8);
                dMeter2Info_c_NS_getString(0x4d, this->unk56, 0);
                return 2;
            } else {
                dMeter2Info_c_NS_getString(0x4d, this->unk56, 0);
                return 1;
            }
        } else {
            this->setHeartCnt(save_file);
            strcpy(this->unk44, save_file->getPlayer().getPlayerInfo().getLinkName());
            setSaveDate(save_file);
            setPlayTime(save_file);
            return 0;
        }
    }
}
#else
asm s32 dFile_info_c::setSaveData(dSv_save_c* save_file, int param_2, u8 param_3) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192954.s"
}
#endif

asm void dFile_info_c::setHeartCnt(dSv_save_c*) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192AA0.s"
}

asm void dFile_info_c::setSaveDate(dSv_save_c*) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192C08.s"
}

asm void dFile_info_c::setPlayTime(dSv_save_c*) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192C70.s"
}

asm void dFile_info_c::modeWait(void) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192D58.s"
}

asm void dFile_info_c::modeMove(void) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192D5C.s"
}

asm void dFile_info_c::_draw(void) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192D60.s"
}

asm void dDlst_FileInfo_c::draw(void) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192D9C.s"
}

asm void _sinit_d_file_sel_info_cpp(void) {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192E88.s"
}

asm dDlst_FileInfo_c::~dDlst_FileInfo_c() {
    nofralloc
#include "d/d_file/d_file_sel_info/asm/func_80192EC8.s"
}