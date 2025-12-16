#ifndef _REVOLUTION_WPAD_PRIVATE_H_
#define _REVOLUTION_WPAD_PRIVATE_H_

#include <revolution/os.h>
#include <revolution/wpad.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RPT_REPORT_ID					0
#define RPT_MAX_SIZE					21

// Limits
#define RPTID_OUT_LO					RPTID_SET_RUMBLE
#define RPTID_OUT_HI					RPTID_SET_DPD_CSB

#define RPTID_IN_LO						RPTID_STATUS
#define RPTID_IN_HI						RPTID_DATA_BTN_ACC_DPD18_2

// All outgoing reports
#define RPT_OUT_FLAGS					1

#define RPT_OUT_FLAG_ENABLE_FEATURE		2
#define RPT_OUT_FLAG_REQUEST_ACK_RPT	1
#define RPT_OUT_FLAG_RUMBLE				0

// All incoming reports with Button data (all except 0x3d)
#define RPT_BTN0						1
#define RPT_BTN1						2

// All incoming reports with Accelerometer (Standard) data (0x31, 0x33, 0x35, 0x37)
#define RPT_ACC_OFFSET					1
#define RPT_ACC_SIZE					3

/*
 * Outgoing reports (from POV of the host)
 */

// Report 0x10: Set rumble status
#define RPTID_SET_RUMBLE				0x10
#define RPT10_SIZE						1

#define RPT10_RUMBLE					0

// Report 0x11: Set LED lights
#define RPTID_SET_PORT					0x11 // internally called SetPort
#define	RPT11_SIZE						1

#define RPT11_LED						0

// Report 0x12: Set data reporting mode
#define RPTID_SET_DATA_REPORT_MODE		0x12
#define RPT12_SIZE						2

#define RPT12_CONT_REPORT				0
#define RPT12_DATA_REPORT_MODE			1

// Report 0x13: Enable IR camera
#define RPTID_ENABLE_DPD				0x13 // internally called the DPD
#define RPT13_SIZE						1

#define RPT13_DPD_ENABLE				0

// Report 0x14: Enable IR camera
#define RPTID_ENABLE_SPEAKER			0x14
#define RPT14_SIZE						1

#define RPT14_SPEAKER_ENABLE			0

// Report 0x15: Request status report
#define RPTID_REQUEST_STATUS			0x15
#define RPT15_SIZE						1

// Report 0x16: Write data
#define RPTID_WRITE_DATA				0x16
#define RPT16_SIZE						RPT_MAX_SIZE

#define RPT16_DATA_DST_ADDRESS			0
#define RPT16_DATA_LENGTH				4
#define RPT16_DATA						5

// Report 0x17: Read data
#define RPTID_READ_DATA					0x17
#define RPT17_SIZE						6

#define RPT17_DATA_SRC_ADDRESS			0
#define RPT17_DATA_LENGTH				4

// Report 0x18: Send speaker data
#define RPTID_SEND_SPEAKER_DATA			0x18
#define RPT18_SIZE						RPT_MAX_SIZE

#define RPT18_DATA_LENGTH				0
#define RPT18_DATA						1

// Report 0x19: Mute speaker
#define RPTID_MUTE_SPEAKER				0x19
#define RPT19_SIZE						1

#define RPT19_SPEAKER_MUTE				0

// Report 0x19: WPADiSendDPDCSB (?)
#define RPTID_SEND_DPD_CSB				0x1a
#define RPT1A_SIZE						1

#define RPT1A_DPD_CSB					0

/*
 * Incoming reports (from POV of the host)
 */

// Report 0x20: Status report
#define RPTID_STATUS					0x20
#define RPT20_FLAGS						3
#define RPT20_PROTO_FW					5
#define RPT20_BATTERY					6

// Report 0x21: Read Wiimote data
#define RPTID_DATA_READ					0x21
#define RPT21_SIZE_ERR					3
#define RPT21_ADDR0						4
#define RPT21_ADDR1						5
#define RPT21_DATA						6

// Report 0x22: Acknowledgement and request result
#define RPTID_ACK						0x22
#define RPT22_ACKED_RPT_ID				3
#define RPT22_ERR_CODE					4

