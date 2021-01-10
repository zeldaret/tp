#include "JSystem/JKernel/JKRAramPiece/JKRAramPiece.h"
#include "JSystem/JKernel/JKRAram/JKRAram.h"
#include "JSystem/JKernel/JKRDecomp/JKRDecomp.h"
#include "global.h"

JKRAMCommand* JKRAramPiece::prepareCommand(int direction, u32 src, u32 dst, u32 length,
                                           JKRAramBlock* block,
                                           JKRAMCommand::AsyncCallback callback) {
    JKRAMCommand* command = new (JKRHeap::getSystemHeap(), -4) JKRAMCommand();
    command->mTransferDirection = direction;
    command->mSrc = src;
    command->mDst = dst;
    command->mAramBlock = block;
    command->mDataLength = length;
    command->mCallback = callback;
    return command;
}

void JKRAramPiece::sendCommand(JKRAMCommand* command) {
    startDMA(command);
}

JKRAMCommand* JKRAramPiece::orderAsync(int direction, u32 source, u32 destination, u32 length,
                                       JKRAramBlock* block, JKRAMCommand::AsyncCallback callback) {
    lock();
    if (((source & 0x1f) != 0) || ((destination & 0x1f) != 0)) {
        OSReport(lbl_8039D0B8, direction);           // "direction = %x\n"
        OSReport(lbl_8039D0B8 + 0x10, source);       // "source = %x\n"
        OSReport(lbl_8039D0B8 + 0x1D, destination);  // "destination = %x\n"
        OSReport(lbl_8039D0B8 + 0x2F, length);       // "length = %x\n"

        const char* filename = lbl_8039D0B8 + 0x3C;       // "JKRAramPiece.cpp"§
        const char* format = lbl_8039D0B8 + 0x3C + 0x11;  // "%s"
        const char* arg1 = lbl_8039D0B8 + 0x3C + 0x14;    // "illegal address. abort."
        JUTException_NS_panic_f(filename, 0x6c, format, arg1);
    }

    Message* message = new (JKRHeap::getSystemHeap(), -4) Message();
    JKRAMCommand* command =
        JKRAramPiece::prepareCommand(direction, source, destination, length, block, callback);
    message->field_0x00 = 1;
    message->command = command;

    OSSendMessage(&JKRAram::sMessageQueue, message, OS_MESSAGE_BLOCKING);
    if (command->mCallback != NULL) {
        lbl_80434324.append(&command->mPieceLink);
    }

    unlock();
    return command;
}

BOOL JKRAramPiece::sync(JKRAMCommand* command, int is_non_blocking) {
    OSMessage message;

    lock();
    if (is_non_blocking == 0) {
        OSReceiveMessage(&command->mMessageQueue, &message, OS_MESSAGE_BLOCKING);
        lbl_80434324.remove(&command->mPieceLink);
        unlock();
        return TRUE;
    }

    BOOL result = OSReceiveMessage(&command->mMessageQueue, &message, OS_MESSAGE_NON_BLOCKING);
    if (!result) {
        unlock();
        return FALSE;
    }

    lbl_80434324.remove(&command->mPieceLink);
    unlock();
    return TRUE;
}

BOOL JKRAramPiece::orderSync(int direction, u32 source, u32 destination, u32 length,
                             JKRAramBlock* block) {
    lock();

    JKRAMCommand* command =
        JKRAramPiece::orderAsync(direction, source, destination, length, block, NULL);
    BOOL result = JKRAramPiece::sync(command, 0);
    delete command;

    unlock();
    return result;
}

void JKRAramPiece::startDMA(JKRAMCommand* command) {
    if (command->mTransferDirection == 1) {
        DCInvalidateRange((void*)command->mDst, command->mDataLength);
    } else {
        DCStoreRange((void*)command->mSrc, command->mDataLength);
    }

    ARQPostRequest(&command->mRequest, 0, command->mTransferDirection, 0, command->mSrc,
                   command->mDst, command->mDataLength, JKRAramPiece::doneDMA);
}

void JKRAramPiece::doneDMA(u32 requestAddress) {
    JKRAMCommand* command = (JKRAMCommand*)requestAddress;

    if (command->mTransferDirection == 1) {
        DCInvalidateRange((void*)command->mDst, command->mDataLength);
    }

    if (command->field_0x60 != 0) {
        if (command->field_0x60 == 2) {
            JKRDecomp::sendCommand(command->mDecompCommand);
        }
        return;
    }

    if (command->mCallback) {
        (*command->mCallback)(requestAddress);
    } else if (command->field_0x5C) {
        OSSendMessage(command->field_0x5C, command, OS_MESSAGE_NON_BLOCKING);
    } else {
        OSSendMessage(&command->mMessageQueue, command, OS_MESSAGE_NON_BLOCKING);
    }
}

JKRAMCommand::JKRAMCommand() : mPieceLink(this), field_0x30(this) {
    OSInitMessageQueue(&mMessageQueue, &mMessage, 1);
    mCallback = NULL;
    field_0x5C = NULL;
    field_0x60 = 0;
    field_0x8C = NULL;
    field_0x90 = NULL;
    field_0x94 = NULL;
}

JKRAMCommand::~JKRAMCommand() {
    if (field_0x8C)
        delete field_0x8C;
    if (field_0x90)
        delete field_0x90;

    if (field_0x94)
        JKRHeap::free(field_0x94, NULL);
}

#if 0
asm void __sinit_JKRAramPiece_cpp {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3B04.s"
}
#endif
