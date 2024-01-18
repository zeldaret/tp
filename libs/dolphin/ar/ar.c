#include "dolphin/ar.h"
#include "dolphin/base/PPCArch.h"
#include "dolphin/dsp.h"
#include "dolphin/os.h"
#include "string.h"

/* 80450A48-80450A50 -00001 0004+04 1/1 0/0 0/0 .sdata           __ARVersion */
char* __ARVersion = "<< Dolphin SDK - AR\trelease build: Apr  5 2004 04:15:03 (0x2301) >>";

void __ARHandler(s16 interrupt, OSContext* context);
void __ARClearInterrupt();
void __ARChecksize();

/* 804518B8-804518BC 000DB8 0004+00 3/3 0/0 0/0 .sbss            __AR_Callback */
static ARCallback __AR_Callback;

/* 80350554-80350598 34AE94 0044+00 0/0 1/1 0/0 .text            ARRegisterDMACallback */
ARCallback ARRegisterDMACallback(ARCallback callback) {
    ARCallback oldCb;
    BOOL enabled;
    oldCb = __AR_Callback;
    enabled = OSDisableInterrupts();
    __AR_Callback = callback;
    OSRestoreInterrupts(enabled);
    return oldCb;
}

/* 80350598-803505D4 34AED8 003C+00 0/0 2/2 0/0 .text            ARGetDMAStatus */
u32 ARGetDMAStatus() {
    BOOL enabled;
    u32 val;
    enabled = OSDisableInterrupts();
    val = __DSPRegs[5] & 0x0200;
    OSRestoreInterrupts(enabled);
    return val;
}

/* 803505D4-803506C4 34AF14 00F0+00 0/0 5/5 0/0 .text            ARStartDMA */
void ARStartDMA(u32 type, u32 mainmem_addr, u32 aram_addr, u32 length) {
    BOOL enabled;

    enabled = OSDisableInterrupts();

    __DSPRegs[16] = (u16)(__DSPRegs[16] & ~0x3ff) | (u16)(mainmem_addr >> 16);
    __DSPRegs[17] = (u16)(__DSPRegs[17] & ~0xffe0) | (u16)(mainmem_addr & 0xffff);
    __DSPRegs[18] = (u16)(__DSPRegs[18] & ~0x3ff) | (u16)(aram_addr >> 16);
    __DSPRegs[19] = (u16)(__DSPRegs[19] & ~0xffe0) | (u16)(aram_addr & 0xffff);
    __DSPRegs[20] = (u16)((__DSPRegs[20] & ~0x8000) | (type << 15));
    __DSPRegs[20] = (u16)(__DSPRegs[20] & ~0x3ff) | (u16)(length >> 16);
    __DSPRegs[21] = (u16)(__DSPRegs[21] & ~0xffe0) | (u16)(length & 0xffff);
    OSRestoreInterrupts(enabled);
}

/* ############################################################################################## */
/* 804518BC-804518C0 000DBC 0004+00 2/1 0/0 0/0 .sbss            __AR_Size */
static u32 __AR_Size;

/* 804518C0-804518C4 000DC0 0004+00 1/1 0/0 0/0 .sbss            __AR_InternalSize */
static u32 __AR_InternalSize;

/* 804518C4-804518C8 000DC4 0004+00 1/1 0/0 0/0 .sbss            __AR_ExpansionSize */
static u32 __AR_ExpansionSize;

/* 804518C8-804518CC 000DC8 0004+00 2/2 0/0 0/0 .sbss            __AR_StackPointer */
static u32 __AR_StackPointer;

/* 804518CC-804518D0 000DCC 0004+00 2/2 0/0 0/0 .sbss            __AR_FreeBlocks */
static u32 __AR_FreeBlocks;

/* 804518D0-804518D4 000DD0 0004+00 2/2 0/0 0/0 .sbss            __AR_BlockLength */
static u32* __AR_BlockLength;

/* 803506C4-8035072C 34B004 0068+00 0/0 1/1 0/0 .text            ARAlloc */
u32 ARAlloc(u32 length) {
    u32 tmp;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    tmp = __AR_StackPointer;
    __AR_StackPointer += length;
    *__AR_BlockLength = length;
    __AR_BlockLength++;
    __AR_FreeBlocks--;
    OSRestoreInterrupts(enabled);

    return tmp;
}

/* 804518D4-804518D8 000DD4 0004+00 1/1 0/0 0/0 .sbss            __AR_init_flag */
static volatile BOOL __AR_init_flag;