// Reports 0x23-0x2f: Unused

// Report 0x30: Buttons
#define RPTID_DATA_BTN					0x30

// Report 0x31: Buttons, Accelerometer (Standard)
#define RPTID_DATA_BTN_ACC				0x31

// Report 0x32: Buttons, Extension (8 bytes)
#define RPTID_DATA_BTN_EXT8				0x32
#define RPT32_EXT_OFFSET				3
#define RPT32_EXT_LENGTH				8

/* Report 0x33: Buttons, Accelerometer (Standard), IR Camera (Standard, 12
 * bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD12		0x33
#define RPT33_DPD_OFFSET				6
#define RPT33_DPD_LENGTH				12

// Report 0x34: Buttons, Extension (19 bytes)
#define RPTID_DATA_BTN_EXT19			0x34
#define RPT34_EXT_OFFSET				3
#define RPT34_EXT_LENGTH				19

// Report 0x35: Buttons, Accelerometer (Standard), Extension (16 bytes)
#define RPTID_DATA_BTN_ACC_EXT16		0x35
#define RPT35_EXT_OFFSET				6
#define RPT35_EXT_LENGTH				16

// Report 0x36: Buttons, IR Camera (Basic, 10 bytes), Extension (9 bytes)
#define RPTID_DATA_BTN_DPD10_EXT9		0x36
#define RPT36_DPD_OFFSET				3
#define RPT36_DPD_LENGTH				10
#define RPT36_EXT_OFFSET				13
#define RPT36_EXT_LENGTH				9

/* Report 0x37: Buttons, Accelerometer (Standard), IR Camera (Basic, 10
 * bytes), Extension (6 bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD10_EXT9	0x37
#define RPT37_DPD_OFFSET				6
#define RPT37_DPD_LENGTH				10
#define RPT37_EXT_OFFSET				16
#define RPT37_EXT_LENGTH				6

// Report 0x38-0x3c: Unused

// Report 0x3d: Extension (21 bytes)
#define RPTID_DATA_EXT21				0x3d
#define RPT3D_EXT_OFFSET				1
#define RPT3D_EXT_LENGTH				21

/* Report 0x3e: Buttons, Accelerometer (Interleaved 1), IR Camera (Full 1,
 * 18 bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD18_1		0x3e
#define RPT3E_DPD0						0
#define RPT3E_DPD0_OFFSET				4
#define RPT3E_DPD1						1
#define RPT3E_DPD1_OFFSET				13

/* Report 0x3e: Buttons, Accelerometer (Interleaved 2), IR Camera (Full 2,
 * 18 bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD18_2		0x3f
#define RPT3F_DPD2						2
#define RPT3F_DPD2_OFFSET				4
#define RPT3F_DPD3						3
#define RPT3F_DPD3_OFFSET				13

#define WPAD_EXT_REG_SPEAKER      0xa2
#define WPAD_EXT_REG_EXTENSION    0xa4
#define WPAD_EXT_REG_MOTION_PLUS  0xa6
#define WPAD_EXT_REG_DPD          0xb0

#define RX_BUFFER_SIZE OSRoundUp32B(sizeof(WPADStatusEx))
#define LINT_NUM_MAX_LENGTH 64
#define LINT_NUM_MAX_BUFSIZ (1 + LINT_NUM_MAX_LENGTH + 1)

#define WM_MEM_ADDR(addr_) ((addr_) & 0xffff)
#define WM_EXT_REG_ADDR(type_, addr_)                                                              \
    (((addr_) & 0xffff) | ((WPAD_EXT_REG_##type_) << 16) | (1 << 26))

// https://wiibrew.org/wiki/Wiimote#EEPROM_Memory
#define WM_ADDR_MEM_DEV_CONFIG_0 WM_MEM_ADDR(0x0000)
#define WM_ADDR_MEM_GAME_INFO_0 WM_MEM_ADDR(0x002a)
#define WM_ADDR_MEM_GAME_INFO_1 WM_MEM_ADDR(0x0062)

// out of range??? wiibrew says the wiimote only has 0x1600 bytes of memory
#define WM_ADDR_MEM_176C WM_MEM_ADDR(0x176c)
#define WM_ADDR_MEM_1770 WM_MEM_ADDR(0x1770)

/*
 * Wiimote extension register addresses
 */

