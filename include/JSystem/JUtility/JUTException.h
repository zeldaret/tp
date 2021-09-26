#ifndef JUTEXCEPTION_H
#define JUTEXCEPTION_H

#include "JSystem/JKernel/JKRThread.h"
#include "JSystem/JUtility/JUTDirectPrint.h"
#include "JSystem/JUtility/JUTGamePad.h"
#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/gx/GX.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"
#include "global.h"

struct _GXRenderModeObj;
struct _GXGamma {};

struct JUTExternalFB {
    /* 802E40CC */ JUTExternalFB(_GXRenderModeObj*, _GXGamma, void*, u32);
};

struct JUTDirectPrint {
    /* 802E456C */ void changeFrameBuffer(void*, u16, u16);
};

class JUTException : public JKRThread {
public:
    struct EInfoPage {};

    /* 802E1D5C */ JUTException(JUTDirectPrint*);
    /* 802E40EC */ virtual ~JUTException();

    /* 802E22C4 */ void showFloatSub(int, f32);
    /* 802E2454 */ void showFloat(OSContext*);
    /* 802E26B0 */ void showStack(OSContext*);
    /* 802E27B0 */ void showMainInfo(u16, OSContext*, u32, u32);
    /* 802E2A84 */ void showGPR(OSContext*);
    /* 802E2B44 */ void showMapInfo_subroutine(u32, bool);
    /* 802E2CA0 */ void showGPRMap(OSContext*);
    /* 802E2DAC */ void showSRR0Map(OSContext*);
    /* 802E2E70 */ void printDebugInfo(JUTException::EInfoPage, u16, OSContext*, u32, u32);
    /* 802E2F18 */ void isEnablePad() const;
    /* 802E2F54 */ bool readPad(u32*, u32*);
    /* 802E34C0 */ void printContext(u16, OSContext*, u32, u32);
    /* 802E3A08 */ void createFB();
    /* 802E3AEC */ void setPreUserCallback(void (*)(u16, OSContext*, u32, u32));
    /* 802E3AFC */ void setPostUserCallback(void (*)(u16, OSContext*, u32, u32));
    /* 802E3B0C */ void appendMapFile(char const*);
    /* 802E3BA0 */ void queryMapAddress(char*, u32, s32, u32*, u32*, char*, u32, bool, bool);
    /* 802E3C90 */ void queryMapAddress_single(char*, u32, s32, u32*, u32*, char*, u32, bool, bool);
    /* 802E3FEC */ void createConsole(void*, u32);

    /* 802E1EA8 */ /* vt[03] */ virtual void* run();

    /* 802E1E40 */ static JUTException* create(JUTDirectPrint*);
    /* 802E1FCC */ static void errorHandler(OSError, OSContext*, u32, u32);
    /* 802E20C0 */ static void panic_f_va(char const*, int, char const*, va_list);
    /* 802E21FC */ static void panic_f(char const*, int, char const*, ...);
    /* 802E227C */ static void setFPException(u32);
    /* 802E2578 */ static BOOL searchPartialModule(u32, u32*, u32*, u32*, u32*);
    /* 802E3980 */ static void waitTime(s32);

    static JUTException* getManager() { return sErrorManager; }

    void setTraceSuppress(u32 param_0) { mTraceSuppress = param_0; }
    void setGamePad(JUTGamePad* gamePad) {
        mGamePad = gamePad;
        mGamePadPort = JUTGamePad::Port_Unknown;
    }

private:
    static OSMessageQueue sMessageQueue;
    static void* sCpuExpName[17];
    static u8 sMapFileList[12 + 4 /* padding */];
    static u8 sMessageBuffer[4 + 4 /* padding */];
    static JUTException* sErrorManager;
    static void* sPreUserCallback;
    static void* sPostUserCallback;
    static u8 sConsoleBuffer[4];
    static u8 sConsoleBufferSize[4];
    static JUTConsole* sConsole;
    static u8 msr[4];
    static u8 fpscr[4];

private:
    /* 0x7C */ JUTExternalFB* field_0x7C;
    /* 0x80 */ JUTDirectPrint* mDirectPrint;
    /* 0x84 */ JUTGamePad* mGamePad;
    /* 0x88 */ JUTGamePad::EPadPort mGamePadPort;
    /* 0x8C */ s32 field_0x8c;
    /* 0x90 */ s32 field_0x90;
    /* 0x94 */ u32 mTraceSuppress;
    /* 0x98 */ u32 field_0x98;
    /* 0x9C */ u32 field_0x9c;
    /* 0xA0 */ u32 field_0xa0;
};

STATIC_ASSERT(sizeof(JUTException) == 0xA4);

#endif /* JUTEXCEPTION_H */
