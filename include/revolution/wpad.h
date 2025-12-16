#ifndef _REVOLUTION_WPAD_H_
#define _REVOLUTION_WPAD_H_

#include <revolution/types.h>
#include <revolution/sc.h>

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

#define WPAD_BUTTON_CL_UP        (1 <<  0)
#define WPAD_BUTTON_CL_LEFT      (1 <<  1)
#define WPAD_BUTTON_CL_ZR        (1 <<  2)
#define WPAD_BUTTON_CL_X         (1 <<  3)
#define WPAD_BUTTON_CL_A         (1 <<  4)
#define WPAD_BUTTON_CL_Y         (1 <<  5)
#define WPAD_BUTTON_CL_B         (1 <<  6)
#define WPAD_BUTTON_CL_ZL        (1 <<  7)
#define WPAD_BUTTON_CL_FULL_R    (1 <<  9)
#define WPAD_BUTTON_CL_PLUS      (1 << 10)
#define WPAD_BUTTON_CL_HOME      (1 << 11)
#define WPAD_BUTTON_CL_MINUS     (1 << 12)
#define WPAD_BUTTON_CL_FULL_L    (1 << 13)
#define WPAD_BUTTON_CL_DOWN      (1 << 14)
#define WPAD_BUTTON_CL_RIGHT     (1 << 15)

#define WPAD_MAX_DPD_OBJECTS 4

#define WPAD_CHAN0 0
#define WPAD_CHAN1 1
#define WPAD_CHAN2 2
#define WPAD_CHAN3 3
#define WPAD_CHAN_INVALID -1

#define WPAD_MAX_CONTROLLERS 4

enum WPADResult_et {
    WPAD_ERR_OK = 0,

    WPAD_ERR_NO_CONTROLLER = -1,
    WPAD_ERR_BUSY = -2,
    WPAD_ERR_TRANSFER = -3,
    WPAD_ERR_INVALID = -4,
    WPAD_ERR_5 = -5,
    WPAD_ERR_6 = -6,
    WPAD_ERR_CORRUPTED = -7,
};

#define WPAD_ESUCCESS WPAD_ERR_OK
#define WPAD_ENODEV WPAD_ERR_NO_CONTROLLER
#define WPAD_EBUSY WPAD_ERR_BUSY
#define WPAD_ETRANSFER WPAD_ERR_TRANSFER  // I don't know what the POSIX equivalent is
#define WPAD_EINVAL WPAD_ERR_INVALID
#define WPAD_E5 WPAD_ERR_5
#define WPAD_E6 WPAD_ERR_6
#define WPAD_EBADE WPAD_ERR_CORRUPTED

// apparently enum vs constant is a thing. cool
#define WPAD_CESUCCESS (WPAD_ESUCCESS + 0)
#define WPAD_CENODEV (WPAD_ENODEV + 0)
#define WPAD_CEBUSY (WPAD_EBUSY + 0)
#define WPAD_CETRANSFER (WPAD_ETRANSFER + 0)
#define WPAD_CEINVAL (WPAD_EINVAL + 0)
#define WPAD_CE5 (WPAD_E5 + 0)
#define WPAD_CE6 (WPAD_E6 + 0)
#define WPAD_CEBADE (WPAD_EBADE + 0)

#define WPAD_DEV_CORE             0
#define WPAD_DEV_FS               1
#define WPAD_DEV_CLASSIC          2
#define WPAD_DEV_BALANCE_CHECKER  3
#define WPAD_DEV_VSM              4
#define WPAD_DEV_MOTION_PLUS      5
#define WPAD_DEV_MPLS_PT_FS       6
#define WPAD_DEV_MPLS_PT_CLASSIC  7

#define WPAD_DEV_TRAIN            16
#define WPAD_DEV_GUITAR           17
#define WPAD_DEV_DRUM             18
#define WPAD_DEV_TAIKO            19
#define WPAD_DEV_TURNTABLE        20

