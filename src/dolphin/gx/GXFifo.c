#include "dolphin/gx/GXFifo.h"
#include "dolphin/gx.h"
#include "dolphin/os.h"

static void GXInitFifoLimits(GXFifoObj* fifo, u32 hi_watermark, u32 lo_watermark);

/* 80451948-8045194C 000E48 0004+00 4/3 0/0 0/0 .sbss            CPUFifo */
static GXFifoObj* CPUFifo;

/* 8045194C-80451950 000E4C 0004+00 4/3 0/0 0/0 .sbss            GPFifo */
static GXFifoObj* GPFifo;

/* 80451950-80451954 000E50 0004+00 4/3 0/0 0/0 .sbss            __GXCurrentThread */
static OSThread* __GXCurrentThread;

/* 80451954-80451958 000E54 0004+00 3/3 0/0 0/0 .sbss            None */
static GXBool data_80451954;

/* 80451958-8045195C 000E58 0004+00 2/2 0/0 0/0 .sbss            GXOverflowSuspendInProgress */
static u32 GXOverflowSuspendInProgress;

/* 8045195C-80451960 000E5C 0004+00 2/2 0/0 0/0 .sbss            BreakPointCB */
static GXBreakPtCallback BreakPointCB;

/* 80451960-80451968 000E60 0004+04 1/1 0/0 0/0 .sbss            __GXOverflowCount */
static u32 __GXOverflowCount;

static void GXOverflowHandler() {
    __GXOverflowCount += 1;
    __GXWriteFifoIntEnable(0, 1);
    __GXWriteFifoIntReset(1, 0);
    GXOverflowSuspendInProgress = TRUE;
    OSSuspendThread(__GXCurrentThread);
}

static void GXUnderflowHandler() {
    OSResumeThread(__GXCurrentThread);
    GXOverflowSuspendInProgress = FALSE;
    __GXWriteFifoIntReset(1, 1);
    __GXWriteFifoIntEnable(1, 0);
}

static void GXBreakPointHandler(OSContext* context) {
    OSContext bpContext;

    FAST_FLAG_SET(__GXData->cpEnable, 0, 5, 1);
    GX_SET_CP_REG(1, __GXData->cpEnable);

    if (BreakPointCB) {
        OSClearContext(&bpContext);
        OSSetCurrentContext(&bpContext);
        BreakPointCB();
        OSClearContext(&bpContext);
        OSSetCurrentContext(context);
    }
}

/* 8035A5A8-8035A6DC 354EE8 0134+00 1/1 0/0 0/0 .text            GXCPInterruptHandler */
static void GXCPInterruptHandler(s16 p1, OSContext* context) {
    __GXData->cpStatus = GX_GET_CP_REG(0);

    if ((__GXData->cpEnable >> 3 & 1) && (__GXData->cpStatus >> 1 & 1)) {
        GXUnderflowHandler();
    }

    if ((__GXData->cpEnable >> 2 & 1) && (__GXData->cpStatus >> 0 & 1)) {
        GXOverflowHandler();
    }

    if ((__GXData->cpEnable >> 5 & 1) && (__GXData->cpStatus >> 4 & 1)) {
        GXBreakPointHandler(context);
    }
}

/* 8035A6DC-8035A748 35501C 006C+00 0/0 2/2 0/0 .text            GXInitFifoBase */
void GXInitFifoBase(GXFifoObj* fifo, void* base, u32 size) {
    fifo->base = base;
    fifo->end = (void*)((u32)base + size - 4);
    fifo->size = size;
    fifo->rw_dst = 0;
    GXInitFifoLimits(fifo, size - 0x4000, OSRoundDown32B(size / 2));
    GXInitFifoPtrs(fifo, base, base);
}

/* 8035A748-8035A7B8 355088 0070+00 1/1 1/1 0/0 .text            GXInitFifoPtrs */
void GXInitFifoPtrs(GXFifoObj* fifo, void* readPtr, void* writePtr) {
    int interrupts = OSDisableInterrupts();
    fifo->read_ptr = readPtr;
    fifo->write_ptr = writePtr;
    fifo->rw_dst = (u32)writePtr - (u32)readPtr;
    if (fifo->rw_dst < 0) {
        fifo->rw_dst += fifo->size;
    }
    OSRestoreInterrupts(interrupts);
}

