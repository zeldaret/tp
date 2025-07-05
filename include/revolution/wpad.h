#ifndef _REVOLUTION_WPAD_H_
#define _REVOLUTION_WPAD_H_

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define WPAD_BUTTON_LEFT   0x0001
#define WPAD_BUTTON_RIGHT  0x0002
#define WPAD_BUTTON_DOWN   0x0004
#define WPAD_BUTTON_UP     0x0008
#define WPAD_BUTTON_PLUS   0x0010
#define WPAD_BUTTON_2      0x0100
#define WPAD_BUTTON_1      0x0200
#define WPAD_BUTTON_B      0x0400
#define WPAD_BUTTON_A      0x0800
#define WPAD_BUTTON_MINUS  0x1000
#define WPAD_BUTTON_Z      0x2000
#define WPAD_BUTTON_C      0x4000
#define WPAD_BUTTON_HOME   0x8000

typedef s32 WPADResult;
typedef s32 WPADChannel;
typedef u32 WPADDeviceType;

typedef void WPADExtensionCallback(WPADChannel chan, s32 devType);

// for ease of use in for loops
enum WPADChannel_et {
    WPAD_CHAN0,
    WPAD_CHAN1,
    WPAD_CHAN2,
    WPAD_CHAN3,

    WPAD_MAX_CONTROLLERS,
    WPAD_CHAN_INVALID = -1,
};

typedef struct WPADInfo {
    /* 0x00 */ BOOL dpd;
    /* 0x04 */ BOOL speaker;
    /* 0x08 */ BOOL attach;
    /* 0x0C */ BOOL lowBat;
    /* 0x10 */ BOOL nearempty;
    /* 0x14 */ u8 battery;
    /* 0x15 */ u8 led;
    /* 0x16 */ u8 protocol;
    /* 0x17 */ u8 firmware;
} WPADInfo;  // size 0x18

WPADResult WPADProbe(WPADChannel chan, WPADDeviceType* devType);

WPADExtensionCallback* WPADSetExtensionCallback(WPADChannel chan, WPADExtensionCallback* cb);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_WPAD_H_
