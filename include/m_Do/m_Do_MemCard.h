#ifndef M_DO_M_DO_MEMCARD_H
#define M_DO_M_DO_MEMCARD_H

#include "dolphin/os/OS.h"
#include "dolphin/types.h"
#include "global.h"
#include "m_Do/m_Do_MemCardRWmng.h"

class mDoMemCd_Ctrl_c {
public:
    enum CardCommand {
        CARD_NO_COMMAND,
        CARD_RESTORE,
        CARD_STORE,
        CARD_FORMAT,
        CARD_ATTACH,
        CARD_DETACH,
    };

    /* 8001672C */ mDoMemCd_Ctrl_c();
    /* 80016730 */ void ThdInit();
    /* 800167D0 */ void main();
    /* 80016894 */ void update();
    /* 800169B4 */ void load();
    /* 80016A0C */ void restore();
    /* 80016AB0 */ s32 LoadSync(void*, u32, u32);
    /* 80016B58 */ void save(void*, u32, u32);
    /* 80016BD4 */ void store();
    /* 80016CE0 */ s32 SaveSync();
    /* 80016D74 */ u32 getStatus(u32);
    /* 80016E58 */ void command_format();
    /* 80016EA8 */ void format();
    /* 80016F2C */ s32 FormatSync();
    /* 80016FB8 */ void attach();
    /* 800170B8 */ void command_attach();
    /* 80017110 */ void detach();
    /* 80017148 */ s32 mount();
    /* 80017274 */ s32 loadfile();
    /* 800172D4 */ s32 checkspace();
    /* 80017360 */ void setCardState(s32);

    bool isCardCommNone() { return mCardCommand == CARD_NO_COMMAND; }
    u8 getProbeStat() { return mProbeStat; }
    void clearProbeStat() { mProbeStat = 2; }

    /* 0x0000 */ u8 mData[0x1FBC];
    /* 0x1FBC */ u8 mChannel;
    /* 0x1FBD */ u8 mCopyToPos;
    /* 0x1FBE */ u8 mProbeStat;
    /* 0x1FC0 */ s32 mCardCommand;
    /* 0x1FC4 */ s32 mCardState;
    /* 0x1FC8 */ s32 field_0x1fc8;
    /* 0x1FCC */ OSMutex mMutex;
    /* 0x1FE4 */ OSCond mCond;
    /* 0x1FEC */ u32 mNandState;
    /* 0x1FF0 */ u64 mSerialNo;
    /* 0x1FF8 */ u32 mDataVersion;
};  // Size: 0x2000

STATIC_ASSERT(sizeof(mDoMemCd_Ctrl_c) == 8192);

static int mDoMemCd_main(void*);

extern mDoMemCd_Ctrl_c g_mDoMemCd_control;

inline bool mDoMemCd_isCardCommNone() {
    return g_mDoMemCd_control.isCardCommNone();
}

inline void mDoMemCd_ThdInit() {
    g_mDoMemCd_control.ThdInit();
}

inline u8 mDoMemCd_getProbeStat() {
    return g_mDoMemCd_control.getProbeStat();
}

inline void mDoMemCd_clearProbeStat() {
    g_mDoMemCd_control.clearProbeStat();
}

#endif /* M_DO_M_DO_MEMCARD_H */
