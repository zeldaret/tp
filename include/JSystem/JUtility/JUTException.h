#ifndef JUTEXCEPTION_H
#define JUTEXCEPTION_H

#include "JSystem/JKernel/JKRThread.h"
#include "JSystem/JSupport/JSUList.h"
#include "JSystem/JUtility/JUTGamePad.h"
#include "Runtime.PPCEABI.H/__va_arg.h"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/os/OSError.h"
#include "dolphin/os/OSMessage.h"
#include "dolphin/types.h"
#include "global.h"

typedef struct _GXRenderModeObj GXRenderModeObj;
typedef struct OSContext OSContext;
class JUTDirectPrint;

class JUTExternalFB {
public:
    /* 802E40CC */ JUTExternalFB(_GXRenderModeObj*, GXGamma, void*, u32);

private:
    /* 0x00 */ _GXRenderModeObj* mRenderMode;
    /* 0x04 */ u32 mSize;
    /* 0x08 */ u32 field_0x08;
    /* 0x0C */ u16 field_0x0C;
    /* 0x0E */ u16 mGamma;
    /* 0x10 */ bool field_0x10;
    /* 0x11 */ u8 field_[3];
};

STATIC_ASSERT(sizeof(JUTExternalFB) == 0x14);

#define JUT_PRINT_GPR 1
#define JUT_PRINT_GPR_MAP 2
#define JUT_PRINT_SRR0_MAP 4
#define JUT_PRINT_FLOAT 8
#define JUT_PRINT_STACK 16

class JUTException : public JKRThread {
public:
    enum EInfoPage {
        EINFO_PAGE_GPR = 1,
        EINFO_PAGE_FLOAT = 2,
        EINFO_PAGE_STACK = 3,
        EINFO_PAGE_GPR_MAP = 4,
        EINFO_PAGE_SSR0_MAP = 5,
    };

    class JUTExMapFile {
    public:
        JUTExMapFile(char* path) : mLink(this) { mPath = path; }

    public:
        /* 0x00 */ char* mPath;
        /* 0x04 */ JSULink<JUTExMapFile> mLink;
        /* 0x14 */
    };

    /* 802E1D5C */ JUTException(JUTDirectPrint*);
    /* 802E40EC */ virtual ~JUTException();

    /* 802E22C4 */ void showFloatSub(int, f32);
    /* 802E2454 */ void showFloat(OSContext*);
    /* 802E26B0 */ void showStack(OSContext*);
    /* 802E27B0 */ void showMainInfo(u16, OSContext*, u32, u32);
    /* 802E2A84 */ void showGPR(OSContext*);
    /* 802E2B44 */ bool showMapInfo_subroutine(u32, bool);
    /* 802E2CA0 */ void showGPRMap(OSContext*);
    /* 802E2DAC */ void showSRR0Map(OSContext*);
    /* 802E2E70 */ void printDebugInfo(JUTException::EInfoPage, OSError, OSContext*, u32, u32);
    /* 802E2F18 */ bool isEnablePad() const;
    /* 802E2F54 */ bool readPad(u32*, u32*);
    /* 802E34C0 */ void printContext(u16, OSContext*, u32, u32);
    /* 802E3A08 */ void createFB();

    /* 802E1EA8 */ /* vt[03] */ virtual void* run();

    /* 802E1E40 */ static JUTException* create(JUTDirectPrint*);
    /* 802E1FCC */ static void errorHandler(OSError, OSContext*, u32, u32);
    /* 802E20C0 */ static void panic_f_va(char const*, int, char const*, va_list);
    /* 802E21FC */ static void panic_f(char const*, int, char const*, ...);
    /* 802E227C */ static void setFPException(u32);
    /* 802E2578 */ static bool searchPartialModule(u32, u32*, u32*, u32*, u32*);
    /* 802E3AEC */ static OSErrorHandler setPreUserCallback(OSErrorHandler);
    /* 802E3AFC */ static OSErrorHandler setPostUserCallback(OSErrorHandler);
    /* 802E3B0C */ static void appendMapFile(char const*);
    /* 802E3BA0 */ static bool queryMapAddress(char*, u32, s32, u32*, u32*, char*, u32, bool, bool);
    /* 802E3C90 */ static bool queryMapAddress_single(char*, u32, s32, u32*, u32*, char*, u32, bool,
                                                      bool);
    /* 802E3FEC */ static void createConsole(void*, u32);
    /* 802E3980 */ static void waitTime(s32);

    static JUTException* getManager() { return sErrorManager; }
    static JUTConsole* getConsole() { return sConsole; }

    JUTExternalFB* getFrameMemory() const { return mFrameMemory; }

    void setTraceSuppress(u32 param_0) { mTraceSuppress = param_0; }
    void setGamePad(JUTGamePad* gamePad) {
        mGamePad = gamePad;
        mGamePadPort = JUTGamePad::Port_Unknown;
    }

    static void setMapFile(const char* map) {
        appendMapFile(map);
    }

private:
    static OSMessageQueue sMessageQueue;
    static const char* sCpuExpName[17];
    static JSUList<JUTException::JUTExMapFile> sMapFileList;
    static u8 sMessageBuffer[4 + 4 /* padding */];
    static JUTException* sErrorManager;
    static OSErrorHandler sPreUserCallback;
    static OSErrorHandler sPostUserCallback;
    static void* sConsoleBuffer;
    static u32 sConsoleBufferSize;
    static JUTConsole* sConsole;
    static u32 msr;
    static u32 fpscr;

private:
    /* 0x7C */ JUTExternalFB* mFrameMemory;
    /* 0x80 */ JUTDirectPrint* mDirectPrint;
    /* 0x84 */ JUTGamePad* mGamePad;
    /* 0x88 */ JUTGamePad::EPadPort mGamePadPort;
    /* 0x8C */ s32 mPrintWaitTime0;
    /* 0x90 */ s32 mPrintWaitTime1;
    /* 0x94 */ u32 mTraceSuppress;
    /* 0x98 */ u32 field_0x98;
    /* 0x9C */ u32 mPrintFlags;
    /* 0xA0 */ u32 mStackPointer;
};

STATIC_ASSERT(sizeof(JUTException) == 0xA4);

struct JUTWarn {
    JUTWarn& operator<<(const char*) { return *this; }
    JUTWarn& operator<<(long) { return *this; }
};

#endif /* JUTEXCEPTION_H */