/* 8035A7B8-8035A7C4 3550F8 000C+00 1/1 0/0 0/0 .text            GXInitFifoLimits */
static void GXInitFifoLimits(GXFifoObj* fifo, u32 hi_watermark, u32 lo_watermark) {
    fifo->high_wtrmark = hi_watermark;
    fifo->low_wtrmark = lo_watermark;
}

/* 8035A7C4-8035A8EC 355104 0128+00 1/1 1/1 0/0 .text            GXSetCPUFifo */
void GXSetCPUFifo(GXFifoObj* fifo) {
    BOOL interrupts;
    interrupts = OSDisableInterrupts();

    CPUFifo = fifo;

    if (fifo == GPFifo) {
        u32 reg;
        GX_SET_PI_REG(3, (u32)fifo->base & 0x3FFFFFFF);
        GX_SET_PI_REG(4, (u32)fifo->end & 0x3FFFFFFF);
        reg = 0;
        GX_BITFIELD_SET(reg, 6, 21, (u32)fifo->write_ptr >> 5);
        GX_BITFIELD_SET(reg, 5, 1, 0);
        GX_SET_PI_REG(5, reg);

        data_80451954 = GX_TRUE;

        __GXWriteFifoIntReset(1, 1);
        __GXWriteFifoIntEnable(1, 0);
        __GXFifoLink(1);
    } else {
        u32 reg;
        if (data_80451954) {
            __GXFifoLink(0);
            data_80451954 = GX_FALSE;
        }
        __GXWriteFifoIntEnable(0, 0);

        GX_SET_PI_REG(3, (u32)fifo->base & 0x3FFFFFFF);
        GX_SET_PI_REG(4, (u32)fifo->end & 0x3FFFFFFF);
        reg = 0;
        GX_BITFIELD_SET(reg, 6, 21, (u32)fifo->write_ptr >> 5);
        GX_BITFIELD_SET(reg, 5, 1, 0);
        GX_SET_PI_REG(5, reg);
    }

    PPCSync();

    OSRestoreInterrupts(interrupts);
}

