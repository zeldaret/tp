#include "JSystem/JKernel/JKRDecomp/JKRDecomp.h"
#include "global.h"

#include "JSystem/JKernel/JKRAramPiece/JKRAramPiece.h"

JKRDecomp* JKRDecomp::create(long priority) {
    if (!lbl_804514B0) {
        lbl_804514B0 = new (JKRHeap::getSystemHeap(), 0) JKRDecomp(priority);
    }

    return lbl_804514B0;
}

JKRDecomp::JKRDecomp(long priority) : JKRThread(0x800, 0x10, priority) {
    resume();
}

JKRDecomp::~JKRDecomp() {}

void* JKRDecomp::run(void) {
    OSInitMessageQueue(&lbl_803CC480, lbl_803CC460, 8);
    for (;;) {
        OSMessage message;
        OSReceiveMessage(&lbl_803CC480, &message, OS_MESSAGE_BLOCKING);

        JKRDecompCommand* command = (JKRDecompCommand*)message;
        decode(command->mSrcBuffer, command->mDstBuffer, command->mSrcLength, command->mDstLength);

        if (command->field_0x20 != 0) {
            if (command->field_0x20 == 1) {
                JKRAramPiece::sendCommand(command->mAMCommand);
            }
            continue;
        }

        if (command->mCallback) {
            (*command->mCallback)((u32)command);
            continue;
        }

        if (command->field_0x1c) {
            OSSendMessage(command->field_0x1c, (OSMessage)1, OS_MESSAGE_NON_BLOCKING);
        } else {
            OSSendMessage(&command->mMessageQueue, (OSMessage)1, OS_MESSAGE_NON_BLOCKING);
        }
    }
}

JKRDecompCommand* JKRDecomp::prepareCommand(u8* srcBuffer, u8* dstBuffer, u32 srcLength,
                                            u32 dstLength,
                                            JKRDecompCommand::AsyncCallback callback) {
    JKRDecompCommand* command = new (JKRHeap::getSystemHeap(), -4) JKRDecompCommand();
    command->mSrcBuffer = srcBuffer;
    command->mDstBuffer = dstBuffer;
    command->mSrcLength = srcLength;
    command->mDstLength = dstLength;
    command->mCallback = callback;
    return command;
}

void JKRDecomp::sendCommand(JKRDecompCommand* command) {
    OSSendMessage(&lbl_803CC480, command, OS_MESSAGE_NON_BLOCKING);
}

JKRDecompCommand* JKRDecomp::orderAsync(u8* srcBuffer, u8* dstBuffer, u32 srcLength, u32 dstLength,
                                        JKRDecompCommand::AsyncCallback callback) {
    JKRDecompCommand* command =
        prepareCommand(srcBuffer, dstBuffer, srcLength, dstLength, callback);
    sendCommand(command);
    return command;
}

bool JKRDecomp::sync(JKRDecompCommand* command, int isNonBlocking) {
    OSMessage message;
    bool result;
    if (isNonBlocking == JKRDECOMP_SYNC_BLOCKING) {
        OSReceiveMessage(&command->mMessageQueue, &message, OS_MESSAGE_BLOCKING);
        result = true;
    } else {
        result =
            OSReceiveMessage(&command->mMessageQueue, &message, OS_MESSAGE_NON_BLOCKING) != FALSE;
    }

    return result;
}

bool JKRDecomp::orderSync(u8* srcBuffer, u8* dstBuffer, u32 srcLength, u32 dstLength) {
    JKRDecompCommand* command = orderAsync(srcBuffer, dstBuffer, srcLength, dstLength, NULL);
    bool result = sync(command, JKRDECOMP_SYNC_BLOCKING);
    delete command;
    return result;
}

void JKRDecomp::decode(u8* srcBuffer, u8* dstBuffer, u32 srcLength, u32 dstLength) {
    JKRCompression compression = checkCompressed(srcBuffer);
    if (compression == COMPRESSION_YAY0) {
        decodeSZP(srcBuffer, dstBuffer, srcLength, dstLength);
    } else if (compression == COMPRESSION_YAZ0) {
        decodeSZS(srcBuffer, dstBuffer, srcLength, dstLength);
    }
}

// All instructions match. Wrong registers are used.
#ifdef NONMATCHING
void JKRDecomp::decodeSZP(u8* src, u8* dst, u32 srcLength, u32 dstLength) {
    u32 decodedSize;
    s32 srcChunkOffset;
    s32 count;
    s32 dstOffset;
    u32 length;
    u32 counter;
    u32 srcDataOffset;
    u32 linkTableOffset;
    s32 offset;
    s32 i;

    decodedSize = READ_BIG_ENDIAN_U32(src + 4);
    linkTableOffset = READ_BIG_ENDIAN_U32(src + 8);
    srcDataOffset = READ_BIG_ENDIAN_U32(src + 12);

    dstOffset = 0;
    counter = 0;
    srcChunkOffset = 16;

    u32 chunkBits;
    if (srcLength == 0)
        return;
    if (dstLength > decodedSize)
        return;

    length = srcLength;
    do {
        if (counter == 0) {
            chunkBits = READ_BIG_ENDIAN_U32(src + srcChunkOffset);
            srcChunkOffset += 4;
            counter = 32;
        }

        if (chunkBits & 0x80000000) {
            if (dstLength == 0) {
                dst[dstOffset] = src[srcDataOffset];
                length--;
                if (length == 0) {
                    return;
                }
            } else {
                dstLength--;
            }
            dstOffset++;
            srcDataOffset++;
        } else {
            u32 linkInfo = READ_BIG_ENDIAN_U16(src + linkTableOffset);
            linkTableOffset += 2;

            offset = dstOffset - (linkInfo & 0xFFF);
            count = ((s32)linkInfo) >> 12;
            if (count == 0) {
                count = (u32)src[srcDataOffset] + 0x12;
                srcDataOffset++;
            } else {
                count += 2;
            }

            if (count > decodedSize - dstOffset) {
                count = decodedSize - dstOffset;
            }

            for (i = 0; i < count; i++, dstOffset++, offset++) {
                if (dstLength == 0) {
                    dst[dstOffset] = dst[offset - 1];
                    length--;
                    if (length == 0) {
                        return;
                    }
                } else {
                    dstLength--;
                }
            }
        }

        chunkBits <<= 1;
        counter--;
    } while ((s32)dstLength < decodedSize);
}
#else
asm void JKRDecomp::decodeSZP(u8*, u8*, u32, u32) {
    nofralloc
#include "JSystem/JKernel/JKRDecomp/asm/func_802DBA58.s"
}
#endif

asm void JKRDecomp::decodeSZS(u8*, u8*, u32, u32){nofralloc
#include "JSystem/JKernel/JKRDecomp/asm/func_802DBC14.s"
}

JKRCompression JKRDecomp::checkCompressed(u8* src) {
    if ((src[0] == 'Y') && (src[1] == 'a') && (src[3] == '0')) {
        if (src[2] == 'y') {
            return COMPRESSION_YAY0;
        }
        if (src[2] == 'z') {
            return COMPRESSION_YAZ0;
        }
    }
    if ((src[0] == 'A') && (src[1] == 'S') && (src[2] == 'R')) {
        return COMPRESSION_ASR;
    }
    return COMPRESSION_NONE;
}

JKRDecompCommand::JKRDecompCommand() {
    OSInitMessageQueue(&mMessageQueue, &mMessage, 1);
    mCallback = NULL;
    field_0x1c = NULL;
    mThis = this;
    field_0x20 = 0;
}

JKRDecompCommand::~JKRDecompCommand() {}
