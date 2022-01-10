#ifndef JFWSYSTEM_H
#define JFWSYSTEM_H

#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRThread.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTDbPrint.h"
#include "JSystem/JUtility/JUTResFont.h"
#include "dolphin/types.h"

struct JFWSystem {
    struct CSetUpParam {
        static s32 maxStdHeaps;
        static u32 sysHeapSize;
        static u32 fifoBufSize;
        static u32 aramAudioBufSize;
        static u32 aramGraphBufSize;
        static u32 streamPriority;
        static u32 decompPriority;
        static u32 aPiecePriority;
        static ResFONT* systemFontRes;
        static GXRenderModeObj* renderMode;
        static u32 exConsoleBufferSize;
    };

    /* 80271CD0 */ static void firstInit();
    /* 80271D18 */ static void init();

    static JUTConsole* getSystemConsole() { return systemConsole; }

    static JKRExpHeap* rootHeap;
    static JKRExpHeap* systemHeap;
    static JKRThread* mainThread;
    static JUTDbPrint* debugPrint;
    static JUTResFont* systemFont;
    static JUTConsoleManager* systemConsoleManager;
    static JUTConsole* systemConsole;
};

#endif /* JFWSYSTEM_H */
