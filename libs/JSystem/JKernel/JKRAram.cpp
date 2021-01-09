#include "JSystem/JKernel/JKRAram/JKRAram.h"
#include "global.h"

#include "JSystem/JKernel/JKRAramBlock/JKRAramBlock.h"
#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"
#include "JSystem/JKernel/JKRAramPiece/JKRAramPiece.h"
#include "JSystem/JKernel/JKRAramStream/JKRAramStream.h"
#include "JSystem/JKernel/JKRDecomp/JKRDecomp.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

static void decompSZS_subroutine(u8*, u8*);
static u8* firstSrcData(void);
static u8* nextSrcData(u8*);

#ifdef NONMATCHING
JKRAram* JKRAram::create(u32 aram_audio_buffer_size, u32 aram_audio_graph_size,
                         long stream_priority, long decomp_priority, long piece_priority) {
    if (!lbl_804513C8) {
        lbl_804513C8 = new (JKRHeap::getSystemHeap(), 0)
            JKRAram(aram_audio_buffer_size, aram_audio_graph_size, piece_priority);
    }

    JKRAramStream::create(stream_priority);
    JKRDecomp::create(decomp_priority);
    lbl_804513C8->resume();
    return lbl_804513C8;
}
#else
asm JKRAram* JKRAram::create(u32 aram_audio_buffer_size, u32 aram_audio_graph_size,
                             long stream_priority, long decomp_priority, long piece_priority) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D1FA4.s"
}
#endif

#ifdef NONMATCHING
JKRAram::JKRAram(u32 audio_buffer_size, u32 audio_graph_size, long priority)
    : JKRThread(0xc00, 0x10, priority) {
    u32 aramBase = ARInit(mStackArray, ARRAY_SIZE(mStackArray));
    ARQInit();

    u32 aramSize = ARGetSize();

    mAudioMemorySize = audio_buffer_size;
    if (audio_graph_size == 0xffffffff) {
        mGraphMemorySize = (aramSize - audio_buffer_size) - aramBase;
        mAramMemorySize = 0;
    } else {
        mGraphMemorySize = audio_graph_size;
        mAramMemorySize = (aramSize - (audio_buffer_size + audio_graph_size)) - aramBase;
    }

    mAudioMemoryPtr = ARAlloc(mAudioMemorySize);
    mGraphMemoryPtr = ARAlloc(mGraphMemorySize);

    if (mAramMemorySize) {
        mAramMemoryPtr = ARAlloc(mAramMemorySize);
    } else {
        mAramMemoryPtr = NULL;
    }

    mAramHeap = new (JKRHeap::getSystemHeap(), 0) JKRAramHeap(mGraphMemoryPtr, mGraphMemorySize);
}
#else
asm JKRAram::JKRAram(u32 audio_buffer_size, u32 audio_graph_size, long priority) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2040.s"
}
#endif

#ifdef NONMATCHING
JKRAram::~JKRAram() {
    lbl_804513C8 = NULL;
    if (mAramHeap)
        delete mAramHeap;
}
#else
asm JKRAram::~JKRAram() {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D214C.s"
}
#endif

// almost full match
#ifdef NONMATCHING
void* JKRAram::run(void) {
    int result;
    JKRAMCommand* command;
    JKRAMCommand::Message* message;
    OSInitMessageQueue(&lbl_803CC138, lbl_803CC128, 4);
    do {
        OSReceiveMessage(&lbl_803CC138, &message, OS_MESSAGE_BLOCKING);
        result = message->field_0x0;
        command = message->command;
        delete message;

        if (result == 1) {
            JKRAramPiece::startDMA(command);
        }
    } while (true);
}
#else
asm void* JKRAram::run(void) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D21DC.s"
}
#endif

#ifdef NONMATCHING
void JKRAram::checkOkAddress(u8* addr, u32 size, JKRAramBlock* block, u32 param_4) {
    if (!IS_ALIGNED((u32)addr, 0x20) && !IS_ALIGNED(size, 0x20)) {
        const char* file = lbl_8039D078;
        const char* format = lbl_8039D078 + 0xc;
        const char* arg1 = lbl_8039D078 + 0xc + 0x3;
        JUTException_NS_panic_f(file, 0xdb, format, arg1);
    }

    if (block && !IS_ALIGNED(param_4 + block->mAddress, 0x20)) {
        const char* file = lbl_8039D078;
        const char* format = lbl_8039D078 + 0xc;
        const char* arg1 = lbl_8039D078 + 0xc + 0x3;
        JUTException_NS_panic_f(file, 0xe3, format, arg1);
    }
}
#else
asm void JKRAram::checkOkAddress(u8* addr, u32 size, JKRAramBlock* block, u32 param_4) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2248.s"
}
#endif

#ifdef NONMATCHING
void JKRAram::changeGroupIdIfNeed(u8* data, int groupId) {
    JKRHeap* currentHeap = JKRHeap::getCurrentHeap();
    u32 heapType = currentHeap->getHeapType();
    if (heapType == 'EXPH' && groupId >= 0) {
        JKRExpHeap::CMemBlock* block = JKRExpHeap::CMemBlock::getBlock(data);
        block->newGroupId(groupId);
    }
}
#else
asm void JKRAram::changeGroupIdIfNeed(u8* data, int groupId) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D22DC.s"
}
#endif

asm void JKRAram::mainRamToAram(u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D233C.s"
}

asm void JKRAram::aramToMainRam(u32, u8*, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D25B4.s"
}

