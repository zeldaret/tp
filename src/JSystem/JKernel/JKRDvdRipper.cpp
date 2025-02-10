//
// JKRDvdRipper
//

#include "JSystem/JKernel/JKRDvdRipper.h"
#include "JSystem/JKernel/JKRDvdFile.h"
#include "JSystem/JKernel/JKRDecomp.h"
#include "JSystem/JUtility/JUTException.h"
#include "string.h"
#include <dolphin/os.h>
#include <dolphin/os.h>
#include "dolphin/vi.h"

static int JKRDecompressFromDVD(JKRDvdFile*, void*, u32, u32, u32, u32, u32*);
static int decompSZS_subroutine(u8*, u8*);
static u8* firstSrcData();
static u8* nextSrcData(u8*);

/* 802D9B98-802D9C54 2D44D8 00BC+00 0/0 1/1 0/0 .text
 * loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
 */
void* JKRDvdRipper::loadToMainRAM(char const* name, u8* dst, JKRExpandSwitch expandSwitch,
                                  u32 dstLength, JKRHeap* heap,
                                  JKRDvdRipper::EAllocDirection allocDirection, u32 offset,
                                  int* pCompression, u32* param_8) {
    JKRDvdFile file;
    if (!file.open(name)) {
        return NULL;
    }
    return loadToMainRAM(&file, dst, expandSwitch, dstLength, heap, allocDirection, offset,
                         pCompression, param_8);
}

/* 802D9C54-802D9D10 2D4594 00BC+00 0/0 9/9 0/0 .text
 * loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
 */
void* JKRDvdRipper::loadToMainRAM(s32 entryNumber, u8* dst, JKRExpandSwitch expandSwitch,
                                  u32 dstLength, JKRHeap* heap,
                                  JKRDvdRipper::EAllocDirection allocDirection, u32 offset,
                                  int* pCompression, u32* param_8) {
    JKRDvdFile file;
    if (!file.open(entryNumber)) {
        return NULL;
    }
    return loadToMainRAM(&file, dst, expandSwitch, dstLength, heap, allocDirection, offset,
                         pCompression, param_8);
}

/* 804508C8-804508CC 000348 0004+00 3/2 0/0 0/0 .sdata           None */
static u8 errorRetry = 0x01;

/* 802D9D10-802DA1E4 2D4650 04D4+00 2/2 0/0 0/0 .text
 * loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
 */