/* 8035072C-803507F0 34B06C 00C4+00 0/0 1/1 0/0 .text            ARInit */
u32 ARInit(u32* stack_index_addr, u32 num_entries) {
    BOOL old;
    u16 refresh;

    if (__AR_init_flag == TRUE) {
        return 0x4000;
    }

    OSRegisterVersion(__ARVersion);

    old = OSDisableInterrupts();

    __AR_Callback = NULL;

    __OSSetInterruptHandler(OS_INTR_DSP_ARAM, __ARHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_DSP_ARAM);

    __AR_StackPointer = 0x4000;
    __AR_FreeBlocks = num_entries;
    __AR_BlockLength = stack_index_addr;

    refresh = (u16)(__DSPRegs[13] & 0x000000ff);

    __DSPRegs[13] = (u16)((__DSPRegs[13] & ~0x000000ff) | (refresh & 0x000000ff));

    __ARChecksize();

    __AR_init_flag = TRUE;

    OSRestoreInterrupts(old);

    return __AR_StackPointer;
}

/* 803507F0-803507F8 -00001 0008+00 0/0 0/0 0/0 .text            ARGetSize */
u32 ARGetSize(void) {
    return __AR_Size;
}

/* 803507F8-80350870 34B138 0078+00 1/1 0/0 0/0 .text            __ARHandler */
static void __ARHandler(s16 interrupt, OSContext* context) {
    OSContext exceptionContext;
    u16 tmp;

    tmp = __DSPRegs[5];
    tmp = (u16)((tmp & ~0x00000088) | 0x20);
    __DSPRegs[5] = tmp;

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(&exceptionContext);

    if (__AR_Callback) {
        (*__AR_Callback)();
    }

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(context);
}

/* 80350870-80350890 34B1B0 0020+00 0/0 2/2 0/0 .text            __ARClearInterrupt */
void __ARClearInterrupt(void) {
    u16 tmp;
    tmp = __DSPRegs[5];
    tmp = (u16)((tmp & ~(0x00000080 | 0x00000008)) | 0x00000020);
    __DSPRegs[5] = tmp;
}

/* 80350890-803508A0 34B1D0 0010+00 0/0 2/2 0/0 .text            __ARGetInterruptStatus */
u16 __ARGetInterruptStatus(void) {
    return ((u16)(__DSPRegs[5] & 0x0020));
}

void __ARWaitForDMA() {
    while (__DSPRegs[DSP_CONTROL_STATUS] & 0x0200) {
    }
}

void __ARWriteDMA(u32 mmem_addr, u32 aram_addr, u32 length) {
    // Main mem address
    __DSPRegs[DSP_ARAM_DMA_MM_HI] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_MM_HI] & ~0x03ff) | (u16)(mmem_addr >> 16));
    __DSPRegs[DSP_ARAM_DMA_MM_LO] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_MM_LO] & ~0xffe0) | (u16)(mmem_addr & 0xffff));

    // ARAM address
    __DSPRegs[DSP_ARAM_DMA_ARAM_HI] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_ARAM_HI] & ~0x03ff) | (u16)(aram_addr >> 16));
    __DSPRegs[DSP_ARAM_DMA_ARAM_LO] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_ARAM_LO] & ~0xffe0) | (u16)(aram_addr & 0xffff));

    // DMA buffer size
    __DSPRegs[DSP_ARAM_DMA_SIZE_HI] = (u16)(__DSPRegs[DSP_ARAM_DMA_SIZE_HI] & ~0x8000);

    __DSPRegs[DSP_ARAM_DMA_SIZE_HI] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_SIZE_HI] & ~0x03ff) | (u16)(length >> 16));
    __DSPRegs[DSP_ARAM_DMA_SIZE_LO] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_SIZE_LO] & ~0xffe0) | (u16)(length & 0xffff));

    __ARWaitForDMA();

    __ARClearInterrupt();
}