// seems to be like maybe general purpose non-specific device types
// maybe this was for testing or something? idk
#define WPAD_DEV_BULK_1           21
#define WPAD_DEV_BULK_2           22
#define WPAD_DEV_BULK_3           23
#define WPAD_DEV_BULK_4           24
#define WPAD_DEV_BULK_5           25
#define WPAD_DEV_BULK_6           26
#define WPAD_DEV_BULK_7           27
#define WPAD_DEV_BULK_8           28

#define WPAD_DEV_MPLS_PT_UNKNOWN  250
#define WPAD_DEV_251              251
#define WPAD_DEV_252              252  // invalid device mode?
#define WPAD_DEV_NONE             253  // sort of like WPAD_ENODEV (see __wpadAbortInitExtension in WPADHIDParser.c)
#define WPAD_DEV_INITIALIZING     255  // see __a1_20_status_report

typedef void (*WPADInitFunc)(void);
typedef void (*WPADCallback)(s32 chan, s32 result);
typedef void (*WPADExtensionCallback)(s32 chan, s32 devType);
typedef void (*WPADSamplingCallback)(s32 chan);
typedef void (*WPADConnectCallback)(s32 chan, s32 result);
typedef void (*WPADSimpleSyncCallback)(s32 result, s32 num);

typedef struct DPDObject {
    /* 0x00 */ s16 x;
    /* 0x02 */ s16 y;
    /* 0x04 */ u16 size;
    /* 0x06 */ u8 traceId;
} DPDObject;

typedef struct WPADStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
} WPADStatus;

typedef struct DPDObjEx {
    /* 0x00 */ s16 range_x1;
    /* 0x02 */ s16 range_y1;
    /* 0x04 */ s16 range_x2;
    /* 0x06 */ s16 range_y2;
    /* 0x08 */ u16 pixel;
    /* 0x0A */ s8 radius;
} DPDObjEx;

typedef struct WPADStatusEx {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    /* 0x2a */ DPDObjEx exp[WPAD_MAX_DPD_OBJECTS];
} WPADStatusEx;

typedef struct WPADFSStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    /* 0x2a */ s16 fsAccX;
    /* 0x2c */ s16 fsAccY;
    /* 0x2e */ s16 fsAccZ;
    /* 0x30 */ s8 fsStickX;
    /* 0x31 */ s8 fsStickY;
} WPADFSStatus;

typedef struct WPADCLStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    /* 0x2a */ u16 clButton;
    /* 0x2c */ s16 clLStickX;
    /* 0x2e */ s16 clLStickY;
    /* 0x30 */ s16 clRStickX;
    /* 0x32 */ s16 clRStickY;
    /* 0x34 */ u8 clTriggerL;
    /* 0x35 */ u8 clTriggerR;
} WPADCLStatus;

typedef struct WPADBKStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    /* 0x2a */ u8 bulk[21];
    /* 0x3f */ u8 padding[1];
} WPADBKStatus;

typedef struct WPADTRStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    /* 0x2a */ u16 trButton;
    /* 0x2c */ u8 brake;
    /* 0x2d */ u8 mascon;
} WPADTRStatus;

typedef struct WPADVSStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    /* 0x2a */ u16 at_0x2a[5];
    /* 0x34 */ u8 at_0x34;
    /* 0x36 */ u16 at_0x36[5];
    /* 0x40 */ u8 at_0x40;
    /* 0x42 */ u16 at_0x42;
    /* 0x44 */ u8 at_0x44;
} WPADVSStatus;

typedef struct WPADMPStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    union {
        struct {
            /* 0x00 */ s16 fsAccX;
            /* 0x02 */ s16 fsAccY;
            /* 0x04 */ s16 fsAccZ;
            /* 0x06 */ s8 fsStickX;
            /* 0x07 */ s8 fsStickY;
        } fs;
        struct {
            /* 0x00 */ u16 clButton;
            /* 0x02 */ s16 clLStickX;
            /* 0x04 */ s16 clLStickY;
            /* 0x06 */ s16 clRStickX;
            /* 0x08 */ s16 clRStickY;
            /* 0x0a */ u8 clTriggerL;
            /* 0x0b */ u8 clTriggerR;
        } cl;
    } ext;
    /* 0x36 */ u8 stat;
    /* 0x37 */ u8 reserved;
    /* 0x38 */ s16 pitch;
    /* 0x3a */ s16 yaw;
    /* 0x3c */ s16 roll;
} WPADMPStatus;