void* JKRDvdRipper::loadToMainRAM(JKRDvdFile* dvdFile, u8* dst, JKRExpandSwitch expandSwitch,
                                  u32 dstLength, JKRHeap* heap,
                                  JKRDvdRipper::EAllocDirection allocDirection, u32 offset,
                                  int* pCompression, u32* param_8) {
    s32 fileSizeAligned;
    bool hasAllocated = false;
    JKRCompression compression = COMPRESSION_NONE;
    u32 expandSize;
    u8 *mem = NULL;

    fileSizeAligned = ALIGN_NEXT(dvdFile->getFileSize(), 32);
    if (expandSwitch == EXPAND_SWITCH_UNKNOWN1)
    {
        u8 buffer[0x40];
        u8 *bufPtr = (u8 *)ALIGN_NEXT((u32)buffer, 32);
        while (true)
        {
            int readBytes = DVDReadPrio(dvdFile->getFileInfo(), bufPtr, 0x20, 0, 2);
            if (readBytes >= 0)
                break;

            if (readBytes == -3 || errorRetry == false)
                return NULL;

            VIWaitForRetrace();
        }
        DCInvalidateRange(bufPtr, 0x20);

        compression = JKRCheckCompressed_noASR(bufPtr);
        expandSize = JKRDecompExpandSize(bufPtr);
    }

    if (pCompression)
        *pCompression = (int)compression;

    if (expandSwitch == EXPAND_SWITCH_UNKNOWN1 && compression != COMPRESSION_NONE)
    {
        if (dstLength != 0 && expandSize > dstLength)
        {
            expandSize = dstLength;
        }
        if (dst == NULL)
        {
            dst = (u8 *)JKRAllocFromHeap(heap, expandSize, allocDirection == ALLOC_DIRECTION_FORWARD ? 32 : -32);
            hasAllocated = true;
        }
        if (dst == NULL)
            return NULL;
        if (compression == COMPRESSION_YAY0)
        {
            mem = (u8 *)JKRAllocFromHeap((heap), fileSizeAligned, 32);
            if (mem == NULL)
            {
                if (hasAllocated == true)
                {
                    JKRFree(dst);
                    return NULL;
                }
            }
        }
    }
    else
    {
        if (dst == NULL)
        {
            u32 size = fileSizeAligned - offset;
            if ((dstLength != 0) && (size > dstLength))
                size = dstLength;

            dst = (u8 *)JKRAllocFromHeap(heap, size, allocDirection == ALLOC_DIRECTION_FORWARD ? 32 : -32);
            hasAllocated = true;
        }
        if (dst == NULL)
            return NULL;
    }
    if (compression == COMPRESSION_NONE)
    {
        JKRCompression compression2 = COMPRESSION_NONE; // maybe for a sub archive?

        if (offset != 0)
        {
            u8 buffer[0x40];
            u8 *bufPtr = (u8 *)ALIGN_NEXT((u32)buffer, 32);
            while (true)
            {
                int readBytes = DVDReadPrio(dvdFile->getFileInfo(), bufPtr, 32, (s32)offset, 2);
                if (readBytes >= 0)
                    break;

                if (readBytes == -3 || !errorRetry)
                {
                    if (hasAllocated == true)
                    {
                        JKRFree(dst);
                    }
                    return NULL;
                }
                VIWaitForRetrace();
            }
            DCInvalidateRange(bufPtr, 32);

            compression2 = JKRCheckCompressed_noASR(bufPtr);
        }
        if ((compression2 == COMPRESSION_NONE || expandSwitch == EXPAND_SWITCH_UNKNOWN2) || expandSwitch == EXPAND_SWITCH_UNKNOWN0)
        {
            s32 size = fileSizeAligned - offset;
            if (dstLength != 0 && dstLength < size)
                size = dstLength; // probably a ternary
            while (true)
            {
                int readBytes = DVDReadPrio(dvdFile->getFileInfo(), dst, size, (s32)offset, 2);
                if (readBytes >= 0)
                    break;

                if (readBytes == -3 || !errorRetry)
                {
                    if (hasAllocated == true)
                        JKRFree(dst);
                    return NULL;
                }
                VIWaitForRetrace();
            }
            if (param_8)
            {
                *param_8 = size;
            }
            return dst;
        }
        else if (compression2 == COMPRESSION_YAZ0)
        {
            JKRDecompressFromDVD(dvdFile, dst, fileSizeAligned, dstLength, 0, offset, param_8);
        } else {
            JUTException::panic(__FILE__, 0x143, "Sorry, not applied for SZP archive.");
        }
        return dst;
    }
    else if (compression == COMPRESSION_YAY0)
    {
        // SZP decompression
        // s32 readoffset = startOffset;
        if (offset != 0)
        {
            JUTException::panic(__FILE__, 0x14d, "Not support SZP with offset read");
        }
        while (true)
        {
            int readBytes = DVDReadPrio(dvdFile->getFileInfo(), mem, fileSizeAligned, 0, 2);
            if (readBytes >= 0)
                break;

            if (readBytes == -3 || !errorRetry)
            {
                if (hasAllocated == true)
                    JKRFree(dst);

                JKRFree(mem);
                return NULL;
            }
            VIWaitForRetrace();
        }
        DCInvalidateRange(mem, fileSizeAligned);
        JKRDecompress(mem, dst, expandSize, offset);
        JKRFree(mem);
        if (param_8)
        {
            *param_8 = expandSize;
        }
        return dst;
    }
    else if (compression == COMPRESSION_YAZ0)
    {
        if (JKRDecompressFromDVD(dvdFile, dst, fileSizeAligned, expandSize, offset, 0, param_8) != 0u)
        {
            if (hasAllocated)
                JKRFree(dst);
            dst = NULL;
        }
        return dst;
    }
    else if (hasAllocated)
    {
        JKRFree(dst);
        dst = NULL;
    }
    return NULL;
}

/* ############################################################################################## */
/* 80434378-80434384 061098 000C+00 1/1 0/0 0/0 .bss             @491 */
static u8 lit_491[12];

/* 80434384-80434390 0610A4 000C+00 1/1 0/0 0/0 .bss             sDvdAsyncList__12JKRDvdRipper */
JSUList<JKRDMCommand> JKRDvdRipper::sDvdAsyncList;

/* 80434390-804343A8 0610B0 0018+00 1/1 0/0 0/0 .bss             decompMutex */
static OSMutex decompMutex;

/* 804508CC-804508D0 00034C 0004+00 1/1 1/1 0/0 .sdata           sSZSBufferSize__12JKRDvdRipper */
u32 JKRDvdRipper::sSZSBufferSize = 0x00000400;