/* 8035A8EC-8035AA8C 35522C 01A0+00 1/1 1/1 0/0 .text            GXSetGPFifo */
void GXSetGPFifo(GXFifoObj* fifo) {
    int interrupts = OSDisableInterrupts();
    u32 reg;
    __GXFifoReadDisable();
    __GXWriteFifoIntEnable(0, 0);
    GPFifo = fifo;
    GX_SET_CP_REG(16, (u16)fifo->base);
    GX_SET_CP_REG(18, (u16)fifo->end);
    GX_SET_CP_REG(24, (u16)fifo->rw_dst);
    GX_SET_CP_REG(26, (u16)fifo->write_ptr);
    GX_SET_CP_REG(28, (u16)fifo->read_ptr);
    GX_SET_CP_REG(20, (u16)fifo->high_wtrmark);
    GX_SET_CP_REG(22, (u16)fifo->low_wtrmark);

    GX_SET_CP_REG(17, ((u32)fifo->base & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(19, ((u32)fifo->end & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(25, (fifo->rw_dst) >> 16);
    GX_SET_CP_REG(27, ((u32)fifo->write_ptr & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(29, ((u32)fifo->read_ptr & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(21, (fifo->high_wtrmark) >> 16);
    GX_SET_CP_REG(23, (fifo->low_wtrmark) >> 16);

    PPCSync();

    if (CPUFifo == GPFifo) {
        data_80451954 = 1;
        __GXWriteFifoIntEnable(1, 0);
        __GXFifoLink(1);
    } else {
        data_80451954 = 0;
        __GXWriteFifoIntEnable(0, 0);
        __GXFifoLink(0);
    }
    reg = __GXData->cpEnable;
    GX_BITFIELD_SET(reg, 0x1e, 1, 0);
    GX_BITFIELD_SET(reg, 0x1a, 1, 0);
    GX_SET_CP_REG(1, reg);
    GX_SET_CP_REG(1, __GXData->cpEnable);
    __GXWriteFifoIntReset(1, 1);
    __GXFifoReadEnable();
    OSRestoreInterrupts(interrupts);
}

/* 8035AA8C-8035AAC0 3553CC 0034+00 0/0 1/1 0/0 .text            GXSaveCPUFifo */
void GXSaveCPUFifo(GXFifoObj* fifo) {
    GXFlush();
    __GXSaveCPUFifoAux(fifo);
}

/* 8035AAC0-8035AB88 355400 00C8+00 1/1 0/0 0/0 .text            __GXSaveCPUFifoAux */
void __GXSaveCPUFifoAux(GXFifoObj* fifo) {
    int interrupts = OSDisableInterrupts();
    fifo->base = OSPhysicalToCached(GX_GET_PI_REG(3));
    fifo->end = OSPhysicalToCached(GX_GET_PI_REG(4));
    fifo->write_ptr = OSPhysicalToCached(GX_GET_PI_REG(5) & ~0x4000000);
    if (data_80451954 != 0) {
        u32 reg2 = GX_GET_CP_REG(28) | (GX_GET_CP_REG(29) << 16);
        fifo->read_ptr = (void*)(reg2 + -0x80000000);
        fifo->rw_dst = (((u32)GX_GET_CP_REG(24) | (GX_GET_CP_REG(25) << 16)));
    } else {
        fifo->rw_dst = (u32)fifo->write_ptr - (u32)fifo->read_ptr;
        if (fifo->rw_dst < 0) {
            fifo->rw_dst += fifo->size;
        }
    }
    OSRestoreInterrupts(interrupts);
}

/* 8035AB88-8035ABD8 3554C8 0050+00 0/0 2/2 0/0 .text            GXGetGPStatus */
void GXGetGPStatus(GXBool* overhi, GXBool* underlow, GXBool* readIdle, GXBool* cmdIdle,
                   GXBool* brkpt) {
    __GXData->cpStatus = GX_GET_CP_REG(0);
    *overhi = __GXData->cpStatus & 1;
    *underlow = (__GXData->cpStatus >> 1) & 1;
    *readIdle = (__GXData->cpStatus >> 2) & 1;
    *cmdIdle = (__GXData->cpStatus >> 3) & 1;
    *brkpt = (__GXData->cpStatus >> 4) & 1;
}

/* 8035ABD8-8035ABE0 355518 0008+00 0/0 1/1 0/0 .text            GXGetFifoBase */
void* GXGetFifoBase(GXFifoObj* fifo) {
    return fifo->base;
}

/* 8035ABE0-8035ABE8 355520 0008+00 0/0 1/1 0/0 .text            GXGetFifoSize */
u32 GXGetFifoSize(GXFifoObj* fifo) {
    return fifo->size;
}

/* 8035ABE8-8035AC2C 355528 0044+00 0/0 1/1 0/0 .text            GXSetBreakPtCallback */
GXBreakPtCallback GXSetBreakPtCallback(GXBreakPtCallback cb) {
    GXBreakPtCallback oldCallback = BreakPointCB;
    int interrupts = OSDisableInterrupts();
    BreakPointCB = cb;
    OSRestoreInterrupts(interrupts);
    return oldCallback;
}

/* 8035AC2C-8035AC78 35556C 004C+00 0/0 1/1 0/0 .text            __GXFifoInit */
void __GXFifoInit(void) {
    __OSSetInterruptHandler(0x11, GXCPInterruptHandler);
    __OSUnmaskInterrupts(0x4000);
    __GXCurrentThread = OSGetCurrentThread();
    GXOverflowSuspendInProgress = 0;
    CPUFifo = NULL;
    GPFifo = NULL;
}

/* 8035AC78-8035AC9C 3555B8 0024+00 1/1 0/0 0/0 .text            __GXFifoReadEnable */
void __GXFifoReadEnable(void) {
    FAST_FLAG_SET(__GXData->cpEnable, 1, 0, 1);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

/* 8035AC9C-8035ACC0 3555DC 0024+00 1/1 0/0 0/0 .text            __GXFifoReadDisable */
void __GXFifoReadDisable(void) {
    FAST_FLAG_SET(__GXData->cpEnable, 0, 0, 1);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

/* 8035ACC0-8035ACF4 355600 0034+00 2/2 0/0 0/0 .text            __GXFifoLink */
void __GXFifoLink(u8 link) {
    u32 b;
    if (link) {
        b = 1;
    } else {
        b = 0;
    }
    FAST_FLAG_SET(__GXData->cpEnable, b, 4, 1);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

/* 8035ACF4-8035AD24 355634 0030+00 3/3 0/0 0/0 .text            __GXWriteFifoIntEnable */
void __GXWriteFifoIntEnable(u32 p1, u32 p2) {
    FAST_FLAG_SET(__GXData->cpEnable, p1, 2, 1);
    FAST_FLAG_SET(__GXData->cpEnable, (u8)p2, 3, 1);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

/* 8035AD24-8035AD54 355664 0030+00 3/3 0/0 0/0 .text            __GXWriteFifoIntReset */
void __GXWriteFifoIntReset(u32 p1, u32 p2) {
    FAST_FLAG_SET(__GXData->cpClr, p1, 0, 1);
    FAST_FLAG_SET(__GXData->cpClr, (u8)p2, 1, 1);
    GX_SET_CP_REG(2, __GXData->cpClr);
}

/* 8035AD54-8035AE54 355694 0100+00 0/0 1/1 0/0 .text            __GXCleanGPFifo */
void __GXCleanGPFifo(void) {
    BOOL interrupts;
    GXFifoObj tempObj;   // 0x14
    u32 i, j, k;         // stack alloc
    GXFifoObj* gpFifo;   // r31
    GXFifoObj* cpuFifo;  // r30
    void* tempPtr;       // r29

    gpFifo = GXGetGPFifo();
    if (!gpFifo) {
        return;
    }

    cpuFifo = GXGetCPUFifo();
    tempPtr = gpFifo->base;

    tempObj = *gpFifo;

    interrupts = OSDisableInterrupts();

    tempObj.read_ptr = tempPtr;
    tempObj.write_ptr = tempPtr;
    tempObj.rw_dst = 0;
    if (tempObj.rw_dst < 0) {
        tempObj.rw_dst += tempObj.size;
    }

    OSRestoreInterrupts(interrupts);

    GXSetGPFifo(&tempObj);

    if (cpuFifo == gpFifo) {
        GXSetCPUFifo(&tempObj);
    }

    interrupts = OSDisableInterrupts();

    gpFifo->read_ptr = tempPtr;
    gpFifo->write_ptr = tempPtr;
    gpFifo->rw_dst = 0;

    if (gpFifo->rw_dst < 0) {
        gpFifo->rw_dst += gpFifo->size;
    }
    OSRestoreInterrupts(interrupts);

    GXSetGPFifo(gpFifo);
    if (cpuFifo == gpFifo) {
        GXSetCPUFifo(cpuFifo);
    }
}

/* 8035AE54-8035AEA0 355794 004C+00 0/0 1/1 0/0 .text            GXSetCurrentGXThread */
OSThread* GXSetCurrentGXThread(void) {
    BOOL interrupts = OSDisableInterrupts();
    OSThread* prevThread = __GXCurrentThread;
    __GXCurrentThread = OSGetCurrentThread();
    OSRestoreInterrupts(interrupts);
    return prevThread;
}

/* 8035AEA0-8035AEA8 -00001 0008+00 0/0 0/0 0/0 .text            GXGetCurrentGXThread */
OSThread* GXGetCurrentGXThread(void) {
    return *(OSThread**)(&__GXCurrentThread);
}

/* 8035AEA8-8035AEB0 -00001 0008+00 0/0 0/0 0/0 .text            GXGetCPUFifo */
GXFifoObj* GXGetCPUFifo(void) {
    return *(GXFifoObj**)(&CPUFifo);
}

/* 8035AEB0-8035AEB8 -00001 0008+00 0/0 0/0 0/0 .text            GXGetGPFifo */
GXFifoObj* GXGetGPFifo(void) {
    return GPFifo;
}