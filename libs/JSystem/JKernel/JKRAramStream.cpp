#include "JSystem/JKernel/JKRAramStream/JKRAramStream.h"
#include "JSystem/JKernel/JKRAramPiece/JKRAramPiece.h"
#include "global.h"

JKRAramStream* JKRAramStream::create(long priority) {
    if (!sAramStreamObject) {
        sAramStreamObject = new (JKRGetSystemHeap(), 0) JKRAramStream(priority);
        setTransBuffer(NULL, 0, NULL);
    }

    return sAramStreamObject;
}

JKRAramStream::JKRAramStream(long priority) : JKRThread(0xc00, 0x10, priority) {
    resume();
}

JKRAramStream::~JKRAramStream() {}

void* JKRAramStream::run(void) {
    OSInitMessageQueue(&sMessageQueue, sMessageBuffer, ARRAY_SIZE(sMessageBuffer));

    for (;;) {
        OSMessage message;
        OSReceiveMessage(&sMessageQueue, &message, OS_MESSAGE_BLOCKING);
        JKRAramStreamCommand* command = (JKRAramStreamCommand*)message;

        switch (command->mType) {
        case JKRAramStreamCommand::READ:
            readFromAram();
            break;
        case JKRAramStreamCommand::WRITE:
            writeToAram(command);
            break;
        }
    }
}

s32 JKRAramStream::readFromAram(void) {
    return 1;
}

// regalloc problems
#ifdef NONMATCHING
s32 JKRAramStream::writeToAram(JKRAramStreamCommand* command) {
    u32 size;
    u32 dstSize = command->mDstLength;
    u32 offset = command->mOffset;
    u32 writtenLength = 0;
    u32 destination = command->mDst;
    u8* buffer = command->mTransferBuffer;
    u32 bufferSize = command->mTransferBufferSize;
    JKRHeap* heap = command->mHeap;
    if (buffer) {
        if (bufferSize) {
            size = bufferSize;
        } else {
            size = 0x8000;
        }

        command->mTransferBufferSize = size;
        command->mAllocatedTransferBuffer = false;
    } else {
        if (bufferSize) {
            size = bufferSize;
        } else {
            size = 0x8000;
        }

        if (heap) {
            buffer = (u8*)JKRAllocFromHeap(heap, size, -0x20);
            command->mTransferBuffer = buffer;
        } else {
            buffer = (u8*)JKRAllocFromSysHeap(size, -0x20);
            command->mTransferBuffer = buffer;
        }

        command->mTransferBufferSize = size;
        command->mAllocatedTransferBuffer = true;
    }

    if (!buffer) {
        if (!heap) {
            JKRGetCurrentHeap()->dump();
        } else {
            heap->dump();
        }

        const char* file = lbl_8039D120;           // "JKRAramStream.cpp";
        const char* format = lbl_8039D120 + 0x12;  // "%s";
        const char* arg1 = lbl_8039D120 + 0x15;    // ":::Cannot alloc memory\n";
        JUTException_NS_panic_f(file, 0xac, format, arg1);
    }

    if (buffer) {
        JSURandomInputStream_NS_seek((JSURandomInputStream*)command->mStream, offset, 0);
        while (dstSize != 0) {
            u32 length;
            if (dstSize > size) {
                length = size;
            } else {
                length = dstSize;
            }

            s32 readLength =
                JSUInputStream_NS_read((JSUInputStream*)command->mStream, buffer, length);
            if (readLength == 0) {
                writtenLength = 0;
                break;
            }

            JKRAramPcs(0, (u32)buffer, destination, length, NULL);
            dstSize -= length;
            writtenLength += writtenLength;
            destination += length;

            if (command->mReturnSize) {
                *command->mReturnSize += length;
            }
        }

        if (command->mAllocatedTransferBuffer) {
            JKRFree(buffer);
            command->mAllocatedTransferBuffer = false;
        }
    }

    OSSendMessage(&command->mMessageQueue, (OSMessage)writtenLength, OS_MESSAGE_NON_BLOCKING);
    return writtenLength;
}
#else
asm s32 JKRAramStream::writeToAram(JKRAramStreamCommand* command) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3CE0.s"
}
#endif

JKRAramStreamCommand* JKRAramStream::write_StreamToAram_Async(JSUFileInputStream* stream, u32 addr,
                                                              u32 size, u32 offset,
                                                              u32* returnSize) {
    JKRAramStreamCommand* command = new (JKRGetSystemHeap(), -4) JKRAramStreamCommand();
    command->mType = JKRAramStreamCommand::WRITE;
    command->mAddress = addr;
    command->mSize = size;
    command->mStream = stream;
    command->field_0x2c = 0;
    command->mOffset = offset;
    command->mTransferBuffer = transBuffer;
    command->mHeap = transHeap;
    command->mTransferBufferSize = transSize;
    command->mReturnSize = returnSize;
    if (returnSize) {
        *returnSize = 0;
    }

    OSInitMessageQueue(&command->mMessageQueue, &command->mMessage, 1);
    OSSendMessage(&sMessageQueue, command, OS_MESSAGE_BLOCKING);
    return command;
}

JKRAramStreamCommand* JKRAramStream::sync(JKRAramStreamCommand* command, BOOL isNonBlocking) {
    OSMessage message;
    if (isNonBlocking == 0) {
        OSReceiveMessage(&command->mMessageQueue, &message, OS_MESSAGE_BLOCKING);
        if (message == NULL) {
            command = NULL;
            return command;
        } else {
            return command;
        }
    } else {
        BOOL receiveResult =
            OSReceiveMessage(&command->mMessageQueue, &message, OS_MESSAGE_NON_BLOCKING);
        if (receiveResult == FALSE) {
            command = NULL;
            return command;
        } else if (message == NULL) {
            command = NULL;
            return command;
        } else {
            return command;
        }
    }
}

void JKRAramStream::setTransBuffer(u8* buffer, u32 bufferSize, JKRHeap* heap) {
    transBuffer = NULL;
    transSize = 0x8000;
    transHeap = NULL;

    if (buffer) {
        transBuffer = (u8*)ALIGN_NEXT((u32)buffer, 0x20);
    }

    if (bufferSize) {
        transSize = ALIGN_PREV(bufferSize, 0x20);
    }

    if (heap && !buffer) {
        transHeap = heap;
    }
}

JKRAramStreamCommand::JKRAramStreamCommand() {
    mAllocatedTransferBuffer = false;
}

s32 JSURandomInputStream::getAvailable() const {
    return getLength() - getPosition();
}
