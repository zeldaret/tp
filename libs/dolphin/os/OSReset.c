#include "dolphin/os/OSReset.h"
#include "dolphin/os.h"
#include "string.h"

vu16 __VIRegs[59] : 0xCC002000;
OSThreadQueue __OSActiveThreadQueue : (OS_BASE_CACHED | 0x00DC);

extern OSExecParams __OSRebootParams;

/* 80451690-80451698 000B90 0008+00 2/2 0/0 0/0 .sbss            ResetFunctionQueue */
static OSResetQueue ResetFunctionQueue;

/* 8033F660-8033F6E4 339FA0 0084+00 0/0 5/5 0/0 .text            OSRegisterResetFunction */
void OSRegisterResetFunction(OSResetFunctionInfo* func) {
    OSResetFunctionInfo* tmp;
    OSResetFunctionInfo* iter;

    for (iter = ResetFunctionQueue.first; iter && iter->priority <= func->priority;
         iter = iter->next)
        ;

    if (iter == NULL) {
        tmp = ResetFunctionQueue.last;
        if (tmp == NULL) {
            ResetFunctionQueue.first = func;
        } else {
            tmp->next = func;
        }
        func->prev = tmp;
        func->next = NULL;
        ResetFunctionQueue.last = func;
        return;
    }

    func->next = iter;
    tmp = iter->prev;
    iter->prev = func;
    func->prev = tmp;
    if (tmp == NULL) {
        ResetFunctionQueue.first = func;
        return;
    }
    tmp->next = func;
}

/* 8033F6E4-8033F78C 33A024 00A8+00 1/1 0/0 0/0 .text            __OSCallResetFunctions */
BOOL __OSCallResetFunctions(u32 arg0) {
    OSResetFunctionInfo* iter;
    s32 retCode = 0;
    u32 priority = 0;
    s32 temp;

    for (iter = ResetFunctionQueue.first; iter != NULL;) {
        if (retCode != 0 && priority != iter->priority)
            break;
        temp = !iter->func(arg0);
        priority = iter->priority;
        iter = iter->next;
        retCode |= temp;
    }
    retCode |= !__OSSyncSram();
    if (retCode) {
        return 0;
    }
    return 1;
}

/* 8033F78C-8033F7FC 33A0CC 0070+00 2/2 0/0 0/0 .text            Reset */
static asm void Reset(register s32 param_0) {
    // clang-format off
    nofralloc

    b lbl_8033F7AC

lbl_8033F790:
    mfspr r8, 0x3f0
    ori r8, r8, 8
    mtspr 0x3f0, r8
    isync 
    sync
    nop
    b lbl_8033F7B0

lbl_8033F7AC:
    b lbl_8033F7CC

lbl_8033F7B0:
    mftb r5, 0x10c

lbl_8033F7B4:
    mftb r6, 0x10c
    subf r7, r5, r6
    cmplwi r7, 0x1124
    blt lbl_8033F7B4
    nop 
    b lbl_8033F7D0

lbl_8033F7CC:
    b lbl_8033F7EC

lbl_8033F7D0:
    lis r8, 0xCC00
    ori r8, r8, 0x3000
    li r4, 3
    stw r4, 0x24(r8)
    stw param_0, 0x24(r8)
    nop 
    b lbl_8033F7F0

lbl_8033F7EC:
    b lbl_8033F7F8

lbl_8033F7F0:
    nop 
    b lbl_8033F7F0

lbl_8033F7F8:
    b lbl_8033F790
    // clang-format on
}

/* 8033F7FC-8033F864 33A13C 0068+00 1/1 0/0 0/0 .text            KillThreads */
#pragma dont_inline on
static void KillThreads(void) {
    OSThread* thread;
    OSThread* next;

    for (thread = __OSActiveThreadQueue.head; thread; thread = next) {
        next = thread->active_threads_link.next;
        switch (thread->state) {
        case 1:
        case 4:
            OSCancelThread(thread);
            continue;
        default:
            continue;
        }
    }
}
#pragma dont_inline reset

/* 8033F864-8033F8AC 33A1A4 0048+00 0/0 3/3 0/0 .text            __OSDoHotReset */
void __OSDoHotReset(s32 arg0) {
    OSDisableInterrupts();
    __VIRegs[1] = 0;
    ICFlashInvalidate();
    Reset(arg0 * 8);
}

/* ############################################################################################## */
/* 80451698-804516A0 000B98 0004+04 1/1 0/0 0/0 .sbss            bootThisDol */
static u32 bootThisDol;

/* 8033F8AC-8033FAAC 33A1EC 0200+00 0/0 5/5 0/0 .text            OSResetSystem */
void OSResetSystem(int reset, u32 resetCode, BOOL forceMenu) {
    BOOL rc;
    BOOL disableRecalibration;
    u32 unk;
    OSDisableScheduler();

    if (reset == OS_RESET_HOTRESET && forceMenu) {
        OSSram* sram;

        sram = __OSLockSram();
        sram->flags |= 0x40;
        __OSUnlockSram(TRUE);

        resetCode = 0;
    }

    if (reset == OS_RESET_SHUTDOWN ||
        (reset == OS_RESET_RESTART && (bootThisDol || resetCode + 0x3fff0000 == 0)))
    {
        __OSStopAudioSystem();
        disableRecalibration = __PADDisableRecalibration(TRUE);
        while (!__OSCallResetFunctions(FALSE))
            ;
        while (!__OSSyncSram())
            ;
        OSDisableInterrupts();
        __OSCallResetFunctions(TRUE);
        LCDisable();
        __PADDisableRecalibration(disableRecalibration);
        KillThreads();
    } else {
        __OSStopAudioSystem();
        while (!__OSCallResetFunctions(FALSE))
            ;
        while (!__OSSyncSram())
            ;
        OSDisableInterrupts();
        __OSCallResetFunctions(TRUE);
        LCDisable();
        KillThreads();
    }

    if (reset == OS_RESET_HOTRESET) {
        __OSDoHotReset(resetCode);
    } else if (reset == OS_RESET_RESTART) {
        if (forceMenu == TRUE) {
            OSReport(
                "OSResetSystem(): You can't specify TRUE to forceMenu if you restart. Ignored\n");
        }
        OSEnableScheduler();
        __OSReboot(resetCode, bootThisDol);
    }
    memset(OSPhysicalToCached(0x40), 0, 0xcc - 0x40);
    memset(OSPhysicalToCached(0xd4), 0, 0xe8 - 0xd4);
    memset(OSPhysicalToCached(0xf4), 0, 0xf8 - 0xf4);
    memset(OSPhysicalToCached(0x3000), 0, 0xc0);
    memset(OSPhysicalToCached(0x30c8), 0, 0xd4 - 0xc8);
    memset(OSPhysicalToCached(0x30e2), 0, 1);
}

/* 8033FAAC-8033FAE4 33A3EC 0038+00 0/0 3/3 0/0 .text            OSGetResetCode */
u32 OSGetResetCode(void) {
    if (__OSRebootParams.valid)
        return 0x80000000 | __OSRebootParams.restartCode;

    return ((__PIRegs[9] & ~7) >> 3);
}
