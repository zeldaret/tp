#ifndef JFWSYSTEM_H
#define JFWSYSTEM_H

#include "JSystem/JUtility/JUTConsole.h"
#include "dolphin/types.h"

struct JFWSystem {
    struct CSetUpParam {
        static u32 maxStdHeaps;
        static u32 sysHeapSize;
        static u32 fifoBufSize;
        static u32 aramAudioBufSize;
        static u32 aramGraphBufSize;
        static u32 streamPriority;
        static u32 decompPriority;
        static u32 aPiecePriority;
        static void* systemFontRes;
        static void* renderMode;
        static u32 exConsoleBufferSize[1 + 1 /* padding */];
    };

    /* 80271CD0 */ void firstInit();
    /* 80271D18 */ void init();

    static JUTConsole* getSystemConsole() { return systemConsole; }

    static u8 rootHeap[4];
    static u8 systemHeap[4];
    static u8 mainThread[4];
    static u8 debugPrint[4];
    static u8 systemFont[4];
    static u8 systemConsoleManager[4];
    static JUTConsole* systemConsole;
};

#endif /* JFWSYSTEM_H */
