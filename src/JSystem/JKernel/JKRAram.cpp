#include "JSystem/JKernel/JKRAram.h"
#include "JSystem/JKernel/JKRAramPiece.h"
#include "JSystem/JKernel/JKRAramStream.h"
#include "JSystem/JKernel/JKRDecomp.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JUtility/JUTException.h"
#include "dolphin/ar.h"
#include "dolphin/os/OSCache.h"
#include "dolphin/os/OSInterrupt.h"
#include "string.h"

static u8* firstSrcData();
static u8* nextSrcData(u8* param_0);
static int JKRDecompressFromAramToMainRam(u32 src, void* dst, u32 srcLength, u32 dstLength,
                                          u32 offset, u32* resourceSize);
int decompSZS_subroutine(u8* src, u8* dest);

/* 804513C8-804513CC 0008C8 0004+00 3/3 9/9 0/0 .sbss            sAramObject__7JKRAram */
JKRAram* JKRAram::sAramObject;

/* 802D1FA4-802D2040 2CC8E4 009C+00 0/0 1/1 0/0 .text            create__7JKRAramFUlUllll */
JKRAram* JKRAram::create(u32 aram_audio_buffer_size, u32 aram_audio_graph_size, s32 stream_priority,
                         s32 decomp_priority, s32 piece_priority) {
    if (!sAramObject) {
        sAramObject = new (JKRHeap::getSystemHeap(), 0)
            JKRAram(aram_audio_buffer_size, aram_audio_graph_size, piece_priority);
    }

    JKRCreateAramStreamManager(stream_priority);
    JKRCreateDecompManager(decomp_priority);
    sAramObject->resume();
    return sAramObject;
}

