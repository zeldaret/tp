#ifndef _REVOLUTION_HBM_H_
#define _REVOLUTION_HBM_H_

#include <revolution/kpad.h>

#ifdef __cplusplus
extern "C" {
#endif
typedef enum HBMSelectBtnNum {
    HBM_SELECT_NULL = -1,

    HBM_SELECT_HOMEBTN,
    HBM_SELECT_BTN1,
    HBM_SELECT_BTN2,
    HBM_SELECT_BTN3,
    HBM_SELECT_BTN4,

    HBM_SELECT_MAX
} HBMSelectBtnNum;

// TODO: move this later
typedef struct MEMAllocator MEMAllocator;

typedef int HBMSoundCallback(int evt, int num);
typedef struct HBMDataInfo {
    /* 0x00 */ void* layoutBuf;
    /* 0x04 */ void* spkSeBuf;
    /* 0x08 */ void* msgBuf;
    /* 0x0C */ void* configBuf;
    /* 0x10 */ void* mem;
    /* 0x14 */ HBMSoundCallback* sound_callback;
    /* 0x18 */ int backFlag;
    /* 0x1C */ int region;
    /* 0x20 */ int cursor;
    /* 0x24 */ u32 memSize;
    /* 0x28 */ f32 frameDelta;
    /* 0x2C */ Vec2 adjust;
    /* 0x34 */ MEMAllocator* pAllocator;
} HBMDataInfo;  // size 0x38

typedef struct HBMKPadData {
    KPADStatus* kpad;
    Vec2 pos;
    u32 use_devtype;
} HBMKPadData;  // size 0x10

typedef struct HBMControllerData {
    HBMKPadData wiiCon[WPAD_MAX_CONTROLLERS];
} HBMControllerData;  // size 0x40

void HBMCreate(const HBMDataInfo* pHBInfo);
void HBMDelete(void);
void HBMInit(void);
HBMSelectBtnNum HBMCalc(const HBMControllerData* pController);
void HBMDraw(void);
HBMSelectBtnNum HBMGetSelectBtnNum(void);
void HBMSetAdjustFlag(BOOL flag);
void HBMStartBlackOut(void);
BOOL HBMIsReassignedControllers(void);

void HBMCreateSound(void* soundData, void* memBuf, u32 memSize);
void HBMDeleteSound(void);
void HBMUpdateSound(void);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_HBM_H_