void __ARReadDMA(u32 mmem_addr, u32 aram_addr, u32 length) {
    // Main mem address
    __DSPRegs[DSP_ARAM_DMA_MM_HI] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_MM_HI] & ~0x03ff) | (u16)(mmem_addr >> 16));
    __DSPRegs[DSP_ARAM_DMA_MM_LO] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_MM_LO] & ~0xffe0) | (u16)(mmem_addr & 0xffff));

    // ARAM address
    __DSPRegs[DSP_ARAM_DMA_ARAM_HI] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_ARAM_HI] & ~0x03ff) | (u16)(aram_addr >> 16));
    __DSPRegs[DSP_ARAM_DMA_ARAM_LO] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_ARAM_LO] & ~0xffe0) | (u16)(aram_addr & 0xffff));

    // DMA buffer size
    __DSPRegs[DSP_ARAM_DMA_SIZE_HI] = (u16)(__DSPRegs[DSP_ARAM_DMA_SIZE_HI] | 0x8000);

    __DSPRegs[DSP_ARAM_DMA_SIZE_HI] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_SIZE_HI] & ~0x03ff) | (u16)(length >> 16));
    __DSPRegs[DSP_ARAM_DMA_SIZE_LO] =
        (u16)((__DSPRegs[DSP_ARAM_DMA_SIZE_LO] & ~0xffe0) | (u16)(length & 0xffff));

    __ARWaitForDMA();

    __ARClearInterrupt();
}

