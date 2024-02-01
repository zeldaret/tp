#include "JSystem/JKernel/JKRDvdAramRipper.h"
#include "JSystem/JKernel/JKRAram.h"
#include "JSystem/JKernel/JKRAramPiece.h"
#include "JSystem/JKernel/JKRAramStream.h"
#include "JSystem/JKernel/JKRDecomp.h"
#include "JSystem/JKernel/JKRDvdFile.h"
#include "JSystem/JSupport/JSUFileStream.h"
#include "dolphin/os/OSCache.h"
#include "dolphin/os/OSInterrupt.h"
#include "dolphin/vi.h"
#include "global.h"
#include "string.h"

static int JKRDecompressFromDVDToAram(JKRDvdFile*, u32, u32, u32, u32, u32, u32*);
static int decompSZS_subroutine(u8*, u32);
static u8* firstSrcData();
static u8* nextSrcData(u8*);
static u32 dmaBufferFlush(u32);

extern "C" void __dt__18JSUFileInputStreamFv();
extern "C" static int JKRDecompressFromDVDToAram__FP10JKRDvdFileUlUlUlUlUlPUl();
extern "C" static int decompSZS_subroutine__FPUcUl();
extern "C" static u8* firstSrcData__Fv();
extern "C" static u8* nextSrcData__FPUc();
extern "C" static int dmaBufferFlush__FUl();
extern "C" void __sinit_JKRDvdAramRipper_cpp();
extern "C" void func_802DB62C(void* _this);
extern "C" u8 sDvdAramAsyncList__16JKRDvdAramRipper[12];
extern "C" u32 sSZSBufferSize__16JKRDvdAramRipper;

//
// External References:
//

extern "C" void alloc__7JKRHeapFUli();
extern "C" void free__7JKRHeapFPvP7JKRHeap();
extern "C" void* __nw__FUlP7JKRHeapi();
extern "C" void __dl__FPv();
extern "C" void alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode();
extern "C" void orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock();
extern "C" void write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUlPUl();
extern "C" void sync__13JKRAramStreamFP20JKRAramStreamCommandi();
extern "C" void checkCompressed__9JKRDecompFPUc();
extern "C" void __ct__10JSUPtrLinkFPv();
extern "C" void __dt__10JSUPtrLinkFv();
extern "C" void __dt__10JSUPtrListFv();
extern "C" void initiate__10JSUPtrListFv();
extern "C" void append__10JSUPtrListFP10JSUPtrLink();
extern "C" void remove__10JSUPtrListFP10JSUPtrLink();
extern "C" void __dt__14JSUInputStreamFv();
extern "C" void __ct__18JSUFileInputStreamFP7JKRFile();
extern "C" void __register_global_object();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__20JSURandomInputStream[9];
extern "C" extern void* __vt__18JSUFileInputStream[9 + 1 /* padding */];
extern "C" u8 sSystemHeap__7JKRHeap[4];
extern "C" u8 sAramObject__7JKRAram[4];
extern "C" bool errorRetry__16JKRDvdAramRipper;

//
// Declarations:
//

/* 802DA874-802DA918 2D51B4 00A4+00 0/0 3/3 0/0 .text
 * loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUlPUl   */
JKRAramBlock* JKRDvdAramRipper::loadToAram(s32 entryNumber, u32 address,
                                           JKRExpandSwitch expandSwitch, u32 param_3, u32 param_4,
                                           u32* param_5) {
    JKRDvdFile dvdFile;
    if (!dvdFile.open(entryNumber)) {
        return NULL;
    } else {
        return loadToAram(&dvdFile, address, expandSwitch, param_3, param_4, param_5);
    }
}

/* 802DA918-802DA9C0 2D5258 00A8+00 1/1 0/0 0/0 .text
 * loadToAram__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchUlUlPUl */
JKRAramBlock* JKRDvdAramRipper::loadToAram(JKRDvdFile* dvdFile, u32 address,
                                           JKRExpandSwitch expandSwitch, u32 param_3, u32 param_4,
                                           u32* param_5) {
    JKRADCommand* command =
        loadToAram_Async(dvdFile, address, expandSwitch, NULL, param_3, param_4, param_5);
    syncAram(command, 0);

    if (command->field_0x48 < 0) {
        delete command;
        return NULL;
    }

    if (address) {
        delete command;
        return (JKRAramBlock*)-1;
    }

    JKRAramBlock* result = command->mBlock;
    delete command;
    return result;
}

