#ifndef __METROTRK_TRK_H__
#define __METROTRK_TRK_H__

#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/msgbuf.h"
#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

//////////// TRK ENUMS /////////////
// Hardware types.
typedef enum {
    HARDWARE_AMC_DDH = 0,
    HARDWARE_GDEV = 1,
    HARDWARE_BBA = 2,
} HardwareType;

// DS Error returns.
typedef enum {
    DS_NoError = 0x0,
    DS_StepError = 0x1,
    DS_ParameterError = 0x2,

    DS_EventQueueFull = 0x100,

    DS_NoMessageBufferAvailable = 0x300,
    DS_MessageBufferOverflow = 0x301,
    DS_MessageBufferReadError = 0x302,

    DS_DispatchError = 0x500,

    DS_InvalidMemory = 0x700,
    DS_InvalidRegister = 0x701,
    DS_CWDSException = 0x702,
    DS_UnsupportedError = 0x703,
    DS_InvalidProcessID = 0x704,
    DS_InvalidThreadID = 0x705,
    DS_OSError = 0x706,

    DS_Error800 = 0x800,
} DSError;

// Where to read/write.
typedef enum {
    DS_Stdin = 0,
    DS_Stdout = 1,
    DS_Stderr = 2,
} DSFileHandle;

// IO returns.
typedef enum {
    DS_IONoError = 0,
    DS_IOError = 1,
    DS_IOEOF = 2,
} DSIOResult;

// Message command IDs
typedef enum {
    DSMSG_Ping = 0x0,
    DSMSG_Connect = 0x1,
    DSMSG_Disconnect = 0x2,
    DSMSG_Reset = 0x3,
    DSMSG_Versions = 0x4,
    DSMSG_SupportMask = 0x5,
    DSMSG_Override = 0x7,

    DSMSG_ReadMemory = 0x10,
    DSMSG_WriteMemory = 0x11,
    DSMSG_ReadRegisters = 0x12,
    DSMSG_WriteRegisters = 0x13,
    DSMSG_SetOption = 0x17,
    DSMSG_Continue = 0x18,
    DSMSG_Step = 0x19,
    DSMSG_Stop = 0x1A,

    DSMSG_ReplyACK = 0x80,

    DSMSG_NotifyStopped = 0x90,
    DSMSG_NotifyException = 0x91,

    DSMSG_WriteFile = 0xD0,
    DSMSG_ReadFile = 0xD1,
    DSMSG_OpenFile = 0xD2,
    DSMSG_CloseFile = 0xD3,
    DSMSG_PositionFile = 0xD4,

    DSMSG_ReplyNAK = 0xFF,
} MessageCommandID;

// Register commands.
typedef enum {
    DSREG_Default = 0,
    DSREG_FP = 1,
    DSREG_Extended1 = 2,
    DSREG_Extended2 = 3,
} DSMessageRegisterOptions;

// Step commands.
typedef enum {
    DSSTEP_IntoCount = 0x0,
    DSSTEP_IntoRange = 0x1,
    DSSTEP_OverCount = 0x10,
    DSSTEP_OverRange = 0x11,
} DSMessageStepOptions;

typedef enum {
    DSREPLY_NoError = 0x0,
    DSREPLY_Error = 0x1,
    DSREPLY_PacketSizeError = 0x2,
    DSREPLY_CWDSError = 0x3,
    DSREPLY_EscapeError = 0x4,
    DSREPLY_BadFCS = 0x5,
    DSREPLY_Overflow = 0x6,
    DSREPLY_SequenceMissing = 0x7,

    DSREPLY_UnsupportedCommandError = 0x10,
    DSREPLY_ParameterError = 0x11,
    DSREPLY_UnsupportedOptionError = 0x12,
    DSREPLY_InvalidMemoryRange = 0x13,
    DSREPLY_InvalidRegisterRange = 0x14,
    DSREPLY_CWDSException = 0x15,
    DSREPLY_NotStopped = 0x16,
    DSREPLY_BreakpointsFull = 0x17,
    DSREPLY_BreakpointConflict = 0x18,

    DSREPLY_OSError = 0x20,
    DSREPLY_InvalidProcessID = 0x21,
    DSREPLY_InvalidThreadID = 0x22,
    DSREPLY_DebugSecurityError = 0x23,
} DSReplyError;

typedef enum {
    DSRECV_Wait = 0,
    DSRECV_Found = 1,
    DSRECV_InFrame = 2,
    DSRECV_FrameOverflow = 3,
} ReceiverState;

typedef enum {
    DSMSGMEMORY_Segmented = 0x01, /* non-flat addr space */
    DSMSGMEMORY_Extended = 0x02,  /* > 32-bit data addr */
    DSMSGMEMORY_Protected = 0x04, /* non-user memory */
    DSMSGMEMORY_Userview = 0x08,  /* breakpoints are invisible */
    DSMSGMEMORY_Space_program = 0x00,
    DSMSGMEMORY_Space_data = 0x40,
    DSMSGMEMORY_Space_io = 0x80
};

typedef enum {
    NUBEVENT_Null = 0,
    NUBEVENT_Shutdown = 1,
    NUBEVENT_Request = 2,
    NUBEVENT_Breakpoint = 3,
    NUBEVENT_Exception = 4,
    NUBEVENT_Support = 5,
} NubEventType;

typedef enum {
    VALIDMEM_Readable = 0,
    VALIDMEM_Writeable = 1,
} ValidMemoryOptions;

typedef enum {
    MEMACCESS_UserMemory = 0,
    MEMACCESS_DebuggerMemory = 1,
} MemoryAccessOptions;

typedef enum {
    UART_NoError = 0,
    UART_UnknownBaudRate = 1,
    UART_ConfigurationError = 2,
    UART_BufferOverflow = 3,  // specified buffer was too small
    UART_NoData = 4,          // no data available from polling
} UARTErrorOptions;

typedef enum {
    kBaudHWSet = -1,  // use HW settings such as DIP switches
    kBaud300 = 300,   // valid baud rates
    kBaud600 = 600,
    kBaud1200 = 1200,
    kBaud1800 = 1800,
    kBaud2000 = 2000,
    kBaud2400 = 2400,
    kBaud3600 = 3600,
    kBaud4800 = 4800,
    kBaud7200 = 7200,
    kBaud9600 = 9600,
    kBaud19200 = 19200,
    kBaud38400 = 38400,
    kBaud57600 = 57600,
    kBaud115200 = 115200,
    kBaud230400 = 230400
} UARTBaudRate;

////////////////////////////////////

typedef struct TRKFramingState {
    MessageBufferID msgBufID;    // _00
    TRKBuffer* buffer;           // _04
    ReceiverState receiveState;  // _08
    BOOL isEscape;               // _0C
    u8 fcsType;                  // _10
} TRKFramingState;

typedef struct CommandReply {
    u32 _00;  // _00
    union {
        u8 b;
        MessageCommandID m;
    } commandID;  // _04, use MessageCommandID enum
    union {
        u8 b;
        DSReplyError r;
    } replyError;  // _08, use DSReplyError enum - should be enum type? check size.
    u32 _0C;       // _0C
    u8 _10[0x30];  // _10, unknown
} CommandReply;

#ifdef __cplusplus
}
#endif

#endif /* __METROTRK_TRK_H__ */