typedef struct WPADBLStatus {
    /* 0x00 */ u16 button;
    /* 0x02 */ s16 accX;
    /* 0x04 */ s16 accY;
    /* 0x06 */ s16 accZ;
    /* 0x08 */ DPDObject obj[WPAD_MAX_DPD_OBJECTS];
    /* 0x28 */ u8 dev;
    /* 0x29 */ s8 err;
    /* 0x2a */ u16 press[4];
    /* 0x32 */ s8 temp;
    /* 0x33 */ u8 battery;
} WPADBLStatus;

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
} WPADInfo;

#define WPAD_FMT_CORE_BTN              0
#define WPAD_FMT_CORE_BTN_ACC          1
#define WPAD_FMT_CORE_BTN_ACC_DPD      2
#define WPAD_FMT_FS_BTN                3
#define WPAD_FMT_FS_BTN_ACC            4
#define WPAD_FMT_FS_BTN_ACC_DPD        5
#define WPAD_FMT_CLASSIC_BTN           6
#define WPAD_FMT_CLASSIC_BTN_ACC       7
#define WPAD_FMT_CLASSIC_BTN_ACC_DPD   8
#define WPAD_FMT_BTN_ACC_DPD_EXTENDED  9
// extensions
#define WPAD_FMT_TRAIN                 10
#define WPAD_FMT_GUITAR                11
#define WPAD_FMT_BALANCE_CHECKER       12
#define WPAD_FMT_VSM                   13
#define WPAD_FMT_DRUM                  15
#define WPAD_FMT_MOTION_PLUS           16
#define WPAD_FMT_TAIKO                 17
#define WPAD_FMT_TURNTABLE             18
#define WPAD_FMT_BULK                  19

#define WPAD_SPEAKER_DISABLE  0
#define WPAD_SPEAKER_ENABLE   1  // might be ON? see HBMRemoteSpk.cpp
#define WPAD_SPEAKER_MUTE     2
#define WPAD_SPEAKER_UNMUTE   3
#define WPAD_SPEAKER_PLAY     4
#define WPAD_SPEAKER_CMD_05   5  // does the same thing as ENABLE? unless i'm missing something. not used so i don't know the context

#define WPAD_MOTOR_STOP    0
#define WPAD_MOTOR_RUMBLE  1

s32 WPADProbe(s32 chan, u32* devType);
u8 WPADGetRadioSensitivity(s32 chan);
void WPADRead(s32 chan, WPADStatus* status);
BOOL WPADIsSpeakerEnabled(s32 chan);
s32 WPADControlSpeaker(s32 chan, u32 command, WPADCallback cb);
s32 WPADSendStreamData(s32 chan, void* p_buf, u16 len);

WPADConnectCallback WPADSetConnectCallback(s32 chan, WPADConnectCallback cb);
WPADExtensionCallback WPADSetExtensionCallback(s32 chan, WPADExtensionCallback cb);
WPADSimpleSyncCallback WPADSetSimpleSyncCallback(WPADSimpleSyncCallback cb);

BOOL WPADIsUsedCallbackByKPAD(void);
void WPADSetCallbackByKPAD(BOOL isKPAD);
s32 WPADGetInfoAsync(s32 chan, WPADInfo* info, WPADCallback cb);
void WPADControlMotor(s32 chan, u32 command);
BOOL WPADCanSendStreamData(s32 chan);
BOOL WPADStopSimpleSync(void);
void WPADDisconnect(s32 chan);
BOOL WPADStartFastSimpleSync(void);
BOOL WPADSaveConfig(SCFlushCallback* cb);
void WPADSetSpeakerVolume(u8 volume);
u8 WPADGetSpeakerVolume(void);
void WPADEnableMotor(BOOL enabled);
BOOL WPADIsMotorEnabled(void);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_WPAD_H_