#ifdef NONMATCHING
// full match, except:
//     tsPtr = &tsArea;
// doesn't use r13
void JKRDecompressFromAramToMainRam(u32 src, void* dst, u32 srcLength, u32 dstLength, u32 offset,
                                    u32* resourceSize) {
#define szpBuf lbl_804513CC
#define szpEnd lbl_804513D0
#define refBuf lbl_804513D4
#define refEnd lbl_804513D8
#define refCurrent lbl_804513DC
#define srcOffset lbl_804513E0
#define transLeft lbl_804513E4
#define srcLimit lbl_804513E8
#define srcAddress lbl_804513EC
#define fileOffset lbl_804513F0
#define readCount lbl_804513F4
#define maxDest lbl_804513F8
#define s_is_decompress_mutex_initialized lbl_804513FC
#define tsPtr lbl_80451400
#define tsArea lbl_80451404
#define decompMutex lbl_804343C0

    // STATIC BEGIN
    // This code is probably generated by the compiler for a static variable
    BOOL enable = OSDisableInterrupts();
    if (s_is_decompress_mutex_initialized == false) {
        OSInitMutex(&decompMutex);
        s_is_decompress_mutex_initialized = true;
    }
    OSRestoreInterrupts(enable);
    // STATIC END

    OSLockMutex(&decompMutex);
    u32 szpSize = JKRAram::getSZSBufferSize();
    szpBuf = (u8*)JKRAllocFromSysHeap(szpSize, 0x20);
    ASSERT(szpBuf != 0);
    szpEnd = szpBuf + szpSize;

    if (offset != 0) {
        refBuf = (u8*)JKRAllocFromSysHeap(0x1120, 0);
        ASSERT(refBuf != 0);
        refEnd = refBuf + 0x1120;
        refCurrent = refBuf;
    } else {
        refBuf = NULL;
    }

    srcAddress = src;
    srcOffset = 0;
    if (srcLength == 0) {
        transLeft = -1;
    } else {
        transLeft = srcLength;
    }

    fileOffset = offset;
    readCount = 0;
    maxDest = dstLength;
    if (!resourceSize) {
        tsPtr = &tsArea;
    } else {
        tsPtr = resourceSize;
    }

    *tsPtr = 0;

    decompSZS_subroutine(firstSrcData(), (u8*)dst);
    JKRFreeToSysHeap(szpBuf);
    if (refBuf) {
        JKRFreeToSysHeap(refBuf);
    }
    DCStoreRangeNoSync(dst, *tsPtr);
    OSUnlockMutex(&decompMutex);
#undef szpBuf
#undef szpEnd
#undef refBuf
#undef refEnd
#undef refCurrent
#undef srcOffset
#undef transLeft
#undef srcLimit
#undef srcAddress
#undef fileOffset
#undef readCount
#undef maxDest
#undef s_is_decompress_mutex_initialized
#undef tsPtr
#undef tsArea
#undef decompMutex
}
#else
asm void JKRDecompressFromAramToMainRam(u32 src, void* dst, u32 srcLength, u32 dstLength,
                                        u32 offset, u32* resourceSize) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2830.s"
}
#endif

asm void decompSZS_subroutine(u8*, u8*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D29A0.s"
}

#ifdef NONMATCHING
u8* firstSrcData(void) {
#define szpBuf lbl_804513CC
#define szpEnd lbl_804513D0
#define srcOffset lbl_804513E0
#define transLeft lbl_804513E4
#define srcLimit lbl_804513E8
#define srcAddress lbl_804513EC
    srcLimit = (u32)(szpEnd - 0x19);
    u8* buffer = szpBuf;

    u32 length;
    u32 size = szpEnd - szpBuf;
    if (transLeft < size) {
        length = transLeft;
    } else {
        length = size;
    }

    u32 src = (u32)(srcAddress + srcOffset);
    u32 dst = (u32)buffer;
    u32 alignedLength = ALIGN_NEXT(length, 0x20);
    JKRAramPcs(1, src, dst, alignedLength, NULL);

    srcOffset += length;
    transLeft -= length;
    if (!transLeft) {
        srcLimit = (u32)(buffer + length);
    }

    return buffer;
#undef szpBuf
#undef szpEnd
#undef srcOffset
#undef transLeft
#undef srcLimit
#undef srcAddress
}
#else
asm u8* firstSrcData(void) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2C40.s"
}
#endif

// missing one add instruction
inline u32 nextSrcData_MIN(u32 A, u32 B) {
    if (A > B)
        return B;
    return A;
}

#ifdef NONMATCHING
static u8* nextSrcData(u8* current) {
#define szpBuf lbl_804513CC
#define szpEnd lbl_804513D0
#define srcOffset lbl_804513E0
#define transLeft lbl_804513E4
#define srcLimit lbl_804513E8
#define srcAddress lbl_804513EC
    u8* dest;
    u32 left = (u32)(szpEnd - current);
    if (!IS_NOT_ALIGNED(left, 0x20)) {
        dest = szpBuf;
    } else {
        dest = szpBuf + 0x20 - (left & 0x1f);
    }

    memcpy(dest, current, left);
    u32 transSize = nextSrcData_MIN(transLeft, szpEnd - (dest + left));
    ASSERT(transSize > 0);

    JKRAramPcs(1, (u32)(srcAddress + srcOffset), (u32)(dest + left), ALIGN_NEXT(transSize, 0x20),
               NULL);
    srcOffset += transSize;
    transLeft -= transSize;

    if (transLeft == 0) {
        srcLimit = (u8*)(dest + left) + transSize;
    }

    return dest;
#undef szpBuf
#undef szpEnd
#undef srcOffset
#undef transLeft
#undef srcLimit
#undef srcAddress
}
#else
asm u8* nextSrcData(u8* current) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2CE4.s"
}
#endif

#if 0
asm void __sinit_JKRAram_cpp {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2DAC.s"
}

asm JSUList<12JKRAMCommand>::~JSUList<12JKRAMCommand>(void) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2DF0.s"
}
#endif