/* ############################################################################################## */
/* 803CC128-803CC138 029248 0010+00 1/1 0/0 0/0 .data            sMessageBuffer__7JKRAram */
OSMessage JKRAram::sMessageBuffer[4] = {
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803CC138-803CC158 029258 0020+00 1/1 1/1 0/0 .data            sMessageQueue__7JKRAram */
OSMessageQueue JKRAram::sMessageQueue = {0};

/* 802D2040-802D214C 2CC980 010C+00 1/1 0/0 0/0 .text            __ct__7JKRAramFUlUll */
JKRAram::JKRAram(u32 audio_buffer_size, u32 audio_graph_size, s32 priority)
    : JKRThread(0xC00, 0x10, priority) {
    u32 aramBase = ARInit(mStackArray, ARRAY_SIZE(mStackArray));
    ARQInit();

    u32 aramSize = ARGetSize();

    mAudioMemorySize = audio_buffer_size;
    if (audio_graph_size == 0xFFFFFFFF) {
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

/* 802D214C-802D21DC 2CCA8C 0090+00 1/0 0/0 0/0 .text            __dt__7JKRAramFv */
JKRAram::~JKRAram() {
    sAramObject = NULL;
    if (mAramHeap)
        delete mAramHeap;
}

/* 802D21DC-802D2248 2CCB1C 006C+00 1/0 0/0 0/0 .text            run__7JKRAramFv */
void* JKRAram::run(void) {
    int result;
    JKRAMCommand* command;
    JKRAramPiece::Message* message;
    OSInitMessageQueue(&sMessageQueue, sMessageBuffer, 4);
    do {
        OSReceiveMessage(&sMessageQueue, (OSMessage*)&message, OS_MESSAGE_BLOCK);
        result = message->field_0x00;
        command = message->command;
        delete message;

        switch (result) {
        case 1:
            JKRAramPiece::startDMA(command);
            break;
        }
    } while (true);
}

/* 802D2248-802D22DC 2CCB88 0094+00 2/2 0/0 0/0 .text
 * checkOkAddress__7JKRAramFPUcUlP12JKRAramBlockUl              */
void JKRAram::checkOkAddress(u8* addr, u32 size, JKRAramBlock* block, u32 param_4) {
    if (!IS_ALIGNED((u32)addr, 0x20) && !IS_ALIGNED(size, 0x20)) {
        JUTException::panic(__FILE__, 219, ":::address not 32Byte aligned.");
    }

    if (block && !IS_ALIGNED((u32)block->getAddress() + param_4, 0x20)) {
        JUTException::panic(__FILE__, 227, ":::address not 32Byte aligned.");
    }
}

/* 802D22DC-802D233C 2CCC1C 0060+00 1/1 0/0 0/0 .text            changeGroupIdIfNeed__7JKRAramFPUci
 */
void JKRAram::changeGroupIdIfNeed(u8* data, int groupId) {
    JKRHeap* currentHeap = JKRHeap::getCurrentHeap();
    if (currentHeap->getHeapType() == 'EXPH' && groupId >= 0) {
        JKRExpHeap::CMemBlock* block = JKRExpHeap::CMemBlock::getBlock(data);
        block->newGroupId(groupId);
    }
}

/* 802D233C-802D25B4 2CCC7C 0278+00 0/0 3/3 0/0 .text
 * mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl */
JKRAramBlock* JKRAram::mainRamToAram(u8* buf, u32 bufSize, u32 alignedSize,
                                     JKRExpandSwitch expandSwitch, u32 fileSize, JKRHeap* heap,
                                     int id, u32* pSize) {
    JKRAramBlock* block = NULL;
    checkOkAddress(buf, bufSize, NULL, 0);
    if (expandSwitch == EXPAND_SWITCH_UNKNOWN1) {
        expandSwitch = (JKRCheckCompressed_noASR(buf) == COMPRESSION_NONE) ?
                           EXPAND_SWITCH_UNKNOWN0 :
                           EXPAND_SWITCH_UNKNOWN1;
    }
    if (expandSwitch == EXPAND_SWITCH_UNKNOWN1) {
        u32 expandSize = JKRDecompExpandSize(buf);
        if (fileSize == 0 || fileSize > expandSize) {
            fileSize = ALIGN_NEXT(expandSize, 32);
        }
        if (bufSize == 0) {
            JKRAramBlock* allocatedBlock =
                (JKRAramBlock*)JKRAllocFromAram(fileSize, JKRAramHeap::HEAD);
            block = (JKRAramBlock*)allocatedBlock;
            if (allocatedBlock == NULL)
                return NULL;

            allocatedBlock->newGroupID(decideAramGroupId(id));
            bufSize = allocatedBlock->getAddress();
        }
        if (alignedSize == 0 || alignedSize > expandSize)
            alignedSize = ALIGN_NEXT(expandSize, 32);

        if (alignedSize > fileSize)
            alignedSize = fileSize;

        void* allocatedMem = JKRAllocFromHeap(heap, fileSize, -32);
        if (allocatedMem == NULL) {
            if (block != NULL) {
                JKRFreeToAram(block);
            }
            block = NULL;
        } else {
            JKRDecompress(buf, (u8*)allocatedMem, fileSize, 0);
            JKRAramPcs(0, (u32)allocatedMem, bufSize, alignedSize, block);
            JKRFreeToHeap(heap, allocatedMem);
            block = block == NULL ? (JKRAramBlock*)-1 : block;
            if (pSize != NULL) {
                *pSize = alignedSize;
            }
        }
    } else {
        if (fileSize != 0 && alignedSize > fileSize)
            alignedSize = fileSize;
        if (bufSize == 0) {
            JKRAramBlock* allocatedBlock =
                (JKRAramBlock*)JKRAllocFromAram(alignedSize, JKRAramHeap::HEAD);
            block = allocatedBlock;
            block->newGroupID(decideAramGroupId(id));
            if (block == NULL)
                return NULL;

            bufSize = allocatedBlock->getAddress();
        }

        JKRAramPcs(0, (u32)buf, bufSize, alignedSize, block);
        block = block == NULL ? (JKRAramBlock*)-1 : block;
        if (pSize != NULL)
            *pSize = alignedSize;
    }
    return block;
}

/* 802D25B4-802D2830 2CCEF4 027C+00 0/0 6/6 0/0 .text
 * aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl */
u8* JKRAram::aramToMainRam(u32 address, u8* buf, u32 p3, JKRExpandSwitch expandSwitch, u32 p5,
                           JKRHeap* heap, int id, u32* pSize) {
    JKRCompression compression = COMPRESSION_NONE;
    if (pSize != NULL)
        *pSize = 0;

    checkOkAddress(buf, address, NULL, 0);

    u32 expandSize;
    if (expandSwitch == EXPAND_SWITCH_UNKNOWN1) {
        u8 buffer[64];
        u8* bufPtr = (u8*)ALIGN_NEXT((u32)buffer, 32);
        JKRAramPcs(1, address, (u32)bufPtr, sizeof(buffer) / 2,
                   NULL);  // probably change sizeof(buffer) / 2 to 32
        compression = JKRCheckCompressed_noASR(bufPtr);
        expandSize = JKRDecompExpandSize(bufPtr);
    }

    if (compression == COMPRESSION_YAZ0) {  // SZS
        if (p5 != 0 && p5 < expandSize)
            expandSize = p5;

        if (buf == NULL)
            buf = (u8*)JKRAllocFromHeap(heap, expandSize, 32);
        if (buf == NULL)
            return NULL;
        else {
            changeGroupIdIfNeed(buf, id);
            JKRDecompressFromAramToMainRam(address, buf, p3, expandSize, 0, pSize);
            return buf;
        }
    } else if (compression == COMPRESSION_YAY0) {  // SZP
        u8* szpSpace = (u8*)JKRAllocFromHeap(heap, p3, -32);
        if (szpSpace == NULL) {
            return NULL;
        } else {
            JKRAramPcs(1, address, (u32)szpSpace, p3, NULL);
            if (p5 != 0 && p5 < expandSize)
                expandSize = p5;

            u8* rv;
            if (buf == NULL) {
                rv = (u8*)JKRAllocFromHeap(heap, expandSize, 32);
            } else {
                rv = buf;
            }

            if (rv == NULL) {
                JKRFree(szpSpace);
                return NULL;
            } else {
                changeGroupIdIfNeed(rv, id);
                JKRDecompress(szpSpace, rv, expandSize, 0);
                JKRFreeToHeap(heap, szpSpace);
                if (pSize != NULL) {
                    *pSize = expandSize;
                }
                return rv;
            }
        }
    } else {  // Not compressed or ASR
        if (buf == NULL)
            buf = (u8*)JKRAllocFromHeap(heap, p3, 32);
        if (buf == NULL) {
            return NULL;
        } else {
            changeGroupIdIfNeed(buf, id);
            JKRAramPcs(1, address, (u32)buf, p3, NULL);
            if (pSize != NULL) {
                *pSize = p3;
            }
            return buf;
        }
    }
}

/* 804342DC-804342E8 060FFC 000C+00 1/1 0/0 0/0 .bss             sAramCommandList__7JKRAram */
JSUList<JKRAMCommand> JKRAram::sAramCommandList;

/* 804342E8-80434300 061008 0018+00 1/1 0/0 0/0 .bss             decompMutex */
static OSMutex decompMutex;

/* 804508B8-804508C0 000338 0004+04 1/1 1/1 0/0 .sdata           sSZSBufferSize__7JKRAram */
u32 JKRAram::sSZSBufferSize = 0x00000400;

/* 804513CC-804513D0 0008CC 0004+00 3/3 0/0 0/0 .sbss            szpBuf */
static u8* szpBuf;

/* 804513D0-804513D4 0008D0 0004+00 3/3 0/0 0/0 .sbss            szpEnd */
static u8* szpEnd;

/* 804513D4-804513D8 0008D4 0004+00 2/2 0/0 0/0 .sbss            refBuf */
static u8* refBuf;

/* 804513D8-804513DC 0008D8 0004+00 2/2 0/0 0/0 .sbss            refEnd */
static u8* refEnd;

/* 804513DC-804513E0 0008DC 0004+00 2/2 0/0 0/0 .sbss            refCurrent */
static u8* refCurrent;

/* 804513E0-804513E4 0008E0 0004+00 3/3 0/0 0/0 .sbss            srcOffset */
static u32 srcOffset;

/* 804513E4-804513E8 0008E4 0004+00 4/4 0/0 0/0 .sbss            transLeft */
static u32 transLeft;

/* 804513E8-804513EC 0008E8 0004+00 3/3 0/0 0/0 .sbss            srcLimit */
static u8* srcLimit;

/* 804513EC-804513F0 0008EC 0004+00 3/3 0/0 0/0 .sbss            srcAddress */
static u32 srcAddress;

/* 804513F0-804513F4 0008F0 0004+00 2/2 0/0 0/0 .sbss            fileOffset */
static u32 fileOffset;

/* 804513F4-804513F8 0008F4 0004+00 2/2 0/0 0/0 .sbss            readCount */
static u32 readCount;

/* 804513F8-804513FC 0008F8 0004+00 2/2 0/0 0/0 .sbss            maxDest */
static u32 maxDest;

/* 804513FC-80451400 0008FC 0004+00 1/1 0/0 0/0 .sbss            None */
static bool s_is_decompress_mutex_initialized;

/* 80451400-80451404 000900 0004+00 2/2 0/0 0/0 .sbss            tsPtr */
static u32* tsPtr;

/* 80451404-80451408 000904 0004+00 1/1 0/0 0/0 .sbss            tsArea */
static u32 tsArea;

/* 802D2830-802D29A0 2CD170 0170+00 1/1 0/0 0/0 .text
 * JKRDecompressFromAramToMainRam__FUlPvUlUlUlPUl               */
static int JKRDecompressFromAramToMainRam(u32 src, void* dst, u32 srcLength, u32 dstLength,
                                          u32 offset, u32* resourceSize) {
    BOOL interrupts = OSDisableInterrupts();
    if (s_is_decompress_mutex_initialized == false) {
        OSInitMutex(&decompMutex);
        s_is_decompress_mutex_initialized = true;
    }
    OSRestoreInterrupts(interrupts);
    OSLockMutex(&decompMutex);

    u32 szsBufferSize = JKRAram::getSZSBufferSize();
    szpBuf = (u8*)JKRAllocFromSysHeap(szsBufferSize, 32);

    szpEnd = szpBuf + szsBufferSize;
    if (offset != 0) {
        refBuf = (u8*)JKRAllocFromSysHeap(0x1120, 0);
        refEnd = refBuf + 0x1120;
        refCurrent = refBuf;
    } else {
        refBuf = NULL;
    }
    srcAddress = src;
    srcOffset = 0;
    transLeft = (srcLength != 0) ? srcLength : -1;
    fileOffset = offset;
    readCount = 0;
    maxDest = dstLength;
    tsPtr = (resourceSize != 0) ? resourceSize : &tsArea;
    *tsPtr = 0;

    decompSZS_subroutine(firstSrcData(), (u8*)dst);
    JKRFree(szpBuf);
    if (refBuf) {
        JKRFree(refBuf);
    }

    DCStoreRangeNoSync(dst, *tsPtr);
    OSUnlockMutex(&decompMutex);

    return 0;
}

/* 802D29A0-802D2C40 2CD2E0 02A0+00 1/1 0/0 0/0 .text            decompSZS_subroutine__FPUcPUc */
int decompSZS_subroutine(u8* src, u8* dest) {
    u8* endPtr;
    s32 validBitCount = 0;
    s32 currCodeByte = 0;
    u32 ts = 0;

    if (src[0] != 'Y' || src[1] != 'a' || src[2] != 'z' || src[3] != '0') {
        return -1;
    }

    SYaz0Header* header = (SYaz0Header*)src;
    endPtr = dest + (header->length - fileOffset);
    if (endPtr > dest + maxDest) {
        endPtr = dest + maxDest;
    }

    src += 0x10;
    do {
        if (validBitCount == 0) {
            if ((src > srcLimit) && transLeft) {
                src = nextSrcData(src);
            }
            currCodeByte = *src;
            validBitCount = 8;
            src++;
        }
        if (currCodeByte & 0x80) {
            if (fileOffset != 0) {
                if (readCount >= fileOffset) {
                    *dest = *src;
                    dest++;
                    ts++;
                    if (dest == endPtr) {
                        break;
                    }
                }
                *(refCurrent++) = *src;
                if (refCurrent == refEnd) {
                    refCurrent = refBuf;
                }
                src++;
            } else {
                *dest = *src;
                dest++;
                src++;
                ts++;
                if (dest == endPtr) {
                    break;
                }
            }
            readCount++;
        } else {
            u32 dist = ((src[0] & 0x0f) << 8) | src[1];
            s32 numBytes = src[0] >> 4;
            src += 2;
            u8* copySource;
            if (fileOffset != 0) {
                copySource = refCurrent - dist - 1;
                if (copySource < refBuf) {
                    copySource += refEnd - refBuf;
                }
            } else {
                copySource = dest - dist - 1;
            }
            if (numBytes == 0) {
                numBytes = *src + 0x12;
                src += 1;
            } else {
                numBytes += 2;
            }
            if (fileOffset != 0) {
                do {
                    if (readCount >= fileOffset) {
                        *dest = *copySource;
                        dest++;
                        ts++;
                        if (dest == endPtr) {
                            break;
                        }
                    }
                    *(refCurrent++) = *copySource;
                    if (refCurrent == refEnd) {
                        refCurrent = refBuf;
                    }
                    copySource++;
                    if (copySource == refEnd) {
                        copySource = refBuf;
                    }
                    readCount++;
                    numBytes--;
                } while (numBytes != 0);
            } else {
                do {
                    *dest = *copySource;
                    dest++;
                    ts++;
                    if (dest == endPtr) {
                        break;
                    }
                    readCount++;
                    numBytes--;
                    copySource++;
                } while (numBytes != 0);
            }
        }
        currCodeByte <<= 1;
        validBitCount--;
    } while (dest < endPtr);
    *tsPtr = ts;
    return 0;
}

/* 802D2C40-802D2CE4 2CD580 00A4+00 1/1 0/0 0/0 .text            firstSrcData__Fv */
static u8* firstSrcData() {
    srcLimit = szpEnd - 0x19;
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
        srcLimit = buffer + length;
    }

    return buffer;
}

/* 802D2CE4-802D2DAC 2CD624 00C8+00 1/1 0/0 0/0 .text            nextSrcData__FPUc */
static u8* nextSrcData(u8* current) {
    u8* dest;
    u32 left = (u32)(szpEnd - current);
    if (IS_NOT_ALIGNED(left, 0x20))
        dest = szpBuf + 0x20 - (left & (0x20 - 1));
    else
        dest = szpBuf;

    memcpy(dest, current, left);
    u32 transSize = (u32)(szpEnd - (dest + left));
    if (transSize > transLeft)
        transSize = transLeft;

    JKRAramPcs(1, (u32)(srcAddress + srcOffset), ((u32)dest + left), ALIGN_NEXT(transSize, 0x20),
               NULL);
    srcOffset += transSize;
    transLeft -= transSize;

    if (transLeft == 0)
        srcLimit = (dest + left) + transSize;

    return dest;
}

/* ############################################################################################## */
/* 8039D0A6-8039D0B8 029706 000E+04 0/0 0/0 0/0 .rodata          None */
static const char* stringBase_8039D0A6 = "bad aramSync\n";
/* @stringBase0 padding */
static const char* pad_8039D0B4 = "\0\0\0";