/* 80451428-8045142C 000928 0004+00 3/3 0/0 0/0 .sbss            szpBuf */
static u8* szpBuf;

/* 8045142C-80451430 00092C 0004+00 3/3 0/0 0/0 .sbss            szpEnd */
static u8* szpEnd;

/* 80451430-80451434 000930 0004+00 2/2 0/0 0/0 .sbss            refBuf */
static u8* refBuf;

/* 80451434-80451438 000934 0004+00 2/2 0/0 0/0 .sbss            refEnd */
static u8* refEnd;

/* 80451438-8045143C 000938 0004+00 2/2 0/0 0/0 .sbss            refCurrent */
static u8* refCurrent;

/* 8045143C-80451440 00093C 0004+00 3/3 0/0 0/0 .sbss            srcOffset */
static u32 srcOffset;

/* 80451440-80451444 000940 0004+00 4/4 0/0 0/0 .sbss            transLeft */
static u32 transLeft;

/* 80451444-80451448 000944 0004+00 3/3 0/0 0/0 .sbss            srcLimit */
static u8* srcLimit;

/* 80451448-8045144C 000948 0004+00 3/3 0/0 0/0 .sbss            srcFile */
static JKRDvdFile* srcFile;

/* 8045144C-80451450 00094C 0004+00 2/2 0/0 0/0 .sbss            fileOffset */
static u32 fileOffset;

/* 80451450-80451454 000950 0004+00 2/2 0/0 0/0 .sbss            readCount */
static u32 readCount;

/* 80451454-80451458 000954 0004+00 2/2 0/0 0/0 .sbss            maxDest */
static u32 maxDest;

/* 80451458-8045145C 000958 0004+00 1/1 0/0 0/0 .sbss            None */
static bool data_80451458;

/* 8045145C-80451460 00095C 0004+00 2/2 0/0 0/0 .sbss            tsPtr */
static u32* tsPtr;

/* 80451460-80451468 000960 0004+04 1/1 0/0 0/0 .sbss            tsArea */
static u32 tsArea;

/* 802DA1E4-802DA35C 2D4B24 0178+00 1/1 0/0 0/0 .text
 * JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUlPUl            */
static int JKRDecompressFromDVD(JKRDvdFile* dvdFile, void* dst, u32 fileSize, u32 inMaxDest,
                                u32 inFileOffset, u32 inSrcOffset, u32* inTsPtr) {
    BOOL interrupts = OSDisableInterrupts();
    if (data_80451458 == false)
    {
        OSInitMutex(&decompMutex);
        data_80451458 = true;
    }
    OSRestoreInterrupts(interrupts);
    OSLockMutex(&decompMutex);
    int bufSize = JKRDvdRipper::getSZSBufferSize();
    szpBuf = (u8 *)JKRAllocFromSysHeap(bufSize, -0x20);

    szpEnd = szpBuf + bufSize;
    if (inFileOffset != 0)
    {
        refBuf = (u8 *)JKRAllocFromSysHeap(0x1120, -4);
        refEnd = refBuf + 0x1120;
        refCurrent = refBuf;
    }
    else
    {
        refBuf = NULL;
    }
    srcFile = dvdFile;
    srcOffset = inSrcOffset;
    transLeft = fileSize - inSrcOffset;
    fileOffset = inFileOffset;
    readCount = 0;
    maxDest = inMaxDest;
    if (!inTsPtr)
    {
        tsPtr = &tsArea;
    }
    else
    {
        tsPtr = inTsPtr;
    }
    *tsPtr = 0;
    u8 *data = firstSrcData();
    u32 result = (data != NULL) ? decompSZS_subroutine(data, (u8 *)dst) : -1; // figure out correct datatypes
    JKRFree(szpBuf);
    if (refBuf)
    {
        JKRFree(refBuf);
    }
    DCStoreRangeNoSync(dst, *tsPtr);
    OSUnlockMutex(&decompMutex);
    return result;
}

