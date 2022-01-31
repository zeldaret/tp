#ifndef M_DO_M_DO_DVD_THREAD_H
#define M_DO_M_DO_DVD_THREAD_H

#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JKernel/JKRMemArchive.h"
#include "dolphin/types.h"
#include "f_pc/f_pc_node.h"

typedef void* (*mDoDvdThd_callback_func)(void*);

class mDoDvdThd_command_c : public node_class {
public:
    /* 0x0C */ bool mIsDone;
    /* 0x10  vtable*/
public:
    /* 800158FC */ virtual ~mDoDvdThd_command_c();
    /* 80015B74 */ mDoDvdThd_command_c();
    inline s32 sync() { return mIsDone; }
    inline void destroy() { delete this; }
    virtual s32 execute() = 0;
};  // Size = 0x14

class mDoDvdThd_toMainRam_c : public mDoDvdThd_command_c {
public:
    /* 80016338 */ mDoDvdThd_toMainRam_c(u8);
    /* 80016394 */ static mDoDvdThd_toMainRam_c* create(char const*, u8, JKRHeap*);
    /* 8001645C */ virtual ~mDoDvdThd_toMainRam_c();
    /* 800164BC */ virtual s32 execute();

private:
    /* 0x14 */ u8 mMountDirection;
    /* 0x18 */ s32 mEntryNum;
    /* 0x1C */ void* mData;
    /* 0x20 */ s32 mDataSize;
    /* 0x24 */ JKRHeap* mHeap;
};  // Size = 0x28

class mDoDvdThd_param_c {
public:
    /* 80015944 */ mDoDvdThd_param_c();
    /* 8001598C */ void kick();
    /* 800159B4 */ s32 waitForKick();
    /* 800159DC */ mDoDvdThd_command_c* getFirstCommand();
    /* 800159E4 */ void addition(mDoDvdThd_command_c*);
    /* 80015A3C */ void cut(mDoDvdThd_command_c*);
    /* 80015AD8 */ void mainLoop();

private:
    /* 0x00 */ OSMessageQueue mMessageQueue;
    /* 0x20 */ void* mMessageQueueMessages;
    /* 0x24 */ node_list_class mNodeList;
    /* 0x30 */ OSMutex mMutext;
};  // Size = 0x48

class mDoDvdThd_mountXArchive_c : public mDoDvdThd_command_c {
public:
    /* 80016108 */ virtual ~mDoDvdThd_mountXArchive_c();
    /* 80016168 */ mDoDvdThd_mountXArchive_c(u8, JKRArchive::EMountMode);
    /* 800161E0 */ static mDoDvdThd_mountXArchive_c* create(char const*, u8, JKRArchive::EMountMode,
                                                            JKRHeap*);
    /* 800162B0 */ virtual s32 execute();

private:
    /* 0x14 */ u8 mMountDirection;
    /* 0x18 */ s32 mEntryNum;
    /* 0x1C */ JKRArchive* mArchive;
    /* 0x20 */ JKRArchive::EMountMode mMountMode;
    /* 0x24 */ JKRHeap* mHeap;
};  // Size = 0x28

class mDoDvdThd_mountArchive_c : public mDoDvdThd_command_c {
public:
    /* 80015D44 */ virtual ~mDoDvdThd_mountArchive_c();
    /* 80015DA4 */ mDoDvdThd_mountArchive_c(u8);
    /* 80015E14 */ static mDoDvdThd_mountArchive_c* create(char const*, u8, JKRHeap*);
    /* 80015EDC */ virtual s32 execute();

    JKRMemArchive* getArchive() const { return mArchive; }
    JKRHeap* getHeap() const { return mHeap; }

private:
    /* 0x14 */ u8 mMountDirection;
    /* 0x18 */ s32 mEntryNumber;
    /* 0x1C */ JKRMemArchive* mArchive;
    /* 0x20 */ JKRHeap* mHeap;
};  // Size = 0x24

class mDoDvdThd_callback_c : public mDoDvdThd_command_c {
public:
    /* 80015BB8 */ virtual ~mDoDvdThd_callback_c();
    /* 80015C18 */ mDoDvdThd_callback_c(mDoDvdThd_callback_func, void*);
    /* 80015C74 */ static mDoDvdThd_callback_c* create(mDoDvdThd_callback_func, void*);
    /* 80015CF0 */ virtual s32 execute();

private:
    /* 0x14 */ mDoDvdThd_callback_func mFunction;
    /* 0x18 */ void* mData;
    /* 0x1C */ void* mResult;
};

struct mDoDvdThdStack {
    u8 stack[4096];
} __attribute__((aligned(16)));

struct mDoDvdThd {
    /* 800157FC */ static s32 main(void*);
    /* 80015858 */ static void create(s32);
    /* 800158B4 */ static void suspend();

    static OSThread l_thread;
    static mDoDvdThdStack l_threadStack;
    static mDoDvdThd_param_c l_param;
};

#endif /* M_DO_M_DO_DVD_THREAD_H */