/* 803508A0-80352094 34B1E0 17F4+00 1/1 0/0 0/0 .text            __ARChecksize */
void __ARChecksize() {
    u8 test_data_pad[0x20 + 31];
    u8 dummy_data_pad[0x20 + 31];
    u8 buffer_pad[0x20 + 31];

    u8 save_pad_1[0x20 + 31];
    u8 save_pad_2[0x20 + 31];
    u8 save_pad_3[0x20 + 31];
    u8 save_pad_4[0x20 + 31];
    u8 save_pad_5[0x20 + 31];

    u32* test_data;
    u32* dummy_data;
    u32* buffer;
    u32* save1;
    u32* save2;
    u32* save3;
    u32* save4;
    u32* save5;

    u16 ARAM_mode = 0;
    u32 ARAM_size = 0;

    u32 i;

    while (!(__DSPRegs[DSP_ARAM_MODE] & 1)) {
    }

    ARAM_mode = 3;
    ARAM_size = __AR_InternalSize = 0x1000000;
    __DSPRegs[DSP_ARAM_SIZE] = (u16)((__DSPRegs[DSP_ARAM_SIZE] & ~(0x7 | 0x38)) | 0x20 | 2 | 1);

    test_data = (u32*)(OSRoundUp32B((u32)(test_data_pad)));
    dummy_data = (u32*)(OSRoundUp32B((u32)(dummy_data_pad)));
    buffer = (u32*)(OSRoundUp32B((u32)(buffer_pad)));

    save1 = (u32*)(OSRoundUp32B((u32)(save_pad_1)));
    save2 = (u32*)(OSRoundUp32B((u32)(save_pad_2)));
    save3 = (u32*)(OSRoundUp32B((u32)(save_pad_3)));
    save4 = (u32*)(OSRoundUp32B((u32)(save_pad_4)));
    save5 = (u32*)(OSRoundUp32B((u32)(save_pad_5)));

    for (i = 0; i < 8; i++) {
        *(test_data + i) = 0xDEADBEEF;
        *(dummy_data + i) = 0xBAD0BAD0;
    }

    DCFlushRange((void*)test_data, 0x20);
    DCFlushRange((void*)dummy_data, 0x20);

    __AR_ExpansionSize = 0;

    DCInvalidateRange((void*)save1, 0x20);
    __ARReadDMA((u32)save1, ARAM_size + 0, 0x20);
    PPCSync();

    __ARWriteDMA((u32)test_data, ARAM_size + 0x0000000, 0x20);

    memset((void*)buffer, 0, 0x20);
    DCFlushRange((void*)buffer, 0x20);

    __ARReadDMA((u32)buffer, ARAM_size + 0x0000000, 0x20);
    PPCSync();

    if (buffer[0] == test_data[0]) {
        DCInvalidateRange((void*)save2, 0x20);
        __ARReadDMA((u32)save2, ARAM_size + 0x0200000, 0x20);
        PPCSync();

        DCInvalidateRange((void*)save3, 0x20);
        __ARReadDMA((u32)save3, ARAM_size + 0x1000000, 0x20);
        PPCSync();

        DCInvalidateRange((void*)save4, 0x20);
        __ARReadDMA((u32)save4, ARAM_size + 0x0000200, 0x20);
        PPCSync();

        DCInvalidateRange((void*)save5, 0x20);
        __ARReadDMA((u32)save5, ARAM_size + 0x0400000, 0x20);
        PPCSync();

        __ARWriteDMA((u32)dummy_data, ARAM_size + 0x0200000, 0x20);

        __ARWriteDMA((u32)test_data, ARAM_size + 0x0000000, 0x20);

        memset((void*)buffer, 0, 0x20);
        DCFlushRange((void*)buffer, 0x20);

        __ARReadDMA((u32)buffer, ARAM_size + 0x0200000, 0x20);
        PPCSync();

        if (buffer[0] == test_data[0]) {
            __ARWriteDMA((u32)save1, ARAM_size + 0x0000000, 0x20);

            ARAM_mode |= 0 << 1;
            ARAM_size += 0x0200000;
            __AR_ExpansionSize = 0x0200000;
        } else {
            __ARWriteDMA((u32)dummy_data, ARAM_size + 0x1000000, 0x20);

            __ARWriteDMA((u32)test_data, ARAM_size + 0x0000000, 0x20);

            memset((void*)buffer, 0, 0x20);
            DCFlushRange((void*)buffer, 0x20);

            __ARReadDMA((u32)buffer, ARAM_size + 0x1000000, 0x20);
            PPCSync();

            if (buffer[0] == test_data[0]) {
                __ARWriteDMA((u32)save1, ARAM_size + 0x0000000, 0x20);
                __ARWriteDMA((u32)save2, ARAM_size + 0x0200000, 0x20);

                ARAM_mode |= 4 << 1;
                ARAM_size += 0x0400000;
                __AR_ExpansionSize = 0x0400000;
            } else {
                __ARWriteDMA((u32)dummy_data, ARAM_size + 0x0000200, 0x20);

                __ARWriteDMA((u32)test_data, ARAM_size + 0x0000000, 0x20);

                memset((void*)buffer, 0, 0x20);
                DCFlushRange((void*)buffer, 0x20);

                __ARReadDMA((u32)buffer, ARAM_size + 0x0000200, 0x20);
                PPCSync();

                if (buffer[0] == test_data[0]) {
                    __ARWriteDMA((u32)save1, ARAM_size + 0x0000000, 0x20);
                    __ARWriteDMA((u32)save2, ARAM_size + 0x0200000, 0x20);
                    __ARWriteDMA((u32)save3, ARAM_size + 0x1000000, 0x20);

                    ARAM_mode |= 8 << 1;
                    ARAM_size += 0x0800000;
                    __AR_ExpansionSize = 0x0800000;
                } else {
                    __ARWriteDMA((u32)dummy_data, ARAM_size + 0x0400000, 0x20);

                    __ARWriteDMA((u32)test_data, ARAM_size + 0x0000000, 0x20);

                    memset((void*)buffer, 0, 0x20);
                    DCFlushRange((void*)buffer, 0x20);

                    __ARReadDMA((u32)buffer, ARAM_size + 0x0400000, 0x20);
                    PPCSync();

                    if (buffer[0] == test_data[0]) {
                        __ARWriteDMA((u32)save1, ARAM_size + 0x0000000, 0x20);
                        __ARWriteDMA((u32)save2, ARAM_size + 0x0200000, 0x20);
                        __ARWriteDMA((u32)save3, ARAM_size + 0x1000000, 0x20);
                        __ARWriteDMA((u32)save4, ARAM_size + 0x0000200, 0x20);

                        ARAM_mode |= 12 << 1;
                        ARAM_size += 0x1000000;
                        __AR_ExpansionSize = 0x1000000;
                    } else {
                        __ARWriteDMA((u32)save1, ARAM_size + 0x0000000, 0x20);
                        __ARWriteDMA((u32)save2, ARAM_size + 0x0200000, 0x20);
                        __ARWriteDMA((u32)save3, ARAM_size + 0x1000000, 0x20);
                        __ARWriteDMA((u32)save4, ARAM_size + 0x0000200, 0x20);
                        __ARWriteDMA((u32)save5, ARAM_size + 0x0400000, 0x20);

                        ARAM_mode |= 16 << 1;
                        ARAM_size += 0x2000000;
                        __AR_ExpansionSize = 0x2000000;
                    }
                }
            }
        }
        __DSPRegs[DSP_ARAM_SIZE] = (u16)((__DSPRegs[DSP_ARAM_SIZE] & ~(0x7 | 0x38)) | ARAM_mode);
    }

    *(u32*)OSPhysicalToUncached(0x00D0) = ARAM_size;

    __AR_Size = ARAM_size;
}