/* 802DA35C-802DA60C 2D4C9C 02B0+00 1/1 0/0 0/0 .text            decompSZS_subroutine__FPUcPUc */
int decompSZS_subroutine(u8* src, u8* dest) {
    u8 *endPtr;
    s32 validBitCount = 0;
    s32 currCodeByte = 0;
    u32 ts = 0;

    if (src[0] != 'Y' || src[1] != 'a' || src[2] != 'z' || src[3] != '0')
    {
        return -1;
    }

    SYaz0Header *header = (SYaz0Header *)src;
    endPtr = dest + (header->length - fileOffset);
    if (endPtr > dest + maxDest)
    {
        endPtr = dest + maxDest;
    }

    src += 0x10;
    do
    {
        if (validBitCount == 0)
        {
            if ((src > srcLimit) && transLeft)
            {
                src = nextSrcData(src);
                if (!src)
                {
                    return -1;
                }
            }
            currCodeByte = *src;
            validBitCount = 8;
            src++;
        }
        if (currCodeByte & 0x80)
        {
            if (fileOffset != 0)
            {
                if (readCount >= fileOffset)
                {
                    *dest = *src;
                    dest++;
                    ts++;
                    if (dest == endPtr)
                    {
                        break;
                    }
                }
                *(refCurrent++) = *src;
                if (refCurrent == refEnd)
                {
                    refCurrent = refBuf;
                }
                src++;
            }
            else
            {
                *dest = *src;
                dest++;
                src++;
                ts++;
                if (dest == endPtr)
                {
                    break;
                }
            }
            readCount++;
        }
        else
        {
            u32 dist = ((src[0] & 0x0f) << 8) | src[1];
            s32 numBytes = src[0] >> 4;
            src += 2;
            u8 *copySource;
            if (fileOffset != 0)
            {
                copySource = refCurrent - dist - 1;
                if (copySource < refBuf)
                {
                    copySource += refEnd - refBuf;
                }
            }
            else
            {
                copySource = dest - dist - 1;
            }
            if (numBytes == 0)
            {
                numBytes = *src + 0x12;
                src += 1;
            }
            else
            {
                numBytes += 2;
            }
            if (fileOffset != 0)
            {
                do
                {
                    if (readCount >= fileOffset)
                    {
                        *dest = *copySource;
                        dest++;
                        ts++;
                        if (dest == endPtr)
                        {
                            break;
                        }
                    }
                    *(refCurrent++) = *copySource;
                    if (refCurrent == refEnd)
                    {
                        refCurrent = refBuf;
                    }
                    copySource++;
                    if (copySource == refEnd)
                    {
                        copySource = refBuf;
                    }
                    readCount++;
                    numBytes--;
                } while (numBytes != 0);
            }
            else
            {
                do
                {
                    *dest = *copySource;
                    dest++;
                    ts++;
                    if (dest == endPtr)
                    {
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

/* 802DA60C-802DA6D8 2D4F4C 00CC+00 1/1 0/0 0/0 .text            firstSrcData__Fv */
static u8* firstSrcData() {
    srcLimit = szpEnd - 0x19;
    u8* buffer = szpBuf;
    u32 bufSize = szpEnd - buffer;
    u32 length = transLeft < bufSize ? transLeft : bufSize;

    while (true) {
        int result = DVDReadPrio(srcFile->getFileInfo(), buffer, length, srcOffset, 2);
        if (result >= 0) {
            break;
        }

        if (result == -3 || !errorRetry) {
            return NULL;
        }
        VIWaitForRetrace();
    }

    DCInvalidateRange(buffer, length);
    srcOffset += length;
    transLeft -= length;
    return buffer;
}

/* 802DA6D8-802DA7D4 2D5018 00FC+00 1/1 0/0 0/0 .text            nextSrcData__FPUc */
static u8* nextSrcData(u8* src) {
    u32 limit = szpEnd - src;
    u8 *buf;
    if (IS_NOT_ALIGNED(limit, 0x20))
        buf = szpBuf + 0x20 - (limit & (0x20 - 1));
    else
        buf = szpBuf;

    memcpy(buf, src, limit);
    u32 transSize = (u32)(szpEnd - (buf + limit));
    if (transSize > transLeft)
        transSize = transLeft;
    while (true)
    {
        s32 result = DVDReadPrio(srcFile->getFileInfo(), (buf + limit), transSize, srcOffset, 2);
        if (result >= 0)
            break;
        // bug: supposed to call isErrorRetry, but didn't
        if (result == -3 || !JKRDvdRipper::isErrorRetry)
            return NULL;

        VIWaitForRetrace();
    }
    DCInvalidateRange((buf + limit), transSize);
    srcOffset += transSize;
    transLeft -= transSize;
    if (transLeft == 0)
        srcLimit = transSize + (buf + limit);

    return buf;
}

/* 802DA7D4-802DA7DC -00001 0008+00 0/0 0/0 0/0 .text            isErrorRetry__12JKRDvdRipperFv */
u8 JKRDvdRipper::isErrorRetry() {
    return errorRetry;
}