/* 802DA9C0-802DAA74 2D5300 00B4+00 1/1 0/0 0/0 .text
 * loadToAram_Async__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchPFUl_vUlUlPUl */
JKRADCommand* JKRDvdAramRipper::loadToAram_Async(JKRDvdFile* dvdFile, u32 address,
                                                 JKRExpandSwitch expandSwitch,
                                                 void (*callback)(u32), u32 param_4, u32 param_5,
                                                 u32* param_6) {
    JKRADCommand* command = new (JKRHeap::sSystemHeap, -4) JKRADCommand();
    command->mDvdFile = dvdFile;
    command->mAddress = address;
    command->mBlock = NULL;
    command->mExpandSwitch = expandSwitch;
    command->mCallback = callback;
    command->field_0x3c = param_4;
    command->field_0x40 = param_5;
    command->field_0x44 = param_6;

    if (!callCommand_Async(command)) {
        delete command;
        return NULL;
    }

    return command;
}

/* 804343B4-804343C0 0610D4 000C+00 3/3 0/0 0/0 .bss sDvdAramAsyncList__16JKRDvdAramRipper */
JSUList<JKRADCommand> JKRDvdAramRipper::sDvdAramAsyncList;

/* 804508D0-804508D4 000350 0004+00 3/3 0/0 0/0 .sdata           None */
bool JKRDvdAramRipper::errorRetry = true;

/* 802DAA74-802DADD8 2D53B4 0364+00 1/1 0/0 0/0 .text
 * callCommand_Async__16JKRDvdAramRipperFP12JKRADCommand        */
JKRADCommand* JKRDvdAramRipper::callCommand_Async(JKRADCommand* command) {
    s32 compression;
    s32 uncompressedSize;
    bool bVar1 = true;
    JKRDvdFile* dvdFile = command->mDvdFile;
    compression = 0;
    OSLockMutex(&dvdFile->mMutex2);
    if (command->field_0x44) {
        *command->field_0x44 = 0;
    }

    if (dvdFile->field_0x50) {
        bVar1 = false;
    } else {
        dvdFile->field_0x50 = OSGetCurrentThread();
        JSUFileInputStream* stream = new (JKRGetSystemHeap(), -4) JSUFileInputStream(dvdFile);
        dvdFile->mFileStream = stream;
        u32 fileSize = dvdFile->getFileSize();
        if (command->field_0x40 && fileSize > command->field_0x40) {
            fileSize = command->field_0x40;
        }
        fileSize = ALIGN_NEXT(fileSize, 0x20);
        if (command->mExpandSwitch == 1) {
            u8 buffer[0x40];
            u8* bufPtr = (u8*)ALIGN_NEXT((u32)&buffer, 0x20);
            while (true) {
                if (DVDReadPrio(dvdFile->getFileInfo(), bufPtr, 0x20, 0, 2) >= 0) {
                    break;
                }

                if (JKRDvdAramRipper::errorRetry == 0) {
                    delete stream;
                    return NULL;
                }

                VIWaitForRetrace();
            }
            DCInvalidateRange(bufPtr, 0x20);

            compression = JKRCheckCompressed_noASR(bufPtr);

            u32 expandSize = JKRDecompExpandSize(bufPtr);
            uncompressedSize = expandSize;
            if (command->field_0x40 && uncompressedSize > command->field_0x40) {
                uncompressedSize = command->field_0x40;
            }
        }

        if (compression == 0) {
            command->mExpandSwitch = EXPAND_SWITCH_UNKNOWN0;
        }

        if (command->mExpandSwitch == EXPAND_SWITCH_UNKNOWN1) {
            if (command->mAddress == 0 && command->mBlock == NULL) {
                command->mBlock = JKRAllocFromAram(uncompressedSize, JKRAramHeap::HEAD);
                if (command->mBlock) {
                    command->mAddress = command->mBlock->getAddress();
                }
                dvdFile->mBlock = command->mBlock;
            }

            if (command->mBlock) {
                command->mAddress = command->mBlock->getAddress();
            }

            if (command->mAddress == 0) {
                dvdFile->field_0x50 = NULL;
                return NULL;
            }
        } else {
            if (command->mAddress == 0 && !command->mBlock) {
                command->mBlock = JKRAllocFromAram(fileSize, JKRAramHeap::HEAD);
            }

            if (command->mBlock) {
                command->mAddress = command->mBlock->getAddress();
            }

            if (command->mAddress == 0) {
                dvdFile->field_0x50 = NULL;
                return NULL;
            }
        }

        if (compression == 0) {
            command->mStreamCommand =
                JKRStreamToAram_Async(stream, command->mAddress, fileSize - command->field_0x3c,
                                      command->field_0x3c, NULL, command->field_0x44);
        } else if (compression == 1) {
            command->mStreamCommand =
                JKRStreamToAram_Async(stream, command->mAddress, fileSize - command->field_0x3c,
                                      command->field_0x3c, NULL, command->field_0x44);
        } else if (compression == 2) {
            command->mStreamCommand = NULL;
            JKRDecompressFromDVDToAram(command->mDvdFile, command->mAddress, fileSize,
                                       uncompressedSize, command->field_0x3c, 0,
                                       command->field_0x44);
        }

        if (!command->mCallback) {
            (*((JSUList<JKRADCommand>*)&sDvdAramAsyncList)).append(&command->mLink);
        } else {
            command->mCallback((u32)command);
        }
    }

    OSUnlockMutex(&dvdFile->mMutex2);
    return bVar1 == true ? command : NULL;
}

