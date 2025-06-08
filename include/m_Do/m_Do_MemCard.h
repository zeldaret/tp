#ifndef M_DO_M_DO_MEMCARD_H
#define M_DO_M_DO_MEMCARD_H

#include "card.h"
#include <dolphin/os.h>
#include "global.h"

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
    void setCopyToPos(u8 param_0) { mCopyToPos = param_0; }
    u32 getDataVersion() { return mDataVersion; }
    void setDataVersion(u32 version) { mDataVersion = version; }
    void getCardStatus(s32 fileNo, CARDStat* stat) { CARDGetStatus(mChannel, fileNo, stat); }
    void setCardStatus(s32 fileNo, CARDStat* stat) { CARDSetStatus(mChannel, fileNo, stat); }
    void setSerialNo() {
        u64 serial_no;
        CARDGetSerialNo(mChannel, &serial_no);
        mSerialNo = serial_no;
    }

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

inline void mDoMemCd_save(void* i_data, u32 param_1, u32 param_2) {
    g_mDoMemCd_control.save(i_data,param_1,param_2);
}

inline void mDoMemCd_Format() {
    g_mDoMemCd_control.command_format();
}

inline s32 mDoMemCd_FormatSync() {
    return g_mDoMemCd_control.FormatSync();
}

inline s32 mDoMemCd_SaveSync() {
    return g_mDoMemCd_control.SaveSync();
}

inline void mDoMemCd_Load() {
    g_mDoMemCd_control.load();
}

inline void mDoMemCd_setCopyToPos(u8 param_0) {
    g_mDoMemCd_control.setCopyToPos(param_0);
}

inline u32 mDoMemCd_getStatus(u8 param_0) {
    return g_mDoMemCd_control.getStatus(param_0);
}

inline u32 mDoMemCd_LoadSync(void* buffer, u32 size, u32 index) {
    return g_mDoMemCd_control.LoadSync(buffer, size, index);
}

inline u32 mDoMemCd_getDataVersion() {
    return g_mDoMemCd_control.getDataVersion();
}

inline void mDoMemCd_setDataVersion(u32 version) {
    g_mDoMemCd_control.setDataVersion(version);
}

inline void mDoMemCd_setSerialNo() {
    g_mDoMemCd_control.setSerialNo();
}

inline void mDoMemCd_getCardStatus(s32 fileNo, CARDStat* stat) {
    g_mDoMemCd_control.getCardStatus(fileNo, stat);
}

inline void mDoMemCd_setCardStatus(s32 fileNo, CARDStat* stat) {
    g_mDoMemCd_control.setCardStatus(fileNo, stat);
}

#endif /* M_DO_M_DO_MEMCARD_H */
