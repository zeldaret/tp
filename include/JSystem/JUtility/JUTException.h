#ifndef JUTEXCEPTION_H
#define JUTEXCEPTION_H

#include "dolphin/gx/GX.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"

struct _GXRenderModeObj;
struct _GXGamma {};

struct JUTExternalFB {
    /* 802E40CC */ JUTExternalFB(_GXRenderModeObj*, _GXGamma, void*, u32);
};

struct JUTDirectPrint {
    /* 802E456C */ void changeFrameBuffer(void*, u16, u16);
};

struct JUTException {
    struct EInfoPage {};

    // TODO: return types are probably wrong
    /* 802E1D5C */ JUTException(JUTDirectPrint*);
    /* 802E1E40 */ void create(JUTDirectPrint*);
    /* 802E1EA8 */ void run();
    /* 802E1FCC */ void errorHandler(u16, OSContext*, u32, u32);
    /* 802E20C0 */ void panic_f_va(char const*, int, char const*, __va_list_struct*);
    /* 802E21FC */ static void panic_f(char const*, int, char const*, ...);
    /* 802E227C */ void setFPException(u32);
    /* 802E22C4 */ void showFloatSub(int, f32);
    /* 802E2454 */ void showFloat(OSContext*);
    /* 802E2578 */ void searchPartialModule(u32, u32*, u32*, u32*, u32*);
    /* 802E26B0 */ void showStack(OSContext*);
    /* 802E27B0 */ void showMainInfo(u16, OSContext*, u32, u32);
    /* 802E2A84 */ void showGPR(OSContext*);
    /* 802E2B44 */ void showMapInfo_subroutine(u32, bool);
    /* 802E2CA0 */ void showGPRMap(OSContext*);
    /* 802E2DAC */ void showSRR0Map(OSContext*);
    /* 802E2E70 */ void printDebugInfo(JUTException::EInfoPage, u16, OSContext*, u32, u32);
    /* 802E2F18 */ void isEnablePad() const;
    /* 802E2F54 */ void readPad(u32*, u32*);
    /* 802E34C0 */ void printContext(u16, OSContext*, u32, u32);
    /* 802E3980 */ void waitTime(s32);
    /* 802E3A08 */ void createFB();
    /* 802E3AEC */ void setPreUserCallback(void (*)(u16, OSContext*, u32, u32));
    /* 802E3AFC */ void setPostUserCallback(void (*)(u16, OSContext*, u32, u32));
    /* 802E3B0C */ void appendMapFile(char const*);
    /* 802E3BA0 */ void queryMapAddress(char*, u32, s32, u32*, u32*, char*, u32, bool, bool);
    /* 802E3C90 */ void queryMapAddress_single(char*, u32, s32, u32*, u32*, char*, u32, bool, bool);
    /* 802E3FEC */ void createConsole(void*, u32);
    /* 802E40EC */ ~JUTException();

    static u8 sMessageQueue[32];
    static void* sCpuExpName[17];
    static u8 sMapFileList[12 + 4 /* padding */];
    static u8 sMessageBuffer[4 + 4 /* padding */];
    static u8 sErrorManager[4];
    static u8 sPreUserCallback[4];
    static u8 sPostUserCallback[4];
    static u8 sConsoleBuffer[4];
    static u8 sConsoleBufferSize[4];
    static u8 sConsole[4];
    static u8 msr[4];
    static u8 fpscr[4];
};

#endif /* JUTEXCEPTION_H */
