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

extern Z2AudioMgr lbl_803DBF4C;
extern Z2AudioMgr* lbl_80451368;

extern "C" {
void func_802CDCEC(void);
void func_8036679C(void);
void func_80362ABC(void);
void func_802CD7F8(void);
void func_802CDB1C(void);
void func_802CDB68(void);
void func_802CDC08(void);

void resetProcess__10Z2AudioMgrFUlb(void);
void setOutputMode__10Z2AudioMgrFUl(void);

void Z2AudioMgr_NS_gframeProcess(void);
void Z2AudioMgr_NS_init(void);
void Z2AudioMgr_NS_resetRecover(void);
void zeldaGFrameWork__10Z2AudioMgrFv(void);
}

#endif  // Z2AUDIOMGR_H_