// Speaker register addresses
#define WM_REG_SPEAKER_01 WM_EXT_REG_ADDR(SPEAKER, 0x01)
#define WM_REG_SPEAKER_08 WM_EXT_REG_ADDR(SPEAKER, 0x08)
#define WM_REG_SPEAKER_09 WM_EXT_REG_ADDR(SPEAKER, 0x09)

// Extension register addresses
#define WM_REG_EXTENSION_CONFIG WM_EXT_REG_ADDR(EXTENSION, 0x20)
#define WM_REG_EXTENSION_40 WM_EXT_REG_ADDR(EXTENSION, 0x40)
#define WM_REG_EXTENSION_CERT_PARAM WM_EXT_REG_ADDR(EXTENSION, 0x50)
#define WM_REG_EXTENSION_F0 WM_EXT_REG_ADDR(EXTENSION, 0xf0)
#define WM_REG_EXTENSION_CERT_CHALLENGE WM_EXT_REG_ADDR(EXTENSION, 0xf1)
#define WM_REG_EXTENSION_F2 WM_EXT_REG_ADDR(EXTENSION, 0xf2)
#define WM_REG_EXTENSION_F3 WM_EXT_REG_ADDR(EXTENSION, 0xf3)
#define WM_REG_EXTENSION_EXT_TYPE_2 WM_EXT_REG_ADDR(EXTENSION, 0xf6)
#define WM_REG_EXTENSION_CERT_PROBE WM_EXT_REG_ADDR(EXTENSION, 0xf7)
#define WM_REG_EXTENSION_FA WM_EXT_REG_ADDR(EXTENSION, 0xfa)
#define WM_REG_EXTENSION_FB WM_EXT_REG_ADDR(EXTENSION, 0xfb)
#define WM_REG_EXTENSION_DEV_MODE WM_EXT_REG_ADDR(EXTENSION, 0xfe)
#define WM_REG_EXTENSION_ID_BYTE WM_EXT_REG_ADDR(EXTENSION, 0xff)

#define WM_EXTENSION_CONFIG_SIZE 0x20      // 0xa40020 - 0xa4003f
#define WM_EXTENSION_CERT_PARAM_SIZE 0x40  // 0xa40050 - 0xa4008f

// Wiimote Motion Plus register addresses
#define WM_REG_MPLS_F0 WM_EXT_REG_ADDR(MOTION_PLUS, 0xf0)
#define WM_REG_MPLS_DEV_MODE WM_EXT_REG_ADDR(MOTION_PLUS, 0xfe)
#define WM_REG_MPLS_ID_BYTE WM_EXT_REG_ADDR(MOTION_PLUS, 0xff)

// IR camera register addresses
#define WM_REG_DPD_CONFIG_BLOCK_1 WM_EXT_REG_ADDR(DPD, 0x00)
#define WM_REG_DPD_CONFIG_BLOCK_2 WM_EXT_REG_ADDR(DPD, 0x1a)
#define WM_REG_DPD_30 WM_EXT_REG_ADDR(DPD, 0x30)
#define WM_REG_DPD_DATA_FORMAT WM_EXT_REG_ADDR(DPD, 0x33)


#define WPAD_NZFILTER_ACC   0
#define WPAD_NZFILTER_DPD   1
#define WPAD_NZFILTER_EXT   2
#define WPAD_NZFILTER_MPLS  3
#define WPAD_MAX_NZFILTERS  4


#define WPAD_RADIO_QUALITY_GOOD  0  // 80+
#define WPAD_RADIO_QUALITY_BAD   1  // 80-
struct WPADCmd {
    /* 0x00 */ u32 reportID;
    /* 0x04 */ u8 dataBuf[RPT_MAX_SIZE];
    /* 0x1a */ u16 dataLength;
    /* 0x1c */ void* dstBuf;
    /* 0x20 */ u16 readLength;
    /* 0x24 */ u32 readAddress;
    /* 0x28 */ WPADInfo* statusReportOut;
    /* 0x2c */ WPADCallback cmdCB;
};  // size 0x30