/* 802DADD8-802DAE48 2D5718 0070+00 0/0 1/0 0/0 .text            __dt__18JSUFileInputStreamFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm JSUFileInputStream::~JSUFileInputStream() {
extern "C" asm void __dt__18JSUFileInputStreamFv() {
    nofralloc
#include "asm/JSystem/JKernel/JKRDvdAramRipper/__dt__18JSUFileInputStreamFv.s"
}
#pragma pop

/* 802DAE48-802DAF1C 2D5788 00D4+00 1/1 0/0 0/0 .text
 * syncAram__16JKRDvdAramRipperFP12JKRADCommandi                */
bool JKRDvdAramRipper::syncAram(JKRADCommand* command, int param_1) {
    JKRDvdFile* dvdFile = command->mDvdFile;
    OSLockMutex(&dvdFile->mMutex2);

    if (command->mStreamCommand) {
        JKRAramStreamCommand* var1 = JKRAramStream::sync(command->mStreamCommand, param_1);
        command->field_0x48 = -(var1 == NULL);

        if (param_1 != 0 && var1 == NULL) {
            OSUnlockMutex(&dvdFile->mMutex2);
            return false;
        }
    }

    (*((JSUList<JKRADCommand>*)&sDvdAramAsyncList)).remove(&command->mLink);
    if (command->mStreamCommand) {
        delete command->mStreamCommand;
    }

    delete dvdFile->mFileStream;
    dvdFile->field_0x50 = NULL;
    OSUnlockMutex(&dvdFile->mMutex2);
    return true;
}

/* 802DAF1C-802DAF5C 2D585C 0040+00 1/1 0/0 0/0 .text            __ct__12JKRADCommandFv */
JKRADCommand::JKRADCommand() : mLink(this) {
    field_0x48 = 0;
    field_0x4c = 0;
}

/* 802DAF5C-802DAFE8 2D589C 008C+00 2/2 0/0 0/0 .text            __dt__12JKRADCommandFv */
JKRADCommand::~JKRADCommand() {
    if (field_0x4c == 1) {
        delete mDvdFile;
    }
}

/* ############################################################################################## */
/* 804343C0-804343D8 0610E0 0018+00 1/1 0/0 0/0 .bss             decompMutex */
static OSMutex decompMutex;

/* 804508D4-804508D8 000354 0004+00 1/1 1/1 0/0 .sdata           sSZSBufferSize__16JKRDvdAramRipper
 */
u32 JKRDvdAramRipper::sSZSBufferSize = 0x00000400;

/* 80451468-8045146C 000968 0004+00 3/3 0/0 0/0 .sbss            szpBuf */
static u8* szpBuf;

/* 8045146C-80451470 00096C 0004+00 3/3 0/0 0/0 .sbss            szpEnd */
static u8* szpEnd;

/* 80451470-80451474 000970 0004+00 2/2 0/0 0/0 .sbss            refBuf */
static u8* refBuf;

