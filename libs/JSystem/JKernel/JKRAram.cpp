#include "JSystem/JKernel/JKRAram/JKRAram.h"
#include "JSystem/JKernel/JKRAramBlock/JKRAramBlock.h"
#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"
#include "JSystem/JKernel/JKRAramPiece/JKRAramPiece.h"
#include "JSystem/JKernel/JKRAramStream/JKRAramStream.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "msl_c/string.h"
extern "C" {
void __dl__FPv(void);
void __RAS_OSDisableInterrupts_begin(void);
void alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode(void);
void alloc__7JKRHeapFUli(void);
void alloc__7JKRHeapFUliP7JKRHeap(void);
void changeGroupIdIfNeed__7JKRAramFPUci(void);
void checkCompressed__9JKRDecompFPUc(void);
void checkOkAddress__7JKRAramFPUcUlP12JKRAramBlockUl(void);
void DCStoreRangeNoSync(void);
void decompSZS_subroutine__FPUcPUc(void);
void firstSrcData__Fv(void);
void free__7JKRHeapFPvP7JKRHeap(void);
void JKRDecompressFromAramToMainRam__FUlPvUlUlUlPUl(void);
void panic_f__12JUTExceptionFPCciPCce(const char* filename, int line, const char* format, ...);
void nextSrcData__FPUc(void);
void orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock(void);
void orderSync__9JKRDecompFPUcPUcUlUl(void);
void startDMA__12JKRAramPieceFP12JKRAMCommand(void);
}

extern u8 lbl_803CC158;                         // JKRAram::__vt
extern OSMessageQueue sMessageQueue__7JKRAram;  // JKRAram::sMessageQueue
extern bool lbl_804513FC;                       // DAT_804513fc (init global mutex)
extern OSMutex lbl_804342E8;                    // JKernel::decompMutex (static?)
extern u8 lbl_804342D0;                         // JKernel::@492 (global destructor chain)
extern u8 sAramCommandList__7JKRAram;           // JKRAram::sAramCommandList
extern u8 sSZSBufferSize__7JKRAram;             // JKRAram::sSZSBufferSize
extern u8 sMessageBuffer__7JKRAram;             // JKRAram::sMessageBuffer

// Uncomment when static initialization is working
// JKRAram* JKRAram::sAramObject = NULL;
// u32 JKRAram::sSZSBufferSize = 0x400;

static void decompSZS_subroutine(u8*, u8*);
static u8* firstSrcData(void);
static u8* nextSrcData(u8*);

// The prefix JKRAram__ is for now used to skip name collision in 'sbss.s'. All of these variables
// are probably defined as static and only visible in this translation unit.
extern u8* JKRAram__szpBuf;
extern u8* JKRAram__szpEnd;
extern u8* JKRAram__refBuf;
extern u8* JKRAram__refEnd;
extern u8* JKRAram__refCurrent;
extern u32 JKRAram__srcOffset;
extern u32 JKRAram__transLeft;
extern u32 JKRAram__srcLimit;
extern u32 JKRAram__srcAddress;
extern u32 JKRAram__fileOffset;
extern u32 JKRAram__readCount;
extern u32 JKRAram__maxDest;
extern u32* JKRAram__tsPtr;
extern u32 JKRAram__tsArea;
extern JKRExpHeap* sSystemHeap__7JKRHeap;

JKRAram* JKRAram::create(u32 aram_audio_buffer_size, u32 aram_audio_graph_size,
                         long stream_priority, long decomp_priority, long piece_priority) {
    if (!sAramObject) {
        sAramObject = new (JKRHeap::getSystemHeap(), 0)
            JKRAram(aram_audio_buffer_size, aram_audio_graph_size, piece_priority);
    }

    JKRCreateAramStreamManager(stream_priority);
    JKRCreateDecompManager(decomp_priority);
    sAramObject->resume();
    return sAramObject;
}

JKRAram::JKRAram(u32 audio_buffer_size, u32 audio_graph_size, long priority)
    : JKRThread(0xC00, 0x10, priority) {
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

JKRAram::~JKRAram() {
    sAramObject = NULL;
    if (mAramHeap)
        delete mAramHeap;
}

// almost full match
#ifdef NONMATCHING
void* JKRAram::run(void) {
    int result;
    JKRAMCommand* command;
    JKRAMCommand::Message* message;
    OSInitMessageQueue(&sMessageQueue, sMessageBuffer, 4);
    do {
        OSReceiveMessage(&sMessageQueue, &message, OS_MESSAGE_BLOCKING);
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

void JKRAram::checkOkAddress(u8* addr, u32 size, JKRAramBlock* block, u32 param_4) {
    if (!IS_ALIGNED((u32)addr, 0x20) && !IS_ALIGNED(size, 0x20)) {
        panic_f__12JUTExceptionFPCciPCce("JKRAram.cpp", 0xdb, "%s",
                                         ":::address not 32Byte aligned.");
    }

    if (block && !IS_ALIGNED((u32)block->getAddress() + param_4, 0x20)) {
        panic_f__12JUTExceptionFPCciPCce("JKRAram.cpp", 0xe3, "%s",
                                         ":::address not 32Byte aligned.");
    }
}

void JKRAram::changeGroupIdIfNeed(u8* data, int groupId) {
    JKRHeap* currentHeap = JKRHeap::getCurrentHeap();
    if (currentHeap->getHeapType() == 'EXPH' && groupId >= 0) {
        JKRExpHeap::CMemBlock* block = JKRExpHeap::CMemBlock::getBlock(data);
        block->newGroupId(groupId);
    }
}

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
#define s_is_decompress_mutex_initialized lbl_804513FC
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
    u32 szpSize = getSZSBufferSize();
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
#undef s_is_decompress_mutex_initialized
#undef decompMutex
}
#else
asm void JKRDecompressFromAramToMainRam(u32 src, void* dst, u32 srcLength, u32 dstLength,
                                        u32 offset, u32* resourceSize) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2830.s"
}
#endif

asm void decompSZS_subroutine(u8*, u8*){nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D29A0.s"
}

u8* firstSrcData(void) {
    JKRAram__srcLimit = (u32)(JKRAram__szpEnd - 0x19);
    u8* buffer = JKRAram__szpBuf;

    u32 length;
    u32 size = JKRAram__szpEnd - JKRAram__szpBuf;
    if (JKRAram__transLeft < size) {
        length = JKRAram__transLeft;
    } else {
        length = size;
    }

    u32 src = (u32)(JKRAram__srcAddress + JKRAram__srcOffset);
    u32 dst = (u32)buffer;
    u32 alignedLength = ALIGN_NEXT(length, 0x20);
    JKRAramPcs(1, src, dst, alignedLength, NULL);

    JKRAram__srcOffset += length;
    JKRAram__transLeft -= length;
    if (!JKRAram__transLeft) {
        JKRAram__srcLimit = (u32)(buffer + length);
    }

    return buffer;
}

// missing one add instruction
#ifdef NONMATCHING
inline u32 nextSrcData_MIN(u32 A, u32 B) {
    if (A > B)
        return B;
    return A;
}

static u8* nextSrcData(u8* current) {
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
        srcLimit = (u32)(dest + left) + transSize;
    }

    return dest;
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

const char* lbl_8039D0A6 = "bad aramSync\n";
const char* lbl_8039D0B4 = "\x00\x00\x00"; /* padding */