struct WPADCmdQueue {
    /* 0x00 */ s8 indexOut;
    /* 0x01 */ s8 indexIn;
    /* 0x04 */ struct WPADCmd* queue;
    /* 0x08 */ u32 length;
};  // size 0x0c

struct WPADDevConfig {
    /* 0x00 */ DPDObject dpd[WPAD_MAX_DPD_OBJECTS];
    /* 0x20 */ s16 accX0g;
    /* 0x22 */ s16 accY0g;
    /* 0x24 */ s16 accZ0g;
    /* 0x26 */ s16 accX1g;
    /* 0x28 */ s16 accY1g;
    /* 0x2a */ s16 accZ1g;
    /* 0x2c */ u8 motor;
    /* 0x2d */ u8 volume;
    /* 0x30 */ u8 pad0_[2];
};

typedef struct WPADMplsCalibration {
    /* 0x00 */ f32 pitchZero;
    /* 0x04 */ f32 pitchScale;
    /* 0x08 */ f32 yawZero;
    /* 0x0c */ f32 yawScale;
    /* 0x10 */ f32 rollZero;
    /* 0x14 */ f32 rollScale;
    /* 0x18 */ s32 degrees;
} WPADMplsCalibration;

struct WPADExtConfig {
    union {
        struct WPADFSConfig {
            /* 0x00 */ s16 stickXCenter;
            /* 0x02 */ s16 at_0x02;
            /* 0x04 */ s16 at_0x04;
            /* 0x06 */ s16 stickYCenter;
            /* 0x08 */ s16 at_0x08;
            /* 0x0a */ s16 at_0x0a;
            /* 0x0c */ s16 accX0g;
            /* 0x0e */ s16 accY0g;
            /* 0x10 */ s16 accZ0g;
            /* 0x12 */ s16 accX1g;
            /* 0x14 */ s16 accY1g;
            /* 0x16 */ s16 accZ1g;
        } fs; // size 0x1a

        struct WPADCLConfig {
            /* 0x00 */ s16 lStickXCenter;
            /* 0x02 */ s16 at_0x02;
            /* 0x04 */ s16 at_0x04;
            /* 0x06 */ s16 lStickYCenter;
            /* 0x08 */ s16 at_0x08;
            /* 0x0a */ s16 at_0x0a;
            /* 0x0c */ s16 rStickXCenter;
            /* 0x0e */ s16 at_0x0e;
            /* 0x10 */ s16 at_0x10;
            /* 0x12 */ s16 rStickYCenter;
            /* 0x14 */ s16 at_0x14;
            /* 0x16 */ s16 at_0x16;
            /* 0x18 */ u8 triggerLZero;
            /* 0x19 */ u8 triggerRZero;
        } cl; // size 0x1a

        u8 forceUnionSize_[0x1c];  // alignment?
    };  // size 0x1c

    struct WPADMplsConfig {
        /* 0x00 */ WPADMplsCalibration high;
        /* 0x1c */ WPADMplsCalibration low;
        /* 0x38 */ u32 calibCRC;
        /* 0x3c */ u16 calibID;
    } /* 0x1a */ mpls;
};  // size 0x5c

typedef struct WPADGameInfo {
    /* 0x00 */ OSTime timestamp;
    /* 0x08 */ u16 gameTitle[16 + 1];
    /* 0x2a */ char gameCode[4];
    /* 0x2e */ u8 gameType;
    /* 0x2f */ u8 checksum;
    u8 _pad0[8];
} WPADGameInfo;  // size 0x38

struct WPADMemBlock {
    /* 0x00 */ BOOL busy;
    /* 0x04 */ u8 const* data;
    /* 0x08 */ u16 len;
    /* 0x0c */ u32 addr;
    /* 0x10 */ WPADCallback* cb;
};  // size 0x14

