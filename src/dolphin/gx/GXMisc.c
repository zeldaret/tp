#include "dolphin/gx/GXMisc.h"
#include "dolphin/gx.h"
#include "dolphin/os/OSInterrupt.h"
#include "dolphin/os/OSReset.h"
#include "dolphin/os/OSTime.h"

static void GXTokenInterruptHandler(__OSInterrupt interrupt, OSContext* context);
static void GXFinishInterruptHandler(__OSInterrupt interrupt, OSContext* pContext);

/* 8035BE38-8035BECC 356778 0094+00 0/0 9/9 0/0 .text            GXSetMisc */
void GXSetMisc(GXMiscToken token, u32 val) {
    switch (token) {
    case GX_MT_NULL:
        break;

    case GX_MT_XF_FLUSH:
        __GXData->vNum = val;
        __GXData->vNumNot = !__GXData->vNum;
        __GXData->bpSentNot = GX_TRUE;

        if (__GXData->vNum) {
            __GXData->dirtyState |= GX_DIRTY_VCD;
        }
        break;

    case GX_MT_DL_SAVE_CONTEXT:
        __GXData->dlSaveContext = (val != 0);
        break;

    case GX_MT_ABORT_WAIT_COPYOUT:
        __GXData->abtWaitPECopy = (val != 0);
        break;
    }
}

/* 8035BECC-8035BF28 35680C 005C+00 1/1 10/10 0/0 .text            GXFlush */
void GXFlush(void) {
    if (__GXData->dirtyState) {
        __GXSetDirtyState();
    }

    GXWGFifo.u32 = 0;
    GXWGFifo.u32 = 0;
    GXWGFifo.u32 = 0;
    GXWGFifo.u32 = 0;
    GXWGFifo.u32 = 0;
    GXWGFifo.u32 = 0;
    GXWGFifo.u32 = 0;
    GXWGFifo.u32 = 0;

    PPCSync();
}

static void __GXAbortWait(u32 clocks) {
    OSTime time0, time1;
    time0 = OSGetTime();

    do {
        time1 = OSGetTime();
    } while (time1 - time0 <= clocks / 4);
}

static void __GXAbortWaitPECopyDone(void) {
    u32 peCnt0, peCnt1;

    peCnt0 = GXReadMEMReg(0x28, 0x27);
    do {
        peCnt1 = peCnt0;
        __GXAbortWait(32);

        peCnt0 = GXReadMEMReg(0x28, 0x27);
    } while (peCnt0 != peCnt1);
}

/* 8035BF28-8035C094 356868 016C+00 0/0 1/1 0/0 .text            __GXAbort */
void __GXAbort(void) {
    if (__GXData->abtWaitPECopy && GXGetGPFifo()) {
        __GXAbortWaitPECopyDone();
    }

    __PIRegs[0x18 / 4] = 1;
    __GXAbortWait(200);
    __PIRegs[0x18 / 4] = 0;
    __GXAbortWait(20);
}

/* 8035C094-8035C25C 3569D4 01C8+00 0/0 2/2 0/0 .text            GXAbortFrame */
void GXAbortFrame(void) {
    __GXAbort();
    if (GXGetGPFifo()) {
        __GXCleanGPFifo();
        __GXInitRevisionBits();
        __GXData->dirtyState = 0;
        GXFlush();
    }
}

/* ############################################################################################## */
/* 80451968-8045196C 000E68 0004+00 2/2 0/0 0/0 .sbss            TokenCB */
static GXDrawSyncCallback TokenCB;

/* 8045196C-80451970 000E6C 0004+00 2/2 0/0 0/0 .sbss            DrawDoneCB */
static GXDrawDoneCallback DrawDoneCB;

/* 80451970-80451974 000E70 0004+00 3/3 0/0 0/0 .sbss            None */
static GXBool DrawDone;

/* 8035C25C-8035C2F4 356B9C 0098+00 0/0 2/2 0/0 .text            GXSetDrawDone */
void GXSetDrawDone(void) {
    u8 padding[8];
    BOOL restore = OSDisableInterrupts();
    GFWriteBPCmd(0x45000002);
    GXFlush();
    DrawDone = 0;
    OSRestoreInterrupts(restore);
}

