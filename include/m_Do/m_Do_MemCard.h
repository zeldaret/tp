#ifndef M_DO_M_DO_MEMCARD_H
#define M_DO_M_DO_MEMCARD_H

#include "dolphin/os/OS.h"
#include "dolphin/types.h"
#include "global.h"

class mDoMemCd_Ctrl_c {
public:
    /* 8001672C */ mDoMemCd_Ctrl_c();
    /* 80016730 */ void ThdInit();
    /* 800167D0 */ void main();
    /* 80016894 */ void update();
    /* 800169B4 */ void load();
    /* 80016A0C */ void restore();
    /* 80016AB0 */ void LoadSync(void*, u32, u32);
    /* 80016B58 */ void save(void*, u32, u32);
    /* 80016BD4 */ void store();
    /* 80016CE0 */ void SaveSync();
    /* 80016D74 */ void getStatus(u32);
    /* 80016E58 */ void command_format();
    /* 80016EA8 */ void format();
    /* 80016F2C */ void FormatSync();
    /* 80016FB8 */ void attach();
    /* 800170B8 */ void command_attach();
    /* 80017110 */ void detach();
    /* 80017148 */ void mount();
    /* 80017274 */ void loadfile();
    /* 800172D4 */ void checkspace();
    /* 80017360 */ void setCardState(s32);

    /* 0x0000 */ u8 field_0x0[0x1FBC];
    /* 0x1FBC */ u8 field_0x1fbc;
    /* 0x1FBD */ u8 mCopyToPos;
    /* 0x1FBE */ u8 mProbeStat;
    /* 0x1FC0 */ u32 field_0x1fc0;
    /* 0x1FC4 */ u32 field_0x1fc4;
    /* 0x1FC8 */ u32 field_0x1fc8;
    /* 0x1FCC */ OSMutex field_0x1fcc;
    /* 0x1FE4 */ OSCond field_0x1fe4;
    /* 0x1FEC */ u32 mNandState;
    /* 0x1FF0 */ u64 field_0x1ff0;
    /* 0x1FF8 */ u32 mDataVersion;
};  // Size: 0x2000

STATIC_ASSERT(sizeof(mDoMemCd_Ctrl_c) == 8192);

extern mDoMemCd_Ctrl_c g_mDoMemCd_control;

#endif /* M_DO_M_DO_MEMCARD_H */