typedef struct /* possibly untagged, like kpad */ {
    /* 0x000 */ WPADGameInfo gameInfo;
    /* 0x038 */ s32 at_0x038[2]; /* unknown */ // WPADResult[2]? see __wpadGetGameInfo
    /* 0x040 */ u8 rxBufMain[RX_BUFFER_SIZE];
    /* 0x0a0 */ u8 rxBufs[2][RX_BUFFER_SIZE];
    /* 0x160 */ struct WPADCmdQueue stdCmdQueue;
    /* 0x16c */ struct WPADCmd stdCmdQueueList[24];
    /* 0x5ec */ struct WPADCmdQueue extCmdQueue;
    /* 0x16c */ struct WPADCmd extCmdQueueList[12];
    /* 0x838 */ WPADInfo info;
    /* 0x850 */ WPADInfo* infoOut;
    /* 0x854 */ struct WPADDevConfig devConfig;
    /* 0x884 */ struct WPADExtConfig extConfig;
    /* 0x8e0 */ WPADCallback cmdBlkCB;
    /* 0x8e4 */ WPADExtensionCallback extensionCB;
    /* 0x8e8 */ WPADConnectCallback connectCB;
    /* 0x8ec */ WPADSamplingCallback samplingCB;
    /* 0x8f0 */ void* samplingBuf;
    /* 0x8f4 */ u32 samplingBufIndex;
    /* 0x8f8 */ u32 samplingBufSize;
    /* 0x8fc */ u32 dataFormat;
    /* 0x900 */ s32 status;
    /* 0x904 */ u8 statusReqBusy;
    /* 0x905 */ u8 devType;
    /* 0x906 */ u8 devMode;
    /* 0x907 */ s8 devHandle;
    /* 0x908 */ int at_0x908; /* unknown */
    /* 0x90c */ u8 rxBufIndex;
    /* 0x90d */ s8 at_0x90d; /* unknown */
    /* 0x90e */ u8 defaultDpdSize; // maybe?
    /* 0x90f */ u8 currentDpdCommand;
    /* 0x910 */ u8 pendingDpdCommand;
    /* 0x911 */ u8 radioQuality;
    /* 0x912 */ u8 radioQualityOkMs; // see __wpadCalcRadioQuality
    /* 0x913 */ u8 audioFrames;
    /* 0x914 */ u32 motorBusy;
    /* 0x918 */ BOOL motorRunning;
    /* 0x91c */ BOOL used;
    /* 0x920 */ BOOL handshakeFinished;
    /* 0x924 */ int configIndex;
    /* 0x928 */ OSThreadQueue threadQueue; /* purpose unknown */
    /* 0x930 */ WPADCallback vsmCallback;
    /* 0x934 */ u8 controlMplsBusy;
    /* 0x935 */ u8 mplsCBReadBuf[2];
    /* 0x937 */ u8 mplsCBCounter; // idk???
    /* 0x938 */ u8 pendingMplsCommand;
    /* 0x939 */ u8 noParseMplsCount;
    /* 0x93a */ u8 isInitingMpls; // maybe?
    /* 0x93b */ u8 hasReadExtType2; // maybe?
    /* 0x93c */ u8 at_0x93c; /* unknown */
    /* 0x93d */ u8 parseMPState;
    /* 0x93e */ u8 wmParamOffset;
    /* 0x93f */ u8 certWorkCounter; // idk???
    /* 0x940 */ u16 certWorkMs;
    /* 0x942 */ s16 certStateWorkMs;
    /* 0x944 */ s8 certChallengeRandomBit;
    /* 0x945 */ u8 certWorkBusy;
    /* 0x946 */ s8 certValidityStatus;
    /* 0x947 */ s8 certState;
    /* 0x948 */ u32* certParamPtr;
    /* 0x94c */ u32 certLintX[1 + 16 + 1];
    /* 0x994 */ u32 certLintY[1 + 16 + 1];
    /* 0x994 */ u32 certLintBig[LINT_NUM_MAX_BUFSIZ];
    /* 0xae4 */ int at_0xae4; /* unknown */
    /* 0xae8 */ OSTime lastControllerDataUpdate;
    /* 0xaf0 */ u16 filterDiff[WPAD_MAX_NZFILTERS];
    /* 0xaf8 */ u16 filterSame[WPAD_MAX_NZFILTERS];
    /* 0xb00 */ OSTime lastReportSendTime;
    /* 0xb08 */ u8 at_0xb08; /* unknown */
    /* 0xb09 */ u8 calibrated;
    /* 0xb0a */ u16 recalibHoldMs;
    /* 0xb0c */ u8 encryptionKey[16];
    /* 0xb1c */ u8 decryptAddTable[8];
    /* 0xb24 */ u8 decryptXorTable[8];
    /* 0xb2c */ u8 wmReadDataBuf[64];
    /* 0xb6c */ u8* wmReadDataPtr;
    /* 0xb70 */ u32 wmReadAddress;
    /* 0xb74 */ int wmReadHadError;
    /* 0xb78 */ u16 wmReadLength;
    /* 0xb7a */ s8 at_0xb7a; /* unknown */
    /* 0xb7b */ u8 radioSensitivity;
    /* 0xb7c */ u16 copyOutCount;
    /* 0xb7e */ u8 sleeping;
    /* 0xb7f */ u8 lastReportID;
    /* 0xb80 */ WPADCallback getInfoCB;
    /* 0xb84 */ u8 getInfoBusy;
    /* 0xb85 */ u8 extState;
    /* 0xb86 */ u8 savePower;
    /* 0xb87 */ u8 blcBattery;
    /* 0xb88 */ u8 savedDevType; // maybe?
    /* 0xb89 */ u8 extWasDisconnected;
    /* 0xb8a */ s16 reconnectExtMs;
    /* 0xb8c */ struct WPADMemBlock memBlock;
    /* 0xba0 */ WPADCallback controlMplsCB;
    /* 0xba4 */ u8 parseMPBuf;
    /* 0xba5 */ u8 certProbeByte;
    /* 0xba6 */ u8 dpdBusy;
    /* 0xba7 */ u8 interleaveFlags;
    /* 0xba8 */ u32 mplsCBReadAddress;
    /* 0xbac */ u8 mplsCBState;
    /* 0xbad */ u8 mplsUptimeMs;
    /* 0xbae */ s8 certMayVerifyByCalibBlock;
    u8 pad0_[2]; /* unknown (can't be alignment) */
    /* 0xbb1 */ u8 certProbeStartingValue;
    /* 0xbb2 */ u16 lastMplsCalibID;
    /* 0xbb4 */ u32 lastMplsCalibCRC;
    /* 0xbb8 */ u8 noParseExtCount;
    /* 0xbb9 */ s8 extErr;
    /* 0xbba */ u8 extDataLength;
    /* 0xbbb */ u8 extDevType;
    /* 0xbbc */ u8 currPwmDuty;
    /* 0xbbd */ u8 pendingPwmDuty;
    u8 pad1_[2]; /* unknown (can't be alignment) */
    /* 0xbc0 */ u8 extDataBuf[32];
} ATTRIBUTE_ALIGN(32) wpad_cb_st; // size 0xbe0

BOOL WPADiIsAvailableCmdQueue(struct WPADCmdQueue* cmdQueue, s8 num);
BOOL WPADiSendWriteDataCmd(struct WPADCmdQueue* cmdQueue, u8 cmd, u32 address, WPADCallback cb);
BOOL WPADiSendWriteData(struct WPADCmdQueue* cmdQueue, void const* p_buf, u16 len, u32 address, WPADCallback cb);
BOOL WPADiSendStreamData(struct WPADCmdQueue* cmdQueue, void const* p_buf, u16 len);
BOOL WPADiSendMuteSpeaker(struct WPADCmdQueue* cmdQueue, BOOL muted, WPADCallback cb);
BOOL WPADiSendEnableSpeaker(struct WPADCmdQueue* cmdQueue, BOOL enabled, WPADCallback cb);
BOOL WPADiSendGetContStat(struct WPADCmdQueue* cmdQueue, WPADInfo* infoOut, WPADCallback cb);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_WPAD_PRIVATE_H_