/* ############################################################################################## */
/* 80451974-8045197C 000E74 0008+00 3/3 0/0 0/0 .sbss            FinishQueue */
static OSThreadQueue FinishQueue;

static void GXWaitDrawDone(void) {
    BOOL restore = OSDisableInterrupts();
    while (DrawDone == 0) {
        OSSleepThread(&FinishQueue);
    }
    OSRestoreInterrupts(restore);
}

/* 8035C2F4-8035C374 356C34 0080+00 0/0 3/3 1/1 .text            GXDrawDone */
void GXDrawDone(void) {
    u8 padding[8];
    GXSetDrawDone();
    GXWaitDrawDone();
}

/* 8035C374-8035C398 356CB4 0024+00 0/0 9/9 0/0 .text            GXPixModeSync */
void GXPixModeSync(void) {
    GXWGFifo.u8 = 0x61;
    GXWGFifo.u32 = __GXData->peCtrl;
    __GXData->bpSentNot = 0;
}

/* 8035C398-8035C3AC 356CD8 0014+00 0/0 1/1 0/0 .text            GXPokeAlphaMode */
void GXPokeAlphaMode(GXCompare comp, u8 threshold) {
    __peReg[3] = (comp << 8) | threshold;
}

/* 8035C3AC-8035C3CC 356CEC 0020+00 0/0 1/1 0/0 .text            GXPokeAlphaRead */
void GXPokeAlphaRead(GXAlphaReadMode mode) {
    u32 val = 0;
    GX_BITFIELD_SET(val, 0x1e, 2, mode);
    GX_BITFIELD_SET(val, 0x1d, 1, 1);
    __peReg[4] = val;
}

/* 8035C3CC-8035C3E4 356D0C 0018+00 0/0 1/1 0/0 .text            GXPokeAlphaUpdate */
void GXPokeAlphaUpdate(GXBool enable_update) {
    GX_BITFIELD_SET(__peReg[1], 0x1b, 1, enable_update);
}

/* 8035C3E4-8035C448 356D24 0064+00 0/0 1/1 0/0 .text            GXPokeBlendMode */
void GXPokeBlendMode(GXBlendMode mode, GXBlendFactor srcFactor, GXBlendFactor destFactor,
                     GXLogicOp op) {
    u32 reg;

    reg = GX_GET_PE_REG(1);
    GX_SET_REG(reg, (mode == GX_BM_BLEND) || (mode == GX_BM_SUBTRACT), 31, 31);
    GX_SET_REG(reg, (mode == GX_BM_SUBTRACT), 20, 20);
    GX_SET_REG(reg, (mode == GX_BM_LOGIC), 30, 30);
    GX_SET_REG(reg, op, 16, 19);
    GX_SET_REG(reg, srcFactor, 21, 23);
    GX_SET_REG(reg, destFactor, 24, 26);
    GX_SET_REG(reg, 0x41, 0, 7);
    GX_SET_PE_REG(1, reg);
}

/* 8035C448-8035C460 356D88 0018+00 0/0 1/1 0/0 .text            GXPokeColorUpdate */
void GXPokeColorUpdate(GXBool enable_update) {
    GX_BITFIELD_SET(__peReg[1], 0x1c, 1, enable_update);
}

/* 8035C460-8035C484 356DA0 0024+00 0/0 1/1 0/0 .text            GXPokeDstAlpha */
void GXPokeDstAlpha(GXBool enable, u8 alpha) {
    u32 val = 0;
    GX_BITFIELD_SET(val, 0x18, 8, alpha);
    GX_BITFIELD_SET(val, 0x17, 1, enable);
    __peReg[2] = val;
}

/* 8035C484-8035C49C 356DC4 0018+00 0/0 1/1 0/0 .text            GXPokeDither */
void GXPokeDither(GXBool enable) {
    GX_BITFIELD_SET(__peReg[1], 0x1d, 1, enable);
}

