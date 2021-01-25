#ifndef __M_DO_AUDIO_H_
#define __M_DO_AUDIO_H_
#include "Z2AudioLib/Z2AudioMgr/Z2AudioMgr.h"
#include "global.h"

class mDoAud_zelAudio_c {  // Seems to be based on Z2AudioMgr; more research is needed
public:
    void reset(void);
    ~mDoAud_zelAudio_c();
};

void mDoAud_Create(void);
void mDoAud_Execute(void);

void mDoAud_setSceneName(const char* spot, long room, long layer);

bool mDoAud_load1stDynamicWave(void);

void mDoAud_setFadeOutStart(u8 param_1);

void mDoAud_setFadeInStart(u8 param_1);

void mDoAud_resetProcess(void);

bool mDoAud_resetRecover(void);

void init(void);

extern bool lbl_80450BBA;
extern bool lbl_80450BB9;

// required for inline asm
extern u8 lbl_80450BC0;
extern char lbl_80373D68[];
extern u8 lbl_80450BC4;
extern void* lbl_803A2F40;  // is a vtable, change later
extern u8 lbl_803DBF40;
struct JAIStreamMgr;
extern JAIStreamMgr* lbl_80450B64;  // JAIStreamMgr sInstance
extern void* lbl_803C9958;          // vtable
struct JAISeqMgr;
extern JAISeqMgr* lbl_80450B68;  // JAISeqMgr sInstance
extern void* lbl_803C98B0;       // vtable
struct JAISeMgr;
extern JAISeMgr* lbl_80450B6C;
extern void* lbl_803C98C4;  // vtable

extern "C" {
void mDoAud_Execute__Fv(void);
void Z2MultiSeObj_NS_dtor(void);
void Z2MultiSeMgr_NS_dtor(void);
void __dt__16JAISeCategoryMgrFv(void);
void __dt__14JAISoundHandleFv(void);
void __dt__12Z2MultiSeObjFv(void);
void Z2MultiSeObj_NS_dtor(void);
void JAISoundHandle_NS_dtor(void);
void JASAudioReseter_NS_dtor(void);
void func_80361CE8(void);
void JAISeqDataUser_NS_dtor(void);
void JAISoundInfo_NS_dtor(void);
void JAIStreamDataMgr_NS_dtor(void);
void Z2Audience_NS_dtor(void);
void releaseSound__14JAISoundHandleFv(void);
void __dt__17mDoAud_zelAudio_cFv(void);
void __dt__10Z2AudioMgrFv(void);
void __ct__10Z2AudioMgrFv(void);
void hasReset__10Z2AudioMgrCFv(void);
void mDoAud_zelAudio_c_NS_dtor(void);
void mDoAud_resetRecover__Fv(void);
void resetRecover__10Z2AudioMgrFv(void);
void resetProcess__10Z2AudioMgrFUlb(void);
void gframeProcess__10Z2AudioMgrFv(void);
void mDoAud_Create__Fv(void);
void reset__17mDoAud_zelAudio_cFv(void);
void Z2StatusMgr_NS_setEventBit(void);
void mDoDvdThd_mountXArchive_c_NS_create(void);
void mDoDvdThd_toMainRam_c_NS_create(void);
void setOutputMode__10Z2AudioMgrFUl(void);
void mDoAud_setSceneName__FPCcll(void);
void __ct__12JAIStreamMgrFb(void);
void __ct__9JAISeqMgrFb(void);
void __ct__8JAISeMgrFb(void);
void Z2AudioMgr_NS_setOutputMode__9JASDriverFUl(void);
void init__10Z2AudioMgrFP12JKRSolidHeapUlPvP10JKRArchive(void);
void mDoAud_resetProcess__Fv(void);
}
#endif