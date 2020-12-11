#include "global.h"
#include "Z2AudioLib/Z2SceneMgr/Z2SceneMgr.h"

struct Z2AudioMgr{
    void gframeProcess(void);
    Z2AudioMgr* setOutputMode(u32 param_1); 
    u32 resetProcess(u32 param_1, bool param_2);
    bool hasReset(void) const;
    void resetRecover(void);
    ~Z2AudioMgr();
    
    u8 p1[0x4a4];
    Z2SceneMgr sceneMgr;
    u8 p2[0xdad];
};