/* 8035C49C-8035C4BC 356DDC 0020+00 0/0 1/1 0/0 .text            GXPokeZMode */
void GXPokeZMode(GXBool enable_compare, GXCompare comp, GXBool update_enable) {
    u32 val = 0;
    GX_BITFIELD_SET(val, 0x1f, 1, enable_compare);
    GX_BITFIELD_SET(val, 0x1c, 3, comp);
    GX_BITFIELD_SET(val, 0x1b, 1, update_enable);
    __peReg[0] = val;
}

/* 8035C4BC-8035C4E0 356DFC 0024+00 0/0 1/1 0/0 .text            GXPeekZ */
void GXPeekZ(u16 x, u16 y, u32* z) {
    u32 addr = 0xc8000000;
    GX_BITFIELD_SET(addr, 0x14, 10, x);
    GX_BITFIELD_SET(addr, 0xa, 10, y);
    GX_BITFIELD_SET(addr, 8, 2, 1);
    *z = *(u32*)addr;
}

/* 8035C4E0-8035C524 356E20 0044+00 0/0 1/1 0/0 .text            GXSetDrawSyncCallback */
GXDrawSyncCallback GXSetDrawSyncCallback(GXDrawSyncCallback callback) {
    BOOL restore;
    GXDrawSyncCallback prevCb = TokenCB;
    restore = OSDisableInterrupts();
    TokenCB = callback;
    OSRestoreInterrupts(restore);
    return prevCb;
}

/* 8035C524-8035C5AC 356E64 0088+00 1/1 0/0 0/0 .text            GXTokenInterruptHandler */
static void GXTokenInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    u16 token;
    OSContext exceptContext;
    u32 reg;

    token = GX_GET_PE_REG(7);

    if (TokenCB) {
        OSClearContext(&exceptContext);
        OSSetCurrentContext(&exceptContext);
        TokenCB(token);
        OSClearContext(&exceptContext);
        OSSetCurrentContext(context);
    }

    reg = GX_GET_PE_REG(5);
    GX_SET_REG(reg, 1, 29, 29);
    GX_SET_PE_REG(5, reg);
}

/* 8035C5AC-8035C5F0 356EEC 0044+00 0/0 4/4 0/0 .text            GXSetDrawDoneCallback */
GXDrawDoneCallback GXSetDrawDoneCallback(GXDrawDoneCallback callback) {
    BOOL restore;
    GXDrawDoneCallback prevCb = DrawDoneCB;
    restore = OSDisableInterrupts();
    DrawDoneCB = callback;
    OSRestoreInterrupts(restore);
    return prevCb;
}

/* 8035C5F0-8035C670 356F30 0080+00 1/1 0/0 0/0 .text            GXFinishInterruptHandler */
static void GXFinishInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    OSContext exceptContext;
    u32 reg;

    reg = GX_GET_PE_REG(5);
    GX_SET_REG(reg, 1, 28, 28);
    GX_SET_PE_REG(5, reg);

    DrawDone = GX_TRUE;

    if (DrawDoneCB) {
        OSClearContext(&exceptContext);
        OSSetCurrentContext(&exceptContext);
        DrawDoneCB();
        OSClearContext(&exceptContext);
        OSSetCurrentContext(context);
    }

    OSWakeupThread(&FinishQueue);
}

/* 8035C670-8035C6E4 356FB0 0074+00 0/0 1/1 0/0 .text            __GXPEInit */
void __GXPEInit(void) {
    u32 val;
    __OSSetInterruptHandler(OS_INTR_PI_PE_TOKEN, GXTokenInterruptHandler);
    __OSSetInterruptHandler(OS_INTR_PI_PE_FINISH, GXFinishInterruptHandler);
    OSInitThreadQueue(&FinishQueue);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_PE_TOKEN);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_PE_FINISH);
    val = __peReg[5];
    GX_BITFIELD_SET(val, 0x1d, 1, 1);
    GX_BITFIELD_SET(val, 0x1c, 1, 1);
    GX_BITFIELD_SET(val, 0x1f, 1, 1);
    GX_BITFIELD_SET(val, 0x1e, 1, 1);
    __peReg[5] = val;
}