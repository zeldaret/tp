#ifndef D_D_RESORCE_H
#define D_D_RESORCE_H

#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_dvd_thread.h"
#include "m_Do/m_Do_ext.h"

class dRes_info_c {
public:
    /* 8003A260 */ dRes_info_c();
    /* 8003A280 */ ~dRes_info_c();
    /* 8003A348 */ int set(char const*, char const*, u8, JKRHeap*);
    /* 8003AB30 */ void onWarpMaterial(J3DModelData*);
    /* 8003AC1C */ void offWarpMaterial(J3DModelData*);
    /* 8003AD08 */ void setWarpSRT(J3DModelData*, cXyz const&, f32, f32);
    /* 8003AE14 */ void loaderBasicBmd(u32, void*);
    /* 8003B30C */ int loadResource();
    /* 8003B998 */ void deleteArchiveRes();
    /* 8003BAC4 */ int setRes(JKRArchive*, JKRHeap*);
    /* 8003BAF8 */ int setRes();
    /* 8003BD2C */ static void dump_long(dRes_info_c*, int);
    /* 8003BE38 */ static void dump(dRes_info_c*, int);

    void* getRes(u32 resIdx) { return *(mRes + resIdx); }
    int getCount() { return mCount; }
    char* getArchiveName() { return mArchiveName; }
    mDoDvdThd_mountArchive_c* getDMCommand() { return mDMCommand; }
    JKRArchive* getArchive() { return mArchive; }
    void incCount() { mCount++; }
    u16 decCount() {
        mCount--;
        return mCount;
    }

private:
    /* 0x00 */ char mArchiveName[11];
    /* 0x0C */ u16 mCount;
    /* 0x10 */ mDoDvdThd_mountArchive_c* mDMCommand;
    /* 0x14 */ JKRArchive* mArchive;
    /* 0x18 */ JKRHeap* heap;
    /* 0x1C */ JKRSolidHeap* mDataHeap;
    /* 0x20 */ void** mRes;
};  // Size: 0x24

STATIC_ASSERT(sizeof(dRes_info_c) == 0x24);

class dRes_control_c {
public:
    dRes_control_c() {}
    /* 8003BFB0 */ ~dRes_control_c();
    /* 8003C078 */ static int setRes(char const*, dRes_info_c*, int, char const*, u8, JKRHeap*);
    /* 8003C160 */ static int syncRes(char const*, dRes_info_c*, int);
    /* 8003C194 */ static int deleteRes(char const*, dRes_info_c*, int);
    /* 8003C37C */ static void* getRes(char const*, char const*, dRes_info_c*, int);
    /* 8003C1E4 */ static dRes_info_c* getResInfo(char const*, dRes_info_c*, int);
    /* 8003C260 */ static dRes_info_c* newResInfo(dRes_info_c*, int);
    /* 8003C288 */ static dRes_info_c* getResInfoLoaded(char const*, dRes_info_c*, int);
    /* 8003C2EC */ static void* getRes(char const*, s32, dRes_info_c*, int);
    /* 8003C400 */ static void* getIDRes(char const*, u16, dRes_info_c*, int);
    /* 8003C470 */ static int syncAllRes(dRes_info_c*, int);
    /* 8003C4E4 */ int setObjectRes(char const*, void*, u32, JKRHeap*);
    /* 8003C5BC */ int setStageRes(char const*, JKRHeap*);
    /* 8003C638 */ void dump();
    /* 8003C6B8 */ int getObjectResName2Index(char const*, char const*);

    int setObjectRes(const char* name, u8 param_1, JKRHeap* heap) {
        return setRes(name, &mObjectInfo[0], ARRAY_SIZE(mObjectInfo), "/res/Object/", param_1,
                      heap);
    }

    void* getObjectRes(const char* arcName, const char* resName) {
        return getRes(arcName, resName, &mObjectInfo[0], ARRAY_SIZE(mObjectInfo));
    }

    void* getObjectRes(const char* arcName, s32 param_1) {
        return getRes(arcName, param_1, &mObjectInfo[0], ARRAY_SIZE(mObjectInfo));
    }

    void* getObjectIDRes(const char* arcName, u16 id) {
        return getIDRes(arcName, id, &mObjectInfo[0], ARRAY_SIZE(mObjectInfo));
    }

    int syncObjectRes(const char* name) {
        return syncRes(name, &mObjectInfo[0], ARRAY_SIZE(mObjectInfo));
    }

    int deleteObjectRes(const char* name) {
        return deleteRes(name, &mObjectInfo[0], ARRAY_SIZE(mObjectInfo));
    }

    void* getStageRes(const char* arcName, const char* resName) {
        return getRes(arcName, resName, &mStageInfo[0], ARRAY_SIZE(mStageInfo));
    }

    dRes_info_c* getObjectResInfo(const char* arcName) {
        return getResInfo(arcName, &mObjectInfo[0], ARRAY_SIZE(mObjectInfo));
    }

    /* 0x0000 */ dRes_info_c mObjectInfo[0x80];
    /* 0x1200 */ dRes_info_c mStageInfo[0x40];
};  // Size: 0x1B00

#endif /* D_D_RESORCE_H */