/* 80451474-80451478 000974 0004+00 2/2 0/0 0/0 .sbss            refEnd */
static u8* refEnd;

/* 80451478-8045147C 000978 0004+00 2/2 0/0 0/0 .sbss            refCurrent */
static u8* refCurrent;

/* 8045147C-80451480 00097C 0004+00 2/2 0/0 0/0 .sbss            dmaBuf */
static u8* dmaBuf;

/* 80451480-80451484 000980 0004+00 2/2 0/0 0/0 .sbss            dmaEnd */
static u8* dmaEnd;

/* 80451484-80451488 000984 0004+00 3/3 0/0 0/0 .sbss            dmaCurrent */
static u8* dmaCurrent;

/* 80451488-8045148C 000988 0004+00 3/3 0/0 0/0 .sbss            srcOffset */
static u32 srcOffset;

/* 8045148C-80451490 00098C 0004+00 4/4 0/0 0/0 .sbss            transLeft */
static u32 transLeft;

/* 80451490-80451494 000990 0004+00 3/3 0/0 0/0 .sbss            srcLimit */
static u8* srcLimit;

/* 80451494-80451498 000994 0004+00 3/3 0/0 0/0 .sbss            srcFile */
static JKRDvdFile* srcFile;

/* 80451498-8045149C 000998 0004+00 2/2 0/0 0/0 .sbss            fileOffset */
static u32 fileOffset;

/* 8045149C-804514A0 00099C 0004+00 2/2 0/0 0/0 .sbss            readCount */
static int readCount;

/* 804514A0-804514A4 0009A0 0004+00 2/2 0/0 0/0 .sbss            maxDest */
static u32 maxDest;

/* 804514A4-804514A8 0009A4 0004+00 1/1 0/0 0/0 .sbss            None */
static bool data_804514A4;

/* 804514A8-804514AC 0009A8 0004+00 2/2 0/0 0/0 .sbss            tsPtr */
static u32* tsPtr;

/* 804514AC-804514B0 0009AC 0004+00 1/1 0/0 0/0 .sbss            tsArea */
static u32 tsArea;

/* 802DAFE8-802DB160 2D5928 0178+00 1/1 0/0 0/0 .text
 * JKRDecompressFromDVDToAram__FP10JKRDvdFileUlUlUlUlUlPUl      */
int JKRDecompressFromDVDToAram(JKRDvdFile* dvdFile, u32 param_1, u32 fileSize, u32 uncompressedSize,
                               u32 param_4, u32 param_5, u32* param_6) {
    BOOL level = OSDisableInterrupts();
    if (!data_804514A4) {
        OSInitMutex(&decompMutex);
        data_804514A4 = true;
    }

    OSRestoreInterrupts(level);
    OSLockMutex(&decompMutex);
    u32 bufferSize = JKRDvdAramRipper::sSZSBufferSize;
    szpBuf = (u8*)JKRAllocFromSysHeap(bufferSize, 0x20);
    szpEnd = szpBuf + bufferSize;
    refBuf = (u8*)JKRAllocFromSysHeap(0x1120, 0);
    refEnd = refBuf + 0x1120;
    refCurrent = refBuf;
    dmaBuf = (u8*)JKRAllocFromSysHeap(0x100, 0x20);
    dmaEnd = dmaBuf + 0x100;
    dmaCurrent = dmaBuf;
    srcFile = dvdFile;
    srcOffset = param_5;
    transLeft = fileSize - param_5;
    fileOffset = param_4;
    readCount = 0;
    maxDest = uncompressedSize;
    param_6 = param_6 ? param_6 : &tsArea;
    tsPtr = param_6;
    *param_6 = 0;
    u8* first = firstSrcData();
    int result = first ? decompSZS_subroutine(first, param_1) : -1;
    JKRHeap::free(szpBuf, 0);
    JKRHeap::free(refBuf, 0);
    JKRHeap::free(dmaBuf, 0);
    OSUnlockMutex(&decompMutex);
    return result;
}

