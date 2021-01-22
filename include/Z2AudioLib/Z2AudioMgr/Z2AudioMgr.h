#ifndef Z2AUDIOMGR_H_
#define Z2AUDIOMGR_H_
#include "JSystem/JKernel/JKRAramArchive/JKRAramArchive.h"
#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "Z2AudioLib/Z2SceneMgr/Z2SceneMgr.h"
struct Z2AudioMgr {
    Z2AudioMgr();
    ~Z2AudioMgr();
    void gframeProcess(void);
    Z2AudioMgr* setOutputMode(unsigned long outputMode);
    u32 resetProcess(u32 param_1, bool param_2);
    bool hasReset(void) const;
    void resetRecover(void);
    void init(JKRSolidHeap*, unsigned long, void*, JKRArchive*);

    u8 unk_1[0x4a4];
    Z2SceneMgr sceneMgr;
    u8 unk_2[0xdad];
};

extern "C" {
void setOutputMode__10Z2AudioMgrFUl(void);
void setOutputMode__9JASDriverFUl(void);
}

extern Z2AudioMgr lbl_803DBF4C;
extern Z2AudioMgr* lbl_80451368;

#endif