/* 802DB160-802DB3E8 2D5AA0 0288+00 1/1 0/0 0/0 .text            decompSZS_subroutine__FPUcUl */
static int decompSZS_subroutine(u8* src, u32 dest) {
    u32 endAddr;
    u8* copySource;
    s32 validBitCount;
    u32 currCodeByte;
    s32 numBytes;
    u32 var_r26;
    u32 startDest;

    validBitCount = 0;
    currCodeByte = 0;
    var_r26 = 0;
    startDest = dest;

    if (src[0] != 'Y' || src[1] != 'a' || src[2] != 'z' || src[3] != '0') {
        return -1;
    }

    SYaz0Header* header = (SYaz0Header*)src;
    endAddr = dest + (header->length - fileOffset);
    if (endAddr > dest + maxDest) {
        endAddr = dest + maxDest;
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
            if (readCount >= fileOffset) {
                *(dmaCurrent++) = *src;
                dest++;
                var_r26++;
                if (dmaCurrent == dmaEnd) {
                    startDest += dmaBufferFlush(startDest);
                }
                if (dest == endAddr) {
                    break;
                }
            }
            *(refCurrent++) = *src;
            if (refCurrent == refEnd) {
                refCurrent = refBuf;
            }
            src++;
            readCount++;
        } else {
            u32 dist = ((src[0] & 0x0F) << 8) | src[1];
            numBytes = src[0] >> 4;
            src += 2;
            copySource = refCurrent - dist - 1;
            if (copySource < refBuf) {
                copySource += refEnd - refBuf;
            }
            if (numBytes == 0) {
                numBytes = *(src++);
                numBytes += 0x12;
            } else {
                numBytes += 2;
            }
            do {
                if (readCount >= fileOffset) {
                    *(dmaCurrent++) = *copySource;
                    dest++;
                    var_r26++;
                    if (dmaCurrent == dmaEnd) {
                        startDest += dmaBufferFlush(startDest);
                    }
                    if (dest == endAddr) {
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
        }
        currCodeByte <<= 1;
        validBitCount--;
    } while (dest < endAddr);

    dmaBufferFlush(startDest);
    *tsPtr = var_r26;
    return 0;
}

/* 802DB3E8-802DB49C 2D5D28 00B4+00 1/1 0/0 0/0 .text            firstSrcData__Fv */
static u8* firstSrcData() {
    srcLimit = szpEnd - 0x19;
    u8* buffer = szpBuf;
    u32 bufSize = szpEnd - buffer;
    u32 length = transLeft < bufSize ? transLeft : bufSize;
    while (true) {
        int result = DVDReadPrio(&srcFile->mFileInfo, buffer, length, 0, 2);
        if (result >= 0) {
            break;
        }
        if (JKRDvdAramRipper::errorRetry == 0) {
            return NULL;
        }
        VIWaitForRetrace();
    }
    srcOffset += length;
    transLeft -= length;
    return buffer;
}

/* 802DB49C-802DB580 2D5DDC 00E4+00 1/1 0/0 0/0 .text            nextSrcData__FPUc */
// regalloc
#ifdef NONMATCHING
static u8* nextSrcData(u8* src) {
    u8* dest;
    u32 size = szpEnd - src;
    dest = IS_NOT_ALIGNED(size, 0x20) ? szpBuf + 0x20 - (size & (0x20 - 1)) : szpBuf;
    memcpy(dest, src, size);
    u32 transSize = szpEnd - (dest + size);
    if (transSize > transLeft) {
        transSize = transLeft;
    }

    while (true) {
        s32 result = DVDReadPrio(&srcFile->mFileInfo, dest + size, transSize, srcOffset, 2);
        if (result >= 0) {
            break;
        }
        if (JKRDvdAramRipper::errorRetry == 0) {
            return NULL;
        }
        VIWaitForRetrace();
    }
    srcOffset += transSize;
    transLeft -= transSize;
    if (transLeft == 0) {
        srcLimit = dest + size + transSize;
    }
    return dest;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm u8* nextSrcData(u8* param_0) {
    nofralloc
#include "asm/JSystem/JKernel/JKRDvdAramRipper/nextSrcData__FPUc.s"
}
#pragma pop
#endif

/* 802DB580-802DB5E8 2D5EC0 0068+00 1/1 0/0 0/0 .text            dmaBufferFlush__FUl */
static u32 dmaBufferFlush(u32 param_1) {
    if (dmaCurrent == dmaBuf) {
        return 0;
    }
    u32 size = ALIGN_NEXT(dmaCurrent - dmaBuf, 0x20);
    JKRAramPiece::orderSync(0, (u32)dmaBuf, param_1, size, NULL);
    dmaCurrent = dmaBuf;
    return size;
}
